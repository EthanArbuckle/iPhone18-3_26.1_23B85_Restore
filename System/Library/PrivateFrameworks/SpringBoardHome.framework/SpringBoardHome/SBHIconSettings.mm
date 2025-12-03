@interface SBHIconSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHIconSettings

- (void)setDefaultValues
{
  [(SBHIconSettings *)self setSuppressJitter:0];
  [(SBHIconSettings *)self setAlwaysHitTestNearestIcon:0];
  [(SBHIconSettings *)self setIconHitboxPaddingX:10.0];
  [(SBHIconSettings *)self setIconHitboxPaddingY:10.0];
  [(SBHIconSettings *)self setLightAngleRefreshRate:30.0];
  [(SBHIconSettings *)self setLightAngleInitialDistanceThreshold:60.0];
  [(SBHIconSettings *)self setLightAngleInitialVelocityThreshold:1.0];
  [(SBHIconSettings *)self setLightAngleDebugUIEnabled:0];
  [(SBHIconSettings *)self setSheenEffectStrength:0.5];
  [(SBHIconSettings *)self setSheenEffectMinimumMovementToBecomeVisible:7.5];
  sheenEffectFadeInSettings = [(SBHIconSettings *)self sheenEffectFadeInSettings];
  [sheenEffectFadeInSettings setAnimationType:0];

  sheenEffectFadeInSettings2 = [(SBHIconSettings *)self sheenEffectFadeInSettings];
  [sheenEffectFadeInSettings2 setDuration:0.75];

  sheenEffectFadeInSettings3 = [(SBHIconSettings *)self sheenEffectFadeInSettings];
  [sheenEffectFadeInSettings3 setCurve:0];

  sheenEffectFadeOutSettings = [(SBHIconSettings *)self sheenEffectFadeOutSettings];
  [sheenEffectFadeOutSettings setAnimationType:0];

  sheenEffectFadeOutSettings2 = [(SBHIconSettings *)self sheenEffectFadeOutSettings];
  [sheenEffectFadeOutSettings2 setDuration:3.0];

  sheenEffectFadeOutSettings3 = [(SBHIconSettings *)self sheenEffectFadeOutSettings];
  [sheenEffectFadeOutSettings3 setCurve:0];

  [(SBHIconSettings *)self setSheenEffectDebugUIEnabled:0];
  badgeParallaxSettings = [(SBHIconSettings *)self badgeParallaxSettings];
  [badgeParallaxSettings setSlideEnabled:1];

  badgeParallaxSettings2 = [(SBHIconSettings *)self badgeParallaxSettings];
  [badgeParallaxSettings2 setSlideDirectionX:1];

  badgeParallaxSettings3 = [(SBHIconSettings *)self badgeParallaxSettings];
  [badgeParallaxSettings3 setSlideDirectionY:1];

  badgeParallaxSettings4 = [(SBHIconSettings *)self badgeParallaxSettings];
  [badgeParallaxSettings4 setSlidePixelsX:8.0];

  badgeParallaxSettings5 = [(SBHIconSettings *)self badgeParallaxSettings];
  [badgeParallaxSettings5 setSlidePixelsY:8.0];

  iconParallaxSettings = [(SBHIconSettings *)self iconParallaxSettings];
  [iconParallaxSettings setSlideEnabled:1];

  iconParallaxSettings2 = [(SBHIconSettings *)self iconParallaxSettings];
  [iconParallaxSettings2 setSlideDirectionX:1];

  iconParallaxSettings3 = [(SBHIconSettings *)self iconParallaxSettings];
  [iconParallaxSettings3 setSlideDirectionY:1];

  v17 = *MEMORY[0x1E69DEAF0];
  iconParallaxSettings4 = [(SBHIconSettings *)self iconParallaxSettings];
  [iconParallaxSettings4 setSlidePixelsX:v17];

  iconParallaxSettings5 = [(SBHIconSettings *)self iconParallaxSettings];
  [iconParallaxSettings5 setSlidePixelsY:v17];
}

