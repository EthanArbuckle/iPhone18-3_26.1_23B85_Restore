@interface SBSystemUISceneSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemUISceneSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSystemUISceneSettings;
  [(PTSettings *)&v3 setDefaultValues];
  *(&self->super.__isObservingChildren + 1) = 0;
}

+ (id)settingsControllerModule
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"allow any scene session role of an entitled client to request a SystemUI scene" valueKeyPath:@"allowAnySceneSessionRole"];
  v3 = MEMORY[0x277D43210];
  v18[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v5 = [v3 sectionWithRows:v4 title:@"General"];

  v6 = MEMORY[0x277D431B0];
  v7 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v8 = [v6 rowWithTitle:@"Restore Defaults" action:v7];

  v9 = MEMORY[0x277D43210];
  v17 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v11 = [v9 sectionWithRows:v10];

  v12 = MEMORY[0x277D43210];
  v16[0] = v5;
  v16[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v14 = [v12 moduleWithTitle:@"SystemUI Scene" contents:v13];

  return v14;
}

@end