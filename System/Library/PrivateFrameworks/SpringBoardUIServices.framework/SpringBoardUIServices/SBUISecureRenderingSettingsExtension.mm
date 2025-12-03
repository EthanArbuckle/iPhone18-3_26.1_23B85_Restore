@interface SBUISecureRenderingSettingsExtension
+ (void)configureSetting:(id)setting;
@end

@implementation SBUISecureRenderingSettingsExtension

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_isSecureRenderingEnabled])
  {
    [settingCopy setPropagating:1];
    [settingCopy setDefaultValue:&unk_1F1DB5A70];
    [settingCopy setNullPreserving:1];
  }
}

@end