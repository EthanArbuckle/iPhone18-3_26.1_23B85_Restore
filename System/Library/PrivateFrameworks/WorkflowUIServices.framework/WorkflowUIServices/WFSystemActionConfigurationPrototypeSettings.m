@interface WFSystemActionConfigurationPrototypeSettings
+ (id)settingsControllerModule;
+ (id)sharedSettings;
- (void)setDefaultValues;
@end

@implementation WFSystemActionConfigurationPrototypeSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = WFSystemActionConfigurationPrototypeSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(WFSystemActionConfigurationPrototypeSettings *)self setSidebarSpringDamping:0.9];
  [(WFSystemActionConfigurationPrototypeSettings *)self setSidebarSpringRepsonse:0.15];
}

+ (id)settingsControllerModule
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Damping" valueKeyPath:@"sidebarSpringDamping"];
  v4 = [v3 between:0.0 and:1.0];
  v5 = [v4 precision:2];
  v16[0] = v5;
  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Response" valueKeyPath:@"sidebarSpringRepsonse"];
  v7 = [v6 between:0.0 and:1.0];
  v8 = [v7 precision:2];
  v16[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v10 = [v2 sectionWithRows:v9 title:@"Sidebar Settings"];

  v11 = MEMORY[0x1E69C6638];
  v15 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v13 = [v11 moduleWithTitle:@"Pencil Settings" contents:v12];

  return v13;
}

+ (id)sharedSettings
{
  if (sharedSettings_onceToken != -1)
  {
    dispatch_once(&sharedSettings_onceToken, &__block_literal_global_2878);
  }

  v3 = sharedSettings_sharedInstance;

  return v3;
}

uint64_t __62__WFSystemActionConfigurationPrototypeSettings_sharedSettings__block_invoke()
{
  sharedSettings_sharedInstance = +[WFSystemActionConfigurationPrototypeSettingsDomain rootSettings];

  return MEMORY[0x1EEE66BB8]();
}

@end