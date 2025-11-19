@interface PKPeerPaymentAssociatedAccountViewController
- (BOOL)shouldMapSection:(unint64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PKPeerPaymentAssociatedAccountViewController)initWithFamilyMember:(id)a3 familyCollection:(id)a4 account:(id)a5 context:(int64_t)a6;
- (id)_actionsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_balanceCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_defaultCellWithTextColor:(id)a3 forTableView:(id)a4;
- (id)_detailsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_disableCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_enableCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_linkCellWithText:(id)a3 color:(id)a4 forTableView:(id)a5;
- (id)_notificationTransactionsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_notificationsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_receiveRestrictionAnyoneCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_receiveRestrictionFamilyCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_receiveRestrictionsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_recurringPaymentsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_sendRestrictionAnyoneCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_sendRestrictionContactsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_sendRestrictionFamilyCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_sendRestrictionScreenTimeSettingsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_sendRestrictionsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_switchCellWithTextColor:(id)a3 forTableView:(id)a4;
- (id)_transactionsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)familyMemberTransactionViewController;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_actionsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4;
- (void)_addPreferencesUpdateWithRequest:(id)a3;
- (void)_applyDefaultStylingToCell:(id)a3 textLabelColor:(id)a4;
- (void)_detailsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4;
- (void)_disableCellSelectedForTableView:(id)a3 atIndexPath:(id)a4;
- (void)_executeNextPreferencesUpdateRequestIfPossible;
- (void)_loadRecurringPayments;
- (void)_modifyPeerPaymentAccountState:(unint64_t)a3 atIndexPath:(id)a4;
- (void)_notificationTransactionsSelectionHasChanged:(id)a3;
- (void)_peerPaymentAccountChanged:(id)a3;
- (void)_peerPaymentPreferencesChanged:(id)a3;
- (void)_presentPassworkPromptWithCompletion:(id)a3;
- (void)_presentPeerPaymentAddDebitFlow;
- (void)_receiveRestrictionsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4;
- (void)_recurringPaymentsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4;
- (void)_sendRestrictionsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4;
- (void)_updateCellLoadingState:(id)a3 indexPath:(id)a4;
- (void)_updatePeerPaymentAccountWithNewAccount:(id)a3;
- (void)_updatePreferencesFromPeerPaymentServiceAndReloadView;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation PKPeerPaymentAssociatedAccountViewController

- (PKPeerPaymentAssociatedAccountViewController)initWithFamilyMember:(id)a3 familyCollection:(id)a4 account:(id)a5 context:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v45.receiver = self;
  v45.super_class = PKPeerPaymentAssociatedAccountViewController;
  v14 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v45, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 8);
  v15 = v14;
  if (v14)
  {
    v14->_context = a6;
    objc_storeStrong(&v14->_familyMember, a3);
    objc_storeStrong(&v15->_familyCollection, a4);
    v16 = [MEMORY[0x1E69B9020] sharedService];
    peerPaymentWebSerivce = v15->_peerPaymentWebSerivce;
    v15->_peerPaymentWebSerivce = v16;

    v18 = [(PKPeerPaymentWebService *)v15->_peerPaymentWebSerivce peerPaymentService];
    peerPaymentService = v15->_peerPaymentService;
    v15->_peerPaymentService = v18;

    v20 = v13;
    if (!v13)
    {
      v20 = [(PKPeerPaymentService *)v15->_peerPaymentService account];
    }

    objc_storeStrong(&v15->_peerPaymentAccount, v20);
    if (!v13)
    {
    }

    v21 = [(PKPeerPaymentService *)v15->_peerPaymentService preferences];
    v22 = [v21 copy];
    preferences = v15->_preferences;
    v15->_preferences = v22;

    v24 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v15->_paymentService;
    v15->_paymentService = v24;

    [(PKPaymentService *)v15->_paymentService registerObserver:v15];
    v15->_detailViewStyle = 1;
    peerPaymentAccount = v15->_peerPaymentAccount;
    v27 = [v11 altDSID];
    v28 = [(PKPeerPaymentAccount *)peerPaymentAccount peerPaymentAccountWithAltDSID:v27];
    associatedAccount = v15->_associatedAccount;
    v15->_associatedAccount = v28;

    if (v15->_associatedAccount)
    {
      v30 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPeerPaymentAccount:v15->_associatedAccount];
      transactionSource = v15->_transactionSource;
      v15->_transactionSource = v30;
    }

    [(PKPeerPaymentAssociatedAccountViewController *)v15 _updatePeerPaymentAccountWithNewAccount:v15->_peerPaymentAccount];
    if ([(PKPeerPaymentAccount *)v15->_peerPaymentAccount supportsFamilySharing])
    {
      v32 = v15->_paymentService;
      v33 = [(PKTransactionSource *)v15->_transactionSource transactionSourceIdentifiers];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __102__PKPeerPaymentAssociatedAccountViewController_initWithFamilyMember_familyCollection_account_context___block_invoke;
      v43[3] = &unk_1E8011D28;
      v44 = v15;
      [(PKPaymentService *)v32 hasTransactionsForTransactionSourceIdentifiers:v33 completion:v43];

      p_super = &v44->super.super.super.super.super;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, p_super, OS_LOG_TYPE_DEFAULT, "Peer Payment family sharing feature not supported.", buf, 2u);
      }
    }

    if ([(PKPeerPaymentAccount *)v15->_peerPaymentAccount supportsRecurringPayments])
    {
      v35 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:0 context:1];
      transactionPresenter = v15->_transactionPresenter;
      v15->_transactionPresenter = v35;

      [(PKPeerPaymentAssociatedAccountViewController *)v15 _loadRecurringPayments];
    }

    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 addObserver:v15 selector:sel__peerPaymentAccountChanged_ name:*MEMORY[0x1E69BC360] object:v15->_peerPaymentService];

    v38 = [MEMORY[0x1E696AD88] defaultCenter];
    [v38 addObserver:v15 selector:sel__peerPaymentPreferencesChanged_ name:*MEMORY[0x1E69BC368] object:v15->_peerPaymentService];

    [(PKPeerPaymentService *)v15->_peerPaymentService registerObserver:v15];
    if (v15->_context == 3)
    {
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFam.isa);
    }

    else
    {
      [*(&v15->super.super.super.super.super.isa + v41) labelName];
    }
    v39 = ;
    [(PKPeerPaymentAssociatedAccountViewController *)v15 setTitle:v39];
  }

  return v15;
}

