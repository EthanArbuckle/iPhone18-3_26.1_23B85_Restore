@interface FBSSettingsDiff(UISceneSafeArea)
- (uint64_t)ui_containsChangesToSceneSafeAreaSettings;
@end

@implementation FBSSettingsDiff(UISceneSafeArea)

- (uint64_t)ui_containsChangesToSceneSafeAreaSettings
{
  v2 = objc_opt_class();

  return [a1 containsPropertyFromExtension:v2];
}

@end