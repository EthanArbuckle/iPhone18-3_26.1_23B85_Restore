@interface PKPaymentTransactionView
- (BOOL)_shouldUseStackedLayout;
- (BOOL)shouldShowTransactionPreviewForTouchAtPoint:(CGPoint)point inView:(id)view;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentTransactionView)initWithFrame:(CGRect)frame;
- (id)_disclosureView;
- (void)_updateAvatarView;
- (void)_updateImageViewDynamicColors;
- (void)_updatePrimaryLabelString;
- (void)createSubviews;
- (void)layoutSubviews;
- (void)resetFonts;
- (void)setAllowPrimaryStringExpansion:(BOOL)expansion;
- (void)setBadgeString:(id)string;
- (void)setHideBadgeBackground:(BOOL)background;
- (void)setHideSecondaryBadgeSymbolBackground:(BOOL)background;
- (void)setPrimaryColor:(id)color;
- (void)setPrimaryImage:(id)image animated:(BOOL)animated;
- (void)setPrimaryString:(id)string;
- (void)setSecondaryBadgeSymbol:(id)symbol;
- (void)setSecondaryBadgeSymbolConfiguration:(id)configuration;
- (void)setSecondaryColor:(id)color;
- (void)setSecondaryString:(id)string;
- (void)setShowsAvatarView:(BOOL)view;
- (void)setShowsDisclosureView:(BOOL)view;
- (void)setStrokeImage:(BOOL)image;
- (void)setTertiaryString:(id)string;
- (void)setTransactionCategoryImage:(id)image;
- (void)setTransactionValueAttributedText:(id)text;
@end

@implementation PKPaymentTransactionView

- (PKPaymentTransactionView)initWithFrame:(CGRect)frame
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKPaymentTransactionView;
  v3 = [(PKPaymentTransactionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPaymentTransactionView *)v3 createSubviews];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v6 = [(PKPaymentTransactionView *)v4 registerForTraitChanges:v5 withHandler:&__block_literal_global_102];
  }

  return v4;
}

void __42__PKPaymentTransactionView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 resetFonts];
  [v2 _updateImageViewDynamicColors];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKPaymentTransactionView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 3.40282347e38];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)createSubviews
{
  if (!self->_primaryLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = self->_secondaryLabel;
    self->_secondaryLabel = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    tertiaryLabel = self->_tertiaryLabel;
    self->_tertiaryLabel = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    transactionValueLabel = self->_transactionValueLabel;
    self->_transactionValueLabel = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    badgeLabel = self->_badgeLabel;
    self->_badgeLabel = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    bonusImageView = self->_bonusImageView;
    self->_bonusImageView = v13;

    v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    transactionCategoryImageView = self->_transactionCategoryImageView;
    self->_transactionCategoryImageView = v15;

    v17 = self->_primaryLabel;
    defaultPrimaryColor = [(PKPaymentTransactionView *)self defaultPrimaryColor];
    [(UILabel *)v17 setTextColor:defaultPrimaryColor];

    v19 = self->_secondaryLabel;
    defaultSecondaryColor = [(PKPaymentTransactionView *)self defaultSecondaryColor];
    [(UILabel *)v19 setTextColor:defaultSecondaryColor];

    v21 = self->_tertiaryLabel;
    defaultSecondaryColor2 = [(PKPaymentTransactionView *)self defaultSecondaryColor];
    [(UILabel *)v21 setTextColor:defaultSecondaryColor2];

    v23 = self->_badgeLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v23 setTextColor:secondaryLabelColor];

    v25 = self->_badgeLabel;
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(UILabel *)v25 setBackgroundColor:quaternarySystemFillColor];

    [(UILabel *)self->_badgeLabel setTextAlignment:1];
    layer = [(UILabel *)self->_badgeLabel layer];
    [layer setCornerRadius:4.0];

    layer2 = [(UILabel *)self->_badgeLabel layer];
    [layer2 setMasksToBounds:1];

    v29 = self->_bonusImageView;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v29 setTintColor:secondaryLabelColor2];

    v31 = self->_bonusImageView;
    quaternarySystemFillColor2 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(UIImageView *)v31 setBackgroundColor:quaternarySystemFillColor2];

    [(UIImageView *)self->_bonusImageView setContentMode:4];
    [(UIImageView *)self->_bonusImageView setHidden:1];
    layer3 = [(UIImageView *)self->_bonusImageView layer];
    [layer3 setCornerRadius:4.0];
    v33 = *MEMORY[0x1E69796E8];
    [layer3 setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer3 setMasksToBounds:1];
    v34 = self->_transactionCategoryImageView;
    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v34 setTintColor:secondaryLabelColor3];

    v36 = self->_transactionCategoryImageView;
    quaternarySystemFillColor3 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(UIImageView *)v36 setBackgroundColor:quaternarySystemFillColor3];

    [(UIImageView *)self->_transactionCategoryImageView setContentMode:4];
    [(UIImageView *)self->_transactionCategoryImageView setHidden:1];
    layer4 = [(UIImageView *)self->_transactionCategoryImageView layer];
    traitCollection = [(PKPaymentTransactionView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v41 = PKMultiplierForContentSizeCategory(preferredContentSizeCategory);

    [layer4 setCornerRadius:v41 * 4.0];
    [layer4 setCornerCurve:v33];
    [layer4 setMasksToBounds:1];
    [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(UILabel *)self->_tertiaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D10]];
    [(UILabel *)self->_transactionValueLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9DC0]];
    [(UILabel *)self->_badgeLabel setAccessibilityIdentifier:*MEMORY[0x1E69B94F0]];
    [(UIImageView *)self->_transactionCategoryImageView setAccessibilityIdentifier:*MEMORY[0x1E69B9D40]];
    [(PKPaymentTransactionView *)self addSubview:self->_primaryLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_secondaryLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_tertiaryLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_transactionValueLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_badgeLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_bonusImageView];
    [(PKPaymentTransactionView *)self addSubview:self->_transactionCategoryImageView];
    [(PKPaymentTransactionView *)self setStrokeImage:1];
    [(PKPaymentTransactionView *)self resetFonts];
    [(PKPaymentTransactionView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9D38]];
  }
}

