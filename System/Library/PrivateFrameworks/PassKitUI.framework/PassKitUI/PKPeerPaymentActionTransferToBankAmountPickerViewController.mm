@interface PKPeerPaymentActionTransferToBankAmountPickerViewController
- (BOOL)_isCurrentAmountValid;
- (BOOL)_shouldShakeWithNewAmount:(id)amount;
- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to;
- (PKPeerPaymentActionTransferToBankAmountPickerViewController)initWithPaymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context;
- (void)_currentAmountDidChangeTo:(id)to shouldGenerateNewSuggestions:(BOOL)suggestions;
- (void)_nextAction;
- (void)_updateContinueButtonEnabledState;
- (void)_updateCurrentAmount:(id)amount shouldGenerateNewSuggestions:(BOOL)suggestions;
- (void)_updateLayoutForKeyboardAction:(id)action;
- (void)dealloc;
- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)snapshot;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount;
- (void)keyboardWillChange:(id)change;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)setCardBalance:(id)balance;
- (void)setMaxBalance:(id)balance;
- (void)setMaxLoadAmount:(id)amount;
- (void)setMinBalance:(id)balance;
- (void)setMinLoadAmount:(id)amount;
- (void)updateAccountValues;
- (void)updateFirstResponder;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willDismissViewController;
@end

@implementation PKPeerPaymentActionTransferToBankAmountPickerViewController

