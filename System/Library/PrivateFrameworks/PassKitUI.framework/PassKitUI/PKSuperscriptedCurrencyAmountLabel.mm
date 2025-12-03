@interface PKSuperscriptedCurrencyAmountLabel
- (CGSize)lastLayedOutBoundsSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKSuperscriptedCurrencyAmountLabel)initWithPrimaryFont:(id)font superscriptFont:(id)superscriptFont positiveValueTextColor:(id)color negativeValueTextColor:(id)textColor;
- (id)_attributedString;
- (void)_addSuperscriptToAttributedString:(id)string formattedCurrencyAmount:(id)amount currencyAmountWithoutSymbols:(id)symbols;
- (void)_addSuperscriptToAttributedString:(id)string inRange:(_NSRange)range;
- (void)_updateLabel;
- (void)layoutSubviews;
- (void)setAmount:(id)amount;
- (void)setAmount:(id)amount currencyCode:(id)code;
- (void)setCurrencyCode:(id)code;
- (void)setNegativeValueTextColor:(id)color;
- (void)setPositiveValueTextColor:(id)color;
- (void)setPrimaryFont:(id)font;
- (void)setShowsNegativeValueDesignation:(BOOL)designation;
- (void)setShowsPositiveValueDesignation:(BOOL)designation;
- (void)setSuperscriptFont:(id)font;
@end

@implementation PKSuperscriptedCurrencyAmountLabel

- (PKSuperscriptedCurrencyAmountLabel)initWithPrimaryFont:(id)font superscriptFont:(id)superscriptFont positiveValueTextColor:(id)color negativeValueTextColor:(id)textColor
{
  fontCopy = font;
  superscriptFontCopy = superscriptFont;
  colorCopy = color;
  textColorCopy = textColor;
  v20.receiver = self;
  v20.super_class = PKSuperscriptedCurrencyAmountLabel;
  v15 = [(PKSuperscriptedCurrencyAmountLabel *)&v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_primaryFont, font);
    objc_storeStrong(&v16->_superscriptFont, superscriptFont);
    objc_storeStrong(&v16->_positiveValueTextColor, color);
    objc_storeStrong(&v16->_negativeValueTextColor, textColor);
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

- (void)setCurrencyCode:(id)code
{
  codeCopy = code;
  if (self->_currencyCode != codeCopy)
  {
    v6 = codeCopy;
    objc_storeStrong(&self->_currencyCode, code);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    codeCopy = v6;
  }
}

- (void)setAmount:(id)amount
{
  amountCopy = amount;
  if (self->_amount != amountCopy)
  {
    v6 = amountCopy;
    objc_storeStrong(&self->_amount, amount);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    amountCopy = v6;
  }
}

- (void)setAmount:(id)amount currencyCode:(id)code
{
  amountCopy = amount;
  codeCopy = code;
  if (self->_amount == amountCopy)
  {
    p_currencyCode = &self->_currencyCode;
    if (self->_currencyCode == codeCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_storeStrong(&self->_amount, amount);
    p_currencyCode = &self->_currencyCode;
    if (self->_currencyCode == codeCopy)
    {
      goto LABEL_6;
    }
  }

  objc_storeStrong(p_currencyCode, code);
LABEL_6:
  [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
LABEL_7:
}

- (void)setPrimaryFont:(id)font
{
  fontCopy = font;
  if (fontCopy && self->_primaryFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_primaryFont, font);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    fontCopy = v6;
  }
}

- (void)setSuperscriptFont:(id)font
{
  fontCopy = font;
  if (fontCopy && self->_superscriptFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_superscriptFont, font);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    fontCopy = v6;
  }
}

- (void)setPositiveValueTextColor:(id)color
{
  colorCopy = color;
  if (colorCopy && self->_positiveValueTextColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_positiveValueTextColor, color);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    colorCopy = v6;
  }
}

- (void)setNegativeValueTextColor:(id)color
{
  colorCopy = color;
  if (colorCopy && self->_negativeValueTextColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_negativeValueTextColor, color);
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
    colorCopy = v6;
  }
}

- (void)setShowsPositiveValueDesignation:(BOOL)designation
{
  if (self->_showsPositiveValueDesignation != designation)
  {
    self->_showsPositiveValueDesignation = designation;
    [(PKSuperscriptedCurrencyAmountLabel *)self _updateLabel];
  }
}

- (void)setShowsNegativeValueDesignation:(BOOL)designation
{
  if (self->_showsNegativeValueDesignation != designation)
  {
    self->_showsNegativeValueDesignation = designation;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_label sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateLabel
{
  self->_lastLayedOutBoundsSize = *MEMORY[0x1E695F060];
  _attributedString = [(PKSuperscriptedCurrencyAmountLabel *)self _attributedString];
  [(UILabel *)self->_label setAttributedText:_attributedString];
}

- (void)_addSuperscriptToAttributedString:(id)string formattedCurrencyAmount:(id)amount currencyAmountWithoutSymbols:(id)symbols
{
  stringCopy = string;
  if (stringCopy && amount && symbols)
  {
    v18 = stringCopy;
    symbolsCopy = symbols;
    amountCopy = amount;
    string = [v18 string];
    v12 = [string rangeOfString:amountCopy options:0];
    v14 = v13;

    v15 = [string rangeOfString:symbolsCopy options:0];
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

    stringCopy = v18;
  }
}

- (void)_addSuperscriptToAttributedString:(id)string inRange:(_NSRange)range
{
  if (range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = range.length;
    location = range.location;
    primaryFont = self->_primaryFont;
    stringCopy = string;
    [(UIFont *)primaryFont capHeight];
    v10 = v9;
    [(UIFont *)self->_superscriptFont capHeight];
    v12 = ((v10 - v11) * self->_labelScaleFactor);
    [stringCopy beginEditing];
    [stringCopy addAttribute:*MEMORY[0x1E69DB648] value:self->_superscriptFont range:{location, length}];
    v13 = *MEMORY[0x1E69DB610];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    [stringCopy addAttribute:v13 value:v14 range:{location, length}];

    [stringCopy endEditing];
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

  zero = [MEMORY[0x1E696AB90] zero];
  v6 = [(NSDecimalNumber *)amount compare:zero];

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v12 = *MEMORY[0x1E69DB650];
  v13 = *p_positiveValueTextColor;
  v23[0] = clearColor;
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