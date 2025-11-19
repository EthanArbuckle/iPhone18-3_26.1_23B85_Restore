@interface PKAccountBankAccountsViewController
- (BOOL)_hasBankAccounts;
- (BOOL)_isBankAccountIndexPath:(id)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PKAccountBankAccountsViewController)initWithAccount:(id)a3 paymentWebService:(id)a4 context:(int64_t)a5;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_addBankAccountInformationViewController;
- (id)_bankAccountCellForRowAtIndexPath:(id)a3;
- (id)_fundingSourceForIndexPath:(id)a3;
- (id)_indexPathForFundingSourceIdentifier:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_sectionTypeForSection:(unint64_t)a3;
- (void)_configureBankAccountCell:(id)a3 withFundingSource:(id)a4;
- (void)_didSelectDeleteBankAccountAtIndexPath:(id)a3 withCompletionHandler:(id)a4;
- (void)_fetchAccountUserInfo:(id)a3;
- (void)_presentAddBankAccount;
- (void)_presentContactSupportWithSourceItem:(id)a3;
- (void)_presentLinkAccountForFundingSource:(id)a3;
- (void)_reloadFundingSources;
- (void)_setAndFilterFundingSources:(id)a3;
- (void)_toggleEditingMode;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updateEditButtonIfNecessary;
- (void)addBankAccountInformationViewController:(id)a3 didAddFundingSource:(id)a4;
- (void)addBankAccountInformationViewController:(id)a3 didFailWithError:(id)a4;
- (void)addBankAccountInformationViewControllerDidFinish:(id)a3;
- (void)dealloc;
- (void)didUpdatePaymentFundingSources:(id)a3 accountIdentifier:(id)a4;
- (void)preflightWithCompletion:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKAccountBankAccountsViewController

- (PKAccountBankAccountsViewController)initWithAccount:(id)a3 paymentWebService:(id)a4 context:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = PKAccountBankAccountsViewController;
  v11 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v20, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 2);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, a3);
    v12->_accountFeatureIdentifier = [v9 feature];
    objc_storeStrong(&v12->_paymentWebService, a4);
    v13 = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v12->_accountService;
    v12->_accountService = v13;

    v12->_context = a5;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletingFundingSources = v12->_deletingFundingSources;
    v12->_deletingFundingSources = v15;

    v17 = [(PKAccountBankAccountsViewController *)v12 navigationItem];
    v18 = PKLocalizedFeatureString();
    [v17 setTitle:v18];

    v12->_loadingFundingSources = 0;
    [(PKAccountService *)v12->_accountService registerObserver:v12];
  }

  return v12;
}

- (void)dealloc
{
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKAccountBankAccountsViewController;
  [(PKSectionTableViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PKAccountBankAccountsViewController;
  [(PKSectionTableViewController *)&v13 viewDidLoad];
  v3 = [(PKAccountBankAccountsViewController *)self tableView];
  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v3 setAllowsSelectionDuringEditing:1];
  if (PKPaymentSetupContextIsBridge())
  {
    v4 = PKBridgeAppearanceGetAppearanceSpecifier();
    v5 = [v4 backgroundColor];
    [v3 setBackgroundColor:v5];

    v6 = [v3 backgroundView];
    v7 = [v4 backgroundColor];
    [v6 setBackgroundColor:v7];

    v8 = [v4 tableViewSeparatorColor];
    [v3 setSeparatorColor:v8];

    v9 = [v4 tintColor];
    [v3 setSectionIndexColor:v9];

    v10 = [v4 foregroundColor];
    [v3 setSectionIndexBackgroundColor:v10];

    if ([v4 hasDarkAppearance])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    [v3 setIndicatorStyle:v11];
  }

  if (![(PKAccountBankAccountsViewController *)self _hasBankAccounts])
  {
    [(PKAccountBankAccountsViewController *)self _reloadFundingSources];
  }

  v12 = [(PKAccountBankAccountsViewController *)self view];
  [v12 setAccessibilityIdentifier:*MEMORY[0x1E69B9508]];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  if (self->_loadingFundingSources)
  {
    v4 = MEMORY[0x1E69DC8C8];
    v5 = a3;
    v6 = [v4 loadingConfiguration];
    v7 = [v6 updatedConfigurationForState:v5];
  }

  else
  {
    v7 = 0;
  }

  [(PKAccountBankAccountsViewController *)self _setContentUnavailableConfiguration:v7];
}

- (void)_reloadFundingSources
{
  if (!self->_loadingFundingSources)
  {
    self->_loadingFundingSources = 1;
    [(PKAccountBankAccountsViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
    availableFundingSources = self->_availableFundingSources;
    self->_availableFundingSources = 0;

    unavailableFundingSourcesWithVerification = self->_unavailableFundingSourcesWithVerification;
    self->_unavailableFundingSourcesWithVerification = 0;

    unavailableFundingSourcesWithoutVerification = self->_unavailableFundingSourcesWithoutVerification;
    self->_unavailableFundingSourcesWithoutVerification = 0;

    v6 = [(PKAccountBankAccountsViewController *)self tableView];
    [v6 reloadData];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__PKAccountBankAccountsViewController__reloadFundingSources__block_invoke;
    v7[3] = &unk_1E80148F0;
    objc_copyWeak(&v8, &location);
    [(PKAccountBankAccountsViewController *)self preflightWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __60__PKAccountBankAccountsViewController__reloadFundingSources__block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1216) = 0;
    [WeakRetained _setNeedsUpdateContentUnavailableConfiguration];
    v7 = [v6 tableView];
    [v7 reloadData];

    if (v10)
    {
      if ((a2 & 1) == 0)
      {
        [v6[138] feature];
        v8 = PKAccountDisplayableError();
        v9 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
        [v6 presentViewController:v9 animated:1 completion:0];
      }
    }
  }
}

- (void)_setAndFilterFundingSources:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 fundingDetails];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 status];
          v14 = v4;
          if (v13 == 2)
          {
            v15 = [v12 verificationDetails];

            if (v15)
            {
              v14 = v23;
            }

            else
            {
              v14 = v24;
            }
          }

          [(NSMutableArray *)v14 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  unavailableFundingSourcesWithVerification = self->_unavailableFundingSourcesWithVerification;
  self->_unavailableFundingSourcesWithVerification = v23;
  v17 = v23;

  unavailableFundingSourcesWithoutVerification = self->_unavailableFundingSourcesWithoutVerification;
  self->_unavailableFundingSourcesWithoutVerification = v24;
  v19 = v24;

  availableFundingSources = self->_availableFundingSources;
  self->_availableFundingSources = v4;

  v21 = [(PKAccountBankAccountsViewController *)self tableView];
  [v21 reloadData];
}

- (void)_toggleEditingMode
{
  v3 = [(PKAccountBankAccountsViewController *)self tableView];
  [v3 setEditing:objc_msgSend(v3 animated:{"isEditing") ^ 1, 1}];
  [(PKAccountBankAccountsViewController *)self _updateEditButtonIfNecessary];
}

- (void)_updateEditButtonIfNecessary
{
  v7 = [(PKAccountBankAccountsViewController *)self navigationItem];
  if ([(PKAccountBankAccountsViewController *)self _hasBankAccounts])
  {
    v3 = [(PKAccountBankAccountsViewController *)self tableView];
    v4 = [v3 isEditing];

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v5 target:self action:sel__editButtonPressed_];
    [v7 setRightBarButtonItem:v6];
  }

  else
  {
    [v7 setRightBarButtonItem:0];
  }
}

