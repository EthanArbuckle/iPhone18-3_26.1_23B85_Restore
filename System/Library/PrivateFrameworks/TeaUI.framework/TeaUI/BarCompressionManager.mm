@interface BarCompressionManager
- (BOOL)dynamicBarAnimator:(id)animator canHideBarsByDraggingWithOffset:(double)offset;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (void)dynamicBarAnimatorOutputsDidChange:(id)change;
- (void)dynamicBarAnimatorWillEnterSteadyState:(id)state;
- (void)dynamicBarAnimatorWillLeaveSteadyState:(id)state;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)voiceOverStatusDidChange;
@end

@implementation BarCompressionManager

- (void)voiceOverStatusDidChange
{
  selfCopy = self;
  sub_1D7FA7398();
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  BarCompressionManager.scrollViewWillBeginDragging(_:)(draggingCopy);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  BarCompressionManager.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  selfCopy = self;
  BarCompressionManager.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v8, y);
}

- (void)scrollViewDidScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  BarCompressionManager.scrollViewDidScrollToTop(_:)(selfCopy);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  LOBYTE(self) = BarCompressionManager.scrollViewShouldScrollToTop(_:)(topCopy);

  return self & 1;
}

- (void)dynamicBarAnimatorOutputsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  BarCompressionManager.dynamicBarAnimatorOutputsDidChange(_:)(changeCopy);
}

- (BOOL)dynamicBarAnimator:(id)animator canHideBarsByDraggingWithOffset:(double)offset
{
  animatorCopy = animator;
  selfCopy = self;
  LOBYTE(self) = BarCompressionManager.dynamicBarAnimator(_:canHideBarsByDraggingWithOffset:)(animatorCopy);

  return self & 1;
}

- (void)dynamicBarAnimatorWillEnterSteadyState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  BarCompressionManager.dynamicBarAnimatorWillEnterSteadyState(_:)(stateCopy);
}

- (void)dynamicBarAnimatorWillLeaveSteadyState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  BarCompressionManager.dynamicBarAnimatorWillLeaveSteadyState(_:)(selfCopy);
}

@end