@interface PKPaymentSetupFieldFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentSetupFieldFooterViewDelegate)delegate;
- (void)_buttonTapped;
- (void)_updateDisplayForFieldTypeLabel;
- (void)layoutSubviews;
- (void)setField:(id)field;
@end

@implementation PKPaymentSetupFieldFooterView

- (void)setField:(id)field
{
  fieldCopy = field;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_field, field);
    [(PKPaymentSetupFieldFooterView *)self _updateDisplayForFieldTypeLabel];
  }
}

- (void)_updateDisplayForFieldTypeLabel
{
  textLabel = [(PKPaymentSetupFieldFooterView *)self textLabel];
  v4 = *MEMORY[0x1E69DDD28];
  if ([(PKPaymentSetupFieldLabel *)self->_field isFieldTypeFooter])
  {
    footerFieldObject = [(PKPaymentSetupFieldLabel *)self->_field footerFieldObject];
    fontScale = [footerFieldObject fontScale];

    if (fontScale == 1)
    {
      v7 = *MEMORY[0x1E69DDD80];

      v4 = v7;
    }
  }

  v8 = *MEMORY[0x1E69DDC20];
  v9 = PKFontForDefaultDesign(v4, *MEMORY[0x1E69DDC20]);
  [textLabel setFont:v9];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [textLabel setTextColor:systemGrayColor];

  [textLabel setNumberOfLines:0];
  title = [(PKPaymentSetupFieldLabel *)self->_field title];
  v12 = PKFontForDefaultDesign(v4, v8);
  v13 = PKAttributedStringByParsingEmphasisInString(title, v12, 0);

  [textLabel setAttributedText:v13];
  alingment = [(PKPaymentSetupFieldLabel *)self->_field alingment];
  if (alingment == 1)
  {
    v15 = 0;
  }

  else
  {
    if (alingment != 2)
    {
      goto LABEL_9;
    }

    v15 = 1;
  }

  [textLabel setTextAlignment:v15];
LABEL_9:
  buttonTitle = [(PKPaymentSetupFieldLabel *)self->_field buttonTitle];
  v17 = [buttonTitle length];
  button = self->_button;
  if (v17)
  {
    if (!button)
    {
      objc_initWeak(&location, self);
      v19 = MEMORY[0x1E69DC628];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __64__PKPaymentSetupFieldFooterView__updateDisplayForFieldTypeLabel__block_invoke;
      v27 = &unk_1E8010A60;
      objc_copyWeak(&v28, &location);
      v20 = [v19 actionWithHandler:&v24];
      v21 = PKOBKLearnMoreButton(@"info.circle.fill", buttonTitle, v20);
      v22 = self->_button;
      self->_button = v21;

      [(PKPaymentSetupFieldFooterView *)self addSubview:self->_button, v24, v25, v26, v27];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(UIButton *)button removeFromSuperview];
    v23 = self->_button;
    self->_button = 0;
  }

  [(PKPaymentSetupFieldFooterView *)self setNeedsLayout];
}

void __64__PKPaymentSetupFieldFooterView__updateDisplayForFieldTypeLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _buttonTapped];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  PKFloatCeilToPixel(fits, *&fits.height);
  v7 = v6;
  v8 = width + PKTableViewCellTextInset() * -2.0;
  contentView = [(PKPaymentSetupFieldFooterView *)self contentView];
  [contentView layoutMargins];
  contentView2 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [contentView2 layoutMargins];

  contentView3 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [contentView3 layoutMargins];
  v13 = v12;
  contentView4 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [contentView4 layoutMargins];
  v16 = height - (v13 + v15);

  textLabel = [(PKPaymentSetupFieldFooterView *)self textLabel];
  [textLabel pkui_sizeThatFits:1 forceWordWrap:{v8, v16}];
  v19 = v18;

  v20.n128_u64[0] = v19;
  PKFloatCeilToPixel(v20, v21);
  v23 = v22 + 10.0 + 12.0;
  button = self->_button;
  if (button)
  {
    v25 = v23 + 25.0;
    [(UIButton *)button sizeThatFits:v8, 1.79769313e308];
    v27.n128_u64[0] = v26.n128_u64[0];
    PKFloatCeilToPixel(v27, v26);
    v23 = v25 + v28;
  }

  v29 = v7;
  result.height = v23;
  result.width = v29;
  return result;
}

- (void)layoutSubviews
{
  *&recta.size.width = self;
  *&recta.size.height = PKPaymentSetupFieldFooterView;
  [(CGSize *)&recta.size layoutSubviews];
  contentView = [(PKPaymentSetupFieldFooterView *)self contentView];
  [contentView frame];
  v5 = v4;
  recta.origin.x = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKPaymentSetupFieldFooterView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v45.origin.x = v5;
  v45.origin.y = v7;
  v45.size.width = v9;
  v45.size.height = v11;
  MinX = CGRectGetMinX(v45);
  v46.origin.x = v13;
  v46.origin.y = v15;
  v46.size.width = v17;
  v46.size.height = v19;
  recta.origin.y = MinX - CGRectGetMinX(v46);
  v47.origin.x = v13;
  v47.origin.y = v15;
  v47.size.width = v17;
  v47.size.height = v19;
  MaxX = CGRectGetMaxX(v47);
  v48.origin.x = recta.origin.x;
  v48.origin.y = v7;
  v48.size.width = v9;
  v48.size.height = v11;
  v22 = MaxX - CGRectGetMaxX(v48);
  contentView2 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [contentView2 bounds];
  v25 = v22 + recta.origin.y + v24 + PKTableViewCellTextInset() * -2.0;

  v26 = PKTableViewCellTextInset();
  contentView3 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [contentView3 frame];
  v29 = v26 - v28;

  textLabel = [(PKPaymentSetupFieldFooterView *)self textLabel];
  [textLabel frame];
  contentView4 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [contentView4 bounds];
  [textLabel pkui_sizeThatFits:1 forceWordWrap:{v25, CGRectGetHeight(v49) + 10.0 + 12.0}];
  v33 = v32;

  v34.n128_u64[0] = v33;
  PKFloatCeilToPixel(v34, v35);
  v37 = v36;
  [textLabel setFrame:{v29, 10.0, v25, v36}];
  button = self->_button;
  if (button)
  {
    [(UIButton *)button frame];
    v39 = PKTableViewCellTextInset();
    v50.origin.y = 10.0;
    v50.origin.x = v29;
    v50.size.width = v25;
    v50.size.height = v37;
    v40 = CGRectGetMaxY(v50) + 12.0 + 25.0;
    [(UIButton *)self->_button sizeThatFits:v25, 1.79769313e308];
    v42.n128_u64[0] = v41.n128_u64[0];
    PKFloatCeilToPixel(v42, v41);
    [(UIButton *)self->_button setFrame:v39, v40, v25, v43];
  }
}

- (void)_buttonTapped
{
  delegate = [(PKPaymentSetupFieldFooterView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate fieldFooterViewDidTapButton:self->_field];
  }
}

- (PKPaymentSetupFieldFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end