	require(game:GetService("ReplicatedStorage").Notification).new("Cyborg V4! (Cizen Hub)"):Display();
	wait()
	setthreadcontext(5)
	
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	
	local Player = game:GetService("Players").LocalPlayer
	
	local ArgsTransform = {
		Character = game.Players.LocalPlayer.Character,
		CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
		Color1 = Color3.fromRGB(166, 0, 111),
		Color2 = Color3.fromRGB(166, 0, 111),
		Color3 = Color3.fromRGB(166, 0, 111),
	}
	
	Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
	
	delay(1, function()
		pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
	end)
