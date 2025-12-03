@interface PKEnterValueNewBalanceView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKEnterValueNewBalanceView)initWithCurrencyCode:(id)code;
- (PKEnterValueNewBalanceViewDelegate)delegate;
- (id)_minimalFormattedStringForAmount:(id)amount;
- (id)_textForPrompt:(id)prompt amount:(id)amount;
- (void)_addSubviews;
- (void)_createAmountFormatter;
- (void)_updateAdditionalAmount:(id)amount subtractAdditionalAmountFromCurrentAmount:(BOOL)currentAmount;
- (void)_updateBalanceText;
- (void)currentBalanceTapRecognized;
- (void)layoutSubviews;
- (void)setCardBalance:(id)balance;
- (void)setCurrencyCode:(id)code;
- (void)setMaxBalance:(id)balance;
- (void)setMaxLoadAmount:(id)amount;
- (void)setMaxLoadAmountText:(id)text;
- (void)setMinBalance:(id)balance;
- (void)setMinLoadAmount:(id)amount;
- (void)setPromptText:(id)text;
- (void)setUpdatedBalancePromptText:(id)text;
- (void)showSpinner:(BOOL)spinner;
@end

@implementation PKEnterValueNewBalanceView

- (PKEnterValueNewBalanceView)initWithCurrencyCode:(id)code
{
  codeCopy = code;
  v16.receiver = self;
  v16.super_class = PKEnterValueNewBalanceView;
  v5 = [(PKEnterValueNewBalanceView *)&v16 init];
  if (v5)
  {
    v6 = [codeCopy copy];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = PKLocalizedPaymentString(&cfstr_PerformActionE_0.isa);
    [(PKEnterValueNewBalanceView *)v5 setPromptText:v8];

    v9 = PKLocalizedPaymentString(&cfstr_PerformActionE_1.isa);
    [(PKEnterValueNewBalanceView *)v5 setUpdatedBalancePromptText:v9];

    v10 = PKLocalizedPaymentString(&cfstr_PerformActionE_2.isa);
    [(PKEnterValueNewBalanceView *)v5 setMaxLoadAmountText:v10];

    [(PKEnterValueNewBalanceView *)v5 _createAmountFormatter];
    zero = [MEMORY[0x1E696AB90] zero];
    cardBalance = v5->_cardBalance;
    v5->_cardBalance = zero;

    zero2 = [MEMORY[0x1E696AB90] zero];
    additionalAmount = v5->_additionalAmount;
    v5->_additionalAmount = zero2;

    [(PKEnterValueNewBalanceView *)v5 _addSubviews];
  }

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKEnterValueNewBalanceView;
  [(PKEnterValueNewBalanceView *)&v4 layoutSubviews];
  [(PKEnterValueNewBalanceView *)self bounds];
  label = self->_label;
  v6 = CGRectInset(v5, 13.0, 0.0);
  [(UILabel *)label setFrame:v6.origin.x, v6.origin.y, v6.size.width, v6.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->_showSpinner)
  {
    [(UIActivityIndicatorView *)self->_spinner frame:fits.width];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    width = fits.width;
    [(UILabel *)self->_label sizeThatFits:fits.width + -26.0, fits.height];
    v4 = fmin(v8 + 26.0, width);
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (void)showSpinner:(BOOL)spinner
{
  if (self->_showSpinner != spinner)
  {
    v14 = v6;
    v15 = v5;
    v16 = v4;
    v17 = v3;
    self->_showSpinner = spinner;
    spinner = self->_spinner;
    if (spinner)
    {
      if (!spinner)
      {
        v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        v12 = self->_spinner;
        self->_spinner = v11;

        [(UIActivityIndicatorView *)self->_spinner startAnimating];
        [(UIActivityIndicatorView *)self->_spinner sizeToFit];
        [(PKEnterValueNewBalanceView *)self addSubview:self->_spinner];
      }

      [(UILabel *)self->_label removeFromSuperview:v6];
    }

    else
    {
      [(UIActivityIndicatorView *)spinner removeFromSuperview];
      superview = [(UILabel *)self->_label superview];

      if (!superview)
      {
        [(PKEnterValueNewBalanceView *)self addSubview:self->_label];
      }
    }

    [(PKEnterValueNewBalanceView *)self sizeToFit:v14];

    [(PKEnterValueNewBalanceView *)self setNeedsLayout];
  }
}

- (void)_updateAdditionalAmount:(id)amount subtractAdditionalAmountFromCurrentAmount:(BOOL)currentAmount
{
  amountCopy = amount;
  if (self->_additionalAmount != amountCopy)
  {
    v12 = amountCopy;
    objc_storeStrong(&self->_additionalAmount, amount);
    self->_subtractAdditionalAmountFromCurrentAmount = currentAmount;
    if (!self->_additionalAmount || ([MEMORY[0x1E696AB90] notANumber], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSDecimalNumber isEqual:](v12, "isEqual:", v8), v8, v9))
    {
      zero = [MEMORY[0x1E696AB90] zero];
      additionalAmount = self->_additionalAmount;
      self->_additionalAmount = zero;
    }

    [(PKEnterValueNewBalanceView *)self _updateBalanceText];
    [(PKEnterValueNewBalanceView *)self sizeToFit];
    [(PKEnterValueNewBalanceView *)self setNeedsLayout];
    amountCopy = v12;
  }
}

- (void)setMaxBalance:(id)balance
{
  balanceCopy = balance;
  v6 = balanceCopy;
  if (self->_maxBalance != balanceCopy)
  {
    v8 = balanceCopy;
    v7 = [(NSDecimalNumber *)balanceCopy isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maxBalance, balance);
      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v8;
    }
  }
}

