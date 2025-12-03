@interface PKCreditPaymentDueCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCreditPaymentDueCell)initWithFrame:(CGRect)frame;
- (PKCreditPaymentDueCellDelegate)delegate;
- (id)_payButtonWithCircleLayout:(BOOL)layout;
- (void)_buttonTapped:(id)tapped;
- (void)_updateButtonImage:(id)image;
- (void)createSubviews;
- (void)layoutSubviews;
- (void)setButtonTitle:(id)title;
- (void)setDateLabelFont:(id)font;
- (void)setDateLabelText:(id)text;
- (void)setDateLabelTextColor:(id)color;
- (void)setDetailLabelFont:(id)font;
- (void)setDetailLabelText:(id)text;
- (void)setDetailLabelTextColor:(id)color;
- (void)setFallbackButtonTitle:(id)title;
- (void)setPayButtonFont:(id)font;
- (void)setPayButtonImage:(id)image;
- (void)setPayButtonTintColor:(id)color;
- (void)setPayButtonTitleColor:(id)color;
- (void)setPaymentDueLabelFont:(id)font;
- (void)setPaymentDueLabelText:(id)text;
- (void)setPaymentDueLabelTextColor:(id)color;
@end

@implementation PKCreditPaymentDueCell

- (PKCreditPaymentDueCell)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PKCreditPaymentDueCell;
  v3 = [(PKDashboardCollectionViewCell *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v3->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
    [(PKCreditPaymentDueCell *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9A48]];
    [(PKCreditPaymentDueCell *)v3 createSubviews];
  }

  return v3;
}

- (void)createSubviews
{
  contentView = [(PKCreditPaymentDueCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  paymentDueLabel = self->_paymentDueLabel;
  self->_paymentDueLabel = v3;

  [(UILabel *)self->_paymentDueLabel setNumberOfLines:2];
  [(UILabel *)self->_paymentDueLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_paymentDueLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
  [contentView addSubview:self->_paymentDueLabel];
  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  dateLabel = self->_dateLabel;
  self->_dateLabel = v5;

  [(UILabel *)self->_dateLabel setNumberOfLines:1];
  [(UILabel *)self->_dateLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_dateLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [contentView addSubview:self->_dateLabel];
  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  detailLabel = self->_detailLabel;
  self->_detailLabel = v7;

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  [(UILabel *)self->_detailLabel setLineBreakMode:4];
  [(UILabel *)self->_detailLabel setAdjustsFontSizeToFitWidth:0];
  [(UILabel *)self->_detailLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  [contentView addSubview:self->_detailLabel];
  [contentView setAccessibilityIdentifier:*MEMORY[0x1E69B9A48]];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKCreditPaymentDueCell;
  [(PKDashboardCollectionViewCell *)&v3 layoutSubviews];
  [(PKCreditPaymentDueCell *)self bounds];
  [(PKCreditPaymentDueCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKCreditPaymentDueCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 3.40282347e38];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = 8.0;
  if (!self->_isCompactUI)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v7 = 16.0;
    }

    else
    {
      v7 = 12.0;
    }
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v8 = 12.0;
  }

  else
  {
    v8 = 8.0;
  }

  v9 = _UISolariumFeatureFlagEnabled();
  v10 = 16.0;
  if (!v9)
  {
    v10 = 8.0;
  }

  v11 = y + v8;
  v12 = width - (v7 + v7);
  v45 = v8 + v10;
  v13 = height - (v8 + v10);
  [(PKCreditPaymentDueCell *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = x + v7;
  remainder.origin.y = v11;
  remainder.size.width = v12;
  remainder.size.height = v13;
  [(UILabel *)self->_paymentDueLabel sizeThatFits:v12, v13];
  v15 = v14 + 0.0;
  v50.origin.x = x + v7;
  v50.origin.y = v11;
  v50.size.width = remainder.size.width;
  v50.size.height = v13;
  v44 = v15;
  CGRectDivide(v50, &slice, &remainder, v15, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    paymentDueLabel = self->_paymentDueLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)paymentDueLabel setFrame:?];
  }

  [(UILabel *)self->_dateLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v18 = v17 + 0.0;
  CGRectDivide(remainder, &slice, &remainder, v17 + 0.0, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    dateLabel = self->_dateLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)dateLabel setFrame:?];
  }

  [(UILabel *)self->_detailLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v21 = v20;
  if (self->_usingCircleButton)
  {
    v22 = 90.0;
    if (self->_isCompactUI)
    {
      v22 = 80.0;
    }

    v23 = 64.0;
    v24 = 60.0;
    if (!self->_isCompactUI)
    {
      v24 = 64.0;
    }

    if (!self->_useAccessibilityLayout)
    {
      v23 = 48.0;
      v22 = v24;
    }

    v25 = remainder.size.height;
    v26 = fmin(fmax(v23, remainder.size.height + -3.0 - v21), v22);
    v27 = remainder.size.width;
  }

  else
  {
    [(PKContinuousButton *)self->_payButton sizeThatFits:remainder.size.width, remainder.size.height];
    v26 = v28;
    v27 = remainder.size.width;
    v25 = remainder.size.height;
  }

  v29 = fmin(v21, v25 - v26 + -3.0);
  if (!self->_isTemplateLayout)
  {
    v21 = v29;
  }

  v30 = remainder.origin.x;
  v31 = remainder.origin.y;
  CGRectDivide(*(&v27 - 2), &slice, &remainder, v21, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    detailLabel = self->_detailLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)detailLabel setFrame:?];
  }

  useAccessibilityLayout = self->_useAccessibilityLayout;
  if (self->_usingCircleButton)
  {
    v34 = v26 + 3.0;
    CGRectDivide(remainder, &slice, &remainder, v26 + 3.0, CGRectMaxYEdge);
    if (useAccessibilityLayout)
    {
      if (!self->_isTemplateLayout)
      {
        payButton = self->_payButton;
LABEL_35:
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        goto LABEL_36;
      }
    }

    else if (!self->_isTemplateLayout)
    {
      payButton = self->_payButton;
      goto LABEL_35;
    }

LABEL_37:
    v26 = v34;
    goto LABEL_38;
  }

  CGRectDivide(remainder, &slice, &remainder, v26 + 3.0, CGRectMaxYEdge);
  if (!self->_isTemplateLayout)
  {
    payButton = self->_payButton;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v34 = v26;
LABEL_36:
    [(PKContinuousButton *)payButton setFrame:?];
    goto LABEL_37;
  }

LABEL_38:
  if (self->_fallbackButtonTitle)
  {
    titleLabel = [(PKContinuousButton *)self->_payButton titleLabel];
    [titleLabel pkui_sizeThatFits:{v12, v13}];
    v38 = v37;

    [(PKContinuousButton *)self->_payButton contentEdgeInsets];
    v40 = v39;
    [(PKContinuousButton *)self->_payButton contentEdgeInsets];
    if (v38 >= v12 - (v40 + v41))
    {
      [(PKCreditPaymentDueCell *)self setButtonTitle:self->_fallbackButtonTitle];
    }
  }

  v42 = v45 + v44 + v18 + v21 + 0.0 + 3.0 + v26;
  v43 = width;
  result.height = v42;
  result.width = v43;
  return result;
}

- (void)setPaymentDueLabelText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_paymentDueLabel text];
  v6 = textCopy;
  v8 = v6;
  if (text == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !text)
  {

    goto LABEL_8;
  }

  v7 = [text isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_paymentDueLabel setText:v8];
    [(PKCreditPaymentDueCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setPaymentDueLabelFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self->_paymentDueLabel font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_paymentDueLabel setFont:fontCopy];
    [(PKCreditPaymentDueCell *)self setNeedsLayout];
  }
}

