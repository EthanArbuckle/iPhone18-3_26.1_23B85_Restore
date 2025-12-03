@interface SBClippedZoomView
- (SBClippedZoomView)initWithClippingFrame:(CGRect)frame fullscreenZoomView:(id)view;
@end

@implementation SBClippedZoomView

- (SBClippedZoomView)initWithClippingFrame:(CGRect)frame fullscreenZoomView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  if (!viewCopy)
  {
    [SBClippedZoomView initWithClippingFrame:a2 fullscreenZoomView:self];
  }

  [viewCopy bounds];
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = SBClippedZoomView;
  v16 = [(SBZoomView *)&v20 _initWithFrame:?];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    clippingView = v16->_clippingView;
    v16->_clippingView = v17;

    [(UIView *)v16->_clippingView setClipsToBounds:1];
    [(SBClippedZoomView *)v16 addSubview:v16->_clippingView];
    objc_storeStrong(&v16->_fullscreenZoomViewToClip, view);
    [(SBFullscreenZoomView *)v16->_fullscreenZoomViewToClip setFrame:-x, -y, v13, v15];
    [(UIView *)v16->_clippingView addSubview:v16->_fullscreenZoomViewToClip];
  }

  return v16;
}

- (void)initWithClippingFrame:(uint64_t)a1 fullscreenZoomView:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBZoomView.m" lineNumber:216 description:{@"%s requires a fullscreenZoomViewToClip", "-[SBClippedZoomView initWithClippingFrame:fullscreenZoomView:]"}];
}

@end