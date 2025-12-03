@interface SBHIconAnimationRootSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHIconAnimationRootSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHIconAnimationRootSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBHIconAnimationRootSettings *)self setMaxAppSuspendHintProgress:0.05];
  [(SBHIconAnimationRootSettings *)self setMaxAppLaunchWallpaperScale:1.1];
  [(SBHIconAnimationRootSettings *)self setMaxFolderCloseHintProgress:0.1];
}

+ (id)settingsControllerModule
{
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C6610] rowWithTitle:@"Reduced Motion" childSettingsKeyPath:@"reducedMotionSettings"];
  v48[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];

  v41 = [MEMORY[0x1E69C6638] sectionWithRows:v3 title:0];
  v4 = [MEMORY[0x1E69C6610] rowWithTitle:@"Unlock" childSettingsKeyPath:@"unlockSettings"];
  v47 = v4;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];

  v40 = [MEMORY[0x1E69C6638] sectionWithRows:v38 title:0];
  v39 = [MEMORY[0x1E69C6610] rowWithTitle:@"Center Launch" childSettingsKeyPath:@"centerLaunchSettings"];
  v46[0] = v39;
  v5 = [MEMORY[0x1E69C6610] rowWithTitle:@"Center Suspend" childSettingsKeyPath:@"centerSuspendSettings"];
  v46[1] = v5;
  v6 = [MEMORY[0x1E69C6610] rowWithTitle:@"Center Accelerated Suspend" childSettingsKeyPath:@"centerAcceleratedSuspendSettings"];
  v46[2] = v6;
  v7 = [MEMORY[0x1E69C6610] rowWithTitle:@"Crossfade Launch" childSettingsKeyPath:@"crossfadeLaunchSettings"];
  v46[3] = v7;
  v8 = [MEMORY[0x1E69C6610] rowWithTitle:@"Crossfade Suspend" childSettingsKeyPath:@"crossfadeSuspendSettings"];
  v46[4] = v8;
  v9 = [MEMORY[0x1E69C6610] rowWithTitle:@"Crossfade Accelerated Suspend" childSettingsKeyPath:@"crossfadeAcceleratedSuspendSettings"];
  v46[5] = v9;
  v10 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Suspend Hint Progress" valueKeyPath:@"maxAppSuspendHintProgress"];
  v11 = [v10 minValue:0.0 maxValue:1.0];
  v46[6] = v11;
  v12 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max App Launch Wallpaper Scale" valueKeyPath:@"maxAppLaunchWallpaperScale"];
  v13 = [v12 minValue:1.0 maxValue:3.0];
  v46[7] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:8];

  v15 = [MEMORY[0x1E69C6638] sectionWithRows:v14 title:@"Launch/Suspend Animations"];
  v16 = [MEMORY[0x1E69C6610] rowWithTitle:@"Folder Open" childSettingsKeyPath:@"folderOpenSettings"];
  v45[0] = v16;
  v17 = [MEMORY[0x1E69C6610] rowWithTitle:@"Folder Close" childSettingsKeyPath:@"folderCloseSettings"];
  v45[1] = v17;
  v18 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Close Hint Progress" valueKeyPath:@"maxFolderCloseHintProgress"];
  v19 = [v18 minValue:0.0 maxValue:1.0];
  v45[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];

  v21 = [MEMORY[0x1E69C6638] sectionWithRows:v20 title:@"Folder Animations"];
  v22 = [MEMORY[0x1E69C6610] rowWithTitle:@"Library Wave Open" childSettingsKeyPath:@"libraryWaveOpenSettings"];
  v44[0] = v22;
  v23 = [MEMORY[0x1E69C6610] rowWithTitle:@"Library Wave Close" childSettingsKeyPath:@"libraryWaveCloseSettings"];
  v44[1] = v23;
  v24 = [MEMORY[0x1E69C6610] rowWithTitle:@"Library Pod Open" childSettingsKeyPath:@"libraryPodOpenSettings"];
  v44[2] = v24;
  v25 = [MEMORY[0x1E69C6610] rowWithTitle:@"Library Pod Close" childSettingsKeyPath:@"libraryPodCloseSettings"];
  v44[3] = v25;
  v26 = [MEMORY[0x1E69C6610] rowWithTitle:@"Library Indicator Icon" childSettingsKeyPath:@"libraryIndicatorIconSettings"];
  v44[4] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:5];

  v28 = [MEMORY[0x1E69C6638] sectionWithRows:v27 title:@"Library Animations"];
  v29 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v31 = [v29 rowWithTitle:@"Restore Defaults" action:action];
  v43 = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];

  v33 = [MEMORY[0x1E69C6638] sectionWithRows:v32];
  v34 = MEMORY[0x1E69C6638];
  v42[0] = v41;
  v42[1] = v40;
  v42[2] = v15;
  v42[3] = v28;
  v42[4] = v21;
  v42[5] = v33;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:6];
  v36 = [v34 moduleWithTitle:@"Icon Animations" contents:v35];

  return v36;
}

@end