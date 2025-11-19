@interface PKPeerPaymentMessagesContentAmountEntryViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (PKPeerPaymentMessagesContentAmountEntryViewController)init;
- (PKPeerPaymentMessagesContentAmountEntryViewController)initWithContentDelegate:(id)a3;
- (PKPeerPaymentMessagesContentAmountEntryViewControllerDelegate)delegate;
- (id)_analyticsButtonTagForAction:(unint64_t)a3;
- (id)_currentBalance;
- (id)_maximumTransferAmount;
- (id)_minimumTransferAmount;
- (void)_noteAmountChanged;
- (void)_registerForPresentationSemanticContextChanges;
- (void)_sendAnalyticsForEventName:(id)a3 orAction:(unint64_t)a4;
- (void)reloadContent;
- (void)setAmount:(id)a3;
- (void)setCenterAction:(unint64_t)a3;
- (void)setContext:(unint64_t)a3;
- (void)setLeadingAction:(unint64_t)a3;
- (void)setRecipient:(id)a3;
- (void)setTrailingAction:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
    v4 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)v2 _currentBalance];
    v5 = [v4 currency];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = @"USD";
    }

    v8 = PKCurrencyAmountCreate(v3, &v7->isa);
    amount = v2->_amount;
    v2->_amount = v8;

    v10 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)v2 navigationItem];
    [v10 _setPreferredNavigationBarVisibility:1];
  }

  return v2;
}

- (PKPeerPaymentMessagesContentAmountEntryViewController)initWithContentDelegate:(id)a3
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  v3 = [(PKPeerPaymentMessagesContentBaseViewController *)&v13 initWithContentDelegate:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AB90] one];
    v5 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)v3 _currentBalance];
    v6 = [v5 currency];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"USD";
    }

    v9 = PKCurrencyAmountCreate(v4, &v8->isa);
    amount = v3->_amount;
    v3->_amount = v9;

    v11 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)v3 navigationItem];
    [v11 _setPreferredNavigationBarVisibility:1];
  }

  return v3;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v41 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self view];
  [v3 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC40]];

  [(PKPeerPaymentMessagesContentAmountEntryViewController *)self setOverrideUserInterfaceStyle:2];
  v4 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  self->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(v5, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

  v6 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v7 = [v6 traitCollection];
  v8 = [v7 _presentationSemanticContext];

  v9 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentView];
  [v9 setContentAlignment:PKContentAlignmentMake()];
  [v9 setVerticalPadding:0.0];
  [v9 setContentInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v9 setIgnoreTopSafeArea:v8 == 2];
  v10 = [PKPeerPaymentMessagesContentAmountEntryView alloc];
  [v9 bounds];
  v11 = [(PKPeerPaymentMessagesContentAmountEntryView *)v10 initWithFrame:?];
  mainView = self->_mainView;
  self->_mainView = v11;

  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView setPresentationContext:v8];
  context = self->_context;
  switch(context)
  {
    case 0uLL:
      goto LABEL_4;
    case 1uLL:
      [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView setSubtitleType:1];
      v14 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView memoField];
      [v14 setText:self->_memo];

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
  [v9 addSubview:self->_mainView];
  v23 = self->_context;
  v24 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
  [v24 setAmount:self->_amount];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_2;
  v36[3] = &unk_1E8020940;
  objc_copyWeak(&v37, &location);
  v36[4] = self;
  [v24 setAmountChangedHandler:v36];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __68__PKPeerPaymentMessagesContentAmountEntryViewController_viewDidLoad__block_invoke_3;
  v34[3] = &unk_1E8010998;
  objc_copyWeak(&v35, &location);
  [v24 setAmountTappedHandler:v34];
  [v24 setAllowOpenRequest:v23 == 2];
  v25 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
  v26 = v25;
  leadingAction = self->_leadingAction;
  trailingAction = self->_trailingAction;
  if (*&self->_leadingAction != 0)
  {
    if (self->_context == 2)
    {
      [v25 setRecipient:self->_recipient];
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
  v29 = v24;
  v31 = v29;
  v32 = self;
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentBaseViewController *)&v5 viewWillAppear:a3];
  v4 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self navigationItem];
  [v4 setBackButtonDisplayMode:2];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v6 viewDidAppear:a3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v4 viewDidDisappear:a3];
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _sendAnalyticsForEventName:*MEMORY[0x1E69BA820] orAction:0];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentMessagesContentAmountEntryViewController;
  [(PKPeerPaymentMessagesContentAmountEntryViewController *)&v6 viewWillLayoutSubviews];
  v3 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 frame];
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
  v11 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _currentBalance];
  v3 = [v11 amount];
  v4 = [v11 currency];
  v5 = PKFormattedCurrencyStringFromNumber();

  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_26.isa, &stru_1F3BD5BF0.isa, v5);
  v7 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView balanceLabel];
  [v7 setText:v6];

  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView updateIsExpansionSupported];
  [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView updateIsKeypadSupported];
  v8 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
  v9 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _minimumTransferAmount];
  [v8 setMinAmount:v9];

  v10 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _maximumTransferAmount];
  [v8 setMaxAmount:v10];

  if (PKUIKeyboardIsHardwareKeyboardActive())
  {
    [v8 becomeFirstResponder];
  }
}

