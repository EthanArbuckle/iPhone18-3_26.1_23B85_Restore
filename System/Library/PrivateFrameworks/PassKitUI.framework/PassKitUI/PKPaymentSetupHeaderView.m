@interface PKPaymentSetupHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentSetupHeaderView)initWithFrame:(CGRect)a3;
- (double)_leadingPadding;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTitle:(id)a3;
@end

@implementation PKPaymentSetupHeaderView

- (PKPaymentSetupHeaderView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupHeaderView;
  v3 = [(PKPaymentSetupHeaderView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v4;

    v6 = v3->_label;
    v7 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:25.0];
    [(UILabel *)v6 setFont:v7];

    [(PKPaymentSetupHeaderView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PKPaymentSetupHeaderView *)self _leadingPadding];
  [(UILabel *)self->_label sizeThatFits:width + v6 * -2.0, height];
  v8 = v7 + 10.0;
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKPaymentSetupHeaderView;
  [(PKPaymentSetupHeaderView *)&v11 layoutSubviews];
  [(PKPaymentSetupHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PKPaymentSetupHeaderView *)self _leadingPadding];
  v8 = v7;
  [(UILabel *)self->_label sizeThatFits:v4 + v7 * -2.0, v6];
  [(UILabel *)self->_label setFrame:v8, 5.0, v9, v10];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupHeaderView;
  [(PKPaymentSetupHeaderView *)&v3 prepareForReuse];
  [(UILabel *)self->_label setText:0];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_label setText:v5];

  [(PKPaymentSetupHeaderView *)self setNeedsLayout];
}

- (double)_leadingPadding
{
  v2 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [v2 directionalLayoutMargins];
  v4 = v3;

  return v4;
}

@end