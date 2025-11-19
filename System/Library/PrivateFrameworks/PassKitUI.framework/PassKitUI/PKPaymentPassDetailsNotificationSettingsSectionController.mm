@interface PKPaymentPassDetailsNotificationSettingsSectionController
+ (BOOL)_showsTransactionHistorySwitchForPass:(id)a3 peerPaymentAccount:(id)a4 bankConnectAccount:(id)a5 account:(id)a6;
+ (BOOL)canShowSectionforPass:(id)a3 dataProvider:(id)a4 peerPaymentAccount:(id)a5 bankConnectAccount:(id)a6 account:(id)a7 transactionSourceCollection:(id)a8 notificationAuthorizationStatus:(int64_t)a9;
+ (id)_updatedPeerPaymentAccountForPeerPaymentAccount:(id)a3 pass:(id)a4;
+ (int64_t)_countOfRowsForPass:(id)a3 peerPaymentAccount:(id)a4 bankConnectAccount:(id)a5 account:(id)a6 notificationAuthorizationStatus:(int64_t)a7;
- (BOOL)_shouldShowBankConnectData;
- (PKPaymentPassDetailsNotificationSettingsSectionController)initWithPass:(id)a3 peerPaymentAccount:(id)a4 bankConnectAccount:(id)a5 account:(id)a6 paymentDataProvider:(id)a7 transactionSourceCollection:(id)a8 detailViewStyle:(int64_t)a9 delegate:(id)a10;
- (PKPaymentPassDetailsNotificationSettingsSectionControllerDelegate)delegate;
- (id)_accountServiceNotificationsSwitchCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_allowNotificationsCellForTableView:(id)a3;
- (id)_cellForType:(int64_t)a3;
- (id)_indexPathForRowType:(int64_t)a3;
- (id)_peerPaymentNotificationsSwitchCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_transactionsSwitchCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)titleForFooterInSectionIdentifier:(id)a3;
- (id)titleForHeaderInSectionIdentifier:(id)a3;
- (int64_t)_countOfRows;
- (unint64_t)_accountFeature;
- (void)_dailyCashSwitchChanged:(id)a3;
- (void)_notificationSwitchChanged:(id)a3;
- (void)_passSettingsChanged:(id)a3;
- (void)_promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler:(id)a3;
- (void)_transactionsSwitchChanged:(id)a3;
- (void)dealloc;
- (void)fetchAuthorizationStatusWithCompletion:(id)a3;
- (void)setTransactionsEnabled:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPaymentPassDetailsNotificationSettingsSectionController

- (PKPaymentPassDetailsNotificationSettingsSectionController)initWithPass:(id)a3 peerPaymentAccount:(id)a4 bankConnectAccount:(id)a5 account:(id)a6 paymentDataProvider:(id)a7 transactionSourceCollection:(id)a8 detailViewStyle:(int64_t)a9 delegate:(id)a10
{
  v17 = a3;
  v18 = a4;
  obj = a5;
  v19 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v20 = a10;
  v35.receiver = self;
  v35.super_class = PKPaymentPassDetailsNotificationSettingsSectionController;
  v21 = [(PKPaymentPassDetailSectionController *)&v35 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_pass, a3);
    v23 = [(PKPaymentPass *)v22->_pass devicePrimaryPaymentApplication];
    paymentApplication = v22->_paymentApplication;
    v22->_paymentApplication = v23;

    v25 = [objc_opt_class() _updatedPeerPaymentAccountForPeerPaymentAccount:v18 pass:v17];

    if (v25)
    {
      objc_storeStrong(&v22->_peerPaymentAccount, a4);
    }

    objc_storeStrong(&v22->_paymentDataProvider, a7);
    objc_storeStrong(&v22->_transactionSourceCollection, a8);
    objc_storeStrong(&v22->_account, a6);
    v22->_detailViewStyle = a9;
    objc_storeWeak(&v22->_delegate, v20);
    if ([(PKPaymentPassDetailsNotificationSettingsSectionController *)v22 _shouldShowBankConnectData])
    {
      objc_storeStrong(&v22->_bankConnectAccount, obj);
    }

    objc_initWeak(&location, v22);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __193__PKPaymentPassDetailsNotificationSettingsSectionController_initWithPass_peerPaymentAccount_bankConnectAccount_account_paymentDataProvider_transactionSourceCollection_detailViewStyle_delegate___block_invoke;
    v32[3] = &unk_1E801A1E8;
    objc_copyWeak(&v33, &location);
    [(PKPaymentPassDetailsNotificationSettingsSectionController *)v22 fetchAuthorizationStatusWithCompletion:v32];
    PKObservePassSettingsChanged();
    v26 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v26 addObserver:v22 selector:sel__passSettingsChanged_ name:*MEMORY[0x1E69BBBF0] object:0];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v22;
}

