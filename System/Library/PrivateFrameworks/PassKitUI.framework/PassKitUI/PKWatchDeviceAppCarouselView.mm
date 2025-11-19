@interface PKWatchDeviceAppCarouselView
- (CGSize)_appIconSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKWatchDeviceAppCarouselView)initWithFrame:(CGRect)a3;
- (id)_carouselViewImage;
- (void)layoutSubviews;
@end

@implementation PKWatchDeviceAppCarouselView

- (PKWatchDeviceAppCarouselView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = PKWatchDeviceAppCarouselView;
  v7 = [(PKWatchDeviceAppCarouselView *)&v17 initWithFrame:?];
  if (v7)
  {
    v8 = [[PKWatchHeroImageView alloc] initWithFrame:x, y, width, height];
    watchDeviceImageView = v7->_watchDeviceImageView;
    v7->_watchDeviceImageView = v8;

    [(PKWatchHeroImageView *)v7->_watchDeviceImageView setHideDoneLabel:1];
    [(PKWatchDeviceAppCarouselView *)v7 addSubview:v7->_watchDeviceImageView];
    v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v11 = [(PKWatchDeviceAppCarouselView *)v7 _carouselViewImage];
    v12 = [v10 initWithImage:v11];
    carouselImageView = v7->_carouselImageView;
    v7->_carouselImageView = v12;

    [(UIImageView *)v7->_carouselImageView setContentMode:1];
    [(PKWatchHeroImageView *)v7->_watchDeviceImageView addSubview:v7->_carouselImageView];
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    appIconImageView = v7->_appIconImageView;
    v7->_appIconImageView = v14;

    [(UIImageView *)v7->_appIconImageView setContentMode:1];
    [(PKWatchHeroImageView *)v7->_watchDeviceImageView addSubview:v7->_appIconImageView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKWatchDeviceAppCarouselView;
  [(PKWatchDeviceAppCarouselView *)&v10 layoutSubviews];
  [(PKWatchDeviceAppCarouselView *)self bounds];
  [(PKWatchHeroImageView *)self->_watchDeviceImageView setFrame:?];
  carouselImageView = self->_carouselImageView;
  [(PKWatchHeroImageView *)self->_watchDeviceImageView watchScreenFrame];
  [(UIImageView *)carouselImageView setFrame:?];
  appIconImageView = self->_appIconImageView;
  [(PKWatchHeroImageView *)self->_watchDeviceImageView watchScreenCenter];
  [(UIImageView *)appIconImageView setCenter:?];
  v5 = self->_appIconImageView;
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [(PKWatchDeviceAppCarouselView *)self _appIconSize];
  [(UIImageView *)v5 setFrame:v6, v7, v8, v9];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKWatchHeroImageView *)self->_watchDeviceImageView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_carouselViewImage
{
  v2 = +[PKBridgeWatchAttributeController heroWatchSize];
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = PKUIImageNamed(off_1E801CCF0[v2]);
  }

  return v3;
}

- (CGSize)_appIconSize
{
  v3 = +[PKBridgeWatchAttributeController heroWatchSize];
  PKScreenScale();
  v5 = 0.0;
  if (v3 <= 4)
  {
    v6 = &unk_1BE115EC0;
    if (v4 > 2.0)
    {
      v6 = &unk_1BE115E98;
    }

    v5 = v6[v3];
  }

  [(PKWatchHeroImageView *)self->_watchDeviceImageView watchDeviceImageScaleFactor];
  v8 = v5 * v7;
  v9 = v8;
  result.height = v9;
  result.width = v8;
  return result;
}

@end