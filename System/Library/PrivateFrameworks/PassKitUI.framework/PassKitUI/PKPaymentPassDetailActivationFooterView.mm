@interface PKPaymentPassDetailActivationFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentPassDetailActivationFooterView)initWithFrame:(CGRect)frame activationAction:(id)action;
- (void)layoutSubviews;
- (void)setActivationButtonText:(id)text;
- (void)setFooterText:(id)text;
- (void)setupActivationButtonWithAction:(id)action;
- (void)setupFooter;
@end

@implementation PKPaymentPassDetailActivationFooterView

- (PKPaymentPassDetailActivationFooterView)initWithFrame:(CGRect)frame activationAction:(id)action
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = PKPaymentPassDetailActivationFooterView;
  height = [(PKPaymentPassDetailActivationFooterView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(PKPaymentPassDetailActivationFooterView *)height setupActivationButtonWithAction:actionCopy];
    [(PKPaymentPassDetailActivationFooterView *)v11 setupFooter];
  }

  return v11;
}

- (void)setupActivationButtonWithAction:(id)action
{
  v4 = MEMORY[0x1E69DC740];
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDD08];
  actionCopy = action;
  v8 = [v5 preferredFontForTextStyle:v6];
  v12 = [v4 pkui_plainConfigurationWithTitle:0 font:v8];

  [v12 setButtonSize:2];
  [v12 setContentInsets:{5.0, 0.0, 0.0, 0.0}];
  v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v12 primaryAction:actionCopy];

  activationButton = self->_activationButton;
  self->_activationButton = v9;

  contentView = [(PKPaymentPassDetailActivationFooterView *)self contentView];
  [contentView addSubview:self->_activationButton];
}

- (void)setupFooter
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  footerTextLabel = self->_footerTextLabel;
  self->_footerTextLabel = v4;

  [(UILabel *)self->_footerTextLabel setLineBreakMode:0];
  [(UILabel *)self->_footerTextLabel setTextAlignment:4];
  [(UILabel *)self->_footerTextLabel setNumberOfLines:0];
  v6 = self->_footerTextLabel;
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD30]];
  [(UILabel *)v6 setFont:v7];

  v8 = self->_footerTextLabel;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v8 setTextColor:secondaryLabelColor];

  contentView = [(PKPaymentPassDetailActivationFooterView *)self contentView];
  [contentView addSubview:self->_footerTextLabel];
}

- (void)setFooterText:(id)text
{
  [(UILabel *)self->_footerTextLabel setText:text];

  [(PKPaymentPassDetailActivationFooterView *)self setNeedsLayout];
}

- (void)setActivationButtonText:(id)text
{
  [(UIButton *)self->_activationButton pkui_updateConfigurationWithTitle:?];
  if (text)
  {
    contentView = [(PKPaymentPassDetailActivationFooterView *)self contentView];
    [contentView addSubview:self->_activationButton];
  }

  else
  {
    [(UIButton *)self->_activationButton removeFromSuperview];
  }

  [(PKPaymentPassDetailActivationFooterView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = PKPaymentPassDetailActivationFooterView;
  [(PKPaymentPassDetailActivationFooterView *)&v43 layoutSubviews];
  _shouldReverseLayoutDirection = [(PKPaymentPassDetailActivationFooterView *)self _shouldReverseLayoutDirection];
  contentView = [(PKPaymentPassDetailActivationFooterView *)self contentView];
  [contentView bounds];
  [contentView directionalLayoutMargins];
  UIRectInset();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UILabel *)self->_footerTextLabel sizeThatFits:v9, v11];
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  if (_shouldReverseLayoutDirection)
  {
    v21.n128_f64[0] = CGRectGetMaxX(*&v17) - v14;
  }

  else
  {
    v21.n128_f64[0] = CGRectGetMinX(*&v17);
  }

  footerTextLabel = self->_footerTextLabel;
  v22.n128_u64[0] = v8;
  v23.n128_f64[0] = v14;
  v24.n128_u64[0] = v16;
  PKRectRoundToPixel(v21, v22, v23, v24, v25);
  [(UILabel *)footerTextLabel setFrame:?];
  activationButton = self->_activationButton;
  if (activationButton)
  {
    [(UIButton *)activationButton sizeThatFits:v10, v12];
    v29 = v28;
    v31 = v30;
    v32 = v6;
    v33 = v8;
    v34 = v10;
    v35 = v12;
    if (_shouldReverseLayoutDirection)
    {
      MinX = CGRectGetMaxX(*&v32) - v29;
    }

    else
    {
      MinX = CGRectGetMinX(*&v32);
    }

    [(UILabel *)self->_footerTextLabel frame];
    v37.n128_u64[0] = CGRectGetMaxY(v44);
    v38.n128_f64[0] = fmin(v29, v10);
    v39 = self->_activationButton;
    v40.n128_f64[0] = MinX;
    v41.n128_u64[0] = v31;
    PKRectRoundToPixel(v40, v37, v38, v41, v42);
    [(UIButton *)v39 setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(PKPaymentPassDetailActivationFooterView *)self contentView];
  [contentView directionalLayoutMargins];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(PKPaymentPassDetailActivationFooterView *)self directionalLayoutMargins];
  v17 = fmax(width - v10 - v14 - v15 - v16, 0.0);
  [(UILabel *)self->_footerTextLabel sizeThatFits:v17, height];
  v19 = v18;
  superview = [(UIButton *)self->_activationButton superview];
  if (superview)
  {
    [(UIButton *)self->_activationButton sizeThatFits:v17, height];
    v22 = v21;
  }

  else
  {
    v22 = *(MEMORY[0x1E695F060] + 8);
  }

  v23 = v8 + v12 + v22;
  text = [(UILabel *)self->_footerTextLabel text];
  v25 = [text length];

  if (v25)
  {
    v26 = v19 + v23;
  }

  else
  {
    v26 = v23;
  }

  v27 = width;
  result.height = v26;
  result.width = v27;
  return result;
}

@end