void __193__PKPaymentPassDetailsNotificationSettingsSectionController_initWithPass_peerPaymentAccount_bankConnectAccount_account_paymentDataProvider_transactionSourceCollection_detailViewStyle_delegate___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __193__PKPaymentPassDetailsNotificationSettingsSectionController_initWithPass_peerPaymentAccount_bankConnectAccount_account_paymentDataProvider_transactionSourceCollection_detailViewStyle_delegate___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __193__PKPaymentPassDetailsNotificationSettingsSectionController_initWithPass_peerPaymentAccount_bankConnectAccount_account_paymentDataProvider_transactionSourceCollection_detailViewStyle_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 17);
    [v2 reloadSectionIdentifier:@"NotificationsSectionIdentifier"];

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  PKUnregisterPassSettingsChangedObserver();
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69BBBF0] object:0];

  v4.receiver = self;
  v4.super_class = PKPaymentPassDetailsNotificationSettingsSectionController;
  [(PKPaymentPassDetailsNotificationSettingsSectionController *)&v4 dealloc];
}

- (void)fetchAuthorizationStatusWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x1E69B9328] sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__PKPaymentPassDetailsNotificationSettingsSectionController_fetchAuthorizationStatusWithCompletion___block_invoke;
  v7[3] = &unk_1E801B510;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 authorizationStatusWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __100__PKPaymentPassDetailsNotificationSettingsSectionController_fetchAuthorizationStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__PKPaymentPassDetailsNotificationSettingsSectionController_fetchAuthorizationStatusWithCompletion___block_invoke_2;
    block[3] = &unk_1E801B4E8;
    block[4] = WeakRetained;
    v8 = a2;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void *__100__PKPaymentPassDetailsNotificationSettingsSectionController_fetchAuthorizationStatusWithCompletion___block_invoke_2(void *result)
{
  *(result[4] + 128) = result[6];
  v1 = result[5];
  if (v1)
  {
    return (*(v1 + 16))(result[5], *(result[4] + 128));
  }

  return result;
}

- (void)setTransactionsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _cellForType:0];
  v4 = [v5 settingSwitch];
  [v4 setOn:v3];
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"NotificationsSectionIdentifier";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment]|| ![(PKPaymentPassDetailsNotificationSettingsSectionController *)self _shouldMapSection])
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (PKEqualObjects())
  {
    if (self->_peerPaymentAccount)
    {
      v9 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _peerPaymentNotificationsSwitchCellForIndexPath:v8 tableView:v7];
    }

    else
    {
      v11 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      v12 = [v11 length];

      if (v12)
      {
        [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _accountServiceNotificationsSwitchCellForIndexPath:v8 tableView:v7];
      }

      else
      {
        [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _transactionsSwitchCellForIndexPath:v8 tableView:v7];
      }
      v9 = ;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_indexPathForRowType:(int64_t)a3
{
  peerPaymentAccount = self->_peerPaymentAccount;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = a3 != 0;
  if (a3)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 1)
  {
    v5 = 0;
    v6 = 1;
  }

  if (a3 == 2)
  {
    v5 = 0;
    v6 = 2;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (peerPaymentAccount)
  {
    v7 = a3 != 0;
  }

  else
  {
    v7 = v5;
  }

  if (peerPaymentAccount)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained indexOfSectionIdentifier:@"NotificationsSectionIdentifier"];

  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:v10];
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  if (PKEqualObjects())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didSelectEditNotificationSettings:self];
  }
}

