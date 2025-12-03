@interface PKMerchantTokenDetailViewController
- (BOOL)shouldMapSection:(unint64_t)section;
- (PKMerchantTokenDetailViewController)initWithMerchantToken:(id)token;
- (PKMerchantTokenDetailViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_contactKeysToFetch;
- (id)_deletePaymentMethodCellForTableView:(id)view atIndexPath:(id)path;
- (id)_headerCellForTableView:(id)view atIndexPath:(id)path;
- (id)_manageAutoReloadCellForTableView:(id)view atIndexPath:(id)path;
- (id)_managePaymentMethodCellForTableView:(id)view atIndexPath:(id)path;
- (id)_manageRecurringPaymentCellForTableView:(id)view atIndexPath:(id)path;
- (id)presentationSceneIdentifierForTopUpController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_deleteMerchantToken;
- (void)_didSelectAutoReloadManagement;
- (void)_didSelectDeletePaymentMethodAtIndexPath:(id)path;
- (void)_didSelectRecurringPaymentAtIndexPath:(id)path;
- (void)_disableNavigation;
- (void)_enableNavigation;
- (void)_hideLoadingView;
- (void)_setUpLoadingView;
- (void)_setUpTableView;
- (void)_setUpViews;
- (void)_showLoadingView;
- (void)_updateRecurringPaymentsWithCompletion:(id)completion;
- (void)preflightWithCompletion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)thresholdTopUpController:(id)controller requestsPopViewController:(id)viewController;
- (void)thresholdTopUpController:(id)controller requestsPushViewController:(id)viewController;
- (void)thresholdTopUpControllerCompletedSetup:(id)setup;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillLayoutSubviews;
@end

@implementation PKMerchantTokenDetailViewController

- (PKMerchantTokenDetailViewController)initWithMerchantToken:(id)token
{
  tokenCopy = token;
  v23.receiver = self;
  v23.super_class = PKMerchantTokenDetailViewController;
  v6 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v23, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 5);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_merchantToken, token);
    v7->_showMerchantIcon = PKMerchantTokensForceMerchantIconsEnabled();
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    webService = v7->_webService;
    v7->_webService = mEMORY[0x1E69B8EF8];

    navigationItem = [(PKMerchantTokenDetailViewController *)v7 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    merchantName = [tokenCopy merchantName];
    v12 = merchantName;
    if (!v7->_showMerchantIcon && [merchantName length])
    {
      [navigationItem setTitle:v12];
    }

    if ([(PKMerchantToken *)v7->_merchantToken isAppleCashPaymentToken])
    {
      mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
      account = [mEMORY[0x1E69B9000] account];
      peerPaymentAccount = v7->_peerPaymentAccount;
      v7->_peerPaymentAccount = account;

      [mEMORY[0x1E69B9000] registerObserver:v7];
      v16 = objc_alloc_init(MEMORY[0x1E695CE18]);
      v17 = objc_alloc(MEMORY[0x1E69B8740]);
      _contactKeysToFetch = [(PKMerchantTokenDetailViewController *)v7 _contactKeysToFetch];
      v19 = [v17 initWithContactStore:v16 keysToFetch:_contactKeysToFetch];

      v20 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:v19 context:0];
      transactionPresenter = v7->_transactionPresenter;
      v7->_transactionPresenter = v20;
    }
  }

  return v7;
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKMerchantToken *)self->_merchantToken isAppleCashPaymentToken])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PKMerchantTokenDetailViewController_preflightWithCompletion___block_invoke;
    v5[3] = &unk_1E8010B50;
    v6 = completionCopy;
    [(PKMerchantTokenDetailViewController *)self _updateRecurringPaymentsWithCompletion:v5];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

