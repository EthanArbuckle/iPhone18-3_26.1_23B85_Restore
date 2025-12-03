@interface PKPaymentSetupPurchaseAmountView
- (BOOL)_isAmountValid:(id)valid;
- (BOOL)_shouldShakeCard:(id)card;
- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to;
- (CGSize)defaultKeyboardSize;
- (PKPaymentSetupPurchaseAmountView)initWithProduct:(id)product provisioningMethodMetadata:(id)metadata;
- (PKPaymentSetupPurchaseAmountViewDelegate)delegate;
- (id)_defaultSuggestions;
- (id)_defaultValues;
- (void)_createConstraints;
- (void)_createSubviews;
- (void)_updateCurrentAmount:(id)amount;
- (void)_updateMessageLabelForAmount:(id)amount;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount;
- (void)enterCurrencyAmountViewDidLayoutKeyboard:(id)keyboard;
- (void)layoutSubviews;
- (void)numberPadSuggestionsView:(id)view didSelectSuggestion:(id)suggestion;
- (void)updateConstraints;
@end

@implementation PKPaymentSetupPurchaseAmountView

- (PKPaymentSetupPurchaseAmountView)initWithProduct:(id)product provisioningMethodMetadata:(id)metadata
{
  productCopy = product;
  metadataCopy = metadata;
  v26.receiver = self;
  v26.super_class = PKPaymentSetupPurchaseAmountView;
  v9 = [(PKPaymentSetupPurchaseAmountView *)&v26 init];
  if (v9)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    currentAmount = v9->_currentAmount;
    v9->_currentAmount = zero;

    objc_storeStrong(&v9->_product, product);
    objc_storeStrong(&v9->_provisioningMethodMetadata, metadata);
    currency = [metadataCopy currency];
    currency = v9->_currency;
    v9->_currency = currency;

    depositAmount = [metadataCopy depositAmount];
    zero2 = depositAmount;
    if (!depositAmount)
    {
      zero2 = [MEMORY[0x1E696AB90] zero];
    }

    objc_storeStrong(&v9->_depositAmount, zero2);
    if (!depositAmount)
    {
    }

    minLoadedBalance = [metadataCopy minLoadedBalance];
    minLoadedBalance = v9->_minLoadedBalance;
    v9->_minLoadedBalance = minLoadedBalance;

    maxLoadedBalance = [metadataCopy maxLoadedBalance];
    maxLoadedBalance = v9->_maxLoadedBalance;
    v9->_maxLoadedBalance = maxLoadedBalance;

    v20 = PKMaximumFractionDigitsForCurrencyCode();
    v21 = objc_alloc_init(MEMORY[0x1E69B89F0]);
    suggestionGenerator = v9->_suggestionGenerator;
    v9->_suggestionGenerator = v21;

    [(PKNumericSuggestionsEnterValueAlgorithm *)v9->_suggestionGenerator setMinBalance:v9->_minLoadedBalance];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v9->_suggestionGenerator setMaxBalance:v9->_maxLoadedBalance];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v9->_suggestionGenerator setCardBalance:v9->_currentAmount];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v9->_suggestionGenerator setCurrencyCode:v9->_currency];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v9->_suggestionGenerator setPowerOfTenFactor:3 - v20];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v9->_suggestionGenerator setDecimalPrecision:v20];
    v23 = v9->_suggestionGenerator;
    _defaultValues = [(PKPaymentSetupPurchaseAmountView *)v9 _defaultValues];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v23 setDefaultValues:_defaultValues];

    [(PKPaymentSetupPurchaseAmountView *)v9 _createSubviews];
    [(PKPaymentSetupPurchaseAmountView *)v9 _createConstraints];
    [(PKPaymentSetupPurchaseAmountView *)v9 _updateCurrentAmount:v9->_currentAmount];
    [(PKPaymentSetupPurchaseAmountView *)v9 _updateMessageLabelForAmount:v9->_currentAmount];
  }

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupPurchaseAmountView;
  [(PKPaymentSetupPurchaseAmountView *)&v3 layoutSubviews];
  [(PKPaymentSetupPurchaseAmountView *)self bounds];
  [(PKNumberPadSuggestionsView *)self->_suggestionView frame];
  [(PKNumberPadSuggestionsView *)self->_suggestionView setFrame:?];
}

