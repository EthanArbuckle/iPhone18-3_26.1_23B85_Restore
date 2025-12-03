@interface PKMessageExtensionMessageBubbleView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKMessageExtensionMessageBubbleView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)_applyProperties:(id)properties;
- (void)_setupBubbleView;
- (void)beginValidateMessage;
- (void)endValidateMessage;
- (void)layoutSubviews;
- (void)setProperties:(id)properties;
@end

@implementation PKMessageExtensionMessageBubbleView

- (PKMessageExtensionMessageBubbleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKMessageExtensionMessageBubbleView;
  v3 = [(PKMessageExtensionMessageBubbleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKMessageExtensionMessageBubbleView *)v3 _setupBubbleView];
  }

  return v4;
}

- (void)beginValidateMessage
{
  if (!self->_isValidatingMessage)
  {
    self->_isValidatingMessage = 1;
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __59__PKMessageExtensionMessageBubbleView_beginValidateMessage__block_invoke;
    v2[3] = &unk_1E8010970;
    v2[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0x10000 animations:v2 completion:0];
  }
}

uint64_t __59__PKMessageExtensionMessageBubbleView_beginValidateMessage__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 480) startAnimating];
  [*(*(a1 + 32) + 408) setAlpha:1.0];
  [*(*(a1 + 32) + 416) setAlpha:0.0];
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 432);

  return [v2 setAlpha:0.0];
}

- (void)endValidateMessage
{
  if (self->_isValidatingMessage)
  {
    v4[5] = v2;
    v4[6] = v3;
    self->_isValidatingMessage = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__PKMessageExtensionMessageBubbleView_endValidateMessage__block_invoke;
    v4[3] = &unk_1E8010970;
    v4[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0x10000 animations:v4 completion:0];
  }
}

