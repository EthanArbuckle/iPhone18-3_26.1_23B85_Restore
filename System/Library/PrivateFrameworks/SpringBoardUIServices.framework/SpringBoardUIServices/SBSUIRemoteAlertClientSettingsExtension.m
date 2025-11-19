@interface SBSUIRemoteAlertClientSettingsExtension
+ (id)valueForUndefinedSetting:(id)a3;
@end

@implementation SBSUIRemoteAlertClientSettingsExtension

+ (id)valueForUndefinedSetting:(id)a3
{
  v4 = a3;
  if ([v4 matchesProperty:sel_backgroundActivitiesToSuppress])
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SBSUIRemoteAlertClientSettingsExtension;
    v5 = objc_msgSendSuper2(&v8, sel_valueForUndefinedSetting_, v4);
  }

  v6 = v5;

  return v6;
}

@end