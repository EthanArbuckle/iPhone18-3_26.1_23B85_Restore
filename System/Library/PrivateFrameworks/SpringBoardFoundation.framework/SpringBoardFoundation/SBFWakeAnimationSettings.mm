@interface SBFWakeAnimationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBFWakeAnimationSettings

- (void)setDefaultValues
{
  self->_backlightFadeDuration = 0.185;
  self->_speedMultiplierForWake = 1.0;
  self->_speedMultiplierForLiftToWake = 1.0;
  self->_speedMultiplierForMagicKeyboardExtended = 0.3;
  self->_awakeColorBrightness = 0.0;
  self->_awakeDateAlpha = 1.0;
  self->_sleepColorBrightness = -1.0;
  v3 = [(SBFWakeAnimationSettings *)self contentWakeSettings];
  [v3 setAnimationType:0];

  v4 = [(SBFWakeAnimationSettings *)self contentWakeSettings];
  [v4 setDelay:0.0];

  v5 = [(SBFWakeAnimationSettings *)self contentWakeSettings];
  [v5 setDuration:0.185];

  v6 = [(SBFWakeAnimationSettings *)self contentWakeSettings];
  [v6 setCurve:393216];

  v7 = [(SBFWakeAnimationSettings *)self contentWakeSettings];
  v8 = [v7 controlPoint1Settings];
  [v8 setPointValue:{0.25, 0.1}];

  v9 = [(SBFWakeAnimationSettings *)self contentWakeSettings];
  v10 = [v9 controlPoint2Settings];
  [v10 setPointValue:{0.25, 1.0}];

  v11 = [(SBFWakeAnimationSettings *)self awakeWallpaperFilterSettings];
  [v11 setAnimationType:0];

  v12 = [(SBFWakeAnimationSettings *)self awakeWallpaperFilterSettings];
  [v12 setDelay:0.0];

  v13 = [(SBFWakeAnimationSettings *)self awakeWallpaperFilterSettings];
  [v13 setDuration:0.65];

  v14 = [(SBFWakeAnimationSettings *)self awakeWallpaperFilterSettings];
  [v14 setCurve:393216];

  v15 = [(SBFWakeAnimationSettings *)self awakeWallpaperFilterSettings];
  v16 = [v15 controlPoint1Settings];
  [v16 setPointValue:{0.25, 0.1}];

  v17 = [(SBFWakeAnimationSettings *)self awakeWallpaperFilterSettings];
  v18 = [v17 controlPoint2Settings];
  [v18 setPointValue:{0.25, 1.0}];

  v19 = [(SBFWakeAnimationSettings *)self sleepWallpaperFilterSettings];
  [v19 setAnimationType:0];

  v20 = [(SBFWakeAnimationSettings *)self sleepWallpaperFilterSettings];
  [v20 setDelay:0.0];

  v21 = [(SBFWakeAnimationSettings *)self sleepWallpaperFilterSettings];
  [v21 setDuration:0.65];

  v22 = [(SBFWakeAnimationSettings *)self sleepWallpaperFilterSettings];
  [v22 setCurve:393216];

  v23 = [(SBFWakeAnimationSettings *)self sleepWallpaperFilterSettings];
  v24 = [v23 controlPoint1Settings];
  [v24 setPointValue:{0.25, 0.1}];

  v26 = [(SBFWakeAnimationSettings *)self sleepWallpaperFilterSettings];
  v25 = [v26 controlPoint2Settings];
  [v25 setPointValue:{0.25, 1.0}];
}

+ (id)settingsControllerModule
{
  v49[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6630];
  v3 = [MEMORY[0x1E69C6698] rowWithTitle:@"Backlight Fade Duration" valueKeyPath:@"backlightFadeDuration"];
  v4 = [v3 minValue:0.0 maxValue:1.0];
  v49[0] = v4;
  v5 = [MEMORY[0x1E69C6698] rowWithTitle:@"Backlight Fade In Speed Multiplier" valueKeyPath:@"speedMultiplierForWake"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v49[1] = v6;
  v7 = [MEMORY[0x1E69C6698] rowWithTitle:@"Lift-to-Wake Speed Multiplier" valueKeyPath:@"speedMultiplierForLiftToWake"];
  v8 = [v7 minValue:0.0 maxValue:10.0];
  v49[2] = v8;
  v9 = [MEMORY[0x1E69C6698] rowWithTitle:@"Magic Keyboard (Extended Wake) Speed Multiplier" valueKeyPath:@"speedMultiplierForMagicKeyboardExtended"];
  v10 = [v9 minValue:0.0 maxValue:1.0];
  v49[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  v43 = [v2 sectionWithRows:v11 title:@"Backlight Fades"];

  v12 = MEMORY[0x1E69C6630];
  v13 = [MEMORY[0x1E69C6698] rowWithTitle:@"Awake Color Brightness" valueKeyPath:@"awakeColorBrightness"];
  v14 = [v13 minValue:-1.0 maxValue:0.0];
  v48[0] = v14;
  v15 = [MEMORY[0x1E69C6698] rowWithTitle:@"Awake Date Alpha" valueKeyPath:@"awakeDateAlpha"];
  v16 = [v15 minValue:0.0 maxValue:1.0];
  v48[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v18 = [v12 sectionWithRows:v17 title:@"Awake Values"];

  v19 = MEMORY[0x1E69C6630];
  v20 = [MEMORY[0x1E69C6698] rowWithTitle:@"Sleep Color Brightness" valueKeyPath:@"sleepColorBrightness"];
  v21 = [v20 minValue:-1.0 maxValue:1.0];
  v47 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v42 = [v19 sectionWithRows:v22 title:@"Sleep Values"];

  v23 = MEMORY[0x1E69C6630];
  v24 = [SBFAnimationSettings _moduleWithSectionTitle:@"Awake Content Animation" delay:1 frameRate:0];
  v41 = [v23 submoduleWithModule:v24 childSettingsKeyPath:@"contentWakeSettings"];

  v25 = MEMORY[0x1E69C6630];
  v26 = [SBFAnimationSettings _moduleWithSectionTitle:@"Awake Wallpaper Filter Animation" delay:1 frameRate:0];
  v27 = [v25 submoduleWithModule:v26 childSettingsKeyPath:@"awakeWallpaperFilterSettings"];

  v28 = MEMORY[0x1E69C6630];
  v46[0] = v41;
  v46[1] = v27;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v30 = [v28 moduleWithTitle:@"Awake" contents:v29];

  v31 = MEMORY[0x1E69C6630];
  v32 = [SBFAnimationSettings _moduleWithSectionTitle:@"Sleep Wallpaper Filter Animation" delay:1 frameRate:0];
  v33 = [v31 submoduleWithModule:v32 childSettingsKeyPath:@"sleepWallpaperFilterSettings"];

  v34 = MEMORY[0x1E69C6630];
  v45 = v33;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v36 = [v34 moduleWithTitle:@"Undim" contents:v35];

  v37 = MEMORY[0x1E69C6630];
  v44[0] = v43;
  v44[1] = v18;
  v44[2] = v30;
  v44[3] = v42;
  v44[4] = v36;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:5];
  v39 = [v37 moduleWithTitle:@"Screen Dim/Undim Animation" contents:v38];

  return v39;
}

@end