uint64_t __63__PKMerchantTokenDetailViewController_preflightWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_updateRecurringPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  objc_initWeak(&location, self);
  merchantTokenId = [(PKMerchantToken *)self->_merchantToken merchantTokenId];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PKMerchantTokenDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke;
  v9[3] = &unk_1E801B5D8;
  v7 = merchantTokenId;
  v10 = v7;
  objc_copyWeak(&v12, &location);
  v8 = completionCopy;
  v11 = v8;
  [mEMORY[0x1E69B9000] recurringPaymentsWithCompletion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __78__PKMerchantTokenDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke(id *a1, void *a2)
{
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PKMerchantTokenDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke_2;
  v16[3] = &unk_1E801B588;
  v17 = a1[4];
  v4 = a2;
  v5 = [v4 pk_firstObjectPassingTest:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKMerchantTokenDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke_3;
  v14[3] = &unk_1E801B5B0;
  v15 = a1[4];
  v6 = [v4 pk_objectsPassingTest:v14];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PKMerchantTokenDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke_4;
  v9[3] = &unk_1E8019A28;
  objc_copyWeak(&v13, a1 + 6);
  v10 = v5;
  v11 = v6;
  v12 = a1[5];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

uint64_t __78__PKMerchantTokenDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 3)
  {
    v4 = *(a1 + 32);
    v5 = [v3 fundingSource];
    v6 = [v5 mpanIdentifier];
    v7 = v4;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqualToString:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __78__PKMerchantTokenDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 1 && objc_msgSend(v3, "sentByMe"))
  {
    v4 = *(a1 + 32);
    v5 = [v3 fundingSource];
    v6 = [v5 mpanIdentifier];
    v7 = v4;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqualToString:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __78__PKMerchantTokenDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 143, *(a1 + 32));
    objc_storeStrong(WeakRetained + 145, *(a1 + 40));
    if ([WeakRetained isViewLoaded])
    {
      [WeakRetained reloadData];
    }

    v2 = *(a1 + 48);
    if (v2)
    {
      (*(v2 + 16))();
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKMerchantTokenDetailViewController;
  [(PKSectionTableViewController *)&v3 viewDidLoad];
  [(PKMerchantTokenDetailViewController *)self _setUpViews];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKMerchantTokenDetailViewController;
  [(PKMerchantTokenDetailViewController *)&v8 viewDidAppear:appear];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB6F8];
  v5 = *MEMORY[0x1E69BABE8];
  v9[0] = *MEMORY[0x1E69BA680];
  v9[1] = v5;
  v6 = *MEMORY[0x1E69BAAC8];
  v10[0] = *MEMORY[0x1E69BA818];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v3 subject:v4 sendEvent:v7];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12[3] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKMerchantTokenDetailViewController;
  [(PKMerchantTokenDetailViewController *)&v10 viewDidDisappear:disappear];
  if (([(PKMerchantTokenDetailViewController *)self isBeingDismissed]& 1) != 0 || [(PKMerchantTokenDetailViewController *)self isMovingFromParentViewController])
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6F8];
    v6 = *MEMORY[0x1E69BA6F0];
    v7 = *MEMORY[0x1E69BA440];
    v11[0] = *MEMORY[0x1E69BA680];
    v11[1] = v7;
    v8 = *MEMORY[0x1E69BA3A8];
    v12[0] = v6;
    v12[1] = v8;
    v11[2] = *MEMORY[0x1E69BABE8];
    v12[2] = *MEMORY[0x1E69BAAC8];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v4 subject:v5 sendEvent:v9];
  }
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKMerchantTokenDetailViewController;
  [(PKMerchantTokenDetailViewController *)&v14 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKMerchantTokenDetailViewController *)self tableView];
    navigationItem = [(PKMerchantTokenDetailViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }

  view = [(PKMerchantTokenDetailViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(PKMerchantTokenLoadingView *)self->_loadingView setFrame:v7, v9, v11, v13];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = PKMerchantTokenDetailViewController;
  [(PKMerchantTokenDetailViewController *)&v2 viewDidLayoutSubviews];
}

- (void)viewLayoutMarginsDidChange
{
  v12.receiver = self;
  v12.super_class = PKMerchantTokenDetailViewController;
  [(PKMerchantTokenDetailViewController *)&v12 viewLayoutMarginsDidChange];
  view = [(PKMerchantTokenDetailViewController *)self view];
  [view layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKMerchantTokenLoadingView *)self->_loadingView setLayoutMargins:v5, v7, v9, v11];
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  selfCopy = self;
  LOBYTE(self) = 1;
  if (section > 2)
  {
    if (section == 3)
    {
      LODWORD(self) = [(PKMerchantToken *)selfCopy->_merchantToken isAppleCashPaymentToken];
      if (self)
      {
        peerPaymentAccount = selfCopy->_peerPaymentAccount;

        LOBYTE(self) = [(PKPeerPaymentAccount *)peerPaymentAccount supportsThresholdTopUp];
      }
    }

    else
    {
      LOBYTE(self) = section != 5;
    }
  }

  else if (section == 1)
  {
    if ([(PKMerchantToken *)selfCopy->_merchantToken isAppleCashPaymentToken])
    {
      LOBYTE(self) = selfCopy->_peerPaymentAccount == 0;
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  else if (section == 2)
  {
    LODWORD(self) = [(PKMerchantToken *)selfCopy->_merchantToken isAppleCashPaymentToken];
    if (self)
    {
      v4 = selfCopy->_peerPaymentAccount;

      LOBYTE(self) = [(PKPeerPaymentAccount *)v4 supportsRecurringPayments];
    }
  }

  return self;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  result = 1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      return self->_autoReload != 0;
    }

    else if (v5 == 5)
    {
      return 0;
    }
  }

  else if (v5)
  {
    if (v5 == 2)
    {
      recurringPayments = self->_recurringPayments;

      return [(NSArray *)recurringPayments count];
    }
  }

  else
  {
    return self->_showMerchantIcon;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  v9 = 0;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_13;
      }

      v10 = [(PKMerchantTokenDetailViewController *)self _managePaymentMethodCellForTableView:viewCopy atIndexPath:pathCopy];
    }

    else
    {
      v10 = [(PKMerchantTokenDetailViewController *)self _headerCellForTableView:viewCopy atIndexPath:pathCopy];
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v10 = [(PKMerchantTokenDetailViewController *)self _manageRecurringPaymentCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      case 3:
        v10 = [(PKMerchantTokenDetailViewController *)self _manageAutoReloadCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      case 4:
        v10 = [(PKMerchantTokenDetailViewController *)self _deletePaymentMethodCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      default:
        goto LABEL_13;
    }
  }

  v9 = v10;
LABEL_13:

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(PKSectionTableViewController *)self sectionForIndex:section]== 2)
  {
    v5 = [(NSArray *)self->_recurringPayments count];
    if (v5)
    {
      v5 = PKLocalizedPeerPaymentRecurringString(&cfstr_MerchantTokenR_5.isa);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v5 == 4)
  {
    if ([(PKMerchantToken *)self->_merchantToken isAMPPaymentToken])
    {
      v8 = @"MERCHANT_TOKEN_DETAIL_DELETE_APPLE_FOOTER";
LABEL_12:
      v10 = PKLocalizedMerchantTokensString(&v8->isa);
LABEL_13:
      v9 = v10;
      goto LABEL_23;
    }

    if ([(PKMerchantToken *)self->_merchantToken isDeferredPayment])
    {
      v6 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_13.isa);
      merchantName = [(PKMerchantToken *)self->_merchantToken merchantName];
      merchantName2 = [(PKMerchantToken *)self->_merchantToken merchantName];
      v9 = PKStringWithValidatedFormat();

LABEL_21:
      goto LABEL_22;
    }

    if (![(PKMerchantToken *)self->_merchantToken isAppleCashPaymentToken])
    {
      v6 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_12.isa);
      merchantName = [(PKMerchantToken *)self->_merchantToken merchantName];
      goto LABEL_20;
    }

    v11 = @"MERCHANT_TOKEN_DETAIL_DELETE_CASH_FOOTER";
