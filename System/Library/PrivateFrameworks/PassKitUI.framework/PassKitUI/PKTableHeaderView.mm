@interface PKTableHeaderView
- (BOOL)_hasAccessibilityLargeText;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)_layoutWithBounds:(CGRect)bounds imageHeightAdjustment:(double)adjustment;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKTableHeaderView)initWithFrame:(CGRect)frame;
- (UIColor)subtitleTextColor;
- (UIColor)titleTextColor;
- (UIFont)subtitleFont;
- (UIFont)titleFont;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (void)_updateAccessoryViews;
- (void)_updateFonts;
- (void)_updateImageView;
- (void)configureActionButton;
- (void)layoutSubviews;
- (void)setAccessoryViewsDisabled:(BOOL)disabled;
- (void)setActionButtonAction:(id)action;
- (void)setActionButtonUsesLearnMoreStyle:(BOOL)style;
- (void)setActionTitle:(id)title;
- (void)setAlignment:(int64_t)alignment;
- (void)setButtonsEnabled:(BOOL)enabled;
- (void)setImageView:(id)view;
- (void)setImageViewImage:(id)image withSize:(CGSize)size animated:(BOOL)animated;
- (void)setPassSnapshot:(id)snapshot withSize:(CGSize)size animated:(BOOL)animated needsCorners:(BOOL)corners;
- (void)setStyle:(unint64_t)style;
- (void)setSubtitleFont:(id)font;
- (void)setSubtitleTextColor:(id)color;
- (void)setTitleFont:(id)font;
- (void)setTitleTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKTableHeaderView

- (PKTableHeaderView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PKTableHeaderView;
  v3 = [(PKTableHeaderView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_maximumHeight = 1.79769313e308;
    [(PKTableHeaderView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
    v4->_alignment = 1;
    v4->_buttonsEnabled = 1;
    v5 = PKUIGetMinScreenWidthType();
    v6 = 30.0;
    if (!v5)
    {
      v6 = 20.0;
    }

    v4->_bottomPadding = v6;
  }

  return v4;
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style == style)
  {
    return;
  }

  self->_style = style;
  if (style > 1)
  {
    if (style != 2)
    {
      if (style != 3)
      {
        return;
      }

      v6 = PKOBKHeaderTitleFont();
      [(PKTableHeaderView *)self setTitleFont:v6];

      v7 = PKOBKHeaderTitleTextColor();
      [(PKTableHeaderView *)self setTitleTextColor:v7];

      v8 = PKOBKHeaderSubtitleFont();
      [(PKTableHeaderView *)self setSubtitleFont:v8];

      v9 = PKOBKHeaderSubtitleTextColor();
      [(PKTableHeaderView *)self setSubtitleTextColor:v9];

      v10 = PKOBKTextAlignment();
      goto LABEL_13;
    }
  }

  else if (style)
  {
    if (style != 1)
    {
      return;
    }

    v4 = PKUIGetMinScreenWidthType();
    v5 = 52.0;
    if (v4 > 0xC)
    {
      v5 = 121.0;
    }

    self->_topPadding = v5;
  }

  [(PKTableHeaderView *)self setTitleFont:0];
  [(PKTableHeaderView *)self setTitleTextColor:0];
  [(PKTableHeaderView *)self setSubtitleFont:0];
  [(PKTableHeaderView *)self setSubtitleTextColor:0];
  v10 = 1;
LABEL_13:

  [(PKTableHeaderView *)self setAlignment:v10];
}

- (void)setActionTitle:(id)title
{
  titleCopy = title;
  v6 = self->_actionTitle;
  v7 = titleCopy;
  v9 = v7;
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
    objc_storeStrong(&self->_actionTitle, title);
    [(PKTableHeaderView *)self configureActionButton];
  }

LABEL_9:
}

- (void)setActionButtonAction:(id)action
{
  objc_storeStrong(&self->_actionButtonAction, action);

  [(PKTableHeaderView *)self configureActionButton];
}

- (void)setActionButtonUsesLearnMoreStyle:(BOOL)style
{
  if (self->_actionButtonUsesLearnMoreStyle != style)
  {
    self->_actionButtonUsesLearnMoreStyle = style;
    [(PKTableHeaderView *)self configureActionButton];
  }
}

- (void)setButtonsEnabled:(BOOL)enabled
{
  if (self->_buttonsEnabled == !enabled)
  {
    self->_buttonsEnabled = enabled;
    [(UIButton *)self->_actionButton setEnabled:?];
  }
}

- (void)configureActionButton
{
  actionButton = self->_actionButton;
  if (actionButton)
  {
    [(UIButton *)actionButton removeFromSuperview];
    v4 = self->_actionButton;
    self->_actionButton = 0;
  }

  actionTitle = self->_actionTitle;
  if (actionTitle)
  {
    actionButtonAction = self->_actionButtonAction;
    if (actionButtonAction)
    {
      if (self->_actionButtonUsesLearnMoreStyle)
      {
        v7 = PKOBKLearnMoreButton(@"info.circle.fill", actionTitle, actionButtonAction);
        v8 = self->_actionButton;
        self->_actionButton = v7;
      }

      else
      {
        v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC30]);
        v10 = [MEMORY[0x1E69DC740] pkui_plainConfigurationWithTitle:self->_actionTitle font:v9];
        [v10 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
        v11 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v10 primaryAction:self->_actionButtonAction];
        v12 = self->_actionButton;
        self->_actionButton = v11;

        alignment = self->_alignment;
        v14 = self->_actionButton;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __42__PKTableHeaderView_configureActionButton__block_invoke;
        v15[3] = &__block_descriptor_40_e18_v16__0__UIButton_8l;
        v15[4] = alignment;
        [(UIButton *)v14 setConfigurationUpdateHandler:v15];
      }

      [(UIButton *)self->_actionButton setEnabled:self->_buttonsEnabled];
      [(UIButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
      [(PKTableHeaderView *)self addSubview:self->_actionButton];
    }
  }
}

void __42__PKTableHeaderView_configureActionButton__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 titleLabel];
  [v3 setTextAlignment:*(a1 + 32)];

  [v4 setContentHorizontalAlignment:1];
}

