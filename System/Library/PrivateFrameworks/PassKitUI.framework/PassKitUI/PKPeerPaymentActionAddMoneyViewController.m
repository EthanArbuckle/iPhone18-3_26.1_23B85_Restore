@interface PKPeerPaymentActionAddMoneyViewController
- (BOOL)_isCurrentAmountValid;
- (BOOL)_shouldShakeCard:(id)a3;
- (BOOL)_showSignageWithinKeypad;
- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5;
- (PKPeerPaymentActionAddMoneyViewController)initWithPaymentPass:(id)a3 webService:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6;
- (id)_addBarButton;
- (id)_spinnerBarButton;
- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)a3;
- (id)presentationSceneIdentifierForTopUpController:(id)a3;
- (void)_addAction;
- (void)_currentAmountDidChangeTo:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4;
- (void)_showNavigationBarSpinner:(BOOL)a3;
- (void)_updateBarButtonEnabledState;
- (void)_updateCurrentAmount:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4;
- (void)_updateLayoutForKeyboardAction:(id)a3;
- (void)dealloc;
- (void)didSelectSuggestion:(id)a3;
- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)a3;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3;
- (void)keyboardWillChange:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)peerPaymentActionController:(id)a3 hasChangedState:(unint64_t)a4;
- (void)setCardBalance:(id)a3;
- (void)setMaxBalance:(id)a3;
- (void)setMaxLoadAmount:(id)a3;
- (void)setMinBalance:(id)a3;
- (void)setMinLoadAmount:(id)a3;
- (void)thresholdTopUpController:(id)a3 requestsPushViewController:(id)a4;
- (void)thresholdTopUpControllerCompletedSetup:(id)a3;
- (void)updateAccountValues;
- (void)updateFirstResponder;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willDismissViewController;
@end

@implementation PKPeerPaymentActionAddMoneyViewController

- (PKPeerPaymentActionAddMoneyViewController)initWithPaymentPass:(id)a3 webService:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6
{
  v34[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33.receiver = self;
  v33.super_class = PKPeerPaymentActionAddMoneyViewController;
  v13 = [(PKPeerPaymentActionViewController *)&v33 initWithPaymentPass:v10 webService:v11 passLibraryDataProvider:v12 context:a6];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69B89F0]);
    v15 = *(v13 + 138);
    *(v13 + 138) = v14;

    [v13 setControllerAction:1];
    v16 = *(MEMORY[0x1E695F050] + 16);
    *(v13 + 1144) = *MEMORY[0x1E695F050];
    *(v13 + 1160) = v16;
    v17 = [v13 navigationItem];
    v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_6.isa);
    [v17 setTitle:v18];

    v19 = [v13 cancelButton];
    [v17 setLeftBarButtonItem:v19];

    v20 = [v13 _addBarButton];
    [v17 setRightBarButtonItem:v20];

    [v13 _updateBarButtonEnabledState];
    objc_initWeak(&location, v13);
    v21 = [v13 account];
    v22 = [v13 account];
    if ([v22 supportsThresholdTopUp])
    {
      v23 = PKIsVision();

      if (v23)
      {
LABEL_6:
        v34[0] = objc_opt_class();
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
        v25 = [v13 registerForTraitChanges:v24 withHandler:&__block_literal_global_157];

        v26 = objc_alloc_init(MEMORY[0x1E69B8F40]);
        [v26 setEndpoint:3];
        [v26 setQuoteRequestDestination:3];
        v27 = [v13 webService];
        [v27 prewarmDeviceScoreForAttributes:v26];

        objc_destroyWeak(&location);
        goto LABEL_7;
      }

      v22 = [MEMORY[0x1E69B8DB8] paymentService];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __108__PKPeerPaymentActionAddMoneyViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke;
      v29[3] = &unk_1E801CA90;
      v30 = v21;
      objc_copyWeak(&v31, &location);
      [v22 familyMembersWithCompletion:v29];
      objc_destroyWeak(&v31);
    }

    goto LABEL_6;
  }

LABEL_7:

  return v13;
}

