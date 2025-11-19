@interface UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar
@end

@implementation UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar

void ___UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_block_invoke()
{
  v0 = _UIKitUserDefaults();
  v3 = [v0 objectForKey:@"FloatingTabBarExtendBarHeight"];

  if (v3)
  {
    _UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_wantsNavigationBarExtensionForFloatingTabBar = [v3 BOOLValue];
  }

  v1 = _UIMainBundleIdentifier();
  v2 = [v1 isEqualToString:@"com.apple.DocumentManagerUICore.Service"];

  if (v2)
  {
    _UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_wantsNavigationBarExtensionForFloatingTabBar = _UIDocumentViewControllerWantsUIPDocumentLanding();
  }
}

@end