void __102__PKPeerPaymentAssociatedAccountViewController_initWithFamilyMember_familyCollection_account_context___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __102__PKPeerPaymentAssociatedAccountViewController_initWithFamilyMember_familyCollection_account_context___block_invoke_2;
  v3[3] = &unk_1E8013F80;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __102__PKPeerPaymentAssociatedAccountViewController_initWithFamilyMember_familyCollection_account_context___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1208) = *(a1 + 40);
  if ([*(a1 + 32) isViewLoaded])
  {
    v3 = [*(a1 + 32) tableView];
    v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [v3 reloadSections:v2 withRowAnimation:100];
  }
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKPeerPaymentAssociatedAccountViewController;
  [(PKSectionTableViewController *)&v3 dealloc];
}

- (id)familyMemberTransactionViewController
{
  v3 = [PKFamilyMemberTransactionsViewController alloc];
  familyMember = self->_familyMember;
  familyCollection = self->_familyCollection;
  transactionSource = self->_transactionSource;
  peerPaymentAccount = self->_peerPaymentAccount;
  peerPaymentWebSerivce = self->_peerPaymentWebSerivce;
  v9 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
  v10 = [(PKFamilyMemberTransactionsViewController *)v3 initWithFamilyMember:familyMember familyCollection:familyCollection transactionSource:transactionSource account:0 peerPaymentAccount:peerPaymentAccount peerPaymentWebService:peerPaymentWebSerivce detailViewStyle:1 paymentServiceDataProvider:v9 mode:1];

  return v10;
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  if (![(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsFamilySharing])
  {
    goto LABEL_20;
  }

  v5 = [(PKPeerPaymentAccount *)self->_associatedAccount isParticipantAccountLockedByOwner];
  v6 = v5;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
        LOBYTE(v7) = v5 ^ 1;
        return v7;
      }

      goto LABEL_16;
    }

    if (a3 == 6)
    {
LABEL_16:
      v8 = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
      v7 = [v8 isOrganizer] & (v6 ^ 1);
      goto LABEL_17;
    }

    LOBYTE(v7) = 0;
    if (a3 != 7)
    {
      return v7;
    }

    if (![(PKPeerPaymentAssociatedAccountViewController *)self shouldMapSection:6])
    {
      v8 = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
      v7 = [v8 isOrganizer] & v6;
LABEL_17:

      return v7;
    }

LABEL_20:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      goto LABEL_16;
    }

    if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsRecurringPayments])
    {
      return PKPaymentSetupContextIsBridge() ^ 1;
    }

    goto LABEL_20;
  }

  if (a3)
  {
    LOBYTE(v7) = a3 == 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentAssociatedAccountViewController;
  [(PKPeerPaymentAssociatedAccountViewController *)&v13 viewDidAppear:a3];
  if (([(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsFamilySharing]& 1) == 0)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Peer Payment family sharing feature not supported.", v12, 2u);
    }

    v5 = MEMORY[0x1E69DC650];
    v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea.isa);
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea_0.isa);
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedString(&cfstr_Ok.isa);
    v11 = [v9 actionWithTitle:v10 style:0 handler:0];

    [v8 addAction:v11];
    PKAccessibilityIDAlertSet(v8, *MEMORY[0x1E69B9778]);
    [(PKPeerPaymentAssociatedAccountViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_peerPaymentAccountChanged:(id)a3
{
  peerPaymentService = self->_peerPaymentService;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PKPeerPaymentAssociatedAccountViewController__peerPaymentAccountChanged___block_invoke;
  v4[3] = &unk_1E80140E8;
  v4[4] = self;
  [(PKPeerPaymentService *)peerPaymentService updateAccountWithCompletion:v4];
}

void __75__PKPeerPaymentAssociatedAccountViewController__peerPaymentAccountChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PKPeerPaymentAssociatedAccountViewController__peerPaymentAccountChanged___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __75__PKPeerPaymentAssociatedAccountViewController__peerPaymentAccountChanged___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updatePeerPaymentAccountWithNewAccount:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateSectionVisibilityAndReloadIfNecessaryForAllSections];
}

- (void)_peerPaymentPreferencesChanged:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPeerPaymentAssociatedAccountViewController__peerPaymentPreferencesChanged___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__PKPeerPaymentAssociatedAccountViewController__peerPaymentPreferencesChanged___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentAssociatedAccountViewController preferences changed", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (v3[149])
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Not updating associated account preferences since another preferences update is in flight", v4, 2u);
    }

    *(*(a1 + 32) + 1210) = 1;
  }

  else
  {
    [v3 _updatePreferencesFromPeerPaymentServiceAndReloadView];
  }
}

- (void)_updatePreferencesFromPeerPaymentServiceAndReloadView
{
  v3 = [(PKPeerPaymentService *)self->_peerPaymentService preferences];
  obj = [v3 copy];

  self->_preferencesChanged = 0;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_preferences, obj);
    [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForAllSections];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v5 > 3)
  {
    v8 = 1;
    if (v5 != 6)
    {
      v8 = v5 == 7;
    }

    v9 = 2;
    if (v5 != 4)
    {
      v9 = v5 == 5;
    }

    if (v5 <= 5)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        return [(NSArray *)self->_recurringPayments count]+ 1;
      }

      v6 = v5 == 3;
      v7 = 4;
      goto LABEL_14;
    }

    if (v5)
    {
      v6 = v5 == 1;
      v7 = 1;
LABEL_14:
      if (v6)
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    if (self->_hasPaymentTransactions)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  v9 = 0;
  if (v8 <= 3)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_20;
        }

        v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _actionsCellForTableView:v6 atIndexPath:v7];
      }

      else
      {
        v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _detailsCellForTableView:v6 atIndexPath:v7];
      }

      goto LABEL_19;
    }

    if (v8 == 2)
    {
      [(PKPeerPaymentAssociatedAccountViewController *)self _recurringPaymentsCellForTableView:v6 atIndexPath:v7];
    }

    else
    {
      [(PKPeerPaymentAssociatedAccountViewController *)self _sendRestrictionsCellForTableView:v6 atIndexPath:v7];
    }

    goto LABEL_9;
  }

  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      [(PKPeerPaymentAssociatedAccountViewController *)self _receiveRestrictionsCellForTableView:v6 atIndexPath:v7];
    }

    else
    {
      [(PKPeerPaymentAssociatedAccountViewController *)self _notificationsCellForTableView:v6 atIndexPath:v7];
    }

    v10 = LABEL_9:;
    goto LABEL_19;
  }

  if (v8 == 6)
  {
    v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _disableCellForTableView:v6 atIndexPath:v7];
  }

  else
  {
    if (v8 != 7)
    {
      goto LABEL_20;
    }

    v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _enableCellForTableView:v6 atIndexPath:v7];
  }

