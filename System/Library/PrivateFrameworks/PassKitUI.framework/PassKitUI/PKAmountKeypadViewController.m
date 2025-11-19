@interface PKAmountKeypadViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (PKAmountKeypadViewController)initWithRemoteMessagesComposer:(id)a3 recipient:(id)a4 sendFlowType:(int64_t)a5 familyCollection:(id)a6;
- (PKAmountKeypadViewController)initWithRemoteMessagesComposer:(id)a3 recipientAddress:(id)a4 sendFlowType:(int64_t)a5 familyCollection:(id)a6;
- (id)_composeRecipientForAddress:(id)a3;
- (id)currentBalance;
- (id)maximumTransferAmount;
- (id)minimumTransferAmount;
- (void)_cancelButtonPressed;
- (void)_configureAvatarView;
- (void)_nextButtonPressed;
- (void)_presentPeerPaymentAddDebitFlow;
- (void)_presentRecurringDetailViewController;
- (void)dealloc;
- (void)handleAction:(unint64_t)a3 completion:(id)a4;
- (void)loadView;
- (void)setRecurringPeerPayment:(id)a3;
- (void)setShowCancelButton:(BOOL)a3;
- (void)setUpContainerView;
- (void)setUpNavigationBar;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKAmountKeypadViewController

- (PKAmountKeypadViewController)initWithRemoteMessagesComposer:(id)a3 recipientAddress:(id)a4 sendFlowType:(int64_t)a5 familyCollection:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [(PKAmountKeypadViewController *)self _composeRecipientForAddress:a4];
  v13 = [(PKAmountKeypadViewController *)self initWithRemoteMessagesComposer:v11 recipient:v12 sendFlowType:a5 familyCollection:v10];

  return v13;
}

- (PKAmountKeypadViewController)initWithRemoteMessagesComposer:(id)a3 recipient:(id)a4 sendFlowType:(int64_t)a5 familyCollection:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v35.receiver = self;
  v35.super_class = PKAmountKeypadViewController;
  v14 = [(PKAmountKeypadViewController *)&v35 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_recipient, a4);
    v15->_sendFlowType = a5;
    objc_storeStrong(&v15->_remoteMessagesComposer, a3);
    v16 = objc_alloc_init(PKPeerPaymentMessagesContentAmountEntryViewController);
    amountEntryViewController = v15->_amountEntryViewController;
    v15->_amountEntryViewController = v16;

    [(PKPeerPaymentMessagesContentAmountEntryViewController *)v15->_amountEntryViewController setSourceType:1];
    [(PKPeerPaymentMessagesContentAmountEntryViewController *)v15->_amountEntryViewController setDelegate:v15];
    if (a5 >= 2)
    {
      if (a5 == 2)
      {
        v22 = v15->_amountEntryViewController;
        if (_UISolariumFeatureFlagEnabled())
        {
          v23 = 12;
        }

        else
        {
          v23 = 0;
        }

        [(PKPeerPaymentMessagesContentAmountEntryViewController *)v22 setLeadingAction:v23];
        [(PKPeerPaymentMessagesContentAmountEntryViewController *)v15->_amountEntryViewController setTrailingAction:0];
        [(PKPeerPaymentMessagesContentAmountEntryViewController *)v15->_amountEntryViewController setCenterAction:0];
      }
    }

    else
    {
      [(PKPeerPaymentMessagesContentAmountEntryViewController *)v15->_amountEntryViewController setLeadingAction:2];
      [(PKPeerPaymentMessagesContentAmountEntryViewController *)v15->_amountEntryViewController setTrailingAction:1];
      v18 = [(PKAmountKeypadViewController *)v15 _peerPaymentController];
      v19 = [v18 account];

      if ([v19 supportsRecurringPayments])
      {
        v20 = [v13 currentUser];
        if ([v19 isEligibleForRecurringPaymentsForUser:v20])
        {
          v21 = PKIsVision();

          if ((v21 & 1) == 0)
          {
            [(PKPeerPaymentMessagesContentAmountEntryViewController *)v15->_amountEntryViewController setCenterAction:7];
          }
        }

        else
        {
        }
      }
    }

    objc_storeStrong(&v15->_familyCollection, a6);
    v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v15->_containerView;
    v15->_containerView = v24;

    v26 = objc_alloc_init(PKAvatarView);
    avatarView = v15->_avatarView;
    v15->_avatarView = v26;

    if (_UISolariumFeatureFlagEnabled())
    {
      [(PKAvatarView *)v15->_avatarView setDiameter:44.0];
    }

    v28 = [(CNComposeRecipient *)v15->_recipient address];
    v29 = [(PKAmountKeypadViewController *)v15 _peerPaymentController];
    v30 = [v29 messagesContext];

    v31 = [MEMORY[0x1E69B9020] sharedService];
    v32 = objc_alloc_init(MEMORY[0x1E69B8F40]);
    [v32 setEndpoint:5];
    [v32 setRecipientAddress:v28];
    [v32 setQuoteRequestDestination:1];
    [v32 setMessagesContext:v30];
    [v31 prewarmDeviceScoreForAttributes:v32];
    v33 = objc_alloc_init(MEMORY[0x1E69B8F40]);
    [v33 setEndpoint:3];
    [v33 setRecipientAddress:v28];
    [v33 setQuoteRequestDestination:1];
    [v33 setMessagesContext:v30];
    [v31 prewarmDeviceScoreForAttributes:v33];
  }

  return v15;
}