- (void)setMinBalance:(id)balance
{
  balanceCopy = balance;
  v6 = balanceCopy;
  if (self->_minBalance != balanceCopy)
  {
    v8 = balanceCopy;
    v7 = [(NSDecimalNumber *)balanceCopy isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minBalance, balance);
      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v8;
    }
  }
}

- (void)setMaxLoadAmount:(id)amount
{
  amountCopy = amount;
  v6 = amountCopy;
  if (self->_maxLoadAmount != amountCopy)
  {
    v8 = amountCopy;
    v7 = [(NSDecimalNumber *)amountCopy isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maxLoadAmount, amount);
      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v8;
    }
  }
}

- (void)setMinLoadAmount:(id)amount
{
  amountCopy = amount;
  v6 = amountCopy;
  if (self->_minLoadAmount != amountCopy)
  {
    v8 = amountCopy;
    v7 = [(NSDecimalNumber *)amountCopy isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minLoadAmount, amount);
      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v8;
    }
  }
}

- (void)setCardBalance:(id)balance
{
  balanceCopy = balance;
  v6 = balanceCopy;
  if (self->_cardBalance != balanceCopy)
  {
    v12 = balanceCopy;
    v7 = [(NSDecimalNumber *)balanceCopy isEqualToNumber:?];
    v6 = v12;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cardBalance, balance);
      if (!self->_cardBalance || ([MEMORY[0x1E696AB90] notANumber], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSDecimalNumber isEqual:](v12, "isEqual:", v8), v8, v9))
      {
        zero = [MEMORY[0x1E696AB90] zero];
        cardBalance = self->_cardBalance;
        self->_cardBalance = zero;
      }

      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v12;
    }
  }
}

- (void)setCurrencyCode:(id)code
{
  codeCopy = code;
  if (self->_currencyCode != codeCopy)
  {
    v6 = codeCopy;
    objc_storeStrong(&self->_currencyCode, code);
    if (self->_currencyCode)
    {
      [(PKEnterValueNewBalanceView *)self addSubview:self->_label];
      [(PKEnterValueNewBalanceView *)self _createAmountFormatter];
    }

    else
    {
      [(UILabel *)self->_label removeFromSuperview];
    }

    [(PKEnterValueNewBalanceView *)self _updateBalanceText];
    [(PKEnterValueNewBalanceView *)self sizeToFit];
    [(PKEnterValueNewBalanceView *)self setNeedsLayout];
    codeCopy = v6;
  }
}

