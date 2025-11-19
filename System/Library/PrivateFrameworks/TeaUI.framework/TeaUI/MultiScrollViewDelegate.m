@interface MultiScrollViewDelegate
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (NSString)debugDescription;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation MultiScrollViewDelegate

- (BOOL)respondsToSelector:(SEL)a3
{
  v4 = self;
  LOBYTE(a3) = MultiScrollViewDelegate.responds(to:)(a3);

  return a3 & 1;
}

- (NSString)debugDescription
{
  v2 = self;
  MultiScrollViewDelegate.debugDescription.getter();

  v3 = sub_1D8190EE4();

  return v3;
}

- (id)viewForZoomingInScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.viewForZooming(in:)(v6, v4);
  v8 = v7;

  return v8;
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.scrollViewDidZoom(_:)(v4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.scrollViewWillBeginDragging(_:)(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.scrollViewDidEndDecelerating(_:)(v4);
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.scrollViewWillBeginDecelerating(_:)(v4);
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.scrollViewDidScrollToTop(_:)(v4);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.scrollViewDidEndScrollingAnimation(_:)(v4);
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiScrollViewDelegate.scrollViewDidChangeAdjustedContentInset(_:)(v4);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MultiScrollViewDelegate.scrollViewShouldScrollToTop(_:)(v4);

  return self & 1;
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  MultiScrollViewDelegate.scrollViewWillBeginZooming(_:with:)(v6, a4);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  MultiScrollViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  MultiScrollViewDelegate.scrollViewDidEndZooming(_:with:atScale:)(v8, a4, a5);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  MultiScrollViewDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v9, a5, x, y);
}

@end