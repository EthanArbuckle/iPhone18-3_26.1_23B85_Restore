@interface _UISceneOrientationClientSettingsExtension
+ (void)configureSetting:(id)setting;
@end

@implementation _UISceneOrientationClientSettingsExtension

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_interfaceOrientationLockPreference])
  {
    [settingCopy setPropagating:0];
    [settingCopy setDefaultValue:&unk_1EFE30928];
    [settingCopy setDescriptionProvider:&__block_literal_global_268];
  }
}

@end