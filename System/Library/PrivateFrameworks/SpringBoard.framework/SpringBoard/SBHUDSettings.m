@interface SBHUDSettings
+ (id)settingsControllerModule;
@end

@implementation SBHUDSettings

+ (id)settingsControllerModule
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277D43210];
  v4 = __41__SBHUDSettings_settingsControllerModule__block_invoke();
  v5 = [v3 sectionWithRows:v4 title:@"HUD"];

  [v2 addObject:v5];
  v6 = MEMORY[0x277D43210];
  v7 = __41__SBHUDSettings_settingsControllerModule__block_invoke_2();
  v8 = [v6 sectionWithRows:v7];

  [v2 addObject:v8];
  v9 = [MEMORY[0x277D43210] moduleWithTitle:@"HUD Settings" contents:v2];

  return v9;
}

id __41__SBHUDSettings_settingsControllerModule__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D43290] rowWithTitle:@"HUD Present Duration" valueKeyPath:@"defaultHUDPresentationAnimationDuration"];
  [v0 setMaxValue:5.0];
  [v0 setMinValue:0.1];
  v3[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];

  return v1;
}

id __41__SBHUDSettings_settingsControllerModule__block_invoke_2()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D431B0];
  v1 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v2 = [v0 rowWithTitle:@"Restore Defaults" action:v1];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end