- (BOOL)_isBankAccountIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[PKAccountBankAccountsViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [v4 section]);
  if (v5 == 2)
  {
    v6 = [v4 row];
    v7 = 1168;
LABEL_7:
    v8 = v6 < [*(&self->super.super.super.super.super.isa + v7) count];
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v6 = [v4 row];
    v7 = 1152;
    goto LABEL_7;
  }

  v8 = [v4 row] == 0;
LABEL_9:

  return v8;
}

- (void)_didSelectDeleteBankAccountAtIndexPath:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKAccountBankAccountsViewController *)self _fundingSourceForIndexPath:v6];
  v9 = -[PKAccountBankAccountsViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [v6 section]);
  if (v9 > 2)
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *(&self->super.super.super.super.super.isa + *off_1E801F110[v9]);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (([(NSMutableArray *)self->_deletingFundingSources containsObject:v8]& 1) == 0)
  {
    [(NSMutableArray *)self->_deletingFundingSources addObject:v8];
    v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v11 startAnimating];
    v12 = [(PKAccountBankAccountsViewController *)self tableView];
    v13 = [v12 cellForRowAtIndexPath:v6];

    [v13 setEditingAccessoryView:v11];
    [v13 setAccessoryView:v11];
    v14 = objc_alloc_init(MEMORY[0x1E69B8498]);
    v15 = [(PKAccount *)self->_account accountIdentifier];
    [v14 setAccountIdentifier:v15];

    v16 = [(PKAccount *)self->_account accountBaseURL];
    [v14 setBaseURL:v16];

    v17 = [v8 identifier];
    [v14 setFundingSourceIdentifier:v17];

    objc_initWeak(&location, self);
    paymentWebService = self->_paymentWebService;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __100__PKAccountBankAccountsViewController__didSelectDeleteBankAccountAtIndexPath_withCompletionHandler___block_invoke;
    v19[3] = &unk_1E801EF88;
    objc_copyWeak(&v23, &location);
    v22 = v7;
    v20 = v8;
    v21 = v10;
    [(PKPaymentWebService *)paymentWebService deleteFundingSourceWithRequest:v14 completion:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

LABEL_7:
  (*(v7 + 2))(v7, 0);
}

void __100__PKAccountBankAccountsViewController__didSelectDeleteBankAccountAtIndexPath_withCompletionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__PKAccountBankAccountsViewController__didSelectDeleteBankAccountAtIndexPath_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E801EF60;
  objc_copyWeak(&v15, a1 + 7);
  v14 = a1[6];
  v10 = a1[4];
  v11 = v5;
  v12 = v6;
  v13 = a1[5];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v15);
}

void __100__PKAccountBankAccountsViewController__didSelectDeleteBankAccountAtIndexPath_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    (*(*(a1 + 64) + 16))();
    goto LABEL_9;
  }

  v3 = [*(a1 + 32) identifier];
  v4 = [WeakRetained _indexPathForFundingSourceIdentifier:v3];

  if (v4)
  {
    v5 = [WeakRetained tableView];
    v6 = [v5 cellForRowAtIndexPath:v4];

    [v6 setEditingAccessoryView:0];
    [v6 setAccessoryView:0];
  }

  [WeakRetained[148] removeObject:*(a1 + 32)];
  if (*(a1 + 40) && !*(a1 + 48))
  {
    v9 = [WeakRetained _sectionTypeForSection:{objc_msgSend(v4, "section")}];
    [*(a1 + 56) removeObject:*(a1 + 32)];
    if (!v4)
    {
      goto LABEL_25;
    }

    v10 = [WeakRetained[145] count];
    v11 = -[WeakRetained[146] count];
    if (v9 == 2)
    {
      if (v10 != v11)
      {
        v18 = [WeakRetained[146] count];
        v12 = [WeakRetained tableView];
        if (!v18)
        {
          v22 = v4;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
          [v12 deleteRowsAtIndexPaths:v20 withRowAnimation:100];

          v12 = [WeakRetained tableView];
          v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v4, "section")}];
          [v12 _reloadSectionHeaderFooters:v16 withRowAnimation:100];
          goto LABEL_24;
        }

        v21 = v4;
        v13 = MEMORY[0x1E695DEC8];
        v14 = &v21;
        goto LABEL_23;
      }

      v12 = [WeakRetained tableView];
      v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v4, "section")}];
      v15 = v12;
      v17 = v16;
    }

    else
    {
      if (v9 != 1)
      {
        if (v9)
        {
          goto LABEL_25;
        }

        v12 = [WeakRetained tableView];
        v23[0] = v4;
        v13 = MEMORY[0x1E695DEC8];
        v14 = v23;
LABEL_23:
        v16 = [v13 arrayWithObjects:v14 count:{1, v21}];
        [v12 deleteRowsAtIndexPaths:v16 withRowAnimation:100];
        goto LABEL_24;
      }

      v12 = [MEMORY[0x1E696AD50] indexSetWithIndex:{objc_msgSend(v4, "section")}];
      if (v10 == v11)
      {
        [v12 addIndex:{objc_msgSend(v4, "section") + 1}];
      }

      v15 = [WeakRetained tableView];
      v16 = v15;
      v17 = v12;
    }

    [v15 deleteSections:v17 withRowAnimation:100];
