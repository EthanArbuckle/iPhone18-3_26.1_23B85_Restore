@interface UIBarsExtendContentViewForHostedTabBar
@end

@implementation UIBarsExtendContentViewForHostedTabBar

void ___UIBarsExtendContentViewForHostedTabBar_block_invoke()
{
  v3 = _UIMainBundleIdentifier();
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"ExtendContentViewForHostedTabBar"];

  if (v1 || (_UIKitPreferencesOnce(), v2 = objc_claimAutoreleasedReturnValue(), [v2 objectForKey:@"ExtendContentViewForHostedTabBar"], v1 = objc_claimAutoreleasedReturnValue(), v2, v1))
  {
    _UIBarsExtendContentViewForHostedTabBar_extendContentViewForHostedTabBar = [v1 BOOLValue];
  }
}

@end