- (void)setPaymentDueLabelTextColor:(id)color
{
  colorCopy = color;
  textColor = [(UILabel *)self->_paymentDueLabel textColor];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_paymentDueLabel setTextColor:colorCopy];
  }
}

- (void)setDateLabelText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_dateLabel text];
  v6 = textCopy;
  v8 = v6;
  if (text == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !text)
  {

    goto LABEL_8;
  }

  v7 = [text isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_dateLabel setText:v8];
    [(PKCreditPaymentDueCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setDateLabelFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self->_dateLabel font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_dateLabel setFont:fontCopy];
    [(PKCreditPaymentDueCell *)self setNeedsLayout];
  }
}

- (void)setDateLabelTextColor:(id)color
{
  colorCopy = color;
  textColor = [(UILabel *)self->_dateLabel textColor];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_dateLabel setTextColor:colorCopy];
  }
}

- (void)setDetailLabelText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_detailLabel text];
  v6 = textCopy;
  v8 = v6;
  if (text == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !text)
  {

    goto LABEL_8;
  }

  v7 = [text isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_detailLabel setText:v8];
    [(PKCreditPaymentDueCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setDetailLabelFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self->_detailLabel font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_detailLabel setFont:fontCopy];
    [(PKCreditPaymentDueCell *)self setNeedsLayout];
  }
}