void __108__PKPeerPaymentActionAddMoneyViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:v3];
  v5 = *(a1 + 32);
  v6 = [v4 currentUser];
  LODWORD(v5) = [v5 isEligibleForThresholdTopUpForUser:v6];

  if (v5)
  {
    v7 = [MEMORY[0x1E69B9000] sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __108__PKPeerPaymentActionAddMoneyViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_2;
    v8[3] = &unk_1E8011158;
    objc_copyWeak(&v9, (a1 + 40));
    [v7 recurringPaymentsWithCompletion:v8];

    objc_destroyWeak(&v9);
  }
}

void __108__PKPeerPaymentActionAddMoneyViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * v7) type] == 3)
        {

          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__PKPeerPaymentActionAddMoneyViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_3;
  v8[3] = &unk_1E80111A8;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = 1;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  objc_destroyWeak(&v9);
LABEL_11:
}

void __108__PKPeerPaymentActionAddMoneyViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 1184) = 1;
    v3 = WeakRetained;
    [*(WeakRetained + 141) setHidden:(*(a1 + 40) & 1) == 0];
    WeakRetained = v3;
  }
}

void __108__PKPeerPaymentActionAddMoneyViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 viewIfLoaded];
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];
    v2 = v3;
  }
}

- (void)dealloc
{
  v3 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v3 setEndpoint:3];
  [v3 setQuoteRequestDestination:3];
  v4 = [(PKPeerPaymentActionViewController *)self webService];
  [v4 unloadDeviceScoreForAttributes:v3];

  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v5 dealloc];
}

- (void)loadView
{
  v36.receiver = self;
  v36.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v36 loadView];
  v3 = [(PKPeerPaymentActionViewController *)self account];
  v4 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  if (PKPeerPaymentFDICSignageEnabled() && ([(PKPeerPaymentActionViewController *)self account], v5 = objc_claimAutoreleasedReturnValue(), IsFDICInsured = PKPeerPaymentAccountIsFDICInsured(), v5, IsFDICInsured))
  {
    v7 = [[PKFDICSignageView alloc] initWithFeature:1 displayingBankName:1];
    [(PKFDICSignageView *)v7 setContentInsets:16.0, 16.0, 16.0, 16.0];
    v8 = [PKDashboardViewControllerFooterContainer alloc];
    v9 = [(PKDashboardViewControllerFooterContainer *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PKDashboardViewControllerFooterContainer *)v9 setMinimumFooterHeight:0.0];
    [(PKDashboardViewControllerFooterContainer *)v9 setBackdropOpaque:1];
    [(PKDashboardViewControllerFooterContainer *)v9 setCurrentFooter:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PKPeerPaymentActionViewController *)self currentAmount];
  v11 = [v3 currentBalance];
  v12 = [v11 currency];
  v13 = PKCurrencyAmountCreate(v10, v12);

  v14 = [(PKPeerPaymentActionViewController *)self pass];
  LODWORD(v11) = [(PKPeerPaymentActionAddMoneyViewController *)self _showSignageWithinKeypad];
  v15 = [PKEnterCurrencyAmountPassView alloc];
  if (v11)
  {
    v16 = [(PKEnterCurrencyAmountPassView *)v15 initWithCurrenyAmount:v13 pass:v14 withdrawal:0 keypadBottomView:v9];
    amountPassView = self->_amountPassView;
    self->_amountPassView = v16;
  }

  else
  {
    v18 = [(PKEnterCurrencyAmountPassView *)v15 initWithCurrenyAmount:v13 pass:v14 withdrawal:0];
    v19 = self->_amountPassView;
    self->_amountPassView = v18;

    objc_storeStrong(&self->_footerContainer, v9);
    if (self->_footerContainer)
    {
      [v4 addSubview:?];
    }
  }

  v20 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [v20 setDelegate:self];
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView setDelegate:self];
  if (PKUIKeyboardIsHardwareKeyboardActive() & 1) != 0 || (_UISolariumFeatureFlagEnabled())
  {
    v21 = [v20 amountTextField];
    [v21 setDisablePrediction:1];
  }

  else
  {
    v22 = [[PKNumberPadSuggestionsView alloc] initWithDefaultFrame];
    suggestionView = self->_suggestionView;
    self->_suggestionView = v22;

    [(PKNumberPadSuggestionsView *)self->_suggestionView setDelegate:self];
    [v20 setInputAccessoryView:self->_suggestionView];
  }

  v32 = v13;
  objc_initWeak(&location, self);
  v24 = MEMORY[0x1E69DC628];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __53__PKPeerPaymentActionAddMoneyViewController_loadView__block_invoke;
  v33[3] = &unk_1E8010A60;
  objc_copyWeak(&v34, &location);
  v25 = [v24 actionWithHandler:v33];
  v26 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v27 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadSetu.isa);
  [v26 setTitle:v27];

  [v26 setTitleTextAttributesTransformer:&__block_literal_global_42_0];
  v28 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v26 primaryAction:v25];
  actionButton = self->_actionButton;
  self->_actionButton = v28;

  [(UIButton *)self->_actionButton setHidden:!self->_offerThresholdTopUp];
  [(UIButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B94A8]];
  [v4 addSubview:self->_actionButton];
  [v4 addSubview:self->_amountPassView];
  v30 = [MEMORY[0x1E696AD88] defaultCenter];
  [v30 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [v30 addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
  [v30 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  v31 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  [v31 setAccessibilityIdentifier:*MEMORY[0x1E69B93F0]];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void __53__PKPeerPaymentActionAddMoneyViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v2 = [PKPeerPaymentThresholdTopUpController alloc];
    v3 = [v9 account];
    v4 = [v9 pass];
    v5 = [v9 context];
    v6 = [v9 passLibraryDataProvider];
    v7 = [(PKPeerPaymentThresholdTopUpController *)v2 initWithPeerPaymentAccount:v3 pass:v4 context:v5 passLibraryDataProvider:v6 delegate:v9];
    v8 = v9[147];
    v9[147] = v7;

    [v9[147] presentTopUpFlowForRecurringPayment:0];
    WeakRetained = v9;
  }
}

id __53__PKPeerPaymentActionAddMoneyViewController_loadView__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70]);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionAddMoneyViewController *)&v5 viewWillAppear:a3];
  v4 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  [v4 layoutIfNeeded];

  [(PKPeerPaymentActionAddMoneyViewController *)self updateFirstResponder];
}