LABEL_27:
    v10 = PKLocalizedPeerPaymentRecurringString(&v11->isa);
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if (![(PKMerchantToken *)self->_merchantToken isAMPPaymentToken])
  {
    if (![(PKMerchantToken *)self->_merchantToken isAppleCashPaymentToken]|| self->_peerPaymentAccount)
    {
      v8 = @"MERCHANT_TOKEN_DETAIL_MANAGE_PAYMENT_METHOD_FOOTER";
      goto LABEL_12;
    }

    v11 = @"MERCHANT_TOKEN_DETAIL_MANAGE_CASH_PAYMENT_METHOD_FOOTER";
    goto LABEL_27;
  }

  v6 = PKPrimaryAppleAccountEmail();
  if (v6)
  {
    merchantName = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_23.isa);
LABEL_20:
    v9 = PKStringWithValidatedFormat();
    goto LABEL_21;
  }

  v9 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_24.isa);
LABEL_22:

LABEL_23:

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ((section - 1) >= 3)
  {
    if (section == 4)
    {
      v7 = 35.0;
    }

    else if (section)
    {
      v7 = 0.0;
    }

    else if (self->_showMerchantIcon)
    {
      v7 = 26.0;
    }

    else
    {
      v7 = 0.0;
    }
  }

  else if ([(PKMerchantTokenDetailViewController *)self tableView:viewCopy numberOfRowsInSection:section]<= 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 25.0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        [(PKMerchantTokenDetailViewController *)self _didSelectRecurringPaymentAtIndexPath:pathCopy];
      }

      goto LABEL_17;
    }

    merchantTokenManagementURL = [(PKMerchantToken *)self->_merchantToken merchantTokenManagementURL];
    if (merchantTokenManagementURL)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:*MEMORY[0x1E69BA6F0] forKeyedSubscript:*MEMORY[0x1E69BA680]];
      [v8 setObject:*MEMORY[0x1E69BAAC8] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
      [v8 setObject:*MEMORY[0x1E69BAAD0] forKeyedSubscript:*MEMORY[0x1E69BA440]];
      appleMerchantId = [(PKMerchantToken *)self->_merchantToken appleMerchantId];
      [v8 safelySetObject:appleMerchantId forKey:*MEMORY[0x1E69BAAD8]];

      [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6F8] sendEvent:v8];
      if ([(PKMerchantToken *)self->_merchantToken isAMPPaymentToken])
      {
LABEL_10:
        PKOpenURL();
LABEL_16:

        goto LABEL_17;
      }

      if (![(PKMerchantToken *)self->_merchantToken isAppleCashPaymentToken])
      {
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        v12 = [mEMORY[0x1E69DC668] canOpenURL:merchantTokenManagementURL];

        if (!v12)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    else if (([(PKMerchantToken *)self->_merchantToken isAppleCashPaymentToken]& 1) == 0)
    {
      goto LABEL_16;
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK"];
    PKOpenURL();

    goto LABEL_16;
  }

  if (v6 == 3)
  {
    [(PKMerchantTokenDetailViewController *)self _didSelectAutoReloadManagement];
  }

  else if (v6 == 4)
  {
    [(PKMerchantTokenDetailViewController *)self _didSelectDeletePaymentMethodAtIndexPath:pathCopy];
  }

LABEL_17:
}

