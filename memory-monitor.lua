-- @DEBUG monitor Memory Usage
local printMemUsage = function()
local memUsed = (collectgarbage("count"))
local texUsed = system.getInfo( "textureMemoryUsed" ) / 1048576 -- Reported in Bytes
print("\n---------MEMORY USAGE INFORMATION---------")
print("System Memory: ", string.format("%.00f", memUsed), "KB")
print("Texture Memory:", string.format("%.03f", texUsed), "MB")
print("------------------------------------------\n")
end

-- Only load memory monitor if running in simulator
if (system.getInfo("environment") == "simulator") then
	Runtime:addEventListener( "enterFrame", printMemUsage)
end