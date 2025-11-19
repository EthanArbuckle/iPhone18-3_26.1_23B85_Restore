@interface PUPerformanceDiagnosticsSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PUPerformanceDiagnosticsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUPerformanceDiagnosticsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUPerformanceDiagnosticsSettings *)self setShouldTracePerformance:0];
  [(PUPerformanceDiagnosticsSettings *)self setScrollTestRampUpDuration:0.8];
  [(PUPerformanceDiagnosticsSettings *)self setScrollTestCPUWarmupDuration:0.0];
  [(PUPerformanceDiagnosticsSettings *)self setScrollTestCPUSustainDuration:0.0];
}

+ (id)settingsControllerModule
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Trace Performance" valueKeyPath:@"shouldTracePerformance"];
  v31[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v27 = [v2 sectionWithRows:v4];

  v5 = MEMORY[0x1E69C6638];
  v26 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Ramp Up Duration" valueKeyPath:@"scrollTestRampUpDuration"];
  v6 = [v26 minValue:0.0 maxValue:3.0];
  v7 = [v6 pu_increment:0.0500000007];
  v30[0] = v7;
  v8 = [MEMORY[0x1E69C66A0] rowWithTitle:@"CPU Warmup Duration" valueKeyPath:@"scrollTestCPUWarmupDuration"];
  v9 = [v8 minValue:0.0 maxValue:3.0];
  v10 = [v9 pu_increment:0.100000001];
  v30[1] = v10;
  v11 = [MEMORY[0x1E69C66A0] rowWithTitle:@"CPU Sustain Duration" valueKeyPath:@"scrollTestCPUSustainDuration"];
  v12 = [v11 minValue:0.0 maxValue:3.0];
  v13 = [v12 pu_increment:0.100000001];
  v30[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v15 = [v5 sectionWithRows:v14 title:@"PPT Scroll Tests"];

  v16 = MEMORY[0x1E69C6638];
  v17 = MEMORY[0x1E69C65E8];
  v18 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v19 = [v17 rowWithTitle:@"Restore Defaults" action:v18];
  v29 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v21 = [v16 sectionWithRows:v20];

  v22 = MEMORY[0x1E69C6638];
  v28[0] = v27;
  v28[1] = v15;
  v28[2] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v24 = [v22 moduleWithTitle:@"Performance Diagnostics" contents:v23];

  return v24;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_52296 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_52296, &__block_literal_global_52297);
  }

  v3 = sharedInstance_sharedInstance_52298;

  return v3;
}

void __50__PUPerformanceDiagnosticsSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 performanceDiagnosticsSettings];
  v1 = sharedInstance_sharedInstance_52298;
  sharedInstance_sharedInstance_52298 = v0;
}

@end