- (void)viewWillLayoutSubviews
{
  v49.receiver = self;
  v49.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionAddMoneyViewController *)&v49 viewWillLayoutSubviews];
  v3 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 bounds];
  v13 = v12;
  rect = v5 + v14;
  v16 = v15 - (v7 + v11);
  v18 = v17 - (v5 + v9);
  [(PKNumberPadSuggestionsView *)self->_suggestionView frame];
  [(PKNumberPadSuggestionsView *)self->_suggestionView setFrame:?];
  v19 = 0.0;
  if (!CGRectIsNull(self->_keyboardFrame))
  {
    if (PKIsPhone())
    {
      v19 = self->_keyboardFrame.size.height - v9;
    }

    else
    {
      v20 = [v3 window];
      v21 = v20;
      if (v20)
      {
        [v20 convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
        [v3 convertRect:0 fromView:?];
        v19 = fmax(rect + v18 - v22, 0.0);
      }
    }
  }

  v23 = v7 + v13;
  v24 = MEMORY[0x1E695F060];
  v25 = *(MEMORY[0x1E695F060] + 8);
  footerContainer = self->_footerContainer;
  v27 = v25;
  if (footerContainer)
  {
    [(PKDashboardViewControllerFooterContainer *)footerContainer sizeThatFits:v16, v18];
    v28 = v9;
    v29 = v18;
    v30 = v16;
    v32 = v31;
    v27 = v33;
    v50.origin.x = v23;
    v50.origin.y = rect;
    v50.size.width = v30;
    v50.size.height = v29;
    MaxY = CGRectGetMaxY(v50);
    v35 = v32;
    v16 = v30;
    v18 = v29;
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setFrame:v23, MaxY - v27 - v19, v35, v28 + v27];
  }

  actionButton = self->_actionButton;
  if (actionButton)
  {
    [(UIButton *)actionButton sizeThatFits:v16, v18];
    v47 = v16;
    v38 = v37;
    v39 = v19 + v27;
    v40 = v39 + v37;
    [(PKEnterCurrencyAmountPassView *)self->_amountPassView sizeThatFits:*v24, v25];
    v42 = fmin(fmax(v18 - v40 - v41, 0.0) * 0.5, 32.0);
    v43 = self->_actionButton;
    PKRectCenteredXInRect();
    [(UIButton *)v43 setFrame:?];
    v25 = v38;
    v16 = v47;
  }

  else
  {
    v39 = v19 + v27;
    v42 = 32.0;
  }

  v44 = v39 + v42 + v25;
  if (v25 <= 0.0)
  {
    v44 = v39;
  }

  [(PKEnterCurrencyAmountPassView *)self->_amountPassView sizeThatFits:v16, v18 - v44];
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView setFrame:v23, rect, v45, v46];
}

