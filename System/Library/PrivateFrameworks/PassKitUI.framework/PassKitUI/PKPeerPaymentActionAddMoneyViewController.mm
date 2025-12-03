@interface PKPeerPaymentActionAddMoneyViewController
- (BOOL)_isCurrentAmountValid;
- (BOOL)_shouldShakeCard:(id)card;
- (BOOL)_showSignageWithinKeypad;
- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to;
- (PKPeerPaymentActionAddMoneyViewController)initWithPaymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context;
- (id)_addBarButton;
- (id)_spinnerBarButton;
- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)controller;
- (id)presentationSceneIdentifierForTopUpController:(id)controller;
- (void)_addAction;
- (void)_currentAmountDidChangeTo:(id)to shouldGenerateNewSuggestions:(BOOL)suggestions;
- (void)_showNavigationBarSpinner:(BOOL)spinner;
- (void)_updateBarButtonEnabledState;
- (void)_updateCurrentAmount:(id)amount shouldGenerateNewSuggestions:(BOOL)suggestions;
- (void)_updateLayoutForKeyboardAction:(id)action;
- (void)dealloc;
- (void)didSelectSuggestion:(id)suggestion;
- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)snapshot;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount;
- (void)keyboardWillChange:(id)change;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)peerPaymentActionController:(id)controller hasChangedState:(unint64_t)state;
- (void)setCardBalance:(id)balance;
- (void)setMaxBalance:(id)balance;
- (void)setMaxLoadAmount:(id)amount;
- (void)setMinBalance:(id)balance;
- (void)setMinLoadAmount:(id)amount;
- (void)thresholdTopUpController:(id)controller requestsPushViewController:(id)viewController;
- (void)thresholdTopUpControllerCompletedSetup:(id)setup;
- (void)updateAccountValues;
- (void)updateFirstResponder;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willDismissViewController;
@end

@implementation PKPeerPaymentActionAddMoneyViewController

- (PKPeerPaymentActionAddMoneyViewController)initWithPaymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context
{
  v34[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  serviceCopy = service;
  providerCopy = provider;
  v33.receiver = self;
  v33.super_class = PKPeerPaymentActionAddMoneyViewController;
  v13 = [(PKPeerPaymentActionViewController *)&v33 initWithPaymentPass:passCopy webService:serviceCopy passLibraryDataProvider:providerCopy context:context];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69B89F0]);
    v15 = *(v13 + 138);
    *(v13 + 138) = v14;

    [v13 setControllerAction:1];
    v16 = *(MEMORY[0x1E695F050] + 16);
    *(v13 + 1144) = *MEMORY[0x1E695F050];
    *(v13 + 1160) = v16;
    navigationItem = [v13 navigationItem];
    v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_6.isa);
    [navigationItem setTitle:v18];

    cancelButton = [v13 cancelButton];
    [navigationItem setLeftBarButtonItem:cancelButton];

    _addBarButton = [v13 _addBarButton];
    [navigationItem setRightBarButtonItem:_addBarButton];

    [v13 _updateBarButtonEnabledState];
    objc_initWeak(&location, v13);
    account = [v13 account];
    account2 = [v13 account];
    if ([account2 supportsThresholdTopUp])
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
        webService = [v13 webService];
        [webService prewarmDeviceScoreForAttributes:v26];

        objc_destroyWeak(&location);
        goto LABEL_7;
      }

      account2 = [MEMORY[0x1E69B8DB8] paymentService];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __108__PKPeerPaymentActionAddMoneyViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke;
      v29[3] = &unk_1E801CA90;
      v30 = account;
      objc_copyWeak(&v31, &location);
      [account2 familyMembersWithCompletion:v29];
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
  webService = [(PKPeerPaymentActionViewController *)self webService];
  [webService unloadDeviceScoreForAttributes:v3];

  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v5 dealloc];
}

