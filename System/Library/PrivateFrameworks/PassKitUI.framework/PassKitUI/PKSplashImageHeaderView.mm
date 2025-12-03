@interface PKSplashImageHeaderView
- (CGRect)topLabelWithRespectTo:(id)to;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKSplashImageHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)refreshFonts;
- (void)setAttributionProviderName:(id)name;
- (void)setBackgroundImage:(id)image animated:(BOOL)animated;
- (void)setFallbackColor:(id)color;
- (void)setHidesIconImage:(BOOL)image;
- (void)setIconImage:(id)image;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)setShowsGradientOverlay:(BOOL)overlay;
@end

@implementation PKSplashImageHeaderView

- (PKSplashImageHeaderView)initWithFrame:(CGRect)frame
{
  v46[4] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = PKSplashImageHeaderView;
  v3 = [(PKSplashImageHeaderView *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    fallbackColorView = v3->_fallbackColorView;
    v3->_fallbackColorView = v4;

    [(PKSplashImageHeaderView *)v3 addSubview:v3->_fallbackColorView];
    _shouldReverseLayoutDirection = [(PKSplashImageHeaderView *)v3 _shouldReverseLayoutDirection];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    backgroundImageView = v3->_backgroundImageView;
    v3->_backgroundImageView = v6;

    v8 = v3->_backgroundImageView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v8 setBackgroundColor:clearColor];

    [(UIImageView *)v3->_backgroundImageView setContentMode:2];
    [(UIImageView *)v3->_backgroundImageView setClipsToBounds:1];
    layer = [(UIImageView *)v3->_backgroundImageView layer];
    [layer setOpacity:0.0];

    [(PKSplashImageHeaderView *)v3 addSubview:v3->_backgroundImageView];
    layer2 = [MEMORY[0x1E6979380] layer];
    gradientLayer = v3->_gradientLayer;
    v3->_gradientLayer = layer2;

    v13 = v3->_gradientLayer;
    v14 = PKLayerNullActions();
    [(CAGradientLayer *)v13 setActions:v14];

    [(CAGradientLayer *)v3->_gradientLayer setHidden:1];
    [(CAGradientLayer *)v3->_gradientLayer setType:*MEMORY[0x1E6979DA0]];
    v15 = v3->_gradientLayer;
    v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    v46[0] = [v16 CGColor];
    v17 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.05];
    v46[1] = [v17 CGColor];
    v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
    v46[2] = [v18 CGColor];
    v19 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.8];
    v46[3] = [v19 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    [(CAGradientLayer *)v15 setColors:v20];

    [(CAGradientLayer *)v3->_gradientLayer setLocations:&unk_1F3CC87C8];
    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer3 = [v21 layer];
    [layer3 addSublayer:v3->_gradientLayer];

    [(PKSplashImageHeaderView *)v3 addSubview:v21];
    v23 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v23;

    v25 = v3->_iconImageView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v25 setBackgroundColor:whiteColor];

    [(UIImageView *)v3->_iconImageView _setContinuousCornerRadius:8.0];
    [(UIImageView *)v3->_iconImageView setClipsToBounds:1];
    [(UIImageView *)v3->_iconImageView setContentMode:1];
    [(PKSplashImageHeaderView *)v3 addSubview:v3->_iconImageView];
    v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v3->_primaryLabel;
    v3->_primaryLabel = v27;

    v29 = v3->_primaryLabel;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v29 setTextColor:whiteColor2];

    if (_shouldReverseLayoutDirection)
    {
      v31 = 0;
    }

    else
    {
      v31 = 2;
    }

    [(UILabel *)v3->_primaryLabel setTextAlignment:v31];
    [(UILabel *)v3->_primaryLabel setNumberOfLines:2];
    [(UILabel *)v3->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKSplashImageHeaderView *)v3 addSubview:v3->_primaryLabel];
    v32 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v3->_secondaryLabel;
    v3->_secondaryLabel = v32;

    [(UILabel *)v3->_secondaryLabel setTextAlignment:v31];
    [(UILabel *)v3->_secondaryLabel setNumberOfLines:1];
    v34 = v3->_secondaryLabel;
    whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v34 setTextColor:whiteColor3];

    [(UILabel *)v3->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKSplashImageHeaderView *)v3 addSubview:v3->_secondaryLabel];
    v36 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    attributionLabel = v3->_attributionLabel;
    v3->_attributionLabel = v36;

    [(UILabel *)v3->_attributionLabel setNumberOfLines:1];
    [(UILabel *)v3->_attributionLabel setTextAlignment:1];
    v38 = v3->_attributionLabel;
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UILabel *)v38 setTextColor:systemGrayColor];

    [(UILabel *)v3->_attributionLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    [(PKSplashImageHeaderView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
    [(PKSplashImageHeaderView *)v3 refreshFonts];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    v41 = [(PKSplashImageHeaderView *)v3 registerForTraitChanges:v40 withHandler:&__block_literal_global_263];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  PKFloatRoundToPixel();
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v61.receiver = self;
  v61.super_class = PKSplashImageHeaderView;
  [(PKSplashImageHeaderView *)&v61 layoutSubviews];
  [(PKSplashImageHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&slice[1], 0, 32);
  [(UIView *)self->_fallbackColorView setFrame:v3];
  [(UIImageView *)self->_backgroundImageView setFrame:v4, v6, v8, v10];
  gradientLayer = self->_gradientLayer;
  [(UIImageView *)self->_backgroundImageView bounds];
  [(CAGradientLayer *)gradientLayer setFrame:?];
  if ([(PKSplashImageHeaderView *)self _shouldReverseLayoutDirection])
  {
    v13 = CGRectMaxXEdge;
  }

  else
  {
    v13 = CGRectMinXEdge;
  }

  remainder.origin.x = v4 + 16.0;
  remainder.origin.y = v6 + 0.0;
  remainder.size.width = v8 + -32.0;
  remainder.size.height = v10 + -16.0;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  if (!self->_hidesIconImage)
  {
    [(UIImageView *)self->_iconImageView setFrame:v14, v15, v16, v17];
    CGRectDivide(remainder, &slice[1], &remainder, 89.0, v13);
  }

  *slice = v18;
  superview = [(UILabel *)self->_attributionLabel superview];

  [(UILabel *)self->_primaryLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v24 = v23;
  font = [(UILabel *)self->_primaryLabel font];
  [font lineHeight];
  v27 = v26;

  if (superview)
  {
    v55 = v19;
    v56 = v20;
    rect = v21;
    v58 = v24;
    v28 = v24;
    v29 = ceilf(v28);
    v30 = v27;
    v31 = ceilf(v30);
    [(UILabel *)self->_attributionLabel sizeThatFits:remainder.size.width, remainder.size.height];
    v33 = v32;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    font2 = [(UILabel *)self->_secondaryLabel font];
    [font2 descender];
    v44 = v43;

    [(UILabel *)self->_attributionLabel setFrame:v35, v37 - v44, v39, v41];
    CGRectDivide(remainder, &slice[1], &remainder, v33 + v44, CGRectMaxYEdge);
    if (v29 <= v31)
    {
      *&v64.origin.x = slice[0];
      v64.origin.y = v55;
      v64.size.width = v56;
      v64.size.height = rect;
      MinY = CGRectGetMinY(v64);
      CGRectDivide(remainder, &slice[1], &remainder, MinY, CGRectMinYEdge);
      [(UILabel *)self->_secondaryLabel sizeThatFits:remainder.size.width, remainder.size.height];
      v53 = v52;
      secondaryLabel = self->_secondaryLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)secondaryLabel setFrame:?];
      CGRectDivide(remainder, &slice[1], &remainder, v53, CGRectMinYEdge);
      primaryLabel = self->_primaryLabel;
    }

    else
    {
      v45 = self->_primaryLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)v45 setFrame:?];
      CGRectDivide(remainder, &slice[1], &remainder, v58, CGRectMaxYEdge);
      [(UILabel *)self->_secondaryLabel sizeThatFits:remainder.size.width, remainder.size.height];
      primaryLabel = self->_secondaryLabel;
    }

    PKContentAlignmentMake();
  }

  else
  {
    [(UILabel *)self->_secondaryLabel sizeThatFits:remainder.size.width, remainder.size.height];
    v48 = v47;
    v62.origin.x = v18;
    v62.origin.y = v19;
    v62.size.width = v20;
    v62.size.height = v21;
    CGRectGetMinY(v62);
    v63.origin.y = v19;
    v63.origin.x = v18;
    v63.size.width = v20;
    v63.size.height = v21;
    CGRectGetHeight(v63);
    PKFloatRoundToPixel();
    CGRectDivide(remainder, &slice[1], &remainder, v49, CGRectMinYEdge);
    v50 = self->_secondaryLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)v50 setFrame:?];
    CGRectDivide(remainder, &slice[1], &remainder, v48, CGRectMinYEdge);
    primaryLabel = self->_primaryLabel;
    PKContentAlignmentMake();
  }

  PKSizeAlignedInRect();
  [(UILabel *)primaryLabel setFrame:?];
}

