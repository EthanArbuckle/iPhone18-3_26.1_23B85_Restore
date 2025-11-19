@interface PKCurrencyAmountEntryCollectionViewCell
- (BOOL)_inputIsValid:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCurrencyAmountEntryCollectionViewCell)initWithFrame:(CGRect)a3;
- (PKCurrencyAmountEntryCollectionViewCellDelegate)delegate;
- (id)_amountFromInput:(id)a3;
- (void)layoutSubviews;
- (void)setCurrencyAmount:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleColor:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation PKCurrencyAmountEntryCollectionViewCell

- (PKCurrencyAmountEntryCollectionViewCell)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = PKCurrencyAmountEntryCollectionViewCell;
  v3 = [(PKCurrencyAmountEntryCollectionViewCell *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKCurrencyAmountEntryCollectionViewCell *)v3 contentView];
    v6 = [MEMORY[0x1E69DC888] labelColor];
    titleColor = v4->_titleColor;
    v4->_titleColor = v6;

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    [(UILabel *)v4->_titleLabel setTextColor:v4->_titleColor];
    [(UILabel *)v4->_titleLabel setNumberOfLines:1];
    v11 = v4->_titleLabel;
    v12 = *MEMORY[0x1E69DDCF8];
    v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
    [(UILabel *)v11 setFont:v13];

    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [v5 addSubview:v4->_titleLabel];
    LODWORD(v11) = [(PKCurrencyAmountEntryCollectionViewCell *)v4 _shouldReverseLayoutDirection];
    v14 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    amountTextField = v4->_amountTextField;
    v4->_amountTextField = v14;

    [(UITextField *)v4->_amountTextField setKeyboardType:8];
    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    [(UITextField *)v4->_amountTextField setTextAlignment:v16];
    v17 = v4->_amountTextField;
    v18 = PKFontForDefaultDesign(v12, 0);
    [(UITextField *)v17 setFont:v18];

    [(UITextField *)v4->_amountTextField setDelegate:v4];
    [(UITextField *)v4->_amountTextField setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
    [v5 addSubview:v4->_amountTextField];
  }

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = self->_title;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    title = self->_title;
    self->_title = v8;

    [(UILabel *)self->_titleLabel setText:self->_title];
    [(PKCurrencyAmountEntryCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTitleColor:(id)a3
{
  objc_storeStrong(&self->_titleColor, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setTextColor:self->_titleColor];
}

- (void)setCurrencyAmount:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v17 = v5;
    if (!self->_currencyFormatter || ([v5 currency], v7 = objc_claimAutoreleasedReturnValue(), -[PKCurrencyAmount currency](self->_currencyAmount, "currency"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v6 = v17, (v9 & 1) == 0))
    {
      v10 = [v6 currency];
      v11 = PKMutableNumberFormatterForCurrencyCode();
      currencyFormatter = self->_currencyFormatter;
      self->_currencyFormatter = v11;
    }

    v13 = PKEqualObjects();
    v6 = v17;
    if ((v13 & 1) == 0)
    {
      objc_storeStrong(&self->_currencyAmount, a3);
      v14 = self->_currencyFormatter;
      v15 = [(PKCurrencyAmount *)self->_currencyAmount amount];
      v16 = [(NSNumberFormatter *)v14 stringFromNumber:v15];

      [(UITextField *)self->_amountTextField setText:v16];
      v6 = v17;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  [(PKCurrencyAmountEntryCollectionViewCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = _UISolariumFeatureFlagEnabled();
  v9 = 44.0;
  if (v8)
  {
    v9 = 52.0;
  }

  v10 = fmin(v9, height);
  if (v7 >= v9)
  {
    v10 = v7;
  }

  v11 = v5;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKCurrencyAmountEntryCollectionViewCell;
  [(PKCurrencyAmountEntryCollectionViewCell *)&v16 layoutSubviews];
  v3 = objc_alloc(MEMORY[0x1E69DD180]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = MEMORY[0x1E69DC628];
  v7 = PKLocalizedString(&cfstr_Done.isa);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PKCurrencyAmountEntryCollectionViewCell_layoutSubviews__block_invoke;
  v15[3] = &unk_1E8016068;
  v15[4] = self;
  v8 = [v6 actionWithTitle:v7 image:0 identifier:0 handler:v15];
  v9 = [v5 initWithPrimaryAction:v8];

  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v17[0] = v10;
  v17[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [v4 setItems:v11];

  [v4 sizeToFit];
  [(UITextField *)self->_amountTextField setInputAccessoryView:v4];
  amountTextField = self->_amountTextField;
  if (self->_isEditable)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v13 = ;
  [(UITextField *)amountTextField setTextColor:v13];

  [(UITextField *)self->_amountTextField setUserInteractionEnabled:self->_isEditable];
  v14 = [(PKCurrencyAmountEntryCollectionViewCell *)self contentView];
  [v14 bounds];
  [(PKCurrencyAmountEntryCollectionViewCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (_UISolariumFeatureFlagEnabled())
  {
    v10 = 20.0;
  }

  else
  {
    v10 = 16.0;
  }

  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectInset(v46, v10, 13.0);
  v11 = v47.origin.x;
  v12 = v47.origin.y;
  v13 = v47.size.width;
  v14 = v47.size.height;
  [(UILabel *)self->_titleLabel sizeThatFits:v47.size.width, v47.size.height];
  v16 = v15;
  v18 = v17;
  [(UITextField *)self->_amountTextField sizeThatFits:v13, v14];
  v20 = v19;
  memset(&slice, 0, sizeof(slice));
  v43.origin.x = v11;
  v43.origin.y = v12;
  v43.size.width = v13;
  v43.size.height = v14;
  if (v16 + 8.0 + v21 > v13)
  {
    v22 = v18 + 2.0 + v19;
    v43.size.height = v22;
    p_slice = &slice;
    v48.origin.x = v11;
    v48.origin.y = v12;
    v48.size.width = v13;
    v48.size.height = v18 + 2.0 + v20;
    CGRectDivide(v48, &slice, &v43, v18, CGRectMinYEdge);
    v24 = slice.origin.x;
    v25 = slice.origin.y;
    v26 = slice.size.width;
    v27 = slice.size.height;
    CGRectDivide(v43, &slice, &v43, 2.0, CGRectMinYEdge);
    CGRectDivide(v43, &slice, &v43, v20, CGRectMinYEdge);
    if (a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([(PKCurrencyAmountEntryCollectionViewCell *)self _shouldReverseLayoutDirection])
  {
    v28 = CGRectMaxXEdge;
  }

  else
  {
    v28 = CGRectMinXEdge;
  }

  p_slice = &v43;
  v49.origin.x = v11;
  v49.origin.y = v12;
  v49.size.width = v13;
  v49.size.height = v14;
  CGRectDivide(v49, &slice, &v43, fmin(v13, v16), v28);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v24 = v29;
  v25 = v30;
  v26 = v31;
  v27 = v32;
  CGRectDivide(v43, &slice, &v43, 8.0, v28);
  v22 = v27;
  if (!a4)
  {
LABEL_11:
    v34 = p_slice->size.width;
    v33 = p_slice->size.height;
    v35 = v25;
    v36 = width;
    v37 = v24;
    v39 = p_slice->origin.x;
    v38 = p_slice->origin.y;
    [(UILabel *)self->_titleLabel setFrame:v37, v35, v26, v27, *&v43.origin.x, *&v43.origin.y, *&v43.size.width];
    v40 = v38;
    width = v36;
    [(UITextField *)self->_amountTextField setFrame:v39, v40, v34, v33];
  }

LABEL_12:
  v41 = v22 + 26.0;
  v42 = width;
  result.height = v41;
  result.width = v42;
  return result;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v7 = [(PKCurrencyAmountEntryCollectionViewCell *)self _amountFromInput:v5];

  v6 = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:v7];
  [v4 setText:v6];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  v12 = [(PKCurrencyAmountEntryCollectionViewCell *)self _inputIsValid:v11];
  if (v12)
  {
    v13 = [(PKCurrencyAmountEntryCollectionViewCell *)self _amountFromInput:v11];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained amountDidChange:v13];
  }

  return v12;
}

- (BOOL)_inputIsValid:(id)a3
{
  v4 = a3;
  v5 = [(NSNumberFormatter *)self->_currencyFormatter maximumFractionDigits];
  v6 = [(NSNumberFormatter *)self->_currencyFormatter currencySymbol];
  v7 = [v4 stringByReplacingOccurrencesOfString:v6 withString:&stru_1F3BD7330];
  v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 pk_isNotANumber] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = [v7 pk_posixStringDecimalPlaces];
  v12 = v4;
  v13 = v6;
  v14 = v13;
  if (v13 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = 0;
    if (v12 && v13)
    {
      v15 = [v12 isEqualToString:v13];
    }
  }

  v16 = v7;
  v17 = v16;
  if (v16 == @".")
  {
    v18 = 1;
  }

  else if (v16)
  {
    v18 = [(__CFString *)v16 isEqualToString:@"."];
  }

  else
  {
    v18 = 0;
  }

  if (v11 <= v5)
  {
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v15 | v18;

  return v20 & 1;
}

- (id)_amountFromInput:(id)a3
{
  currencyFormatter = self->_currencyFormatter;
  v5 = a3;
  v6 = [(NSNumberFormatter *)currencyFormatter currencySymbol];
  v7 = [v5 containsString:v6];

  if (v7)
  {
    v8 = [(NSNumberFormatter *)self->_currencyFormatter numberFromString:v5];

    v9 = MEMORY[0x1E696AB90];
    if (v8)
    {
      [v8 decimalValue];
    }

    else
    {
      v12[0] = 0;
      v12[1] = 0;
      v13 = 0;
    }

    v10 = [v9 decimalNumberWithDecimal:v12];
  }

  else
  {
    v10 = [MEMORY[0x1E696AB90] decimalNumberWithString:v5];
  }

  return v10;
}

- (PKCurrencyAmountEntryCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end