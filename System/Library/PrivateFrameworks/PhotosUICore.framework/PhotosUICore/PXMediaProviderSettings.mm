@interface PXMediaProviderSettings
+ (PXMediaProviderSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXMediaProviderSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXMediaProviderSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXMediaProviderSettings *)self setWantsSimulation:0];
  [(PXMediaProviderSettings *)self setSimulateError:1];
  [(PXMediaProviderSettings *)self setSimulatedDelay:3.0];
}

+ (id)settingsControllerModule
{
  v28[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v19 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v25 = NSStringFromSelector(sel_wantsSimulation);
  v24 = [v3 rowWithTitle:@"Simulation" valueKeyPath:v25];
  v27 = v24;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v22 = [v2 sectionWithRows:v23];
  v28[0] = v22;
  v4 = MEMORY[0x1E69C6638];
  v5 = MEMORY[0x1E69C66A8];
  v21 = NSStringFromSelector(sel_simulateError);
  v20 = [v5 rowWithTitle:@"Error" valueKeyPath:v21];
  v26[0] = v20;
  v6 = MEMORY[0x1E69C66A0];
  v7 = NSStringFromSelector(sel_simulatedDelay);
  v8 = [v6 rowWithTitle:@"Delay" valueKeyPath:v7];
  v9 = [v8 minValue:0.0 maxValue:10.0];
  v26[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v11 = MEMORY[0x1E696AE18];
  v12 = NSStringFromSelector(sel_wantsSimulation);
  v13 = [v11 predicateWithFormat:@"%K != 0", v12];
  v14 = [v4 sectionWithRows:v10 title:@"Simulation" condition:v13];
  v28[1] = v14;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v28[2] = px_restoreDefaultsSection;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v17 = [v19 moduleWithTitle:@"Media Provider" contents:v16];

  return v17;
}

+ (PXMediaProviderSettings)sharedInstance
{
  if (sharedInstance_onceToken_83118 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_83118, &__block_literal_global_83119);
  }

  v3 = sharedInstance_sharedInstance_83120;

  return v3;
}

void __41__PXMediaProviderSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 mediaProviderSettings];
  v1 = sharedInstance_sharedInstance_83120;
  sharedInstance_sharedInstance_83120 = v0;
}

@end