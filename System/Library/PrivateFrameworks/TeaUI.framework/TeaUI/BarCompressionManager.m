@interface BarCompressionManager
- (BOOL)dynamicBarAnimator:(id)a3 canHideBarsByDraggingWithOffset:(double)a4;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (void)dynamicBarAnimatorOutputsDidChange:(id)a3;
- (void)dynamicBarAnimatorWillEnterSteadyState:(id)a3;
- (void)dynamicBarAnimatorWillLeaveSteadyState:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)voiceOverStatusDidChange;
@end

@implementation BarCompressionManager

- (void)voiceOverStatusDidChange
{
  v2 = self;
  sub_1D7FA7398();
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  BarCompressionManager.scrollViewWillBeginDragging(_:)(v4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  BarCompressionManager.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v7 = a3;
  v9 = self;
  BarCompressionManager.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v8, y);
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  BarCompressionManager.scrollViewDidScrollToTop(_:)(v5);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = BarCompressionManager.scrollViewShouldScrollToTop(_:)(v4);

  return self & 1;
}

- (void)dynamicBarAnimatorOutputsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  BarCompressionManager.dynamicBarAnimatorOutputsDidChange(_:)(v4);
}

- (BOOL)dynamicBarAnimator:(id)a3 canHideBarsByDraggingWithOffset:(double)a4
{
  v5 = a3;
  v6 = self;
  LOBYTE(self) = BarCompressionManager.dynamicBarAnimator(_:canHideBarsByDraggingWithOffset:)(v5);

  return self & 1;
}

- (void)dynamicBarAnimatorWillEnterSteadyState:(id)a3
{
  v4 = a3;
  v5 = self;
  BarCompressionManager.dynamicBarAnimatorWillEnterSteadyState(_:)(v4);
}

- (void)dynamicBarAnimatorWillLeaveSteadyState:(id)a3
{
  v4 = a3;
  v5 = self;
  BarCompressionManager.dynamicBarAnimatorWillLeaveSteadyState(_:)(v5);
}

@end