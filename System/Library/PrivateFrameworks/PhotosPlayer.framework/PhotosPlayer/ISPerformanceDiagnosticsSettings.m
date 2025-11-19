@interface ISPerformanceDiagnosticsSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation ISPerformanceDiagnosticsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = ISPerformanceDiagnosticsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(ISPerformanceDiagnosticsSettings *)self setShouldTracePerformance:0];
}

+ (id)settingsControllerModule
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = [MEMORY[0x277D432A0] rowWithTitle:@"Trace Performance" valueKeyPath:@"shouldTracePerformance"];
  v19[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v5 = [v2 sectionWithRows:v4];

  v6 = MEMORY[0x277D43218];
  v7 = MEMORY[0x277D431A8];
  v8 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v9 = [v7 rowWithTitle:@"Restore Defaults" action:v8];
  v18 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v11 = [v6 sectionWithRows:v10];

  v12 = MEMORY[0x277D43218];
  v17[0] = v5;
  v17[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v14 = [v12 moduleWithTitle:@"Performance Diagnostics" contents:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)sharedInstance
{
  v2 = +[ISRootSettings sharedInstance];
  v3 = [v2 performanceDiagnosticsSettings];

  return v3;
}

@end