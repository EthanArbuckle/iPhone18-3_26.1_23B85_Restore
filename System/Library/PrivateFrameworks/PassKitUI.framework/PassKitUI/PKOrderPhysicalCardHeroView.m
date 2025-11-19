@interface PKOrderPhysicalCardHeroView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKOrderPhysicalCardHeroView)initWithFrame:(CGRect)a3;
- (id)_backgroundImage;
- (void)layoutSubviews;
@end

@implementation PKOrderPhysicalCardHeroView

- (PKOrderPhysicalCardHeroView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PKOrderPhysicalCardHeroView;
  v3 = [(PKOrderPhysicalCardHeroView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [(PKOrderPhysicalCardHeroView *)v3 _backgroundImage];
    v6 = [v4 initWithImage:v5];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PKPhysicalCardArtworkView *)self->_artworkView sizeThatFits:a3.width, 1.79769313e308];
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