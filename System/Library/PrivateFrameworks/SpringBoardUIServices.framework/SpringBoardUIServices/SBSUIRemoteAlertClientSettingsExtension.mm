@interface SBSUIRemoteAlertClientSettingsExtension
+ (id)valueForUndefinedSetting:(id)setting;
@end

@implementation SBSUIRemoteAlertClientSettingsExtension

+ (id)valueForUndefinedSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_backgroundActivitiesToSuppress])
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SBSUIRemoteAlertClientSettingsExtension;
    v5 = objc_msgSendSuper2(&v8, sel_valueForUndefinedSetting_, settingCopy);
  }

  v6 = v5;

  return v6;
}

@end