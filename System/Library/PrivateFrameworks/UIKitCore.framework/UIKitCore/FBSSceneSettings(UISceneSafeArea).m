@interface FBSSceneSettings(UISceneSafeArea)
- (id)ui_safeAreaSettings;
@end

@implementation FBSSceneSettings(UISceneSafeArea)

- (id)ui_safeAreaSettings
{
  if ([a1 conformsToExtension:objc_opt_class()])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end