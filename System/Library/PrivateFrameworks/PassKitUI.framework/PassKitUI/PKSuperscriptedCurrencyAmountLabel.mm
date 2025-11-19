@interface PKSuperscriptedCurrencyAmountLabel
- (CGSize)lastLayedOutBoundsSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKSuperscriptedCurrencyAmountLabel)initWithPrimaryFont:(id)a3 superscriptFont:(id)a4 positiveValueTextColor:(id)a5 negativeValueTextColor:(id)a6;
- (id)_attributedString;
- (void)_addSuperscriptToAttributedString:(id)a3 formattedCurrencyAmount:(id)a4 currencyAmountWithoutSymbols:(id)a5;
- (void)_addSuperscriptToAttributedString:(id)a3 inRange:(_NSRange)a4;
- (void)_updateLabel;
- (void)layoutSubviews;
- (void)setAmount:(id)a3;
- (void)setAmount:(id)a3 currencyCode:(id)a4;
- (void)setCurrencyCode:(id)a3;
- (void)setNegativeValueTextColor:(id)a3;
- (void)setPositiveValueTextColor:(id)a3;
- (void)setPrimaryFont:(id)a3;
- (void)setShowsNegativeValueDesignation:(BOOL)a3;
- (void)setShowsPositiveValueDesignation:(BOOL)a3;
- (void)setSuperscriptFont:(id)a3;
@end

@implementation PKSuperscriptedCurrencyAmountLabel

- (PKSuperscriptedCurrencyAmountLabel)initWithPrimaryFont:(id)a3 superscriptFont:(id)a4 positiveValueTextColor:(id)a5 negativeValueTextColor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = PKSuperscriptedCurrencyAmountLabel;
  v15 = [(PKSuperscriptedCurrencyAmountLabel *)&v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_primaryFont, a3);
    objc_storeStrong(&v16->_superscriptFont, a4);
    objc_storeStrong(&v16->_positiveValueTextColor, a5);
    objc_storeStrong(&v16->_negativeValueTextColor, a6);
    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v16->_label;
    v16->_label = v17;

    [(UILabel *)v16->_label setTextAlignment:1];
    [(UILabel *)v16->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v16->_label setNumberOfLines:1];
    v16->_labelScaleFactor = 1.0;
    [(PKSuperscriptedCurrencyAmountLabel *)v16 addSubview:v16->_label];
  }

  return v16;
}

