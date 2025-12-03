@interface PKCreditBalanceCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCreditBalanceCell)initWithFrame:(CGRect)frame;
- (void)_createSubviews;
- (void)_updateDefaultValues;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAmountFont:(id)font;
- (void)setAmountText:(id)text;
- (void)setBalanceFont:(id)font;
- (void)setBalanceLabelNumberOfLines:(int64_t)lines;
- (void)setBalanceText:(id)text;
- (void)setCreditAvailableFont:(id)font;
- (void)setCreditAvailableText:(id)text;
- (void)setCreditAvailableTextColor:(id)color;
- (void)setItem:(id)item;
- (void)setUseAccessibilityLayout:(BOOL)layout;
@end

@implementation PKCreditBalanceCell

- (PKCreditBalanceCell)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PKCreditBalanceCell;
  v3 = [(PKDashboardCollectionViewCell *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v3->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
    [(PKCreditBalanceCell *)v3 _createSubviews];
  }

  return v3;
}

- (void)_createSubviews
{
  contentView = [(PKCreditBalanceCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  labelBalance = self->_labelBalance;
  self->_labelBalance = v3;

  font = [(UILabel *)self->_labelBalance font];
  defaultFont = self->_defaultFont;
  self->_defaultFont = font;

  [(UILabel *)self->_labelBalance setNumberOfLines:1];
  [(UILabel *)self->_labelBalance setAdjustsFontSizeToFitWidth:1];
  v7 = self->_labelBalance;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v7 setTextColor:labelColor];

  [(UILabel *)self->_labelBalance setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
  [contentView addSubview:self->_labelBalance];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  labelAmount = self->_labelAmount;
  self->_labelAmount = v9;

  [(UILabel *)self->_labelAmount setNumberOfLines:1];
  [(UILabel *)self->_labelAmount setAdjustsFontSizeToFitWidth:1];
  v11 = self->_labelAmount;
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v11 setTextColor:labelColor2];

  [(UILabel *)self->_labelAmount setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [contentView addSubview:self->_labelAmount];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  labelCreditAvailable = self->_labelCreditAvailable;
  self->_labelCreditAvailable = v13;

  [(UILabel *)self->_labelCreditAvailable setNumberOfLines:1];
  [(UILabel *)self->_labelCreditAvailable setAdjustsFontSizeToFitWidth:1];
  v15 = self->_labelCreditAvailable;
  labelColor3 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v15 setTextColor:labelColor3];

  [(UILabel *)self->_labelCreditAvailable setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  [contentView addSubview:self->_labelCreditAvailable];
  [(PKCreditBalanceCell *)self _updateDefaultValues];
  [(PKCreditBalanceCell *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9500]];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKCreditBalanceCell;
  [(PKDashboardCollectionViewCell *)&v3 prepareForReuse];
  [(PKCreditBalanceCell *)self _updateDefaultValues];
}

- (void)_updateDefaultValues
{
  [(PKCreditBalanceCell *)self setBalanceText:0];
  [(PKCreditBalanceCell *)self setBalanceFont:self->_defaultFont];
  [(PKCreditBalanceCell *)self setBalanceLabelNumberOfLines:1];
  [(PKCreditBalanceCell *)self setAmountText:0];
  [(PKCreditBalanceCell *)self setAmountFont:self->_defaultFont];
  [(PKCreditBalanceCell *)self setCreditAvailableText:0];
  [(PKCreditBalanceCell *)self setCreditAvailableFont:self->_defaultFont];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(PKCreditBalanceCell *)self setCreditAvailableTextColor:labelColor];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = PKCreditBalanceCell;
  [(PKDashboardCollectionViewCell *)&v22 layoutSubviews];
  v3 = 8.0;
  if (!self->_isCompactUI)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v3 = 16.0;
    }

    else
    {
      v3 = 12.0;
    }
  }

  v4 = _UISolariumFeatureFlagEnabled();
  [(PKCreditBalanceCell *)self bounds];
  v9 = 12.0;
  if (!v4)
  {
    v9 = 8.0;
  }

  v10 = v3 + v5;
  v11 = v9 + v6;
  v12 = v7 - (v3 + v3);
  v13 = 16.0;
  if (v4)
  {
    v13 = 24.0;
  }

  v14 = v8 - v13;
  [(PKCreditBalanceCell *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  v20.size.width = v12;
  v20.size.height = v14;
  [(UILabel *)self->_labelBalance sizeThatFits:v12, v14, *&v10, *&v11];
  v16 = v15 + 0.0;
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v14;
  CGRectDivide(v23, &slice, &v20, v16, CGRectMinYEdge);
  labelBalance = self->_labelBalance;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)labelBalance setFrame:?];
  [(UILabel *)self->_labelAmount sizeThatFits:v20.size.width, v20.size.height];
  v24 = v20;
  CGRectDivide(v20, &slice, &v20, v24.origin.y + 0.0, CGRectMinYEdge);
  labelAmount = self->_labelAmount;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)labelAmount setFrame:?];
  [(UILabel *)self->_labelCreditAvailable sizeThatFits:v20.size.width, v20.size.height];
  v25 = v20;
  CGRectDivide(v20, &slice, &v20, v25.origin.y + 0.0, CGRectMinYEdge);
  labelCreditAvailable = self->_labelCreditAvailable;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)labelCreditAvailable setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 8.0;
  if (!self->_isCompactUI)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v6 = 16.0;
    }

    else
    {
      v6 = 12.0;
    }
  }

  v7 = width + v6 * -2.0;
  if (_UISolariumFeatureFlagEnabled())
  {
    v8 = 24.0;
  }

  else
  {
    v8 = 16.0;
  }

  [(UILabel *)self->_labelBalance sizeThatFits:v7, height];
  v10 = v8 + v9 + 0.0;
  [(UILabel *)self->_labelAmount sizeThatFits:v7, height];
  v12 = v10 + v11 + 0.0;
  [(UILabel *)self->_labelCreditAvailable sizeThatFits:v7, height];
  v14 = v12 + v13 + 0.0;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)setBalanceText:(id)text
{
  textCopy = text;
  v6 = self->_balanceText;
  v7 = textCopy;
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
    objc_storeStrong(&self->_balanceText, text);
    [(UILabel *)self->_labelBalance setText:self->_balanceText];
    [(PKCreditBalanceCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setBalanceFont:(id)font
{
  fontCopy = font;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_balanceFont, font);
    [(UILabel *)self->_labelBalance setFont:fontCopy];
    [(PKCreditBalanceCell *)self setNeedsLayout];
  }
}

- (void)setBalanceLabelNumberOfLines:(int64_t)lines
{
  if (self->_balanceLabelNumberOfLines != lines)
  {
    self->_balanceLabelNumberOfLines = lines;
    [(UILabel *)self->_labelBalance setNumberOfLines:?];

    [(PKCreditBalanceCell *)self setNeedsLayout];
  }
}

- (void)setAmountText:(id)text
{
  textCopy = text;
  v6 = self->_amountText;
  v7 = textCopy;
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
    objc_storeStrong(&self->_amountText, text);
    [(UILabel *)self->_labelAmount setText:self->_amountText];
    [(PKCreditBalanceCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setAmountFont:(id)font
{
  fontCopy = font;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_amountFont, font);
    [(UILabel *)self->_labelAmount setFont:self->_amountFont];
    [(PKCreditBalanceCell *)self setNeedsLayout];
  }
}

- (void)setCreditAvailableText:(id)text
{
  textCopy = text;
  v6 = self->_creditAvailableText;
  v7 = textCopy;
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
    objc_storeStrong(&self->_creditAvailableText, text);
    [(UILabel *)self->_labelCreditAvailable setText:self->_creditAvailableText];
    [(PKCreditBalanceCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setCreditAvailableFont:(id)font
{
  fontCopy = font;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_creditAvailableFont, font);
    [(UILabel *)self->_labelCreditAvailable setFont:self->_creditAvailableFont];
    [(PKCreditBalanceCell *)self setNeedsLayout];
  }
}

- (void)setCreditAvailableTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_creditAvailableTextColor, color);
    [(UILabel *)self->_labelCreditAvailable setTextColor:self->_creditAvailableTextColor];
  }
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_item, item);
    [(PKCreditBalanceCell *)self setNeedsLayout];
  }
}

- (void)setUseAccessibilityLayout:(BOOL)layout
{
  if (self->_useAccessibilityLayout != layout)
  {
    self->_useAccessibilityLayout = layout;
    [(PKCreditBalanceCell *)self setNeedsLayout];
  }
}

@end