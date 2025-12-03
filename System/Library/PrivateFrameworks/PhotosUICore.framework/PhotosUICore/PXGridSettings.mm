@interface PXGridSettings
+ (PXGridSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXGridSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXGridSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXGridSettings *)self setDisableSelectionOverlayView:0];
  [(PXGridSettings *)self setWeightingScheme:0];
  [(PXGridSettings *)self setSimulateLongTitles:0];
  [(PXGridSettings *)self setSimulatedNumberOfLocations:0];
}

+ (id)settingsControllerModule
{
  v20[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Selection Overlay" valueKeyPath:@"disableSelectionOverlayView"];
  v20[0] = v3;
  v4 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Layout Weight" valueKeyPath:@"weightingScheme"];
  v5 = [v4 possibleValues:&unk_1F1910498 titles:&unk_1F19104B0];
  v20[1] = v5;
  v6 = MEMORY[0x1E69C66A8];
  v7 = NSStringFromSelector(sel_simulateLongTitles);
  v8 = [v6 rowWithTitle:@"Fake Long Titles" valueKeyPath:v7];
  v20[2] = v8;
  v9 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fake Locations" valueKeyPath:@"simulatedNumberOfLocations"];
  v10 = [v9 minValue:0.0 maxValue:10.0];
  v11 = [v10 px_increment:1.0];
  v20[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v13 = [v2 sectionWithRows:v12 title:@"Settings"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v15 = MEMORY[0x1E69C6638];
  v19[0] = v13;
  v19[1] = px_restoreDefaultsSection;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v17 = [v15 moduleWithTitle:@"Grid" contents:v16];

  return v17;
}

+ (PXGridSettings)sharedInstance
{
  if (sharedInstance_onceToken_91810 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_91810, &__block_literal_global_91811);
  }

  v3 = sharedInstance_sharedInstance_91812;

  return v3;
}

void __32__PXGridSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 grid];
  v1 = sharedInstance_sharedInstance_91812;
  sharedInstance_sharedInstance_91812 = v0;
}

@end