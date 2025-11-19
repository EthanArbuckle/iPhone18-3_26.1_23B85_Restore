@interface _UISceneExternalSettingsModifierSettingsExtension
+ (void)configureSetting:(id)a3;
@end

@implementation _UISceneExternalSettingsModifierSettingsExtension

+ (void)configureSetting:(id)a3
{
  v3 = a3;
  if ([v3 matchesProperty:sel_externalSettingsModifierEndpoint])
  {
    [v3 setPropagating:1];
    [v3 setNullPreserving:1];
  }
}

@end