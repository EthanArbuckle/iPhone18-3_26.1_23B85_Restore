@interface SBHFileStackSettings
+ (id)settingsControllerModule;
@end

@implementation SBHFileStackSettings

+ (id)settingsControllerModule
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [MEMORY[0x1E69C65F8] rowWithTitle:@"File Stack Process Bundle ID" valueKeyPath:@"fileStackProcessBundleIdentifier"];
    v5 = [v4 possibleValues:&unk_1F3DB2C00 titles:&unk_1F3DB2C18];

    v6 = MEMORY[0x1E69C6638];
    v14[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v8 = [v6 sectionWithRows:v7 title:@"Choose which process will be launched when tapping on File Stack icon"];

    v9 = MEMORY[0x1E69C6638];
    v13 = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v11 = [v9 moduleWithTitle:@"File Stack Icon Settings" contents:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end