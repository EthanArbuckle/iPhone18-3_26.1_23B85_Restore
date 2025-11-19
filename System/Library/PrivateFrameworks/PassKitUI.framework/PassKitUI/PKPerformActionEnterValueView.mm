@interface PKPerformActionEnterValueView
- (BOOL)_isCurrentAmountValid;
- (BOOL)_shouldShakeCard:(id)a3;
- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5;
- (PKPerformActionEnterValueView)initWithPass:(id)a3 action:(id)a4 paymentDataProvider:(id)a5;
- (PKPerformActionViewDelegate)delegate;
- (double)_amountTopPadding;
- (id)transactionCurrency;
- (void)_createSubviews;
- (void)_currentAmountDidChangeTo:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4;
- (void)_didTapSetUpAutoReloadButton;
- (void)_readCurrentBalance;
- (void)_updateCurrentAmount:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4;
- (void)_updateCurrentBalanceWithUpdatedTransitProperties;
- (void)_updateLayoutForKeyboardAction:(id)a3;
- (void)_updatePeerPaymentAccount;
- (void)dealloc;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3;
- (void)fetchServiceProviderDataWithCompletion:(id)a3;
- (void)keyboardWillChange:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)layoutSubviews;
- (void)numberPadSuggestionsView:(id)a3 didSelectSuggestion:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)saveLastInputValues;
- (void)setCardBalance:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setMaxLoadedBalance:(id)a3;
- (void)setMinBalance:(id)a3;
@end

@implementation PKPerformActionEnterValueView