- (void)resetFonts
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_secondaryLabel setNumberOfLines:v5];
  [(UILabel *)self->_tertiaryLabel setNumberOfLines:v5];
  v6 = PKUIGetMinScreenWidthType();
  primaryLabel = self->_primaryLabel;
  v8 = *MEMORY[0x1E69DDD80];
  v9 = v6 == 0;
  if (v6)
  {
    v10 = *MEMORY[0x1E69DDCF8];
  }

  else
  {
    v10 = *MEMORY[0x1E69DDD80];
  }

  v11 = *MEMORY[0x1E69DDC90];
  if (v9)
  {
    v12 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v12 = *MEMORY[0x1E69DDD80];
  }

  v13 = PKFontForDefaultDesign(v10, *MEMORY[0x1E69DDC90], 32770, 0);
  [(UILabel *)primaryLabel setFont:v13];

  v25 = PKFontForDefaultDesign(v12, v11, 0x8000, 0);
  [(UILabel *)self->_secondaryLabel setFont:v25];
  [(UILabel *)self->_tertiaryLabel setFont:v25];
  transactionValueLabel = self->_transactionValueLabel;
  v15 = PKFontForDefaultDesign(v8, v11, 0, 8);
  [(UILabel *)transactionValueLabel setFont:v15];

  v16 = MEMORY[0x1E69DDD08];
  if (self->_hideBadgeBackground)
  {
    v17 = v25;
  }

  else
  {
    v17 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], v11, 32770, 0);
  }

  v18 = v17;
  [(UILabel *)self->_badgeLabel setFont:v17];
  _shouldUseStackedLayout = [(PKPaymentTransactionView *)self _shouldUseStackedLayout];
  v20 = self->_transactionValueLabel;
  if (_shouldUseStackedLayout)
  {
    [(UILabel *)v20 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_transactionValueLabel setMinimumScaleFactor:0.5];
  }

  else
  {
    [(UILabel *)v20 setAdjustsFontSizeToFitWidth:0];
  }

  if (self->_hideSecondaryBadgeSymbolBackground)
  {
    v21 = [MEMORY[0x1E69DCAD8] configurationWithFont:v25];
  }

  else
  {
    v22 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*v16];
    v23 = MEMORY[0x1E69DCAD8];
    [v22 scaledValueForValue:8.0];
    v21 = [v23 configurationWithPointSize:7 weight:3 scale:?];
  }

  if (self->_secondaryBadgeSymbolConfiguration)
  {
    v24 = [v21 configurationByApplyingConfiguration:?];

    v21 = v24;
  }

  [(UIImageView *)self->_bonusImageView setPreferredSymbolConfiguration:v21];
}

- (BOOL)_shouldUseStackedLayout
{
  traitCollection = [(PKPaymentTransactionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC40]) == NSOrderedDescending;

  return v4;
}