- (void)_setUpViews
{
  [(PKMerchantTokenDetailViewController *)self _setUpTableView];

  [(PKMerchantTokenDetailViewController *)self _setUpLoadingView];
}

- (void)_setUpTableView
{
  tableView = [(PKMerchantTokenDetailViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"HeaderCell"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ManagePaymentMethodCell"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ManageAutoReloadCell"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ManageRecurringPayment"];
  [tableView setAlwaysBounceVertical:0];
}

- (void)_setUpLoadingView
{
  view = [(PKMerchantTokenDetailViewController *)self view];
  v3 = [PKMerchantTokenLoadingView alloc];
  v4 = [(PKMerchantTokenLoadingView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  loadingView = self->_loadingView;
  self->_loadingView = v4;

  v6 = self->_loadingView;
  v7 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_11.isa);
  [(PKMerchantTokenLoadingView *)v6 setLoadingText:v7];

  [(PKMerchantTokenLoadingView *)self->_loadingView setHidden:1];
  [view addSubview:self->_loadingView];
}

- (void)_showLoadingView
{
  view = [(PKMerchantTokenDetailViewController *)self view];
  [(PKMerchantTokenLoadingView *)self->_loadingView setHidden:0];
  [view bringSubviewToFront:self->_loadingView];
  [(PKMerchantTokenDetailViewController *)self _disableNavigation];
}

- (void)_hideLoadingView
{
  [(PKMerchantTokenLoadingView *)self->_loadingView setHidden:1];

  [(PKMerchantTokenDetailViewController *)self _enableNavigation];
}

- (void)_enableNavigation
{
  navigationController = [(PKMerchantTokenDetailViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:1];

  navigationController2 = [(PKMerchantTokenDetailViewController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController2 interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:1];
}

- (void)_disableNavigation
{
  navigationController = [(PKMerchantTokenDetailViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:0];

  navigationController2 = [(PKMerchantTokenDetailViewController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController2 interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:0];
}

- (id)_headerCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"HeaderCell" forIndexPath:path];
  [v5 updateCellWithMerchantToken:self->_merchantToken];

  return v5;
}

- (id)_managePaymentMethodCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"ManagePaymentMethodCell" forIndexPath:path];
  defaultContentConfiguration = [v5 defaultContentConfiguration];
  if ([(PKMerchantToken *)self->_merchantToken isAMPPaymentToken])
  {
    v7 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_28.isa);
LABEL_3:
    v8 = v7;
    [defaultContentConfiguration setText:v7];
    goto LABEL_7;
  }

  if ([(PKMerchantToken *)self->_merchantToken isAppleCashPaymentToken]&& !self->_peerPaymentAccount)
  {
    v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_MerchantTokenD_29.isa);
    goto LABEL_3;
  }

  v8 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_22.isa);
  merchantName = [(PKMerchantToken *)self->_merchantToken merchantName];
  v10 = PKStringWithValidatedFormat();
  [defaultContentConfiguration setText:{v10, merchantName}];

LABEL_7:
  textProperties = [defaultContentConfiguration textProperties];
  if (PKBridgeUsesDarkAppearance())
  {
    BPSBridgeTintColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v12 = ;
  [textProperties setColor:v12];

  [v5 setContentConfiguration:defaultContentConfiguration];

  return v5;
}

- (id)_deletePaymentMethodCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"ManagePaymentMethodCell" forIndexPath:path];
  defaultContentConfiguration = [v5 defaultContentConfiguration];
  if ([(PKMerchantToken *)self->_merchantToken isDeferredPayment])
  {
    v7 = @"MERCHANT_TOKEN_DETAIL_DELETE_DEFERRED_BUTTON_TEXT";
  }

  else
  {
    v7 = @"MERCHANT_TOKEN_DETAIL_DELETE_BUTTON_TEXT";
  }

  v8 = PKLocalizedMerchantTokensString(&v7->isa);
  [defaultContentConfiguration setText:v8];

  textProperties = [defaultContentConfiguration textProperties];
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [textProperties setColor:systemRedColor];

  [v5 setContentConfiguration:defaultContentConfiguration];
  PKAccessibilityIDCellSet(v5, *MEMORY[0x1E69B9B80]);

  return v5;
}

