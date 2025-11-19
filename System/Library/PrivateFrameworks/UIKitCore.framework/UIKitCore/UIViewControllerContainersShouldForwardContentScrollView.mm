@interface UIViewControllerContainersShouldForwardContentScrollView
@end

@implementation UIViewControllerContainersShouldForwardContentScrollView

void ___UIViewControllerContainersShouldForwardContentScrollView_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v0 objectForKey:@"UIViewControllerContainersShouldForwardContentScrollView"];

  v1 = v3;
  if (v3 || (_UIKitPreferencesOnce(), v2 = objc_claimAutoreleasedReturnValue(), [v2 objectForKey:@"UIViewControllerContainersShouldForwardContentScrollView"], v4 = objc_claimAutoreleasedReturnValue(), v2, (v1 = v4) != 0))
  {
    v5 = v1;
    _UIViewControllerContainersShouldForwardContentScrollView_shouldForward = [v1 BOOLValue];
  }
}

@end