- (PKPerformActionEnterValueView)initWithPass:(id)a3 action:(id)a4 paymentDataProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 type] == 1)
  {
    v51.receiver = self;
    v51.super_class = PKPerformActionEnterValueView;
    v12 = [(PKPerformActionEnterValueView *)&v51 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_pass, a3);
      objc_storeStrong(&v13->_action, a4);
      v14 = [MEMORY[0x1E696AB90] zero];
      cardBalance = v13->_cardBalance;
      v13->_cardBalance = v14;

      v16 = [MEMORY[0x1E696AB90] zero];
      currentAmount = v13->_currentAmount;
      v13->_currentAmount = v16;

      v18 = [v9 paymentPass];
      v19 = [v18 hasAssociatedPeerPaymentAccount];

      if (v19)
      {
        v20 = [MEMORY[0x1E69B9000] sharedInstance];
        peerPaymentService = v13->_peerPaymentService;
        v13->_peerPaymentService = v20;

        v22 = [MEMORY[0x1E696AD88] defaultCenter];
        [v22 addObserver:v13 selector:sel__peerPaymentAccountChanged_ name:*MEMORY[0x1E69BC360] object:v13->_peerPaymentService];

        [(PKPerformActionEnterValueView *)v13 _updatePeerPaymentAccount];
      }

      v23 = [v10 enteredValueItem];
      v24 = [v23 minLoadAmount];
      minLoadAmount = v13->_minLoadAmount;
      v13->_minLoadAmount = v24;

      v26 = [v10 enteredValueItem];
      v27 = [v26 maxLoadAmount];
      maxLoadAmount = v13->_maxLoadAmount;
      v13->_maxLoadAmount = v27;

      v29 = [v10 enteredValueItem];
      v30 = [v29 minLoadedBalance];
      minLoadedBalance = v13->_minLoadedBalance;
      v13->_minLoadedBalance = v30;

      v32 = [v10 enteredValueItem];
      v33 = [v32 maxLoadedBalance];
      maxLoadedBalance = v13->_maxLoadedBalance;
      v13->_maxLoadedBalance = v33;

      v35 = [(PKPass *)v13->_pass paymentPass];
      LODWORD(v32) = [PKPaymentAutoReloadSetupController shouldOfferAutoReloadForPass:v35];

      if (v32)
      {
        v13->_shouldShowAutoReloadButton = 1;
      }

      objc_storeStrong(&v13->_paymentServiceDataProvider, a5);
      if (objc_opt_respondsToSelector())
      {
        [(PKPaymentDataProvider *)v13->_paymentServiceDataProvider addDelegate:v13];
      }

      v36 = [v10 enteredValueItem];
      v37 = [v36 currency];

      v38 = PKMaximumFractionDigitsForCurrencyCode();
      v39 = objc_alloc(MEMORY[0x1E69B89E8]);
      v40 = [v9 serialNumber];
      v41 = [v39 initWithPassSerialNumber:v40];
      lastInput = v13->_lastInput;
      v13->_lastInput = v41;

      v43 = [objc_alloc(MEMORY[0x1E69B89F0]) initWithLastInput:v13->_lastInput];
      suggestionGenerator = v13->_suggestionGenerator;
      v13->_suggestionGenerator = v43;

      [(PKNumericSuggestionsEnterValueAlgorithm *)v13->_suggestionGenerator setPowerOfTenFactor:3 - v38];
      [(PKNumericSuggestionsEnterValueAlgorithm *)v13->_suggestionGenerator setDecimalPrecision:v38];
      [(PKNumericSuggestionsEnterValueAlgorithm *)v13->_suggestionGenerator setCurrencyCode:v37];
      [(PKNumericSuggestionsEnterValueAlgorithm *)v13->_suggestionGenerator setCardBalance:v13->_cardBalance];
      [(PKNumericSuggestionsEnterValueAlgorithm *)v13->_suggestionGenerator setMaxLoadAmount:*(&v13->super.super.super.isa + v50)];
      [(PKNumericSuggestionsEnterValueAlgorithm *)v13->_suggestionGenerator setMinLoadAmount:v13->_minLoadAmount];
      [(PKNumericSuggestionsEnterValueAlgorithm *)v13->_suggestionGenerator setMinBalance:v13->_minLoadedBalance];
      [(PKNumericSuggestionsEnterValueAlgorithm *)v13->_suggestionGenerator setMaxBalance:v13->_maxLoadedBalance];
      v45 = v13->_suggestionGenerator;
      v46 = [(PKPaymentPassAction *)v13->_action enteredValueItem];
      v47 = [v46 defaultSuggestions];
      [(PKNumericSuggestionsEnterValueAlgorithm *)v45 setDefaultValues:v47];

      [(PKPerformActionEnterValueView *)v13 _createSubviews];
      [(PKPerformActionEnterValueView *)v13 _updateCurrentAmount:v13->_currentAmount shouldGenerateNewSuggestions:1];
      [(PKPerformActionEnterValueView *)v13 _readCurrentBalance];
      v48 = [MEMORY[0x1E696AD88] defaultCenter];
      [v48 addObserver:v13 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
      [v48 addObserver:v13 selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
      [v48 addObserver:v13 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    }
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentDataProvider *)self->_paymentServiceDataProvider removeDelegate:self];
  }

  v3.receiver = self;
  v3.super_class = PKPerformActionEnterValueView;
  [(PKPerformActionEnterValueView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = PKPerformActionEnterValueView;
  [(PKPerformActionEnterValueView *)&v32 layoutSubviews];
  [(PKPerformActionEnterValueView *)self bounds];
  v4 = v3;
  v6 = v5;
  v31 = v5;
  v8 = v7;
  v10 = v9;
  [(PKPerformActionEnterValueView *)self _amountTopPadding];
  v12 = v11;
  v29 = v11;
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView sizeThatFits:v8, 1.79769313e308];
  v14 = v13;
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  Width = CGRectGetWidth(v34);
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setFrame:MinX, v12, Width, v14];
  [(PKEnterValueNewBalanceView *)self->_newBalanceView sizeThatFits:v8, 1.79769313e308];
  v17 = v16;
  v35.origin.x = v4;
  v35.origin.y = v31;
  v35.size.width = v8;
  v35.size.height = v10;
  v18 = CGRectGetMinX(v35);
  v36.origin.x = MinX;
  v36.origin.y = v29;
  v36.size.width = Width;
  v36.size.height = v14;
  v19 = CGRectGetMaxY(v36) + 6.0;
  v20 = v4;
  v37.origin.x = v4;
  v21 = v10;
  v37.origin.y = v31;
  v37.size.width = v8;
  v37.size.height = v10;
  v30 = v17;
  [(PKEnterValueNewBalanceView *)self->_newBalanceView setFrame:v18, v19, CGRectGetWidth(v37), v17];
  if (self->_shouldShowAutoReloadButton)
  {
    Height = CGRectGetHeight(self->_keyboardFrame);
    [(UIButton *)self->_autoReloadButton sizeThatFits:v8, 1.79769313e308];
    v23 = v22;
    v24 = v20;
    v38.origin.x = v20;
    v38.origin.y = v31;
    v38.size.width = v8;
    v38.size.height = v10;
    v25 = CGRectGetMinX(v38);
    v39.origin.x = v20;
    v39.origin.y = v31;
    v39.size.width = v8;
    v39.size.height = v21;
    v26 = CGRectGetWidth(v39);
    v40.origin.x = v24;
    v40.origin.y = v31;
    v40.size.width = v8;
    v40.size.height = v21;
    [(UIButton *)self->_autoReloadButton setFrame:v25, v30 + v19 + (CGRectGetMaxY(v40) - Height - v23 - v19 - v30 + 15.0) * 0.5, v26, v23];
  }
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PKPerformActionEnterValueView_keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKPerformActionEnterValueView *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __50__PKPerformActionEnterValueView_keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 480);
  v4 = *(v2 + 488);
  v5 = *(v2 + 496);
  v6 = *(v2 + 504);
  *(v2 + 512) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 480);
  if (v7)
  {
    [v7 CGRectValue];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
  }

  else
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    *v9 = *MEMORY[0x1E695F050];
    *(v8 + 496) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 480), v16);
}