- (id)titleForHeaderInSectionIdentifier:(id)a3
{
  if (self->_peerPaymentAccount)
  {
    v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_0.isa);
  }

  else
  {
    v5 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
    v6 = [v5 length];

    if (v6)
    {
      [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _accountFeature];
      PKLocalizedFeatureString();
    }

    else
    {
      PKLocalizedPaymentString(&cfstr_TransactionsHe.isa);
    }
    v3 = ;
  }

  return v3;
}

- (id)titleForFooterInSectionIdentifier:(id)a3
{
  if ([objc_opt_class() _showsTransactionHistorySwitchForPass:self->_pass peerPaymentAccount:self->_peerPaymentAccount bankConnectAccount:self->_bankConnectAccount account:self->_account])
  {
    v4 = [(PKPaymentPass *)self->_pass organizationName];
    v5 = PKLocalizedPaymentString(&cfstr_TransactionsSe_0.isa, &stru_1F3BD5BF0.isa, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_countOfRows
{
  v3 = objc_opt_class();
  pass = self->_pass;
  peerPaymentAccount = self->_peerPaymentAccount;
  bankConnectAccount = self->_bankConnectAccount;
  account = self->_account;
  notificationAuthorizationStatus = self->_notificationAuthorizationStatus;

  return [v3 _countOfRowsForPass:pass peerPaymentAccount:peerPaymentAccount bankConnectAccount:bankConnectAccount account:account notificationAuthorizationStatus:notificationAuthorizationStatus];
}

- (unint64_t)_accountFeature
{
  result = [(PKAccount *)self->_account feature];
  if (!result)
  {
    pass = self->_pass;

    return [(PKPaymentPass *)pass associatedAccountFeatureIdentifier];
  }

  return result;
}

+ (BOOL)_showsTransactionHistorySwitchForPass:(id)a3 peerPaymentAccount:(id)a4 bankConnectAccount:(id)a5 account:(id)a6
{
  v9 = a3;
  if ([v9 supportsFPANNotifications])
  {
    if (a4 | a6)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v10 = a5 == 0;
    goto LABEL_8;
  }

  v11 = [v9 supportsDPANNotifications];
  v10 = 0;
  if (!a6 && !a4 && (v11 & 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (id)_peerPaymentNotificationsSwitchCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 dequeueReusableCellWithIdentifier:@"NotificationsInfoCell"];
  if (self->_notificationAuthorizationStatus == 1)
  {
    v9 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _allowNotificationsCellForTableView:v7];
LABEL_9:
    v12 = v9;

    v8 = v12;
    goto LABEL_10;
  }

  if (![v6 row] && !v8)
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_1.isa);
    v10 = [(PKPaymentPass *)self->_pass settings];
    if (PKStoreDemoModeEnabled())
    {
      v11 = 0;
    }

    else
    {
      v11 = PKUIOnlyDemoModeEnabled() ^ 1;
    }

    v9 = [(PKPaymentPassDetailSectionController *)self settingsTableCellWithTitle:v8 action:sel__transactionsSwitchChanged_ setOn:(v10 >> 3) & 1 enabled:v11];
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (id)_accountServiceNotificationsSwitchCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"NotificationsInfoCell"];
  v9 = [v7 row];

  if (v9 == 2)
  {
    if (self->_notificationAuthorizationStatus == 1)
    {
      goto LABEL_11;
    }

    if (v8)
    {
      goto LABEL_22;
    }

    [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _accountFeature];
    v8 = PKLocalizedFeatureString();
    v12 = sel__notificationSwitchChanged_;
    v13 = ([(PKPaymentPass *)self->_pass settings]& 0x80) == 0;
LABEL_14:
    v15 = v13;
    v16 = self;
    v17 = v8;
    v18 = v12;
    v11 = 1;
LABEL_20:
    v14 = [(PKPaymentPassDetailSectionController *)v16 settingsTableCellWithTitle:v17 action:v18 setOn:v15 enabled:v11];
    goto LABEL_21;
  }

  if (v9 == 1)
  {
    if (v8)
    {
      goto LABEL_22;
    }

    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_2.isa);
    v12 = sel__dailyCashSwitchChanged_;
    v13 = ([(PKPaymentPass *)self->_pass settings]& 0x400) == 0;
    goto LABEL_14;
  }

  if (v9)
  {
    goto LABEL_22;
  }

  if (self->_notificationAuthorizationStatus != 1)
  {
    if (v8)
    {
      goto LABEL_22;
    }

    [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _accountFeature];
    v8 = PKLocalizedFeatureString();
    v10 = [(PKPaymentPass *)self->_pass settings];
    if (PKStoreDemoModeEnabled())
    {
      v11 = 0;
    }

    else
    {
      v11 = PKUIOnlyDemoModeEnabled() ^ 1;
    }

    v15 = (v10 >> 3) & 1;
    v16 = self;
    v17 = v8;
    v18 = sel__transactionsSwitchChanged_;
    goto LABEL_20;
  }

LABEL_11:
  v14 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _allowNotificationsCellForTableView:v6];