- (void)peerPaymentActionController:(id)a3 hasChangedState:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v7 peerPaymentActionController:a3 hasChangedState:?];
  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    v6 = [(PKPeerPaymentActionAddMoneyViewController *)self navigationController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  [(PKPeerPaymentActionAddMoneyViewController *)self updateFirstResponder];
  [(PKPeerPaymentActionAddMoneyViewController *)self _showNavigationBarSpinner:0];
}

- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)a3
{
  v3 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)willDismissViewController
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v4 willDismissViewController];
  v3 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [v3 dismissKeyboard];
}

- (void)updateFirstResponder
{
  v3 = [(PKPeerPaymentActionAddMoneyViewController *)self navigationController];
  v4 = [v3 presentedViewController];

  if (!v4)
  {
    v5 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
    [v5 showKeyboard];
  }
}

- (void)updateAccountValues
{
  v30.receiver = self;
  v30.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v30 updateAccountValues];
  v3 = [(PKPeerPaymentActionViewController *)self account];
  [(PKPeerPaymentActionAddMoneyViewController *)self _updateBarButtonEnabledState];
  if (v3)
  {
    v4 = [v3 currentBalance];
    v5 = [v3 maximumBalance];
    v6 = [v4 currency];
    v7 = PKMaximumFractionDigitsForCurrencyCode();

    suggestionGenerator = self->_suggestionGenerator;
    v9 = [v4 amount];
    [(PKNumericSuggestionsEnterValueAlgorithm *)suggestionGenerator setCardBalance:v9];

    v10 = self->_suggestionGenerator;
    v11 = [v4 currency];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v10 setCurrencyCode:v11];

    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setPowerOfTenFactor:3 - v7];
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setDecimalPrecision:v7];
    v12 = self->_suggestionGenerator;
    v13 = [v3 defaultSuggestions];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v12 setDefaultValues:v13];

    v14 = self->_suggestionGenerator;
    v15 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v14 setMaxLoadAmount:v15];

    v16 = self->_suggestionGenerator;
    v17 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v16 setMinLoadAmount:v17];

    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMaxBalance:v5];
    v18 = self->_suggestionGenerator;
    v19 = [(PKPeerPaymentActionViewController *)self minBalance];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v18 setMinBalance:v19];

    v20 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
    v21 = [v4 currency];
    [v20 setCurrency:v21];

    [v20 sizeToFit];
    v22 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    v23 = [v4 currency];
    [v22 setCurrencyCode:v23];

    v24 = [(PKPeerPaymentActionViewController *)self minBalance];
    [v22 setMinBalance:v24];

    [v22 setMaxBalance:v5];
    v25 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
    [v22 setMinLoadAmount:v25];

    v26 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
    [v22 setMaxLoadAmount:v26];

    v27 = [v4 amount];
    [v22 setCardBalance:v27];

    [v22 sizeToFit];
    [(PKPeerPaymentActionAddMoneyViewController *)self setMaxBalance:v5];
    v28 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:v28 shouldGenerateNewSuggestions:1];

    v29 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
    [v29 setNeedsLayout];
  }
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKPeerPaymentActionAddMoneyViewController_keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKPeerPaymentActionAddMoneyViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __62__PKPeerPaymentActionAddMoneyViewController_keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1144);
  v4 = *(v2 + 1152);
  v5 = *(v2 + 1160);
  v6 = *(v2 + 1168);
  *(v2 + 1136) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1144);
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
    *(v8 + 1160) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1144), v16);
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
      v8[2] = __64__PKPeerPaymentActionAddMoneyViewController_keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKPeerPaymentActionAddMoneyViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __64__PKPeerPaymentActionAddMoneyViewController_keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 143;
  v4 = *(v2 + 143);
  v5 = *(v2 + 144);
  v6 = *(v2 + 145);
  v7 = *(v2 + 146);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1144), v13);
}