- (void)dealloc
{
  v3 = [(CNComposeRecipient *)self->_recipient address];
  v4 = [(PKAmountKeypadViewController *)self _peerPaymentController];
  v5 = [v4 messagesContext];

  v6 = [MEMORY[0x1E69B9020] sharedService];
  v7 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v7 setEndpoint:5];
  [v7 setRecipientAddress:v3];
  [v7 setQuoteRequestDestination:1];
  [v7 setMessagesContext:v5];
  [v6 unloadDeviceScoreForAttributes:v7];
  v8 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v8 setEndpoint:3];
  [v8 setRecipientAddress:v3];
  [v8 setQuoteRequestDestination:1];
  [v8 setMessagesContext:v5];
  [v6 unloadDeviceScoreForAttributes:v8];

  v9.receiver = self;
  v9.super_class = PKAmountKeypadViewController;
  [(PKAmountKeypadViewController *)&v9 dealloc];
}

- (void)setRecurringPeerPayment:(id)a3
{
  objc_storeStrong(&self->_recurringPayment, a3);
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 amount];
    v8 = [v6 currency];
    v12 = PKCurrencyAmountMake();
  }

  else
  {
    v7 = [MEMORY[0x1E696AB90] zero];
    v8 = [(PKAmountKeypadViewController *)self _peerPaymentController];
    v9 = [v8 account];
    v10 = [v9 currentBalance];
    v11 = [v10 currency];
    v12 = PKCurrencyAmountMake();
  }

  [(PKPeerPaymentMessagesContentAmountEntryViewController *)self->_amountEntryViewController setAmount:v12];
}