LABEL_21:
  v19 = v14;

  v8 = v19;
LABEL_22:

  return v8;
}

- (id)_transactionsSwitchCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 dequeueReusableCellWithIdentifier:@"NotificationsInfoCell"];
  if ([objc_opt_class() _showsTransactionHistorySwitchForPass:self->_pass peerPaymentAccount:self->_peerPaymentAccount bankConnectAccount:self->_bankConnectAccount account:self->_account])
  {
    if (![v6 row])
    {
      if (v8)
      {
        goto LABEL_15;
      }

      v8 = PKLocalizedPaymentString(&cfstr_TransactionsSe_1.isa);
      v15 = [(PKPaymentPass *)self->_pass settings];
      if (PKStoreDemoModeEnabled())
      {
        v14 = 0;
      }

      else
      {
        v14 = PKUIOnlyDemoModeEnabled() ^ 1;
      }

      v10 = (v15 >> 3) & 1;
      v11 = self;
      v12 = v8;
      v13 = sel__transactionsSwitchChanged_;
      goto LABEL_13;
    }

    if ([v6 row] != 1)
    {
      goto LABEL_15;
    }
  }

  if (self->_notificationAuthorizationStatus != 1)
  {
    if (v8)
    {
      goto LABEL_15;
    }

    v8 = PKLocalizedString(&cfstr_SettingsShowNo.isa);
    v10 = ([(PKPaymentPass *)self->_pass settings]& 0x80) == 0;
    v11 = self;
    v12 = v8;
    v13 = sel__notificationSwitchChanged_;
    v14 = 1;
LABEL_13:
    v9 = [(PKPaymentPassDetailSectionController *)v11 settingsTableCellWithTitle:v12 action:v13 setOn:v10 enabled:v14];
    goto LABEL_14;
  }

  v9 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _allowNotificationsCellForTableView:v7];
LABEL_14:
  v16 = v9;

  v8 = v16;
LABEL_15:

  return v8;
}