LABEL_24:

LABEL_25:
    if ([WeakRetained _hasBankAccounts])
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v19 = [WeakRetained tableView];
      [v19 setEditing:0];

      [WeakRetained reloadData];
      [WeakRetained _updateEditButtonIfNecessary];
    }

    goto LABEL_7;
  }

  (*(*(a1 + 64) + 16))();
  [WeakRetained[138] feature];
  v7 = PKAccountDisplayableError();
  v8 = PKAlertForDisplayableErrorWithHandlers(v7, 0, 0, 0);
  [WeakRetained presentViewController:v8 animated:1 completion:0];

LABEL_7:
LABEL_9:
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  if (![(PKAccountBankAccountsViewController *)self _hasBankAccounts])
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__44;
    v21[4] = __Block_byref_object_dispose__44;
    v22 = 0;
    objc_initWeak(&location, self);
    v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke;
    v18[3] = &unk_1E801EFD8;
    v18[4] = self;
    objc_copyWeak(&v19, &location);
    v18[5] = v21;
    [v5 addOperation:v18];
    accountFeatureIdentifier = self->_accountFeatureIdentifier;
    if (accountFeatureIdentifier == 2)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_7;
      v14[3] = &unk_1E801F028;
      v14[4] = self;
      v7 = &v15;
      objc_copyWeak(&v15, &location);
      [v5 addOperation:v14];
    }

    else
    {
      if (accountFeatureIdentifier != 5)
      {
LABEL_9:
        v8 = [MEMORY[0x1E695DFB0] null];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_10;
        v10[3] = &unk_1E801F050;
        objc_copyWeak(&v13, &location);
        v12 = v21;
        v11 = v4;
        v9 = [v5 evaluateWithInput:v8 completion:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&v19);

        objc_destroyWeak(&location);
        _Block_object_dispose(v21, 8);

        goto LABEL_10;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_4;
      v16[3] = &unk_1E801F028;
      v16[4] = self;
      v7 = &v17;
      objc_copyWeak(&v17, &location);
      [v5 addOperation:v16];
    }

    objc_destroyWeak(v7);
    goto LABEL_9;
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 1, 0);
  }

LABEL_10:
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 1136);
  v12 = [*(v10 + 1104) accountIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_2;
  v15[3] = &unk_1E801BAD8;
  objc_copyWeak(&v19, (a1 + 48));
  v18 = *(a1 + 40);
  v13 = v9;
  v17 = v13;
  v14 = v8;
  v16 = v14;
  [v11 updatePaymentFundingSourcesForAccountIdentifier:v12 force:1 completion:v15];

  objc_destroyWeak(&v19);
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_3;
  block[3] = &unk_1E801EFB0;
  objc_copyWeak(&v16, (a1 + 56));
  v12 = v6;
  v13 = v5;
  v10 = *(a1 + 40);
  v7 = v10;
  v15 = v10;
  v14 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
    }

    [WeakRetained _setAndFilterFundingSources:*(a1 + 40)];
    [WeakRetained _updateEditButtonIfNecessary];
    v3 = *(a1 + 56);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 48), *(a1 + 32) != 0);
    }
  }
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 1136);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_5;
  v13[3] = &unk_1E801F000;
  objc_copyWeak(&v16, (a1 + 40));
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v14 = v12;
  [v10 defaultAccountForFeature:2 completion:v13];

  objc_destroyWeak(&v16);
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_5(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_6;
  block[3] = &unk_1E8017838;
  objc_copyWeak(&v14, a1 + 6);
  v10 = v5;
  v11 = v6;
  v13 = a1[5];
  v12 = a1[4];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4 && !*(a1 + 40))
    {
      v8 = WeakRetained;
      objc_storeStrong(WeakRetained + 139, v4);
      v3 = v8;
      v7 = *(a1 + 56);
      if (!v7)
      {
        goto LABEL_9;
      }

      v6 = *(v7 + 16);
    }

    else
    {
      v5 = *(a1 + 56);
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = *(v5 + 16);
      v8 = v3;
    }

    v6();
    v3 = v8;
  }

LABEL_9:
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 1136);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_8;
  v13[3] = &unk_1E801F000;
  objc_copyWeak(&v16, (a1 + 40));
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v14 = v12;
  [v10 defaultAccountForFeature:5 completion:v13];

  objc_destroyWeak(&v16);
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_9;
  block[3] = &unk_1E8017838;
  objc_copyWeak(&v14, a1 + 6);
  v10 = v5;
  v11 = v6;
  v13 = a1[5];
  v12 = a1[4];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4 && !*(a1 + 40))
    {
      v8 = WeakRetained;
      objc_storeStrong(WeakRetained + 139, v4);
      v3 = v8;
      v7 = *(a1 + 56);
      if (!v7)
      {
        goto LABEL_9;
      }

      v6 = *(v7 + 16);
    }

    else
    {
      v5 = *(a1 + 56);
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = *(v5 + 16);
      v8 = v3;
    }

    v6();
    v3 = v8;
  }

LABEL_9:
}

