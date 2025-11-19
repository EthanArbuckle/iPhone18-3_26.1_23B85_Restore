@interface UINavigationControllerUseAugmentedPopGesture
@end

@implementation UINavigationControllerUseAugmentedPopGesture

void ___UINavigationControllerUseAugmentedPopGesture_block_invoke()
{
  v0 = _UIKitPreferencesOnce();
  v2 = [v0 objectForKey:@"UIUseAugmentedPopGesture"];

  v1 = v2;
  if (v2)
  {
    __UINavigationControllerUseAugmentedPopGesture = [v2 BOOLValue];
    v1 = v2;
  }
}

@end