LABEL_19:
  v9 = v10;
LABEL_20:

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v6 section]);
  if (v7 <= 2)
  {
    if (v7)
    {
      v8 = v9;
      if (v7 == 1)
      {
        [(PKPeerPaymentAssociatedAccountViewController *)self _actionsCellSelectedForTableView:v9 atIndexPath:v6];
      }

      else
      {
        if (v7 != 2)
        {
          goto LABEL_18;
        }

        [(PKPeerPaymentAssociatedAccountViewController *)self _recurringPaymentsCellSelectedForTableView:v9 atIndexPath:v6];
      }
    }

    else
    {
      [(PKPeerPaymentAssociatedAccountViewController *)self _detailsCellSelectedForTableView:v9 atIndexPath:v6];
    }
  }

  else if (v7 > 5)
  {
    v8 = v9;
    if (v7 == 6)
    {
      [(PKPeerPaymentAssociatedAccountViewController *)self _disableCellSelectedForTableView:v9 atIndexPath:v6];
    }

    else
    {
      if (v7 != 7)
      {
        goto LABEL_18;
      }

      [(PKPeerPaymentAssociatedAccountViewController *)self _enableCellSelectedForTableView:v9 atIndexPath:v6];
    }
  }

  else
  {
    v8 = v9;
    if (v7 == 3)
    {
      [(PKPeerPaymentAssociatedAccountViewController *)self _sendRestrictionsCellSelectedForTableView:v9 atIndexPath:v6];
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_18;
      }

      [(PKPeerPaymentAssociatedAccountViewController *)self _receiveRestrictionsCellSelectedForTableView:v9 atIndexPath:v6];
    }
  }

  v8 = v9;
LABEL_18:
  [v8 deselectRowAtIndexPath:v6 animated:1];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  v9 = 0;
  if (v8 > 3)
  {
    if (v8 <= 5)
    {
      if (v8 == 4)
      {
        v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _receiveRestrictionsCellShouldHighlightForTableView:v6 atIndexPath:v7];
      }

      else
      {
        v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _notificationsCellShouldHighlightForTableView:v6 atIndexPath:v7];
      }

      goto LABEL_18;
    }

    if (v8 == 6)
    {
      v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _disableCellShouldHighlightForTableView:v6 atIndexPath:v7];
      goto LABEL_18;
    }

    if (v8 == 7)
    {
      v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _enableCellShouldHighlightForTableView:v6 atIndexPath:v7];
      goto LABEL_18;
    }
  }

  else
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _recurringPaymentsCellShouldHighlightForTableView:v6 atIndexPath:v7];
      }

      else
      {
        v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _sendRestrictionsCellShouldHighlightForTableView:v6 atIndexPath:v7];
      }

      goto LABEL_18;
    }

    if (!v8)
    {
      v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _detailsCellShouldHighlightForTableView:v6 atIndexPath:v7];
      goto LABEL_18;
    }

    if (v8 == 1)
    {
      v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _actionsCellShouldHighlightForTableView:v6 atIndexPath:v7];
LABEL_18:
      v9 = v10;
    }
  }

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  v6 = 0;
  if (v5 <= 3)
  {
    if (v5 == 2)
    {
      v9 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionHis.isa);
LABEL_11:
      v6 = v9;
      goto LABEL_12;
    }

    if (v5 != 3)
    {
      goto LABEL_12;
    }

    v7 = @"PEER_PAYMENT_ASSOCIATED_ACCOUNT_RESTRICTIONS_SECTION_TITLE";
LABEL_10:
    v9 = PKLocalizedPeerPaymentString(&v7->isa);
    goto LABEL_11;
  }

  if (v5 == 4)
  {
    v7 = @"PEER_PAYMENT_ASSOCIATED_ACCOUNT_RECEIVE_RESTRICTIONS_SECTION_TITLE";
    goto LABEL_10;
  }

  if (v5 == 5)
  {
    v8 = [(PKFamilyMember *)self->_familyMember firstName];
    v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_1.isa, &stru_1F3BD5BF0.isa, v8);
  }

LABEL_12:

  return v6;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v4 == 5)
  {
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_2.isa);
  }

  else if (v4 == 2)
  {
    v5 = PKLocalizedPeerPaymentRecurringString(&cfstr_FamilySettingF.isa);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/HT211325"];
    v5 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentAss_3.isa);
    v6 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentAss_4.isa, &stru_1F3BD5BF0.isa, v5);
    v7 = objc_alloc_init(PKFooterHyperlinkView);
    v8 = PKAttributedStringByAddingLinkToSubstring(v6, v5, v4);
    [(PKFooterHyperlinkView *)v7 setAttributedText:v8];

    [(PKFooterHyperlinkView *)v7 setAction:&__block_literal_global_47];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __81__PKPeerPaymentAssociatedAccountViewController_tableView_viewForFooterInSection___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return PKOpenURL();
  }

  return result;
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__PKPeerPaymentAssociatedAccountViewController_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __98__PKPeerPaymentAssociatedAccountViewController_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1160) transactionSourceIdentifiers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    if ((*(v4 + 1208) & 1) == 0)
    {
      *(v4 + 1208) = 1;
      v6 = [*(a1 + 32) tableView];
      v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
      [v6 reloadSections:v5 withRowAnimation:100];
    }
  }
}

- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111__PKPeerPaymentAssociatedAccountViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __111__PKPeerPaymentAssociatedAccountViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 1160) transactionSourceIdentifiers];
  if ([v6 containsObject:*(a1 + 40)])
  {
    v2 = *(*(a1 + 32) + 1208);

    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 1168);
      v5 = [*(v3 + 1160) transactionSourceIdentifiers];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __111__PKPeerPaymentAssociatedAccountViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke_2;
      v7[3] = &unk_1E8011D28;
      v7[4] = *(a1 + 32);
      [v4 hasTransactionsForTransactionSourceIdentifiers:v5 completion:v7];
    }
  }

  else
  {
  }
}

