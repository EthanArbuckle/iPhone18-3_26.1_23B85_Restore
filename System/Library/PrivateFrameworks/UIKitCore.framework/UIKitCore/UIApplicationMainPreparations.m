@interface UIApplicationMainPreparations
@end

@implementation UIApplicationMainPreparations

uint64_t ___UIApplicationMainPreparations_block_invoke()
{
  v0 = _UIKitPreferencesOnce();
  v1 = [MEMORY[0x1E6979398] layer];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  memset(&v6, 0, sizeof(v6));
  gettimeofday(&v7, 0);
  localtime_r(&v7.tv_sec, &v6);
  _UIApplicationStartLaunchBackgroundTask();
  v3 = [(FBSSceneSpecification *)_UISceneHostingSceneSpecification specification:*&v6.tm_sec];
  v4 = MTVisualStylingCreateDictionaryRepresentation();
  return [&stru_1EFB14550 _containsEmoji];
}

@end