- (CGRect)topLabelWithRespectTo:(id)to
{
  v5 = self->_primaryLabel;
  primaryLabel = self->_primaryLabel;
  toCopy = to;
  [(UILabel *)primaryLabel frame];
  v9 = v8;
  [(UILabel *)self->_secondaryLabel frame];
  if (v10 < v9)
  {
    v11 = self->_secondaryLabel;

    [(UILabel *)self->_secondaryLabel frame];
    v9 = v12;
    v5 = v11;
  }

  superview = [(UILabel *)self->_attributionLabel superview];
  if (superview)
  {
    v14 = superview;
    [(UILabel *)self->_attributionLabel frame];
    v16 = v15;

    if (v16 < v9)
    {
      v17 = self->_attributionLabel;

      [(UILabel *)self->_attributionLabel frame];
      v9 = v18;
      v5 = v17;
    }
  }

  if (!self->_hidesIconImage)
  {
    [(UIImageView *)self->_iconImageView frame];
    if (v19 < v9)
    {
      v20 = self->_iconImageView;

      [(UIImageView *)self->_iconImageView frame];
      v5 = v20;
    }
  }

  [(UILabel *)v5 frame];
  [(PKSplashImageHeaderView *)self convertRect:toCopy toView:?];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  v5 = self->_primaryText;
  v6 = textCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    primaryText = self->_primaryText;
    self->_primaryText = v8;

    [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    [(PKSplashImageHeaderView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  v5 = self->_secondaryText;
  v6 = textCopy;
  v12 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v12 copy];
    secondaryText = self->_secondaryText;
    self->_secondaryText = v8;

    secondaryLabel = self->_secondaryLabel;
    pk_uppercaseStringForPreferredLocale = [(NSString *)self->_secondaryText pk_uppercaseStringForPreferredLocale];
    [(UILabel *)secondaryLabel setText:pk_uppercaseStringForPreferredLocale];

    [(PKSplashImageHeaderView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  if (self->_iconImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_iconImage, image);
    [(UIImageView *)self->_iconImageView setImage:self->_iconImage];
    imageCopy = v6;
  }
}

- (void)setBackgroundImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_backgroundImage != imageCopy)
  {
    v13 = imageCopy;
    objc_storeStrong(&self->_backgroundImage, image);
    [(UIImageView *)self->_backgroundImageView setImage:v13];
    layer = [(UIImageView *)self->_backgroundImageView layer];
    [layer opacity];
    if (animatedCopy && *&v9 != 1.0)
    {
      v10 = *&v9;
      v11 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v11 pkui_updateForAdditiveAnimationFromScalar:v10 toScalar:1.0];
      v12 = [layer pkui_addAdditiveAnimation:v11];
    }

    LODWORD(v9) = 1.0;
    [layer setOpacity:v9];

    imageCopy = v13;
  }
}

