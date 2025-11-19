@interface SFSettings
+ (id)settingsControllerModule;
@end

@implementation SFSettings

+ (id)settingsControllerModule
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C6610] rowWithTitle:@"Magic Head" childSettingsKeyPath:@"magicHeadSettings"];
  v11[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v4 = MEMORY[0x1E69C6638];
  v5 = [MEMORY[0x1E69C6638] sectionWithRows:v3];
  v10 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v7 = [v4 moduleWithTitle:@"Settings for Features" contents:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end