- (void)_noteAmountChanged
{
  v11 = [(PKCurrencyAmount *)self->_amount amount];
  v3 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _minimumTransferAmount];
  if ([v11 compare:v3] == -1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _maximumTransferAmount];
    v5 = [v11 compare:v4] != 1;
  }

  v6 = [MEMORY[0x1E696AB90] zero];
  v7 = [v11 pk_isEqualToDecimalNumber:v6];

  v8 = v5 & (v7 ^ 1u);
  if (v5 & (v7 ^ 1))
  {
    v9 = 1;
  }

  else
  {
    v9 = (self->_context == 2) & v7;
  }

  v10 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
  [v10 setButtonEnabled:v8 forAction:1];
  [v10 setButtonEnabled:v8 forAction:7];
  [v10 setButtonEnabled:v9 forAction:2];
  [v10 setButtonEnabled:v9 forAction:11];
}

- (id)_minimumTransferAmount
{
  v3 = [MEMORY[0x1E696AB90] zero];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 minimumTransferAmount];

    v3 = v6;
  }

  return v3;
}

- (id)_maximumTransferAmount
{
  v3 = [MEMORY[0x1E696AB90] zero];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 maximumTransferAmount];

    v3 = v6;
  }

  return v3;
}

- (id)_currentBalance
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v4 currentBalance];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_analyticsButtonTagForAction:(unint64_t)a3
{
  v5 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
  v6 = [v5 usedKeypad];
  v7 = MEMORY[0x1E69BA170];
  if (!v6)
  {
    v7 = MEMORY[0x1E69BA178];
  }

  MEMORY[0x1BFB41980](*v7, 0);
  v8 = 0;
  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v18 = MEMORY[0x1E69BB000];
    }

    else
    {
      if (a3 != 11)
      {
        goto LABEL_21;
      }

      v18 = MEMORY[0x1E69BAFE8];
    }

    goto LABEL_17;
  }

  if (a3 == 1)
  {
    v18 = MEMORY[0x1E69BAFF0];
LABEL_17:
    v8 = *v18;
    goto LABEL_21;
  }

  if (a3 == 2)
  {
    v9 = [v5 amount];
    v10 = [v9 amount];

    v11 = [v5 amount];
    v12 = [v11 currency];

    if (v10)
    {
      v13 = v12 == 0;
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

      [v14 setObject:v12 forKey:*MEMORY[0x1E69BA270]];
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

- (void)_sendAnalyticsForEventName:(id)a3 orAction:(unint64_t)a4
{
  v27[4] = *MEMORY[0x1E69E9840];
  mainView = self->_mainView;
  v7 = a3;
  v8 = [(PKPeerPaymentMessagesContentAmountEntryView *)mainView amountStepperView];
  v9 = [v8 usedKeypad];
  v10 = MEMORY[0x1E69BA170];
  if (!v9)
  {
    v10 = MEMORY[0x1E69BA178];
  }

  MEMORY[0x1BFB41980](*v10, 0);
  v11 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _analyticsButtonTagForAction:a4];
  v12 = *MEMORY[0x1E69BAF70];
  if (self->_sourceType == 2)
  {
    v13 = *MEMORY[0x1E69BAF68];

    v14 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
    [v14 presentationStyle];

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

  [v21 safelySetObject:v7 forKey:*MEMORY[0x1E69BA680]];
  if ([v11 length])
  {
    [v21 safelySetObject:v11 forKey:*MEMORY[0x1E69BA440]];
  }

  v22 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v23 = [v22 analyticsMessagesContext];

  v24 = MEMORY[0x1E69B8540];
  v25 = [v23 copy];
  [v24 reportAppleCashEvent:v21 withMessagesContext:v25];
}

- (void)_registerForPresentationSemanticContextChanges
{
  v9[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v9[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__PKPeerPaymentMessagesContentAmountEntryViewController__registerForPresentationSemanticContextChanges__block_invoke;
  v6[3] = &unk_1E801D4A0;
  objc_copyWeak(&v7, &location);
  v5 = [v3 registerForTraitChanges:v4 withHandler:v6];

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

- (void)setAmount:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_amount] & 1) == 0)
  {
    objc_storeStrong(&self->_amount, a3);
    v5 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
    [v5 setAmount:v6];

    [(PKPeerPaymentMessagesContentAmountEntryViewController *)self _noteAmountChanged];
  }
}

- (void)setLeadingAction:(unint64_t)a3
{
  if (self->_leadingAction != a3)
  {
    self->_leadingAction = a3;
    v5 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
    [v5 setLeadingAction:a3];
  }
}

- (void)setTrailingAction:(unint64_t)a3
{
  if (self->_trailingAction != a3)
  {
    self->_trailingAction = a3;
    v5 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
    [v5 setTrailingAction:a3];
  }
}

- (void)setCenterAction:(unint64_t)a3
{
  if (self->_centerAction != a3)
  {
    self->_centerAction = a3;
    v5 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
    [v5 setCenterAction:a3];
  }
}

- (void)setRecipient:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_recipient, a3);
  if (*&self->_leadingAction != 0 && self->_context == 2)
  {
    v5 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
    [v5 setRecipient:v6];
  }
}

- (void)setContext:(unint64_t)a3
{
  if (self->_context != a3)
  {
    self->_context = a3;
    if (a3 == 2)
    {
      v4 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView amountStepperView];
      [v4 setAllowOpenRequest:1];

      v5 = [(PKPeerPaymentMessagesContentAmountEntryView *)self->_mainView actionView];
      [v5 setCenterAction:11];
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