@interface CACLabeledGridOverlayViewController
- (BOOL)isSmallEnoughForZooming;
- (BOOL)showsNumbersInTopLeft;
- (void)hide;
- (void)loadView;
- (void)setLabeledElements:(id)elements;
- (void)setShowsNumbersInTopLeft:(BOOL)left;
- (void)show;
- (void)zoomOverRegion:(CGRect)region;
@end

@implementation CACLabeledGridOverlayViewController

- (void)loadView
{
  v3 = [CACLabeledGridOverlayView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [(CACLabeledGridOverlayView *)v3 initWithFrame:?];
  gridOverlayView = self->_gridOverlayView;
  self->_gridOverlayView = v5;

  v7 = self->_gridOverlayView;

  [(CACLabeledGridOverlayViewController *)self setView:v7];
}

- (void)setShowsNumbersInTopLeft:(BOOL)left
{
  leftCopy = left;
  gridOverlayView = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [gridOverlayView setShowsNumbersInTopLeft:leftCopy];
}

- (BOOL)showsNumbersInTopLeft
{
  gridOverlayView = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  showsNumbersInTopLeft = [gridOverlayView showsNumbersInTopLeft];

  return showsNumbersInTopLeft;
}

- (BOOL)isSmallEnoughForZooming
{
  gridOverlayView = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  isSmallEnoughForZooming = [gridOverlayView isSmallEnoughForZooming];

  return isSmallEnoughForZooming;
}

- (void)show
{
  gridOverlayView = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [gridOverlayView show];
}

- (void)hide
{
  gridOverlayView = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [gridOverlayView hide];
}

- (void)setLabeledElements:(id)elements
{
  elementsCopy = elements;
  gridOverlayView = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [gridOverlayView clearLabeledElements];

  gridOverlayView2 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [gridOverlayView2 setShowsElementsAsClickable:{-[CACLabeledGridOverlayViewController showsElementsAsClickable](self, "showsElementsAsClickable")}];

  gridOverlayView3 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [gridOverlayView3 addLabeledElements:elementsCopy];
}

- (void)zoomOverRegion:(CGRect)region
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  gridOverlayView = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [gridOverlayView zoomOverRect:{x, y, width, height}];
}

@end