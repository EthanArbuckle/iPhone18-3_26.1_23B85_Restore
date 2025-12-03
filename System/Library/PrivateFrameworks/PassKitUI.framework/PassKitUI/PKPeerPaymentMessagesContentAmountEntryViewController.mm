@interface PKPeerPaymentMessagesContentAmountEntryViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (PKPeerPaymentMessagesContentAmountEntryViewController)init;
- (PKPeerPaymentMessagesContentAmountEntryViewController)initWithContentDelegate:(id)delegate;
- (PKPeerPaymentMessagesContentAmountEntryViewControllerDelegate)delegate;
- (id)_analyticsButtonTagForAction:(unint64_t)action;
- (id)_currentBalance;
- (id)_maximumTransferAmount;
- (id)_minimumTransferAmount;
- (void)_noteAmountChanged;
- (void)_registerForPresentationSemanticContextChanges;
- (void)_sendAnalyticsForEventName:(id)name orAction:(unint64_t)action;
- (void)reloadContent;
- (void)setAmount:(id)amount;
- (void)setCenterAction:(unint64_t)action;
- (void)setContext:(unint64_t)context;
- (void)setLeadingAction:(unint64_t)action;
- (void)setRecipient:(id)recipient;
- (void)setTrailingAction:(unint64_t)action;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentMessagesContentAmountEntryViewController

- (PKPeerPaymentMessagesContentAmountEntryViewController)init
{
  v12.receiver = self;
  v12.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  v2 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AB90] one];
    _currentBalance = [(PKPeerPaymentMessagesContentAmountEntryViewController *)v2 _currentBalance];
    currency = [_currentBalance currency];
    v6 = currency;
    if (currency)
    {
      v7 = currency;
    }

    else
    {
      v7 = @"USD";
    }

    v8 = PKCurrencyAmountCreate(v3, &v7->isa);
    amount = v2->_amount;
    v2->_amount = v8;

    navigationItem = [(PKPeerPaymentMessagesContentAmountEntryViewController *)v2 navigationItem];
    [navigationItem _setPreferredNavigationBarVisibility:1];
  }

  return v2;
}

- (PKPeerPaymentMessagesContentAmountEntryViewController)initWithContentDelegate:(id)delegate
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  v3 = [(PKPeerPaymentMessagesContentBaseViewController *)&v13 initWithContentDelegate:delegate];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AB90] one];
    _currentBalance = [(PKPeerPaymentMessagesContentAmountEntryViewController *)v3 _currentBalance];
    currency = [_currentBalance currency];
    v7 = currency;
    if (currency)
    {
      v8 = currency;
    }

    else
    {
      v8 = @"USD";
    }

    v9 = PKCurrencyAmountCreate(v4, &v8->isa);
    amount = v3->_amount;
    v3->_amount = v9;

    navigationItem = [(PKPeerPaymentMessagesContentAmountEntryViewController *)v3 navigationItem];
    [navigationItem _setPreferredNavigationBarVisibility:1];
  }

  return v3;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v41 viewDidLoad];
  objc_initWeak(&location, self);
  view = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self view];
  [view setMaximumContentSizeCategory:*MEMORY[0x1E69DDC40]];

  [(PKPeerPaymentMessagesContentAmountEntryViewController *)self setOverrideUserInterfaceStyle:2];
  traitCollection = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  self->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

  contentDelegate = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  traitCollection2 = [contentDelegate traitCollection];
  _presentationSemanticContext = [traitCollection2 _presentationSemanticContext];

  contentView = [(PKPeerPaymentMessagesContentBaseViewController *)self contentView];
  [contentView setContentAlignment:PKContentAlignmentMake()];
  [contentView setVerticalPadding:0.0];
  [contentView setContentInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [contentView setIgnoreTopSafeArea:_presentationSemanticContext == 2];
  v10 = [PKPeerPaymentMessagesContentAmountEntryView alloc];
  [contentView bounds];
  v11 = [(PKPeerPaymentMessagesContentAmountEntryView *)v10 initWithFrame:?];
  mainView = self->_mainView;
  self->_mainView = v11;

  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView setPresentationContext:_presentationSemanticContext];
  context = self->_context;
  switch(context)
  {
    case 0uLL:
      goto LABEL_4;
    case 1uLL:
      [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView setSubtitleType:1];
      memoField = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView memoField];
      [memoField setText:self->_memo];

      v15 = self->_mainView;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke;
      v38[3] = &unk_1E801F530;
      objc_copyWeak(&v39, &location);
      [(PKPeerPaymentMessagesContentAmountEntryView *)v15 setMemoChangedHandler:v38];
      objc_destroyWeak(&v39);
      break;
    case 2uLL:
