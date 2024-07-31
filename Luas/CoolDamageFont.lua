-- Shows addon loaded in chat window
print("CoolDamageFont v1.0")

-- Locals
local damagefont_FONT_NUMBER = "Interface\\AddOns\\CoolDamageFont\\Fonts\\font.ttf"

-- Code Base
CoolDamageFont = CreateFrame("Frame", "CoolDamageFont")

function CoolDamageFont:ApplySystemFonts()
	DAMAGE_TEXT_FONT = damagefont_FONT_NUMBER
end

CoolDamageFont:SetScript("OnEvent", function()
	if event == "ADDON_LOADED" then
		CoolDamageFont:ApplySystemFonts()
	end
end)

CoolDamageFont:RegisterEvent("ADDON_LOADED")
CoolDamageFont:ApplySystemFonts()