@interface UITabBarControllerShouldUpdateTabBarOnChange
@end

@implementation UITabBarControllerShouldUpdateTabBarOnChange

void ___UITabBarControllerShouldUpdateTabBarOnChange_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = [&unk_1EFE2DE88 containsObject:v0];

  if (v1)
  {
    _UITabBarControllerShouldUpdateTabBarOnChange_shouldUpdateTabBar = dyld_program_sdk_at_least();
  }
}

@end