@interface _UISceneLayoutPreferenceClientSettingsExtension
+ (void)configureSetting:(id)setting;
@end

@implementation _UISceneLayoutPreferenceClientSettingsExtension

+ (void)configureSetting:(id)setting
{
  v3 = MEMORY[0x1E696AD98];
  settingCopy = setting;
  v4 = [v3 numberWithDouble:-1.0];
  [settingCopy setDefaultValue:v4];

  [settingCopy setNullPreserving:1];
  [settingCopy setDescriptionProvider:&__block_literal_global_368];
}

@end