uint64_t __57__PKMessageExtensionMessageBubbleView_endValidateMessage__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 480) stopAnimating];
  v2 = [*(*(a1 + 32) + 416) image];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 489);

    if ((v3 & 1) == 0)
    {
      [*(*(a1 + 32) + 408) setAlpha:0.0];
    }
  }

  [*(*(a1 + 32) + 416) setAlpha:1.0];
  [*(*(a1 + 32) + 424) setAlpha:1.0];
  v4 = *(*(a1 + 32) + 432);

  return [v4 setAlpha:1.0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKMessageExtensionMessageBubbleView *)self _layoutWithBounds:1 isTemplateLayout:0.0, 0.0, fits.width, 10000.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKMessageExtensionMessageBubbleView;
  [(PKMessageExtensionMessageBubbleView *)&v3 layoutSubviews];
  [(PKMessageExtensionMessageBubbleView *)self bounds];
  [(PKMessageExtensionMessageBubbleView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _shouldReverseLayoutDirection = [(PKMessageExtensionMessageBubbleView *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  v11 = self->_contentInset.left + 12.0;
  v12 = x + v11;
  v13 = 0.0;
  v14 = width - (v11 + self->_contentInset.right + 12.0);
  remainder.origin.x = v12;
  remainder.origin.y = y + 0.0;
  remainder.size.width = v14;
  remainder.size.height = height;
  isHidden = [(UILabel *)self->_buttonLabel isHidden];
  v51.origin.x = v12;
  v51.origin.y = y + 0.0;
  v51.size.width = v14;
  v51.size.height = height;
  CGRectDivide(v51, &slice, &remainder, 13.0, CGRectMaxYEdge);
  [(UILabel *)self->_buttonLabel sizeThatFits:width, height];
  v17 = v16;
  PKFloatRoundToPixel();
  v19 = v18;
  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = v18;
  v47.size.height = v17 + v17;
  v41 = *(MEMORY[0x1E695F058] + 16);
  v43 = *MEMORY[0x1E695F058];
  v46.origin = *MEMORY[0x1E695F058];
  v46.size = v41;
  if (isHidden)
  {
    v46 = remainder;
  }

  else
  {
    if (_shouldReverseLayoutDirection)
    {
      v20 = CGRectMinXEdge;
    }

    else
    {
      v20 = CGRectMaxXEdge;
    }

    CGRectDivide(remainder, &slice, &v46, v18, v20);
    v13 = slice.origin.x;
    v47.origin.x = slice.origin.x;
    CGRectDivide(v46, &slice, &v46, 5.0, v20);
  }

  [(UILabel *)self->_subtitleLabel sizeThatFits:v46.size.width, v46.size.height, v41];
  if (v21 == 0.0)
  {
    font = [(UILabel *)self->_subtitleLabel font];
    [font lineHeight];
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  CGRectDivide(v46, &slice, &v46, v24, CGRectMaxYEdge);
  if (!layout)
  {
    [(UILabel *)self->_subtitleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  [(UILabel *)self->_titleLabel sizeThatFits:v46.size.width, v46.size.height];
  v45.origin = v43;
  v45.size = v42;
  CGRectDivide(v46, &v45, &v46, v25, CGRectMaxYEdge);
  if (!layout)
  {
    [(UILabel *)self->_titleLabel setFrame:v45.origin.x, v45.origin.y, v45.size.width, v45.size.height];
    if ((isHidden & 1) == 0)
    {
      v26 = v45.origin.y;
      v47.origin.y = v45.origin.y;
      [(UIView *)self->_buttonBackgroundView setFrame:v13, v45.origin.y, v19, v17 + v17];
      layer = [(UIView *)self->_buttonBackgroundView layer];
      PKFloatRoundToPixel();
      [layer setCornerRadius:{fmin(v28, 20.0)}];

      v52.origin.x = v13;
      v52.origin.y = v26;
      v52.size.width = v19;
      v52.size.height = v17 + v17;
      CGRectDivide(v52, &slice, &v47, 8.0, CGRectMinXEdge);
      CGRectDivide(v47, &slice, &v47, 14.0, CGRectMinXEdge);
      buttonIconView = self->_buttonIconView;
      PKSizeAlignedInRect();
      [(UIImageView *)buttonIconView setFrame:?];
      CGRectDivide(v47, &slice, &v47, 4.0, CGRectMinXEdge);
      CGRectDivide(v47, &slice, &v47, 8.0, CGRectMaxXEdge);
      buttonLabel = self->_buttonLabel;
      PKSizeAlignedInRect();
      [(UILabel *)buttonLabel setFrame:?];
    }
  }

  CGRectDivide(remainder, &slice, &remainder, 12.0, CGRectMinYEdge);
  v44.origin = v43;
  v44.size = v42;
  v31 = CGRectGetMinY(v45) + -12.0 + -13.0;
  CGRectDivide(remainder, &v44, &remainder, v31, CGRectMinYEdge);
  if (!layout)
  {
    [(UIView *)self->_cardView setFrame:v44.origin.x, v44.origin.y, v44.size.width, v44.size.height];
    spinner = self->_spinner;
    [(UIView *)self->_cardView center];
    [(UIActivityIndicatorView *)spinner setCenter:?];
  }

  if (self->_isUsingFallbackImage)
  {
    image = [(UIImageView *)self->_cardArtImageView image];
    [image size];

    if (layout)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  PKSizeScaleAspectFit();
  if (!layout)
  {
LABEL_21:
    cardArtImageView = self->_cardArtImageView;
    PKSizeAlignedInRect();
    [(UIImageView *)cardArtImageView setFrame:?];
    v53 = CGRectInset(v44, 5.0, 5.0);
    v35 = v53.size.height;
    v36 = v53.size.width * 0.5;
    [(UILabel *)self->_leftTitleLabel sizeThatFits:v53.size.width * 0.5, v53.size.height];
    leftTitleLabel = self->_leftTitleLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)leftTitleLabel setFrame:?];
    [(UILabel *)self->_rightTitleLabel sizeThatFits:v36, v35];
    rightTitleLabel = self->_rightTitleLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)rightTitleLabel setFrame:?];
  }

LABEL_22:
  v39 = height - CGRectGetMinY(v45) + 13.0 + v44.size.width * 0.6 + 12.0;
  v40 = width;
  result.height = v39;
  result.width = v40;
  return result;
}

- (void)_setupBubbleView
{
  _shouldReverseLayoutDirection = [(PKMessageExtensionMessageBubbleView *)self _shouldReverseLayoutDirection];
  [(PKMessageExtensionMessageBubbleView *)self setPreservesSuperviewLayoutMargins:1];
  [(PKMessageExtensionMessageBubbleView *)self setAutoresizingMask:18];
  v4 = +[PKSharingMessageExtensionInvitationTheme messageBubbleBackgroundColor];
  [(PKMessageExtensionMessageBubbleView *)self setBackgroundColor:v4];

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  cardView = self->_cardView;
  self->_cardView = v5;

  v7 = self->_cardView;
  v8 = +[PKSharingMessageExtensionInvitationTheme carKeyImageBackgroundColor];
  [(UIView *)v7 setBackgroundColor:v8];

  layer = [(UIView *)self->_cardView layer];
  [layer setCornerRadius:8.0];

  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_cardView];
  v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  cardArtImageView = self->_cardArtImageView;
  self->_cardArtImageView = v10;

  layer2 = [(UIImageView *)self->_cardArtImageView layer];
  [layer2 setCornerRadius:8.0];
  [layer2 setMasksToBounds:1];
  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_cardArtImageView];
  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  leftTitleLabel = self->_leftTitleLabel;
  self->_leftTitleLabel = v12;

  v14 = self->_leftTitleLabel;
  v15 = +[PKSharingMessageExtensionInvitationTheme messageDefaultFont];
  [(UILabel *)v14 setFont:v15];

  [(UILabel *)self->_leftTitleLabel setTextAlignment:0];
  [(UILabel *)self->_leftTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_leftTitleLabel setMinimumScaleFactor:0.5];
  v16 = self->_leftTitleLabel;
  v17 = +[PKSharingMessageExtensionInvitationTheme primaryTextColor];
  [(UILabel *)v16 setTextColor:v17];

  [(UILabel *)self->_leftTitleLabel setBaselineAdjustment:1];
  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_leftTitleLabel];
  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  rightTitleLabel = self->_rightTitleLabel;
  self->_rightTitleLabel = v18;

  v20 = self->_rightTitleLabel;
  v21 = +[PKSharingMessageExtensionInvitationTheme messageDefaultFont];
  [(UILabel *)v20 setFont:v21];

  [(UILabel *)self->_rightTitleLabel setTextAlignment:2];
  [(UILabel *)self->_rightTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_rightTitleLabel setMinimumScaleFactor:0.5];
  v22 = self->_rightTitleLabel;
  v23 = +[PKSharingMessageExtensionInvitationTheme primaryTextColor];
  [(UILabel *)v22 setTextColor:v23];

  [(UILabel *)self->_rightTitleLabel setBaselineAdjustment:1];
  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_rightTitleLabel];
  v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
  buttonBackgroundView = self->_buttonBackgroundView;
  self->_buttonBackgroundView = v24;

  v26 = self->_buttonBackgroundView;
  systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
  [(UIView *)v26 setBackgroundColor:systemBlackColor];

  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_buttonBackgroundView];
  v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  buttonLabel = self->_buttonLabel;
  self->_buttonLabel = v28;

  v30 = self->_buttonLabel;
  v31 = +[PKSharingMessageExtensionInvitationTheme messageDefaultFont];
  [(UILabel *)v30 setFont:v31];

  [(UILabel *)self->_buttonLabel setTextAlignment:1];
  [(UILabel *)self->_buttonLabel setNumberOfLines:1];
  [(UILabel *)self->_buttonLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_buttonLabel setBaselineAdjustment:1];
  v32 = self->_buttonLabel;
  v33 = +[PKSharingMessageExtensionInvitationTheme primaryTextColor];
  [(UILabel *)v32 setTextColor:v33];

  [(UILabel *)self->_buttonLabel setHidden:1];
  [(UILabel *)self->_buttonLabel setClipsToBounds:1];
  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_buttonLabel];
  v34 = MEMORY[0x1E69DCAB8];
  v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v36 = [v34 imageNamed:@"AddPass_Icon" inBundle:v35];

  v37 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v36];
  buttonIconView = self->_buttonIconView;
  self->_buttonIconView = v37;

  [(UIImageView *)self->_buttonIconView setContentMode:1];
  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_buttonIconView];
  v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v39;

  v41 = self->_titleLabel;
  v42 = +[PKSharingMessageExtensionInvitationTheme messageTitleFont];
  [(UILabel *)v41 setFont:v42];

  if (_shouldReverseLayoutDirection)
  {
    v43 = 2;
  }

  else
  {
    v43 = 0;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v43];
  [(UILabel *)self->_titleLabel setNumberOfLines:2];
  LODWORD(v44) = 0.5;
  [(UILabel *)self->_titleLabel _setHyphenationFactor:v44];
  [(UILabel *)self->_titleLabel setMinimumScaleFactor:0.5];
  v45 = self->_titleLabel;
  v46 = +[PKSharingMessageExtensionInvitationTheme captionTextColor];
  [(UILabel *)v45 setTextColor:v46];

  [(UILabel *)self->_titleLabel setBaselineAdjustment:1];
  [(UILabel *)self->_titleLabel sizeToFit];
  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_titleLabel];
  v47 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v47;

  v49 = self->_subtitleLabel;
  v50 = +[PKSharingMessageExtensionInvitationTheme messageDefaultFont];
  [(UILabel *)v49 setFont:v50];

  [(UILabel *)self->_subtitleLabel setTextAlignment:v43];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
  LODWORD(v51) = 0.5;
  [(UILabel *)self->_subtitleLabel _setHyphenationFactor:v51];
  [(UILabel *)self->_subtitleLabel setMinimumScaleFactor:0.5];
  v52 = self->_subtitleLabel;
  v53 = +[PKSharingMessageExtensionInvitationTheme subcaptionTextColor];
  [(UILabel *)v52 setTextColor:v53];

  [(UILabel *)self->_subtitleLabel setBaselineAdjustment:1];
  [(UILabel *)self->_subtitleLabel sizeToFit];
  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_subtitleLabel];
  v54 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v54;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(PKMessageExtensionMessageBubbleView *)self addSubview:self->_spinner];
}