void __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_11;
    block[3] = &unk_1E801A430;
    v4 = *(a1 + 32);
    v3 = v4;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __63__PKAccountBankAccountsViewController_preflightWithCompletion___block_invoke_11(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(a1 + 32);
  if (*(*(*(v2 + 8) + 8) + 40))
  {
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  else if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)_addBankAccountInformationViewController
{
  v3 = [(PKAccount *)self->_account type];
  if (v3 == 4)
  {
    v4 = [(PKAccount *)self->_account savingsDetails];
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = [(PKAccount *)self->_account creditDetails];
LABEL_5:
    v5 = v4;
    v6 = [v4 countryCode];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [objc_alloc(MEMORY[0x1E69B86A8]) initWithType:1];
  v8 = [[PKAddBankAccountInformationViewController alloc] initWithDelegate:self bankInformation:v7 accountCountryCode:v6 featureAccount:self->_account];
  [(PKAddBankAccountInformationViewController *)v8 setOfferKeychainPreFill:[(PKAccountBankAccountsViewController *)self _hasBankAccounts]^ 1];
  v9 = [[PKNavigationController alloc] initWithRootViewController:v8];
  [(PKNavigationController *)v9 setSupportedInterfaceOrientations:2];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)v9 setModalPresentationStyle:2];
  }

  return v9;
}

- (void)_presentAddBankAccount
{
  if ([(PKAccount *)self->_account stateReason]== 14)
  {
    v3 = PKLocalizedFeatureString();
    v4 = PKLocalizedFeatureString();
    v7 = PKDisplayableErrorCustom();

    v5 = PKAlertForDisplayableErrorWithHandlers(v7, 0, 0, 0);
    v6 = [(PKAccountBankAccountsViewController *)self navigationController];
    [v6 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v7 = [(PKAccountBankAccountsViewController *)self _addBankAccountInformationViewController];
    v5 = [(PKAccountBankAccountsViewController *)self navigationController];
    [v5 presentViewController:v7 animated:1 completion:0];
  }
}

- (void)_presentContactSupportWithSourceItem:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKAccount *)self->_account type];
  if (v5 == 1)
  {
    v7 = [(PKAccount *)self->_account associatedPassUniqueID];
    v11 = [MEMORY[0x1E69B8A58] sharedInstance];
    v24[0] = v7;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__PKAccountBankAccountsViewController__presentContactSupportWithSourceItem___block_invoke_2;
    v20[3] = &unk_1E801F078;
    v20[4] = self;
    v21 = v4;
    [v11 getPassesWithUniqueIdentifiers:v12 handler:v20];

    goto LABEL_9;
  }

  if (v5 == 4)
  {
    v6 = [(PKAccount *)self->_account savingsDetails];
    v7 = [v6 contactNumber];

    if (+[PKBusinessChatController deviceSupportsBusinessChat])
    {
      v8 = [[PKAccountSupportTopicsViewController alloc] initWithAccount:self->_account];
      v9 = [[PKNavigationController alloc] initWithRootViewController:v8];
      v10 = [(PKAccountBankAccountsViewController *)self navigationController];
      [v10 presentViewController:v9 animated:1 completion:0];

LABEL_8:
      goto LABEL_9;
    }

    if ([v7 length])
    {
      v13 = MEMORY[0x1E69DC650];
      v14 = PKLocalizedFeatureString();
      v8 = [v13 alertControllerWithTitle:v14 message:0 preferredStyle:1];

      v15 = MEMORY[0x1E69DC648];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __76__PKAccountBankAccountsViewController__presentContactSupportWithSourceItem___block_invoke;
      v22[3] = &unk_1E80112E8;
      v7 = v7;
      v23 = v7;
      v16 = [v15 actionWithTitle:v7 style:0 handler:v22];
      [(PKAccountSupportTopicsViewController *)v8 addAction:v16];

      v17 = MEMORY[0x1E69DC648];
      v18 = PKLocalizedString(&cfstr_Cancel.isa);
      v19 = [v17 actionWithTitle:v18 style:1 handler:0];
      [(PKAccountSupportTopicsViewController *)v8 addAction:v19];

      [(PKAccountBankAccountsViewController *)self presentViewController:v8 animated:1 completion:0];
      goto LABEL_8;
    }

LABEL_9:
  }
}

void __76__PKAccountBankAccountsViewController__presentContactSupportWithSourceItem___block_invoke()
{
  v0 = PKTelephoneURLFromPhoneNumber();
  PKOpenURL();
}

void __76__PKAccountBankAccountsViewController__presentContactSupportWithSourceItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    if (+[PKBusinessChatController deviceSupportsBusinessChat])
    {
      v4 = [[PKBusinessChatPassDetailsContext alloc] initWithPass:v3];
      v5 = objc_alloc_init(PKBusinessChatController);
      [(PKBusinessChatController *)v5 openBusinessChatWithContext:v4 completion:0];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__PKAccountBankAccountsViewController__presentContactSupportWithSourceItem___block_invoke_3;
      block[3] = &unk_1E8010A88;
      block[4] = *(a1 + 32);
      v7 = v3;
      v8 = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __76__PKAccountBankAccountsViewController__presentContactSupportWithSourceItem___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1200);
  if (!v2)
  {
    v3 = objc_alloc_init(PKSecureElementPassContactIssuerHelper);
    v4 = *(a1 + 32);
    v5 = *(v4 + 1200);
    *(v4 + 1200) = v3;

    [*(*(a1 + 32) + 1200) setDelegate:?];
    v6 = *(*(a1 + 32) + 1200);
    v7 = [*(a1 + 40) secureElementPass];
    [v6 setPass:v7];

    [*(*(a1 + 32) + 1200) setFeatureIdentifier:*(*(a1 + 32) + 1144)];
    v2 = *(*(a1 + 32) + 1200);
  }

  v8 = *(a1 + 48);

  return [v2 presentContactViewController:1 sourceItem:v8];
}