- (void)setCurrencyCode:(id)a3
{
  v5 = a3;
  if (self->_currencyCode != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currencyCode, a3);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (void)setAmount:(id)a3
{
  v5 = a3;
  if (self->_amount != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_amount, a3);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (void)setAmount:(id)a3 currencyCode:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_amount == v9)
  {
    p_currencyCode = &self->_currencyCode;
    if (self->_currencyCode == v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_storeStrong(&self->_amount, a3);
    p_currencyCode = &self->_currencyCode;
    if (self->_currencyCode == v7)
    {
      goto LABEL_6;
    }
  }

  objc_storeStrong(p_currencyCode, a4);
LABEL_6:
  [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
LABEL_7:
}

- (void)setPrimaryFont:(id)a3
{
  v5 = a3;
  if (v5 && self->_primaryFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_primaryFont, a3);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (void)setSuperscriptFont:(id)a3
{
  v5 = a3;
  if (v5 && self->_superscriptFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_superscriptFont, a3);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (void)setPositiveValueTextColor:(id)a3
{
  v5 = a3;
  if (v5 && self->_positiveValueTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_positiveValueTextColor, a3);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (void)setNegativeValueTextColor:(id)a3
{
  v5 = a3;
  if (v5 && self->_negativeValueTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_negativeValueTextColor, a3);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (void)setShowsPositiveValueDesignation:(BOOL)a3
{
  if (self->_showsPositiveValueDesignation != a3)
  {
    self->_showsPositiveValueDesignation = a3;
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
  }
}

- (void)setShowsNegativeValueDesignation:(BOOL)a3
{
  if (self->_showsNegativeValueDesignation != a3)
  {
    self->_showsNegativeValueDesignation = a3;
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKSuperscriptedCurrencyAmountLabel;
  [(PKSuperscriptedCurrencyAmountLabel *)&v9 layoutSubviews];
  [(PKSuperscriptedCurrencyAmountLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_label setFrame:?];
  if (v4 != self->_lastLayedOutBoundsSize.width || v6 != self->_lastLayedOutBoundsSize.height)
  {
    self->_lastLayedOutBoundsSize.width = v4;
    self->_lastLayedOutBoundsSize.height = v6;
    [(UILabel *)self->_label _actualScaleFactor];
    self->_labelScaleFactor = v8;
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_label sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateLabel
{
  self->_lastLayedOutBoundsSize = *MEMORY[0x1E695F060];
  v3 = [(PKSuperscriptedCurrencyAmountLabel *)self _attributedString];
  [(UILabel *)self->_label setAttributedText:v3];
}

- (void)_addSuperscriptToAttributedString:(id)a3 formattedCurrencyAmount:(id)a4 currencyAmountWithoutSymbols:(id)a5
{
  v8 = a3;
  if (v8 && a4 && a5)
  {
    v18 = v8;
    v9 = a5;
    v10 = a4;
    v11 = [v18 string];
    v12 = [v11 rangeOfString:v10 options:0];
    v14 = v13;

    v15 = [v11 rangeOfString:v9 options:0];
    v17 = v16;

    if (v12 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v15 > v12)
      {
        [(PKSuperscriptedCurrencyAmountLabel *)self _addSuperscriptToAttributedString:v18 inRange:v12, v15 - v12];
      }

      if (v12 + v14 > v15 + v17)
      {
        [(PKSuperscriptedCurrencyAmountLabel *)self _addSuperscriptToAttributedString:v18 inRange:v15 + v17, v12 + v14 - (v15 + v17)];
      }
    }

    v8 = v18;
  }
}

- (void)_addSuperscriptToAttributedString:(id)a3 inRange:(_NSRange)a4
{
  if (a4.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = a4.length;
    location = a4.location;
    primaryFont = self->_primaryFont;
    v15 = a3;
    [(UIFont *)primaryFont capHeight];
    v10 = v9;
    [(UIFont *)self->_superscriptFont capHeight];
    v12 = ((v10 - v11) * self->_labelScaleFactor);
    [v15 beginEditing];
    [v15 addAttribute:*MEMORY[0x1E69DB648] value:self->_superscriptFont range:{location, length}];
    v13 = *MEMORY[0x1E69DB610];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    [v15 addAttribute:v13 value:v14 range:{location, length}];

    [v15 endEditing];
  }
}

- (id)_attributedString
{
  v23[3] = *MEMORY[0x1E69E9840];
  amount = self->_amount;
  if (!amount || !self->_currencyCode || !self->_primaryFont || !self->_superscriptFont || (p_positiveValueTextColor = &self->_positiveValueTextColor, !self->_positiveValueTextColor) || !self->_negativeValueTextColor)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v5 = [MEMORY[0x1E696AB90] zero];
  v6 = [(NSDecimalNumber *)amount compare:v5];

  v7 = self->_amount;
  if (v6 == -1)
  {
    v8 = self->_amount;
    v9 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:1 exponent:0 isNegative:1];
    v10 = [(NSDecimalNumber *)v8 decimalNumberByMultiplyingBy:v9];

    p_positiveValueTextColor = &self->_negativeValueTextColor;
    v7 = v10;
  }

  v22[0] = *MEMORY[0x1E69DB600];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  v12 = *MEMORY[0x1E69DB650];
  v13 = *p_positiveValueTextColor;
  v23[0] = v11;
  v23[1] = v13;
  v14 = *MEMORY[0x1E69DB648];
  v22[1] = v12;
  v22[2] = v14;
  v23[2] = self->_primaryFont;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v16 = PKFormattedCurrencyStringFromNumber();
  v17 = PKFormattedCurrencyStringExcludingCurrencySymbolsFromNumber();
  if (v6 == -1)
  {
    if (self->_showsNegativeValueDesignation)
    {
      PKLocalizedPaymentString(&cfstr_SuperscriptedC_0.isa, &stru_1F3BD5BF0.isa, v16);
      goto LABEL_18;
    }

LABEL_19:
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v16];
    goto LABEL_20;
  }

  if (!self->_showsPositiveValueDesignation)
  {
    goto LABEL_19;
  }

  PKLocalizedPaymentString(&cfstr_SuperscriptedC.isa, &stru_1F3BD5BF0.isa, v16);
  v20 = LABEL_18:;
LABEL_20:
  v21 = v20;
  v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20 attributes:v15];
  [(PKSuperscriptedCurrencyAmountLabel *)self _addSuperscriptToAttributedString:v18 formattedCurrencyAmount:v16 currencyAmountWithoutSymbols:v17];

LABEL_13:

  return v18;
}

- (CGSize)lastLayedOutBoundsSize
{
  width = self->_lastLayedOutBoundsSize.width;
  height = self->_lastLayedOutBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end