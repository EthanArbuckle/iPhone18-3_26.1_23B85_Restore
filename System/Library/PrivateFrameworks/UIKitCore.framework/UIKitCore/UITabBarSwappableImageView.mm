@interface UITabBarSwappableImageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UITabBarSwappableImageView)initWithImage:(id)image alternateImage:(id)alternateImage landscapeImage:(id)landscapeImage landscapeAlternateImage:(id)landscapeAlternateImage;
- (void)setAlternateImage:(id)image;
- (void)setCurrentImage;
- (void)setImage:(id)image;
- (void)setLandscape:(BOOL)landscape;
- (void)showAlternateImage:(BOOL)image;
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

- (UITabBarSwappableImageView)initWithImage:(id)image alternateImage:(id)alternateImage landscapeImage:(id)landscapeImage landscapeAlternateImage:(id)landscapeAlternateImage
{
  imageCopy = image;
  alternateImageCopy = alternateImage;
  landscapeImageCopy = landscapeImage;
  landscapeAlternateImageCopy = landscapeAlternateImage;
  v18.receiver = self;
  v18.super_class = UITabBarSwappableImageView;
  v15 = [(UIImageView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_value, image);
    objc_storeStrong(&v16->_alternate, alternateImage);
    objc_storeStrong(&v16->_landscapeValue, landscapeImage);
    objc_storeStrong(&v16->_landscapeAlternate, landscapeAlternateImage);
    [(UIView *)v16 setOpaque:0];
    [(UITabBarSwappableImageView *)v16 setCurrentImage];
    [(UIImageView *)v16 setContentMode:1];
  }

  [(UIImageView *)v16 _setDefaultRenderingMode:2];

  return v16;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (!self->_showLandscape)
  {
    goto LABEL_8;
  }

  if (self->_showAlternate)
  {
    if (!self->_landscapeAlternate)
    {
      isSymbolImage = [(UIImage *)self->_alternate isSymbolImage];
      v7 = 20.0;
      v8 = 20.0;
      if (!isSymbolImage)
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

  isSymbolImage2 = [(UIImage *)self->_value isSymbolImage];
  v7 = 20.0;
  v8 = 20.0;
  if (isSymbolImage2)
  {
    goto LABEL_8;
  }

LABEL_9:
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)showAlternateImage:(BOOL)image
{
  if (self->_showAlternate != image)
  {
    self->_showAlternate = image;
  }

  [(UITabBarSwappableImageView *)self setCurrentImage];
}

- (void)setAlternateImage:(id)image
{
  imageCopy = image;
  if (self->_alternate != imageCopy)
  {
    objc_storeStrong(&self->_alternate, image);
  }

  [(UITabBarSwappableImageView *)self setCurrentImage];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_value != imageCopy)
  {
    objc_storeStrong(&self->_value, image);
  }

  [(UITabBarSwappableImageView *)self setCurrentImage];
}

- (void)setLandscape:(BOOL)landscape
{
  if (self->_showLandscape != landscape)
  {
    self->_showLandscape = landscape;
  }

  [(UITabBarSwappableImageView *)self setCurrentImage];
}

@end