- (void)setProperties:(id)properties
{
  propertiesCopy = properties;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_properties, properties);
    [(PKMessageExtensionMessageBubbleView *)self _applyProperties:propertiesCopy];
  }
}

- (void)_applyProperties:(id)properties
{
  propertiesCopy = properties;
  cardImage = [propertiesCopy cardImage];
  if (cardImage)
  {
    fallbackCardImageName = cardImage;
    self->_isUsingFallbackImage = 0;
LABEL_3:
    [(UIImageView *)self->_cardArtImageView setImage:fallbackCardImageName];
    LOBYTE(v6) = self->_isUsingFallbackImage;
    v7 = v6;
LABEL_4:

    goto LABEL_5;
  }

  fallbackCardImageName = [propertiesCopy fallbackCardImageName];
  v7 = 1.0;
  if (!fallbackCardImageName)
  {
    goto LABEL_4;
  }

  image = [(UIImageView *)self->_cardArtImageView image];

  if (image)
  {
    goto LABEL_4;
  }

  v21 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:54.0];
  v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:fallbackCardImageName];
  v23 = [v22 imageWithSymbolConfiguration:v21];

  self->_isUsingFallbackImage = 1;
  if (v23)
  {
    fallbackCardImageName = v23;
    goto LABEL_3;
  }