- (void)keyboardWillHide:(id)a3
{
  if (self->_keyboardVisible)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__PKPeerPaymentActionAddMoneyViewController_keyboardWillHide___block_invoke;
    v5[3] = &unk_1E8010EB8;
    v5[4] = self;
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateLayoutForKeyboardAction:v5];
  }
}

BOOL __62__PKPeerPaymentActionAddMoneyViewController_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1144);
  *(v1 + 1136) = 0;
  v2 = (*(a1 + 32) + 1144);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1144);
  v4 = *(*(a1 + 32) + 1152);
  v5 = *(*(a1 + 32) + 1160);
  v6 = *(*(a1 + 32) + 1168);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPeerPaymentActionAddMoneyViewController *)self viewIfLoaded];
    v6 = v5;
    if (v5)
    {
      [v5 layoutIfNeeded];
      if (v4[2](v4))
      {
        [v6 setNeedsLayout];
        v7 = MEMORY[0x1E69DD250];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __76__PKPeerPaymentActionAddMoneyViewController__updateLayoutForKeyboardAction___block_invoke;
        v10[3] = &unk_1E8010970;
        v11 = v6;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __76__PKPeerPaymentActionAddMoneyViewController__updateLayoutForKeyboardAction___block_invoke_2;
        v8[3] = &unk_1E8012FD0;
        v8[4] = self;
        v9 = v11;
        [v7 _animateUsingDefaultTimingWithOptions:134 animations:v10 completion:v8];
      }
    }

    else
    {
      v4[2](v4);
    }
  }
}

void __76__PKPeerPaymentActionAddMoneyViewController__updateLayoutForKeyboardAction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    [*(a1 + 40) setNeedsLayout];
    v4 = MEMORY[0x1E69DD250];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__PKPeerPaymentActionAddMoneyViewController__updateLayoutForKeyboardAction___block_invoke_3;
    v5[3] = &unk_1E8010970;
    v6 = *(a1 + 40);
    [v4 _animateUsingDefaultTimingWithOptions:134 animations:v5 completion:0];
  }
}

- (BOOL)_showSignageWithinKeypad
{
  v2 = PKIsPhone();
  if (v2)
  {
    if (PKUIKeyboardIsHardwareKeyboardActive())
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = _UISolariumFeatureFlagEnabled() ^ 1;
    }
  }

  return v2;
}

- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)a3
{
  v3 = [(PKPeerPaymentActionAddMoneyViewController *)self viewIfLoaded];
  [v3 setNeedsLayout];
}

- (void)didSelectSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  -[PKPeerPaymentActionAddMoneyViewController _updateCurrentAmount:shouldGenerateNewSuggestions:](self, "_updateCurrentAmount:shouldGenerateNewSuggestions:", v5, [v4 usedMaximumSuggestion]);

  v6 = [v4 value];

  LODWORD(v4) = [(PKPeerPaymentActionAddMoneyViewController *)self _shouldShakeCard:v6];
  if (v4)
  {
    amountPassView = self->_amountPassView;

    [(PKEnterCurrencyAmountPassView *)amountPassView shakePassView];
  }
}

- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(PKPeerPaymentActionAddMoneyViewController *)self _shouldShakeCard:v8])
  {
    [(PKEnterCurrencyAmountPassView *)self->_amountPassView shakePassView];
  }

  v9 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v10 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v11 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v12 = !v9 || [v9 compare:v7] != -1 || objc_msgSend(v9, "compare:", v8) != -1;
  v13 = [v8 decimalNumberByAdding:v10];
  v14 = [v7 decimalNumberByAdding:v10];
  if (v11 && [v11 compare:v13] == -1)
  {
    v12 &= [v11 compare:v14] != -1;
  }

  return v12;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3
{
  v5 = [a3 currentAmount];
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:v5];
  v4 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
  [v4 addAmountToBalance:v5];

  [(PKPeerPaymentActionAddMoneyViewController *)self _currentAmountDidChangeTo:v5 shouldGenerateNewSuggestions:1];
}

- (void)setCardBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setCardBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setCardBalance:v4];
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setCardBalance:v4];

    v7 = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMaxBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMaxBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMaxBalance:v4];
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setMaxBalance:v4];

    v7 = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self minBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMinBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMinBalance:v4];
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setMinBalance:v4];

    v7 = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMaxLoadAmount:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMaxLoadAmount:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMaxLoadAmount:v4];
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setMaxLoadAmount:v4];

    v7 = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinLoadAmount:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMinLoadAmount:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMinLoadAmount:v4];
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setMinLoadAmount:v4];

    v7 = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (id)_addBarButton
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __58__PKPeerPaymentActionAddMoneyViewController__addBarButton__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v3 = [v2 actionWithHandler:&v7];
  v4 = objc_alloc(MEMORY[0x1E69DC708]);
  v5 = [v4 initWithBarButtonSystemItem:0 primaryAction:{v3, v7, v8, v9, v10}];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B93E8]];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __58__PKPeerPaymentActionAddMoneyViewController__addBarButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addAction];
}

- (id)_spinnerBarButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v2];
  [v2 startAnimating];

  return v3;
}

- (void)_updateBarButtonEnabledState
{
  v3 = [(PKPeerPaymentActionAddMoneyViewController *)self navigationItem];
  v6 = [v3 rightBarButtonItem];

  v4 = [(PKPeerPaymentActionViewController *)self account];

  if (v4)
  {
    v5 = [(PKPeerPaymentActionAddMoneyViewController *)self _isCurrentAmountValid];
  }

  else
  {
    v5 = 0;
  }

  [v6 setEnabled:v5];
}

- (void)_addAction
{
  [(PKPeerPaymentActionAddMoneyViewController *)self _showNavigationBarSpinner:1];
  v8 = [(PKPeerPaymentActionViewController *)self currentAmount];
  v3 = [(PKPeerPaymentActionViewController *)self account];
  v4 = [v3 currentBalance];
  v5 = [v4 currency];

  v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v8 currency:v5 exponent:0];
  v7 = [(PKPeerPaymentActionViewController *)self actionController];
  [v7 performActionWithCurrencyAmount:v6];
}

- (void)_updateCurrentAmount:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:v8];
  v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
  [v6 addAmountToBalance:v8];

  v7 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [v7 setCurrentAmount:v8];

  [(PKPeerPaymentActionAddMoneyViewController *)self _currentAmountDidChangeTo:v8 shouldGenerateNewSuggestions:v4];
}

