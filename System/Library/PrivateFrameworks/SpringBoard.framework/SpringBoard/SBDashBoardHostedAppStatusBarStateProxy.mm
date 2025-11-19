@interface SBDashBoardHostedAppStatusBarStateProxy
@end

@implementation SBDashBoardHostedAppStatusBarStateProxy

void __72___SBDashBoardHostedAppStatusBarStateProxy__suppressInheritedPartStyles__block_invoke()
{
  v2 = +[SBPlatformController sharedInstance];
  if ([v2 isMedusaCapable])
  {
    v0 = +[SBDefaults localDefaults];
    v1 = [v0 appSwitcherDefaults];
    _suppressInheritedPartStyles_sAllowSplitView = [v1 medusaMultitaskingEnabled];
  }

  else
  {
    _suppressInheritedPartStyles_sAllowSplitView = 0;
  }
}

@end