- (void)keyboardWillChange:(id)a3
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    v6 = [a3 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __52__PKPerformActionEnterValueView_keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKPerformActionEnterValueView *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __52__PKPerformActionEnterValueView_keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 60;
  v4 = *(v2 + 60);
  v5 = *(v2 + 61);
  v6 = *(v2 + 62);
  v7 = *(v2 + 63);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 480), v13);
}

- (void)keyboardWillHide:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__PKPerformActionEnterValueView_keyboardWillHide___block_invoke;
  v3[3] = &unk_1E8010EB8;
  v3[4] = self;
  [(PKPerformActionEnterValueView *)self _updateLayoutForKeyboardAction:v3];
}

BOOL __50__PKPerformActionEnterValueView_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 480);
  *(v1 + 512) = 0;
  v2 = (*(a1 + 32) + 480);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 480);
  v4 = *(*(a1 + 32) + 488);
  v5 = *(*(a1 + 32) + 496);
  v6 = *(*(a1 + 32) + 504);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(PKPerformActionEnterValueView *)self layoutIfNeeded];
    if (v4[2](v4))
    {
      [(PKPerformActionEnterValueView *)self setNeedsLayout];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __64__PKPerformActionEnterValueView__updateLayoutForKeyboardAction___block_invoke;
      v5[3] = &unk_1E8010970;
      v5[4] = self;
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:134 animations:v5 completion:0];
    }
  }
}

- (id)transactionCurrency
{
  v2 = [(PKPaymentPassAction *)self->_action enteredValueItem];
  v3 = [v2 currency];

  return v3;
}

- (void)fetchServiceProviderDataWithCompletion:(id)a3
{
  action = self->_action;
  v5 = a3;
  v6 = [(PKPaymentPassAction *)action enteredValueItem];
  v7 = [v6 serviceProviderData];
  v10 = [v7 mutableCopy];

  currentAmount = self->_currentAmount;
  if (currentAmount)
  {
    [v10 setObject:currentAmount forKey:*MEMORY[0x1E69BC3E0]];
  }

  v9 = [v10 copy];
  v5[2](v5, v9);
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
      cardBalance = self->_cardBalance;
      if (!cardBalance)
      {
        v9 = [MEMORY[0x1E696AB90] zero];
        v10 = self->_cardBalance;
        self->_cardBalance = v9;

        cardBalance = self->_cardBalance;
      }

      [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setCardBalance:cardBalance];
      [(PKEnterValueNewBalanceView *)self->_newBalanceView setCardBalance:self->_cardBalance];
      v11 = [MEMORY[0x1E696AB90] zero];
      [(PKPerformActionEnterValueView *)self _updateCurrentAmount:v11 shouldGenerateNewSuggestions:1];

      v6 = v12;
    }
  }
}