- (void)loadView
{
  v36.receiver = self;
  v36.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v36 loadView];
  account = [(PKPeerPaymentActionViewController *)self account];
  view = [(PKPeerPaymentActionAddMoneyViewController *)self view];
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

  currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
  currentBalance = [account currentBalance];
  currency = [currentBalance currency];
  v13 = PKCurrencyAmountCreate(currentAmount, currency);

  pass = [(PKPeerPaymentActionViewController *)self pass];
  LODWORD(currentBalance) = [(PKPeerPaymentActionAddMoneyViewController *)self _showSignageWithinKeypad];
  v15 = [PKEnterCurrencyAmountPassView alloc];
  if (currentBalance)
  {
    v16 = [(PKEnterCurrencyAmountPassView *)v15 initWithCurrenyAmount:v13 pass:pass withdrawal:0 keypadBottomView:v9];
    amountPassView = self->_amountPassView;
    self->_amountPassView = v16;
  }

  else
  {
    v18 = [(PKEnterCurrencyAmountPassView *)v15 initWithCurrenyAmount:v13 pass:pass withdrawal:0];
    v19 = self->_amountPassView;
    self->_amountPassView = v18;

    objc_storeStrong(&self->_footerContainer, v9);
    if (self->_footerContainer)
    {
      [view addSubview:?];
    }
  }

  enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [enterCurrencyAmountView setDelegate:self];
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView setDelegate:self];
  if (PKUIKeyboardIsHardwareKeyboardActive() & 1) != 0 || (_UISolariumFeatureFlagEnabled())
  {
    amountTextField = [enterCurrencyAmountView amountTextField];
    [amountTextField setDisablePrediction:1];
  }

  else
  {
    initWithDefaultFrame = [[PKNumberPadSuggestionsView alloc] initWithDefaultFrame];
    suggestionView = self->_suggestionView;
    self->_suggestionView = initWithDefaultFrame;

    [(PKNumberPadSuggestionsView *)self->_suggestionView setDelegate:self];
    [enterCurrencyAmountView setInputAccessoryView:self->_suggestionView];
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
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v27 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadSetu.isa);
  [plainButtonConfiguration setTitle:v27];

  [plainButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_42_0];
  v28 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v25];
  actionButton = self->_actionButton;
  self->_actionButton = v28;

  [(UIButton *)self->_actionButton setHidden:!self->_offerThresholdTopUp];
  [(UIButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B94A8]];
  [view addSubview:self->_actionButton];
  [view addSubview:self->_amountPassView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  view2 = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  [view2 setAccessibilityIdentifier:*MEMORY[0x1E69B93F0]];

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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionAddMoneyViewController *)&v5 viewWillAppear:appear];
  view = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  [view layoutIfNeeded];

  [(PKPeerPaymentActionAddMoneyViewController *)self updateFirstResponder];
}

- (void)viewWillLayoutSubviews
{
  v49.receiver = self;
  v49.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionAddMoneyViewController *)&v49 viewWillLayoutSubviews];
  view = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view bounds];
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
      window = [view window];
      v21 = window;
      if (window)
      {
        [window convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
        [view convertRect:0 fromView:?];
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

- (void)peerPaymentActionController:(id)controller hasChangedState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v7 peerPaymentActionController:controller hasChangedState:?];
  if (state != 2)
  {
    if (state != 1)
    {
      return;
    }

    navigationController = [(PKPeerPaymentActionAddMoneyViewController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }

  [(PKPeerPaymentActionAddMoneyViewController *)self updateFirstResponder];
  [(PKPeerPaymentActionAddMoneyViewController *)self _showNavigationBarSpinner:0];
}

- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)controller
{
  view = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)willDismissViewController
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v4 willDismissViewController];
  enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [enterCurrencyAmountView dismissKeyboard];
}

- (void)updateFirstResponder
{
  navigationController = [(PKPeerPaymentActionAddMoneyViewController *)self navigationController];
  presentedViewController = [navigationController presentedViewController];

  if (!presentedViewController)
  {
    enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
    [enterCurrencyAmountView showKeyboard];
  }
}

