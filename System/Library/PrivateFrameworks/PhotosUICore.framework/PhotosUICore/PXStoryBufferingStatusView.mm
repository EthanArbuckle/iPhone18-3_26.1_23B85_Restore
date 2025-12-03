@interface PXStoryBufferingStatusView
- (CGRect)clippingRect;
- (PXStoryBufferingStatusView)initWithFrame:(CGRect)frame;
- (void)_updateAnimation;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
@end

@implementation PXStoryBufferingStatusView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)data
{
  v4 = [data copy];
  userData = self->_userData;
  self->_userData = v4;

  [(PXStoryBufferingStatusView *)self setNeedsLayout];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PXStoryBufferingStatusView;
  [(PXStoryBufferingStatusView *)&v3 didMoveToWindow];
  [(PXStoryBufferingStatusView *)self _updateAnimation];
}

- (void)_updateAnimation
{
  window = [(PXStoryBufferingStatusView *)self window];

  spinnerView = self->_spinnerView;
  if (window)
  {

    [(UIActivityIndicatorView *)spinnerView startAnimating];
  }

  else
  {

    [(UIActivityIndicatorView *)spinnerView stopAnimating];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXStoryBufferingStatusView;
  [(PXStoryBufferingStatusView *)&v3 layoutSubviews];
  [(PXStoryBufferingStatusView *)self bounds];
  PXRectGetCenter();
}

- (PXStoryBufferingStatusView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXStoryBufferingStatusView;
  v3 = [(PXStoryBufferingStatusView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:9];
    spinnerView = v3->_spinnerView;
    v3->_spinnerView = v4;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)v3->_spinnerView setColor:whiteColor];

    [(PXStoryBufferingStatusView *)v3 addSubview:v3->_spinnerView];
    [(PXStoryBufferingStatusView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end