- (void)setPrimaryString:(id)string
{
  v4 = MEMORY[0x1E696AB08];
  stringCopy = string;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @" ";
  }

  v9 = v8;

  v10 = self->_primaryString;
  v11 = v9;
  v14 = v11;
  if (v10 == v11)
  {

    goto LABEL_14;
  }

  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {

LABEL_13:
    objc_storeStrong(&self->_primaryString, v8);
    [(PKPaymentTransactionView *)self _updatePrimaryLabelString];
    [(PKPaymentTransactionView *)self setNeedsLayout];
    goto LABEL_14;
  }

  v13 = [(NSString *)v10 isEqualToString:v11];

  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (void)setAllowPrimaryStringExpansion:(BOOL)expansion
{
  if (self->_allowPrimaryStringExpansion != expansion)
  {
    self->_allowPrimaryStringExpansion = expansion;
    [(PKPaymentTransactionView *)self _updatePrimaryLabelString];

    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (void)_updatePrimaryLabelString
{
  [(UILabel *)self->_primaryLabel setText:self->_primaryString];
  if (!self->_primaryString || (LODWORD(v3) = 1.0, !self->_allowPrimaryStringExpansion))
  {
    v3 = 0.0;
  }

  primaryLabel = self->_primaryLabel;

  [(UILabel *)primaryLabel _setHyphenationFactor:v3];
}

- (void)setPrimaryColor:(id)color
{
  colorCopy = color;
  v10 = colorCopy;
  if (colorCopy)
  {
    v5 = colorCopy;
  }

  else
  {
    v6 = +[PKPaymentTransactionView appearance];
    primaryColor = [v6 primaryColor];
    v8 = primaryColor;
    if (primaryColor)
    {
      defaultPrimaryColor = primaryColor;
    }

    else
    {
      defaultPrimaryColor = [(PKPaymentTransactionView *)self defaultPrimaryColor];
    }

    v5 = defaultPrimaryColor;
  }

  [(UILabel *)self->_primaryLabel setTextColor:v5];
}

- (void)setSecondaryString:(id)string
{
  [(UILabel *)self->_secondaryLabel setText:string];

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (void)setSecondaryColor:(id)color
{
  colorCopy = color;
  v12 = colorCopy;
  if (colorCopy)
  {
    v5 = colorCopy;
  }

  else
  {
    v6 = +[PKPaymentTransactionView appearance];
    secondaryColor = [v6 secondaryColor];
    v8 = secondaryColor;
    if (secondaryColor)
    {
      defaultSecondaryColor = secondaryColor;
    }

    else
    {
      defaultSecondaryColor = [(PKPaymentTransactionView *)self defaultSecondaryColor];
    }

    v5 = defaultSecondaryColor;
  }

  secondaryColor = self->_secondaryColor;
  self->_secondaryColor = v5;
  v11 = v5;

  [(UILabel *)self->_secondaryLabel setTextColor:v11];
}

- (void)setTertiaryString:(id)string
{
  [(UILabel *)self->_tertiaryLabel setText:string];

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (void)setBadgeString:(id)string
{
  badgeLabel = self->_badgeLabel;
  stringCopy = string;
  [(UILabel *)badgeLabel setText:stringCopy];
  v6 = [stringCopy length];

  [(UILabel *)self->_badgeLabel setHidden:v6 == 0];

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (void)setHideBadgeBackground:(BOOL)background
{
  if (self->_hideBadgeBackground != background)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    self->_hideBadgeBackground = background;
    badgeLabel = self->_badgeLabel;
    if (background)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    }
    v11 = ;
    [(UILabel *)badgeLabel setBackgroundColor:v11, v6, v12, v13, v14, v7];

    [(PKPaymentTransactionView *)self resetFonts];

    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (void)setTransactionValueAttributedText:(id)text
{
  [(UILabel *)self->_transactionValueLabel setAttributedText:text];

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (void)setSecondaryBadgeSymbol:(id)symbol
{
  symbolCopy = symbol;
  v6 = self->_secondaryBadgeSymbol;
  v7 = symbolCopy;
  v11 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_secondaryBadgeSymbol, symbol);
    bonusImageView = self->_bonusImageView;
    v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:self->_secondaryBadgeSymbol];
    [(UIImageView *)bonusImageView setImage:v10];

    [(UIImageView *)self->_bonusImageView setHidden:v11 == 0];
    [(PKPaymentTransactionView *)self setNeedsLayout];
    [(PKPaymentTransactionView *)self layoutIfNeeded];
  }

LABEL_9:
}

- (void)setHideSecondaryBadgeSymbolBackground:(BOOL)background
{
  if (self->_hideSecondaryBadgeSymbolBackground != background)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    self->_hideSecondaryBadgeSymbolBackground = background;
    bonusImageView = self->_bonusImageView;
    if (background)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    }
    v11 = ;
    [(UIImageView *)bonusImageView setBackgroundColor:v11, v6, v12, v13, v14, v7];

    [(PKPaymentTransactionView *)self resetFonts];

    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (void)setSecondaryBadgeSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_secondaryBadgeSymbolConfiguration, configuration);
    [(PKPaymentTransactionView *)self resetFonts];
    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (void)setTransactionCategoryImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_transactionCategoryImageView image];

  if (image != imageCopy)
  {
    [(UIImageView *)self->_transactionCategoryImageView setImage:imageCopy];
    [(UIImageView *)self->_transactionCategoryImageView setHidden:imageCopy == 0];
    [(PKPaymentTransactionView *)self setNeedsLayout];
    [(PKPaymentTransactionView *)self layoutIfNeeded];
  }
}

- (void)setStrokeImage:(BOOL)image
{
  if (self->_strokeImage == !image)
  {
    self->_strokeImage = image;
    primaryImageView = self->_primaryImageView;
    if (primaryImageView)
    {
      layer = [(UIImageView *)primaryImageView layer];
      v5 = 0.0;
      if (self->_strokeImage)
      {
        v5 = PKUIPixelLength();
      }

      [layer setBorderWidth:v5];
    }
  }
}