- (void)_presentLinkAccountForFundingSource:(id)a3
{
  v4 = a3;
  if (!self->_loadingLinkAccountFlow)
  {
    self->_loadingLinkAccountFlow = 1;
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v5 startAnimating];
    v6 = MEMORY[0x1E696AC88];
    v7 = [v4 identifier];
    v8 = [(PKAccountBankAccountsViewController *)self _indexPathForFundingSourceIdentifier:v7];
    v9 = [v6 indexPathForRow:1 inSection:{objc_msgSend(v8, "section")}];

    v10 = [(PKAccountBankAccountsViewController *)self tableView];
    v11 = [v10 cellForRowAtIndexPath:v9];

    [v11 setAccessoryView:v5];
    v12 = objc_alloc(MEMORY[0x1E69B8D48]);
    v13 = [MEMORY[0x1E69B8EF8] sharedService];
    v14 = [v12 initWithWebService:v13];

    v15 = [[PKApplyControllerConfiguration alloc] initWithSetupDelegate:self context:0 provisioningController:v14];
    [(PKApplyControllerConfiguration *)v15 setFeature:[(PKAccount *)self->_account feature]];
    [(PKApplyControllerConfiguration *)v15 setApplicationType:6];
    [(PKApplyControllerConfiguration *)v15 setVerificationType:2];
    [(PKApplyControllerConfiguration *)v15 setFundingSource:v4];
    [(PKApplyControllerConfiguration *)v15 setAccount:self->_account];
    v16 = [[PKApplyController alloc] initWithApplyConfiguration:v15];
    applyController = self->_applyController;
    self->_applyController = v16;

    v18 = self->_applyController;
    v19 = [(PKAccount *)self->_account applyServiceURL];
    [(PKApplyController *)v18 setApplyServiceURL:v19];

    objc_initWeak(&location, self);
    v20 = self->_applyController;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__PKAccountBankAccountsViewController__presentLinkAccountForFundingSource___block_invoke;
    v21[3] = &unk_1E801F0A0;
    objc_copyWeak(&v23, &location);
    v22 = v4;
    [(PKApplyController *)v20 nextViewControllerWithCompletion:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __75__PKAccountBankAccountsViewController__presentLinkAccountForFundingSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PKAccountBankAccountsViewController__presentLinkAccountForFundingSource___block_invoke_2;
  v9[3] = &unk_1E8014828;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __75__PKAccountBankAccountsViewController__presentLinkAccountForFundingSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    if (*(a1 + 32))
    {
      v3 = [[PKNavigationController alloc] initWithRootViewController:*(a1 + 32)];
    }

    else
    {
      v4 = *(a1 + 40);
      if (!v4)
      {
LABEL_7:
        v6 = MEMORY[0x1E696AC88];
        v7 = [*(a1 + 48) identifier];
        v8 = [v12 _indexPathForFundingSourceIdentifier:v7];
        v9 = [v6 indexPathForRow:1 inSection:{objc_msgSend(v8, "section")}];

        v10 = [v12 tableView];
        v11 = [v10 cellForRowAtIndexPath:v9];

        [v11 setAccessoryView:0];
        v12[1218] = 0;

        WeakRetained = v12;
        goto LABEL_8;
      }

      v3 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
    }

    v5 = v3;
    [v12 presentViewController:v3 animated:1 completion:0];

    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)_hasBankAccounts
{
  v3 = [(NSMutableArray *)self->_availableFundingSources count];
  v4 = [(NSMutableArray *)self->_unavailableFundingSourcesWithVerification count]+ v3;
  return v4 + [(NSMutableArray *)self->_unavailableFundingSourcesWithoutVerification count]!= 0;
}

- (void)_fetchAccountUserInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_loadingAccountUserInfo)
  {
    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }
  }

  else
  {
    self->_loadingAccountUserInfo = 1;
    [(PKSectionTableViewController *)self reloadData];
    objc_initWeak(&location, self);
    accountService = self->_accountService;
    v7 = [(PKAccount *)self->_account accountIdentifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__PKAccountBankAccountsViewController__fetchAccountUserInfo___block_invoke;
    v8[3] = &unk_1E801F0C8;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [(PKAccountService *)accountService userInfoForAccountIdentifier:v7 forceFetch:1 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __61__PKAccountBankAccountsViewController__fetchAccountUserInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PKAccountBankAccountsViewController__fetchAccountUserInfo___block_invoke_2;
  v9[3] = &unk_1E8019A28;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __61__PKAccountBankAccountsViewController__fetchAccountUserInfo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1217) = 0;
    v8 = WeakRetained;
    if (*(a1 + 32))
    {
      v4 = PKAccountDisplayableError();
      v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
      [v8 presentViewController:v5 animated:1 completion:0];
      v6 = *(a1 + 48);
      if (v6)
      {
        (*(v6 + 16))(v6, 0);
      }
    }

    else
    {
      objc_storeStrong(WeakRetained + 140, *(a1 + 40));
      v7 = *(a1 + 48);
      if (v7)
      {
        (*(v7 + 16))(v7, *(a1 + 40) != 0);
      }
    }

    [v8 reloadData];
    v3 = v8;
  }
}