- (void)setMaxLoadedBalance:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_maxLoadedBalance != v5)
  {
    v9 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maxLoadedBalance, a3);
      [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMaxBalance:self->_maxLoadedBalance];
      [(PKEnterValueNewBalanceView *)self->_newBalanceView setMaxBalance:self->_maxLoadedBalance];
      v8 = [MEMORY[0x1E696AB90] zero];
      [(PKPerformActionEnterValueView *)self _updateCurrentAmount:v8 shouldGenerateNewSuggestions:1];

      v6 = v9;
    }
  }
}

- (void)setMinBalance:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_minLoadedBalance != v5)
  {
    v9 = v5;
    v7 = [(NSDecimalNumber *)v5 isEqualToNumber:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_minLoadedBalance, a3);
      [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMinBalance:self->_minLoadedBalance];
      v8 = [MEMORY[0x1E696AB90] zero];
      [(PKPerformActionEnterValueView *)self _updateCurrentAmount:v8 shouldGenerateNewSuggestions:1];

      v6 = v9;
    }
  }
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  v4 = objc_storeWeak(&self->_delegate, v5);
  [v5 setRightBarButtonEnabled:{-[PKPerformActionEnterValueView _isCurrentAmountValid](self, "_isCurrentAmountValid")}];
}

- (void)saveLastInputValues
{
  if (self->_maxLoadedBalance)
  {
    v3 = [(NSDecimalNumber *)self->_currentAmount decimalNumberByAdding:self->_cardBalance];
    v4 = [v3 isEqualToNumber:self->_maxLoadedBalance];
  }

  else
  {
    v4 = 0;
  }

  [(PKNumericSuggestionLastInput *)self->_lastInput setWentToMax:v4];
  [(PKNumericSuggestionLastInput *)self->_lastInput setValue:self->_currentAmount];
  lastInput = self->_lastInput;

  [(PKNumericSuggestionLastInput *)lastInput save];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPerformActionEnterValueView_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPerformActionEnterValueView_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 440) uniqueID];
  if (PKEqualObjects())
  {
    v2 = PKEqualObjects();

    if ((v2 & 1) == 0)
    {
      objc_storeStrong((*(a1 + 32) + 472), *(a1 + 48));
      v3 = *(a1 + 32);

      [v3 _updateCurrentBalanceWithUpdatedTransitProperties];
    }
  }

  else
  {
  }
}

- (void)numberPadSuggestionsView:(id)a3 didSelectSuggestion:(id)a4
{
  v5 = a4;
  v6 = [v5 value];
  v7 = [(PKPerformActionEnterValueView *)self _shouldShakeCard:v6];

  v8 = [v5 value];
  v9 = [v5 usedMaximumSuggestion];

  [(PKPerformActionEnterValueView *)self _updateCurrentAmount:v8 shouldGenerateNewSuggestions:(v9 | v7) & 1];
  if (v7)
  {
    v10 = [(PKPerformActionEnterValueView *)self delegate];
    [v10 shakeCard];
  }
}

- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(PKPerformActionEnterValueView *)self _shouldShakeCard:v8])
  {
    v9 = [(PKPerformActionEnterValueView *)self delegate];
    [v9 shakeCard];
  }

  v10 = [(NSDecimalNumber *)self->_cardBalance decimalNumberByAdding:v7];
  v11 = [(NSDecimalNumber *)self->_cardBalance decimalNumberByAdding:v8];

  maxLoadedBalance = self->_maxLoadedBalance;
  v13 = !maxLoadedBalance || -[NSDecimalNumber compare:](maxLoadedBalance, "compare:", v10) != NSOrderedAscending || -[NSDecimalNumber compare:](self->_maxLoadedBalance, "compare:", v11) != NSOrderedAscending || [v10 compare:v11] == 1;

  return v13;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3
{
  v4 = [a3 currentAmount];
  currentAmount = self->_currentAmount;
  self->_currentAmount = v4;
  v6 = v4;

  [(PKEnterValueNewBalanceView *)self->_newBalanceView addAmountToBalance:v6];
  [(PKPerformActionEnterValueView *)self _currentAmountDidChangeTo:v6 shouldGenerateNewSuggestions:1];
}