void __111__PKPeerPaymentAssociatedAccountViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke_2(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __111__PKPeerPaymentAssociatedAccountViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke_3;
  v2[3] = &unk_1E8013F80;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __111__PKPeerPaymentAssociatedAccountViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    *(*(a1 + 32) + 1208) = 0;
    v3 = [*(a1 + 32) tableView];
    v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [v3 reloadSections:v2 withRowAnimation:100];
  }
}

- (void)_detailsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4
{
  if ([a4 row] == 1)
  {
    v7 = [(PKPeerPaymentAssociatedAccountViewController *)self navigationController];
    v5 = [v7 pk_settings_useStateDrivenNavigation];
    v6 = [(PKPeerPaymentAssociatedAccountViewController *)self familyMemberTransactionViewController];
    if (v5)
    {
      [v7 pk_settings_pushViewController:v6];
    }

    else
    {
      [v7 pushViewController:v6 animated:1];
    }
  }
}

- (void)_recurringPaymentsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = objc_alloc(MEMORY[0x1E69B8F28]);
  v10 = [MEMORY[0x1E69B9020] sharedService];
  v11 = [v9 initWithPeerPaymentWebService:v10];

  v12 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount recurringPaymentsFeatureDescriptor];
  if (v8 >= [(NSArray *)self->_recurringPayments count])
  {
    v35 = 0;
    v36 = 0;
    v20 = [PKPeerPaymentActionController canPerformPeerPaymentAction:3 account:self->_peerPaymentAccount unableReason:&v36 displayableError:&v35];
    v13 = v35;
    if (v20)
    {
      v21 = [(PKFamilyMember *)self->_familyMember appleID];
      v22 = [[PKPeerPaymentRemoteMessagesComposer alloc] initWithPeerPaymentController:v11 presentingViewController:self actionType:2 sourceType:1];
      v23 = [[PKAmountKeypadViewController alloc] initWithRemoteMessagesComposer:v22 recipientAddress:v21 sendFlowType:2 familyCollection:self->_familyCollection];
      [(PKAmountKeypadViewController *)v23 setShowCancelButton:1];
      v24 = [[PKNavigationController alloc] initWithRootViewController:v23];
      [(PKNavigationController *)v24 setOverrideUserInterfaceStyle:2];
      v25 = [(PKPeerPaymentAssociatedAccountViewController *)self navigationController];
      [v25 presentViewController:v24 animated:1 completion:0];
    }

    else
    {
      objc_initWeak(&location, self);
      v26 = v36;
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __103__PKPeerPaymentAssociatedAccountViewController__recurringPaymentsCellSelectedForTableView_atIndexPath___block_invoke;
      v32 = &unk_1E8010998;
      objc_copyWeak(&v33, &location);
      v27 = [PKPeerPaymentActionController alertControllerForPeerPaymentActionUnableReason:v26 displayableError:v13 addCardActionHandler:&v29];
      v28 = [(PKPeerPaymentAssociatedAccountViewController *)self navigationController:v29];
      [v28 presentViewController:v27 animated:1 completion:0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v13 = [(PKPeerPaymentAssociatedAccountViewController *)self navigationController];
    v14 = [(NSArray *)self->_recurringPayments objectAtIndex:v8];
    v15 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
    v16 = [v14 recipientAddress];
    v17 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v15 initWithRecurringPayment:v14 recipientAddress:v16 mode:2 context:0 peerPaymentController:v11 remoteMessagesComposer:0];

    v18 = [v12 minimumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v17 setMinimumAmount:v18];

    v19 = [v12 maximumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v17 setMaximumAmount:v19];

    if ([v13 pk_settings_useStateDrivenNavigation])
    {
      [v13 pk_settings_pushViewController:v17];
    }

    else
    {
      [v13 pushViewController:v17 animated:1];
    }
  }
}

void __103__PKPeerPaymentAssociatedAccountViewController__recurringPaymentsCellSelectedForTableView_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentPeerPaymentAddDebitFlow];
}