- (void)setPrimaryImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_primaryImage != imageCopy)
  {
    objc_storeStrong(&self->_primaryImage, image);
    if (self->_primaryImage)
    {
      [(PKPaymentTransactionView *)self setShowsAvatarView:0];
      primaryImageView = self->_primaryImageView;
      if (primaryImageView)
      {
        if (animatedCopy)
        {
          v9 = primaryImageView;
          v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_primaryImage];
          v11 = self->_primaryImageView;
          self->_primaryImageView = v10;

          [(UIImageView *)self->_primaryImageView setContentMode:1];
          [(UIImageView *)self->_primaryImageView setClipsToBounds:1];
          [(UIImageView *)self->_primaryImageView _setContinuousCornerRadius:8.0];
          [(PKPaymentTransactionView *)self _updateImageViewDynamicColors];
          layer = [(UIImageView *)self->_primaryImageView layer];
          v13 = 0.0;
          if (self->_strokeImage)
          {
            v13 = PKUIPixelLength();
          }

          [layer setBorderWidth:v13];

          [(UIImageView *)self->_primaryImageView setImage:self->_primaryImage];
          [(UIImageView *)self->_primaryImageView setAlpha:0.0];
          v14 = MEMORY[0x1E69DD250];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __53__PKPaymentTransactionView_setPrimaryImage_animated___block_invoke;
          v28[3] = &unk_1E8010A10;
          v28[4] = self;
          v29 = v9;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __53__PKPaymentTransactionView_setPrimaryImage_animated___block_invoke_2;
          v26[3] = &unk_1E8011D28;
          v27 = v29;
          image = v29;
          [v14 pkui_animateUsingOptions:4 animations:v28 completion:v26];
        }

        else
        {
          image = [(UIImageView *)primaryImageView image];
          [(UIImageView *)self->_primaryImageView setImage:self->_primaryImage];
          image2 = [(UIImageView *)self->_primaryImageView image];

          if (image2 == image)
          {
            [(UIImageView *)self->_primaryImageView removeFromSuperview];
            v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_primaryImage];
            v22 = self->_primaryImageView;
            self->_primaryImageView = v21;

            [(UIImageView *)self->_primaryImageView setContentMode:1];
            [(UIImageView *)self->_primaryImageView setClipsToBounds:1];
            [(UIImageView *)self->_primaryImageView _setContinuousCornerRadius:8.0];
            [(PKPaymentTransactionView *)self _updateImageViewDynamicColors];
            layer2 = [(UIImageView *)self->_primaryImageView layer];
            v24 = 0.0;
            if (self->_strokeImage)
            {
              v24 = PKUIPixelLength();
            }

            [layer2 setBorderWidth:v24];
          }
        }
      }

      else
      {
        v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_primaryImage];
        v18 = self->_primaryImageView;
        self->_primaryImageView = v17;

        [(UIImageView *)self->_primaryImageView setContentMode:1];
        [(UIImageView *)self->_primaryImageView setClipsToBounds:1];
        [(UIImageView *)self->_primaryImageView _setContinuousCornerRadius:8.0];
        [(PKPaymentTransactionView *)self _updateImageViewDynamicColors];
        image = [(UIImageView *)self->_primaryImageView layer];
        v19 = 0.0;
        if (self->_strokeImage)
        {
          v19 = PKUIPixelLength();
        }

        [(UIImageView *)image setBorderWidth:v19];
      }

      superview = [(UIImageView *)self->_primaryImageView superview];

      if (!superview)
      {
        [(PKPaymentTransactionView *)self addSubview:self->_primaryImageView];
        goto LABEL_19;
      }
    }

    else
    {
      superview2 = [(UIImageView *)self->_primaryImageView superview];

      if (superview2)
      {
        [(UIImageView *)self->_primaryImageView removeFromSuperview];
LABEL_19:
        [(PKPaymentTransactionView *)self setNeedsLayout];
        [(PKPaymentTransactionView *)self layoutIfNeeded];
      }
    }
  }
}

uint64_t __53__PKPaymentTransactionView_setPrimaryImage_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

- (void)_updateImageViewDynamicColors
{
  traitCollection = [(PKPaymentTransactionView *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PKPaymentTransactionView__updateImageViewDynamicColors__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  PKUIPerformWithEffectiveTraitCollection(traitCollection, v4);
}

void __57__PKPaymentTransactionView__updateImageViewDynamicColors__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) layer];
  v1 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (void)setShowsAvatarView:(BOOL)view
{
  if (self->_showsAvatarView == !view)
  {
    self->_showsAvatarView = view;
    [(PKPaymentTransactionView *)self _updateAvatarView];
  }
}

