@interface _UISceneOrientationSettingsExtension
+ (void)configureSetting:(id)setting;
@end

@implementation _UISceneOrientationSettingsExtension

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_interfaceOrientationLockState])
  {
    [settingCopy setPropagating:0];
    [settingCopy setDefaultValue:&unk_1EFE2FE90];
    [settingCopy setDescriptionProvider:&__block_literal_global_86];
  }
}

@end