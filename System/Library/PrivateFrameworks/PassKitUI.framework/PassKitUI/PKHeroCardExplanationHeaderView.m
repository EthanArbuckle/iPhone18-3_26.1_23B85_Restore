@interface PKHeroCardExplanationHeaderView
+ (CGSize)recommendedCardImageSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (PKHeroCardExplanationHeaderView)initWithImage:(id)a3;
- (void)hideLoadingContent;
- (void)layoutSubviews;
- (void)setCardImage:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setHideBackground:(BOOL)a3;
- (void)setHideShadow:(BOOL)a3;
- (void)setPadding:(unint64_t)a3;
- (void)setSize:(unint64_t)a3;
- (void)showLoadingContent;
- (void)updateCardSizeValues;
@end

@implementation PKHeroCardExplanationHeaderView

+ (CGSize)recommendedCardImageSize
{
  v2 = 280.0;
  v3 = 176.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (PKHeroCardExplanationHeaderView)initWithImage:(id)a3
{
  v4 = a3;
  v5 = [(PKHeroCardExplanationHeaderView *)self init];
  v6 = v5;
  if (v5)
  {
    if ([(UIView *)v5 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      v7 = 2;
      v8 = 3;
    }

    else
    {
      v9 = PKUIGetMinScreenType();
      v8 = 3;
      if (v9 >= 4)
      {
        v8 = 4;
      }

      v7 = 2;
      if (v9 >= 4)
      {
        v7 = 3;
      }
    }

    v6->_size = v8;
    v6->_padding = v7;
    [(PKHeroCardExplanationHeaderView *)v6 updateCardSizeValues];
    if (v4)
    {
      [v4 size];
    }

    else
    {
      [objc_opt_class() recommendedCardImageSize];
    }

    v12 = v10;
    v13 = v11;
    v14 = objc_alloc(MEMORY[0x1E69DD250]);
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v13}];
    cardImageShadowView = v6->_cardImageShadowView;
    v6->_cardImageShadowView = v15;

    [(PKHeroCardExplanationHeaderView *)v6 addSubview:v6->_cardImageShadowView];
    v17 = [(UIView *)v6->_cardImageShadowView layer];
    [v17 setShouldRasterize:1];
    [v17 setRasterizationScale:PKUIScreenScale()];
    LODWORD(v18) = 1041865114;
    [v17 setShadowOpacity:v18];
    [v17 setShadowOffset:{0.0, 10.0}];
    [v17 setShadowRadius:15.0];
    v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
    cardImageView = v6->_cardImageView;
    v6->_cardImageView = v19;

    [(UIView *)v6->_cardImageShadowView addSubview:v6->_cardImageView];
    [(UIImageView *)v6->_cardImageView setAccessibilityIgnoresInvertColors:1];
    v21 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    spinner = v6->_spinner;
    v6->_spinner = v21;

    [(PKHeroCardExplanationHeaderView *)v6 setHideBackground:0];
  }

  return v6;
}

