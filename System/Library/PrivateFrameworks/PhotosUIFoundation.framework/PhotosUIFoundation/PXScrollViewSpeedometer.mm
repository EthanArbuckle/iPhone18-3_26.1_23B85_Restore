@interface PXScrollViewSpeedometer
- (BOOL)isAnimatingScroll;
- (BOOL)isManuallyChanging;
- (BOOL)isScrubbing;
- (PXScrollViewSpeedometer)init;
- (PXScrollViewSpeedometer)initWithScrollController:(id)controller;
- (id)scrollview;
- (void)scrollViewControllerDidEndScrolling:(id)scrolling;
- (void)scrollViewControllerDidEndScrollingAnimation:(id)animation;
- (void)scrollViewControllerDidScroll:(id)scroll;
@end

@implementation PXScrollViewSpeedometer

- (BOOL)isManuallyChanging
{
  scrollViewController = [(PXScrollViewSpeedometer *)self scrollViewController];
  isManuallyChanging = [scrollViewController isManuallyChanging];

  return isManuallyChanging;
}

- (BOOL)isScrubbing
{
  scrollViewController = [(PXScrollViewSpeedometer *)self scrollViewController];
  isScrubbing = [scrollViewController isScrubbing];

  return isScrubbing;
}

- (void)scrollViewControllerDidEndScrollingAnimation:(id)animation
{
  [animation visibleRect];

  [(PXScrollSpeedometer *)self handleScrollEventVisibleRect:1 didEnd:?];
}

- (void)scrollViewControllerDidEndScrolling:(id)scrolling
{
  [scrolling visibleRect];

  [(PXScrollSpeedometer *)self handleScrollEventVisibleRect:1 didEnd:?];
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  [scroll visibleRect];

  [(PXScrollSpeedometer *)self handleScrollEventVisibleRect:0 didEnd:?];
}

- (BOOL)isAnimatingScroll
{
  scrollViewController = [(PXScrollViewSpeedometer *)self scrollViewController];
  isAnimatingScrollTowardsEdge = [scrollViewController isAnimatingScrollTowardsEdge];

  return isAnimatingScrollTowardsEdge;
}

- (id)scrollview
{
  scrollViewController = [(PXScrollViewSpeedometer *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (PXScrollViewSpeedometer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewSpeedometer.m" lineNumber:31 description:{@"%@ not supported", v5}];

  abort();
}

- (PXScrollViewSpeedometer)initWithScrollController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PXScrollViewSpeedometer;
  v6 = [(PXScrollSpeedometer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollViewController, controller);
    [controllerCopy registerObserver:v7];
  }

  return v7;
}

@end