- (id)_fundingSourceForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  v7 = [(PKAccountBankAccountsViewController *)self _sectionTypeForSection:v6];
  if (v7 == 2)
  {
    v8 = 1168;
LABEL_8:
    p_unavailableFundingSourcesWithVerification = (self + v8);
    if (v5 < [(NSMutableArray *)*p_unavailableFundingSourcesWithVerification count])
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    v8 = 1152;
    goto LABEL_8;
  }

  if (!v5)
  {
    v5 = v6 - 1;
    p_unavailableFundingSourcesWithVerification = &self->_unavailableFundingSourcesWithVerification;
LABEL_9:
    v10 = [(NSMutableArray *)*p_unavailableFundingSourcesWithVerification objectAtIndex:v5];
    goto LABEL_11;
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_indexPathForFundingSourceIdentifier:(id)a3
{
  v4 = a3;
  availableFundingSources = self->_availableFundingSources;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__PKAccountBankAccountsViewController__indexPathForFundingSourceIdentifier___block_invoke;
  v21[3] = &unk_1E801F0F0;
  v6 = v4;
  v22 = v6;
  v7 = [(NSMutableArray *)availableFundingSources indexOfObjectPassingTest:v21];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    unavailableFundingSourcesWithVerification = self->_unavailableFundingSourcesWithVerification;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__PKAccountBankAccountsViewController__indexPathForFundingSourceIdentifier___block_invoke_2;
    v19[3] = &unk_1E801F0F0;
    v9 = v6;
    v20 = v9;
    v10 = [(NSMutableArray *)unavailableFundingSourcesWithVerification indexOfObjectPassingTest:v19];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      unavailableFundingSourcesWithoutVerification = self->_unavailableFundingSourcesWithoutVerification;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __76__PKAccountBankAccountsViewController__indexPathForFundingSourceIdentifier___block_invoke_3;
      v17[3] = &unk_1E801F0F0;
      v18 = v9;
      v12 = [(NSMutableArray *)unavailableFundingSourcesWithoutVerification indexOfObjectPassingTest:v17];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = 0;
      }

      else
      {
        v14 = v12;
        v15 = [(NSMutableArray *)self->_unavailableFundingSourcesWithVerification count];
        v13 = [MEMORY[0x1E696AC88] indexPathForRow:v14 inSection:v15 + 1];
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v10 + 1];
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:0];
  }

  return v13;
}

uint64_t __76__PKAccountBankAccountsViewController__indexPathForFundingSourceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

uint64_t __76__PKAccountBankAccountsViewController__indexPathForFundingSourceIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

uint64_t __76__PKAccountBankAccountsViewController__indexPathForFundingSourceIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (unint64_t)_sectionTypeForSection:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 - 1 < [(NSMutableArray *)self->_unavailableFundingSourcesWithVerification count])
  {
    return 1;
  }

  return 2;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  if (self->_loadingFundingSources)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_unavailableFundingSourcesWithVerification count];
    if ([(NSMutableArray *)self->_unavailableFundingSourcesWithoutVerification count]|| [(NSMutableArray *)self->_unavailableFundingSourcesWithVerification count])
    {
      v5 = v6 + 2;
    }

    else
    {
      v5 = v6 + 1;
    }
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4];
  if (v5 == 2)
  {
    v7 = [(NSMutableArray *)self->_unavailableFundingSourcesWithVerification count];
    v8 = [(NSMutableArray *)self->_unavailableFundingSourcesWithoutVerification count];
    if (v8)
    {
      return v8 + 1;
    }

    else
    {
      return v7 != 0;
    }
  }

  else if (v5 == 1)
  {
    return 2;
  }

  else if (v5)
  {
    return 0;
  }

  else
  {
    return [(NSMutableArray *)self->_availableFundingSources count]+ 1;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKAccountBankAccountsViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [v7 section]);
  v9 = v8;
  if (!v8)
  {
    v10 = &OBJC_IVAR___PKAccountBankAccountsViewController__availableFundingSources;
LABEL_8:
    v11 = [*(&self->super.super.super.super.super.isa + *v10) count];
    if ([v7 row] < v11)
    {
LABEL_9:
      v12 = [(PKAccountBankAccountsViewController *)self _bankAccountCellForRowAtIndexPath:v7];
      goto LABEL_22;
    }

    if (v9 == 2)
    {
      v13 = PKLocalizedFeatureString();
      v14 = 0;
      v15 = MEMORY[0x1E69B9620];
      v16 = @"ContactSupportCell";
    }

    else
    {
      [(PKAccountBankAccountsViewController *)self _hasBankAccounts];
      v13 = PKLocalizedFeatureString();
      if (self->_loadingAccountUserInfo)
      {
        v14 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        [v14 startAnimating];
      }

      else
      {
        v14 = 0;
      }

      v16 = @"AddBankAccountCell";
      v15 = MEMORY[0x1E69B93E8];
    }

    goto LABEL_19;
  }

  if (v8 != 1)
  {
    if (v8 != 2)
    {
      v12 = 0;
      goto LABEL_22;
    }

    v10 = &OBJC_IVAR___PKAccountBankAccountsViewController__unavailableFundingSourcesWithoutVerification;
    goto LABEL_8;
  }

  [(NSMutableArray *)self->_unavailableFundingSourcesWithVerification count];
  if (![v7 row])
  {
    goto LABEL_9;
  }

  v13 = PKLocalizedFeatureString();
  v14 = 0;
  v15 = MEMORY[0x1E69B98F8];
  v16 = @"LinkAccountCell";
LABEL_19:
  v17 = *v15;
  v12 = [v6 dequeueReusableCellWithIdentifier:v16];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:v16];
    v18 = [v12 textLabel];
    v19 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v18 setTextColor:v19];
  }

  v20 = [v12 textLabel];
  v21 = [v12 detailTextLabel];
  [v20 setText:v13];
  [v20 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [v21 setText:0];
  [v21 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
  [v12 setAccessoryView:v14];
  [v12 setAccessibilityIdentifier:v17];

LABEL_22:

  return v12;
}

- (id)_bankAccountCellForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PKAccountBankAccountsViewController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"BankAccountCell"];

  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"BankAccountCell"];
  }

  v7 = [(PKAccountBankAccountsViewController *)self _fundingSourceForIndexPath:v4];
  if (![(NSMutableArray *)self->_deletingFundingSources containsObject:v7])
  {
    [v6 setAccessoryView:0];
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v8 startAnimating];
  [v6 setAccessoryView:v8];

  if (v6)
  {
LABEL_7:
    [(PKAccountBankAccountsViewController *)self _configureBankAccountCell:v6 withFundingSource:v7];
  }

LABEL_8:

  return v6;
}