- (void)setShowCancelButton:(BOOL)a3
{
  if (self->_showCancelButton != a3)
  {
    self->_showCancelButton = a3;
    [(PKAmountKeypadViewController *)self setUpNavigationBar];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKAmountKeypadViewController;
  [(PKAmountKeypadViewController *)&v4 viewWillAppear:a3];
  [(PKAmountKeypadViewController *)self setUpNavigationBar];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14[5] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKAmountKeypadViewController;
  [(PKAmountKeypadViewController *)&v12 viewDidAppear:a3];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB6A8];
  v5 = *MEMORY[0x1E69BAEE8];
  v6 = *MEMORY[0x1E69BABE8];
  v13[0] = *MEMORY[0x1E69BA850];
  v13[1] = v6;
  v7 = *MEMORY[0x1E69BAE90];
  v14[0] = v5;
  v14[1] = v7;
  v8 = *MEMORY[0x1E69BA818];
  v9 = *MEMORY[0x1E69BAFB0];
  v13[2] = *MEMORY[0x1E69BA680];
  v13[3] = v9;
  v10 = *MEMORY[0x1E69BAFC0];
  v14[2] = v8;
  v14[3] = v10;
  v13[4] = *MEMORY[0x1E69BAF60];
  v14[4] = *MEMORY[0x1E69BAF70];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  [v3 subject:v4 sendEvent:v11];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v14[5] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKAmountKeypadViewController;
  [(PKAmountKeypadViewController *)&v12 viewDidDisappear:a3];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB6A8];
  v5 = *MEMORY[0x1E69BAEE8];
  v6 = *MEMORY[0x1E69BABE8];
  v13[0] = *MEMORY[0x1E69BA850];
  v13[1] = v6;
  v7 = *MEMORY[0x1E69BAE90];
  v14[0] = v5;
  v14[1] = v7;
  v8 = *MEMORY[0x1E69BA820];
  v9 = *MEMORY[0x1E69BAFB0];
  v13[2] = *MEMORY[0x1E69BA680];
  v13[3] = v9;
  v10 = *MEMORY[0x1E69BAFC0];
  v14[2] = v8;
  v14[3] = v10;
  v13[4] = *MEMORY[0x1E69BAF60];
  v14[4] = *MEMORY[0x1E69BAF70];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  [v3 subject:v4 sendEvent:v11];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKAmountKeypadViewController;
  [(PKAmountKeypadViewController *)&v5 loadView];
  v3 = [(PKAmountKeypadViewController *)self view];
  v4 = +[PKPeerPaymentTheme backgroundColor];
  [v3 setBackgroundColor:v4];

  [(PKAmountKeypadViewController *)self _configureAvatarView];
  [(PKAmountKeypadViewController *)self setUpContainerView];
}

- (void)setUpContainerView
{
  v3 = [(PKAmountKeypadViewController *)self view];
  [v3 addSubview:self->_containerView];

  [(UIView *)self->_containerView setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKAmountKeypadViewController *)self addChildViewController:self->_amountEntryViewController];
  containerView = self->_containerView;
  v5 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self->_amountEntryViewController view];
  [(UIView *)containerView addSubview:v5];
}

- (void)viewDidLayoutSubviews
{
  containerView = self->_containerView;
  v4 = [(PKAmountKeypadViewController *)self view];
  [v4 bounds];
  [(UIView *)containerView setFrame:?];

  v5 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self->_amountEntryViewController view];
  [(UIView *)self->_containerView bounds];
  v7 = v6;
  [(UIView *)self->_containerView bounds];
  [v5 setFrame:{0.0, 0.0, v7}];

  v8.receiver = self;
  v8.super_class = PKAmountKeypadViewController;
  [(PKAmountKeypadViewController *)&v8 viewDidLayoutSubviews];
}