- (void)setFallbackColor:(id)color
{
  colorCopy = color;
  if (self->_fallbackColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_fallbackColor, color);
    [(UIView *)self->_fallbackColorView setBackgroundColor:v6];
    colorCopy = v6;
  }
}

- (void)setShowsGradientOverlay:(BOOL)overlay
{
  if (self->_showsGradientOverlay == !overlay)
  {
    self->_showsGradientOverlay = overlay;
    [(CAGradientLayer *)self->_gradientLayer setHidden:?];
  }
}

- (void)setHidesIconImage:(BOOL)image
{
  if (self->_hidesIconImage == !image)
  {
    self->_hidesIconImage = image;
    [(UIImageView *)self->_iconImageView setHidden:?];

    [(PKSplashImageHeaderView *)self setNeedsLayout];
  }
}

- (void)setAttributionProviderName:(id)name
{
  nameCopy = name;
  attributionProviderName = self->_attributionProviderName;
  v11 = nameCopy;
  v6 = attributionProviderName;
  if (v6 == v11)
  {

LABEL_13:
    v8 = v11;
    goto LABEL_14;
  }

  if (!v11 || !v6)
  {

    if (!v11)
    {
      [(UILabel *)self->_attributionLabel removeFromSuperview];
LABEL_12:
      [(PKSplashImageHeaderView *)self setNeedsLayout];
      goto LABEL_13;
    }

LABEL_8:
    superview = [(UILabel *)self->_attributionLabel superview];

    if (!superview)
    {
      [(PKSplashImageHeaderView *)self addSubview:self->_attributionLabel];
    }

    v10 = PKLocalizedFeatureString();
    [(UILabel *)self->_attributionLabel setText:v10, v11];

    goto LABEL_12;
  }

  v7 = [(NSString *)v11 isEqualToString:v6];

  v8 = v11;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_14:
}

- (void)refreshFonts
{
  primaryLabel = self->_primaryLabel;
  v4 = *MEMORY[0x1E69DDC58];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC58], 32770, 0);
  [(UILabel *)primaryLabel setFont:v5];

  secondaryLabel = self->_secondaryLabel;
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], v4, 2, 0);
  [(UILabel *)secondaryLabel setFont:v7];

  attributionLabel = self->_attributionLabel;
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC70]);
  [(UILabel *)attributionLabel setFont:v9];

  [(PKSplashImageHeaderView *)self setNeedsLayout];
}

@end