- (void)_configureBankAccountCell:(id)a3 withFundingSource:(id)a4
{
  v19 = a3;
  v5 = [a4 bankAccountRepresentation];
  v6 = [v5 bankName];
  v7 = [v5 maskedAccountNumber];
  v8 = [v5 status];
  v9 = [v19 textLabel];
  v10 = [v19 detailTextLabel];
  [v9 setText:v6];
  [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [v10 setText:v7];
  [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
  if (PKPaymentSetupContextIsBridge())
  {
    v11 = PKBridgeAppearanceGetAppearanceSpecifier();
    v12 = v11;
    if (v8 == 2)
    {
      [v11 altTextColor];
    }

    else
    {
      [v11 textColor];
    }
    v13 = ;
    [v9 setTextColor:v13];

    v14 = PKBridgeAppearanceGetAppearanceSpecifier();
    v15 = [v14 altTextColor];
    [v10 setTextColor:v15];

    v16 = PKBridgeAppearanceGetAppearanceSpecifier();
    v17 = [v16 foregroundColor];
    [v19 setBackgroundColor:v17];
  }

  else
  {
    if (v8 == 2)
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v18 = ;
    [v9 setTextColor:v18];

    v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v10 setTextColor:v16];
  }

  [v19 setAccessibilityIdentifier:*MEMORY[0x1E69B9508]];
  [v19 pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC8E8];
  v9 = PKLocalizedFeatureString();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__PKAccountBankAccountsViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
  v17[3] = &unk_1E801BDA8;
  objc_copyWeak(&v19, &location);
  v10 = v7;
  v18 = v10;
  v11 = [v8 contextualActionWithStyle:1 title:v9 handler:v17];

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  [v11 setImage:v12];

  v13 = MEMORY[0x1E69DCFC0];
  v21[0] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v15 = [v13 configurationWithActions:v14];

  [v15 setPerformsFirstActionWithFullSwipe:0];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v15;
}

void __100__PKAccountBankAccountsViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didSelectDeleteBankAccountAtIndexPath:*(a1 + 32) withCompletionHandler:v7];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4]== 2)
  {
    v5 = [(NSMutableArray *)self->_unavailableFundingSourcesWithoutVerification count];
    if (v5)
    {
      v5 = PKLocalizedFeatureString();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4];
  switch(v6)
  {
    case 2uLL:
      if ([(PKAccount *)self->_account type]== 4)
      {
        v7 = [(NSMutableArray *)self->_unavailableFundingSourcesWithoutVerification count];
        if (!v7)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      break;
    case 1uLL:
      if ([(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4 + 1]== 2)
      {
        goto LABEL_11;
      }

      break;
    case 0uLL:
      if ([(PKAccount *)self->_account type]== 4)
      {
        if (([(PKAccount *)self->_associatedAccount isCoOwner]& 1) == 0)
        {
LABEL_11:
          v7 = PKLocalizedFeatureString();
          goto LABEL_16;
        }
      }

      else if ([(PKAccount *)self->_account type]== 1 && ([(PKAccount *)self->_account isCoOwner]& 1) == 0 && [(PKAccount *)self->_associatedAccount type]== 4)
      {
        goto LABEL_11;
      }

      break;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PKAccountBankAccountsViewController *)self tableView:v6 titleForHeaderInSection:a4];
  if ([v7 length] || (-[PKAccountBankAccountsViewController tableView:heightForHeaderInSection:](self, "tableView:heightForHeaderInSection:", v6, a4), v8 == *MEMORY[0x1E69DE3D0]))
  {
    v9 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    v9 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  return v9;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = [(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4];
  if (v6 != 1)
  {
    if (!v6 && [(PKAccount *)self->_account type]== 4 && [(PKAccount *)self->_associatedAccount isCoOwner])
    {
      v7 = PKLocalizedFeatureString();
      v8 = PKLocalizedFeatureString();
      v9 = objc_alloc_init(PKFooterHyperlinkView);
      v10 = [MEMORY[0x1E695DFF8] URLWithString:{@"https://support.apple.com/kb/HT213452#family", v7}];
      v11 = PKAttributedStringByAddingLinkToSubstring(v8, v7, v10);
      [(PKFooterHyperlinkView *)v9 setAttributedText:v11];

      v12 = &__block_literal_global_52;
      [(PKFooterHyperlinkView *)v9 setAction:&__block_literal_global_52];

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4 + 1]== 2)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v14 = objc_alloc(MEMORY[0x1E69DD250]);
  v9 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_8:

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4];
  if (v6 == 2)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  if (v6 != 1)
  {
    result = 16.0;
    if (v6)
    {
      return result;
    }

    return *MEMORY[0x1E69DE3D0];
  }

  v8 = [(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4 - 1];
  result = *MEMORY[0x1E69DE3D0];
  if (v8)
  {
    return 16.0;
  }

  return result;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = [(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4];
  if (v6 == 2)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  if (v6 != 1)
  {
    result = 0.0;
    if (v6)
    {
      return result;
    }

    return *MEMORY[0x1E69DE3D0];
  }

  v8 = [(PKAccountBankAccountsViewController *)self _sectionTypeForSection:a4 + 1];
  result = *MEMORY[0x1E69DE3D0];
  if (v8 != 2)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[PKAccountBankAccountsViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [v5 section]);
  if (v6 == 2)
  {
    v10 = [v5 row];
    v9 = v10 == [(NSMutableArray *)self->_unavailableFundingSourcesWithoutVerification count];
    goto LABEL_11;
  }

  if (v6 == 1)
  {
    if ([v5 row] == 1)
    {
      v8 = 1218;
      goto LABEL_8;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  v7 = [v5 row];
  if (v7 != [(NSMutableArray *)self->_availableFundingSources count])
  {
    goto LABEL_9;
  }

  v8 = 1217;
LABEL_8:
  v9 = *(&self->super.super.super.super.super.isa + v8) ^ 1;
LABEL_11:

  return v9 & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEditing])
  {
    [(PKAccountBankAccountsViewController *)self _toggleEditingMode];
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [v7 row];
  v9 = -[PKAccountBankAccountsViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [v7 section]);
  if (v9 == 2)
  {
    if (v8 != [(NSMutableArray *)self->_unavailableFundingSourcesWithoutVerification count])
    {
      goto LABEL_15;
    }

    v10 = [v6 cellForRowAtIndexPath:v7];
    [(PKAccountBankAccountsViewController *)self _presentContactSupportWithSourceItem:v10];
    goto LABEL_14;
  }

  if (v9 == 1)
  {
    if (v8 != 1)
    {
      goto LABEL_15;
    }

    v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v7, "section")}];
    v11 = [(PKAccountBankAccountsViewController *)self _fundingSourceForIndexPath:v10];
    [(PKAccountBankAccountsViewController *)self _presentLinkAccountForFundingSource:v11];

LABEL_14:
    goto LABEL_15;
  }

  if (!v9 && v8 == [(NSMutableArray *)self->_availableFundingSources count])
  {
    if (self->_accountFeatureIdentifier == 5 && !self->_userInfo)
    {
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__PKAccountBankAccountsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v12[3] = &unk_1E8011180;
      objc_copyWeak(&v13, &location);
      [(PKAccountBankAccountsViewController *)self _fetchAccountUserInfo:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PKAccountBankAccountsViewController *)self _presentAddBankAccount];
    }
  }

LABEL_15:
}

void __73__PKAccountBankAccountsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__PKAccountBankAccountsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v3[3] = &unk_1E80111A8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __73__PKAccountBankAccountsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained[140] savingsUserInfo];
    v4 = [v3 primaryUser];
    v5 = [v4 emailAddresses];
    v6 = [v5 firstObject];
    v7 = [v6 value];

    if (*(a1 + 40) == 1 && v7)
    {
      [v8 _presentAddBankAccount];
    }

    WeakRetained = v8;
  }
}

