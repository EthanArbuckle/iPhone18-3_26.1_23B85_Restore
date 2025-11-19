@interface UIButtonBehaviorSettings
@end

@implementation UIButtonBehaviorSettings

uint64_t __53___UIButtonBehaviorSettings_settingsControllerModule__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  v4 = [v3 _useTextSettings];

  return v4;
}

uint64_t __53___UIButtonBehaviorSettings_settingsControllerModule__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  v4 = [v3 _useImageSettings];

  return v4;
}

uint64_t __53___UIButtonBehaviorSettings_settingsControllerModule__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  v4 = [v3 _useMixedSettings];

  return v4;
}

@end