+ (id)settingsControllerModule
{
  v50[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Suppress Icon Jitter" valueKeyPath:@"suppressJitter"];
  v50[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];

  v43 = [MEMORY[0x1E69C6638] sectionWithRows:v3 title:@"Close-Box Debug"];
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Hit-test nearest icon" valueKeyPath:@"alwaysHitTestNearestIcon"];
  v49[0] = v4;
  v5 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Hitbox Padding (horizontal)" valueKeyPath:@"iconHitboxPaddingX"];
  v6 = [v5 minValue:0.0 maxValue:200.0];
  v49[1] = v6;
  v7 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Hitbox Padding (vertical)" valueKeyPath:@"iconHitboxPaddingY"];
  v8 = [v7 minValue:0.0 maxValue:200.0];
  v49[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];

  v42 = [MEMORY[0x1E69C6638] sectionWithRows:v9 title:@"Close-Box Debug"];
  v10 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Refresh rate (active)" valueKeyPath:@"lightAngleRefreshRate"];
  v11 = [v10 minValue:1.0 maxValue:60.0];
  v48[0] = v11;
  v12 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Initial distance threshold" valueKeyPath:@"lightAngleInitialDistanceThreshold"];
  v13 = [v12 minValue:0.0 maxValue:500.0];
  v48[1] = v13;
  v14 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Initial velocity threshold" valueKeyPath:@"lightAngleInitialVelocityThreshold"];
  v15 = [v14 minValue:0.0 maxValue:3.0];
  v48[2] = v15;
  v16 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable debug UI" valueKeyPath:@"lightAngleDebugUIEnabled"];
  v48[3] = v16;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];

  v41 = [MEMORY[0x1E69C6638] sectionWithRows:v40 title:@"Light Angle Updates"];
  v17 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Strength" valueKeyPath:@"sheenEffectStrength"];
  v18 = [v17 minValue:0.0 maxValue:1.0];
  v47[0] = v18;
  v19 = [MEMORY[0x1E69C6618] rowWithTitle:@"Minimum Movement (Degrees)" valueKeyPath:@"sheenEffectMinimumMovementToBecomeVisible"];
  v20 = [v19 between:0.0 and:90.0];
  v21 = [v20 precision:2];
  v47[1] = v21;
  v22 = [MEMORY[0x1E69C6610] rowWithTitle:@"Fade In" childSettingsKeyPath:@"sheenEffectFadeInSettings"];
  v47[2] = v22;
  v23 = [MEMORY[0x1E69C6610] rowWithTitle:@"Fade Out" childSettingsKeyPath:@"sheenEffectFadeOutSettings"];
  v47[3] = v23;
  v24 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable debug UI" valueKeyPath:@"sheenEffectDebugUIEnabled"];
  v47[4] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:5];

  v26 = [MEMORY[0x1E69C6638] sectionWithRows:v25 title:@"Sheen Effect"];
  v27 = [MEMORY[0x1E69C6610] rowWithTitle:@"Icon Parallax" childSettingsKeyPath:@"iconParallaxSettings"];
  v46[0] = v27;
  v28 = [MEMORY[0x1E69C6610] rowWithTitle:@"Badge Parallax" childSettingsKeyPath:@"badgeParallaxSettings"];
  v46[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];

  v30 = [MEMORY[0x1E69C6638] sectionWithRows:v29];
  v31 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v33 = [v31 rowWithTitle:@"Restore Defaults" action:action];
  v45 = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];

  v35 = [MEMORY[0x1E69C6638] sectionWithRows:v34];
  v36 = MEMORY[0x1E69C6638];
  v44[0] = v43;
  v44[1] = v42;
  v44[2] = v41;
  v44[3] = v26;
  v44[4] = v30;
  v44[5] = v35;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:6];
  v38 = [v36 moduleWithTitle:@"Icons" contents:v37];

  return v38;
}

@end