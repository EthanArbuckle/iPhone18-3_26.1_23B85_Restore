@interface PKBillPaymentCircularView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKBillPaymentCircularView)init;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setImage:(id)image applyColor:(BOOL)color;
- (void)setPrimaryColor:(id)color;
- (void)setSecondaryColor:(id)color;
@end

@implementation PKBillPaymentCircularView

- (PKBillPaymentCircularView)init
{
  v15.receiver = self;
  v15.super_class = PKBillPaymentCircularView;
  v2 = [(PKBillPaymentCircularView *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    primaryView = v2->_primaryView;
    v2->_primaryView = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    secondaryView = v2->_secondaryView;
    v2->_secondaryView = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v2->_imageView;
    v2->_imageView = v7;

    _defaultSecondaryColor = [(PKBillPaymentCircularView *)v2 _defaultSecondaryColor];
    secondaryColor = v2->_secondaryColor;
    v2->_secondaryColor = _defaultSecondaryColor;

    objc_storeStrong(&v2->_primaryColor, _defaultSecondaryColor);
    [(PKBillPaymentCircularView *)v2 addSubview:v2->_secondaryView];
    [(PKBillPaymentCircularView *)v2 addSubview:v2->_primaryView];
    [(PKBillPaymentCircularView *)v2 addSubview:v2->_imageView];
    layer = [(PKBillPaymentCircularView *)v2 layer];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [layer setShadowRadius:4.0];
    LODWORD(v13) = 0.25;
    [layer setShadowOpacity:v13];
    __33__PKBillPaymentCircularView_init__block_invoke(v2->_primaryView);
    __33__PKBillPaymentCircularView_init__block_invoke(v2->_secondaryView);
    [(PKBillPaymentCircularView *)v2 _updateColors];
  }

  return v2;
}

void __33__PKBillPaymentCircularView_init__block_invoke(void *a1)
{
  if (a1)
  {
    v1 = [a1 layer];
    [v1 setMasksToBounds:1];
    [v1 setCornerCurve:*MEMORY[0x1E69796E0]];
  }
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = PKBillPaymentCircularView;
  [(PKBillPaymentCircularView *)&v31 layoutSubviews];
  [(PKBillPaymentCircularView *)self bounds];
  PKSizeAlignedInRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = PKUIGetMinScreenWidthType();
  v12 = 3.5;
  if (!v11)
  {
    v12 = 3.0;
  }

  v13 = v4 + v12;
  v14 = v6 + v12;
  v15 = 7.0;
  if (!v11)
  {
    v15 = 6.0;
  }

  v16 = v8 - v15;
  v17 = v10 - v15;
  image = self->_image;
  if (image)
  {
    [(UIImage *)image size];
  }

  PKSizeAlignedInRect();
  v29 = v20;
  v30 = v19;
  v27 = v22;
  v28 = v21;
  [(UIView *)self->_primaryView setFrame:v13, v14, v16, v17];
  layer = [(UIView *)self->_primaryView layer];
  [layer setCornerRadius:v16 * 0.5];

  [(UIView *)self->_secondaryView setFrame:v4, v6, v8, v10];
  layer2 = [(UIView *)self->_secondaryView layer];
  [layer2 setCornerRadius:v8 * 0.5];

  [(UIImageView *)self->_imageView setFrame:v30, v29, v28, v27];
  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  if (!CGRectEqualToRect(self->_shadowFrame, v32))
  {
    self->_shadowFrame.origin.x = v4;
    self->_shadowFrame.origin.y = v6;
    self->_shadowFrame.size.width = v8;
    self->_shadowFrame.size.height = v10;
    layer3 = [(PKBillPaymentCircularView *)self layer];
    v26 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v4, v6, v8, v10}];
    [layer3 setShadowPath:{objc_msgSend(v26, "CGPath")}];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = fmin(fits.width, fits.height);
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setImage:(id)image applyColor:(BOOL)color
{
  colorCopy = color;
  imageCopy = image;
  v8 = imageCopy;
  if (self->_image != imageCopy)
  {
    if (colorCopy)
    {
      primaryColor = self->_primaryColor;
      if (!primaryColor)
      {
        primaryColor = self->_secondaryColor;
      }

      v10 = [(UIImage *)imageCopy _flatImageWithColor:primaryColor];
    }

    else
    {
      v10 = imageCopy;
    }

    v11 = v10;
    objc_storeStrong(&self->_image, image);
    [(PKBillPaymentCircularView *)self setNeedsLayout];
    if (self->_image)
    {
      [(UIImageView *)self->_imageView setImage:v11];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PKBillPaymentCircularView_setImage_applyColor___block_invoke;
    v12[3] = &unk_1E8010970;
    v12[4] = self;
    [MEMORY[0x1E69DD250] pkui_animateUsingOptions:0 delay:v12 animations:0 completion:0.0];
  }
}

- (void)_updateColors
{
  primaryView = self->_primaryView;
  primaryColor = self->_primaryColor;
  if (!primaryColor)
  {
    primaryColor = self->_secondaryColor;
  }

  [(UIView *)primaryView setBackgroundColor:primaryColor];
  secondaryView = self->_secondaryView;
  secondaryColor = self->_secondaryColor;

  [(UIView *)secondaryView setBackgroundColor:secondaryColor];
}

- (void)setPrimaryColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    primaryColor = self->_primaryColor;
    self->_primaryColor = v4;

    [(PKBillPaymentCircularView *)self _updateColors];
  }
}

- (void)setSecondaryColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [(PKBillPaymentCircularView *)self _defaultSecondaryColor];
  }

  v7 = colorCopy;
  if ((PKEqualObjects() & 1) == 0)
  {
    v5 = [v7 copy];
    secondaryColor = self->_secondaryColor;
    self->_secondaryColor = v5;

    [(PKBillPaymentCircularView *)self _updateColors];
  }
}

@end