- (void)setPassSnapshot:(id)snapshot withSize:(CGSize)size animated:(BOOL)animated needsCorners:(BOOL)corners
{
  cornersCopy = corners;
  animatedCopy = animated;
  height = size.height;
  width = size.width;
  snapshotCopy = snapshot;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [snapshotCopy size];
    PKFloatRoundToPixel();
    width = v12;
    PKFloatRoundToPixel();
    height = v13;
  }

  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setAccessibilityIgnoresInvertColors:1];
  [(PKTableHeaderView *)self setImageViewImage:snapshotCopy withSize:animatedCopy animated:width, height];
  if (cornersCopy)
  {
    layer = [(UIImageView *)self->_imageView layer];
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [v15 CGColor];
    PKPaymentStyleApplyCorners();
  }
}

- (void)setImageViewImage:(id)image withSize:(CGSize)size animated:(BOOL)animated
{
  animatedCopy = animated;
  height = size.height;
  width = size.width;
  imageCopy = image;
  imageView = self->_imageView;
  if (!imageView)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v12 = self->_imageView;
    self->_imageView = v11;

    [(PKTableHeaderView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  [(UIImageView *)imageView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
  if (animatedCopy)
  {
    v13 = MEMORY[0x1E69DD250];
    v14 = self->_imageView;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __57__PKTableHeaderView_setImageViewImage_withSize_animated___block_invoke;
    v18 = &unk_1E8010A10;
    selfCopy = self;
    v20 = imageCopy;
    [v13 transitionWithView:v14 duration:5242880 options:&v15 animations:0 completion:0.300000012];
  }

  else
  {
    [(UIImageView *)self->_imageView setImage:imageCopy];
  }

  [(PKTableHeaderView *)self _updateImageView:v15];
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  imageView = self->_imageView;
  if (imageView != viewCopy)
  {
    v7 = viewCopy;
    [(UIImageView *)imageView removeFromSuperview];
    objc_storeStrong(&self->_imageView, view);
    [(UIImageView *)self->_imageView setContentMode:1];
    [(PKTableHeaderView *)self addSubview:self->_imageView];
    [(PKTableHeaderView *)self _updateImageView];
    viewCopy = v7;
  }
}

- (void)_updateImageView
{
  p_originalImageViewSize = &self->_originalImageViewSize;
  [(UIImageView *)self->_imageView frame];
  p_originalImageViewSize->width = v4;
  p_originalImageViewSize->height = v5;

  [(PKTableHeaderView *)self setNeedsLayout];
}

- (void)setAccessoryViewsDisabled:(BOOL)disabled
{
  self->_accessoryViewsDisabled = disabled;
  [(PKTableHeaderView *)self _updateAccessoryViews];

  [(PKTableHeaderView *)self setNeedsLayout];
}

- (UIFont)titleFont
{
  titleFont = self->_titleFont;
  if (titleFont)
  {
    v3 = titleFont;
  }

  else
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD58], *MEMORY[0x1E69DDC30], 2, 0);
  }

  return v3;
}