- (void)addBankAccountInformationViewController:(id)a3 didAddFundingSource:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKAccountBankAccountsViewController_addBankAccountInformationViewController_didAddFundingSource___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __99__PKAccountBankAccountsViewController_addBankAccountInformationViewController_didAddFundingSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [*(a1 + 32) fundingDetails];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      if ([v4 status] == 2)
      {
        v5 = [v4 verificationDetails];

        v6 = *(a1 + 32);
        if (v5)
        {
          v7 = 1160;
        }

        else
        {
          v7 = 1168;
        }

        v8 = *&v9[v7];
      }

      else
      {
        v8 = *(v9 + 144);
        v6 = *(a1 + 32);
      }

      [v8 addObject:v6];
      objc_storeStrong(v9 + 149, *(a1 + 32));
      [v9 reloadData];
      [v9 _updateEditButtonIfNecessary];
    }

    WeakRetained = v9;
  }
}

- (void)addBankAccountInformationViewControllerDidFinish:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKAccountBankAccountsViewController_addBankAccountInformationViewControllerDidFinish___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__PKAccountBankAccountsViewController_addBankAccountInformationViewControllerDidFinish___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) navigationController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__PKAccountBankAccountsViewController_addBankAccountInformationViewControllerDidFinish___block_invoke_2;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, &location);
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __88__PKAccountBankAccountsViewController_addBankAccountInformationViewControllerDidFinish___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[149] type] == 1)
    {
      v4 = [v3[149] fundingDetails];
    }

    else
    {
      v4 = 0;
    }

    if ([v4 status] == 2)
    {
      v5 = [v4 verificationDetails];

      if (!v5)
      {
        v6 = [*(*(a1 + 32) + 1120) savingsUserInfo];
        v7 = [v6 primaryUser];
        v8 = [v7 emailAddresses];
        v9 = [v8 firstObject];
        v10 = [v9 value];

        if (v10)
        {
          v11 = PKLocalizedFeatureString();
          v12 = PKLocalizedFeatureString();
          v13 = PKLocalizedFeatureString();
          v14 = PKLocalizedFeatureString();
          v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v12 preferredStyle:{1, v10}];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __88__PKAccountBankAccountsViewController_addBankAccountInformationViewControllerDidFinish___block_invoke_167;
          v18[3] = &unk_1E80112E8;
          v18[4] = *(a1 + 32);
          v16 = [MEMORY[0x1E69DC648] actionWithTitle:v13 style:0 handler:v18];
          [v15 addAction:v16];

          v17 = [MEMORY[0x1E69DC648] actionWithTitle:v14 style:0 handler:0];
          [v15 addAction:v17];

          [v3 presentViewController:v15 animated:1 completion:0];
        }

        else
        {
          v11 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Missing account user info email! Alert cannot be displayed", buf, 2u);
          }
        }
      }
    }
  }
}

- (void)addBankAccountInformationViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__PKAccountBankAccountsViewController_addBankAccountInformationViewController_didFailWithError___block_invoke;
  v10[3] = &unk_1E8011828;
  objc_copyWeak(&v13, &location);
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __96__PKAccountBankAccountsViewController_addBankAccountInformationViewController_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[149];
    WeakRetained[149] = 0;
    v6 = WeakRetained;

    v4 = PKAccountDisplayableError();
    v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
    [*(a1 + 40) presentViewController:v5 animated:1 completion:0];

    WeakRetained = v6;
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  [(PKAccountBankAccountsViewController *)self _reloadFundingSources];
  v4 = [(PKAccountBankAccountsViewController *)self presentedViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)didUpdatePaymentFundingSources:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKAccount *)self->_account accountIdentifier];
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v9 || !v8)
    {

      goto LABEL_9;
    }

    v11 = [v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKAccountBankAccountsViewController_didUpdatePaymentFundingSources_accountIdentifier___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v14, &location);
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
LABEL_9:
}

void __88__PKAccountBankAccountsViewController_didUpdatePaymentFundingSources_accountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setAndFilterFundingSources:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end