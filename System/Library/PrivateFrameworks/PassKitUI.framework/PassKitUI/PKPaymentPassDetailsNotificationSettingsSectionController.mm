@interface PKPaymentPassDetailsNotificationSettingsSectionController
+ (BOOL)_showsTransactionHistorySwitchForPass:(id)pass peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a6;
+ (BOOL)canShowSectionforPass:(id)pass dataProvider:(id)provider peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a7 transactionSourceCollection:(id)collection notificationAuthorizationStatus:(int64_t)status;
+ (id)_updatedPeerPaymentAccountForPeerPaymentAccount:(id)account pass:(id)pass;
+ (int64_t)_countOfRowsForPass:(id)pass peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a6 notificationAuthorizationStatus:(int64_t)status;
- (BOOL)_shouldShowBankConnectData;
- (PKPaymentPassDetailsNotificationSettingsSectionController)initWithPass:(id)pass peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a6 paymentDataProvider:(id)provider transactionSourceCollection:(id)collection detailViewStyle:(int64_t)style delegate:(id)self0;
- (PKPaymentPassDetailsNotificationSettingsSectionControllerDelegate)delegate;
- (id)_accountServiceNotificationsSwitchCellForIndexPath:(id)path tableView:(id)view;
- (id)_allowNotificationsCellForTableView:(id)view;
- (id)_cellForType:(int64_t)type;
- (id)_indexPathForRowType:(int64_t)type;
- (id)_peerPaymentNotificationsSwitchCellForIndexPath:(id)path tableView:(id)view;
- (id)_transactionsSwitchCellForIndexPath:(id)path tableView:(id)view;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (id)titleForHeaderInSectionIdentifier:(id)identifier;
- (int64_t)_countOfRows;
- (unint64_t)_accountFeature;
- (void)_dailyCashSwitchChanged:(id)changed;
- (void)_notificationSwitchChanged:(id)changed;
- (void)_passSettingsChanged:(id)changed;
- (void)_promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler:(id)handler;
- (void)_transactionsSwitchChanged:(id)changed;
- (void)dealloc;
- (void)fetchAuthorizationStatusWithCompletion:(id)completion;
- (void)setTransactionsEnabled:(BOOL)enabled;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPaymentPassDetailsNotificationSettingsSectionController

- (PKPaymentPassDetailsNotificationSettingsSectionController)initWithPass:(id)pass peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a6 paymentDataProvider:(id)provider transactionSourceCollection:(id)collection detailViewStyle:(int64_t)style delegate:(id)self0
{
  passCopy = pass;
  accountCopy = account;
  obj = connectAccount;
  connectAccountCopy = connectAccount;
  v31 = a6;
  providerCopy = provider;
  collectionCopy = collection;
  delegateCopy = delegate;
  v35.receiver = self;
  v35.super_class = PKPaymentPassDetailsNotificationSettingsSectionController;
  v21 = [(PKPaymentPassDetailSectionController *)&v35 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_pass, pass);
    devicePrimaryPaymentApplication = [(PKPaymentPass *)v22->_pass devicePrimaryPaymentApplication];
    paymentApplication = v22->_paymentApplication;
    v22->_paymentApplication = devicePrimaryPaymentApplication;

    v25 = [objc_opt_class() _updatedPeerPaymentAccountForPeerPaymentAccount:accountCopy pass:passCopy];

    if (v25)
    {
      objc_storeStrong(&v22->_peerPaymentAccount, account);
    }

    objc_storeStrong(&v22->_paymentDataProvider, provider);
    objc_storeStrong(&v22->_transactionSourceCollection, collection);
    objc_storeStrong(&v22->_account, a6);
    v22->_detailViewStyle = style;
    objc_storeWeak(&v22->_delegate, delegateCopy);
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
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v22 selector:sel__passSettingsChanged_ name:*MEMORY[0x1E69BBBF0] object:0];

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
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69BBBF0] object:0];

  v4.receiver = self;
  v4.super_class = PKPaymentPassDetailsNotificationSettingsSectionController;
  [(PKPaymentPassDetailsNotificationSettingsSectionController *)&v4 dealloc];
}

