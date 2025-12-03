@interface SBSystemNotesSettings
+ (BOOL)ignoresKey:(id)key;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemNotesSettings

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = SBSystemNotesSettings;
  [(PTSettings *)&v9 setDefaultValues];
  initWithDefaultValues = [(PTSettings *)[SBPIPStashVisualSettings alloc] initWithDefaultValues];
  [(SBPIPStashVisualSettings *)initWithDefaultValues setUserInterfaceStyle:0];
  initWithDefaultValues2 = [(PTSettings *)[SBPIPStashMaterialSettings alloc] initWithDefaultValues];
  [(SBPIPStashMaterialSettings *)initWithDefaultValues2 setDarkTintAlpha:0.35];
  [(SBPIPStashMaterialSettings *)initWithDefaultValues2 setLightTintAlpha:0.14];
  [(SBPIPStashVisualSettings *)initWithDefaultValues setLightModeMaterialSettings:initWithDefaultValues2];
  [(SBSystemNotesSettings *)self setStashVisualSettings:initWithDefaultValues];
  initWithDefaultValues3 = [(PTSettings *)[SBDropShadowSettings alloc] initWithDefaultValues];
  [(SBDropShadowSettings *)initWithDefaultValues3 setOpacity:0.25];
  [(SBDropShadowSettings *)initWithDefaultValues3 setRadius:20.0];
  [(SBDropShadowSettings *)initWithDefaultValues3 setOffsetX:0.0];
  [(SBDropShadowSettings *)initWithDefaultValues3 setOffsetY:0.0];
  [(SBDropShadowSettings *)initWithDefaultValues3 setContinuousCornerRadius:20.0];
  shadowSettings = [(SBSystemNotesSettings *)self shadowSettings];
  [shadowSettings setBodyShadowSettings:initWithDefaultValues3];

  initWithDefaultValues4 = [(PTSettings *)[SBDropShadowSettings alloc] initWithDefaultValues];
  [(SBDropShadowSettings *)initWithDefaultValues4 setOpacity:0.5];
  [(SBDropShadowSettings *)initWithDefaultValues4 setRadius:75.0];
  [(SBDropShadowSettings *)initWithDefaultValues4 setOffsetX:0.0];
  [(SBDropShadowSettings *)initWithDefaultValues4 setOffsetY:15.0];
  [(SBDropShadowSettings *)initWithDefaultValues4 setContinuousCornerRadius:20.0];
  initWithDefaultValues5 = [(PTSettings *)[SBPIPShadowSettings alloc] initWithDefaultValues];
  [(SBPIPShadowSettings *)initWithDefaultValues5 setBodyShadowSettings:initWithDefaultValues3];
  [(SBPIPShadowSettings *)initWithDefaultValues5 setTabShadowSettings:initWithDefaultValues4];
  [(SBSystemNotesSettings *)self setShadowSettings:initWithDefaultValues5];
}

+ (id)settingsControllerModule
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = MEMORY[0x277D431B0];
  v4 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v5 = [v3 rowWithTitle:@"Restore Defaults" action:v4];
  v26[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v23 = [v2 sectionWithRows:v6 title:@"Restore Default Values"];

  v22 = [MEMORY[0x277D431D8] rowWithTitle:@"Swipe-In Metrics" childSettingsKeyPath:@"cornerSwipeMetricSettings"];
  v21 = [MEMORY[0x277D431D8] rowWithTitle:@"Pencil Swipe-In Tunings" childSettingsKeyPath:@"pencilSwipeGestureTuningSettings"];
  v20 = [MEMORY[0x277D431D8] rowWithTitle:@"Finger Swipe-In Tunings" childSettingsKeyPath:@"fingerSwipeGestureTuningSettings"];
  v19 = [MEMORY[0x277D431D8] rowWithTitle:@"Stash Visual Settings" childSettingsKeyPath:@"stashVisualSettings"];
  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"Drop Shadow Settings" childSettingsKeyPath:@"shadowSettings"];
  v8 = [MEMORY[0x277D431D8] rowWithTitle:@"Interaction Settings" childSettingsKeyPath:@"interactionSettings"];
  v9 = [MEMORY[0x277D431D8] rowWithTitle:@"Platter Appearance" childSettingsKeyPath:@"appearanceSettings"];
  v10 = [MEMORY[0x277D431D8] rowWithTitle:@"Application Launch" childSettingsKeyPath:@"launchSettings"];
  v11 = MEMORY[0x277D43210];
  v25[0] = v22;
  v25[1] = v21;
  v25[2] = v20;
  v25[3] = v19;
  v25[4] = v7;
  v25[5] = v8;
  v12 = v8;
  v25[6] = v9;
  v25[7] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:8];
  v14 = [v11 sectionWithRows:v13 title:@"All Settings"];

  v15 = MEMORY[0x277D43210];
  v24[0] = v23;
  v24[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v17 = [v15 moduleWithTitle:@"System Notes Settings" contents:v16];

  return v17;
}

+ (BOOL)ignoresKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"pencilSettings"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [keyCopy isEqualToString:@"fingerSettings"];
  }

  return v4;
}

@end