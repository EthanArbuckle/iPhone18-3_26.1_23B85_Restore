@interface PKOrderPhysicalCardHeroView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKOrderPhysicalCardHeroView)initWithFrame:(CGRect)frame;
- (id)_backgroundImage;
- (void)layoutSubviews;
@end

@implementation PKOrderPhysicalCardHeroView

- (PKOrderPhysicalCardHeroView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PKOrderPhysicalCardHeroView;
  v3 = [(PKOrderPhysicalCardHeroView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    _backgroundImage = [(PKOrderPhysicalCardHeroView *)v3 _backgroundImage];
    v6 = [v4 initWithImage:_backgroundImage];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v6;

    [(UIImageView *)v3->_backgroundView setAccessibilityIgnoresInvertColors:1];
    [(UIImageView *)v3->_backgroundView setContentMode:2];
    [(UIImageView *)v3->_backgroundView setClipsToBounds:1];
    [(PKOrderPhysicalCardHeroView *)v3 addSubview:v3->_backgroundView];
    v8 = objc_alloc_init(PKPhysicalCardArtworkView);
    artworkView = v3->_artworkView;
    v3->_artworkView = v8;

    [(PKOrderPhysicalCardHeroView *)v3 addSubview:v3->_artworkView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKPhysicalCardArtworkView *)self->_artworkView sizeThatFits:fits.width, 1.79769313e308];
  v5 = v4 + 120.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKOrderPhysicalCardHeroView;
  [(PKOrderPhysicalCardHeroView *)&v8 layoutSubviews];
  [(PKOrderPhysicalCardHeroView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_backgroundView setFrame:?];
  [(PKPhysicalCardArtworkView *)self->_artworkView sizeThatFits:v4, v6];
  artworkView = self->_artworkView;
  PKSizeAlignedInRect();
  [(PKPhysicalCardArtworkView *)artworkView setFrame:?];
}

- (id)_backgroundImage
{
  v2 = PKUIGetMinScreenWidthType();
  if (v2 > 0xE)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E8015BD8[v2];
  }

  return PKUIImageNamed(v3);
}

@end