- (void)updateAccountValues
{
  v30.receiver = self;
  v30.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v30 updateAccountValues];
  account = [(PKPeerPaymentActionViewController *)self account];
  [(PKPeerPaymentActionAddMoneyViewController *)self _updateBarButtonEnabledState];
  if (account)
  {
    currentBalance = [account currentBalance];
    maximumBalance = [account maximumBalance];
    currency = [currentBalance currency];
    v7 = PKMaximumFractionDigitsForCurrencyCode();

    suggestionGenerator = self->_suggestionGenerator;
    amount = [currentBalance amount];
    [(PKNumericSuggestionsEnterValueAlgorithm *)suggestionGenerator setCardBalance:amount];

    v10 = self->_suggestionGenerator;
    currency2 = [currentBalance currency];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v10 setCurrencyCode:currency2];

    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setPowerOfTenFactor:3 - v7];
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setDecimalPrecision:v7];
    v12 = self->_suggestionGenerator;
    defaultSuggestions = [account defaultSuggestions];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v12 setDefaultValues:defaultSuggestions];

    v14 = self->_suggestionGenerator;
    maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v14 setMaxLoadAmount:maxLoadAmount];

    v16 = self->_suggestionGenerator;
    minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v16 setMinLoadAmount:minLoadAmount];

    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMaxBalance:maximumBalance];
    v18 = self->_suggestionGenerator;
    minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
    [(PKNumericSuggestionsEnterValueAlgorithm *)v18 setMinBalance:minBalance];

    enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
    currency3 = [currentBalance currency];
    [enterCurrencyAmountView setCurrency:currency3];

    [enterCurrencyAmountView sizeToFit];
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    currency4 = [currentBalance currency];
    [balanceView setCurrencyCode:currency4];

    minBalance2 = [(PKPeerPaymentActionViewController *)self minBalance];
    [balanceView setMinBalance:minBalance2];

    [balanceView setMaxBalance:maximumBalance];
    minLoadAmount2 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
    [balanceView setMinLoadAmount:minLoadAmount2];

    maxLoadAmount2 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
    [balanceView setMaxLoadAmount:maxLoadAmount2];

    amount2 = [currentBalance amount];
    [balanceView setCardBalance:amount2];

    [balanceView sizeToFit];
    [(PKPeerPaymentActionAddMoneyViewController *)self setMaxBalance:maximumBalance];
    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];

    view = [(PKPeerPaymentActionAddMoneyViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

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

- (void)keyboardWillChange:(id)change
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    userInfo = [change userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

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

- (void)keyboardWillHide:(id)hide
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

- (void)_updateLayoutForKeyboardAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    viewIfLoaded = [(PKPeerPaymentActionAddMoneyViewController *)self viewIfLoaded];
    v6 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      if (actionCopy[2](actionCopy))
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
      actionCopy[2](actionCopy);
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

- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)snapshot
{
  viewIfLoaded = [(PKPeerPaymentActionAddMoneyViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)didSelectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  value = [suggestionCopy value];
  -[PKPeerPaymentActionAddMoneyViewController _updateCurrentAmount:shouldGenerateNewSuggestions:](self, "_updateCurrentAmount:shouldGenerateNewSuggestions:", value, [suggestionCopy usedMaximumSuggestion]);

  value2 = [suggestionCopy value];

  LODWORD(suggestionCopy) = [(PKPeerPaymentActionAddMoneyViewController *)self _shouldShakeCard:value2];
  if (suggestionCopy)
  {
    amountPassView = self->_amountPassView;

    [(PKEnterCurrencyAmountPassView *)amountPassView shakePassView];
  }
}

- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if ([(PKPeerPaymentActionAddMoneyViewController *)self _shouldShakeCard:toCopy])
  {
    [(PKEnterCurrencyAmountPassView *)self->_amountPassView shakePassView];
  }

  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  v12 = !maxLoadAmount || [maxLoadAmount compare:fromCopy] != -1 || objc_msgSend(maxLoadAmount, "compare:", toCopy) != -1;
  v13 = [toCopy decimalNumberByAdding:cardBalance];
  v14 = [fromCopy decimalNumberByAdding:cardBalance];
  if (maxBalance && [maxBalance compare:v13] == -1)
  {
    v12 &= [maxBalance compare:v14] != -1;
  }

  return v12;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount
{
  currentAmount = [amount currentAmount];
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:currentAmount];
  balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
  [balanceView addAmountToBalance:currentAmount];

  [(PKPeerPaymentActionAddMoneyViewController *)self _currentAmountDidChangeTo:currentAmount shouldGenerateNewSuggestions:1];
}

- (void)setCardBalance:(id)balance
{
  balanceCopy = balance;
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setCardBalance:balanceCopy];
  if (cardBalance != balanceCopy && ([balanceCopy isEqualToNumber:cardBalance] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setCardBalance:balanceCopy];
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setCardBalance:balanceCopy];

    zero = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:zero shouldGenerateNewSuggestions:1];
  }
}

