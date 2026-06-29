local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()


local Window = WindUI:CreateWindow({
    Title = "Swaga Hub | Key System",
    Icon = "rbxassetid://136657221209337", 
    Author = "by @worldedil",
    Folder = "GJEHYW1",
    
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Sky",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.9, 
    HideSearchBar = true,
    ScrollBarEnabled = false,
    
    User = {
        Enabled = true,
        socall1mprime = true,
        Callback = function()
            print("Swaga Hub User Panel")
        end,
    },
    
    -- Тут ес че будут еще премиум ключи
    KeySystem = { 
        
        Key = { "SwagaHubBust" },
        
        Note = "Введите ключ.",
        
        Thumbnail = {
            Image = "rbxassetid://136657221209337", 
            Title = "Проверка доступа",
        },
        
        SaveKey = true, 
        
   
        Callback = function()
            Window:SetTitle("Swaga Hub | Scripts")
        end,
    },
})

if Window.KeyVerified or not Window.KeySystem then
    Window:SetTitle("Swaga Hub | Scripts")
end


Window:EditOpenButton({
    Title = "Open menu",
    Icon = "zap",
    CornerRadius = UDim.new(0,20),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("4b09db"), 
        Color3.fromHex("b809db")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})


local Tab = Window:Tab({
    Title = "Главная",
    Icon = "zap",
    Locked = false,
})


local Button = Tab:Button({
    Title = "Включить наш скрипт на плейс Tower Of Hell",
    Desc = "Скрипт для товер оф хелл",
    Locked = false,
    Callback = function()
loadstring(game:HttpGet("https://pastefy.app/GXEpKb9J/raw"))()          
    end
})

local SettingsTab = Window:Tab({
    Title = "Настройки",
    Icon = "settings",
    Locked = false,
})

local ResetButton = SettingsTab:Button({
    Title = "Сбросить Аккаунт / Ключ",
    Desc = "Полностью стирает кэш сохраненного ключа",
    Locked = false,
    Callback = function()
        if delfolder then
            pcall(function() delfolder("GJEHYW1") end)
        elseif delfile then
            pcall(function() delfile("GJEHYW1/keys.json") end)
            pcall(function() delfile("GJEHYW1/config.json") end)
            pcall(function() delfile("GJEHYW1/settings.json") end)
            pcall(function() delfile("GJEHYW1/Key.json") end)
        end

        WindUI:Notify({
            Title = "Сброс выполнен!",
            Content = "Кэш очищен. Пожалуйста, перезапустите скрипт.",
            Duration = 5
        })

        task.wait(0.5)
        Window:Close()
    end
})

