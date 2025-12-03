@interface _UISceneExternalSettingsModifierSettingsExtension
+ (void)configureSetting:(id)setting;
@end

@implementation _UISceneExternalSettingsModifierSettingsExtension

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_externalSettingsModifierEndpoint])
  {
    [settingCopy setPropagating:1];
    [settingCopy setNullPreserving:1];
  }
}

@end