- (UIColor)titleTextColor
{
  titleTextColor = self->_titleTextColor;
  if (titleTextColor)
  {
    labelColor = titleTextColor;
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return labelColor;
}

- (void)setTitleTextColor:(id)color
{
  objc_storeStrong(&self->_titleTextColor, color);
  colorCopy = color;
  [(UILabel *)self->_titleLabel setTextColor:self->_titleTextColor];
}

- (void)setAlignment:(int64_t)alignment
{
  self->_alignment = alignment;
  [(UILabel *)self->_titleLabel setTextAlignment:?];
  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setTextAlignment:alignment];
}

- (UIFont)subtitleFont
{
  subtitleFont = self->_subtitleFont;
  if (subtitleFont)
  {
    v3 = subtitleFont;
  }

  else
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC30]);
  }

  return v3;
}

- (UIColor)subtitleTextColor
{
  subtitleTextColor = self->_subtitleTextColor;
  if (subtitleTextColor)
  {
    labelColor = subtitleTextColor;
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return labelColor;
}

- (void)setSubtitleTextColor:(id)color
{
  objc_storeStrong(&self->_subtitleTextColor, color);
  colorCopy = color;
  [(UILabel *)self->_subtitleLabel setTextColor:colorCopy];
}

- (void)setTitleFont:(id)font
{
  objc_storeStrong(&self->_titleFont, font);

  [(PKTableHeaderView *)self _updateFonts];
}

- (void)setSubtitleFont:(id)font
{
  objc_storeStrong(&self->_subtitleFont, font);

  [(PKTableHeaderView *)self _updateFonts];
}

- (UILabel)titleLabel
{
  v18[3] = *MEMORY[0x1E69E9840];
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_titleLabel;
    self->_titleLabel = v5;

    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v8 = [defaultParagraphStyle mutableCopy];

    LODWORD(v9) = 1036831949;
    [v8 setHyphenationFactor:v9];
    [v8 setLineBreakMode:4];
    [v8 setAlignment:self->_alignment];
    v10 = self->_titleLabel;
    v11 = *MEMORY[0x1E69DB688];
    v18[0] = v8;
    v12 = *MEMORY[0x1E69DB648];
    v17[0] = v11;
    v17[1] = v12;
    titleFont = [(PKTableHeaderView *)self titleFont];
    v18[1] = titleFont;
    v17[2] = *MEMORY[0x1E69DB650];
    titleTextColor = [(PKTableHeaderView *)self titleTextColor];
    v18[2] = titleTextColor;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    [(UILabel *)v10 _setDefaultAttributes:v15];

    [(UILabel *)self->_titleLabel setNumberOfLines:2];
    [(UILabel *)self->_titleLabel setMinimumScaleFactor:0.5];
    [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKTableHeaderView *)self addSubview:self->_titleLabel];
    [(PKTableHeaderView *)self _updateAccessoryViews];

    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UILabel)subtitleLabel
{
  subtitleLabel = self->_subtitleLabel;
  if (!subtitleLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_subtitleLabel;
    self->_subtitleLabel = v5;

    v7 = self->_subtitleLabel;
    subtitleFont = [(PKTableHeaderView *)self subtitleFont];
    [(UILabel *)v7 setFont:subtitleFont];

    v9 = self->_subtitleLabel;
    subtitleTextColor = [(PKTableHeaderView *)self subtitleTextColor];
    [(UILabel *)v9 setTextColor:subtitleTextColor];

    [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)self->_subtitleLabel setTextAlignment:self->_alignment];
    [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKTableHeaderView *)self addSubview:self->_subtitleLabel];
    subtitleLabel = self->_subtitleLabel;
  }

  return subtitleLabel;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKTableHeaderView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  maximumHeight = self->_maximumHeight;
  v6.n128_f64[0] = fmax(v6.n128_f64[0], self->_minimumHeight);
  v7.n128_f64[0] = fmin(v6.n128_f64[0], maximumHeight);
  if (maximumHeight > 0.0)
  {
    v6.n128_f64[0] = v7.n128_f64[0];
  }

  PKSizeCeilToPixel(v4, v6, v7);
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PKTableHeaderView *)self _layoutWithBounds:bounds.origin.x imageHeightAdjustment:bounds.origin.y, bounds.size.width, bounds.size.height, 0.0];
  maximumHeight = self->_maximumHeight;
  if (v9 > maximumHeight)
  {
    [(PKTableHeaderView *)self _layoutWithBounds:x imageHeightAdjustment:y, width, height, maximumHeight - v9];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds imageHeightAdjustment:(double)adjustment
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v98 = bounds.origin.x;
  _shouldReverseLayoutDirection = [(PKTableHeaderView *)self _shouldReverseLayoutDirection];
  v11 = PKSetupViewConstantsViewMargin();
  v12 = 0.0;
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = width;
  v104.size.height = height;
  v96 = v11;
  v105 = CGRectInset(v104, v11, 0.0);
  v97 = v105.origin.x;
  v99 = y;
  v100 = v105.size.width;
  topPadding = self->_topPadding;
  if (topPadding <= 0.0)
  {
    MaxY = y;
  }

  else
  {
    MaxY = y + topPadding;
  }

  image = [(UIImageView *)self->_imageView image];
  v16 = image;
  v17 = self->_originalImageViewSize.width;
  v18 = self->_originalImageViewSize.height;
  v101 = height;
  v102 = width;
  if (image)
  {
    [image size];
    v21 = fmin(self->_originalImageViewSize.width / v19, self->_originalImageViewSize.height / v20);
    [v16 scale];
    [v16 alignmentRectInsets];
    v23 = v22;
    v25 = v24;
    PKFloatRoundToPixelWithScale();
    v27 = v26;
    PKFloatRoundToPixelWithScale();
    v28 = v21 * v25;
    v29 = v21 * v23;
    v94 = v28;
    v95 = v30;
    if (adjustment == 0.0)
    {
      width = v102;
    }

    else
    {
      v106.origin.x = v98;
      v106.origin.y = v99;
      width = v102;
      v106.size.width = v102;
      v106.size.height = v101;
      CGRectGetWidth(v106);
      PKSizeScaleAspectFit();
    }

    UIRectCenteredXInRect();
    v12 = v32;
    v31 = v33;
    v17 = v34;
    v18 = v35;
    if (!self->_isTemplateLayout)
    {
      v36 = v33 - v27;
      v37 = v35 - (-v94 - v27);
      v38 = v34;
      [(UIImageView *)self->_imageView setFrame:v32 - v29, v36, v34 - (-v95 - v29), v37];
      v17 = v38;
    }

    height = v101;
  }

  else
  {
    v31 = MaxY;
  }

  if (self->_imageView)
  {
    v107.origin.x = v12;
    v107.origin.y = v31;
    v107.size.width = v17;
    v107.size.height = v18;
    MaxY = CGRectGetMaxY(v107) + 25.0;
  }

  else if (self->_style != 1)
  {
    v108.origin.x = v12;
    v108.origin.y = v31;
    v108.size.width = v17;
    v108.size.height = v18;
    MaxY = CGRectGetMaxY(v108);
  }

  v39 = MaxY;
  [(UIActivityIndicatorView *)self->_activityIndicator frame];
  v41 = v40;
  [(UILabel *)self->_titleLabel frame];
  [(PKCheckmarkView *)self->_checkmarkView frame];
  [(PKCheckmarkView *)self->_checkmarkView sizeThatFits:width, height];
  v43 = v100;
  if (!self->_accessoryViewsDisabled)
  {
    v44 = fmax(v41, v42);
    v45 = v100 + -6.0;
    if (self->_alignment == 1)
    {
      v43 = v45 - v44;
    }

    else
    {
      v43 = v45 + v44 * -2.0;
    }
  }

  [(UILabel *)self->_titleLabel sizeThatFits:v43, 1.79769313e308];
  v47 = v46;
  v49 = fmin(v48, v43);
  if (self->_alignment == 1)
  {
    v109.origin.x = v98;
    v109.origin.y = v99;
    v109.size.height = v101;
    v109.size.width = v102;
    v50 = floor(CGRectGetMidX(v109) + v49 * -0.5);
  }

  else
  {
    v51 = v98;
    v52 = v99;
    v54 = v101;
    v53 = v102;
    if (_shouldReverseLayoutDirection)
    {
      v50 = CGRectGetMaxX(*&v51) - v49 - v96;
    }

    else
    {
      v50 = v96 + CGRectGetMinX(*&v51);
    }
  }

  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_titleLabel setFrame:v50, MaxY, v49, v47];
  }

  UIRectCenteredYInRect();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v110.origin.x = v50;
  v110.origin.y = v39;
  v110.size.width = v49;
  v110.size.height = v47;
  MaxX = CGRectGetMaxX(v110);
  if (!self->_isTemplateLayout)
  {
    [(UIActivityIndicatorView *)self->_activityIndicator setFrame:MaxX + 6.0, v56, v58, v60];
  }

  UIRectCenteredYInRect();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v111.origin.x = v50;
  v111.origin.y = v39;
  v111.size.width = v49;
  v111.size.height = v47;
  v68 = CGRectGetMaxX(v111);
  if (!self->_isTemplateLayout)
  {
    [(PKCheckmarkView *)self->_checkmarkView setFrame:v68 + 6.0, v63, v65, v67];
  }

  style = self->_style;
  v70 = 0.0;
  if (style > 1)
  {
    if (style == 2)
    {
      v70 = 8.0;
      goto LABEL_41;
    }

    if (style != 3)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (!style)
  {
LABEL_37:
    if (_UISolariumFeatureFlagEnabled())
    {
      v70 = 0.0;
    }

    else
    {
      v70 = 8.0;
    }

    goto LABEL_41;
  }

  if (style == 1)
  {
    v70 = 12.0;
  }

LABEL_41:
  v112.origin.x = v50;
  v112.origin.y = v39;
  v112.size.width = v49;
  v112.size.height = v47;
  v71 = CGRectGetMaxY(v112);
  [(UILabel *)self->_subtitleLabel frame];
  text = [(UILabel *)self->_subtitleLabel text];
  if ([text length])
  {
    v73 = v101;

    v74 = v99;
  }

  else
  {
    v73 = v101;
    shouldReserveSubtitleHeight = self->_shouldReserveSubtitleHeight;

    v74 = v99;
    if (shouldReserveSubtitleHeight)
    {
      subtitleLabel = self->_subtitleLabel;
      v77 = PKLocalizedString(&stru_1F3BD7710.isa);
      [(UILabel *)subtitleLabel setText:v77];

      [(UILabel *)self->_subtitleLabel sizeThatFits:v100, 1.79769313e308];
      [(UILabel *)self->_subtitleLabel setText:0];
      goto LABEL_46;
    }
  }

  [(UILabel *)self->_subtitleLabel sizeThatFits:v100, 1.79769313e308];
LABEL_46:
  v78 = v70 + v71;
  UIRectCenteredXInRect();
  v82 = v79;
  v83 = v80;
  v84 = v81;
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_subtitleLabel setFrame:v79, v78, v80, v81];
  }

  v113.origin.x = v82;
  v113.origin.y = v78;
  v113.size.width = v83;
  v113.size.height = v84;
  v85 = CGRectGetMaxY(v113);
  if (self->_actionButton)
  {
    PKSetupViewConstantsBodyButtonPadding();
    v87 = v85 + v86;
    [(UIButton *)self->_actionButton frame];
    [(UIButton *)self->_actionButton sizeThatFits:v100, 1.79769313e308];
    v89 = v88;
    if (!self->_isTemplateLayout)
    {
      [(UIButton *)self->_actionButton setFrame:v97, v87, v100, v88];
    }

    v114.origin.x = v97;
    v114.origin.y = v87;
    v114.size.width = v100;
    v114.size.height = v89;
    v85 = CGRectGetMaxY(v114);
  }

  bottomPadding = self->_bottomPadding;
  if (bottomPadding > 0.0)
  {
    v85 = v85 + bottomPadding;
  }

  v115.origin.x = v98;
  v115.origin.y = v74;
  v115.size.width = v102;
  v115.size.height = v73;
  v91 = CGRectGetWidth(v115);

  v92 = v91;
  v93 = v85;
  result.height = v93;
  result.width = v92;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKTableHeaderView;
  [(PKTableHeaderView *)&v3 layoutSubviews];
  [(PKTableHeaderView *)self bounds];
  [(PKTableHeaderView *)self _layoutWithBounds:?];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PKTableHeaderView;
  [(PKTableHeaderView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(PKTableHeaderView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(PKTableHeaderView *)self _updateFonts];
    }
  }
}