- (void)_updatePeerPaymentAccount
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKPerformActionEnterValueView__updatePeerPaymentAccount__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__PKPerformActionEnterValueView__updatePeerPaymentAccount__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 544) account];
  v3 = *(a1 + 32);
  v4 = *(v3 + 552);
  *(v3 + 552) = v2;

  v5 = [*(*(a1 + 32) + 552) currentBalance];
  v10 = [v5 amount];

  if (v10 && ([MEMORY[0x1E696AB90] notANumber], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v10, "isEqual:", v6), v6, !v7))
  {
    v9 = v10;
  }

  else
  {
    v8 = [MEMORY[0x1E696AB90] zero];

    v9 = v8;
  }

  v11 = v9;
  [*(a1 + 32) setCardBalance:v9];
}

- (void)_readCurrentBalance
{
  v3 = [(PKPass *)self->_pass paymentPass];
  v4 = v3;
  if (v3)
  {
    if ([v3 hasAssociatedPeerPaymentAccount])
    {
      v5 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
      v6 = [v5 amount];

      if (!v6 || ([MEMORY[0x1E696AB90] notANumber], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v8))
      {
        v9 = [MEMORY[0x1E696AB90] zero];

        v6 = v9;
      }

      [(PKPerformActionEnterValueView *)self setCardBalance:v6];
      goto LABEL_20;
    }

    v10 = [v4 devicePrimaryPaymentApplication];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__68;
    v37[4] = __Block_byref_object_dispose__68;
    v38 = [(PKPaymentPassAction *)self->_action associatedEnteredValueIdentifier];
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke;
    aBlock[3] = &unk_1E80259D8;
    v6 = v10;
    v31 = v6;
    v32 = v4;
    v33 = self;
    v34 = v35;
    v11 = _Block_copy(aBlock);
    if ([(PKPass *)self->_pass isRemotePass])
    {
      v12 = objc_alloc_init(getNPKCompanionAgentConnectionClass_7());
      if (objc_opt_respondsToSelector())
      {
        v13 = [(PKPass *)self->_pass uniqueID];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_2;
        v28[3] = &unk_1E8025A00;
        v29 = v11;
        [v12 transitStateWithPassUniqueIdentifier:v13 paymentApplication:v6 completion:v28];
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_13;
      }

      paymentServiceDataProvider = self->_paymentServiceDataProvider;
      v15 = [(PKPass *)self->_pass uniqueID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_4;
      v26[3] = &unk_1E8025A00;
      v27 = v11;
      [(PKPaymentDataProvider *)paymentServiceDataProvider transitStateWithPassUniqueIdentifier:v15 paymentApplication:v6 completion:v26];

      v12 = v27;
    }

LABEL_13:
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_6;
    v25[3] = &unk_1E8025A50;
    v25[6] = v35;
    v25[4] = self;
    v25[5] = v37;
    v16 = _Block_copy(v25);
    if ([(PKPass *)self->_pass isRemotePass])
    {
      v17 = objc_alloc_init(getNPKCompanionAgentConnectionClass_7());
      if (objc_opt_respondsToSelector())
      {
        v18 = [(PKPass *)self->_pass uniqueID];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_8;
        v23[3] = &unk_1E8010D60;
        v24 = v16;
        [v17 balancesForPaymentPassWithUniqueIdentifier:v18 completion:v23];
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_19:

        _Block_object_dispose(v35, 8);
        _Block_object_dispose(v37, 8);

LABEL_20:
        goto LABEL_21;
      }

      v19 = self->_paymentServiceDataProvider;
      v20 = [(PKPass *)self->_pass uniqueID];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_10;
      v21[3] = &unk_1E8010D60;
      v22 = v16;
      [(PKPaymentDataProvider *)v19 balancesForPaymentPassWithUniqueIdentifier:v20 completion:v21];

      v17 = v22;
    }

    goto LABEL_19;
  }

LABEL_21:
}

void __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke(uint64_t a1, void *a2)
{
  obj = [a2 transitPassPropertiesWithPaymentApplication:*(a1 + 32) pass:*(a1 + 40)];
  v3 = [obj balanceAmount];
  if (v3)
  {
    v4 = v3;
    v5 = PKEqualObjects();

    if ((v5 & 1) == 0)
    {
      objc_storeStrong((*(a1 + 48) + 472), obj);
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [*(a1 + 48) _updateCurrentBalanceWithUpdatedTransitProperties];
    }
  }
}

void __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_3;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_5;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_6(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [a2 allObjects];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    v15 = *MEMORY[0x1E69BC060];
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = *(a1[5] + 8);
        v10 = *(v8 + 40);
        v9 = (v8 + 40);
        if (!v10 && (*(*(a1[6] + 8) + 24) & 1) == 0)
        {
          objc_storeStrong(v9, v15);
        }

        v11 = [v7 identifiers];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_7;
        v17[3] = &unk_1E8025A28;
        v17[4] = a1[5];
        v12 = [v11 pk_hasObjectPassingTest:v17];

        if (v12)
        {
          v13 = a1[4];
          v14 = [v7 value];
          [v13 setCardBalance:v14];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

BOOL __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v5 && v4)
    {
      v7 = [v4 caseInsensitiveCompare:v5] == 0;
    }
  }

  return v7;
}