- (void)_presentPeerPaymentAddDebitFlow
{
  v4 = [PKPeerPaymentActionController startProvisionToAddDebitWithNetworkAllowlist:0];
  v3 = [(PKPeerPaymentAssociatedAccountViewController *)self navigationController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

- (void)_sendRestrictionsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4
{
  familyMember = self->_familyMember;
  v6 = a4;
  v12 = [(PKFamilyMember *)familyMember altDSID];
  v7 = [v6 row];

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
LABEL_13:
        v10 = [PKPeerPaymentPreferencesUpdateRequest alloc];
        v11 = [(PKPeerPaymentPreferences *)self->_preferences copy];
        v9 = [(PKPeerPaymentPreferencesUpdateRequest *)v10 initWithUpdatedPreferences:v11 section:3];

        [(PKPeerPaymentAssociatedAccountViewController *)self _addPreferencesUpdateWithRequest:v9];
        goto LABEL_14;
      }

      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

LABEL_12:
    [(PKPeerPaymentPreferences *)self->_preferences addSendRestrictionType:v8 altDSID:v12];
    goto LABEL_13;
  }

  if (v7 == 2)
  {
    v8 = 3;
    goto LABEL_12;
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v9 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=SCREEN_TIME&path=COMMUNICATION_LIMITS"];
  PKOpenURL();
LABEL_14:

LABEL_15:
}

- (void)_receiveRestrictionsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4
{
  familyMember = self->_familyMember;
  v6 = a4;
  v12 = [(PKFamilyMember *)familyMember altDSID];
  v7 = [v6 row];

  switch(v7)
  {
    case 0:
      v8 = 1;
      goto LABEL_6;
    case 4:
      goto LABEL_8;
    case 1:
      v8 = 2;
LABEL_6:
      [(PKPeerPaymentPreferences *)self->_preferences addReceiveRestrictionType:v8 altDSID:v12];
      break;
  }

  v9 = [PKPeerPaymentPreferencesUpdateRequest alloc];
  v10 = [(PKPeerPaymentPreferences *)self->_preferences copy];
  v11 = [(PKPeerPaymentPreferencesUpdateRequest *)v9 initWithUpdatedPreferences:v10 section:4];

  [(PKPeerPaymentAssociatedAccountViewController *)self _addPreferencesUpdateWithRequest:v11];
LABEL_8:
}

- (void)_actionsCellSelectedForTableView:(id)a3 atIndexPath:(id)a4
{
  v9 = [(PKFamilyMember *)self->_familyMember appleID:a3];
  v5 = [MEMORY[0x1E696AB90] zero];
  v6 = [(PKPeerPaymentAccount *)self->_associatedAccount currentBalance];
  v7 = [v6 currency];

  v8 = PKPeerPaymentGetSendPaymentSensitiveURL();
  if (v8)
  {
    PKOpenURL();
  }
}

- (void)_disableCellSelectedForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69DC650];
  v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_5.isa);
  v8 = [(PKFamilyMember *)self->_familyMember firstName];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_6.isa, &stru_1F3BD5BF0.isa, v8);
  v10 = [v6 alertControllerWithTitle:v7 message:v9 preferredStyle:0];

  v11 = MEMORY[0x1E69DC648];
  v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_7.isa);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__PKPeerPaymentAssociatedAccountViewController__disableCellSelectedForTableView_atIndexPath___block_invoke;
  v18[3] = &unk_1E8011310;
  v18[4] = self;
  v19 = v5;
  v13 = v5;
  v14 = [v11 actionWithTitle:v12 style:2 handler:v18];

  [v14 setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
  [v10 addAction:v14];
  v15 = MEMORY[0x1E69DC648];
  v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_8.isa);
  v17 = [v15 actionWithTitle:v16 style:1 handler:0];

  [v17 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  [v10 addAction:v17];
  [(PKPeerPaymentAssociatedAccountViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)_detailsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if (v8 == 1)
  {
    v9 = [(PKPeerPaymentAssociatedAccountViewController *)self _transactionsCellForTableView:v6 atIndexPath:v7];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [(PKPeerPaymentAssociatedAccountViewController *)self _balanceCellForTableView:v6 atIndexPath:v7];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = [v7 row];
  v12 = MEMORY[0x1E69B9500];
  v13 = MEMORY[0x1E69B9D60];
  if (v11 != 1)
  {
    v13 = MEMORY[0x1E69B9D90];
  }

  if (v11)
  {
    v12 = v13;
  }

  PKAccessibilityIDCellSet(v10, *v12);

  return v10;
}

- (id)_balanceCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:0 forTableView:a3];
  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v7 indexPath:v6];

  v8 = [v7 textLabel];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_9.isa);
  [v8 setText:v9];

  v10 = [v7 detailTextLabel];
  v11 = [(PKPeerPaymentAccount *)self->_associatedAccount currentBalance];
  v12 = [v11 formattedStringValue];
  [v10 setText:v12];

  return v7;
}

- (id)_recurringPaymentsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if (v8 >= [(NSArray *)self->_recurringPayments count])
  {
    if ([(NSArray *)self->_recurringPayments count])
    {
      v14 = PKLocalizedPeerPaymentRecurringString(&cfstr_FamilySettingS.isa);
    }

    else
    {
      v16 = [(PKFamilyMember *)self->_familyMember firstName];
      v14 = PKLocalizedPeerPaymentRecurringString(&cfstr_FamilySettingS_0.isa, &stru_1F3BD5BF0.isa, v16);
    }

    v13 = [(PKPeerPaymentAssociatedAccountViewController *)self _linkCellWithText:v14 color:0 forTableView:v6];
    PKAccessibilityIDCellSet(v13, *MEMORY[0x1E69B9B30]);
    [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v13 indexPath:v7];
  }

  else
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPeerPaymentFamilyMemberViewControllerTransactionCell"];
    if (!v9)
    {
      v9 = [[PKPaymentTransactionTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKPeerPaymentFamilyMemberViewControllerTransactionCell"];
    }

    v10 = PKUIGetMinScreenWidthType();
    v11 = 4.0;
    if (v10 >= 2)
    {
      v11 = 7.0;
    }

    [(PKPaymentTransactionTableCell *)v9 setAdditionalInsets:0.0, v11, 0.0, v11];
    v12 = *MEMORY[0x1E69B9B40];
    v13 = v9;
    PKAccessibilityIDCellSet(v13, v12);
    v14 = [(NSArray *)self->_recurringPayments objectAtIndex:v8];
    v15 = PKPeerPaymentTransactionForRecurringPayment();
    [(PKPaymentTransactionCellController *)self->_transactionPresenter configureCell:v13 forTransaction:v15 transactionSource:self->_transactionSource familyMember:self->_familyMember account:0 detailStyle:self->_detailViewStyle deviceName:0 avatarViewDelegate:self];
  }

  return v13;
}

- (id)_transactionsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:0 forTableView:a3];
  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v7 indexPath:v6];

  v8 = [v7 textLabel];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_10.isa);
  [v8 setText:v9];

  [v7 setAccessoryType:1];

  return v7;
}

- (id)_sendRestrictionsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _sendRestrictionFamilyCellForTableView:v6 atIndexPath:v7];
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_11;
      }

      v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _sendRestrictionScreenTimeSettingsCellForTableView:v6 atIndexPath:v7];
    }
  }

  else if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_11;
    }

    v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _sendRestrictionContactsCellForTableView:v6 atIndexPath:v7];
  }

  else
  {
    v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _sendRestrictionAnyoneCellForTableView:v6 atIndexPath:v7];
  }

  v9 = v10;
LABEL_11:
  v11 = [v7 row];
  if (v11 > 3)
  {
    v12 = MEMORY[0x1E69B9D90];
  }

  else
  {
    v12 = qword_1E8014898[v11];
  }

  PKAccessibilityIDCellSet(v9, *v12);

  return v9;
}

- (id)_sendRestrictionAnyoneCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:0 forTableView:a3];
  v8 = [v7 textLabel];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_11.isa);
  [v8 setText:v9];

  preferences = self->_preferences;
  v11 = [(PKFamilyMember *)self->_familyMember altDSID];
  v12 = [(PKPeerPaymentPreferences *)preferences restrictionsForAltDSID:v11];

  if ([v12 sendRestrictionType] == 1)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v7 indexPath:v6];

  return v7;
}

- (id)_sendRestrictionContactsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:0 forTableView:a3];
  v8 = [v7 textLabel];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_12.isa);
  [v8 setText:v9];

  preferences = self->_preferences;
  v11 = [(PKFamilyMember *)self->_familyMember altDSID];
  v12 = [(PKPeerPaymentPreferences *)preferences restrictionsForAltDSID:v11];

  if ([v12 sendRestrictionType] == 2)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v7 indexPath:v6];

  return v7;
}

