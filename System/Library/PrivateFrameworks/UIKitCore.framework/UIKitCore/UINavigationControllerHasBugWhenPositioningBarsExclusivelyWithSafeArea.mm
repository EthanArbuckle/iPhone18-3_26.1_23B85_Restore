@interface UINavigationControllerHasBugWhenPositioningBarsExclusivelyWithSafeArea
@end

@implementation UINavigationControllerHasBugWhenPositioningBarsExclusivelyWithSafeArea

void ___UINavigationControllerHasBugWhenPositioningBarsExclusivelyWithSafeArea_block_invoke()
{
  v0 = dyld_program_sdk_at_least();
  byte_1ED497909 = v0 ^ 1;
  if (((v0 ^ 1) & 1) == 0)
  {
    v1 = _UIMainBundleIdentifier();
    if ([v1 isEqualToString:@"com.apple.springboard"])
    {
      byte_1ED497909 = 1;
    }
  }
}

@end