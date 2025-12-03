@interface SBAlwaysOnSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBAlwaysOnSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBAlwaysOnSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBAlwaysOnPolicySettings *)self->_policySettings setDefaultValues];
  [(SBAlwaysOnAPLSettings *)self->_aplSettings setDefaultValues];
}

+ (id)settingsControllerModule
{
  v29[3] = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277D431B8] rowWithTitle:@"Sleep Behavior" valueKeyPath:@"sideButtonBehavior"];
  v28[0] = &unk_283371990;
  v28[1] = &unk_2833719A8;
  v29[0] = @"To Always On";
  v29[1] = @"To Off";
  v28[2] = &unk_2833719C0;
  v29[2] = @"To Off from Always On";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  allKeys = [v23 allKeys];
  [v22 setPossibleValues:allKeys];

  allValues = [v23 allValues];
  [v22 setPossibleTitles:allValues];

  v4 = MEMORY[0x277D43210];
  v27 = v22;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v6 = [v4 sectionWithRows:v5 title:@"Side Button"];

  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"Policy Settings" childSettingsKeyPath:@"policySettings"];
  v8 = [MEMORY[0x277D431D8] rowWithTitle:@"APL Settings" childSettingsKeyPath:@"aplSettings"];
  v9 = MEMORY[0x277D43210];
  v26[0] = v7;
  v26[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v11 = [v9 sectionWithRows:v10 title:0];

  v12 = MEMORY[0x277D431B0];
  v13 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v14 = [v12 rowWithTitle:@"Restore Defaults" action:v13];

  v15 = MEMORY[0x277D43210];
  v25 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v17 = [v15 sectionWithRows:v16];

  v18 = MEMORY[0x277D43210];
  v24[0] = v6;
  v24[1] = v11;
  v24[2] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v20 = [v18 moduleWithTitle:@"Andromeda" contents:v19];

  return v20;
}

@end