@interface PKTransactionStatusCell
- (BOOL)hasCompleteSecondaryLink;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKTransactionStatusCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateTextColors;
- (void)didPressSecondaryTitleButton:(id)button;
- (void)layoutSubviews;
- (void)setIsBridge:(BOOL)bridge;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryTextOverrideColor:(id)color;
- (void)setSecondaryTitle:(id)title;
- (void)setSecondaryTitleAttributed:(id)attributed;
- (void)setSecondaryTitleLinkText:(id)text;
- (void)setSecondaryTitleLinkURL:(id)l;
- (void)setSecondaryValue:(id)value;
- (void)setTertiaryText:(id)text;
@end

@implementation PKTransactionStatusCell

- (PKTransactionStatusCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31.receiver = self;
  v31.super_class = PKTransactionStatusCell;
  v4 = [(PKTransactionStatusCell *)&v31 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PKTransactionStatusCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v5->_primaryLabel;
    v5->_primaryLabel = v7;

    v9 = v5->_primaryLabel;
    v10 = *MEMORY[0x1E69DDCF8];
    v11 = *MEMORY[0x1E69DDC90];
    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], 2, 0);
    [(UILabel *)v9 setFont:v12];

    [(UILabel *)v5->_primaryLabel setNumberOfLines:0];
    [(UILabel *)v5->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [contentView addSubview:v5->_primaryLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryTitleLabel = v5->_secondaryTitleLabel;
    v5->_secondaryTitleLabel = v13;

    v15 = v5->_secondaryTitleLabel;
    v16 = PKFontForDefaultDesign(v10, v11);
    [(UILabel *)v15 setFont:v16];

    [(UILabel *)v5->_secondaryTitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_secondaryTitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [contentView addSubview:v5->_secondaryTitleLabel];
    v17 = objc_alloc_init(MEMORY[0x1E69DC738]);
    secondaryTitleButton = v5->_secondaryTitleButton;
    v5->_secondaryTitleButton = v17;

    v19 = MEMORY[0x1E69DC740];
    v20 = PKFontForDefaultDesign(v10, v11);
    v21 = [v19 pkui_plainConfigurationWithTitle:&stru_1F3BD7330 font:v20];

    [v21 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [(UIButton *)v5->_secondaryTitleButton setConfiguration:v21];
    [(UIButton *)v5->_secondaryTitleButton setHidden:1];
    objc_storeStrong(&v5->_secondaryTitleButtonAction, &__block_literal_global_52);
    [(UIButton *)v5->_secondaryTitleButton addTarget:v5 action:sel_didPressSecondaryTitleButton_ forControlEvents:64];
    [(UIButton *)v5->_secondaryTitleButton setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
    [contentView addSubview:v5->_secondaryTitleButton];
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryValueLabel = v5->_secondaryValueLabel;
    v5->_secondaryValueLabel = v22;

    v24 = v5->_secondaryValueLabel;
    v25 = PKFontForDefaultDesign(v10, v11);
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v5->_secondaryValueLabel setNumberOfLines:1];
    [(UILabel *)v5->_secondaryValueLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9DC0]];
    [contentView addSubview:v5->_secondaryValueLabel];
    v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    tertiaryLabel = v5->_tertiaryLabel;
    v5->_tertiaryLabel = v26;

    v28 = v5->_tertiaryLabel;
    v29 = PKFontForDefaultDesign(v10, v11);
    [(UILabel *)v28 setFont:v29];

    [(UILabel *)v5->_tertiaryLabel setNumberOfLines:0];
    [(UILabel *)v5->_tertiaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9BE8]];
    [contentView addSubview:v5->_tertiaryLabel];
    [(PKTransactionStatusCell *)v5 _updateTextColors];
    [(PKTransactionStatusCell *)v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9CC0]];
  }

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKTransactionStatusCell;
  [(PKTransactionStatusCell *)&v4 layoutSubviews];
  contentView = [(PKTransactionStatusCell *)self contentView];
  [contentView bounds];
  [(PKTransactionStatusCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_templateLayout = 1;
  [(PKTransactionStatusCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 1.79769313e308];
  self->_templateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = self->_primaryText;
  v10 = textCopy;
  v6 = primaryText;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_primaryText;
    self->_primaryText = v8;

    [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    [(PKTransactionStatusCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSecondaryTitle:(id)title
{
  pk_attributedString = [title pk_attributedString];
  [(PKTransactionStatusCell *)self setSecondaryTitleAttributed:pk_attributedString];
}

- (void)setSecondaryTitleAttributed:(id)attributed
{
  attributedCopy = attributed;
  v5 = attributedCopy;
  if (attributedCopy | self->_secondaryTitleLabel)
  {
    v9 = attributedCopy;
    v6 = [attributedCopy isEqualToAttributedString:self->_secondaryTitleAttributed];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [v9 copy];
      secondaryTitleAttributed = self->_secondaryTitleAttributed;
      self->_secondaryTitleAttributed = v7;

      [(UILabel *)self->_secondaryTitleLabel setAttributedText:self->_secondaryTitleAttributed];
      [(PKTransactionStatusCell *)self setNeedsLayout];
      v5 = v9;
    }
  }
}

- (void)setSecondaryTitleLinkText:(id)text
{
  textCopy = text;
  secondaryTitleLinkText = self->_secondaryTitleLinkText;
  v10 = textCopy;
  v6 = secondaryTitleLinkText;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_secondaryTitleLinkText;
    self->_secondaryTitleLinkText = v8;

    [(UIButton *)self->_secondaryTitleButton pkui_updateConfigurationWithTitle:self->_secondaryTitleLinkText];
    [(UIButton *)self->_secondaryTitleButton setHidden:[(PKTransactionStatusCell *)self hasCompleteSecondaryLink]^ 1];
    [(PKTransactionStatusCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSecondaryTitleLinkURL:(id)l
{
  lCopy = l;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [lCopy copy];
    secondaryTitleLinkURL = self->_secondaryTitleLinkURL;
    self->_secondaryTitleLinkURL = v4;

    [(UIButton *)self->_secondaryTitleButton setHidden:[(PKTransactionStatusCell *)self hasCompleteSecondaryLink]^ 1];
    [(PKTransactionStatusCell *)self setNeedsLayout];
  }
}

- (BOOL)hasCompleteSecondaryLink
{
  v3 = [(NSString *)self->_secondaryTitleLinkText length];
  if (v3)
  {
    LOBYTE(v3) = self->_secondaryTitleLinkURL != 0;
  }

  return v3;
}

- (void)setSecondaryValue:(id)value
{
  valueCopy = value;
  secondaryValue = self->_secondaryValue;
  v10 = valueCopy;
  v6 = secondaryValue;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_secondaryValue;
    self->_secondaryValue = v8;

    [(UILabel *)self->_secondaryValueLabel setText:self->_secondaryValue];
    [(PKTransactionStatusCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTertiaryText:(id)text
{
  textCopy = text;
  tertiaryText = self->_tertiaryText;
  v10 = textCopy;
  v6 = tertiaryText;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_tertiaryText;
    self->_tertiaryText = v8;

    [(UILabel *)self->_tertiaryLabel setText:self->_tertiaryText];
    [(PKTransactionStatusCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSecondaryTextOverrideColor:(id)color
{
  colorCopy = color;
  if (self->_secondaryTextOverrideColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_secondaryTextOverrideColor, color);
    [(PKTransactionStatusCell *)self _updateTextColors];
    colorCopy = v6;
  }
}

- (void)setIsBridge:(BOOL)bridge
{
  if (self->_isBridge == !bridge)
  {
    self->_isBridge = bridge;
    [(PKTransactionStatusCell *)self _updateTextColors];
  }
}

- (void)_updateTextColors
{
  primaryLabel = self->_primaryLabel;
  if (self->_isBridge)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v4 = ;
  [(UILabel *)primaryLabel setTextColor:v4];

  secondaryTitleLabel = self->_secondaryTitleLabel;
  if (self->_secondaryTextOverrideColor)
  {
    [(UILabel *)self->_secondaryTitleLabel setTextColor:?];
  }

  else
  {
    if (self->_isBridge)
    {
      [MEMORY[0x1E69DC888] systemGrayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v6 = ;
    [(UILabel *)secondaryTitleLabel setTextColor:v6];
  }

  tertiaryLabel = self->_tertiaryLabel;
  if (self->_isBridge)
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v8 = ;
  [(UILabel *)tertiaryLabel setTextColor:v8];

  if (self->_isBridge)
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v9 = ;
  [(UILabel *)self->_secondaryValueLabel setTextColor:v9];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  memset(&v38, 0, sizeof(v38));
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v8 = y + 14.0;
  v11 = width - (v9 + v10);
  remainder.origin.x = x + v9;
  remainder.origin.y = y + 14.0;
  remainder.size.width = v11;
  remainder.size.height = height + -28.0;
  [(PKTransactionStatusCell *)self _shouldReverseLayoutDirection];
  [(UILabel *)self->_primaryLabel pkui_sizeThatFits:1 forceWordWrap:v11, height + -28.0];
  v13 = v12;
  v41.origin.x = remainder.origin.x;
  v41.origin.y = v8;
  v41.size.width = v11;
  v41.size.height = height + -28.0;
  CGRectDivide(v41, &v38, &remainder, v13, CGRectMinYEdge);
  if (!self->_templateLayout)
  {
    [(UILabel *)self->_primaryLabel setFrame:*&v38.origin, *&v38.size];
  }

  CGRectDivide(remainder, &v38, &remainder, 4.0, CGRectMinYEdge);
  [(UILabel *)self->_secondaryTitleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v15 = v14;
  v17 = v16;
  if ([(NSAttributedString *)self->_secondaryTitleAttributed length])
  {
    CGRectDivide(remainder, &v38, &remainder, v17, CGRectMinYEdge);
    if (!self->_templateLayout)
    {
      secondaryTitleLabel = self->_secondaryTitleLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)secondaryTitleLabel setFrame:?];
    }
  }

  v19 = v13 + 28.0;
  if ([(NSString *)self->_secondaryValue length])
  {
    [(UILabel *)self->_secondaryValueLabel pkui_sizeThatFits:1 forceWordWrap:*&v38.size];
    v21 = v20;
    v22 = remainder.size.width;
    if (v23 <= remainder.size.width - v15)
    {
      if (!self->_templateLayout)
      {
        secondaryValueLabel = self->_secondaryValueLabel;
        goto LABEL_14;
      }
    }

    else
    {
      v24 = remainder.origin.x;
      v25 = remainder.origin.y;
      v26 = remainder.size.height;
      CGRectDivide(*(&v22 - 2), &v38, &remainder, 4.0, CGRectMinYEdge);
      CGRectDivide(remainder, &v38, &remainder, v21, CGRectMinYEdge);
      v19 = v19 + v21 + 4.0;
      if (!self->_templateLayout)
      {
        secondaryValueLabel = self->_secondaryValueLabel;
LABEL_14:
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        [(UILabel *)secondaryValueLabel setFrame:?];
      }
    }

    CGRectDivide(remainder, &v38, &remainder, 4.0, CGRectMinYEdge);
    v19 = v19 + 4.0;
    goto LABEL_16;
  }

  v21 = *(MEMORY[0x1E695F060] + 8);
  if (!self->_templateLayout)
  {
    [(UILabel *)self->_secondaryValueLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

LABEL_16:
  if ([(NSString *)self->_tertiaryText length])
  {
    CGRectDivide(remainder, &v38, &remainder, 4.0, CGRectMinYEdge);
    [(UILabel *)self->_tertiaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v29 = v28;
    CGRectDivide(remainder, &v38, &remainder, v28, CGRectMinYEdge);
    if (!self->_templateLayout)
    {
      [(UILabel *)self->_tertiaryLabel setFrame:*&v38.origin, *&v38.size];
    }

    v19 = v19 + v29 + 4.0;
  }

  else if (!self->_templateLayout)
  {
    [(UILabel *)self->_tertiaryLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  if (([(UIButton *)self->_secondaryTitleButton isHidden]& 1) == 0)
  {
    CGRectDivide(remainder, &v38, &remainder, 4.0, CGRectMinYEdge);
    [(UIButton *)self->_secondaryTitleButton sizeThatFits:remainder.size.width, remainder.size.height];
    v31 = v30;
    CGRectDivide(remainder, &v38, &remainder, v30, CGRectMinYEdge);
    if (!self->_templateLayout)
    {
      secondaryTitleButton = self->_secondaryTitleButton;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UIButton *)secondaryTitleButton setFrame:?];
    }

    v19 = v19 + v31 + 4.0;
  }

  v33 = fmax(v17, v21);
  if (v33 <= 0.0)
  {
    v34 = v19;
  }

  else
  {
    v34 = v33 + 4.0 + v19;
  }

  v35 = v34;
  v36 = ceilf(v35);
  v37 = width;
  result.height = v36;
  result.width = v37;
  return result;
}

- (void)didPressSecondaryTitleButton:(id)button
{
  secondaryTitleButtonAction = self->_secondaryTitleButtonAction;
  if (secondaryTitleButtonAction)
  {
    if (self->_secondaryTitleLinkURL)
    {
      secondaryTitleButtonAction[2]();
    }
  }
}

@end