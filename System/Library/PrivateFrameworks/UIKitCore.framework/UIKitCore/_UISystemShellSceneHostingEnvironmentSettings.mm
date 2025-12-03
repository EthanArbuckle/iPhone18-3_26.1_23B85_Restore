@interface _UISystemShellSceneHostingEnvironmentSettings
+ (void)configureSetting:(id)setting;
@end

@implementation _UISystemShellSceneHostingEnvironmentSettings

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_systemShellHostingSpaceIdentifier])
  {
    [settingCopy setPropagating:1];
    [settingCopy setNullPreserving:1];
  }
}

@end