- (void)_transactionsSwitchChanged:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = [(PKPaymentPass *)self->_pass settings];
  v5 = v17[3];
  v6 = [v4 isOn];
  v7 = v6;
  v8 = v5 & 8;
  if (((v6 ^ (v8 == 0)) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__PKPaymentPassDetailsNotificationSettingsSectionController__transactionsSwitchChanged___block_invoke;
    aBlock[3] = &unk_1E801B538;
    v15 = v6;
    aBlock[4] = self;
    aBlock[5] = &v16;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v7)
    {
      v9[2](v9);
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __88__PKPaymentPassDetailsNotificationSettingsSectionController__transactionsSwitchChanged___block_invoke_2;
      v11[3] = &unk_1E801B560;
      v11[4] = self;
      v12 = v9;
      v13 = v8 >> 3;
      [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler:v11];
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __88__PKPaymentPassDetailsNotificationSettingsSectionController__transactionsSwitchChanged___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) &= ~8uLL;
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 8uLL;
  }

  v3 = *MEMORY[0x1E69BA078];
  v9 = @"transactions";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  MEMORY[0x1BFB41980](v3, v5);

  v6 = [*(a1 + 32) _cellForType:0];
  v7 = [v6 settingSwitch];
  [v7 setEnabled:0];

  [*(*(a1 + 32) + 64) setSettings:*(*(*(a1 + 40) + 8) + 24)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  [WeakRetained reloadSectionIdentifier:@"NotificationsSectionIdentifier"];

  [*(a1 + 32) reportPassDetailsAnalyticsForToggleTag:*MEMORY[0x1E69BB368] toggleResult:v2 additionalAnalytics:0 pass:*(*(a1 + 32) + 64)];
}

void __88__PKPaymentPassDetailsNotificationSettingsSectionController__transactionsSwitchChanged___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) _cellForType:0];
    [v4 setOn:*(a1 + 48)];
  }
}

- (void)_promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler:(id)a3
{
  v4 = a3;
  paymentDataProvider = self->_paymentDataProvider;
  v6 = [(PKPaymentPass *)self->_pass uniqueID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __129__PKPaymentPassDetailsNotificationSettingsSectionController__promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler___block_invoke;
  v8[3] = &unk_1E80109C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(PKPaymentDataProvider *)paymentDataProvider hasEligibleCriteriaForPassUniqueID:v6 completion:v8];
}

void __129__PKPaymentPassDetailsNotificationSettingsSectionController__promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__PKPaymentPassDetailsNotificationSettingsSectionController__promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler___block_invoke_2;
  block[3] = &unk_1E8015148;
  v6 = a2;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __129__PKPaymentPassDetailsNotificationSettingsSectionController__promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    v6 = PKCreateAlertControllerForTransactionServiceDisabledConfirmation(v3);
    v4 = [*(a1 + 32) delegate];
    [v4 notificationSettingsSectionController:*(a1 + 32) requestsPresentViewController:v6 animated:1];
  }

  else
  {
    v5 = v3[2];

    v5();
  }
}

- (void)_notificationSwitchChanged:(id)a3
{
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPaymentPass *)pass settings];
  v7 = [v5 isOn];

  if (v7 == ((v6 >> 7) & 1))
  {
    v8 = 128;
    if (v7)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v8 | v6 & 0xFFFFFFFFFFFFFF7FLL];
  }
}

- (void)_dailyCashSwitchChanged:(id)a3
{
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPaymentPass *)pass settings];
  v7 = [v5 isOn];

  if (v7 == ((v6 >> 10) & 1))
  {
    v8 = 1024;
    if (v7)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v8 | v6 & 0xFFFFFFFFFFFFFBFFLL];
  }
}