LABEL_4:
      [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView setSubtitleType:0];
      break;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = 1.0;
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = objc_loadWeakRetained(&self->_delegate);
      [v21 percentExpanded];
      v17 = v22;
    }
  }

  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView setPercentExpanded:v17];
  [contentView addSubview:self->_mainView];
  v23 = self->_context;
  amountStepperView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
  [amountStepperView setAmount:self->_amount];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_2;
  v36[3] = &unk_1E8020940;
  objc_copyWeak(&v37, &location);
  v36[4] = self;
  [amountStepperView setAmountChangedHandler:v36];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_3;
  v34[3] = &unk_1E8010998;
  objc_copyWeak(&v35, &location);
  [amountStepperView setAmountTappedHandler:v34];
  [amountStepperView setAllowOpenRequest:v23 == 2];
  actionView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
  v26 = actionView;
  leadingAction = self->_leadingAction;
  trailingAction = self->_trailingAction;
  if (*&self->_leadingAction != 0)
  {
    if (self->_context == 2)
    {
      [actionView setRecipient:self->_recipient];
    }

    if (leadingAction)
    {
      [v26 setLeadingAction:self->_leadingAction];
    }

    if (trailingAction)
    {
      [v26 setTrailingAction:self->_trailingAction];
    }
  }

  if (self->_centerAction)
  {
    [v26 setCenterAction:?];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_4;
  v30[3] = &unk_1E8020968;
  objc_copyWeak(&v33, &location);
  v29 = amountStepperView;
  v31 = v29;
  selfCopy = self;
  [v26 setActionHandler:v30];
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _registerForPresentationSemanticContextChanges];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&location);
}

void __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMemo:v6];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 delegate];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 memoDidChangeTo:v6];
  }
}

void __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAmount:v9];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 1080));
  if (v4)
  {
    v5 = v4;
    v6 = objc_loadWeakRetained((*(a1 + 32) + 1080));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((*(a1 + 32) + 1080));
      [v8 amountDidChangeTo:v9];
    }
  }
}

void __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained contentDelegate];

  if ([v7 presentationStyle])
  {
    if ([v7 presentationStyle] != 1)
    {
      goto LABEL_6;
    }

    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 mainView];
    v5 = [v4 amountStepperView];
    [v5 validateNumberPadInput];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  [v7 requestPresentationStyle:v6];
LABEL_6:
}

void __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 != 7)
  {
    [v5 setActiveAction:a3];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained mainView];
  v9 = [v8 amountStepperView];
  [v9 validateNumberPadInput];

  v10 = objc_loadWeakRetained((a1 + 48));
  [v10 _sendAnalyticsForEventName:*MEMORY[0x1E69BA6F0] orAction:a3];

  [*(a1 + 32) setUsedKeypad:0];
  v11 = objc_loadWeakRetained((*(a1 + 40) + 1080));
  if (v11 && (v12 = v11, v13 = objc_loadWeakRetained((*(a1 + 40) + 1080)), v14 = objc_opt_respondsToSelector(), v13, v12, (v14 & 1) != 0))
  {
    v15 = objc_loadWeakRetained((*(a1 + 40) + 1080));
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_5;
    v23[3] = &unk_1E8011D28;
    v16 = &v24;
    v24 = v6;
    v17 = v6;
    [v15 handleAction:a3 completion:v23];
  }

  else
  {
    v15 = objc_loadWeakRetained((a1 + 48));
    v18 = [v15 contentDelegate];
    v19 = objc_loadWeakRetained((a1 + 48));
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_7;
    v21[3] = &unk_1E8011D28;
    v16 = &v22;
    v22 = v6;
    v20 = v6;
    [v18 handleAction:a3 sender:v19 completion:v21];
  }
}

void __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_6;
  block[3] = &unk_1E8010970;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_7(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_8;
  block[3] = &unk_1E8010970;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentBaseViewController *)&v5 viewWillAppear:appear];
  navigationItem = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self navigationItem];
  [navigationItem setBackButtonDisplayMode:2];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v6 viewDidAppear:appear];
  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView updateIsExpansionSupported];
  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView updateIsKeypadSupported];
  v4 = *MEMORY[0x1E69BB6A8];
  v5 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6A8]];

  if (!v5)
  {
    [MEMORY[0x1E69B8540] beginSubjectReporting:v4];
  }

  [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _sendAnalyticsForEventName:*MEMORY[0x1E69BA818] orAction:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v4 viewDidDisappear:disappear];
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _sendAnalyticsForEventName:*MEMORY[0x1E69BA820] orAction:0];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v6 viewWillLayoutSubviews];
  navigationController = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  Height = CGRectGetHeight(v7);

  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView setNavigationBarHeight:Height];
  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView updateIsExpansionSupported];
  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView updateIsKeypadSupported];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v10 viewDidLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = 1.0;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 percentExpanded];
      v4 = v9;
    }
  }

  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView setPercentExpanded:v4];
}

