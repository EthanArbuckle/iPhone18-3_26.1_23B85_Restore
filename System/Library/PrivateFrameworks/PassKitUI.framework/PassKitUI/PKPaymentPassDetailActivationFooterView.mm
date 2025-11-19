@interface PKPaymentPassDetailActivationFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentPassDetailActivationFooterView)initWithFrame:(CGRect)a3 activationAction:(id)a4;
- (void)layoutSubviews;
- (void)setActivationButtonText:(id)a3;
- (void)setFooterText:(id)a3;
- (void)setupActivationButtonWithAction:(id)a3;
- (void)setupFooter;
@end

@implementation PKPaymentPassDetailActivationFooterView

- (PKPaymentPassDetailActivationFooterView)initWithFrame:(CGRect)a3 activationAction:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PKPaymentPassDetailActivationFooterView;
  v10 = [(PKPaymentPassDetailActivationFooterView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(PKPaymentPassDetailActivationFooterView *)v10 setupActivationButtonWithAction:v9];
    [(PKPaymentPassDetailActivationFooterView *)v11 setupFooter];
  }

  return v11;
}

- (void)setupActivationButtonWithAction:(id)a3
{
  v4 = MEMORY[0x1E69DC740];
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDD08];
  v7 = a3;
  v8 = [v5 preferredFontForTextStyle:v6];
  v12 = [v4 pkui_plainConfigurationWithTitle:0 font:v8];

  [v12 setButtonSize:2];
  [v12 setContentInsets:{5.0, 0.0, 0.0, 0.0}];
  v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v12 primaryAction:v7];

  activationButton = self->_activationButton;
  self->_activationButton = v9;

  v11 = [(PKPaymentPassDetailActivationFooterView *)self contentView];
  [v11 addSubview:self->_activationButton];
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
  v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v8 setTextColor:v9];

  v10 = [(PKPaymentPassDetailActivationFooterView *)self contentView];
  [v10 addSubview:self->_footerTextLabel];
}

- (void)setFooterText:(id)a3
{
  [(UILabel *)self->_footerTextLabel setText:a3];

  [(PKPaymentPassDetailActivationFooterView *)self setNeedsLayout];
}

- (void)setActivationButtonText:(id)a3
{
  [(UIButton *)self->_activationButton pkui_updateConfigurationWithTitle:?];
  if (a3)
  {
    v5 = [(PKPaymentPassDetailActivationFooterView *)self contentView];
    [v5 addSubview:self->_activationButton];
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
  v3 = [(PKPaymentPassDetailActivationFooterView *)self _shouldReverseLayoutDirection];
  v4 = [(PKPaymentPassDetailActivationFooterView *)self contentView];
  [v4 bounds];
  [v4 directionalLayoutMargins];
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
  if (v3)
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
    if (v3)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PKPaymentPassDetailActivationFooterView *)self contentView];
  [v6 directionalLayoutMargins];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(PKPaymentPassDetailActivationFooterView *)self directionalLayoutMargins];
  v17 = fmax(width - v10 - v14 - v15 - v16, 0.0);
  [(UILabel *)self->_footerTextLabel sizeThatFits:v17, height];
  v19 = v18;
  v20 = [(UIButton *)self->_activationButton superview];
  if (v20)
  {
    [(UIButton *)self->_activationButton sizeThatFits:v17, height];
    v22 = v21;
  }

  else
  {
    v22 = *(MEMORY[0x1E695F060] + 8);
  }

  v23 = v8 + v12 + v22;
  v24 = [(UILabel *)self->_footerTextLabel text];
  v25 = [v24 length];

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