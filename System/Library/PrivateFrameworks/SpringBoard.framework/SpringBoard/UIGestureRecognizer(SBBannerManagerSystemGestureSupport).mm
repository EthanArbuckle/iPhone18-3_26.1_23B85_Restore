@interface UIGestureRecognizer(SBBannerManagerSystemGestureSupport)
- (uint64_t)sb_isInstalledAsSystemGesture;
- (void)sb_setInstalledAsSystemGesture:()SBBannerManagerSystemGestureSupport;
@end

@implementation UIGestureRecognizer(SBBannerManagerSystemGestureSupport)

- (uint64_t)sb_isInstalledAsSystemGesture
{
  v1 = objc_getAssociatedObject(self, "com.apple.SpringBoardFramework.bannerManager.systemGestureStatus");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)sb_setInstalledAsSystemGesture:()SBBannerManagerSystemGestureSupport
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, "com.apple.SpringBoardFramework.bannerManager.systemGestureStatus", v2, 3);
}

@end