- (void)reloadContent
{
  _currentBalance = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _currentBalance];
  amount = [_currentBalance amount];
  currency = [_currentBalance currency];
  v5 = PKFormattedCurrencyStringFromNumber();

  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_26.isa, &stru_1F3BD5BF0.isa, v5);
  balanceLabel = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView balanceLabel];
  [balanceLabel setText:v6];

  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView updateIsExpansionSupported];
  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView updateIsKeypadSupported];
  amountStepperView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
  _minimumTransferAmount = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _minimumTransferAmount];
  [amountStepperView setMinAmount:_minimumTransferAmount];

  _maximumTransferAmount = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _maximumTransferAmount];
  [amountStepperView setMaxAmount:_maximumTransferAmount];

  if (PKUIKeyboardIsHardwareKeyboardActive())
  {
    [amountStepperView becomeFirstResponder];
  }
}

- (void)_noteAmountChanged
{
  amount = [(PKCurrencyAmount *)self->_amount amount];
  _minimumTransferAmount = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _minimumTransferAmount];
  if ([amount compare:_minimumTransferAmount] == -1)
  {
    v5 = 0;
  }

  else
  {
    _maximumTransferAmount = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _maximumTransferAmount];
    v5 = [amount compare:_maximumTransferAmount] != 1;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  v7 = [amount pk_isEqualToDecimalNumber:zero];

  v8 = v5 & (v7 ^ 1u);
  if (v5 & (v7 ^ 1))
  {
    v9 = 1;
  }

  else
  {
    v9 = (self->_context == 2) & v7;
  }

  actionView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
  [actionView setButtonEnabled:v8 forAction:1];
  [actionView setButtonEnabled:v8 forAction:7];
  [actionView setButtonEnabled:v9 forAction:2];
  [actionView setButtonEnabled:v9 forAction:11];
}

- (id)_minimumTransferAmount
{
  zero = [MEMORY[0x1E696AB90] zero];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    minimumTransferAmount = [v5 minimumTransferAmount];

    zero = minimumTransferAmount;
  }

  return zero;
}

- (id)_maximumTransferAmount
{
  zero = [MEMORY[0x1E696AB90] zero];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    maximumTransferAmount = [v5 maximumTransferAmount];

    zero = maximumTransferAmount;
  }

  return zero;
}

- (id)_currentBalance
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    currentBalance = [v4 currentBalance];
  }

  else
  {
    currentBalance = 0;
  }

  return currentBalance;
}

- (id)_analyticsButtonTagForAction:(unint64_t)action
{
  amountStepperView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
  usedKeypad = [amountStepperView usedKeypad];
  v7 = MEMORY[0x1E69BA170];
  if (!usedKeypad)
  {
    v7 = MEMORY[0x1E69BA178];
  }

  MEMORY[0x1BFB41980](*v7, 0);
  v8 = 0;
  if (action > 6)
  {
    if (action == 7)
    {
      v18 = MEMORY[0x1E69BB000];
    }

    else
    {
      if (action != 11)
      {
        goto LABEL_21;
      }

      v18 = MEMORY[0x1E69BAFE8];
    }

    goto LABEL_17;
  }

  if (action == 1)
  {
    v18 = MEMORY[0x1E69BAFF0];
LABEL_17:
    v8 = *v18;
    goto LABEL_21;
  }

  if (action == 2)
  {
    amount = [amountStepperView amount];
    v9Amount = [amount amount];

    amount2 = [amountStepperView amount];
    currency = [amount2 currency];

    if (v9Amount)
    {
      v13 = currency == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = PKAnalyticsAmountCategoryForAmount();
      [v14 setObject:v15 forKey:*MEMORY[0x1E69BA268]];

      [v14 setObject:currency forKey:*MEMORY[0x1E69BA270]];
      v16 = self->_sourceType - 1;
      if (v16 > 2)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_1E8020988[v16];
      }

      [v14 setObject:v17 forKey:*MEMORY[0x1E69BA278]];
      PKAnalyticsSendEventWithDailyLimit();
    }

    v8 = *MEMORY[0x1E69BAFE0];
  }