void __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_9;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PKPerformActionEnterValueView__readCurrentBalance__block_invoke_11;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_updateCurrentBalanceWithUpdatedTransitProperties
{
  v7 = [(PKTransitPassProperties *)self->_transitProperties balance];
  if (v7 && ([MEMORY[0x1E696AB90] notANumber], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v7, "isEqualToNumber:", v4), v4, v3 = v7, (v5 & 1) == 0))
  {
    [(PKPerformActionEnterValueView *)self setCardBalance:v7];
  }

  else
  {
    v6 = [MEMORY[0x1E696AB90] zero];
    [(PKPerformActionEnterValueView *)self setCardBalance:v6];
  }
}

- (BOOL)_shouldShakeCard:(id)a3
{
  v4 = a3;
  if (v4 && ([MEMORY[0x1E696AB90] notANumber], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "compare:", v5), v5, v6))
  {
    v7 = [v4 decimalNumberByAdding:self->_cardBalance];
    v8 = [v7 stringValue];
    v9 = [v8 length];

    v10 = 1;
    if (v9 <= 7)
    {
      maxLoadAmount = self->_maxLoadAmount;
      if (!maxLoadAmount || [(NSDecimalNumber *)maxLoadAmount compare:v4]!= NSOrderedAscending)
      {
        maxLoadedBalance = self->_maxLoadedBalance;
        if (!maxLoadedBalance || [(NSDecimalNumber *)maxLoadedBalance compare:v7]!= NSOrderedAscending)
        {
          v10 = 0;
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)_amountTopPadding
{
  if (PKUIGetMinScreenWidthType() && (-[PKPerformActionEnterValueView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 verticalSizeClass], v3, v4 != 1))
  {
    return 44.0;
  }

  else
  {
    return 6.0;
  }
}

- (void)_updateCurrentAmount:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_currentAmount, a3);
  v7 = a3;
  [(PKEnterValueNewBalanceView *)self->_newBalanceView addAmountToBalance:v7];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setCurrentAmount:v7];
  [(PKPerformActionEnterValueView *)self _currentAmountDidChangeTo:v7 shouldGenerateNewSuggestions:v4];
}

