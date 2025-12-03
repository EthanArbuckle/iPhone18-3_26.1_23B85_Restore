@interface MultiScrollViewDelegate
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (NSString)debugDescription;
- (id)viewForZoomingInScrollView:(id)view;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation MultiScrollViewDelegate

- (BOOL)respondsToSelector:(SEL)selector
{
  selfCopy = self;
  LOBYTE(selector) = MultiScrollViewDelegate.responds(to:)(selector);

  return selector & 1;
}

- (NSString)debugDescription
{
  selfCopy = self;
  MultiScrollViewDelegate.debugDescription.getter();

  v3 = sub_1D8190EE4();

  return v3;
}

- (id)viewForZoomingInScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  MultiScrollViewDelegate.viewForZooming(in:)(v6, viewCopy);
  v8 = v7;

  return v8;
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewDidZoom(_:)(zoomCopy);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewWillBeginDragging(_:)(draggingCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewDidEndDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewWillBeginDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewDidScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewDidScrollToTop(_:)(topCopy);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewDidEndScrollingAnimation(_:)(animationCopy);
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  insetCopy = inset;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewDidChangeAdjustedContentInset(_:)(insetCopy);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  LOBYTE(self) = MultiScrollViewDelegate.scrollViewShouldScrollToTop(_:)(topCopy);

  return self & 1;
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  zoomingCopy = zooming;
  viewCopy = view;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewWillBeginZooming(_:with:)(zoomingCopy, view);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(draggingCopy, decelerate);
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  viewCopy = view;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewDidEndZooming(_:with:atScale:)(zoomingCopy, view, scale);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  MultiScrollViewDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(draggingCopy, offset, x, y);
}

@end