- (id)_sendRestrictionFamilyCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:0 forTableView:a3];
  v8 = [v7 textLabel];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_13.isa);
  [v8 setText:v9];

  preferences = self->_preferences;
  v11 = [(PKFamilyMember *)self->_familyMember altDSID];
  v12 = [(PKPeerPaymentPreferences *)preferences restrictionsForAltDSID:v11];

  if ([v12 sendRestrictionType] == 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v7 indexPath:v6];

  return v7;
}

- (id)_sendRestrictionScreenTimeSettingsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_14.isa);
  v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _linkCellWithText:v8 color:v9 forTableView:v7];

  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v10 indexPath:v6];

  return v10;
}

- (id)_receiveRestrictionsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if (v8 == 1)
  {
    v9 = [(PKPeerPaymentAssociatedAccountViewController *)self _receiveRestrictionFamilyCellForTableView:v6 atIndexPath:v7];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [(PKPeerPaymentAssociatedAccountViewController *)self _receiveRestrictionAnyoneCellForTableView:v6 atIndexPath:v7];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = [v7 row];
  v12 = MEMORY[0x1E69B9788];
  v13 = MEMORY[0x1E69B97C0];
  if (v11 != 1)
  {
    v13 = MEMORY[0x1E69B9D90];
  }

  if (v11)
  {
    v12 = v13;
  }

  PKAccessibilityIDCellSet(v10, *v12);

  return v10;
}

- (id)_receiveRestrictionAnyoneCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:0 forTableView:a3];
  v8 = [v7 textLabel];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_15.isa);
  [v8 setText:v9];

  preferences = self->_preferences;
  v11 = [(PKFamilyMember *)self->_familyMember altDSID];
  v12 = [(PKPeerPaymentPreferences *)preferences restrictionsForAltDSID:v11];

  if ([v12 receiveRestrictionType] == 1)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v7 indexPath:v6];

  return v7;
}

- (id)_receiveRestrictionFamilyCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:0 forTableView:a3];
  v8 = [v7 textLabel];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_16.isa);
  [v8 setText:v9];

  preferences = self->_preferences;
  v11 = [(PKFamilyMember *)self->_familyMember altDSID];
  v12 = [(PKPeerPaymentPreferences *)preferences restrictionsForAltDSID:v11];

  if ([v12 receiveRestrictionType] == 2)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v7 indexPath:v6];

  return v7;
}

- (id)_notificationsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(PKPeerPaymentAssociatedAccountViewController *)self _notificationTransactionsCellForTableView:v6 atIndexPath:v7];
  }

  return v8;
}

- (id)_notificationTransactionsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKPeerPaymentAssociatedAccountViewController *)self _switchCellWithTextColor:0 forTableView:a3];
  v8 = [v7 textLabel];
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_17.isa);
  [v8 setText:v9];

  [v7 setTarget:self action:sel__notificationTransactionsSelectionHasChanged_];
  preferences = self->_preferences;
  v11 = [(PKFamilyMember *)self->_familyMember altDSID];
  v12 = [(PKPeerPaymentPreferences *)preferences notificationWithType:1 altDSID:v11];

  [v7 setOn:{objc_msgSend(v12, "value")}];
  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v7 indexPath:v6];

  return v7;
}

- (id)_actionsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_18.isa);
  v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _linkCellWithText:v8 color:v9 forTableView:v7];

  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v10 indexPath:v6];
  PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B9C10]);

  return v10;
}

- (id)_disableCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_7.isa);
  v9 = [MEMORY[0x1E69DC888] systemRedColor];
  v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _linkCellWithText:v8 color:v9 forTableView:v7];

  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v10 indexPath:v6];
  if (self->_modifyingAccount)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v11 startAnimating];
    [v10 setAccessoryView:v11];
  }

  else
  {
    [v10 setAccessoryView:0];
  }

  PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B9910]);

  return v10;
}

- (id)_enableCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAss_19.isa);
  v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _linkCellWithText:v8 color:v9 forTableView:v7];

  [(PKPeerPaymentAssociatedAccountViewController *)self _updateCellLoadingState:v10 indexPath:v6];
  if (self->_modifyingAccount)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v11 startAnimating];
    [v10 setAccessoryView:v11];
  }

  else
  {
    [v10 setAccessoryView:0];
  }

  PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B9D98]);

  return v10;
}

- (id)_defaultCellWithTextColor:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"PKPeerPaymentFamilyMemberViewControllerDefaultCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKPeerPaymentFamilyMemberViewControllerDefaultCell"];
  }

  PKAccessibilityIDCellSet(v7, 0);
  [(PKPeerPaymentAssociatedAccountViewController *)self _applyDefaultStylingToCell:v7 textLabelColor:v6];

  return v7;
}

- (id)_switchCellWithTextColor:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"PKPeerPaymentFamilyMemberViewControllerSwitchCell"];
  if (!v7)
  {
    v7 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKPeerPaymentFamilyMemberViewControllerSwitchCell"];
  }

  [(PKPeerPaymentAssociatedAccountViewController *)self _applyDefaultStylingToCell:v7 textLabelColor:v6];

  return v7;
}

- (id)_linkCellWithText:(id)a3 color:(id)a4 forTableView:(id)a5
{
  if (a4)
  {
    v8 = a5;
    v9 = a3;
    v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:a4 forTableView:v8];
  }

  else
  {
    v11 = MEMORY[0x1E69DC888];
    v12 = a5;
    v13 = a3;
    v8 = [v11 systemBlueColor];
    v10 = [(PKPeerPaymentAssociatedAccountViewController *)self _defaultCellWithTextColor:v8 forTableView:v12];
  }

  v14 = [v10 textLabel];
  [v14 setText:a3];

  return v10;
}

- (void)_applyDefaultStylingToCell:(id)a3 textLabelColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = [v6 textLabel];
  [v10 setText:0];
  [v10 setTextColor:v5];

  v7 = [v6 detailTextLabel];
  [v7 setText:0];
  [v6 setAccessoryType:0];
  [v6 setSelectionStyle:3];
  [v6 setUserInteractionEnabled:1];
  v8 = [v6 textLabel];
  [v8 setEnabled:1];

  v9 = [v6 detailTextLabel];

  [v9 setEnabled:1];
}

