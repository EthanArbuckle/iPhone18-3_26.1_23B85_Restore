@interface CACLabeledGridOverlayViewController
- (BOOL)isSmallEnoughForZooming;
- (BOOL)showsNumbersInTopLeft;
- (void)hide;
- (void)loadView;
- (void)setLabeledElements:(id)a3;
- (void)setShowsNumbersInTopLeft:(BOOL)a3;
- (void)show;
- (void)zoomOverRegion:(CGRect)a3;
@end

@implementation CACLabeledGridOverlayViewController

- (void)loadView
{
  v3 = [CACLabeledGridOverlayView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = [(CACLabeledGridOverlayView *)v3 initWithFrame:?];
  gridOverlayView = self->_gridOverlayView;
  self->_gridOverlayView = v5;

  v7 = self->_gridOverlayView;

  [(CACLabeledGridOverlayViewController *)self setView:v7];
}

- (void)setShowsNumbersInTopLeft:(BOOL)a3
{
  v3 = a3;
  v4 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [v4 setShowsNumbersInTopLeft:v3];
}

- (BOOL)showsNumbersInTopLeft
{
  v2 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  v3 = [v2 showsNumbersInTopLeft];

  return v3;
}

- (BOOL)isSmallEnoughForZooming
{
  v2 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  v3 = [v2 isSmallEnoughForZooming];

  return v3;
}

- (void)show
{
  v2 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [v2 show];
}

- (void)hide
{
  v2 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [v2 hide];
}

- (void)setLabeledElements:(id)a3
{
  v4 = a3;
  v5 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [v5 clearLabeledElements];

  v6 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [v6 setShowsElementsAsClickable:{-[CACLabeledGridOverlayViewController showsElementsAsClickable](self, "showsElementsAsClickable")}];

  v7 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [v7 addLabeledElements:v4];
}

- (void)zoomOverRegion:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CACLabeledGridOverlayViewController *)self gridOverlayView];
  [v7 zoomOverRect:{x, y, width, height}];
}

@end