- (PKPeerPaymentActionTransferToBankAmountPickerViewController)initWithPaymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context
{
  passCopy = pass;
  serviceCopy = service;
  providerCopy = provider;
  v34.receiver = self;
  v34.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  v13 = [(PKPeerPaymentActionViewController *)&v34 initWithPaymentPass:passCopy webService:serviceCopy passLibraryDataProvider:providerCopy context:context];
  v14 = v13;
  if (v13)
  {
    v15 = *MEMORY[0x1E695F050];
    v16 = *(MEMORY[0x1E695F050] + 16);
    v13->_lastKeyboardFrame.origin = *MEMORY[0x1E695F050];
    v13->_lastKeyboardFrame.size = v16;
    v13->_keyboardFrame.origin = v15;
    v13->_keyboardFrame.size = v16;
    account = [(PKPeerPaymentActionViewController *)v13 account];
    currentBalance = [account currentBalance];
    amount = [currentBalance amount];
    [(PKPeerPaymentActionViewController *)v14 setCurrentAmount:amount];

    currentAmount = [(PKPeerPaymentActionViewController *)v14 currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)v14 _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];

    navigationItem = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)v14 navigationItem];
    v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_5.isa);
    [navigationItem setTitle:v22];

    cancelButton = [(PKPeerPaymentActionViewController *)v14 cancelButton];
    [navigationItem setLeftBarButtonItem:cancelButton];

    [navigationItem setBackButtonDisplayMode:2];
    objc_initWeak(&location, v14);
    peerPaymentService = [serviceCopy peerPaymentService];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __126__PKPeerPaymentActionTransferToBankAmountPickerViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke;
    v31 = &unk_1E8011158;
    objc_copyWeak(&v32, &location);
    [peerPaymentService recurringPaymentsWithCompletion:&v28];

    v25 = objc_alloc_init(MEMORY[0x1E69B8F40]);
    [v25 setEndpoint:{3, v28, v29, v30, v31}];
    [v25 setQuoteRequestDestination:2];
    [serviceCopy prewarmDeviceScoreForAttributes:v25];
    v26 = objc_alloc_init(MEMORY[0x1E69B8F40]);
    [v26 setEndpoint:3];
    [v26 setQuoteRequestDestination:3];
    [serviceCopy prewarmDeviceScoreForAttributes:v26];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __126__PKPeerPaymentActionTransferToBankAmountPickerViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) type] == 3)
        {

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __126__PKPeerPaymentActionTransferToBankAmountPickerViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_2;
          block[3] = &unk_1E8010998;
          objc_copyWeak(&v9, (a1 + 32));
          dispatch_async(MEMORY[0x1E69E96A0], block);
          objc_destroyWeak(&v9);
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __126__PKPeerPaymentActionTransferToBankAmountPickerViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x1E696AB90] zero];
    [v4 setCurrentAmount:v2];

    v3 = [v4 currentAmount];
    [v4 _updateCurrentAmount:v3 shouldGenerateNewSuggestions:1];

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  webService = [(PKPeerPaymentActionViewController *)self webService];
  v4 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v4 setEndpoint:3];
  [v4 setQuoteRequestDestination:2];
  [webService unloadDeviceScoreForAttributes:v4];
  v5 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v5 setEndpoint:3];
  [v5 setQuoteRequestDestination:3];
  [webService unloadDeviceScoreForAttributes:v5];

  v6.receiver = self;
  v6.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)&v5 viewWillAppear:appear];
  self->_visibility = 1;
  view = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [view setNeedsLayout];
  [view layoutIfNeeded];
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self updateFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v5 viewWillDisappear:disappear];
  self->_visibility = 3;
  if (self->_keyboardVisible)
  {
    view = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v5 viewDidAppear:appear];
  self->_visibility = 2;
  if (self->_keyboardVisible)
  {
    view = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)&v5 viewDidDisappear:disappear];
  self->_visibility = 0;
  if (self->_keyboardVisible)
  {
    view = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)loadView
{
  v33.receiver = self;
  v33.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v33 loadView];
  account = [(PKPeerPaymentActionViewController *)self account];
  v4 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v4;

  currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
  v29 = account;
  currentBalance = [account currentBalance];
  currency = [currentBalance currency];
  v9 = PKCurrencyAmountCreate(currentAmount, currency);

  v10 = [PKEnterCurrencyAmountPassView alloc];
  pass = [(PKPeerPaymentActionViewController *)self pass];
  v12 = [(PKEnterCurrencyAmountPassView *)v10 initWithCurrenyAmount:v9 pass:pass withdrawal:1];
  amountPassView = self->_amountPassView;
  self->_amountPassView = v12;

  enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [enterCurrencyAmountView setDelegate:self];
  [enterCurrencyAmountView setClearAmountOnFirstKeyboardInput:1];
  [enterCurrencyAmountView setEnableDoneButton:1];
  if (PKUIKeyboardIsHardwareKeyboardActive())
  {
    amountTextField = [enterCurrencyAmountView amountTextField];
    [amountTextField setDisablePrediction:1];
  }

  [(PKEnterCurrencyAmountPassView *)self->_amountPassView setDelegate:self];
  v16 = [PKPaymentSetupFooterView alloc];
  context = [(PKPeerPaymentActionViewController *)self context];
  v18 = [(PKPaymentSetupFooterView *)v16 initWithFrame:context context:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  footerView = self->_footerView;
  self->_footerView = v18;

  primaryButton = [(PKPaymentSetupFooterView *)self->_footerView primaryButton];
  titleLabel = [primaryButton titleLabel];
  v22 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [titleLabel setText:v22];

  objc_initWeak(&location, self);
  v23 = MEMORY[0x1E69DC628];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__PKPeerPaymentActionTransferToBankAmountPickerViewController_loadView__block_invoke;
  v30[3] = &unk_1E8010A60;
  objc_copyWeak(&v31, &location);
  v24 = [v23 actionWithHandler:v30];
  [primaryButton addAction:v24 forControlEvents:0x2000];
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateContinueButtonEnabledState];
  v25 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_scrollView edge:4 style:1];
  [(PKPaymentSetupFooterView *)self->_footerView addInteraction:v25];
  view = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [view addSubview:self->_scrollView];
  [view addSubview:self->_footerView];
  [(UIScrollView *)self->_scrollView addSubview:self->_amountPassView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  view2 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [view2 setAccessibilityIdentifier:*MEMORY[0x1E69B9D70]];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __71__PKPeerPaymentActionTransferToBankAmountPickerViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _nextAction];
    WeakRetained = v2;
  }
}

