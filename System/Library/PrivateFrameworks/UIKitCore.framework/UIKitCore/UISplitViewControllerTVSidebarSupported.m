@interface UISplitViewControllerTVSidebarSupported
@end

@implementation UISplitViewControllerTVSidebarSupported

void ___UISplitViewControllerTVSidebarSupported_block_invoke()
{
  v1 = _UIMainBundleIdentifier();
  if (([v1 isEqualToString:@"com.apple.TVWatchList"] & 1) == 0)
  {
    v0 = _UIKitUserDefaults();
    [v0 BOOLForKey:@"ForceSupportTVSidebar"];
  }
}

@end