- (id)_manageRecurringPaymentCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ManageRecurringPayment" forIndexPath:pathCopy];
  if (!v7)
  {
    v7 = [[PKPaymentTransactionTableCell alloc] initWithStyle:0 reuseIdentifier:@"ManageRecurringPayment"];
  }

  [(PKPaymentTransactionTableCell *)v7 setAdditionalInsets:0.0, 7.0, 0.0, 7.0];
  recurringPayments = self->_recurringPayments;
  v9 = [pathCopy row];

  v10 = [(NSArray *)recurringPayments objectAtIndex:v9];
  v11 = PKPeerPaymentTransactionForRecurringPayment();
  [(PKPaymentTransactionCellController *)self->_transactionPresenter configureCell:v7 forTransaction:v11 transactionSource:0 familyMember:0 account:0 detailStyle:0 deviceName:0 avatarViewDelegate:0];

  return v7;
}

- (id)_manageAutoReloadCellForTableView:(id)view atIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:@"ManageAutoReloadCell" forIndexPath:path];
  defaultContentConfiguration = [v4 defaultContentConfiguration];
  v6 = PKLocalizedPeerPaymentRecurringString(&cfstr_MerchantTokenM.isa);
  [defaultContentConfiguration setText:v6];

  [v4 setAccessoryType:1];
  [v4 setContentConfiguration:defaultContentConfiguration];

  return v4;
}

