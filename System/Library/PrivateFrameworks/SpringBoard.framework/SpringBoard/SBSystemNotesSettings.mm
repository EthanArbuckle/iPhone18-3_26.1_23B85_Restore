@interface SBSystemNotesSettings
+ (BOOL)ignoresKey:(id)a3;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemNotesSettings

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = SBSystemNotesSettings;
  [(PTSettings *)&v9 setDefaultValues];
  v3 = [(PTSettings *)[SBPIPStashVisualSettings alloc] initWithDefaultValues];
  [(SBPIPStashVisualSettings *)v3 setUserInterfaceStyle:0];
  v4 = [(PTSettings *)[SBPIPStashMaterialSettings alloc] initWithDefaultValues];
  [(SBPIPStashMaterialSettings *)v4 setDarkTintAlpha:0.35];
  [(SBPIPStashMaterialSettings *)v4 setLightTintAlpha:0.14];
  [(SBPIPStashVisualSettings *)v3 setLightModeMaterialSettings:v4];
  [(SBSystemNotesSettings *)self setStashVisualSettings:v3];
  v5 = [(PTSettings *)[SBDropShadowSettings alloc] initWithDefaultValues];
  [(SBDropShadowSettings *)v5 setOpacity:0.25];
  [(SBDropShadowSettings *)v5 setRadius:20.0];
  [(SBDropShadowSettings *)v5 setOffsetX:0.0];
  [(SBDropShadowSettings *)v5 setOffsetY:0.0];
  [(SBDropShadowSettings *)v5 setContinuousCornerRadius:20.0];
  v6 = [(SBSystemNotesSettings *)self shadowSettings];
  [v6 setBodyShadowSettings:v5];

  v7 = [(PTSettings *)[SBDropShadowSettings alloc] initWithDefaultValues];
  [(SBDropShadowSettings *)v7 setOpacity:0.5];
  [(SBDropShadowSettings *)v7 setRadius:75.0];
  [(SBDropShadowSettings *)v7 setOffsetX:0.0];
  [(SBDropShadowSettings *)v7 setOffsetY:15.0];
  [(SBDropShadowSettings *)v7 setContinuousCornerRadius:20.0];
  v8 = [(PTSettings *)[SBPIPShadowSettings alloc] initWithDefaultValues];
  [(SBPIPShadowSettings *)v8 setBodyShadowSettings:v5];
  [(SBPIPShadowSettings *)v8 setTabShadowSettings:v7];
  [(SBSystemNotesSettings *)self setShadowSettings:v8];
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

+ (BOOL)ignoresKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"pencilSettings"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"fingerSettings"];
  }

  return v4;
}

@end