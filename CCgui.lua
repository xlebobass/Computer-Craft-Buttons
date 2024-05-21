local monitor = peripheral.find("monitor")
monitor.clear()



text_scale = 1.5

monitor.setTextScale(text_scale)

function button(cpx, cpy, text)
    monitor.setCursorPos(cpx, cpy)
    local cxs = monitor.getCursorPos()
    monitor.write(text)
    local x, y = monitor.getCursorPos()
    
    return cxs, x-1, y
    
end


--Table with buttons
--button(posX, posY, "text")

buttons = {
    {button(1, 6, "1")},
    {button(3, 6, "2")},
    {button(5, 6, "3")},
    {button(1, 7, "4")},
    {button(3, 7, "5")},
    {button(5, 7, "6")},
    {button(1, 8, "7")},
    {button(3, 8, "8")},
    {button(5, 8, "9")}

}





function check() -- Returns the number of the pressed button in the table (from bottom to top)
local counter = 1
local event, side, xp, yp = os.pullEvent("monitor_touch")

    for i, v in pairs(buttons) do
        
        for first, k in pairs(v) do
            if counter == 1 then
                s = k
            end

            if counter == 2 then
                x = k
                
            end

            if counter == 3 then
                y = k
                
            end

            if yp == y and counter==3 then
                
                for u=s, x do

                    if xp == u then
                        return i 
                    end
                
                end       
            end

            if counter==3 then
                counter = 1
            else 
                counter = counter + 1
            end

            



        
            end
            
        end
    
    end    