- (void)setUpNavigationBar
{
  v3 = [(PKAmountKeypadViewController *)self navigationItem];
  [v3 setBackButtonDisplayMode:2];
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC628];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __50__PKAmountKeypadViewController_setUpNavigationBar__block_invoke;
  v19 = &unk_1E8010A60;
  objc_copyWeak(&v20, &location);
  v5 = [v4 actionWithHandler:&v16];
  v6 = objc_alloc(MEMORY[0x1E69DC708]);
  v7 = [v6 initWithBarButtonSystemItem:1 primaryAction:{v5, v16, v17, v18, v19}];
  if (!_UISolariumFeatureFlagEnabled())
  {
    if (self->_showCancelButton)
    {
      v8 = +[PKPeerPaymentTheme secondaryTextColor];
      [v7 setTintColor:v8];

      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    [v3 setLeftBarButtonItem:v9];
    nextButton = self->_nextButton;
    if (self->_sendFlowType == 2)
    {
      if (nextButton)
      {
        goto LABEL_12;
      }

      v11 = objc_alloc(MEMORY[0x1E69DC708]);
      v12 = PKLocalizedPaymentString(&cfstr_Next.isa);
      v13 = [v11 initWithTitle:v12 style:0 target:self action:sel__nextButtonPressed];
      v14 = self->_nextButton;
      self->_nextButton = v13;

      v15 = self->_nextButton;
    }

    else
    {
      if (!nextButton)
      {
        goto LABEL_12;
      }

      self->_nextButton = 0;

      v15 = 0;
    }

    [v3 setRightBarButtonItem:v15];
    goto LABEL_12;
  }

  [v3 setLeftBarButtonItem:v7];
LABEL_12:
  [v3 setTitleView:self->_avatarView];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __50__PKAmountKeypadViewController_setUpNavigationBar__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelButtonPressed];
}

- (void)_configureAvatarView
{
  v3 = [(CNComposeRecipient *)self->_recipient contact];
  v5 = v3;
  if (v3)
  {
    [(PKAvatarView *)self->_avatarView setContact:v3];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v4 setContactType:0];
    [(PKAvatarView *)self->_avatarView setContact:v4];
  }
}

