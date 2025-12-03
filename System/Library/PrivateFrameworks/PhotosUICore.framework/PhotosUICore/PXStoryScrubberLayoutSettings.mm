@interface PXStoryScrubberLayoutSettings
+ (PXStoryScrubberLayoutSettings)sharedInstance;
+ (id)_sliderFor:(id)for path:(id)path;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXStoryScrubberLayoutSettings

- (void)setDefaultValues
{
  v2.receiver = self;
  v2.super_class = PXStoryScrubberLayoutSettings;
  [(PTSettings *)&v2 setDefaultValues];
  PXVisionScaledFloat();
}

+ (id)_sliderFor:(id)for path:(id)path
{
  v4 = [MEMORY[0x1E69C66A0] rowWithTitle:for valueKeyPath:path];
  v5 = [v4 minValue:1.0 maxValue:100.0];
  v6 = [v5 px_increment:1.0];

  return v6;
}

+ (id)settingsControllerModule
{
  v45[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C6638];
  v24 = MEMORY[0x1E69C6638];
  v40 = NSStringFromSelector(sel_currentAssetWidthLandscape);
  v39 = [self _sliderFor:@"Current Asset Width" path:v40];
  v44[0] = v39;
  v38 = NSStringFromSelector(sel_defaultAssetWidthLandscape);
  v37 = [self _sliderFor:@"Default Asset Width" path:v38];
  v44[1] = v37;
  v36 = NSStringFromSelector(sel_scrubberHeightLandscape);
  v35 = [self _sliderFor:@"Scrubber Height" path:v36];
  v44[2] = v35;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v33 = [v3 sectionWithRows:v34 title:@"Landscape Mode"];
  v45[0] = v33;
  v4 = MEMORY[0x1E69C6638];
  v32 = NSStringFromSelector(sel_currentAssetWidthPortrait);
  v31 = [self _sliderFor:@"Current Asset Width" path:v32];
  v43[0] = v31;
  v30 = NSStringFromSelector(sel_defaultAssetWidthPortrait);
  v29 = [self _sliderFor:@"Default Asset Width" path:v30];
  v43[1] = v29;
  v28 = NSStringFromSelector(sel_scrubberHeightPortrait);
  v27 = [self _sliderFor:@"Scrubber Height" path:v28];
  v43[2] = v27;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v23 = [v4 sectionWithRows:v26 title:@"Portrait Mode"];
  v45[1] = v23;
  v5 = MEMORY[0x1E69C6638];
  v22 = NSStringFromSelector(sel_currentAssetPadding);
  v21 = [self _sliderFor:@"Current Asset Padding" path:v22];
  v42[0] = v21;
  v20 = NSStringFromSelector(sel_defaultAssetPadding);
  v19 = [self _sliderFor:@"Default Asset Padding" path:v20];
  v42[1] = v19;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v7 = [v5 sectionWithRows:v6 title:@"Horizontal Padding"];
  v45[2] = v7;
  v8 = MEMORY[0x1E69C6638];
  v9 = MEMORY[0x1E69C66A0];
  v10 = NSStringFromSelector(sel_assetCornerRadius);
  v11 = [v9 rowWithTitle:@"Asset Corner Radius" valueKeyPath:v10];
  v12 = [v11 minValue:0.0 maxValue:15.0];
  v13 = [v12 px_increment:1.0];
  v41 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v15 = [v8 sectionWithRows:v14 title:@"Appearance"];
  v45[3] = v15;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v45[4] = px_restoreDefaultsSection;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
  v25 = [v24 moduleWithTitle:@"Layout Settings" contents:v17];

  return v25;
}

+ (PXStoryScrubberLayoutSettings)sharedInstance
{
  if (sharedInstance_onceToken_94335 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_94335, &__block_literal_global_94336);
  }

  v3 = sharedInstance_sharedInstance_94337;

  return v3;
}

void __47__PXStoryScrubberLayoutSettings_sharedInstance__block_invoke()
{
  v2 = +[PXStorySettings sharedInstance];
  v0 = [v2 scrubberLayoutSettings];
  v1 = sharedInstance_sharedInstance_94337;
  sharedInstance_sharedInstance_94337 = v0;
}

@end