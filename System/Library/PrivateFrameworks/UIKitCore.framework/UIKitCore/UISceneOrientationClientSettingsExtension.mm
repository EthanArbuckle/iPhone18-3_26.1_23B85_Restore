@interface UISceneOrientationClientSettingsExtension
@end

@implementation UISceneOrientationClientSettingsExtension

__CFString *__63___UISceneOrientationClientSettingsExtension_configureSetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];

  return _NSStringFromUIOrientationLockPreference(v2);
}

@end