- (void)_cancelButtonPressed
{
  v16[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB6A8];
  v5 = *MEMORY[0x1E69BAEE8];
  v6 = *MEMORY[0x1E69BABE8];
  v15[0] = *MEMORY[0x1E69BA850];
  v15[1] = v6;
  v7 = *MEMORY[0x1E69BAE90];
  v16[0] = v5;
  v16[1] = v7;
  v8 = *MEMORY[0x1E69BA6F0];
  v9 = *MEMORY[0x1E69BA440];
  v15[2] = *MEMORY[0x1E69BA680];
  v15[3] = v9;
  v10 = *MEMORY[0x1E69BA468];
  v16[2] = v8;
  v16[3] = v10;
  v11 = *MEMORY[0x1E69BAF60];
  v15[4] = *MEMORY[0x1E69BAFB0];
  v15[5] = v11;
  v12 = *MEMORY[0x1E69BAF70];
  v16[4] = *MEMORY[0x1E69BAFC0];
  v16[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
  [v3 subject:v4 sendEvent:v13];

  v14 = [(PKAmountKeypadViewController *)self presentingViewController];
  [v14 dismissViewControllerAnimated:1 completion:0];
}

- (void)_nextButtonPressed
{
  v15[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB6A8];
  v5 = *MEMORY[0x1E69BAEE8];
  v6 = *MEMORY[0x1E69BABE8];
  v14[0] = *MEMORY[0x1E69BA850];
  v14[1] = v6;
  v7 = *MEMORY[0x1E69BAE90];
  v15[0] = v5;
  v15[1] = v7;
  v8 = *MEMORY[0x1E69BA6F0];
  v9 = *MEMORY[0x1E69BA440];
  v14[2] = *MEMORY[0x1E69BA680];
  v14[3] = v9;
  v10 = *MEMORY[0x1E69BAB18];
  v15[2] = v8;
  v15[3] = v10;
  v11 = *MEMORY[0x1E69BAF60];
  v14[4] = *MEMORY[0x1E69BAFB0];
  v14[5] = v11;
  v12 = *MEMORY[0x1E69BAF70];
  v15[4] = *MEMORY[0x1E69BAFC0];
  v15[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];
  [v3 subject:v4 sendEvent:v13];

  [(PKAmountKeypadViewController *)self _presentRecurringDetailViewController];
}

- (id)_composeRecipientForAddress:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [(PKAvatarView *)self->_avatarView descriptorForRequiredKeys];
    v8 = v7;
    if (v7)
    {
      v27[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v6 addObjectsFromArray:v9];
    }

    v10 = [objc_alloc(MEMORY[0x1E69B8740]) initWithContactStore:v5 keysToFetch:v6];
    v11 = [v10 contactForHandle:v4];
    v12 = [MEMORY[0x1E69B8EF8] sharedService];
    v13 = [v12 context];
    v14 = [v13 configuration];
    v15 = [v14 contactFormatConfiguration];

    v16 = [objc_alloc(MEMORY[0x1E69B8730]) initWithConfiguration:v15];
    if ([v16 emailAddressIsValid:v4])
    {
      v17 = 0;
    }

    else
    {
      [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v4];
      v26 = v12;
      v19 = v11;
      v20 = v10;
      v21 = v8;
      v22 = v6;
      v24 = v23 = v5;
      if ([v16 phoneNumberIsValid:v24 forCountryCode:0])
      {
        v17 = 1;
      }

      else
      {
        v17 = 5;
      }

      v5 = v23;
      v6 = v22;
      v8 = v21;
      v10 = v20;
      v11 = v19;
      v12 = v26;
    }

    v18 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:v11 address:v4 kind:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_presentRecurringDetailViewController
{
  v3 = [(PKAmountKeypadViewController *)self _peerPaymentController];
  v4 = [v3 account];
  v31 = 0;
  v32 = 0;
  v5 = [PKPeerPaymentActionController canPerformPeerPaymentAction:3 account:v4 unableReason:&v32 displayableError:&v31];
  v6 = v31;
  if (v5)
  {
    if (!self->_recurringPayment)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69B8FD0]);
      recurringPayment = self->_recurringPayment;
      self->_recurringPayment = v7;

      [(PKPeerPaymentRecurringPayment *)self->_recurringPayment setType:1];
      v9 = self->_recurringPayment;
      v10 = [(CNComposeRecipient *)self->_recipient address];
      [(PKPeerPaymentRecurringPayment *)v9 setRecipientAddress:v10];

      [(PKPeerPaymentRecurringPayment *)self->_recurringPayment setFrequency:1];
      v11 = self->_recurringPayment;
      v12 = [MEMORY[0x1E695DF00] date];
      [(PKPeerPaymentRecurringPayment *)v11 setStartDate:v12];

      [(PKPeerPaymentRecurringPayment *)self->_recurringPayment setSentByMe:1];
    }

    v13 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self->_amountEntryViewController amount];
    v14 = self->_recurringPayment;
    v15 = [v13 currency];
    [(PKPeerPaymentRecurringPayment *)v14 setCurrency:v15];

    v16 = self->_recurringPayment;
    v17 = [v13 amount];
    [(PKPeerPaymentRecurringPayment *)v16 setAmount:v17];

    v18 = [v4 recurringPaymentsFeatureDescriptor];
    v19 = [[PKPeerPaymentRecurringPaymentDetailViewController alloc] initWithRecurringPayment:self->_recurringPayment recipient:self->_recipient mode:1 context:0 peerPaymentController:v3 remoteMessagesComposer:self->_remoteMessagesComposer];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v19 setDelegate:self];
    v20 = [v18 minimumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v19 setMinimumAmount:v20];

    v21 = [v18 maximumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v19 setMaximumAmount:v21];

    [(PKPeerPaymentRecurringPaymentDetailViewController *)v19 setOverrideUserInterfaceStyle:2];
    v22 = [(PKAmountKeypadViewController *)self navigationController];
    [v22 pushViewController:v19 animated:1];
  }

  else
  {
    objc_initWeak(&location, self);
    v23 = v32;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __69__PKAmountKeypadViewController__presentRecurringDetailViewController__block_invoke;
    v28 = &unk_1E8010998;
    objc_copyWeak(&v29, &location);
    v24 = [PKPeerPaymentActionController alertControllerForPeerPaymentActionUnableReason:v23 displayableError:v6 addCardActionHandler:&v25];
    [(PKAmountKeypadViewController *)self presentViewController:v24 animated:1 completion:0, v25, v26, v27, v28];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

void __69__PKAmountKeypadViewController__presentRecurringDetailViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentPeerPaymentAddDebitFlow];
}

