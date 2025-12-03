@interface PKWatchDeviceImageOverlayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKWatchDeviceImageOverlayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKWatchDeviceImageOverlayView

- (PKWatchDeviceImageOverlayView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PKWatchDeviceImageOverlayView;
  v3 = [(PKWatchDeviceImageOverlayView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKWatchHeroImageView *)self->_watchView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end