- (void)setPromptText:(id)text
{
  textCopy = text;
  promptText = self->_promptText;
  v12 = textCopy;
  v7 = promptText;
  if (v7 == v12)
  {

LABEL_11:
    v9 = v12;
    goto LABEL_12;
  }

  if (!v12 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v12 isEqualToString:v7];

  v9 = v12;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_promptText, text);
    if (!self->_promptText)
    {
      v10 = PKLocalizedPaymentString(&cfstr_PerformActionE_0.isa);
      v11 = self->_promptText;
      self->_promptText = v10;
    }

    [(PKEnterValueNewBalanceView *)self _updateBalanceText];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)setUpdatedBalancePromptText:(id)text
{
  textCopy = text;
  updatedBalancePromptText = self->_updatedBalancePromptText;
  v12 = textCopy;
  v7 = updatedBalancePromptText;
  if (v7 == v12)
  {

LABEL_11:
    v9 = v12;
    goto LABEL_12;
  }

  if (!v12 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v12 isEqualToString:v7];

  v9 = v12;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_updatedBalancePromptText, text);
    if (!self->_updatedBalancePromptText)
    {
      v10 = PKLocalizedPaymentString(&cfstr_PerformActionE_1.isa);
      v11 = self->_updatedBalancePromptText;
      self->_updatedBalancePromptText = v10;
    }

    [(PKEnterValueNewBalanceView *)self _updateBalanceText];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)setMaxLoadAmountText:(id)text
{
  textCopy = text;
  maxLoadAmountText = self->_maxLoadAmountText;
  v12 = textCopy;
  v7 = maxLoadAmountText;
  if (v7 == v12)
  {

LABEL_11:
    v9 = v12;
    goto LABEL_12;
  }

  if (!v12 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v12 isEqualToString:v7];

  v9 = v12;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_maxLoadAmountText, text);
    if (!self->_maxLoadAmountText)
    {
      v10 = PKLocalizedPaymentString(&cfstr_PerformActionE_2.isa);
      v11 = self->_maxLoadAmountText;
      self->_maxLoadAmountText = v10;
    }

    [(PKEnterValueNewBalanceView *)self _updateBalanceText];
    goto LABEL_11;
  }

LABEL_12:
}

- (id)_minimalFormattedStringForAmount:(id)amount
{
  amountCopy = amount;
  if (amountCopy && self->_currencyCode)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:amountCopy currency:self->_currencyCode exponent:0];
    minimalFormattedStringValue = [v5 minimalFormattedStringValue];
  }

  else
  {
    minimalFormattedStringValue = 0;
  }

  return minimalFormattedStringValue;
}

- (id)_textForPrompt:(id)prompt amount:(id)amount
{
  promptCopy = prompt;
  v7 = [(PKEnterValueNewBalanceView *)self _minimalFormattedStringForAmount:amount];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", promptCopy, v7];

  return v8;
}