- (void)viewWillLayoutSubviews
{
  v35.receiver = self;
  v35.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)&v35 viewWillLayoutSubviews];
  view = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  [(UIScrollView *)self->_scrollView setFrame:?];
  if (self->_visibility - 1 > 1)
  {
    x = self->_lastKeyboardFrame.origin.x;
    y = self->_lastKeyboardFrame.origin.y;
    width = self->_lastKeyboardFrame.size.width;
    height = self->_lastKeyboardFrame.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if (!CGRectIsNull(self->_keyboardFrame))
    {
      window = [view window];
      v13 = window;
      if (window)
      {
        [window convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
        [view convertRect:0 fromView:?];
        x = v14;
        y = v15;
        width = v16;
        height = v17;
      }
    }
  }

  v33 = width;
  v34 = x;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v32 = height;
  v36.size.height = height;
  v18 = 0.0;
  if (!CGRectIsNull(v36))
  {
    [view bounds];
    v18 = fmax(v19 + v20 - y, 0.0);
  }

  [(PKEnterCurrencyAmountPassView *)self->_amountPassView frame];
  v22 = v21;
  v24 = v23;
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView sizeThatFits:v5, v7 - v18 + -15.0];
  v26 = v25;
  v27 = v5;
  v29 = v28;
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView setFrame:v22, v24, v25, v28];
  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v29;
  [(UIScrollView *)self->_scrollView setContentSize:v27, v18 + CGRectGetMaxY(v37) + 15.0];
  self->_lastKeyboardFrame.origin.x = v34;
  self->_lastKeyboardFrame.origin.y = y;
  self->_lastKeyboardFrame.size.width = v33;
  self->_lastKeyboardFrame.size.height = v32;
  PKSetupViewConstantsViewMargin();
  _UISolariumFeatureFlagEnabled();
  UIRectInset();
  [(PKPaymentSetupFooterView *)self->_footerView sizeThatFits:v30, v31];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(PKPaymentSetupFooterView *)self->_footerView setFrame:?];
}

- (void)willDismissViewController
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v4 willDismissViewController];
  enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [enterCurrencyAmountView dismissKeyboard];
}

- (void)updateFirstResponder
{
  enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [enterCurrencyAmountView showKeyboard];
}

- (void)updateAccountValues
{
  v16.receiver = self;
  v16.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v16 updateAccountValues];
  account = [(PKPeerPaymentActionViewController *)self account];
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateContinueButtonEnabledState];
  if (account)
  {
    currentBalance = [account currentBalance];
    amount = [currentBalance amount];
    enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
    currency = [currentBalance currency];
    [enterCurrencyAmountView setCurrency:currency];

    [enterCurrencyAmountView sizeToFit];
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    currency2 = [currentBalance currency];
    [balanceView setCurrencyCode:currency2];

    maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
    [balanceView setMaxLoadAmount:maxLoadAmount];

    minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
    [balanceView setMinLoadAmount:minLoadAmount];

    [balanceView setMaxBalance:amount];
    minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
    [balanceView setMinBalance:minBalance];

    amount2 = [currentBalance amount];
    [balanceView setCardBalance:amount2];

    [balanceView sizeToFit];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self setMaxBalance:amount];
    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];

    view = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __80__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1136);
  v4 = *(v2 + 1144);
  v5 = *(v2 + 1152);
  v6 = *(v2 + 1160);
  *(v2 + 1129) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1136);
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
    *(v8 + 1152) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1136), v16);
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
      v8[2] = __82__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __82__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 142;
  v4 = *(v2 + 142);
  v5 = *(v2 + 143);
  v6 = *(v2 + 144);
  v7 = *(v2 + 145);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1136), v13);
}

- (void)keyboardWillHide:(id)hide
{
  if (self->_keyboardVisible)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillHide___block_invoke;
    v5[3] = &unk_1E8010EB8;
    v5[4] = self;
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateLayoutForKeyboardAction:v5];
  }
}

BOOL __80__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1136);
  *(v1 + 1129) = 0;
  v2 = (*(a1 + 32) + 1136);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1136);
  v4 = *(*(a1 + 32) + 1144);
  v5 = *(*(a1 + 32) + 1152);
  v6 = *(*(a1 + 32) + 1160);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    viewIfLoaded = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self viewIfLoaded];
    v6 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      if (actionCopy[2](actionCopy))
      {
        [v6 setNeedsLayout];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __94__PKPeerPaymentActionTransferToBankAmountPickerViewController__updateLayoutForKeyboardAction___block_invoke;
        v8[3] = &unk_1E8010970;
        v9 = v6;
        [v7 _animateUsingDefaultTimingWithOptions:134 animations:v8 completion:0];
      }
    }

    else
    {
      actionCopy[2](actionCopy);
    }
  }
}

- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)snapshot
{
  viewIfLoaded = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)setMaxBalance:(id)balance
{
  balanceCopy = balance;
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMaxBalance:balanceCopy];
  if (maxBalance != balanceCopy && ([balanceCopy isEqualToNumber:maxBalance] & 1) == 0)
  {
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setMaxBalance:balanceCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinBalance:(id)balance
{
  balanceCopy = balance;
  minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMinBalance:balanceCopy];
  if (minBalance != balanceCopy && ([balanceCopy isEqualToNumber:minBalance] & 1) == 0)
  {
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setMinBalance:balanceCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (void)setMaxLoadAmount:(id)amount
{
  amountCopy = amount;
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMaxLoadAmount:amountCopy];
  if (maxLoadAmount != amountCopy && ([amountCopy isEqualToNumber:maxLoadAmount] & 1) == 0)
  {
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setMaxLoadAmount:amountCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinLoadAmount:(id)amount
{
  amountCopy = amount;
  minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMinLoadAmount:amountCopy];
  if (minLoadAmount != amountCopy && ([amountCopy isEqualToNumber:minLoadAmount] & 1) == 0)
  {
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setMinLoadAmount:amountCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (void)setCardBalance:(id)balance
{
  balanceCopy = balance;
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setCardBalance:balanceCopy];
  if (cardBalance != balanceCopy && ([balanceCopy isEqualToNumber:cardBalance] & 1) == 0)
  {
    balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [balanceView setCardBalance:balanceCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if ([(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _shouldShakeWithNewAmount:toCopy])
  {
    [(PKEnterCurrencyAmountPassView *)self->_amountPassView shakePassView];
  }

  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v13 = [cardBalance decimalNumberBySubtracting:fromCopy];
  v14 = [cardBalance decimalNumberBySubtracting:toCopy];
  zero = [MEMORY[0x1E696AB90] zero];
  if ([v14 compare:zero] == -1)
  {
    [MEMORY[0x1E696AB90] zero];
    v25 = maxLoadAmount;
    v16 = cardBalance;
    v17 = maxBalance;
    v18 = toCopy;
    v19 = minBalance;
    v21 = v20 = fromCopy;
    v22 = [v13 compare:v21];

    fromCopy = v20;
    minBalance = v19;
    toCopy = v18;
    maxBalance = v17;
    cardBalance = v16;
    maxLoadAmount = v25;

    if (v22 == -1)
    {
LABEL_16:
      v23 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (maxLoadAmount && [maxLoadAmount compare:fromCopy] == -1 && objc_msgSend(maxLoadAmount, "compare:", toCopy) == -1 || maxBalance && objc_msgSend(maxBalance, "compare:", v14) == -1 && objc_msgSend(maxBalance, "compare:", v13) == -1)
  {
    goto LABEL_16;
  }

  v23 = !minBalance || [minBalance compare:v14] != 1 || objc_msgSend(minBalance, "compare:", v13) != 1;
LABEL_17:

  return v23;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount
{
  currentAmount = [amount currentAmount];
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:currentAmount];
  balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
  [balanceView subtractAmountFromBalance:currentAmount];

  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _currentAmountDidChangeTo:currentAmount shouldGenerateNewSuggestions:1];
}

- (void)_updateContinueButtonEnabledState
{
  primaryButton = [(PKPaymentSetupFooterView *)self->_footerView primaryButton];
  account = [(PKPeerPaymentActionViewController *)self account];

  if (account)
  {
    _isCurrentAmountValid = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _isCurrentAmountValid];
  }

  else
  {
    _isCurrentAmountValid = 0;
  }

  [primaryButton setEnabled:_isCurrentAmountValid];
}

- (void)_nextAction
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke;
  aBlock[3] = &unk_1E8010998;
  objc_copyWeak(&v11, &location);
  v3 = _Block_copy(aBlock);
  webService = [(PKPeerPaymentActionViewController *)self webService];
  peerPaymentService = [webService peerPaymentService];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_2;
  v7[3] = &unk_1E801B5D8;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [peerPaymentService recurringPaymentsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v2 = [PKPeerPaymentActionTransferToBankViewController alloc];
    v3 = [v11 pass];
    v4 = [v11 webService];
    v5 = [v11 passLibraryDataProvider];
    v6 = -[PKPeerPaymentActionTransferToBankViewController initWithPaymentPass:webService:passLibraryDataProvider:context:](v2, "initWithPaymentPass:webService:passLibraryDataProvider:context:", v3, v4, v5, [v11 context]);

    v7 = [v11 controllerAction];
    v8 = [v11 currentAmount];
    [(PKPeerPaymentActionViewController *)v6 setCurrentAmount:v8];

    v9 = [v11 delegate];
    [(PKPeerPaymentActionViewController *)v6 setDelegate:v9];

    [(PKPeerPaymentActionViewController *)v6 setControllerAction:v7];
    v10 = [v11 navigationController];
    [v10 pushViewController:v6 animated:1];

    WeakRetained = v11;
  }
}

void __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_2(id *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if ([v7 type] == 3)
        {
          v4 = v7;
          v9 = [a1[4] account];
          v10 = [v9 currentBalance];
          v11 = [v10 amount];

          v12 = [a1[4] currentAmount];
          if ([v11 pk_isNotANumber] & 1) != 0 || (objc_msgSend(v12, "pk_isNotANumber"))
          {
            v8 = 0;
          }

          else
          {
            v13 = [v11 decimalNumberBySubtracting:v12];
            v14 = [v4 threshold];
            v8 = [v14 compare:v13] == 1;
          }

          goto LABEL_15;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_15:

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_3;
  v16[3] = &unk_1E8018FD0;
  objc_copyWeak(&v19, a1 + 6);
  v20 = v8;
  v17 = v4;
  v18 = a1[5];
  v15 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  objc_destroyWeak(&v19);
}

void __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1)
    {
      v3 = [*(a1 + 32) currencyThreshold];
      v4 = [v3 minimalFormattedStringValue];
      v5 = [*(a1 + 32) currencyAmount];
      v6 = [v5 minimalFormattedStringValue];
      v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran.isa, &stru_1F3BD6370.isa, v4, v6);

      v8 = MEMORY[0x1E69DC650];
      v9 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran_0.isa);
      v10 = [v8 alertControllerWithTitle:v9 message:v7 preferredStyle:1];

      v11 = MEMORY[0x1E69DC648];
      v12 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran_1.isa);
      v13 = [v11 actionWithTitle:v12 style:0 handler:&__block_literal_global_155];

      [v10 addAction:v13];
      v14 = MEMORY[0x1E69DC648];
      v15 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran_2.isa);
      v16 = [v14 actionWithTitle:v15 style:0 handler:&__block_literal_global_85];
      [v10 addAction:v16];

      v17 = MEMORY[0x1E69DC648];
      v18 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran_3.isa);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_6;
      v21[3] = &unk_1E8011248;
      v22 = *(a1 + 40);
      v19 = [v17 actionWithTitle:v18 style:0 handler:v21];
      [v10 addAction:v19];

      [v10 setPreferredAction:v13];
      v20 = [WeakRetained navigationController];
      [v20 presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_5()
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", *MEMORY[0x1E69BC5F0], *MEMORY[0x1E69BC5D8]];
  if (PKRunningInPassbook())
  {
    v0 = @"wallet://";
  }

  else
  {
    v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/", *MEMORY[0x1E69BC6E8]];
  }

  v1 = MEMORY[0x1E695DFF8];
  v2 = [(__CFString *)v0 stringByAppendingString:v4];
  v3 = [v1 URLWithString:v2];

  PKOpenURL();
}

- (void)_updateCurrentAmount:(id)amount shouldGenerateNewSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  amountCopy = amount;
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:amountCopy];
  balanceView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
  [balanceView subtractAmountFromBalance:amountCopy];

  enterCurrencyAmountView = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [enterCurrencyAmountView setCurrentAmount:amountCopy];

  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _currentAmountDidChangeTo:amountCopy shouldGenerateNewSuggestions:suggestionsCopy];
}

- (void)_currentAmountDidChangeTo:(id)to shouldGenerateNewSuggestions:(BOOL)suggestions
{
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateContinueButtonEnabledState:to];
  view = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [view setNeedsLayout];
}

- (BOOL)_shouldShakeWithNewAmount:(id)amount
{
  amountCopy = amount;
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  if (amountCopy)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v9 = [amountCopy compare:notANumber];

    if (v9)
    {
      v10 = [cardBalance decimalNumberBySubtracting:amountCopy];
      LOBYTE(v9) = maxLoadAmount && [maxLoadAmount compare:amountCopy] == -1 || minBalance && objc_msgSend(minBalance, "compare:", v10) == 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_isCurrentAmountValid
{
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
  v9 = [cardBalance decimalNumberBySubtracting:currentAmount];
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

@end