- (void)_updateCellLoadingState:(id)a3 indexPath:(id)a4
{
  v8 = a3;
  [v8 setUserInteractionEnabled:!self->_modifyingAccount];
  v5 = [v8 textLabel];
  [v5 setEnabled:!self->_modifyingAccount];

  v6 = [v8 detailTextLabel];
  [v6 setEnabled:!self->_modifyingAccount];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v8 settingSwitch];
    [v7 setEnabled:!self->_modifyingAccount];
  }

  else
  {
    [v8 setAccessoryView:0];
  }
}

- (void)_notificationTransactionsSelectionHasChanged:(id)a3
{
  v8 = [(PKFamilyMember *)self->_familyMember altDSID];
  v4 = [(PKPeerPaymentPreferences *)self->_preferences notificationWithType:1 altDSID:v8];
  [v4 setValue:{objc_msgSend(v4, "value") ^ 1}];
  [(PKPeerPaymentPreferences *)self->_preferences didUpdateNotification:v4];
  v5 = [PKPeerPaymentPreferencesUpdateRequest alloc];
  v6 = [(PKPeerPaymentPreferences *)self->_preferences copy];
  v7 = [(PKPeerPaymentPreferencesUpdateRequest *)v5 initWithUpdatedPreferences:v6 section:5];

  [(PKPeerPaymentAssociatedAccountViewController *)self _addPreferencesUpdateWithRequest:v7];
}

- (void)_modifyPeerPaymentAccountState:(unint64_t)a3 atIndexPath:(id)a4
{
  if (!self->_modifyingAccount)
  {
    v6 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountStateActionFeatureDescriptor:a3];
    v7 = [v6 identifier];

    if (v7)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke;
      aBlock[3] = &unk_1E8010970;
      aBlock[4] = self;
      v8 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_2;
      v15[3] = &unk_1E80147B0;
      v15[4] = self;
      v16 = v7;
      v18 = a3;
      v9 = v8;
      v17 = v9;
      v10 = _Block_copy(v15);
      self->_modifyingAccount = 1;
      [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForAllSections];
      if (a3 - 2 >= 3 && a3)
      {
        if (a3 == 1)
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_7;
          v12[3] = &unk_1E80147D8;
          v12[4] = self;
          v13 = v9;
          v14 = v10;
          [(PKPeerPaymentAssociatedAccountViewController *)self _presentPassworkPromptWithCompletion:v12];
        }
      }

      else
      {
        v10[2](v10);
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Error: no feature identifier defined for associatedAccountStateActionFeatureDescriptor", buf, 2u);
      }
    }
  }
}

void __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B8F18]);
  v3 = [*(*(a1 + 32) + 1144) identifier];
  v4 = [v2 initWithAssociatedAccountIdentifier:v3];

  [v4 setFeatureIdentifier:*(a1 + 40)];
  v5 = PKPeerPaymentAccountStateToString();
  [v4 setValue:v5];

  v6 = *(*(a1 + 32) + 1120);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_3;
  v8[3] = &unk_1E8014788;
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v6 peerPaymentAssociatedAccountActionWithRequest:v4 completion:v8];
}

void __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_4;
  v10[3] = &unk_1E8014760;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = *(v8 + 1136);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_5;
    v12[3] = &unk_1E8014738;
    v12[4] = v8;
    v13 = v7;
    [v9 updateAssociatedAccountsWithCompletion:v12];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v2 = [MEMORY[0x1E69B8F28] displayableErrorForError:*(a1 + 40)];
    if (!*(a1 + 40))
    {
      v10 = v2;
      v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma.isa);
      v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_0.isa);
      v5 = PKDisplayableErrorCustom();

      v2 = v5;
    }

    v11 = v2;
    v6 = PKAlertForDisplayableErrorWithHandlers(v2, 0, 0, 0);
    [*(a1 + 48) presentViewController:v6 animated:1 completion:0];
  }
}

void __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_6;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _updatePeerPaymentAccountWithNewAccount:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v8 = *(a1 + 48);
LABEL_12:
    (*(v8 + 16))();
    goto LABEL_13;
  }

  v5 = [v3 domain];
  v6 = *MEMORY[0x1E698DB28];
  if ([v5 isEqual:*MEMORY[0x1E698DB28]])
  {
    v7 = [v4 code];

    if (v7 == -7003)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v9 = [v4 domain];
  if (![v9 isEqual:v6])
  {

    goto LABEL_11;
  }

  v10 = [v4 code];

  if (v10 != -7005)
  {
LABEL_11:
    v8 = *(a1 + 40);
    goto LABEL_12;
  }

  v11 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
  v12 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v12 preferredStyle:1];
  v14 = MEMORY[0x1E69DC648];
  v15 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__PKPeerPaymentAssociatedAccountViewController__modifyPeerPaymentAccountState_atIndexPath___block_invoke_8;
  v17[3] = &unk_1E8011248;
  v18 = *(a1 + 40);
  v16 = [v14 actionWithTitle:v15 style:1 handler:v17];
  [v13 addAction:v16];

  PKAccessibilityIDAlertSet(v13, *MEMORY[0x1E69B9778]);
  [*(a1 + 32) presentViewController:v13 animated:0 completion:0];

LABEL_13:
}

- (void)_presentPassworkPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentWebService *)self->_peerPaymentWebSerivce _appleAccountInformation];
  v6 = objc_alloc_init(MEMORY[0x1E698DE80]);
  [v6 setPresentingViewController:self];
  v7 = [v5 appleID];
  [v6 setUsername:v7];

  v8 = [v5 aaAlternateDSID];
  [v6 setAltDSID:v8];

  [v6 setIsUsernameEditable:0];
  [v6 setShouldPromptForPasswordOnly:1];
  [v6 setAuthenticationType:2];
  v9 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PKPeerPaymentAssociatedAccountViewController__presentPassworkPromptWithCompletion___block_invoke;
  v11[3] = &unk_1E8014800;
  v12 = v4;
  v10 = v4;
  [v9 authenticateWithContext:v6 completion:v11];
}

