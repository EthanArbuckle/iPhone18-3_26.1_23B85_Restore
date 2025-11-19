@interface UISceneOrientationSettingsExtension
@end

@implementation UISceneOrientationSettingsExtension

__CFString *__57___UISceneOrientationSettingsExtension_configureSetting___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];

  return _NSStringFromUIOrientationLockState(v2);
}

@end