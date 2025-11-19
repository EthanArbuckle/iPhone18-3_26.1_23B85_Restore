@interface UIMotionEffectsShouldBeEnabled
@end

@implementation UIMotionEffectsShouldBeEnabled

void ___UIMotionEffectsShouldBeEnabled_block_invoke()
{
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = [v1 addObserverForName:@"UIAccessibilityReduceMotionStatusDidChangeNotification" object:0 queue:0 usingBlock:&__block_literal_global_176];
}

void ___UIMotionEffectsShouldBeEnabled_block_invoke_2()
{
  _UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache = -1;
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_UIMotionEffectEngineEnabledDidChangeNotification" object:0];
}

@end