- (void)_currentAmountDidChangeTo:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v27 = a3;
  if (v4)
  {
    val = self;
    v25 = [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator suggestionsWithAmount:v27];
    if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
    {
      v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
      v7 = v25;
      [v6 setAmountSuggestions:v25];
    }

    else
    {
      IsHardwareKeyboardActive = PKUIKeyboardIsHardwareKeyboardActive();
      if (self->_suggestionView)
      {
        v7 = v25;
        [(PKNumberPadSuggestionsView *)val->_suggestionView setSuggestions:v25];
      }

      else
      {
        v7 = v25;
        if (IsHardwareKeyboardActive)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          objc_initWeak(&location, val);
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          obj = v25;
          v11 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
          if (v11)
          {
            v12 = *v32;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v32 != v12)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v31 + 1) + 8 * i);
                v15 = MEMORY[0x1E69DC628];
                v16 = [v14 displayValue];
                v29[0] = MEMORY[0x1E69E9820];
                v29[1] = 3221225472;
                v29[2] = __100__PKPeerPaymentActionAddMoneyViewController__currentAmountDidChangeTo_shouldGenerateNewSuggestions___block_invoke;
                v29[3] = &unk_1E8012328;
                objc_copyWeak(&v30, &location);
                v29[4] = v14;
                v17 = [v15 actionWithTitle:v16 image:0 identifier:0 handler:v29];

                v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v17];
                v19 = [MEMORY[0x1E69DC888] labelColor];
                [v18 setTintColor:v19];

                [v10 addObject:v18];
                objc_destroyWeak(&v30);
              }

              v11 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
            }

            while (v11);
          }

          v20 = [(PKEnterCurrencyAmountPassView *)val->_amountPassView enterCurrencyAmountView];
          v21 = [v20 amountTextField];
          v22 = [v21 inputAssistantItem];

          v23 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v10 representativeItem:0];
          v36 = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
          [v22 setTrailingBarButtonGroups:v24];

          objc_destroyWeak(&location);
          v7 = v25;
        }
      }
    }

    self = val;
  }

  [(PKPeerPaymentActionAddMoneyViewController *)self _updateBarButtonEnabledState];
  v8 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  [v8 setNeedsLayout];
}

void __100__PKPeerPaymentActionAddMoneyViewController__currentAmountDidChangeTo_shouldGenerateNewSuggestions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSelectSuggestion:*(a1 + 32)];
}

- (BOOL)_isCurrentAmountValid
{
  v3 = [(PKPeerPaymentActionViewController *)self currentAmount];
  v4 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v5 = [(PKPeerPaymentActionViewController *)self minBalance];
  v6 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v7 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v8 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v9 = [v4 decimalNumberByAdding:v3];
  v10 = [MEMORY[0x1E696AB90] notANumber];
  v11 = [v3 isEqualToNumber:v10];

  v12 = [MEMORY[0x1E696AB90] zero];
  v13 = [v3 compare:v12];

  if (!v13 || v8 && [v8 compare:v3] == -1 || v7 && objc_msgSend(v7, "compare:", v3) == 1 || v5 && objc_msgSend(v5, "compare:", v9) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 ^ 1;
    if (v6)
    {
      v14 &= [v6 compare:v9] != -1;
    }
  }

  return v14;
}

- (BOOL)_shouldShakeCard:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v6 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v7 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  if (v4)
  {
    v8 = [MEMORY[0x1E696AB90] notANumber];
    v9 = [v4 compare:v8];

    if (v9)
    {
      v10 = [v4 decimalNumberByAdding:v5];
      LOBYTE(v9) = v7 && [v7 compare:v4] == -1 || v6 && objc_msgSend(v6, "compare:", v10) == -1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_showNavigationBarSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  v6 = !v3;
  [v5 setEnabled:v6];

  v8 = [(PKPeerPaymentActionAddMoneyViewController *)self navigationItem];
  if (v6)
  {
    [(PKPeerPaymentActionAddMoneyViewController *)self _addBarButton];
  }

  else
  {
    [(PKPeerPaymentActionAddMoneyViewController *)self _spinnerBarButton];
  }
  v7 = ;
  [v8 setRightBarButtonItem:v7];
}

- (void)thresholdTopUpController:(id)a3 requestsPushViewController:(id)a4
{
  v5 = a4;
  v6 = [(PKPeerPaymentActionAddMoneyViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (id)presentationSceneIdentifierForTopUpController:(id)a3
{
  v3 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)thresholdTopUpControllerCompletedSetup:(id)a3
{
  v4 = [(PKPeerPaymentActionAddMoneyViewController *)self navigationController];
  v3 = [v4 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

@end