- (void)setCardImage:(id)a3
{
  [(UIImageView *)self->_cardImageView setImage:a3];
  [(UIImageView *)self->_cardImageView sizeToFit];

  [(PKHeroCardExplanationHeaderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PKHeroCardExplanationHeaderView;
  [(PKHeroCardExplanationHeaderView *)&v20 layoutSubviews];
  v3 = [(UIImageView *)self->_cardImageView image];

  if (v3)
  {
    [(PKHeroCardExplanationHeaderView *)self bounds];
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
    v6 = [(UIImageView *)self->_cardImageView image];
    [v6 size];

    PKSizeScaleAspectFit();
    UIRectCenteredXInRect();
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_cardImageShadowView setFrame:?];
    [(UIImageView *)self->_cardImageView frame];
    v12 = v11;
    v14 = v13;
    [(UIImageView *)self->_cardImageView setFrame:v4, v5, v8, v10];
    if (!self->_hideBorders)
    {
      [(UIView *)self->_cardImageShadowView frame];
      if (v16 != v12 || v15 != v14)
      {
        v18 = [(UIImageView *)self->_cardImageView layer];
        [(UIImageView *)self->_cardImageView frame];
        +[PKTransactionDataOverlayCardFaceView borderWidth];
        v19 = +[PKTransactionDataOverlayCardFaceView borderColor];
        [v19 CGColor];
        PKPaymentStyleApplyCorners();
      }
    }
  }

  [(UIActivityIndicatorView *)self->_spinner frame];
  [(PKHeroCardExplanationHeaderView *)self bounds];
  UIRectCenteredAboutPoint();
  [(UIActivityIndicatorView *)self->_spinner setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  cardBackingHeight = self->_cardBackingHeight;
  result.height = cardBackingHeight;
  return result;
}

- (void)setSize:(unint64_t)a3
{
  if (self->_size != a3)
  {
    self->_size = a3;
    [(PKHeroCardExplanationHeaderView *)self updateCardSizeValues];

    [(PKHeroCardExplanationHeaderView *)self setNeedsLayout];
  }
}

- (void)setPadding:(unint64_t)a3
{
  if (self->_padding != a3)
  {
    self->_padding = a3;
    [(PKHeroCardExplanationHeaderView *)self updateCardSizeValues];

    [(PKHeroCardExplanationHeaderView *)self setNeedsLayout];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    v4 = [(UIImageView *)self->_cardImageView layer];
    [v4 setCornerRadius:a3];
    [v4 setMasksToBounds:a3 > 0.0];
  }
}

- (void)updateCardSizeValues
{
  size = self->_size;
  if (size <= 4)
  {
    *&self->_cardHeight = qword_1BE1149B0[size];
  }

  padding = self->_padding;
  if (padding > 2)
  {
    if (padding == 3)
    {
      self->_cardTopPadding = 30.0;
      self->_cardBottomPadding = 60.0;
      cardBottomPadding = 60.0;
      goto LABEL_17;
    }

    if (padding == 4)
    {
      self->_cardTopPadding = 10.0;
      self->_cardBottomPadding = 10.0;
      cardBottomPadding = 10.0;
      goto LABEL_17;
    }

    if (padding != 5)
    {
LABEL_13:
      cardBottomPadding = self->_cardBottomPadding;
      goto LABEL_17;
    }
  }

  else if (padding)
  {
    if (padding == 1)
    {
      self->_cardTopPadding = 0.0;
      goto LABEL_15;
    }

    if (padding == 2)
    {
      self->_cardTopPadding = 15.0;
LABEL_15:
      self->_cardBottomPadding = 20.0;
      cardBottomPadding = 20.0;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  self->_cardTopPadding = 0.0;
  self->_cardBottomPadding = 0.0;
  cardBottomPadding = 0.0;
LABEL_17:
  self->_cardBackingHeight = cardBottomPadding + self->_cardHeight + self->_cardTopPadding;
}

- (void)showLoadingContent
{
  v3 = [(UIImageView *)self->_cardImageView layer];
  [v3 setOpacity:0.0];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  spinner = self->_spinner;

  [(PKHeroCardExplanationHeaderView *)self addSubview:spinner];
}

- (void)hideLoadingContent
{
  v3 = [(UIImageView *)self->_cardImageView layer];
  [v3 pkui_animateToOpacity:0 withCompletion:1.0];

  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  spinner = self->_spinner;

  [(UIActivityIndicatorView *)spinner removeFromSuperview];
}

- (void)setHideBackground:(BOOL)a3
{
  self->_hideBackground = a3;
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = PKProvisioningSecondaryBackgroundColor();
  }

  v5 = v4;
  [(PKHeroCardExplanationHeaderView *)self setBackgroundColor:v4];
}

- (void)setHideShadow:(BOOL)a3
{
  if (self->_hideShadow == !a3)
  {
    v4 = a3;
    v5 = [(UIView *)self->_cardImageShadowView layer];
    v7 = v5;
    LODWORD(v6) = 1041865114;
    if (v4)
    {
      *&v6 = 0.0;
    }

    [v5 setShadowOpacity:v6];
  }
}

@end