- (void)updateConstraints
{
  v17[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PKPaymentSetupPurchaseAmountView;
  [(PKPaymentSetupPurchaseAmountView *)&v13 updateConstraints];
  if ([(PKPaymentSetupPurchaseAmountView *)self displayingBalanceErrorMessage]&& ![(NSLayoutConstraint *)self->_fixedConstraint isActive])
  {
    fixedConstraint = self->_fixedConstraint;
    [(UIStackView *)self->_amountStackView frame];
    [(NSLayoutConstraint *)fixedConstraint setConstant:v4];
    v5 = MEMORY[0x1E696ACD8];
    v17[0] = self->_fixedConstraint;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v5 activateConstraints:v6];

    v7 = MEMORY[0x1E696ACD8];
    centeringConstraint = self->_centeringConstraint;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&centeringConstraint count:1];
    [v7 deactivateConstraints:v8];
  }

  if (![(PKPaymentSetupPurchaseAmountView *)self displayingBalanceErrorMessage]&& ![(NSLayoutConstraint *)self->_centeringConstraint isActive])
  {
    v9 = MEMORY[0x1E696ACD8];
    v15 = self->_centeringConstraint;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v9 activateConstraints:v10];

    v11 = MEMORY[0x1E696ACD8];
    v14 = self->_fixedConstraint;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v11 deactivateConstraints:v12];
  }
}

- (CGSize)defaultKeyboardSize
{
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView defaultKeyboardSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if ([(PKPaymentSetupPurchaseAmountView *)self _shouldShakeCard:toCopy])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained shakeCard];
  }

  maxLoadedBalance = self->_maxLoadedBalance;
  v11 = !maxLoadedBalance || [(NSDecimalNumber *)maxLoadedBalance compare:fromCopy]!= NSOrderedAscending || [(NSDecimalNumber *)self->_maxLoadedBalance compare:toCopy]!= NSOrderedAscending;

  return v11;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount
{
  currentAmount = [amount currentAmount];
  [(PKPaymentSetupPurchaseAmountView *)self _updateCurrentAmount:currentAmount];
}

- (void)enterCurrencyAmountViewDidLayoutKeyboard:(id)keyboard
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paymentSetupPurchaseAmountViewDidLayoutKeyboard:self];
}

- (void)numberPadSuggestionsView:(id)view didSelectSuggestion:(id)suggestion
{
  value = [suggestion value];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setCurrentAmount:value];
  [(PKPaymentSetupPurchaseAmountView *)self _updateCurrentAmount:value];
  if ([(PKPaymentSetupPurchaseAmountView *)self _shouldShakeCard:value])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained shakeCard];
  }
}

- (void)_createSubviews
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  centeringView = self->_centeringView;
  self->_centeringView = v3;

  [(UIView *)self->_centeringView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_centeringView setHidden:1];
  [(PKPaymentSetupPurchaseAmountView *)self addSubview:self->_centeringView];
  v5 = *MEMORY[0x1E69DB980];
  v6 = PKRoundedSystemFontOfSizeAndWeight(64.0, *MEMORY[0x1E69DB980]);
  v7 = PKRoundedSystemFontOfSizeAndWeight(38.0, v5);
  v8 = [[PKEnterCurrencyAmountView alloc] initWithCurrency:self->_currency amount:self->_currentAmount];
  enterCurrencyAmountView = self->_enterCurrencyAmountView;
  self->_enterCurrencyAmountView = v8;

  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setDelegate:self];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAmountFont:v6];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setCurrencySymbolFont:v7];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setKerning:&unk_1F3CC6C18];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  messageLabel = self->_messageLabel;
  self->_messageLabel = v10;

  [(UILabel *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = self->_messageLabel;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v12 setTextColor:secondaryLabelColor];

  v14 = self->_messageLabel;
  v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], *MEMORY[0x1E69DDC38]);
  [(UILabel *)v14 setFont:v15];

  [(UILabel *)self->_messageLabel setTextAlignment:1];
  [(UILabel *)self->_messageLabel setNumberOfLines:2];
  v16 = objc_alloc(MEMORY[0x1E69DCF90]);
  v17 = self->_messageLabel;
  v30[0] = self->_enterCurrencyAmountView;
  v30[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v19 = [v16 initWithArrangedSubviews:v18];
  amountStackView = self->_amountStackView;
  self->_amountStackView = v19;

  [(UIStackView *)self->_amountStackView setAxis:1];
  [(UIStackView *)self->_amountStackView setAlignment:0];
  [(UIStackView *)self->_amountStackView setDistribution:0];
  [(UIStackView *)self->_amountStackView setSpacing:32.0];
  [(UIStackView *)self->_amountStackView setBaselineRelativeArrangement:1];
  [(UIStackView *)self->_amountStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKPaymentSetupPurchaseAmountView *)self addSubview:self->_amountStackView];
  if ([(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator hasValidDefaultSuggestions])
  {
    _defaultSuggestions = [(PKPaymentSetupPurchaseAmountView *)self _defaultSuggestions];
    if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
    {
      [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAmountSuggestions:_defaultSuggestions];
    }

    else
    {
      initWithDefaultFrame = [[PKNumberPadSuggestionsView alloc] initWithDefaultFrame];
      suggestionView = self->_suggestionView;
      self->_suggestionView = initWithDefaultFrame;

      [(PKNumberPadSuggestionsView *)self->_suggestionView setDelegate:self];
      v24 = self->_suggestionView;
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __51__PKPaymentSetupPurchaseAmountView__createSubviews__block_invoke;
      v28 = &unk_1E8013EC0;
      v29 = _defaultSuggestions;
      [(PKNumberPadSuggestionsView *)v24 performBatchUpdates:&v25];
      [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setInputAccessoryView:self->_suggestionView, v25, v26, v27, v28];
    }
  }
}

