@interface UIGestureRecognizer(SBBannerManagerSystemGestureSupport)
- (uint64_t)sb_isInstalledAsSystemGesture;
- (void)sb_setInstalledAsSystemGesture:()SBBannerManagerSystemGestureSupport;
@end

@implementation UIGestureRecognizer(SBBannerManagerSystemGestureSupport)

- (uint64_t)sb_isInstalledAsSystemGesture
{
  v1 = objc_getAssociatedObject(a1, "com.apple.SpringBoardFramework.bannerManager.systemGestureStatus");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)sb_setInstalledAsSystemGesture:()SBBannerManagerSystemGestureSupport
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, "com.apple.SpringBoardFramework.bannerManager.systemGestureStatus", v2, 3);
}

@end