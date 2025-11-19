@interface FBSSettingsDiff(_UISceneLayoutPreferencesCoordinator)
- (uint64_t)ui_containsSettingsAffectingSceneLayoutPreferences;
@end

@implementation FBSSettingsDiff(_UISceneLayoutPreferencesCoordinator)

- (uint64_t)ui_containsSettingsAffectingSceneLayoutPreferences
{
  v2 = objc_opt_class();

  return [a1 containsPropertyFromExtension:v2];
}

@end