- (void)_updateAvatarView
{
  if (self->_showsAvatarView)
  {
    [(PKPaymentTransactionView *)self setPrimaryImage:0];
    if (self->_avatarView)
    {
      return;
    }

    v3 = [objc_alloc(getCNAvatarViewClass_0[0]()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    avatarView = self->_avatarView;
    self->_avatarView = v3;

    [(CNAvatarView *)self->_avatarView setUserInteractionEnabled:0];
    [(CNAvatarView *)self->_avatarView setAsynchronousRendering:1];
    [(CNAvatarView *)self->_avatarView setShowsContactOnTap:0];
    [(PKPaymentTransactionView *)self addSubview:self->_avatarView];
  }

  else
  {
    v5 = self->_avatarView;
    if (!v5)
    {
      return;
    }

    [(CNAvatarView *)v5 removeFromSuperview];
    v6 = self->_avatarView;
    self->_avatarView = 0;
  }

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (BOOL)shouldShowTransactionPreviewForTouchAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  avatarView = self->_avatarView;
  if (avatarView && ([(CNAvatarView *)avatarView isHidden]& 1) == 0)
  {
    [(CNAvatarView *)self->_avatarView convertPoint:viewCopy fromView:x, y];
    v11 = v10;
    v13 = v12;
    [(CNAvatarView *)self->_avatarView bounds];
    v15.x = v11;
    v15.y = v13;
    v9 = !CGRectContainsPoint(v16, v15);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)setShowsDisclosureView:(BOOL)view
{
  if (self->_showsDisclosureView != view)
  {
    self->_showsDisclosureView = view;
    if (view)
    {
      _disclosureView = [(PKPaymentTransactionView *)self _disclosureView];
      superview = [(UIImageView *)self->_disclosureView superview];

      if (superview)
      {
        return;
      }

      [(PKPaymentTransactionView *)self addSubview:self->_disclosureView];
    }

    else
    {
      [(UIImageView *)self->_disclosureView removeFromSuperview];
    }

    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (id)_disclosureView
{
  disclosureView = self->_disclosureView;
  if (!disclosureView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = PKUISmallChevronImage();
    v6 = [v4 initWithImage:v5];

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v6 setTintColor:tertiaryLabelColor];

    [(UIImageView *)v6 setContentMode:1];
    v8 = self->_disclosureView;
    self->_disclosureView = v6;

    disclosureView = self->_disclosureView;
  }

  return disclosureView;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _shouldUseStackedLayout = [(PKPaymentTransactionView *)self _shouldUseStackedLayout];
  _shouldReverseLayoutDirection = [(PKPaymentTransactionView *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v9 = CGRectMaxXEdge;
  }

  else
  {
    v9 = CGRectMinXEdge;
  }

  if (_shouldReverseLayoutDirection)
  {
    v10 = CGRectMinXEdge;
  }

  else
  {
    v10 = CGRectMaxXEdge;
  }

  if (_shouldUseStackedLayout)
  {
    font = [(UILabel *)self->_transactionValueLabel font];
    [font lineHeight];
    [font capHeight];
    [font descender];
    PKFloatRoundToPixel();
    v13 = v12;

    v14 = 16.0;
    v15 = 12.0;
  }

  else
  {
    text = [(UILabel *)self->_primaryLabel text];
    v13 = 0.0;
    v17 = 0.0;
    if ([text length])
    {
      text2 = [(UILabel *)self->_secondaryLabel text];
      if (![text2 length])
      {
        text3 = [(UILabel *)self->_tertiaryLabel text];
        if ([text3 length])
        {
          v17 = 0.0;
        }

        else
        {
          v17 = 9.0;
        }
      }
    }

    v14 = v17 + 16.0;
    v15 = v17 + 12.0;
  }

  text4 = [(UILabel *)self->_badgeLabel text];
  v158 = [text4 length];

  isHidden = [(UIImageView *)self->_bonusImageView isHidden];
  isHidden2 = [(UIImageView *)self->_transactionCategoryImageView isHidden];
  if (isHidden2)
  {
    v21 = *MEMORY[0x1E695F060];
    v148 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    traitCollection = [(PKPaymentTransactionView *)self traitCollection];
    v21 = PKTransactionCategoryImageSizeForTraitCollection(traitCollection);
    v148 = v23;
  }

  memset(&slice, 0, sizeof(slice));
  v24 = v14;
  v25 = y + v14;
  v156 = width;
  v157 = y;
  v26 = width + -32.0;
  v149 = v24;
  v150 = v15;
  v27 = height - (v15 + v24);
  remainder.origin.x = x + 16.0;
  remainder.origin.y = v25;
  remainder.size.width = v26;
  remainder.size.height = v27;
  v151 = x;
  if (!_shouldUseStackedLayout)
  {
    text5 = [(UILabel *)self->_tertiaryLabel text];
    v34 = [text5 length];

    if (v34)
    {
      PKContentAlignmentMake();
    }

    if (!self->_allowPrimaryStringExpansion)
    {
      goto LABEL_36;
    }

    p_primaryLabel = &self->_primaryLabel;
    text6 = [(UILabel *)self->_primaryLabel text];
    if (!text6)
    {
      goto LABEL_36;
    }

    v37 = text6;
    text7 = [(UILabel *)self->_secondaryLabel text];
    if (text7)
    {
      v39 = text7;
      text8 = [(UILabel *)self->_tertiaryLabel text];

      if (text8)
      {
LABEL_36:
        p_primaryLabel = &self->_primaryLabel;
        v41 = 1;
LABEL_37:
        [(UILabel *)*p_primaryLabel setNumberOfLines:v41];
        v152 = *(MEMORY[0x1E695F058] + 16);
        v154 = *MEMORY[0x1E695F058];
        v167.origin = *MEMORY[0x1E695F058];
        v167.size = v152;
        if (self->_avatarView || self->_primaryImage && self->_primaryImageView)
        {
          v172.origin.x = x + 16.0;
          v172.origin.y = v25;
          v172.size.width = v26;
          v172.size.height = v27;
          CGRectDivide(v172, &v167, &remainder, 38.0, v9);
          CGRectDivide(remainder, &slice, &remainder, 13.0, v9);
          v26 = remainder.size.width;
          v27 = remainder.size.height;
        }

        v166.origin = v154;
        v166.size = v152;
        [(UIImageView *)self->_disclosureView sizeThatFits:v26, v27];
        CGRectDivide(remainder, &v166, &remainder, v42, v10);
        CGRectDivide(remainder, &slice, &remainder, 8.0, v10);
        [(UILabel *)self->_transactionValueLabel sizeThatFits:remainder.size.width, remainder.size.height];
        v45 = v44;
        v47 = v46;
        if (v158)
        {
          [(UILabel *)self->_badgeLabel sizeThatFits:remainder.size.width, remainder.size.height];
          v43 = v48 + 10.0;
          if (self->_hideBadgeBackground)
          {
            v50 = v49;
          }

          else
          {
            v50 = 18.0;
          }

          if (self->_hideBadgeBackground)
          {
            v51 = v48;
          }

          else
          {
            v51 = v48 + 10.0;
          }
        }

        else
        {
          v51 = *MEMORY[0x1E695F060];
          v50 = *(MEMORY[0x1E695F060] + 8);
        }

        if (isHidden)
        {
          v52 = *MEMORY[0x1E695F060];
          v53 = *(MEMORY[0x1E695F060] + 8);
        }

        else
        {
          [(UIImageView *)self->_bonusImageView sizeThatFits:remainder.size.width, remainder.size.height, v43];
        }

        v54 = 18.0;
        if (v50 != 0.0)
        {
          v54 = v50;
        }

        v142 = v52 + 6.0;
        if (!isHidden)
        {
          v53 = v54;
        }

        v144 = v53;
        if (!isHidden)
        {
          v52 = v52 + 6.0;
        }

        v143 = v51;
        v55 = fmax(v45, v21 + v51 + v52 + 6.0);
        v56 = remainder.size.width - v55 + -10.0;
        v165.origin = v154;
        v165.size = v152;
        CGRectDivide(remainder, &v165, &remainder, v55, v10);
        rect.origin = v154;
        rect.size = v152;
        CGRectDivide(remainder, &rect, &remainder, v56, v9);
        [(UILabel *)self->_primaryLabel sizeThatFits:rect.size.width, rect.size.height];
        v58 = v57;
        [(UILabel *)self->_secondaryLabel sizeThatFits:rect.size.width, rect.size.height];
        v60 = v59;
        text9 = [(UILabel *)self->_tertiaryLabel text];
        v146 = v21;
        if ([text9 length])
        {
          [(UILabel *)self->_tertiaryLabel sizeThatFits:rect.size.width, rect.size.height];
          v63 = v62;
        }

        else
        {
          v63 = *(MEMORY[0x1E695F060] + 8);
        }

        v64 = fmax(v58, 0.0);
        v65 = -0.0;
        if (v60 > 0.0)
        {
          v65 = v60;
        }

        v66 = v64 + v65;
        if (v63 > 0.0)
        {
          v66 = v66 + v63;
        }

        v67 = fmax(v66, v47 + fmax(v50, v148));
        rect.size.height = v67;
        v68 = v67;
        if (!self->_isTemplateLayout)
        {
          font2 = [(UILabel *)self->_transactionValueLabel font];
          [font2 lineHeight];
          v71 = v70;

          if (self->_showsDisclosureView)
          {
            memset(&v163, 0, sizeof(v163));
            CGRectDivide(v166, &v166, &v163, v71, CGRectMinYEdge);
            disclosureView = self->_disclosureView;
            PKContentAlignmentMake();
            PKSizeAlignedInRect();
            [(UIImageView *)disclosureView setFrame:?];
          }

          CGRectDivide(v165, &slice, &v165, v71, CGRectMinYEdge);
          transactionValueLabel = self->_transactionValueLabel;
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          [(UILabel *)transactionValueLabel setFrame:?];
          CGRectDivide(v165, &slice, &v165, 2.0, CGRectMinYEdge);
          v163.origin = v154;
          v163.size = v152;
          CGRectDivide(v165, &v163, &v165, fmax(fmax(v50, v144), v148), CGRectMinYEdge);
          if (v158)
          {
            CGRectDivide(v163, &slice, &v163, v143, v10);
            badgeLabel = self->_badgeLabel;
            PKContentAlignmentMake();
            PKSizeAlignedInRect();
            [(UILabel *)badgeLabel setFrame:?];
            CGRectDivide(v163, &slice, &v163, 6.0, v10);
          }

          if ((isHidden & 1) == 0)
          {
            CGRectDivide(v163, &slice, &v163, v142, v10);
            bonusImageView = self->_bonusImageView;
            PKContentAlignmentMake();
            PKSizeAlignedInRect();
            [(UIImageView *)bonusImageView setFrame:?];
            CGRectDivide(v163, &slice, &v163, 6.0, v10);
          }

          if ((isHidden2 & 1) == 0)
          {
            CGRectDivide(v163, &slice, &v163, v146, v10);
            transactionCategoryImageView = self->_transactionCategoryImageView;
            PKContentAlignmentMake();
            PKSizeAlignedInRect();
            [(UIImageView *)transactionCategoryImageView setFrame:?];
          }

          v68 = rect.size.height;
        }

        memset(&v163, 0, sizeof(v163));
        v77 = rect.origin.y;
        v78 = rect.origin.x;
        v79 = rect.size.width;
        CGRectDivide(*(&v68 - 3), &v163, &rect, v58, CGRectMinYEdge);
        if (!self->_isTemplateLayout)
        {
          primaryLabel = self->_primaryLabel;
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          [(UILabel *)primaryLabel setFrame:?];
        }

        memset(&v162, 0, sizeof(v162));
        CGRectDivide(rect, &v162, &rect, v60, CGRectMinYEdge);
        if (!self->_isTemplateLayout)
        {
          secondaryLabel = self->_secondaryLabel;
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          [(UILabel *)secondaryLabel setFrame:?];
        }

        memset(&v161, 0, sizeof(v161));
        CGRectDivide(rect, &v161, &rect, v63, CGRectMinYEdge);
        v82 = v157;
        if (!self->_isTemplateLayout)
        {
          tertiaryLabel = self->_tertiaryLabel;
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          [(UILabel *)tertiaryLabel setFrame:?];
        }

        v167.size.height = v67;
        avatarView = self->_avatarView;
        v85 = v156;
        if (avatarView)
        {
          v86 = v150;
          if (self->_isTemplateLayout)
          {
LABEL_88:
            v87 = v149 + v67;
            v88 = height;
            goto LABEL_149;
          }
        }

        else
        {
          v86 = v150;
          if (!self->_primaryImage)
          {
            goto LABEL_88;
          }

          avatarView = self->_primaryImageView;
          if (!avatarView || self->_isTemplateLayout)
          {
            goto LABEL_88;
          }
        }

        PKSizeAlignedInRect();
        [avatarView setFrame:?];
        goto LABEL_88;
      }
    }

    else
    {
    }

    v41 = 2;
    goto LABEL_37;
  }

  PKContentAlignmentMake();
  [(UILabel *)self->_primaryLabel setNumberOfLines:2];
  text10 = [(UILabel *)self->_transactionValueLabel text];
  v29 = [text10 length];

  if (self->_showsDisclosureView)
  {
    v171.origin.x = x + 16.0;
    v171.origin.y = v25;
    v171.size.width = v26;
    v171.size.height = v27;
    CGRectDivide(v171, &slice, &remainder, 25.0, v10);
    if (!self->_isTemplateLayout)
    {
      v30 = self->_disclosureView;
      PKSizeAlignedInRect();
      [(UIImageView *)v30 setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, 8.0, v10);
  }

  if (self->_primaryImage && self->_primaryImageView || self->_avatarView)
  {
    v145 = v21;
    if (v29)
    {
      [(UILabel *)self->_transactionValueLabel sizeThatFits:remainder.size.width, remainder.size.height];
      v32 = v31;
    }

    else
    {
      v32 = *MEMORY[0x1E695F060];
    }

    font3 = [(UILabel *)self->_transactionValueLabel font];
    [font3 lineHeight];
    v91 = v90;

    memset(&v167, 0, sizeof(v167));
    CGRectDivide(remainder, &v167, &remainder, v91, CGRectMinYEdge);
    if (self->_avatarView)
    {
      memset(&v166, 0, sizeof(v166));
      CGRectDivide(v167, &v166, &v167, v91 - v13, v9);
      if (!self->_isTemplateLayout)
      {
        [(CNAvatarView *)self->_avatarView setHidden:0];
        primaryImageView = self->_avatarView;
LABEL_93:
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        [primaryImageView setFrame:?];
      }
    }

    else
    {
      if (!self->_primaryImage || !self->_primaryImageView)
      {
        goto LABEL_95;
      }

      memset(&v166, 0, sizeof(v166));
      CGRectDivide(v167, &v166, &v167, v91 - v13, v9);
      if (!self->_isTemplateLayout)
      {
        [(UIImageView *)self->_primaryImageView setHidden:0];
        primaryImageView = self->_primaryImageView;
        goto LABEL_93;
      }
    }

    CGRectDivide(v167, &v166, &v167, 13.0, v9);
LABEL_95:
    v153 = *(MEMORY[0x1E695F058] + 16);
    v155 = *MEMORY[0x1E695F058];
    v166.origin = *MEMORY[0x1E695F058];
    v166.size = v153;
    CGRectDivide(v167, &v166, &v167, fmin(v32, v167.size.width), v9);
    if (!self->_isTemplateLayout)
    {
      v93 = self->_transactionValueLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)v93 setFrame:?];
    }

    v165 = v167;
    rect.origin = v155;
    rect.size = v153;
    v94 = *MEMORY[0x1E695F060];
    v95 = *MEMORY[0x1E695F060];
    if (v158)
    {
      [(UILabel *)self->_badgeLabel sizeThatFits:v167.size.width, v167.size.height];
      v95 = v96;
    }

    if ((isHidden & 1) == 0)
    {
      [(UIImageView *)self->_bonusImageView sizeThatFits:v167.size.width, v167.size.height];
      v94 = v97;
    }

    v98 = v149 + v91;
    v99 = v145 + v95 + v94 + 6.0;
    if (v99 <= v167.size.width)
    {
      CGRectDivide(v165, &v165, &rect, v145 + v95 + v94 + 6.0, v10);
    }

    else
    {
      CGRectDivide(remainder, &slice, &remainder, 5.0, CGRectMinYEdge);
      CGRectDivide(remainder, &v165, &remainder, v91, CGRectMinYEdge);
      CGRectDivide(v165, &v165, &rect, v99, v9);
      v98 = v98 + v91 + 5.0;
    }

    if (v158)
    {
      CGRectDivide(v165, &rect, &v165, v95 + 6.0, v10);
      if (!self->_isTemplateLayout)
      {
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        rect.origin.x = v100;
        rect.origin.y = v101;
        rect.size.width = v102;
        rect.size.height = v103;
        [(UILabel *)self->_badgeLabel setFrame:?];
      }
    }

    v104 = v98;
    if ((isHidden & 1) == 0)
    {
      memset(&v163, 0, sizeof(v163));
      CGRectIsEmpty(rect);
      CGRectDivide(v165, &v163, &v165, v94, v10);
      if (!self->_isTemplateLayout)
      {
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        v163.origin.x = v105;
        v163.origin.y = v106;
        v163.size.width = v107;
        v163.size.height = v108;
        [(UIImageView *)self->_bonusImageView setFrame:?];
      }
    }

    if ((isHidden2 & 1) == 0)
    {
      memset(&v163, 0, sizeof(v163));
      CGRectDivide(v165, &v163, &v165, v145, v10);
      if (!self->_isTemplateLayout)
      {
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        v163.origin.x = v109;
        v163.origin.y = v110;
        v163.size.width = v111;
        v163.size.height = v112;
        [(UIImageView *)self->_transactionCategoryImageView setFrame:?];
      }
    }

    v113 = 1;
    goto LABEL_119;
  }

  v113 = 0;
  v104 = v149;
LABEL_119:
  v114 = remainder.size.width;
  [(UILabel *)self->_primaryLabel sizeThatFits:remainder.size.width, 3.40282347e38];
  v116 = v115;
  [(UILabel *)self->_secondaryLabel sizeThatFits:v114, 3.40282347e38];
  v118 = v117;
  [(UILabel *)self->_tertiaryLabel sizeThatFits:v114, 3.40282347e38];
  v120 = v119;
  if (!self->_isTemplateLayout)
  {
    v121 = self->_primaryLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)v121 setFrame:?];
  }

  v87 = v104 + v116;
  if (v118 > 0.0)
  {
    v122 = v87 + 2.0;
    if (!self->_isTemplateLayout)
    {
      v123 = self->_secondaryLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)v123 setFrame:?];
    }

    v87 = v122 + v118;
  }

  v88 = height;
  v82 = v157;
  if (v120 > 0.0)
  {
    v124 = v87 + 2.0;
    if (!self->_isTemplateLayout)
    {
      v125 = self->_tertiaryLabel;
      PKContentAlignmentMake();
      v82 = v157;
      PKSizeAlignedInRect();
      [(UILabel *)v125 setFrame:?];
    }

    v87 = v120 + v124;
  }

  v85 = v156;
  if ((v113 & 1) == 0)
  {
    if (v29)
    {
      v126 = v87 + 2.0;
      [(UILabel *)self->_transactionValueLabel sizeThatFits:v114, 3.40282347e38];
      v128 = v127;
      if (!self->_isTemplateLayout)
      {
        v129 = self->_transactionValueLabel;
        PKContentAlignmentMake();
        v82 = v157;
        PKSizeAlignedInRect();
        [(UILabel *)v129 setFrame:?];
      }

      v87 = v126 + v128;
    }

    if ((isHidden2 & 1) == 0)
    {
      v130 = v87 + 2.0;
      [(UIImageView *)self->_transactionCategoryImageView sizeThatFits:v114, 3.40282347e38];
      v132 = v131;
      if (!self->_isTemplateLayout)
      {
        v133 = self->_transactionCategoryImageView;
        PKContentAlignmentMake();
        v82 = v157;
        PKSizeAlignedInRect();
        [(UIImageView *)v133 setFrame:?];
      }

      v87 = v130 + v132;
    }

    if (v158)
    {
      v134 = v87 + 2.0;
      [(UILabel *)self->_badgeLabel sizeThatFits:v114, 3.40282347e38];
      v136 = v135;
      if (!self->_isTemplateLayout)
      {
        if (isHidden)
        {
          v137 = self->_badgeLabel;
          PKContentAlignmentMake();
        }

        else
        {
          [(UIImageView *)self->_bonusImageView sizeThatFits:v114, 3.40282347e38];
          v138 = self->_bonusImageView;
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          [(UIImageView *)v138 setFrame:?];
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          v137 = self->_badgeLabel;
          PKContentAlignmentMake();
          v82 = v157;
        }

        PKSizeAlignedInRect();
        [(UILabel *)v137 setFrame:?];
      }

      v87 = v134 + v136;
    }

    v85 = v156;
  }

  v86 = v150;
LABEL_149:
  v139 = v86 + v87;
  v173.origin.x = v151;
  v173.origin.y = v82;
  v173.size.width = v85;
  v173.size.height = v88;
  v140 = CGRectGetWidth(v173);
  v141 = v139;
  result.height = v141;
  result.width = v140;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaymentTransactionView;
  [(PKPaymentTransactionView *)&v3 layoutSubviews];
  [(PKPaymentTransactionView *)self bounds];
  [(PKPaymentTransactionView *)self _layoutWithBounds:?];
}

@end