LABEL_21:

  return v8;
}

- (void)_sendAnalyticsForEventName:(id)name orAction:(unint64_t)action
{
  v27[4] = *MEMORY[0x1E69E9840];
  mainView = self->_mainView;
  nameCopy = name;
  amountStepperView = [(PKPeerPaymentMessagesContentAmountEntryView *)mainView amountStepperView];
  usedKeypad = [amountStepperView usedKeypad];
  v10 = MEMORY[0x1E69BA170];
  if (!usedKeypad)
  {
    v10 = MEMORY[0x1E69BA178];
  }

  MEMORY[0x1BFB41980](*v10, 0);
  v11 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _analyticsButtonTagForAction:action];
  v12 = *MEMORY[0x1E69BAF70];
  if (self->_sourceType == 2)
  {
    v13 = *MEMORY[0x1E69BAF68];

    contentDelegate = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
    [contentDelegate presentationStyle];

    v12 = v13;
  }

  v15 = *MEMORY[0x1E69BAEE8];
  v16 = *MEMORY[0x1E69BABE8];
  v26[0] = *MEMORY[0x1E69BA850];
  v26[1] = v16;
  v17 = *MEMORY[0x1E69BAE90];
  v27[0] = v15;
  v27[1] = v17;
  v18 = *MEMORY[0x1E69BAF60];
  v26[2] = *MEMORY[0x1E69BAFB0];
  v26[3] = v18;
  v19 = MEMORY[0x1E695DF90];
  v27[2] = *MEMORY[0x1E69BAFC0];
  v27[3] = v12;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v21 = [v19 dictionaryWithDictionary:v20];

  [v21 safelySetObject:nameCopy forKey:*MEMORY[0x1E69BA680]];
  if ([v11 length])
  {
    [v21 safelySetObject:v11 forKey:*MEMORY[0x1E69BA440]];
  }

  contentDelegate2 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  analyticsMessagesContext = [contentDelegate2 analyticsMessagesContext];

  v24 = MEMORY[0x1E69B8540];
  v25 = [analyticsMessagesContext copy];
  [v24 reportAppleCashEvent:v21 withMessagesContext:v25];
}

- (void)_registerForPresentationSemanticContextChanges
{
  v9[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  contentDelegate = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v9[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__PKPeerPaymentMessagesContentAmountEntryViewController__registerForPresentationSemanticContextChanges__block_invoke;
  v6[3] = &unk_1E801D4A0;
  objc_copyWeak(&v7, &location);
  v5 = [contentDelegate registerForTraitChanges:v4 withHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __103__PKPeerPaymentMessagesContentAmountEntryViewController__registerForPresentationSemanticContextChanges__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 134);
    v6 = [v7 traitCollection];
    [v5 setPresentationContext:{objc_msgSend(v6, "_presentationSemanticContext")}];
  }
}

- (void)setAmount:(id)amount
{
  amountCopy = amount;
  if (([amountCopy isEqual:self->_amount] & 1) == 0)
  {
    objc_storeStrong(&self->_amount, amount);
    amountStepperView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
    [amountStepperView setAmount:amountCopy];

    [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _noteAmountChanged];
  }
}

- (void)setLeadingAction:(unint64_t)action
{
  if (self->_leadingAction != action)
  {
    self->_leadingAction = action;
    actionView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
    [actionView setLeadingAction:action];
  }
}

- (void)setTrailingAction:(unint64_t)action
{
  if (self->_trailingAction != action)
  {
    self->_trailingAction = action;
    actionView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
    [actionView setTrailingAction:action];
  }
}

- (void)setCenterAction:(unint64_t)action
{
  if (self->_centerAction != action)
  {
    self->_centerAction = action;
    actionView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
    [actionView setCenterAction:action];
  }
}

- (void)setRecipient:(id)recipient
{
  recipientCopy = recipient;
  objc_storeStrong(&self->_recipient, recipient);
  if (*&self->_leadingAction != 0 && self->_context == 2)
  {
    actionView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
    [actionView setRecipient:recipientCopy];
  }
}

- (void)setContext:(unint64_t)context
{
  if (self->_context != context)
  {
    self->_context = context;
    if (context == 2)
    {
      amountStepperView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
      [amountStepperView setAllowOpenRequest:1];

      actionView = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
      [actionView setCenterAction:11];
    }
  }
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  v2 = 1;
  v3 = 1;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (PKPeerPaymentMessagesContentAmountEntryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end