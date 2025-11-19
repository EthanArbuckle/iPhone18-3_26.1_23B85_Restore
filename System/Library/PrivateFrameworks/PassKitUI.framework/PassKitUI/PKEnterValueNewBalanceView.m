@interface PKEnterValueNewBalanceView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKEnterValueNewBalanceView)initWithCurrencyCode:(id)a3;
- (PKEnterValueNewBalanceViewDelegate)delegate;
- (id)_minimalFormattedStringForAmount:(id)a3;
- (id)_textForPrompt:(id)a3 amount:(id)a4;
- (void)_addSubviews;
- (void)_createAmountFormatter;
- (void)_updateAdditionalAmount:(id)a3 subtractAdditionalAmountFromCurrentAmount:(BOOL)a4;
- (void)_updateBalanceText;
- (void)currentBalanceTapRecognized;
- (void)layoutSubviews;
- (void)setCardBalance:(id)a3;
- (void)setCurrencyCode:(id)a3;
- (void)setMaxBalance:(id)a3;
- (void)setMaxLoadAmount:(id)a3;
- (void)setMaxLoadAmountText:(id)a3;
- (void)setMinBalance:(id)a3;
- (void)setMinLoadAmount:(id)a3;
- (void)setPromptText:(id)a3;
- (void)setUpdatedBalancePromptText:(id)a3;
- (void)showSpinner:(BOOL)a3;
@end

@implementation PKEnterValueNewBalanceView

- (PKEnterValueNewBalanceView)initWithCurrencyCode:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKEnterValueNewBalanceView;
  v5 = [(PKEnterValueNewBalanceView *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = PKLocalizedPaymentString(&cfstr_PerformActionE_0.isa);
    [(PKEnterValueNewBalanceView *)v5 setPromptText:v8];

    v9 = PKLocalizedPaymentString(&cfstr_PerformActionE_1.isa);
    [(PKEnterValueNewBalanceView *)v5 setUpdatedBalancePromptText:v9];

    v10 = PKLocalizedPaymentString(&cfstr_PerformActionE_2.isa);
    [(PKEnterValueNewBalanceView *)v5 setMaxLoadAmountText:v10];

    [(PKEnterValueNewBalanceView *)v5 _createAmountFormatter];
    v11 = [MEMORY[0x1E696AB90] zero];
    cardBalance = v5->_cardBalance;
    v5->_cardBalance = v11;

    v13 = [MEMORY[0x1E696AB90] zero];
    additionalAmount = v5->_additionalAmount;
    v5->_additionalAmount = v13;

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_showSpinner)
  {
    [(UIActivityIndicatorView *)self->_spinner frame:a3.width];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    width = a3.width;
    [(UILabel *)self->_label sizeThatFits:a3.width + -26.0, a3.height];
    v4 = fmin(v8 + 26.0, width);
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (void)showSpinner:(BOOL)a3
{
  if (self->_showSpinner != a3)
  {
    v14 = v6;
    v15 = v5;
    v16 = v4;
    v17 = v3;
    self->_showSpinner = a3;
    spinner = self->_spinner;
    if (a3)
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
      v13 = [(UILabel *)self->_label superview];

      if (!v13)
      {
        [(PKEnterValueNewBalanceView *)self addSubview:self->_label];
      }
    }

    [(PKEnterValueNewBalanceView *)self sizeToFit:v14];

    [(PKEnterValueNewBalanceView *)self setNeedsLayout];
  }
}

- (void)_updateAdditionalAmount:(id)a3 subtractAdditionalAmountFromCurrentAmount:(BOOL)a4
{
  v7 = a3;
  if (self->_additionalAmount != v7)
  {
    v12 = v7;
    objc_storeStrong(&self->_additionalAmount, a3);
    self->_subtractAdditionalAmountFromCurrentAmount = a4;
    if (!self->_additionalAmount || ([MEMORY[0x1E696AB90] notANumber], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSDecimalNumber isEqual:](v12, "isEqual:", v8), v8, v9))
    {
      v10 = [MEMORY[0x1E696AB90] zero];
      additionalAmount = self->_additionalAmount;
      self->_additionalAmount = v10;
    }

    [(PKEnterValueNewBalanceView *)self _updateBalanceText];
    [(PKEnterValueNewBalanceView *)self sizeToFit];
    [(PKEnterValueNewBalanceView *)self setNeedsLayout];
    v7 = v12;
  }
}

