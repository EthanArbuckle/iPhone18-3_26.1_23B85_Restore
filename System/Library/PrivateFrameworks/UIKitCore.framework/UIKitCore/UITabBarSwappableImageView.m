@interface UITabBarSwappableImageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UITabBarSwappableImageView)initWithImage:(id)a3 alternateImage:(id)a4 landscapeImage:(id)a5 landscapeAlternateImage:(id)a6;
- (void)setAlternateImage:(id)a3;
- (void)setCurrentImage;
- (void)setImage:(id)a3;
- (void)setLandscape:(BOOL)a3;
- (void)showAlternateImage:(BOOL)a3;
@end

@implementation UITabBarSwappableImageView

- (void)setCurrentImage
{
  if (self->_showLandscape)
  {
    if (self->_showAlternate)
    {
      v3 = &OBJC_IVAR___UITabBarSwappableImageView__alternate;
    }

    else
    {
      v3 = &OBJC_IVAR___UITabBarSwappableImageView__value;
    }

    v4 = v3[2];
  }

  else
  {
    v3 = &OBJC_IVAR___UITabBarSwappableImageView__value;
    if (!self->_showAlternate)
    {
LABEL_9:
      v5 = *(&self->super.super.super.super.isa + *v3);
      goto LABEL_10;
    }

    v4 = 520;
  }

  v5 = *(&self->super.super.super.super.isa + v4);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v5;
  v7.receiver = self;
  v7.super_class = UITabBarSwappableImageView;
  [(UIImageView *)&v7 setImage:v6];
}

- (UITabBarSwappableImageView)initWithImage:(id)a3 alternateImage:(id)a4 landscapeImage:(id)a5 landscapeAlternateImage:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = UITabBarSwappableImageView;
  v15 = [(UIImageView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_value, a3);
    objc_storeStrong(&v16->_alternate, a4);
    objc_storeStrong(&v16->_landscapeValue, a5);
    objc_storeStrong(&v16->_landscapeAlternate, a6);
    [(UIView *)v16 setOpaque:0];
    [(UITabBarSwappableImageView *)v16 setCurrentImage];
    [(UIImageView *)v16 setContentMode:1];
  }

  [(UIImageView *)v16 _setDefaultRenderingMode:2];

  return v16;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!self->_showLandscape)
  {
    goto LABEL_8;
  }

  if (self->_showAlternate)
  {
    if (!self->_landscapeAlternate)
    {
      v6 = [(UIImage *)self->_alternate isSymbolImage];
      v7 = 20.0;
      v8 = 20.0;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v10.receiver = self;
    v10.super_class = UITabBarSwappableImageView;
    [(UIImageView *)&v10 sizeThatFits:width, height];
    goto LABEL_9;
  }

  if (self->_landscapeValue)
  {
    goto LABEL_8;
  }

  v9 = [(UIImage *)self->_value isSymbolImage];
  v7 = 20.0;
  v8 = 20.0;
  if (v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)showAlternateImage:(BOOL)a3
{
  if (self->_showAlternate != a3)
  {
    self->_showAlternate = a3;
  }

  [(UITabBarSwappableImageView *)self setCurrentImage];
}

- (void)setAlternateImage:(id)a3
{
  v5 = a3;
  if (self->_alternate != v5)
  {
    objc_storeStrong(&self->_alternate, a3);
  }

  [(UITabBarSwappableImageView *)self setCurrentImage];
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_value != v5)
  {
    objc_storeStrong(&self->_value, a3);
  }

  [(UITabBarSwappableImageView *)self setCurrentImage];
}

- (void)setLandscape:(BOOL)a3
{
  if (self->_showLandscape != a3)
  {
    self->_showLandscape = a3;
  }

  [(UITabBarSwappableImageView *)self setCurrentImage];
}

@end