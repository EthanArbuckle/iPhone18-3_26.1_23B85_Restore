@interface PKWatchDeviceImageOverlayView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKWatchDeviceImageOverlayView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PKWatchDeviceImageOverlayView

- (PKWatchDeviceImageOverlayView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKWatchDeviceImageOverlayView;
  v3 = [(PKWatchDeviceImageOverlayView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PKWatchHeroImageView);
    watchView = v3->_watchView;
    v3->_watchView = v4;

    [(PKWatchHeroImageView *)v3->_watchView setHideDoneLabel:1];
    [(PKWatchDeviceImageOverlayView *)v3 addSubview:v3->_watchView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKWatchDeviceImageOverlayView;
  [(PKWatchDeviceImageOverlayView *)&v3 layoutSubviews];
  [(PKWatchDeviceImageOverlayView *)self bounds];
  [(PKWatchHeroImageView *)self->_watchView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKWatchHeroImageView *)self->_watchView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end