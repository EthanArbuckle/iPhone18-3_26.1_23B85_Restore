@interface UVPrototypeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation UVPrototypeSettings

- (void)setDefaultValues
{
  [(UVPrototypeSettings *)self setShowDebugUI:0];
  [(UVPrototypeSettings *)self setForceMetricsView:0];
  [(UVPrototypeSettings *)self setCrashAnimationDuration:0.3];

  [(UVPrototypeSettings *)self setCrashFadeOutOpacity:0.5];
}

+ (id)settingsControllerModule
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Debug UI" valueKeyPath:@"showDebugUI"];
  v27[0] = v3;
  v4 = [MEMORY[0x277D432A0] rowWithTitle:@"Force Metrics View" valueKeyPath:@"forceMetricsView"];
  v27[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v6 = [v2 sectionWithRows:v5 title:@"General"];

  v7 = MEMORY[0x277D43218];
  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Animation duration" valueKeyPath:@"crashAnimationDuration"];
  v9 = [v8 between:0.0 and:2.0];
  v10 = [v9 precision:2];
  v26[0] = v10;
  v11 = [MEMORY[0x277D431F0] rowWithTitle:@"Fade out opacity" valueKeyPath:@"crashFadeOutOpacity"];
  v12 = [v11 between:0.0 and:1.0];
  v13 = [v12 precision:2];
  v26[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v15 = [v7 sectionWithRows:v14 title:@"Crash UI"];

  v16 = MEMORY[0x277D43218];
  restoreDefaultSettingsButton = [MEMORY[0x277D431A8] restoreDefaultSettingsButton];
  v24 = restoreDefaultSettingsButton;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v19 = [v16 sectionWithRows:v18];
  v25[0] = v19;
  v25[1] = v6;
  v25[2] = v15;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v21 = [v16 moduleWithTitle:@"Settings" contents:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end