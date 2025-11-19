@interface SBSystemNotesLaunchSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemNotesLaunchSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSystemNotesLaunchSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSystemNotesLaunchSettings *)self setApplicationBundleID:@"com.apple.mobilenotes"];
}

+ (id)settingsControllerModule
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v4 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v5 = [MEMORY[0x277D43200] rowWithTitle:@"BundleID" valueKeyPath:@"applicationBundleID"];
  v6 = MEMORY[0x277D43210];
  v14[0] = v4;
  v14[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v6 sectionWithRows:v7 title:0];

  v9 = MEMORY[0x277D43210];
  v13 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = [v9 moduleWithTitle:@"Application Launch Settings" contents:v10];

  return v11;
}

@end