- (void)_currentAmountDidChangeTo:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4
{
  if (a4)
  {
    v5 = [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator suggestionsWithAmount:a3];
    [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAmountSuggestions:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setRightBarButtonEnabled:{-[PKPerformActionEnterValueView _isCurrentAmountValid](self, "_isCurrentAmountValid")}];

  [(PKPerformActionEnterValueView *)self setNeedsLayout];
}

- (BOOL)_isCurrentAmountValid
{
  v3 = self->_currentAmount;
  v4 = [MEMORY[0x1E696AB90] notANumber];
  v5 = [(NSDecimalNumber *)v3 isEqualToNumber:v4];

  v6 = [(NSDecimalNumber *)v3 decimalNumberByAdding:self->_cardBalance];
  v7 = [MEMORY[0x1E696AB90] zero];
  v8 = [(NSDecimalNumber *)v3 compare:v7];

  if (!v8 || (maxLoadedBalance = self->_maxLoadedBalance) != 0 && [(NSDecimalNumber *)maxLoadedBalance compare:v6]== NSOrderedAscending || (minLoadedBalance = self->_minLoadedBalance) != 0 && [(NSDecimalNumber *)minLoadedBalance compare:v6]== NSOrderedDescending || self->_minLoadAmount && [(NSDecimalNumber *)self->_currentAmount compare:?]== NSOrderedAscending)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5 ^ 1;
    if (self->_maxLoadAmount)
    {
      v11 &= [(NSDecimalNumber *)self->_currentAmount compare:?]!= NSOrderedDescending;
    }
  }

  return v11;
}

- (void)_createSubviews
{
  v3 = *MEMORY[0x1E69DB980];
  v18 = PKRoundedSystemFontOfSizeAndWeight(60.0, *MEMORY[0x1E69DB980]);
  v4 = PKRoundedSystemFontOfSizeAndWeight(36.0, v3);
  v5 = [(PKPaymentPassAction *)self->_action enteredValueItem];
  v6 = [v5 currency];

  v7 = [[PKEnterCurrencyAmountView alloc] initWithCurrency:v6 amount:self->_currentAmount];
  enterCurrencyAmountView = self->_enterCurrencyAmountView;
  self->_enterCurrencyAmountView = v7;

  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setDelegate:self];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAmountFont:v18];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setCurrencySymbolFont:v4];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setKerning:&unk_1F3CC6D08];
  [(PKPerformActionEnterValueView *)self addSubview:self->_enterCurrencyAmountView];
  v9 = [PKEnterValueNewBalanceView alloc];
  v10 = [(PKPaymentPassAction *)self->_action enteredValueItem];
  v11 = [v10 currency];
  v12 = [(PKEnterValueNewBalanceView *)v9 initWithCurrencyCode:v11];
  newBalanceView = self->_newBalanceView;
  self->_newBalanceView = v12;

  [(PKEnterValueNewBalanceView *)self->_newBalanceView setMaxBalance:self->_maxLoadedBalance];
  [(PKEnterValueNewBalanceView *)self->_newBalanceView setMinBalance:self->_minLoadedBalance];
  [(PKEnterValueNewBalanceView *)self->_newBalanceView setMinLoadAmount:self->_minLoadAmount];
  [(PKEnterValueNewBalanceView *)self->_newBalanceView setMaxLoadAmount:self->_maxLoadAmount];
  [(PKEnterValueNewBalanceView *)self->_newBalanceView setCardBalance:self->_cardBalance];
  [(PKEnterValueNewBalanceView *)self->_newBalanceView sizeToFit];
  [(PKPerformActionEnterValueView *)self addSubview:self->_newBalanceView];
  if (self->_shouldShowAutoReloadButton)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69DC738]);
    autoReloadButton = self->_autoReloadButton;
    self->_autoReloadButton = v14;

    v16 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v16 setTitleLineBreakMode:4];
    [v16 setTitleAlignment:2];
    v17 = PKLocalizedPaymentString(&cfstr_PassDetailsSet_2.isa);
    [v16 setTitle:v17];

    [(UIButton *)self->_autoReloadButton setConfiguration:v16];
    [(UIButton *)self->_autoReloadButton addTarget:self action:sel__didTapSetUpAutoReloadButton forControlEvents:64];
    [(UIButton *)self->_autoReloadButton setAccessibilityIdentifier:*MEMORY[0x1E69B94A8]];
    [(PKPerformActionEnterValueView *)self addSubview:self->_autoReloadButton];
  }
}

- (void)_didTapSetUpAutoReloadButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 didTapSetUpAutoReloadButton];
    }
  }
}

- (PKPerformActionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end