- (void)setDetailLabelTextColor:(id)color
{
  colorCopy = color;
  textColor = [(UILabel *)self->_detailLabel textColor];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_detailLabel setTextColor:colorCopy];
  }
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  contentView = [(PKCreditPaymentDueCell *)self contentView];
  titleLabel = [(PKContinuousButton *)self->_payButton titleLabel];
  text = [titleLabel text];

  v8 = text;
  v9 = titleCopy;
  v24 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v9 || !v8)
    {

      goto LABEL_10;
    }

    v10 = [v8 isEqualToString:v9];

    if (!v10)
    {
LABEL_10:
      v11 = [v8 length];
      v12 = [v24 length];
      if (v11 <= 3 && v12 >= 4)
      {
        payButton = self->_payButton;
        if (payButton)
        {
          [(PKContinuousButton *)payButton removeFromSuperview];
        }

        v19 = [(PKCreditPaymentDueCell *)self _payButtonWithCircleLayout:0];
        v20 = self->_payButton;
        self->_payButton = v19;

        [contentView addSubview:self->_payButton];
        goto LABEL_29;
      }

      v14 = v12;
      v15 = v12 < 4;
      v16 = self->_payButton;
      if (v11 < 4 || v14 > 3)
      {
        if (v16)
        {
          if (v14)
          {
LABEL_29:
            payButtonImage = 0;
LABEL_30:
            [(PKCreditPaymentDueCell *)self _updateButtonImage:payButtonImage];
            [(PKContinuousButton *)self->_payButton setTitle:v24 forState:0];
            [(PKContinuousButton *)self->_payButton setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
            [(PKCreditPaymentDueCell *)self setNeedsLayout];
            goto LABEL_31;
          }

LABEL_34:
          payButtonImage = self->_payButtonImage;
          goto LABEL_30;
        }
      }

      else
      {
        if (v16)
        {
          [(PKContinuousButton *)v16 removeFromSuperview];
        }

        v15 = 1;
      }

      v21 = [(PKCreditPaymentDueCell *)self _payButtonWithCircleLayout:v15];
      v22 = self->_payButton;
      self->_payButton = v21;

      [contentView addSubview:self->_payButton];
      if (v14)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }
  }

  if (self->_payButtonImage)
  {
    goto LABEL_10;
  }

LABEL_31:
}

- (void)setFallbackButtonTitle:(id)title
{
  titleCopy = title;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_fallbackButtonTitle, title);
    [(PKCreditPaymentDueCell *)self setNeedsLayout];
  }
}

- (void)setPayButtonImage:(id)image
{
  imageCopy = image;
  if ((PKEqualObjects() & 1) == 0)
  {
    [(PKCreditPaymentDueCell *)self _updateButtonImage:imageCopy];
    [(PKCreditPaymentDueCell *)self setButtonTitle:0];
    [(PKCreditPaymentDueCell *)self setNeedsLayout];
  }
}

- (void)setPayButtonTintColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_payButtonTintColor, color);
    [(PKContinuousButton *)self->_payButton setTintColor:self->_payButtonTintColor];
  }
}

- (void)setPayButtonTitleColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_payButtonTitleColor, color);
    [(PKContinuousButton *)self->_payButton updateTitleColorWithColor:self->_payButtonTitleColor];
    imageView = [(PKContinuousButton *)self->_payButton imageView];
    [imageView setTintColor:self->_payButtonTitleColor];
  }
}

- (void)setPayButtonFont:(id)font
{
  payButton = self->_payButton;
  fontCopy = font;
  titleLabel = [(PKContinuousButton *)payButton titleLabel];
  [titleLabel setFont:fontCopy];
}

- (void)_updateButtonImage:(id)image
{
  objc_storeStrong(&self->_payButtonImage, image);
  imageCopy = image;
  [(PKContinuousButton *)self->_payButton updateWithImage:self->_payButtonImage];
  [(PKContinuousButton *)self->_payButton setImageEdgeInsets:6.0, 6.0, 6.0, 6.0];
  imageView = [(PKContinuousButton *)self->_payButton imageView];

  [imageView setContentMode:1];
  [(PKCreditPaymentDueCell *)self setNeedsLayout];
}

- (id)_payButtonWithCircleLayout:(BOOL)layout
{
  if (layout)
  {
    v12 = 0;
    *v13 = 0;
    *&v13[8] = vdupq_n_s64(2uLL);
    *&v13[24] = 2;
    v4 = [[PKContinuousButton alloc] initWithConfiguration:&v12];
    [(PKContinuousButton *)v4 setContentEdgeInsets:1.0, 1.0, 1.0, 1.0];
    v5 = 1;
  }

  else
  {
    v12 = 0;
    *v13 = vdupq_n_s64(2uLL);
    *&v13[16] = *v13;
    v4 = [[PKContinuousButton alloc] initWithConfiguration:&v12];
    [(PKContinuousButton *)v4 setContentEdgeInsets:10.0, 16.0, 10.0, 16.0];
    v5 = 0;
  }

  self->_usingCircleButton = v5;
  [(PKContinuousButton *)v4 setTintColor:self->_payButtonTintColor];
  [(PKContinuousButton *)v4 updateTitleColorWithColor:self->_payButtonTitleColor];
  imageView = [(PKContinuousButton *)v4 imageView];
  [imageView setTintColor:self->_payButtonTitleColor];
  titleLabel = [(PKContinuousButton *)v4 titleLabel];
  if (self->_isCompactUI)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 2;
  }

  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50], v8, 0);
  [titleLabel setFont:v9];

  titleLabel2 = [(PKContinuousButton *)v4 titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  [(PKContinuousButton *)v4 addTarget:self action:sel__buttonTapped_ forControlEvents:64];

  return v4;
}

- (void)_buttonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained paymentButtonTappedForItem:self->_item];
    WeakRetained = v5;
  }
}

- (PKCreditPaymentDueCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end