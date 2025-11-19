@interface PXScrollViewSpeedometer
- (BOOL)isAnimatingScroll;
- (BOOL)isManuallyChanging;
- (BOOL)isScrubbing;
- (PXScrollViewSpeedometer)init;
- (PXScrollViewSpeedometer)initWithScrollController:(id)a3;
- (id)scrollview;
- (void)scrollViewControllerDidEndScrolling:(id)a3;
- (void)scrollViewControllerDidEndScrollingAnimation:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
@end

@implementation PXScrollViewSpeedometer

- (BOOL)isManuallyChanging
{
  v2 = [(PXScrollViewSpeedometer *)self scrollViewController];
  v3 = [v2 isManuallyChanging];

  return v3;
}

- (BOOL)isScrubbing
{
  v2 = [(PXScrollViewSpeedometer *)self scrollViewController];
  v3 = [v2 isScrubbing];

  return v3;
}

- (void)scrollViewControllerDidEndScrollingAnimation:(id)a3
{
  [a3 visibleRect];

  [(PXScrollSpeedometer *)self handleScrollEventVisibleRect:1 didEnd:?];
}

- (void)scrollViewControllerDidEndScrolling:(id)a3
{
  [a3 visibleRect];

  [(PXScrollSpeedometer *)self handleScrollEventVisibleRect:1 didEnd:?];
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  [a3 visibleRect];

  [(PXScrollSpeedometer *)self handleScrollEventVisibleRect:0 didEnd:?];
}

- (BOOL)isAnimatingScroll
{
  v2 = [(PXScrollViewSpeedometer *)self scrollViewController];
  v3 = [v2 isAnimatingScrollTowardsEdge];

  return v3;
}

- (id)scrollview
{
  v2 = [(PXScrollViewSpeedometer *)self scrollViewController];
  v3 = [v2 scrollView];

  return v3;
}

- (PXScrollViewSpeedometer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewSpeedometer.m" lineNumber:31 description:{@"%@ not supported", v5}];

  abort();
}

- (PXScrollViewSpeedometer)initWithScrollController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXScrollViewSpeedometer;
  v6 = [(PXScrollSpeedometer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollViewController, a3);
    [v5 registerObserver:v7];
  }

  return v7;
}

@end