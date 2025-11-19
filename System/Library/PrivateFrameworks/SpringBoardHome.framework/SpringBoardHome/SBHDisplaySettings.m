@interface SBHDisplaySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHDisplaySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHDisplaySettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBHDisplaySettings *)self setAdditionalTopSafeAreaInset:0.0];
}

+ (id)settingsControllerModule
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Additional Top Inset" valueKeyPath:@"additionalTopSafeAreaInset"];
  v4 = [v3 between:0.0 and:20.0];
  v5 = [v4 precision:0];

  v6 = MEMORY[0x1E69C6638];
  v14[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [v6 sectionWithRows:v7 title:@"Safe Areas"];

  [v2 addObject:v8];
  v9 = MEMORY[0x1E69C6638];
  v10 = __46__SBHDisplaySettings_settingsControllerModule__block_invoke();
  v11 = [v9 sectionWithRows:v10];

  [v2 addObject:v11];
  v12 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Display Settings" contents:v2];

  return v12;
}

id __46__SBHDisplaySettings_settingsControllerModule__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69C65E8];
  v1 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v2 = [v0 rowWithTitle:@"Restore Defaults" action:v1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end