void __51__PKPaymentSetupPurchaseAmountView__createSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v5 = a2;
  v4 = [v3 labelColor];
  [v5 setButtonTextColor:v4];

  [v5 setSuggestions:*(a1 + 32)];
}

- (void)_createConstraints
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_amountStackView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_amountStackView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [v3 addObject:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_centeringView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_centeringView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [v3 addObject:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_centeringView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [v3 addObject:v8];

  if (_UISolariumFeatureFlagEnabled() && (PKIsWatch() & 1) == 0)
  {
    v10 = MEMORY[0x1E696ACD8];
    centeringView = self->_centeringView;
    keyboardLayoutGuide = [(PKPaymentSetupPurchaseAmountView *)self keyboardLayoutGuide];
    v12 = [v10 constraintWithItem:centeringView attribute:4 relatedBy:0 toItem:keyboardLayoutGuide attribute:3 multiplier:1.0 constant:0.0];
    [v3 addObject:v12];
  }

  else
  {
    keyboardLayoutGuide = [MEMORY[0x1E696ACD8] constraintWithItem:self->_centeringView attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
    [v3 addObject:keyboardLayoutGuide];
  }

  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_amountStackView attribute:10 relatedBy:0 toItem:self->_centeringView attribute:10 multiplier:1.0 constant:0.0];
  centeringConstraint = self->_centeringConstraint;
  self->_centeringConstraint = v13;

  LODWORD(v15) = 1144750080;
  [(NSLayoutConstraint *)self->_centeringConstraint setPriority:v15];
  v16 = MEMORY[0x1E696ACD8];
  amountStackView = self->_amountStackView;
  [(UIStackView *)amountStackView frame];
  v18 = [v16 constraintWithItem:amountStackView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:?];
  fixedConstraint = self->_fixedConstraint;
  self->_fixedConstraint = v18;

  LODWORD(v20) = 1144750080;
  [(NSLayoutConstraint *)self->_fixedConstraint setPriority:v20];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v3;
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v22)
  {
    v24 = v22;
    v25 = *v28;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v21);
        }

        LODWORD(v23) = 1144750080;
        [*(*(&v27 + 1) + 8 * i) setPriority:{v23, v27}];
      }

      v24 = [v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v24);
  }

  [v21 addObject:self->_centeringConstraint];
  [MEMORY[0x1E696ACD8] activateConstraints:v21];
}

- (id)_defaultValues
{
  v9[3] = *MEMORY[0x1E69E9840];
  digitalIssuanceMetadata = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
  defaultSuggestions = [digitalIssuanceMetadata defaultSuggestions];
  if ([defaultSuggestions count])
  {
    v4 = defaultSuggestions;
  }

  else
  {
    v5 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"50"];
    v6 = [MEMORY[0x1E696AB90] decimalNumberWithString:{@"100", v5}];
    v9[1] = v6;
    v7 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"200"];
    v9[2] = v7;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  }

  return v4;
}

- (id)_defaultSuggestions
{
  _defaultValues = [(PKPaymentSetupPurchaseAmountView *)self _defaultValues];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_defaultValues, "count")}];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __55__PKPaymentSetupPurchaseAmountView__defaultSuggestions__block_invoke;
  v11 = &unk_1E8014A80;
  v12 = v4;
  selfCopy = self;
  v5 = v4;
  [_defaultValues enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __55__PKPaymentSetupPurchaseAmountView__defaultSuggestions__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69B89E0] suggestionWithValue:a2 currencyCode:*(*(a1 + 40) + 440)];
  [v2 addObject:v3];
}

