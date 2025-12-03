@interface PUWallpaperPlaygroundSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PUWallpaperPlaygroundSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUWallpaperPlaygroundSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUWallpaperPlaygroundSettings *)self setApplyLowAPLFilter:1];
  [(PUWallpaperPlaygroundSettings *)self setLowAPLFilterAmount:0.03];
  [(PUWallpaperPlaygroundSettings *)self setLowLuminanceTransformAnimationDuration:0.5];
  [(PUWallpaperPlaygroundSettings *)self setLowLuminanceAlphaAnimationDuration:0.5];
  [(PUWallpaperPlaygroundSettings *)self setShuffleSleepTransformOutAnimationDuration:0.5];
  [(PUWallpaperPlaygroundSettings *)self setShuffleSleepFadeOutAnimationDuration:0.5];
  [(PUWallpaperPlaygroundSettings *)self setShuffleSleepFadeInAnimationDuration:1.995];
}

+ (id)settingsControllerModule
{
  v45[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v30 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C65E8];
  v42 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_420];
  v41 = [v3 rowWithTitle:@"Trigger Shuffle" action:v42];
  v44 = v41;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v39 = [v2 sectionWithRows:v40];
  v45[0] = v39;
  v4 = MEMORY[0x1E69C6638];
  v5 = MEMORY[0x1E69C66A8];
  v38 = NSStringFromSelector(sel_applyLowAPLFilter);
  v37 = [v5 rowWithTitle:@"Apply Low APL Filter" valueKeyPath:v38];
  v43[0] = v37;
  v6 = MEMORY[0x1E69C66A0];
  v36 = NSStringFromSelector(sel_lowAPLFilterAmount);
  v35 = [v6 rowWithTitle:@"Filter Amount" valueKeyPath:v36];
  v34 = [v35 minValue:0.001 maxValue:0.05];
  v43[1] = v34;
  v7 = MEMORY[0x1E69C66A0];
  v33 = NSStringFromSelector(sel_lowLuminanceTransformAnimationDuration);
  v32 = [v7 rowWithTitle:@"Scale Animation Duration" valueKeyPath:v33];
  v29 = [v32 minValue:0.0 maxValue:2.0];
  v43[2] = v29;
  v8 = MEMORY[0x1E69C66A0];
  v28 = NSStringFromSelector(sel_lowLuminanceAlphaAnimationDuration);
  v27 = [v8 rowWithTitle:@"Alpha Animation Duration" valueKeyPath:v28];
  v26 = [v27 minValue:0.0 maxValue:2.0];
  v43[3] = v26;
  v9 = MEMORY[0x1E69C66A0];
  v25 = NSStringFromSelector(sel_shuffleSleepTransformOutAnimationDuration);
  v24 = [v9 rowWithTitle:@"Shuffle Sleep Transform Out" valueKeyPath:v25];
  v23 = [v24 minValue:0.0 maxValue:2.0];
  v43[4] = v23;
  v10 = MEMORY[0x1E69C66A0];
  v11 = NSStringFromSelector(sel_shuffleSleepFadeOutAnimationDuration);
  v12 = [v10 rowWithTitle:@"Shuffle Sleep Fade Out" valueKeyPath:v11];
  v13 = [v12 minValue:0.0 maxValue:2.0];
  v43[5] = v13;
  v14 = MEMORY[0x1E69C66A0];
  v15 = NSStringFromSelector(sel_shuffleSleepFadeInAnimationDuration);
  v16 = [v14 rowWithTitle:@"Shuffle Sleep Fade In" valueKeyPath:v15];
  v17 = [v16 minValue:0.0 maxValue:2.0];
  v43[6] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];
  v19 = [v4 sectionWithRows:v18 title:@"Low Luminance"];
  v45[1] = v19;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v45[2] = px_restoreDefaultsSection;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  v31 = [v30 moduleWithTitle:@"Settings" contents:v21];

  return v31;
}

uint64_t __57__PUWallpaperPlaygroundSettings_settingsControllerModule__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PUWallpaperShuffleNotificationName" object:0];

  return 1;
}

+ (id)sharedInstance
{
  os_unfair_lock_lock(MEMORY[0x1E69C4148]);
  if (!sharedInstance_sharedInstance_14109)
  {
    createSharedInstance = [self createSharedInstance];
    v4 = sharedInstance_sharedInstance_14109;
    sharedInstance_sharedInstance_14109 = createSharedInstance;
  }

  os_unfair_lock_unlock(MEMORY[0x1E69C4148]);
  v5 = sharedInstance_sharedInstance_14109;

  return v5;
}

@end