- (void)_didSelectAutoReloadManagement
{
  autoReloadController = self->_autoReloadController;
  if (!autoReloadController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v6 = [v4 passWithUniqueID:associatedPassUniqueID];
    paymentPass = [v6 paymentPass];

    v8 = [[PKPeerPaymentThresholdTopUpController alloc] initWithPeerPaymentAccount:self->_peerPaymentAccount pass:paymentPass context:0 passLibraryDataProvider:v4 delegate:self];
    v9 = self->_autoReloadController;
    self->_autoReloadController = v8;

    autoReloadController = self->_autoReloadController;
  }

  autoReload = self->_autoReload;

  [(PKPeerPaymentThresholdTopUpController *)autoReloadController presentTopUpFlowForRecurringPayment:autoReload];
}

- (void)_didSelectRecurringPaymentAtIndexPath:(id)path
{
  v14 = -[NSArray objectAtIndex:](self->_recurringPayments, "objectAtIndex:", [path row]);
  v4 = objc_alloc(MEMORY[0x1E69B8F28]);
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  v6 = [v4 initWithPeerPaymentWebService:mEMORY[0x1E69B9020]];

  recurringPaymentsFeatureDescriptor = [(PKPeerPaymentAccount *)self->_peerPaymentAccount recurringPaymentsFeatureDescriptor];
  v8 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
  recipientAddress = [v14 recipientAddress];
  v10 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v8 initWithRecurringPayment:v14 recipientAddress:recipientAddress mode:2 context:0 peerPaymentController:v6 remoteMessagesComposer:0];

  minimumAmount = [recurringPaymentsFeatureDescriptor minimumAmount];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)v10 setMinimumAmount:minimumAmount];

  maximumAmount = [recurringPaymentsFeatureDescriptor maximumAmount];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)v10 setMaximumAmount:maximumAmount];

  navigationController = [(PKMerchantTokenDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v10];
  }

  else
  {
    [navigationController pushViewController:v10 animated:1];
  }
}