- (BOOL)_isAmountValid:(id)valid
{
  validCopy = valid;
  notANumber = [MEMORY[0x1E696AB90] notANumber];
  if ([validCopy isEqualToNumber:notANumber])
  {
    goto LABEL_9;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  if (![validCopy compare:zero] || (maxLoadedBalance = self->_maxLoadedBalance) != 0 && -[NSDecimalNumber compare:](maxLoadedBalance, "compare:", validCopy) == NSOrderedAscending)
  {

LABEL_9:
    goto LABEL_10;
  }

  minLoadedBalance = self->_minLoadedBalance;
  if (!minLoadedBalance)
  {

LABEL_13:
    v10 = 1;
    goto LABEL_11;
  }

  v9 = [(NSDecimalNumber *)minLoadedBalance compare:validCopy];

  if (v9 != 1)
  {
    goto LABEL_13;
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_shouldShakeCard:(id)card
{
  maxLoadedBalance = self->_maxLoadedBalance;
  if (maxLoadedBalance)
  {
    LOBYTE(maxLoadedBalance) = [(NSDecimalNumber *)maxLoadedBalance compare:card]== NSOrderedAscending;
  }

  return maxLoadedBalance;
}

- (void)_updateCurrentAmount:(id)amount
{
  amountCopy = amount;
  objc_storeStrong(&self->_currentAmount, amount);
  v5 = [(PKPaymentSetupPurchaseAmountView *)self _isAmountValid:self->_currentAmount];
  v6 = [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator suggestionsWithAmount:self->_currentAmount];
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAmountSuggestions:v6];
  }

  else
  {
    [(PKNumberPadSuggestionsView *)self->_suggestionView setSuggestions:v6];
  }

  [(PKPaymentSetupPurchaseAmountView *)self _updateMessageLabelForAmount:self->_currentAmount];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didUpdateAmount:self->_currentAmount isValid:v5];
}

- (void)_updateMessageLabelForAmount:(id)amount
{
  amountCopy = amount;
  maxLoadedBalance = self->_maxLoadedBalance;
  if (maxLoadedBalance && [(NSDecimalNumber *)maxLoadedBalance compare:self->_currentAmount]== NSOrderedAscending)
  {
    [(PKPaymentSetupPurchaseAmountView *)self setDisplayingBalanceErrorMessage:1];
    v18 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:self->_maxLoadedBalance currency:self->_currency exponent:0];
    minimalFormattedStringValue = [v18 minimalFormattedStringValue];

    PKLocalizedPaymentString(&cfstr_SetupPurchaseE.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
    goto LABEL_15;
  }

  minLoadedBalance = self->_minLoadedBalance;
  if (minLoadedBalance)
  {
    if ([(NSDecimalNumber *)minLoadedBalance compare:amountCopy]== NSOrderedDescending)
    {
      zero = [MEMORY[0x1E696AB90] zero];
      v7 = [amountCopy compare:zero];

      if (v7)
      {
        [(PKPaymentSetupPurchaseAmountView *)self setDisplayingBalanceErrorMessage:1];
        v8 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:self->_minLoadedBalance currency:self->_currency exponent:0];
        minimalFormattedStringValue = [v8 minimalFormattedStringValue];

        PKLocalizedPaymentString(&cfstr_SetupPurchaseE_0.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
        v17 = LABEL_15:;
LABEL_16:
        [(UILabel *)self->_messageLabel setText:v17];

        goto LABEL_18;
      }
    }
  }

  depositAmount = self->_depositAmount;
  zero2 = [MEMORY[0x1E696AB90] zero];
  v12 = [(NSDecimalNumber *)depositAmount compare:zero2];

  [(PKPaymentSetupPurchaseAmountView *)self setDisplayingBalanceErrorMessage:0];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:self->_depositAmount currency:self->_currency exponent:0];
    minimalFormattedStringValue = [v13 minimalFormattedStringValue];

    depositType = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositType];
    v15 = @"SETUP_PURCHASE_REFUNDABLE_SERVICE_FEE_AMOUNT_MESSAGE";
    if (depositType == 2)
    {
      v15 = @"SETUP_PURCHASE_NONREFUNDABLE_SERVICE_FEE_AMOUNT_MESSAGE";
    }

    if (depositType == 1)
    {
      v16 = @"SETUP_PURCHASE_REFUNDABLE_DEPOSIT_AMOUNT_MESSAGE";
    }

    else
    {
      v16 = v15;
    }

    v17 = PKLocalizedPaymentString(&v16->isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
    goto LABEL_16;
  }

  [(UILabel *)self->_messageLabel setText:0];
LABEL_18:
  [(PKPaymentSetupPurchaseAmountView *)self setNeedsUpdateConstraints];
}

- (PKPaymentSetupPurchaseAmountViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end