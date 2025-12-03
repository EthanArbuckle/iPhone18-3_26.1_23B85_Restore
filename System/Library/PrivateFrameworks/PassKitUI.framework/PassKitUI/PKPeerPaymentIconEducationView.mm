@interface PKPeerPaymentIconEducationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_imageForWatchView;
- (void)layoutSubviews;
- (void)setShowIconsView:(BOOL)view;
- (void)setShowWatchView:(BOOL)view;
@end

@implementation PKPeerPaymentIconEducationView

- (void)setShowWatchView:(BOOL)view
{
  if (self->_showWatchView != view)
  {
    self->_showWatchView = view;
    watchDeviceImageView = self->_watchDeviceImageView;
    if (view)
    {
      if (watchDeviceImageView)
      {
        [(PKWatchDeviceImageOverlayView *)watchDeviceImageView removeFromSuperview];
      }

      v6 = objc_alloc_init(PKWatchDeviceImageOverlayView);
      v7 = self->_watchDeviceImageView;
      self->_watchDeviceImageView = v6;

      v8 = self->_watchDeviceImageView;
      _imageForWatchView = [(PKPeerPaymentIconEducationView *)self _imageForWatchView];
      [(PKWatchDeviceImageOverlayView *)v8 setOverlayImage:_imageForWatchView];

      [(PKPeerPaymentIconEducationView *)self addSubview:self->_watchDeviceImageView];
    }

    else
    {
      [(PKWatchDeviceImageOverlayView *)watchDeviceImageView removeFromSuperview];
      v10 = self->_watchDeviceImageView;
      self->_watchDeviceImageView = 0;
    }

    [(PKPeerPaymentIconEducationView *)self setNeedsLayout];
  }
}

- (void)setShowIconsView:(BOOL)view
{
  if (self->_showIconsView != view)
  {
    self->_showIconsView = view;
    iconsView = self->_iconsView;
    if (view)
    {
      if (iconsView)
      {
        [(PKPaymentSetupInitialCardEducationIconsView *)iconsView removeFromSuperview];
      }

      v6 = objc_alloc_init(PKPaymentSetupInitialCardEducationIconsView);
      v7 = self->_iconsView;
      self->_iconsView = v6;

      [(PKPaymentSetupInitialCardEducationIconsView *)self->_iconsView sizeToFit];
      [(PKPeerPaymentIconEducationView *)self addSubview:self->_iconsView];
    }

    else
    {
      [(PKPaymentSetupInitialCardEducationIconsView *)iconsView removeFromSuperview];
      v8 = self->_iconsView;
      self->_iconsView = 0;
    }

    [(PKPeerPaymentIconEducationView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKPeerPaymentIconEducationView;
  [(PKPeerPaymentIconEducationView *)&v15 layoutSubviews];
  [(PKPeerPaymentIconEducationView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PKWatchDeviceImageOverlayView *)self->_watchDeviceImageView frame];
  [(PKWatchDeviceImageOverlayView *)self->_watchDeviceImageView sizeThatFits:v4, v6];
  PKRectCenteredXInRect();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PKWatchDeviceImageOverlayView *)self->_watchDeviceImageView setFrame:?];
  [(PKPaymentSetupInitialCardEducationIconsView *)self->_iconsView frame];
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  CGRectGetMaxY(v16);
  PKRectCenteredXInRect();
  [(PKPaymentSetupInitialCardEducationIconsView *)self->_iconsView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(PKPaymentSetupInitialCardEducationIconsView *)self->_iconsView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  [(PKWatchDeviceImageOverlayView *)self->_watchDeviceImageView sizeThatFits:width, height];
  v11 = fmax(v7, v10);
  v13 = fmax(v9, v12);
  result.height = v13;
  result.width = v11;
  return result;
}

- (id)_imageForWatchView
{
  v2 = +[PKBridgeWatchAttributeController heroWatchSize];
  if (v2 <= 4)
  {
    v3 = PKUIImageNamed(off_1E8020308[v2]);
  }

  return v3;
}

@end