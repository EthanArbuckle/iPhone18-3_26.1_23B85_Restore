@interface PXModelSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXModelSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXModelSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXModelSettings *)self setPhotoAnalysisGraphInitialGraceDelay:0.4];
  [(PXModelSettings *)self setPhotoAnalysisGraphProgressUpdateInterval:0.5];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23690 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_23690, &__block_literal_global_23691);
  }

  v3 = sharedInstance_sharedInstance_23692;

  return v3;
}

void __33__PXModelSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 model];
  v1 = sharedInstance_sharedInstance_23692;
  sharedInstance_sharedInstance_23692 = v0;
}

+ (id)settingsControllerModule
{
  v17[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Initial Grace Delay" valueKeyPath:@"photoAnalysisGraphInitialGraceDelay"];
  v4 = [v3 minValue:0.0 maxValue:2.0];
  v5 = [v4 px_increment:0.1];
  v17[0] = v5;
  v6 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Progress Update Interval" valueKeyPath:@"photoAnalysisGraphProgressUpdateInterval"];
  v7 = [v6 minValue:0.0 maxValue:1.0];
  v8 = [v7 px_increment:0.1];
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v10 = [v2 sectionWithRows:v9 title:@"Photo Analysis Graph"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v12 = MEMORY[0x1E69C6638];
  v16[0] = v10;
  v16[1] = px_restoreDefaultsSection;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = [v12 moduleWithTitle:@"Model" contents:v13];

  return v14;
}

@end