- (void)fetchAuthorizationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  mEMORY[0x1E69B9328] = [MEMORY[0x1E69B9328] sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__PKPaymentPassDetailsNotificationSettingsSectionController_fetchAuthorizationStatusWithCompletion___block_invoke;
  v7[3] = &unk_1E801B510;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [mEMORY[0x1E69B9328] authorizationStatusWithCompletion:v7];

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

- (void)setTransactionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _cellForType:0];
  settingSwitch = [v5 settingSwitch];
  [settingSwitch setOn:enabledCopy];
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
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  if (PKEqualObjects())
  {
    if (self->_peerPaymentAccount)
    {
      v9 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _peerPaymentNotificationsSwitchCellForIndexPath:pathCopy tableView:viewCopy];
    }

    else
    {
      associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      v12 = [associatedAccountServiceAccountIdentifier length];

      if (v12)
      {
        [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _accountServiceNotificationsSwitchCellForIndexPath:pathCopy tableView:viewCopy];
      }

      else
      {
        [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _transactionsSwitchCellForIndexPath:pathCopy tableView:viewCopy];
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

- (id)_indexPathForRowType:(int64_t)type
{
  peerPaymentAccount = self->_peerPaymentAccount;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = type != 0;
  if (type)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  if (type == 1)
  {
    v5 = 0;
    v6 = 1;
  }

  if (type == 2)
  {
    v5 = 0;
    v6 = 2;
  }

  if (!type)
  {
    v4 = 0;
  }

  if (peerPaymentAccount)
  {
    v7 = type != 0;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  if (PKEqualObjects())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didSelectEditNotificationSettings:self];
  }
}

- (id)titleForHeaderInSectionIdentifier:(id)identifier
{
  if (self->_peerPaymentAccount)
  {
    v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_0.isa);
  }

  else
  {
    associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
    v6 = [associatedAccountServiceAccountIdentifier length];

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

- (id)titleForFooterInSectionIdentifier:(id)identifier
{
  if ([objc_opt_class() _showsTransactionHistorySwitchForPass:self->_pass peerPaymentAccount:self->_peerPaymentAccount bankConnectAccount:self->_bankConnectAccount account:self->_account])
  {
    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    v5 = PKLocalizedPaymentString(&cfstr_TransactionsSe_0.isa, &stru_1F3BD5BF0.isa, organizationName);
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

+ (BOOL)_showsTransactionHistorySwitchForPass:(id)pass peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a6
{
  passCopy = pass;
  if ([passCopy supportsFPANNotifications])
  {
    if (account | a6)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v10 = connectAccount == 0;
    goto LABEL_8;
  }

  supportsDPANNotifications = [passCopy supportsDPANNotifications];
  v10 = 0;
  if (!a6 && !account && (supportsDPANNotifications & 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (id)_peerPaymentNotificationsSwitchCellForIndexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"NotificationsInfoCell"];
  if (self->_notificationAuthorizationStatus == 1)
  {
    v9 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _allowNotificationsCellForTableView:viewCopy];
LABEL_9:
    v12 = v9;

    v8 = v12;
    goto LABEL_10;
  }

  if (![pathCopy row] && !v8)
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_1.isa);
    settings = [(PKPaymentPass *)self->_pass settings];
    if (PKStoreDemoModeEnabled())
    {
      v11 = 0;
    }

    else
    {
      v11 = PKUIOnlyDemoModeEnabled() ^ 1;
    }

    v9 = [(PKPaymentPassDetailSectionController *)self settingsTableCellWithTitle:v8 action:sel__transactionsSwitchChanged_ setOn:(settings >> 3) & 1 enabled:v11];
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (id)_accountServiceNotificationsSwitchCellForIndexPath:(id)path tableView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"NotificationsInfoCell"];
  v9 = [pathCopy row];

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
    selfCopy2 = self;
    v17 = v8;
    v18 = v12;
    v11 = 1;
LABEL_20:
    v14 = [(PKPaymentPassDetailSectionController *)selfCopy2 settingsTableCellWithTitle:v17 action:v18 setOn:v15 enabled:v11];
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
    settings = [(PKPaymentPass *)self->_pass settings];
    if (PKStoreDemoModeEnabled())
    {
      v11 = 0;
    }

    else
    {
      v11 = PKUIOnlyDemoModeEnabled() ^ 1;
    }

    v15 = (settings >> 3) & 1;
    selfCopy2 = self;
    v17 = v8;
    v18 = sel__transactionsSwitchChanged_;
    goto LABEL_20;
  }

LABEL_11:
  v14 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _allowNotificationsCellForTableView:viewCopy];
LABEL_21:
  v19 = v14;

  v8 = v19;
LABEL_22:

  return v8;
}

- (id)_transactionsSwitchCellForIndexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"NotificationsInfoCell"];
  if ([objc_opt_class() _showsTransactionHistorySwitchForPass:self->_pass peerPaymentAccount:self->_peerPaymentAccount bankConnectAccount:self->_bankConnectAccount account:self->_account])
  {
    if (![pathCopy row])
    {
      if (v8)
      {
        goto LABEL_15;
      }

      v8 = PKLocalizedPaymentString(&cfstr_TransactionsSe_1.isa);
      settings = [(PKPaymentPass *)self->_pass settings];
      if (PKStoreDemoModeEnabled())
      {
        v14 = 0;
      }

      else
      {
        v14 = PKUIOnlyDemoModeEnabled() ^ 1;
      }

      v10 = (settings >> 3) & 1;
      selfCopy2 = self;
      v12 = v8;
      v13 = sel__transactionsSwitchChanged_;
      goto LABEL_13;
    }

    if ([pathCopy row] != 1)
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
    selfCopy2 = self;
    v12 = v8;
    v13 = sel__notificationSwitchChanged_;
    v14 = 1;
LABEL_13:
    v9 = [(PKPaymentPassDetailSectionController *)selfCopy2 settingsTableCellWithTitle:v12 action:v13 setOn:v10 enabled:v14];
    goto LABEL_14;
  }

  v9 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _allowNotificationsCellForTableView:viewCopy];
LABEL_14:
  v16 = v9;

  v8 = v16;
LABEL_15:

  return v8;
}

