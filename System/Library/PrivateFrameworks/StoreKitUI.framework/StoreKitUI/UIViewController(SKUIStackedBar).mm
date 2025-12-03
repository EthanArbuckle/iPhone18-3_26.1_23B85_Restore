@interface UIViewController(SKUIStackedBar)
- (double)SKUIStackedBarSplit;
- (void)setSKUIStackedBarSplit:()SKUIStackedBar;
@end

@implementation UIViewController(SKUIStackedBar)

- (double)SKUIStackedBarSplit
{
  v1 = objc_getAssociatedObject(self, "com.apple.StoreKitUI.stackedBarSplit");
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)setSKUIStackedBarSplit:()SKUIStackedBar
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(self, "com.apple.StoreKitUI.stackedBarSplit", v2, 1);
}

@end