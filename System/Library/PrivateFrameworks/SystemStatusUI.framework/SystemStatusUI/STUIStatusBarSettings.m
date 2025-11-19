@interface STUIStatusBarSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation STUIStatusBarSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(STUIStatusBarSettings *)self setAlwaysAutomaticStyle:0];
  [(STUIStatusBarSettings *)self setForcedMode:-1];
}

+ (id)settingsControllerModule
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v16 = [MEMORY[0x277D432A0] rowWithTitle:@"Always Automatic Style" valueKeyPath:@"alwaysAutomaticStyle"];
  v18[0] = v16;
  v3 = [MEMORY[0x277D431B8] rowWithTitle:@"Forced Mode" valueKeyPath:@"forcedMode"];
  v4 = [v3 possibleValues:&unk_287D1AF48 titles:&unk_287D1AF60];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v6 = [v2 sectionWithRows:v5 title:@"General"];
  v19[0] = v6;
  v7 = MEMORY[0x277D43218];
  v8 = MEMORY[0x277D431A8];
  v9 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:v9];
  v17 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v12 = [v7 sectionWithRows:v11];
  v19[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v14 = [v2 moduleWithTitle:0 contents:v13];

  return v14;
}

@end