- (void)_updateBalanceText
{
  subtractAdditionalAmountFromCurrentAmount = self->_subtractAdditionalAmountFromCurrentAmount;
  p_cardBalance = &self->_cardBalance;
  cardBalance = self->_cardBalance;
  additionalAmount = self->_additionalAmount;
  if (subtractAdditionalAmountFromCurrentAmount)
  {
    [(NSDecimalNumber *)cardBalance decimalNumberBySubtracting:additionalAmount];
  }

  else
  {
    [(NSDecimalNumber *)cardBalance decimalNumberByAdding:additionalAmount];
  }
  v7 = ;
  maxBalance = self->_maxBalance;
  v36 = v7;
  if (maxBalance)
  {
    v9 = [(NSDecimalNumber *)maxBalance compare:v7]!= NSOrderedAscending;
  }

  else
  {
    v9 = 1;
  }

  p_maxLoadAmount = &self->_maxLoadAmount;
  maxLoadAmount = self->_maxLoadAmount;
  v34 = p_cardBalance;
  if (maxLoadAmount)
  {
    v12 = [(NSDecimalNumber *)maxLoadAmount compare:self->_additionalAmount]== NSOrderedAscending;
    if (*p_maxLoadAmount && self->_maxBalance && !self->_subtractAdditionalAmountFromCurrentAmount)
    {
      v13 = [(NSDecimalNumber *)*p_cardBalance decimalNumberByAdding:?];
      v14 = [v13 compare:self->_maxBalance] == -1;

      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
LABEL_14:
  v15 = self->_additionalAmount;
  zero = [MEMORY[0x1E696AB90] zero];
  v17 = [(NSDecimalNumber *)v15 compare:zero];

  if (!v17)
  {
    label = self->_label;
    promptText = [(PKEnterValueNewBalanceView *)self promptText];
    goto LABEL_22;
  }

  if (v9 || v14)
  {
    if (v12)
    {
      v18 = self->_label;
      maxLoadAmountText = [(PKEnterValueNewBalanceView *)self maxLoadAmountText];
      v20 = v35;
      if (!self->_amountIsWithdrawal || [*p_maxLoadAmount compare:*v35] != 1)
      {
        v20 = &self->_maxLoadAmount;
      }

      v21 = [(PKEnterValueNewBalanceView *)self _textForPrompt:maxLoadAmountText amount:*v20];
      [(UILabel *)v18 setText:v21];

      goto LABEL_25;
    }

    minLoadAmount = self->_minLoadAmount;
    if (minLoadAmount && [(NSDecimalNumber *)minLoadAmount compare:self->_additionalAmount]== NSOrderedDescending)
    {
      v27 = self->_label;
      v28 = PKLocalizedPaymentString(&cfstr_PerformActionE_4.isa);
      v29 = self->_minLoadAmount;
      goto LABEL_24;
    }

    minBalance = self->_minBalance;
    if (minBalance && [(NSDecimalNumber *)minBalance compare:v36]== NSOrderedDescending && self->_subtractAdditionalAmountFromCurrentAmount)
    {
      v27 = self->_label;
      v28 = PKLocalizedPaymentString(&cfstr_PerformActionE.isa);
      v29 = *v35;
      goto LABEL_24;
    }

    label = self->_label;
    promptText = [(PKEnterValueNewBalanceView *)self updatedBalancePromptText];
LABEL_22:
    v24 = promptText;
    v25 = [(PKEnterValueNewBalanceView *)self _textForPrompt:promptText amount:v36];
    [(UILabel *)label setText:v25];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    goto LABEL_26;
  }

  v27 = self->_label;
  v28 = PKLocalizedPaymentString(&cfstr_PerformActionE_3.isa);
  v29 = self->_maxBalance;
LABEL_24:
  v30 = [(PKEnterValueNewBalanceView *)self _textForPrompt:v28 amount:v29];
  [(UILabel *)v27 setText:v30];

LABEL_25:
  secondaryLabelColor = [MEMORY[0x1E69DC888] labelColor];
LABEL_26:
  v31 = secondaryLabelColor;
  [(UILabel *)self->_label setTextColor:secondaryLabelColor];
  [(UILabel *)self->_label sizeToFit];
  [(PKEnterValueNewBalanceView *)self setNeedsLayout];
}

- (void)currentBalanceTapRecognized
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = objc_opt_respondsToSelector();
    v3 = v5;
    if (v4)
    {
      [v5 didTapNewBalanceView];
      v3 = v5;
    }
  }
}

- (void)_createAmountFormatter
{
  v3 = PKMutableNumberFormatterForCurrencyCode();
  currentAmountFormatter = self->_currentAmountFormatter;
  self->_currentAmountFormatter = v3;

  [(NSNumberFormatter *)self->_currentAmountFormatter setAlwaysShowsDecimalSeparator:0];
  v5 = self->_currentAmountFormatter;

  [(NSNumberFormatter *)v5 setMinimumFractionDigits:0];
}

- (void)_addSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  label = self->_label;
  self->_label = v3;

  v5 = self->_label;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v5 setTextColor:secondaryLabelColor];

  v7 = self->_label;
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  [(UILabel *)v7 setFont:v8];

  [(UILabel *)self->_label setNumberOfLines:2];
  [(UILabel *)self->_label setMinimumScaleFactor:0.5];
  [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label setUserInteractionEnabled:1];
  [(UILabel *)self->_label setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_currentBalanceTapRecognized];
  tapRecognizer = self->_tapRecognizer;
  self->_tapRecognizer = v9;

  [(UITapGestureRecognizer *)self->_tapRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_tapRecognizer setNumberOfTapsRequired:1];
  [(UILabel *)self->_label addGestureRecognizer:self->_tapRecognizer];
  [(PKEnterValueNewBalanceView *)self addSubview:self->_label];

  [(PKEnterValueNewBalanceView *)self _updateBalanceText];
}

- (PKEnterValueNewBalanceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end