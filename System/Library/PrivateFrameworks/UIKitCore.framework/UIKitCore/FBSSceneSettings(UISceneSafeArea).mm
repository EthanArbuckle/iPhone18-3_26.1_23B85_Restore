@interface FBSSceneSettings(UISceneSafeArea)
- (id)ui_safeAreaSettings;
@end

@implementation FBSSceneSettings(UISceneSafeArea)

- (id)ui_safeAreaSettings
{
  if ([self conformsToExtension:objc_opt_class()])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end