@interface _UIApplicationSceneKeyboardSettings
+ (void)configureSetting:(id)setting;
@end

@implementation _UIApplicationSceneKeyboardSettings

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_hardwareKeyboardExclusivityIdentifier])
  {
    [settingCopy setPropagating:1];
    [settingCopy setNullPreserving:1];
  }
}

@end