- (BOOL)_hasAccessibilityLargeText
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)_updateFonts
{
  titleLabel = self->_titleLabel;
  titleFont = [(PKTableHeaderView *)self titleFont];
  [(UILabel *)titleLabel setFont:titleFont];

  subtitleLabel = self->_subtitleLabel;
  subtitleFont = [(PKTableHeaderView *)self subtitleFont];
  [(UILabel *)subtitleLabel setFont:subtitleFont];
}

- (void)_updateAccessoryViews
{
  accessoryViewsDisabled = self->_accessoryViewsDisabled;
  activityIndicator = self->_activityIndicator;
  if (accessoryViewsDisabled)
  {
    [(UIActivityIndicatorView *)activityIndicator removeFromSuperview];
    v5 = self->_activityIndicator;
    self->_activityIndicator = 0;

    checkmarkView = self->_checkmarkView;
    self->_checkmarkView = 0;
  }

  else
  {
    if (!activityIndicator)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v8 = self->_activityIndicator;
      self->_activityIndicator = v7;

      [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
      [(UIActivityIndicatorView *)self->_activityIndicator sizeToFit];
      [(PKTableHeaderView *)self addSubview:self->_activityIndicator];
    }

    if (!self->_checkmarkView)
    {
      v9 = objc_alloc_init(PKCheckmarkView);
      v10 = self->_checkmarkView;
      self->_checkmarkView = v9;

      v11 = self->_checkmarkView;

      [(PKTableHeaderView *)self addSubview:v11];
    }
  }
}

@end