- (void)setMaxBalance:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_maxBalance != v5)
  {
    v8 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maxBalance, a3);
      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v8;
    }
  }
}

- (void)setMinBalance:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_minBalance != v5)
  {
    v8 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minBalance, a3);
      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v8;
    }
  }
}

- (void)setMaxLoadAmount:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_maxLoadAmount != v5)
  {
    v8 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maxLoadAmount, a3);
      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v8;
    }
  }
}

- (void)setMinLoadAmount:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_minLoadAmount != v5)
  {
    v8 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minLoadAmount, a3);
      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v8;
    }
  }
}

- (void)setCardBalance:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_cardBalance != v5)
  {
    v12 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v12;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cardBalance, a3);
      if (!self->_cardBalance || ([MEMORY[0x1E696AB90] notANumber], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSDecimalNumber isEqual:](v12, "isEqual:", v8), v8, v9))
      {
        v10 = [MEMORY[0x1E696AB90] zero];
        cardBalance = self->_cardBalance;
        self->_cardBalance = v10;
      }

      [(PKEnterValueNewBalanceView *)self _updateBalanceText];
      [(PKEnterValueNewBalanceView *)self sizeToFit];
      [(PKEnterValueNewBalanceView *)self setNeedsLayout];
      v6 = v12;
    }
  }
}

- (void)setCurrencyCode:(id)a3
{
  v5 = a3;
  if (self->_currencyCode != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currencyCode, a3);
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
    v5 = v6;
  }
}

- (void)setPromptText:(id)a3
{
  v5 = a3;
  promptText = self->_promptText;
  v12 = v5;
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
    objc_storeStrong(&self->_promptText, a3);
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

- (void)setUpdatedBalancePromptText:(id)a3
{
  v5 = a3;
  updatedBalancePromptText = self->_updatedBalancePromptText;
  v12 = v5;
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
    objc_storeStrong(&self->_updatedBalancePromptText, a3);
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

- (void)setMaxLoadAmountText:(id)a3
{
  v5 = a3;
  maxLoadAmountText = self->_maxLoadAmountText;
  v12 = v5;
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
    objc_storeStrong(&self->_maxLoadAmountText, a3);
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

- (id)_minimalFormattedStringForAmount:(id)a3
{
  v4 = a3;
  if (v4 && self->_currencyCode)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v4 currency:self->_currencyCode exponent:0];
    v6 = [v5 minimalFormattedStringValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_textForPrompt:(id)a3 amount:(id)a4
{
  v6 = a3;
  v7 = [(PKEnterValueNewBalanceView *)self _minimalFormattedStringForAmount:a4];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v6, v7];

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
  v16 = [MEMORY[0x1E696AB90] zero];
  v17 = [(NSDecimalNumber *)v15 compare:v16];

  if (!v17)
  {
    label = self->_label;
    v23 = [(PKEnterValueNewBalanceView *)self promptText];
    goto LABEL_22;
  }

  if (v9 || v14)
  {
    if (v12)
    {
      v18 = self->_label;
      v19 = [(PKEnterValueNewBalanceView *)self maxLoadAmountText];
      v20 = v35;
      if (!self->_amountIsWithdrawal || [*p_maxLoadAmount compare:*v35] != 1)
      {
        v20 = &self->_maxLoadAmount;
      }

      v21 = [(PKEnterValueNewBalanceView *)self _textForPrompt:v19 amount:*v20];
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
    v23 = [(PKEnterValueNewBalanceView *)self updatedBalancePromptText];
LABEL_22:
    v24 = v23;
    v25 = [(PKEnterValueNewBalanceView *)self _textForPrompt:v23 amount:v36];
    [(UILabel *)label setText:v25];

    v26 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    goto LABEL_26;
  }

  v27 = self->_label;
  v28 = PKLocalizedPaymentString(&cfstr_PerformActionE_3.isa);
  v29 = self->_maxBalance;
LABEL_24:
  v30 = [(PKEnterValueNewBalanceView *)self _textForPrompt:v28 amount:v29];
  [(UILabel *)v27 setText:v30];

LABEL_25:
  v26 = [MEMORY[0x1E69DC888] labelColor];
LABEL_26:
  v31 = v26;
  [(UILabel *)self->_label setTextColor:v26];
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
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v5 setTextColor:v6];

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