- (void)_transactionsSwitchChanged:(id)changed
{
  changedCopy = changed;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  settings = [(PKPaymentPass *)self->_pass settings];
  v5 = v17[3];
  isOn = [changedCopy isOn];
  v7 = isOn;
  v8 = v5 & 8;
  if (((isOn ^ (v8 == 0)) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__PKPaymentPassDetailsNotificationSettingsSectionController__transactionsSwitchChanged___block_invoke;
    aBlock[3] = &unk_1E801B538;
    v15 = isOn;
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

- (void)_promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler:(id)handler
{
  handlerCopy = handler;
  paymentDataProvider = self->_paymentDataProvider;
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __129__PKPaymentPassDetailsNotificationSettingsSectionController__promptForTransactionSwitchChangeIfNecessaryWithConfirmationHandler___block_invoke;
  v8[3] = &unk_1E80109C0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(PKPaymentDataProvider *)paymentDataProvider hasEligibleCriteriaForPassUniqueID:uniqueID completion:v8];
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

- (void)_notificationSwitchChanged:(id)changed
{
  pass = self->_pass;
  changedCopy = changed;
  settings = [(PKPaymentPass *)pass settings];
  isOn = [changedCopy isOn];

  if (isOn == ((settings >> 7) & 1))
  {
    v8 = 128;
    if (isOn)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v8 | settings & 0xFFFFFFFFFFFFFF7FLL];
  }
}

- (void)_dailyCashSwitchChanged:(id)changed
{
  pass = self->_pass;
  changedCopy = changed;
  settings = [(PKPaymentPass *)pass settings];
  isOn = [changedCopy isOn];

  if (isOn == ((settings >> 10) & 1))
  {
    v8 = 1024;
    if (isOn)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v8 | settings & 0xFFFFFFFFFFFFFBFFLL];
  }
}

+ (BOOL)canShowSectionforPass:(id)pass dataProvider:(id)provider peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a7 transactionSourceCollection:(id)collection notificationAuthorizationStatus:(int64_t)status
{
  passCopy = pass;
  providerCopy = provider;
  connectAccountCopy = connectAccount;
  v18 = a7;
  collectionCopy = collection;
  v20 = [self _updatedPeerPaymentAccountForPeerPaymentAccount:account pass:passCopy];
  if ([passCopy activationState])
  {
    v21 = [passCopy isShellPass] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  isAppleBalancePass = 0;
  if ([self _countOfRowsForPass:passCopy peerPaymentAccount:v20 bankConnectAccount:connectAccountCopy account:v18 notificationAuthorizationStatus:status] >= 1 && (v21 & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [providerCopy supportsTransactionsForPass:passCopy])
    {
      if (v20 || ([passCopy supportsDPANNotifications] & 1) != 0 || (objc_msgSend(passCopy, "supportsFPANNotifications") & 1) != 0)
      {
        isAppleBalancePass = 1;
      }

      else
      {
        devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
        if ([devicePrimaryPaymentApplication generatesLocalTransactions] & 1) != 0 || v18 && (objc_msgSend(MEMORY[0x1E69B8770], "shouldDisplayAccountInformationForTransactionSourceCollection:withAccount:", collectionCopy, v18) & 1) != 0 || (objc_msgSend(passCopy, "isAppleCardPass") & 1) != 0 || (objc_msgSend(passCopy, "isPeerPaymentPass"))
        {
          isAppleBalancePass = 1;
        }

        else
        {
          isAppleBalancePass = [passCopy isAppleBalancePass];
        }
      }
    }

    else
    {
      isAppleBalancePass = 0;
    }
  }

  return isAppleBalancePass;
}

+ (id)_updatedPeerPaymentAccountForPeerPaymentAccount:(id)account pass:(id)pass
{
  accountCopy = account;
  passCopy = pass;
  associatedPassUniqueID = [accountCopy associatedPassUniqueID];
  uniqueID = [passCopy uniqueID];

  LODWORD(passCopy) = [associatedPassUniqueID isEqualToString:uniqueID];
  if (passCopy)
  {
    v9 = accountCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int64_t)_countOfRowsForPass:(id)pass peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a6 notificationAuthorizationStatus:(int64_t)status
{
  v11 = a6;
  connectAccountCopy = connectAccount;
  accountCopy = account;
  passCopy = pass;
  LOBYTE(pass) = [objc_opt_class() _showsTransactionHistorySwitchForPass:passCopy peerPaymentAccount:accountCopy bankConnectAccount:connectAccountCopy account:v11];

  if (pass)
  {
    settings = [passCopy settings];

    if ((settings & 8) != 0)
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
    isAppleCardPass = [passCopy isAppleCardPass];

    v18 = 1;
    if (status != 1)
    {
      v18 = 2;
    }

    if (isAppleCardPass)
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

- (id)_cellForType:(int64_t)type
{
  v4 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _indexPathForRowType:type];
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

- (id)_allowNotificationsCellForTableView:(id)view
{
  viewCopy = view;
  if (self->_detailViewStyle == 2)
  {
    v5 = @"SETTINGS_ALLOW_NOTIFICATIONS_TITLE_WATCH";
  }

  else
  {
    v5 = PDDeviceSpecificLocalizedStringKeyForKey();
  }

  v6 = PKLocalizedString(&v5->isa);
  v7 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v6 forTableView:viewCopy];

  return v7;
}

- (void)_passSettingsChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _cellForType:0];
  v6 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)self _cellForType:2];
  userInfo = [changedCopy userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x1E69BBC18]];
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v10 = [v8 isEqual:uniqueID];

  if (v10)
  {
    userInfo2 = [changedCopy userInfo];
    v12 = [userInfo2 objectForKey:*MEMORY[0x1E69BBC10]];

    if (v12)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __82__PKPaymentPassDetailsNotificationSettingsSectionController__passSettingsChanged___block_invoke;
      v14[3] = &unk_1E8014DD0;
      v14[4] = self;
      v17 = unsignedIntegerValue;
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