LABEL_5:
  [(UIView *)self->_cardView setAlpha:v7];
  _shouldReverseLayoutDirection = [(PKMessageExtensionMessageBubbleView *)self _shouldReverseLayoutDirection];
  leftTitleLabel = self->_leftTitleLabel;
  if (_shouldReverseLayoutDirection)
  {
    rightTitleText = [propertiesCopy rightTitleText];
    [(UILabel *)leftTitleLabel setText:rightTitleText];

    rightTitleLabel = self->_rightTitleLabel;
    [propertiesCopy leftTitleText];
  }

  else
  {
    leftTitleText = [propertiesCopy leftTitleText];
    [(UILabel *)leftTitleLabel setText:leftTitleText];

    rightTitleLabel = self->_rightTitleLabel;
    [propertiesCopy rightTitleText];
  }
  v13 = ;
  [(UILabel *)rightTitleLabel setText:v13];

  titleLabel = self->_titleLabel;
  title = [propertiesCopy title];
  [(UILabel *)titleLabel setText:title];

  subtitleLabel = self->_subtitleLabel;
  subtitle = [propertiesCopy subtitle];
  [(UILabel *)subtitleLabel setText:subtitle];

  buttonText = [propertiesCopy buttonText];
  v19 = buttonText == 0;
  [(UILabel *)self->_buttonLabel setHidden:v19];
  [(UIImageView *)self->_buttonIconView setHidden:v19];
  [(UIView *)self->_buttonBackgroundView setHidden:v19];
  [(UILabel *)self->_buttonLabel setText:buttonText];
  [(PKMessageExtensionMessageBubbleView *)self setNeedsLayout];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end