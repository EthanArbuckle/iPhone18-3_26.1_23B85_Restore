@interface PKPaymentSetupHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentSetupHeaderView)initWithFrame:(CGRect)frame;
- (double)_leadingPadding;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTitle:(id)title;
@end

@implementation PKPaymentSetupHeaderView

- (PKPaymentSetupHeaderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupHeaderView;
  v3 = [(PKPaymentSetupHeaderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_label setText:titleCopy];

  [(PKPaymentSetupHeaderView *)self setNeedsLayout];
}

- (double)_leadingPadding
{
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [valueCellConfiguration directionalLayoutMargins];
  v4 = v3;

  return v4;
}

@end