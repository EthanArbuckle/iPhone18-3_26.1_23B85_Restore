@interface SBClippedZoomView
- (SBClippedZoomView)initWithClippingFrame:(CGRect)a3 fullscreenZoomView:(id)a4;
@end

@implementation SBClippedZoomView

- (SBClippedZoomView)initWithClippingFrame:(CGRect)a3 fullscreenZoomView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  if (!v11)
  {
    [SBClippedZoomView initWithClippingFrame:a2 fullscreenZoomView:self];
  }

  [v11 bounds];
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
    objc_storeStrong(&v16->_fullscreenZoomViewToClip, a4);
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