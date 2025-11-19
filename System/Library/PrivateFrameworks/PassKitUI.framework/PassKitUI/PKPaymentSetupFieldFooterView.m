@interface PKPaymentSetupFieldFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentSetupFieldFooterViewDelegate)delegate;
- (void)_buttonTapped;
- (void)_updateDisplayForFieldTypeLabel;
- (void)layoutSubviews;
- (void)setField:(id)a3;
@end

@implementation PKPaymentSetupFieldFooterView

- (void)setField:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_field, a3);
    [(PKPaymentSetupFieldFooterView *)self _updateDisplayForFieldTypeLabel];
  }
}

- (void)_updateDisplayForFieldTypeLabel
{
  v3 = [(PKPaymentSetupFieldFooterView *)self textLabel];
  v4 = *MEMORY[0x1E69DDD28];
  if ([(PKPaymentSetupFieldLabel *)self->_field isFieldTypeFooter])
  {
    v5 = [(PKPaymentSetupFieldLabel *)self->_field footerFieldObject];
    v6 = [v5 fontScale];

    if (v6 == 1)
    {
      v7 = *MEMORY[0x1E69DDD80];

      v4 = v7;
    }
  }

  v8 = *MEMORY[0x1E69DDC20];
  v9 = PKFontForDefaultDesign(v4, *MEMORY[0x1E69DDC20]);
  [v3 setFont:v9];

  v10 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v3 setTextColor:v10];

  [v3 setNumberOfLines:0];
  v11 = [(PKPaymentSetupFieldLabel *)self->_field title];
  v12 = PKFontForDefaultDesign(v4, v8);
  v13 = PKAttributedStringByParsingEmphasisInString(v11, v12, 0);

  [v3 setAttributedText:v13];
  v14 = [(PKPaymentSetupFieldLabel *)self->_field alingment];
  if (v14 == 1)
  {
    v15 = 0;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_9;
    }

    v15 = 1;
  }

  [v3 setTextAlignment:v15];
LABEL_9:
  v16 = [(PKPaymentSetupFieldLabel *)self->_field buttonTitle];
  v17 = [v16 length];
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
      v21 = PKOBKLearnMoreButton(@"info.circle.fill", v16, v20);
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  PKFloatCeilToPixel(a3, *&a3.height);
  v7 = v6;
  v8 = width + PKTableViewCellTextInset() * -2.0;
  v9 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [v9 layoutMargins];
  v10 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [v10 layoutMargins];

  v11 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [v11 layoutMargins];
  v13 = v12;
  v14 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [v14 layoutMargins];
  v16 = height - (v13 + v15);

  v17 = [(PKPaymentSetupFieldFooterView *)self textLabel];
  [v17 pkui_sizeThatFits:1 forceWordWrap:{v8, v16}];
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
  v3 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [v3 frame];
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
  v23 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [v23 bounds];
  v25 = v22 + recta.origin.y + v24 + PKTableViewCellTextInset() * -2.0;

  v26 = PKTableViewCellTextInset();
  v27 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [v27 frame];
  v29 = v26 - v28;

  v30 = [(PKPaymentSetupFieldFooterView *)self textLabel];
  [v30 frame];
  v31 = [(PKPaymentSetupFieldFooterView *)self contentView];
  [v31 bounds];
  [v30 pkui_sizeThatFits:1 forceWordWrap:{v25, CGRectGetHeight(v49) + 10.0 + 12.0}];
  v33 = v32;

  v34.n128_u64[0] = v33;
  PKFloatCeilToPixel(v34, v35);
  v37 = v36;
  [v30 setFrame:{v29, 10.0, v25, v36}];
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
  v3 = [(PKPaymentSetupFieldFooterView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 fieldFooterViewDidTapButton:self->_field];
  }
}

- (PKPaymentSetupFieldFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end