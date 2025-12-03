@interface SBFSiriSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBFSiriSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBFSiriSettings;
  [(PTSettings *)&v4 setDefaultValues];
  systemAssistantExperienceSettings = [(SBFSiriSettings *)self systemAssistantExperienceSettings];
  [systemAssistantExperienceSettings setDefaultValues];
}

+ (id)settingsControllerModule
{
  v17[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6630];
  v3 = [MEMORY[0x1E69C6608] rowWithTitle:@"System Assistant Experience" childSettingsKeyPath:@"systemAssistantExperienceSettings"];
  v16 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v5 = [v2 sectionWithRows:v4];
  v17[0] = v5;
  v6 = MEMORY[0x1E69C6630];
  v7 = MEMORY[0x1E69C65E0];
  v8 = [MEMORY[0x1E69C6648] actionWithSettingsKeyPath:0];
  v9 = [v7 rowWithTitle:@"Restore Defaults" action:v8];
  v15 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v11 = [v6 sectionWithRows:v10];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v2 moduleWithTitle:0 contents:v12];

  return v13;
}

@end