+ (BOOL)canShowSectionforPass:(id)a3 dataProvider:(id)a4 peerPaymentAccount:(id)a5 bankConnectAccount:(id)a6 account:(id)a7 transactionSourceCollection:(id)a8 notificationAuthorizationStatus:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [a1 _updatedPeerPaymentAccountForPeerPaymentAccount:a5 pass:v15];
  if ([v15 activationState])
  {
    v21 = [v15 isShellPass] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0;
  if ([a1 _countOfRowsForPass:v15 peerPaymentAccount:v20 bankConnectAccount:v17 account:v18 notificationAuthorizationStatus:a9] >= 1 && (v21 & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 supportsTransactionsForPass:v15])
    {
      if (v20 || ([v15 supportsDPANNotifications] & 1) != 0 || (objc_msgSend(v15, "supportsFPANNotifications") & 1) != 0)
      {
        v22 = 1;
      }

      else
      {
        v24 = [v15 devicePrimaryPaymentApplication];
        if ([v24 generatesLocalTransactions] & 1) != 0 || v18 && (objc_msgSend(MEMORY[0x1E69B8770], "shouldDisplayAccountInformationForTransactionSourceCollection:withAccount:", v19, v18) & 1) != 0 || (objc_msgSend(v15, "isAppleCardPass") & 1) != 0 || (objc_msgSend(v15, "isPeerPaymentPass"))
        {
          v22 = 1;
        }

        else
        {
          v22 = [v15 isAppleBalancePass];
        }
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

+ (id)_updatedPeerPaymentAccountForPeerPaymentAccount:(id)a3 pass:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 associatedPassUniqueID];
  v8 = [v6 uniqueID];

  LODWORD(v6) = [v7 isEqualToString:v8];
  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int64_t)_countOfRowsForPass:(id)a3 peerPaymentAccount:(id)a4 bankConnectAccount:(id)a5 account:(id)a6 notificationAuthorizationStatus:(int64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  LOBYTE(a3) = [objc_opt_class() _showsTransactionHistorySwitchForPass:v14 peerPaymentAccount:v13 bankConnectAccount:v12 account:v11];

  if (a3)
  {
    v15 = [v14 settings];

    if ((v15 & 8) != 0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v17 = [v14 isAppleCardPass];

    v18 = 1;
    if (a7 != 1)
    {
      v18 = 2;
    }

    if (v17)
    {
      return v18;
    }

    else
    {
      return 1;
    }
  }
}

- (BOOL)_shouldShowBankConnectData
{
  v3 = PKBankConnectEnabled();
  if (v3)
  {
    LOBYTE(v3) = self->_detailViewStyle < 2uLL;
  }

  return v3;
}

- (id)_cellForType:(int64_t)a3
{
  v4 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _indexPathForRowType:a3];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained cellForRowAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_allowNotificationsCellForTableView:(id)a3
{
  v4 = a3;
  if (self->_detailViewStyle == 2)
  {
    v5 = @"SETTINGS_ALLOW_NOTIFICATIONS_TITLE_WATCH";
  }

  else
  {
    v5 = PDDeviceSpecificLocalizedStringKeyForKey();
  }

  v6 = PKLocalizedString(&v5->isa);
  v7 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v6 forTableView:v4];

  return v7;
}

- (void)_passSettingsChanged:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _cellForType:0];
  v6 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _cellForType:2];
  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E69BBC18]];
  v9 = [(PKPaymentPass *)self->_pass uniqueID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [v4 userInfo];
    v12 = [v11 objectForKey:*MEMORY[0x1E69BBC10]];

    if (v12)
    {
      v13 = [v12 unsignedIntegerValue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __82__PKPaymentPassDetailsNotificationSettingsSectionController__passSettingsChanged___block_invoke;
      v14[3] = &unk_1E8014DD0;
      v14[4] = self;
      v17 = v13;
      v15 = v5;
      v16 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }
  }
}

void __82__PKPaymentPassDetailsNotificationSettingsSectionController__passSettingsChanged___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) setSettingsWithoutUpdatingDataAccessor:*(a1 + 56)];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 isOn] ^ ((*(a1 + 56) & 8) == 0);
  }

  else
  {
    v3 = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) setOn:(*(a1 + 56) >> 3) & 1];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) setOn:(*(a1 + 56) & 0x80) == 0];
  }

  if ((v3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
    [WeakRetained reloadSectionIdentifier:@"NotificationsSectionIdentifier"];
  }
}

- (PKPaymentPassDetailsNotificationSettingsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end