- (void)setMaxBalance:(id)balance
{
  balanceCopy = balance;
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMaxBalance:balanceCopy];
  if (maxBalance != balanceCopy && ([balanceCopy isEqualToNumber:maxBalance] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMaxBalance:balanceCopy];
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setMaxBalance:balanceCopy];

    zero = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:zero shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinBalance:(id)balance
{
  balanceCopy = balance;
  minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMinBalance:balanceCopy];
  if (minBalance != balanceCopy && ([balanceCopy isEqualToNumber:minBalance] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMinBalance:balanceCopy];
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setMinBalance:balanceCopy];

    zero = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:zero shouldGenerateNewSuggestions:1];
  }
}

- (void)setMaxLoadAmount:(id)amount
{
  amountCopy = amount;
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMaxLoadAmount:amountCopy];
  if (maxLoadAmount != amountCopy && ([amountCopy isEqualToNumber:maxLoadAmount] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMaxLoadAmount:amountCopy];
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setMaxLoadAmount:amountCopy];

    zero = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:zero shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinLoadAmount:(id)amount
{
  amountCopy = amount;
  minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionAddMoneyViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMinLoadAmount:amountCopy];
  if (minLoadAmount != amountCopy && ([amountCopy isEqualToNumber:minLoadAmount] & 1) == 0)
  {
    [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator setMinLoadAmount:amountCopy];
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setMinLoadAmount:amountCopy];

    zero = [MEMORY[0x1E696AB90] zero];
    [(PKPeerPaymentActionAddMoneyViewController *)self _updateCurrentAmount:zero shouldGenerateNewSuggestions:1];
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
  navigationItem = [(PKPeerPaymentActionAddMoneyViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  account = [(PKPeerPaymentActionViewController *)self account];

  if (account)
  {
    _isCurrentAmountValid = [(PKPeerPaymentActionAddMoneyViewController *)self _isCurrentAmountValid];
  }

  else
  {
    _isCurrentAmountValid = 0;
  }

  [rightBarButtonItem setEnabled:_isCurrentAmountValid];
}

- (void)_addAction
{
  [(PKPeerPaymentActionAddMoneyViewController *)self _showNavigationBarSpinner:1];
  currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
  account = [(PKPeerPaymentActionViewController *)self account];
  currentBalance = [account currentBalance];
  currency = [currentBalance currency];

  v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:currentAmount currency:currency exponent:0];
  actionController = [(PKPeerPaymentActionViewController *)self actionController];
  [actionController performActionWithCurrencyAmount:v6];
}

- (void)_updateCurrentAmount:(id)amount shouldGenerateNewSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  amountCopy = amount;
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:amountCopy];
  balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
  [balanceView addAmountToBalance:amountCopy];

  enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [enterCurrencyAmountView setCurrentAmount:amountCopy];

  [(PKPeerPaymentActionAddMoneyViewController *)self _currentAmountDidChangeTo:amountCopy shouldGenerateNewSuggestions:suggestionsCopy];
}

