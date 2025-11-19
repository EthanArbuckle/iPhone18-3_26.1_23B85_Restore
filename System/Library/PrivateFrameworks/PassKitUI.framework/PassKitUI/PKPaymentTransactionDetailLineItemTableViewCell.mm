@interface PKPaymentTransactionDetailLineItemTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentTransactionDetailLineItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setHasTrailingLineSeperator:(BOOL)a3;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)setTitleColor:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setValueColor:(id)a3;
- (void)setValueFont:(id)a3;
- (void)setValueText:(id)a3;
@end

@implementation PKPaymentTransactionDetailLineItemTableViewCell

- (PKPaymentTransactionDetailLineItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v17.receiver = self;
  v17.super_class = PKPaymentTransactionDetailLineItemTableViewCell;
  v4 = [(PKPaymentTransactionDetailLineItemTableViewCell *)&v17 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v7;

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    objc_storeStrong(&v4->_titleFont, v9);
    valueFont = v4->_valueFont;
    v4->_valueFont = v9;
    v16 = v9;

    v11 = [MEMORY[0x1E69DC888] labelColor];
    objc_storeStrong(&v4->_titleColor, v11);
    valueColor = v4->_valueColor;
    v4->_valueColor = v11;
    v13 = v11;

    v14 = [(PKPaymentTransactionDetailLineItemTableViewCell *)v4 contentView];
    [v14 addSubview:v4->_titleLabel];
    [v14 addSubview:v4->_valueLabel];
    [(UILabel *)v4->_titleLabel setFont:v4->_titleFont];
    [(UILabel *)v4->_titleLabel setTextColor:v4->_titleColor];
    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(UILabel *)v4->_valueLabel setFont:v4->_valueFont];
    [(UILabel *)v4->_valueLabel setTextColor:v4->_valueColor];
    [(UILabel *)v4->_valueLabel setNumberOfLines:1];
    [(UILabel *)v4->_valueLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

    [(PKPaymentTransactionDetailLineItemTableViewCell *)v4 setSelectionStyle:0];
    [(PKPaymentTransactionDetailLineItemTableViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B98F0]];
  }

  return v4;
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_titleText] & 1) == 0)
  {
    objc_storeStrong(&self->_titleText, a3);
    [(UILabel *)self->_titleLabel setText:self->_titleText];
    [(PKPaymentTransactionDetailLineItemTableViewCell *)self setNeedsLayout];
  }
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_titleFont] & 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, a3);
    [(UILabel *)self->_titleLabel setFont:self->_titleFont];
    [(PKPaymentTransactionDetailLineItemTableViewCell *)self setNeedsLayout];
  }
}

- (void)setTitleColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_titleColor] & 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, a3);
    [(UILabel *)self->_titleLabel setTextColor:self->_titleColor];
  }
}

- (void)setValueText:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_valueText] & 1) == 0)
  {
    objc_storeStrong(&self->_valueText, a3);
    [(UILabel *)self->_valueLabel setText:v5];
    [(PKPaymentTransactionDetailLineItemTableViewCell *)self setNeedsLayout];
  }
}

- (void)setValueFont:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_valueFont] & 1) == 0)
  {
    objc_storeStrong(&self->_valueFont, a3);
    [(UILabel *)self->_valueLabel setFont:self->_valueFont];
    [(PKPaymentTransactionDetailLineItemTableViewCell *)self setNeedsLayout];
  }
}

- (void)setValueColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_valueColor] & 1) == 0)
  {
    objc_storeStrong(&self->_valueColor, a3);
    [(UILabel *)self->_valueLabel setTextColor:self->_valueColor];
  }
}

- (void)setHasTrailingLineSeperator:(BOOL)a3
{
  if (self->_hasTrailingLineSeperator == !a3)
  {
    self->_hasTrailingLineSeperator = a3;
    [(PKPaymentTransactionDetailLineItemTableViewCell *)self setSeparatorStyle:[(PKPaymentTransactionDetailLineItemTableViewCell *)self separatorStyleForTrailingLineSeparator]];

    [(PKPaymentTransactionDetailLineItemTableViewCell *)self setNeedsLayout];
  }
}

- (void)setSeparatorStyle:(int64_t)a3
{
  if ([(PKPaymentTransactionDetailLineItemTableViewCell *)self separatorStyleForTrailingLineSeparator]== a3)
  {
    v5.receiver = self;
    v5.super_class = PKPaymentTransactionDetailLineItemTableViewCell;
    [(PKPaymentTransactionDetailLineItemTableViewCell *)&v5 setSeparatorStyle:a3];
  }
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PKPaymentTransactionDetailLineItemTableViewCell;
  [(PKPaymentTransactionDetailLineItemTableViewCell *)&v29 layoutSubviews];
  v3 = [(PKPaymentTransactionDetailLineItemTableViewCell *)self _shouldReverseLayoutDirection];
  v4 = [(PKPaymentTransactionDetailLineItemTableViewCell *)self contentView];
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v6 = v5;
  v8 = v7;
  [v4 bounds];
  v12 = v6 + v11;
  v13 = 11.0;
  v14 = v9 + 11.0;
  v16 = v15 - (v6 + v8);
  if (self->_hasTrailingLineSeperator)
  {
    v13 = 22.0;
  }

  v17 = v10 - v13;
  remainder.origin.x = v12;
  remainder.origin.y = v9 + 11.0;
  remainder.size.width = v16;
  remainder.size.height = v10 - v13;
  if (v3)
  {
    v18 = CGRectMinXEdge;
  }

  else
  {
    v18 = CGRectMaxXEdge;
  }

  [(UILabel *)self->_valueLabel sizeThatFits:v16, v17];
  v20 = v19;
  v22 = v21;
  memset(&slice, 0, sizeof(slice));
  v30.origin.x = v12;
  v30.origin.y = v14;
  v30.size.width = v16;
  v30.size.height = v17;
  CGRectDivide(v30, &slice, &remainder, v20, v18);
  memset(&v26, 0, sizeof(v26));
  memset(&v25, 0, sizeof(v25));
  CGRectDivide(slice, &v25, &v26, v22, CGRectMinYEdge);
  [(UILabel *)self->_valueLabel setFrame:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  CGRectDivide(remainder, &v23, &v24, 6.0, v18);
  [(UILabel *)self->_titleLabel setFrame:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(PKPaymentTransactionDetailLineItemTableViewCell *)self contentView:a3.width];
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v7 = v6;
  v9 = v8;
  [v5 frame];
  v11 = v10 - v7 - v9;
  if (self->_hasTrailingLineSeperator)
  {
    v12 = 11.0;
  }

  else
  {
    v12 = 0.0;
  }

  [(UILabel *)self->_valueLabel sizeThatFits:v11, 1.79769313e308];
  v14 = v13;
  LODWORD(v16) = 1148846080;
  LODWORD(v17) = 1112014848;
  [(UILabel *)self->_titleLabel systemLayoutSizeFittingSize:v11 - v15 + -6.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:v16, v17];
  if (v14 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v20 = v12 + v19 + 11.0;

  v21 = width;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

@end