void __85__PKPeerPaymentAssociatedAccountViewController__presentPassworkPromptWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPeerPaymentAssociatedAccountViewController__presentPassworkPromptWithCompletion___block_invoke_2;
  v7[3] = &unk_1E8010E20;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __85__PKPeerPaymentAssociatedAccountViewController__presentPassworkPromptWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_updatePeerPaymentAccountWithNewAccount:(id)a3
{
  objc_storeStrong(&self->_peerPaymentAccount, a3);
  v11 = a3;
  peerPaymentAccount = self->_peerPaymentAccount;
  v6 = [(PKFamilyMember *)self->_familyMember altDSID];
  v7 = [(PKPeerPaymentAccount *)peerPaymentAccount peerPaymentAccountWithAltDSID:v6];
  associatedAccount = self->_associatedAccount;
  self->_associatedAccount = v7;

  v9 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPeerPaymentAccount:self->_associatedAccount];
  transactionSource = self->_transactionSource;
  self->_transactionSource = v9;
}

- (void)_addPreferencesUpdateWithRequest:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pendingPreferencesUpdateRequest = self->_pendingPreferencesUpdateRequest;
  if (pendingPreferencesUpdateRequest)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = pendingPreferencesUpdateRequest;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Peer Payment Associated Account preferences request coalesced %@ onto pending request %@", &v10, 0x16u);
    }

    [(PKPeerPaymentPreferencesUpdateRequest *)self->_pendingPreferencesUpdateRequest coalesceWithRequest:v5];
  }

  else
  {
    objc_storeStrong(&self->_pendingPreferencesUpdateRequest, a3);
    v7 = PKLogFacilityTypeGetObject();
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Peer Payment Associated Account preferences request queued %@", &v10, 0xCu);
  }

  v8 = [v5 sections];
  v9 = [v8 allObjects];
  [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForSections:v9];

  [(PKPeerPaymentAssociatedAccountViewController *)self _executeNextPreferencesUpdateRequestIfPossible];
}

- (void)_executeNextPreferencesUpdateRequestIfPossible
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_currentPreferencesUpdateRequest)
  {
    objc_storeStrong(&self->_currentPreferencesUpdateRequest, self->_pendingPreferencesUpdateRequest);
    if (self->_currentPreferencesUpdateRequest && (pendingPreferencesUpdateRequest = self->_pendingPreferencesUpdateRequest, self->_pendingPreferencesUpdateRequest = 0, pendingPreferencesUpdateRequest, (v4 = self->_currentPreferencesUpdateRequest) != 0))
    {
      v5 = v4;
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Peer Payment Associated Account preferences request starting %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      peerPaymentService = self->_peerPaymentService;
      v8 = [(PKPeerPaymentPreferencesUpdateRequest *)v5 updatedPreferences];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __94__PKPeerPaymentAssociatedAccountViewController__executeNextPreferencesUpdateRequestIfPossible__block_invoke;
      v11[3] = &unk_1E8014850;
      objc_copyWeak(&v13, buf);
      v9 = v5;
      v12 = v9;
      [(PKPeerPaymentService *)peerPaymentService setPreferences:v8 completion:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    else if (self->_preferencesChanged)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Updating preferences from peer payment since since this is the last associated accounts preference update request.", buf, 2u);
      }

      [(PKPeerPaymentAssociatedAccountViewController *)self _updatePreferencesFromPeerPaymentServiceAndReloadView];
    }
  }
}

void __94__PKPeerPaymentAssociatedAccountViewController__executeNextPreferencesUpdateRequestIfPossible__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__PKPeerPaymentAssociatedAccountViewController__executeNextPreferencesUpdateRequestIfPossible__block_invoke_2;
  v9[3] = &unk_1E8014828;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __94__PKPeerPaymentAssociatedAccountViewController__executeNextPreferencesUpdateRequestIfPossible__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Peer Payment Associated Account preferences request completed %@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error updating peer payment preferences for associated account %@", buf, 0xCu);
      }

      objc_storeStrong(WeakRetained + 144, *(a1 + 48));
      v6 = [*(a1 + 32) sections];
      v7 = [v6 allObjects];
      [WeakRetained updateSectionVisibilityAndReloadIfNecessaryForSections:v7];

      v8 = [WeakRetained[138] firstName];
      v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr.isa);
      v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_0.isa, &stru_1F3BD5BF0.isa, v8);
      v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
      v12 = MEMORY[0x1E69DC648];
      v13 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v14 = [v12 actionWithTitle:v13 style:0 handler:0];
      [v11 addAction:v14];

      v15 = [WeakRetained navigationController];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94__PKPeerPaymentAssociatedAccountViewController__executeNextPreferencesUpdateRequestIfPossible__block_invoke_236;
      v17[3] = &unk_1E8010970;
      v17[4] = WeakRetained;
      [v15 presentViewController:v11 animated:1 completion:v17];
    }

    else
    {
      v16 = WeakRetained[149];
      WeakRetained[149] = 0;

      [WeakRetained _executeNextPreferencesUpdateRequestIfPossible];
    }
  }
}

uint64_t __94__PKPeerPaymentAssociatedAccountViewController__executeNextPreferencesUpdateRequestIfPossible__block_invoke_236(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1192);
  *(v2 + 1192) = 0;

  v4 = *(a1 + 32);

  return [v4 _executeNextPreferencesUpdateRequestIfPossible];
}

- (void)_loadRecurringPayments
{
  peerPaymentService = self->_peerPaymentService;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__PKPeerPaymentAssociatedAccountViewController__loadRecurringPayments__block_invoke;
  v3[3] = &unk_1E8014878;
  v3[4] = self;
  [(PKPeerPaymentService *)peerPaymentService recurringPaymentsWithCompletion:v3];
}

void __70__PKPeerPaymentAssociatedAccountViewController__loadRecurringPayments__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = a1;
  v5 = [*(*(a1 + 32) + 1104) altDSID];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 recipientAltDSID];
        v13 = v5;
        v14 = v13;
        if (v12 == v13)
        {

LABEL_12:
          [v4 addObject:v11];
          continue;
        }

        if (v5 && v12)
        {
          v15 = [v12 isEqualToString:v13];

          if (v15)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPeerPaymentAssociatedAccountViewController__loadRecurringPayments__block_invoke_2;
  block[3] = &unk_1E8010A10;
  block[4] = *(v17 + 32);
  v19 = v4;
  v16 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __70__PKPeerPaymentAssociatedAccountViewController__loadRecurringPayments__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1224);
  *(v3 + 1224) = v2;

  if ([*(a1 + 32) isViewLoaded])
  {
    v6 = [*(a1 + 32) tableView];
    v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:2];
    [v6 reloadSections:v5 withRowAnimation:100];
  }
}

@end