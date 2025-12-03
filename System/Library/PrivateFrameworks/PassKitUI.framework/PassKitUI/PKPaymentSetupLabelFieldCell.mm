@interface PKPaymentSetupLabelFieldCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentSetupLabelFieldCell)init;
- (void)_buttonTapped;
- (void)_updateDisplay:(BOOL)display;
- (void)_updateDisplayForFieldTypeLabel:(id)label;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)appearance;
@end

@implementation PKPaymentSetupLabelFieldCell

- (PKPaymentSetupLabelFieldCell)init
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupLabelFieldCell;
  return [(PKPaymentSetupFieldCell *)&v3 init];
}

- (void)_updateDisplay:(BOOL)display
{
  if (display)
  {
    [(PKPaymentSetupFieldCell *)self _applyDefaultValues];
  }

  paymentSetupField = [(PKPaymentSetupFieldCell *)self paymentSetupField];
  labelFieldObject = [paymentSetupField labelFieldObject];
  [(PKPaymentSetupLabelFieldCell *)self _updateDisplayForFieldTypeLabel:labelFieldObject];
}

- (void)_updateDisplayForFieldTypeLabel:(id)label
{
  labelCopy = label;
  textLabel = [(PKPaymentSetupLabelFieldCell *)self textLabel];
  title = [labelCopy title];
  [textLabel setText:title];

  v7 = PKOBKListTextFieldCellLabelFont();
  [textLabel setFont:v7];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [textLabel setTextColor:systemGrayColor];

  [textLabel setNumberOfLines:0];
  alingment = [labelCopy alingment];
  if (alingment == 1)
  {
    v10 = 0;
  }

  else
  {
    if (alingment != 2)
    {
      goto LABEL_6;
    }

    v10 = 1;
  }

  [textLabel setTextAlignment:v10];
LABEL_6:
  buttonTitle = [labelCopy buttonTitle];
  v12 = [buttonTitle length];
  button = self->_button;
  if (v12)
  {
    if (!button)
    {
      v14 = MEMORY[0x1E69DC740];
      v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
      v16 = [v14 pkui_plainConfigurationWithTitle:buttonTitle font:v15];

      objc_initWeak(&location, self);
      v17 = MEMORY[0x1E69DC628];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __64__PKPaymentSetupLabelFieldCell__updateDisplayForFieldTypeLabel___block_invoke;
      v26 = &unk_1E8010A60;
      objc_copyWeak(&v27, &location);
      v18 = [v17 actionWithHandler:&v23];
      v19 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v16 primaryAction:{v18, v23, v24, v25, v26}];
      v20 = self->_button;
      self->_button = v19;

      [(UIButton *)self->_button setConfigurationUpdateHandler:&__block_literal_global_137];
      contentView = [(PKPaymentSetupLabelFieldCell *)self contentView];
      [contentView addSubview:self->_button];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(UIButton *)button removeFromSuperview];
    v22 = self->_button;
    self->_button = 0;
  }
}

void __64__PKPaymentSetupLabelFieldCell__updateDisplayForFieldTypeLabel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _buttonTapped];
}

void __64__PKPaymentSetupLabelFieldCell__updateDisplayForFieldTypeLabel___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  v3 = [v2 titleLabel];

  [v3 setTextAlignment:1];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  PKFloatCeilToPixel(fits, *&fits.height);
  v7 = v6;
  v8 = width + PKTableViewCellTextInset() * -2.0;
  [(PKPaymentSetupLabelFieldCell *)self layoutMargins];
  [(PKPaymentSetupLabelFieldCell *)self layoutMargins];
  [(PKPaymentSetupLabelFieldCell *)self layoutMargins];
  v10 = v9;
  [(PKPaymentSetupLabelFieldCell *)self layoutMargins];
  v12 = height - (v10 + v11);
  textLabel = [(PKPaymentSetupLabelFieldCell *)self textLabel];
  [textLabel pkui_sizeThatFits:1 forceWordWrap:{v8, v12}];
  v15 = v14;

  v16.n128_u64[0] = v15;
  PKFloatCeilToPixel(v16, v17);
  v19 = v18 + 10.0 + 25.0;
  button = self->_button;
  if (button)
  {
    [(UIButton *)button sizeThatFits:v8, 1.79769313e308];
    v22.n128_u64[0] = v21.n128_u64[0];
    PKFloatCeilToPixel(v22, v21);
    v19 = v19 + 25.0 + v23;
  }

  [(PKPaymentSetupFieldCell *)self _minimumHeight];
  if (v19 <= v24)
  {
    [(PKPaymentSetupFieldCell *)self _minimumHeight];
    v19 = v25;
  }

  v26 = v7;
  v27 = v19;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PKPaymentSetupLabelFieldCell;
  [(PKPaymentSetupFieldCell *)&v18 layoutSubviews];
  contentView = [(PKPaymentSetupLabelFieldCell *)self contentView];
  [contentView bounds];
  v5 = v4 + PKTableViewCellTextInset() * -2.0;

  textLabel = [(PKPaymentSetupLabelFieldCell *)self textLabel];
  [textLabel frame];
  v7 = PKTableViewCellTextInset();
  [(PKPaymentSetupLabelFieldCell *)self bounds];
  [textLabel pkui_sizeThatFits:1 forceWordWrap:{v5, CGRectGetHeight(v19) + -10.0 + -25.0}];
  v9.n128_u64[0] = v8.n128_u64[0];
  PKFloatCeilToPixel(v9, v8);
  v11 = v10;
  [textLabel setFrame:{v7, 10.0, v5, v10}];
  button = self->_button;
  if (button)
  {
    [(UIButton *)button frame];
    v13 = PKTableViewCellTextInset();
    v20.origin.y = 10.0;
    v20.origin.x = v7;
    v20.size.width = v5;
    v20.size.height = v11;
    v14 = CGRectGetMaxY(v20) + 25.0 + 25.0;
    [(UIButton *)self->_button sizeThatFits:v5, 1.79769313e308];
    v16.n128_u64[0] = v15.n128_u64[0];
    PKFloatCeilToPixel(v16, v15);
    [(UIButton *)self->_button setFrame:v13, v14, v5, v17];
  }
}

- (void)_buttonTapped
{
  delegate = [(PKPaymentSetupFieldCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate fieldCellDidTapButton:self];
  }
}

- (void)pk_applyAppearance:(id)appearance
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupLabelFieldCell;
  appearanceCopy = appearance;
  [(PKPaymentSetupFieldCell *)&v6 pk_applyAppearance:appearanceCopy];
  backgroundColor = [appearanceCopy backgroundColor];

  [(PKPaymentSetupLabelFieldCell *)self setBackgroundColor:backgroundColor];
}

@end