- (void)_presentPeerPaymentAddDebitFlow
{
  v3 = [PKPeerPaymentActionController startProvisionToAddDebitWithNetworkAllowlist:0];
  [(PKAmountKeypadViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)handleAction:(unint64_t)a3 completion:(id)a4
{
  v24[6] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 <= 6)
  {
    if (a3 == 1)
    {
LABEL_10:
      objc_initWeak(&location, self);
      [(PKPeerPaymentRemoteMessagesComposer *)self->_remoteMessagesComposer setActionType:a3];
      remoteMessagesComposer = self->_remoteMessagesComposer;
      v18 = [(PKPeerPaymentMessagesContentAmountEntryViewController *)self->_amountEntryViewController amount];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __56__PKAmountKeypadViewController_handleAction_completion___block_invoke;
      v19[3] = &unk_1E80110B8;
      objc_copyWeak(&v21, &location);
      v20 = v6;
      [(PKPeerPaymentRemoteMessagesComposer *)remoteMessagesComposer presentRemoteMessageComposerWithAmount:v18 requestToken:0 memo:0 sessionID:0 overViewController:self completion:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      goto LABEL_11;
    }

    if (a3 == 2)
    {
      a3 = 0;
      goto LABEL_10;
    }

LABEL_9:
    a3 = 3;
    goto LABEL_10;
  }

  if (a3 == 7)
  {
    [(PKAmountKeypadViewController *)self _presentRecurringDetailViewController];
    if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }

  else
  {
    if (a3 != 12)
    {
      goto LABEL_9;
    }

    v7 = MEMORY[0x1E69B8540];
    v8 = *MEMORY[0x1E69BAEE8];
    v9 = *MEMORY[0x1E69BABE8];
    v23[0] = *MEMORY[0x1E69BA850];
    v23[1] = v9;
    v10 = *MEMORY[0x1E69BAE90];
    v24[0] = v8;
    v24[1] = v10;
    v11 = *MEMORY[0x1E69BA6F0];
    v12 = *MEMORY[0x1E69BA440];
    v23[2] = *MEMORY[0x1E69BA680];
    v23[3] = v12;
    v13 = *MEMORY[0x1E69BA500];
    v24[2] = v11;
    v24[3] = v13;
    v14 = *MEMORY[0x1E69BAF60];
    v23[4] = *MEMORY[0x1E69BAFB0];
    v23[5] = v14;
    v15 = *MEMORY[0x1E69BAF70];
    v24[4] = *MEMORY[0x1E69BAFC0];
    v24[5] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];
    [v7 subject:*MEMORY[0x1E69BB6A8] sendEvent:v16];

    [(PKAmountKeypadViewController *)self _presentRecurringDetailViewController];
    if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }

LABEL_11:
}

void __56__PKAmountKeypadViewController_handleAction_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v3 = v6;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v3 = v6;
  }
}

- (id)minimumTransferAmount
{
  v2 = [(PKAmountKeypadViewController *)self _peerPaymentController];
  v3 = [v2 account];
  v4 = [v3 sendToUserFeatureDescriptor];
  v5 = [v4 minimumAmount];

  return v5;
}

- (id)maximumTransferAmount
{
  v2 = [(PKAmountKeypadViewController *)self _peerPaymentController];
  v3 = [v2 account];
  v4 = [v3 sendToUserFeatureDescriptor];
  v5 = [v4 maximumAmount];

  return v5;
}

- (id)currentBalance
{
  v2 = [(PKAmountKeypadViewController *)self _peerPaymentController];
  v3 = [v2 account];
  v4 = [v3 currentBalance];

  return v4;
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  v2 = 1;
  v3 = 1;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end