- (void)_didSelectDeletePaymentMethodAtIndexPath:(id)path
{
  pathCopy = path;
  pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
  if ([(PKMerchantToken *)self->_merchantToken isAMPPaymentToken])
  {
    v6 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_30.isa);
    goto LABEL_3;
  }

  if ([(PKMerchantToken *)self->_merchantToken isDeferredPayment])
  {
    v9 = @"MERCHANT_TOKEN_DETAIL_DELETE_DEFERRED_SHEET_MESSAGE";
    goto LABEL_10;
  }

  if (![(PKMerchantToken *)self->_merchantToken isAppleCashPaymentToken])
  {
    v9 = @"MERCHANT_TOKEN_DETAIL_DELETE_SHEET_MESSAGE";
LABEL_10:
    v10 = PKLocalizedMerchantTokensString(&v9->isa);
    merchantName = [(PKMerchantToken *)self->_merchantToken merchantName];
    v7 = PKStringWithValidatedFormat();

    if (pkui_userInterfaceIdiomSupportsLargeLayouts)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v6 = PKLocalizedPeerPaymentRecurringString(&cfstr_MerchantTokenD_31.isa);
LABEL_3:
  v7 = v6;
  if (pkui_userInterfaceIdiomSupportsLargeLayouts)
  {
LABEL_4:
    PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_3.isa);
    v7 = v8 = v7;
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v8 preferredStyle:{pkui_userInterfaceIdiomSupportsLargeLayouts, merchantName}];
  if ((pkui_userInterfaceIdiomSupportsLargeLayouts & 1) == 0)
  {
    tableView = [(PKMerchantTokenDetailViewController *)self tableView];
    v13 = [tableView cellForRowAtIndexPath:pathCopy];

    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setSourceView:v13];
  }

  v15 = MEMORY[0x1E69DC648];
  v16 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_7.isa);
  v17 = [v15 actionWithTitle:v16 style:1 handler:0];
  [v11 addAction:v17];

  if ([(PKMerchantToken *)self->_merchantToken isDeferredPayment])
  {
    v18 = @"MERCHANT_TOKEN_DETAIL_DELETE_DEFERRED_SHEET_CONFIRM";
  }

  else
  {
    v18 = @"MERCHANT_TOKEN_DETAIL_DELETE_SHEET_CONFIRM";
  }

  v19 = PKLocalizedMerchantTokensString(&v18->isa);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__PKMerchantTokenDetailViewController__didSelectDeletePaymentMethodAtIndexPath___block_invoke;
  v22[3] = &unk_1E80112E8;
  v22[4] = self;
  v20 = [MEMORY[0x1E69DC648] actionWithTitle:v19 style:2 handler:v22];
  [v11 addAction:v20];
  [v11 setPreferredAction:v20];
  if (v11)
  {
    [(PKMerchantTokenDetailViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)_deleteMerchantToken
{
  v14[3] = *MEMORY[0x1E69E9840];
  [(PKMerchantTokenDetailViewController *)self _showLoadingView];
  v3 = objc_alloc_init(MEMORY[0x1E69B87A8]);
  merchantTokenId = [(PKMerchantToken *)self->_merchantToken merchantTokenId];
  [v3 setMerchantTokenId:merchantTokenId];

  v5 = MEMORY[0x1E69B8540];
  v6 = *MEMORY[0x1E69BB6F8];
  v7 = *MEMORY[0x1E69BA6F0];
  v8 = *MEMORY[0x1E69BABE8];
  v13[0] = *MEMORY[0x1E69BA680];
  v13[1] = v8;
  v9 = *MEMORY[0x1E69BAAC8];
  v14[0] = v7;
  v14[1] = v9;
  v13[2] = *MEMORY[0x1E69BA440];
  v14[2] = *MEMORY[0x1E69BAAE8];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v5 subject:v6 sendEvent:v10];

  webService = self->_webService;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PKMerchantTokenDetailViewController__deleteMerchantToken__block_invoke;
  v12[3] = &unk_1E8013D38;
  v12[4] = self;
  [(PKPaymentWebService *)webService deleteMerchantTokenWithRequest:v3 completion:v12];
}

void __59__PKMerchantTokenDetailViewController__deleteMerchantToken__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__PKMerchantTokenDetailViewController__deleteMerchantToken__block_invoke_2;
  v2[3] = &unk_1E8013F80;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __59__PKMerchantTokenDetailViewController__deleteMerchantToken__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 _enableNavigation];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1176));
    [WeakRetained merchantTokenDetailViewController:*(a1 + 32) didDeleteMerchantToken:*(*(a1 + 32) + 1104)];
  }

  else
  {
    [v3 _hideLoadingView];
    WeakRetained = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_2.isa);
    v4 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_9.isa);
    v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:WeakRetained message:v4 preferredStyle:1];
    v6 = MEMORY[0x1E69DC648];
    v7 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenD_10.isa);
    v8 = [v6 actionWithTitle:v7 style:0 handler:0];
    [v5 addAction:v8];

    if (v5)
    {
      [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
    }
  }
}

- (void)thresholdTopUpController:(id)controller requestsPushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(PKMerchantTokenDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:viewControllerCopy];
  }

  else
  {
    [navigationController pushViewController:viewControllerCopy animated:1];
  }
}

- (void)thresholdTopUpController:(id)controller requestsPopViewController:(id)viewController
{
  v5 = [(PKMerchantTokenDetailViewController *)self navigationController:controller];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (id)presentationSceneIdentifierForTopUpController:(id)controller
{
  view = [(PKMerchantTokenDetailViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)thresholdTopUpControllerCompletedSetup:(id)setup
{
  navigationController = [(PKMerchantTokenDetailViewController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)_contactKeysToFetch
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v10[0] = v2;
  v3 = _MergedGlobals_7_1[0]();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v10[1] = v5;
  descriptorForRequiredKeys = [off_1EE9A1D00[0]() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = descriptorForRequiredKeys;
  v10[3] = v7;
  v10[4] = *MEMORY[0x1E695C330];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  return v8;
}

- (PKMerchantTokenDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end