- (void)_currentAmountDidChangeTo:(id)to shouldGenerateNewSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  v38 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (suggestionsCopy)
  {
    val = self;
    v25 = [(PKNumericSuggestionsEnterValueAlgorithm *)self->_suggestionGenerator suggestionsWithAmount:toCopy];
    if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
    {
      enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
      v7 = v25;
      [enterCurrencyAmountView setAmountSuggestions:v25];
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
                displayValue = [v14 displayValue];
                v29[0] = MEMORY[0x1E69E9820];
                v29[1] = 3221225472;
                v29[2] = __100__PKPeerPaymentActionAddMoneyViewController__currentAmountDidChangeTo_shouldGenerateNewSuggestions___block_invoke;
                v29[3] = &unk_1E8012328;
                objc_copyWeak(&v30, &location);
                v29[4] = v14;
                v17 = [v15 actionWithTitle:displayValue image:0 identifier:0 handler:v29];

                v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v17];
                labelColor = [MEMORY[0x1E69DC888] labelColor];
                [v18 setTintColor:labelColor];

                [v10 addObject:v18];
                objc_destroyWeak(&v30);
              }

              v11 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
            }

            while (v11);
          }

          enterCurrencyAmountView2 = [(PKEnterCurrencyAmountPassView *)val->_amountPassView enterCurrencyAmountView];
          amountTextField = [enterCurrencyAmountView2 amountTextField];
          inputAssistantItem = [amountTextField inputAssistantItem];

          v23 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v10 representativeItem:0];
          v36 = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
          [inputAssistantItem setTrailingBarButtonGroups:v24];

          objc_destroyWeak(&location);
          v7 = v25;
        }
      }
    }

    self = val;
  }

  [(PKPeerPaymentActionAddMoneyViewController *)self _updateBarButtonEnabledState];
  view = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  [view setNeedsLayout];
}

void __100__PKPeerPaymentActionAddMoneyViewController__currentAmountDidChangeTo_shouldGenerateNewSuggestions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSelectSuggestion:*(a1 + 32)];
}

- (BOOL)_isCurrentAmountValid
{
  currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v9 = [cardBalance decimalNumberByAdding:currentAmount];
  notANumber = [MEMORY[0x1E696AB90] notANumber];
  v11 = [currentAmount isEqualToNumber:notANumber];

  zero = [MEMORY[0x1E696AB90] zero];
  v13 = [currentAmount compare:zero];

  if (!v13 || maxLoadAmount && [maxLoadAmount compare:currentAmount] == -1 || minLoadAmount && objc_msgSend(minLoadAmount, "compare:", currentAmount) == 1 || minBalance && objc_msgSend(minBalance, "compare:", v9) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 ^ 1;
    if (maxBalance)
    {
      v14 &= [maxBalance compare:v9] != -1;
    }
  }

  return v14;
}

- (BOOL)_shouldShakeCard:(id)card
{
  cardCopy = card;
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  if (cardCopy)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v9 = [cardCopy compare:notANumber];

    if (v9)
    {
      v10 = [cardCopy decimalNumberByAdding:cardBalance];
      LOBYTE(v9) = maxLoadAmount && [maxLoadAmount compare:cardCopy] == -1 || maxBalance && objc_msgSend(maxBalance, "compare:", v10) == -1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_showNavigationBarSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  v6 = !spinnerCopy;
  [enterCurrencyAmountView setEnabled:v6];

  navigationItem = [(PKPeerPaymentActionAddMoneyViewController *)self navigationItem];
  if (v6)
  {
    [(PKPeerPaymentActionAddMoneyViewController *)self _addBarButton];
  }

  else
  {
    [(PKPeerPaymentActionAddMoneyViewController *)self _spinnerBarButton];
  }
  v7 = ;
  [navigationItem setRightBarButtonItem:v7];
}

- (void)thresholdTopUpController:(id)controller requestsPushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(PKPeerPaymentActionAddMoneyViewController *)self navigationController];
  [navigationController pushViewController:viewControllerCopy animated:1];
}

- (id)presentationSceneIdentifierForTopUpController:(id)controller
{
  view = [(PKPeerPaymentActionAddMoneyViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)thresholdTopUpControllerCompletedSetup:(id)setup
{
  navigationController = [(PKPeerPaymentActionAddMoneyViewController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end