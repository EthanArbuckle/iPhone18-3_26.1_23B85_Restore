@interface SBHCredenzaSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHCredenzaSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHCredenzaSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBHCredenzaSettings *)self setShouldPinLibraryList:0];
}

+ (id)settingsControllerModule
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = MEMORY[0x1E69C65E8];
  v4 = [MEMORY[0x1E69C6640] action];
  v5 = [v3 rowWithTitle:@"Restore Defaults" action:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = [MEMORY[0x1E69C6638] sectionWithRows:v6 title:@"Restore Defaults"];
  [v2 addObject:v7];
  v8 = [MEMORY[0x1E69C6638] moduleWithTitle:0 contents:v2];

  return v8;
}

@end