@interface PKDashboardMoreMenuFactory
- (BOOL)_canShowManualArchiveButton;
- (BOOL)_canShowNotificationsInfo;
- (BOOL)_canShowPaymentCardNumberAction;
- (BOOL)_canShowPredictedTransactionsAction;
- (BOOL)_hasCombinedActions;
- (BOOL)_hasExternalActions;
- (BOOL)_hasGroupActions;
- (BOOL)_hasTransitCardNumber;
- (BOOL)_hasValidEnteredValueActions;
- (BOOL)_hasValidSelectedItemActions;
- (BOOL)_isPassActivated;
- (BOOL)_isPassActivating;
- (BOOL)_isPassRequiresActivation;
- (BOOL)_upcomingInformationCanCreateCalendarEvents;
- (PKDashboardMoreMenuFactory)init;
- (PKDashboardMoreMenuFactoryDelegate)delegate;
- (PKDashboardPassGroupViewController)dashboardVC;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (UIViewController)viewController;
- (id)_accessPassMenuItems;
- (id)_addAllToCalendarAction;
- (id)_addMoneyAppleBalanceAction;
- (id)_addMoneyPeerPaymentAction;
- (id)_addToCalendarAction;
- (id)_appleBalanceMenuItems;
- (id)_appleCardMenuItems;
- (id)_appleCashMenuItems;
- (id)_archivePassAction;
- (id)_barcodePassMenuItems;
- (id)_eMoneyPassMenuItems;
- (id)_openRewardsHubAction;
- (id)_passActions;
- (id)_paymentPassMenuItems;
- (id)_peerPaymentFamilyAction;
- (id)_recurringPeerPaymentsPaymentsAction;
- (id)_redeemAction;
- (id)_removePassAction;
- (id)_removePassLocalizedTitle;
- (id)_savingsDetailsAction;
- (id)_savingsMenuItems;
- (id)_showAccountManageNotifications;
- (id)_showCombinedPassActionsBuy;
- (id)_showCombinedPassActionsRenew;
- (id)_showEnteredValuePassActions;
- (id)_showHasHomeGuestAccessScheduleAction;
- (id)_showInstallmentPlansAction;
- (id)_showPassActionGroups;
- (id)_showPassInfoAction;
- (id)_showPassInfoLocalizedTitle;
- (id)_showPassManageNotifications;
- (id)_showPaymentCardNumberAction;
- (id)_showPredictedTransactionsAction;
- (id)_showSavingsDebugAction;
- (id)_showSavingsDocumentsAction;
- (id)_showScheduledPaymentsAction;
- (id)_showSelectedItemPassActions;
- (id)_showSellAction;
- (id)_showTransferAction;
- (id)_showTransitCardNumberAction;
- (id)_transferToBankAction;
- (id)_transitPassMenuItems;
- (id)moreMenu;
- (int64_t)_moreMenuTypeValue;
- (unint64_t)_feature;
- (unint64_t)_possibleCalendarEventsCount;
- (void)_addPassAndUpcomingInformationEventsToCalendarWithEventStore:(id)store;
- (void)_addPassEventsToCalendarWithEventStore:(id)store;
- (void)_peerPaymentAccountChanged:(id)changed;
- (void)_performAddToCalendarRequestNeedingPermission:(BOOL)permission eventStore:(id)store requestBlock:(id)block;
- (void)_presentNeedsCalendarPermissionsAlert;
- (void)_recalculateTransitPassDetails;
- (void)_reloadMoreMenuItems;
- (void)accountChanged:(id)changed;
- (void)dealloc;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)setAccount:(id)account;
- (void)setBankConnectAccount:(id)account;
- (void)setDashboardVC:(id)c;
- (void)setPass:(id)pass;
- (void)setViewController:(id)controller;
@end

@implementation PKDashboardMoreMenuFactory

- (PKDashboardMoreMenuFactory)init
{
  v14.receiver = self;
  v14.super_class = PKDashboardMoreMenuFactory;
  v2 = [(PKDashboardMoreMenuFactory *)&v14 init];
  if (v2)
  {
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentServiceDataProvider = v2->_paymentServiceDataProvider;
    v2->_paymentServiceDataProvider = defaultDataProvider;

    [(PKPaymentDefaultDataProvider *)v2->_paymentServiceDataProvider addDelegate:v2];
    v5 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    passLibraryDataProvider = v2->_passLibraryDataProvider;
    v2->_passLibraryDataProvider = v5;

    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    webService = v2->_webService;
    v2->_webService = mEMORY[0x1E69B8EF8];

    v9 = [objc_alloc(MEMORY[0x1E69B8850]) initWithPaymentDataProvider:v2->_paymentServiceDataProvider passLibraryDataProvider:v2->_passLibraryDataProvider isForWatch:0];
    expressPassController = v2->_expressPassController;
    v2->_expressPassController = v9;

    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v2->_accountService;
    v2->_accountService = mEMORY[0x1E69B8400];

    [(PKAccountService *)v2->_accountService registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(PKPaymentDefaultDataProvider *)self->_paymentServiceDataProvider removeDelegate:self];
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKDashboardMoreMenuFactory;
  [(PKDashboardMoreMenuFactory *)&v3 dealloc];
}

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_dashboardVC, 0);
  [(PKDashboardMoreMenuFactory *)self _setViewController:controllerCopy];
}

- (void)setDashboardVC:(id)c
{
  cCopy = c;
  objc_storeWeak(&self->_dashboardVC, cCopy);
  [(PKDashboardMoreMenuFactory *)self _setViewController:cCopy];
}

- (id)moreMenu
{
  if ((PKPreferenceBOOLforKey() & 1) == 0)
  {
    moreMenuType = [(PKDashboardMoreMenuFactory *)self moreMenuType];
    v5 = 0;
    self->_forceShowMoreMenuIcon = 0;
    if (moreMenuType <= 5)
    {
      if (moreMenuType > 3)
      {
        if (moreMenuType == 4)
        {
          if ([(PKDashboardMoreMenuFactory *)self _isPassActivating])
          {
            self->_forceShowMoreMenuIcon = 1;
          }

          _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _transitPassMenuItems];
        }

        else
        {
          _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _accessPassMenuItems];
        }

        goto LABEL_26;
      }

      if (moreMenuType == 1)
      {
        _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _barcodePassMenuItems];
        goto LABEL_26;
      }

      if (moreMenuType == 2)
      {
        _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _paymentPassMenuItems];
        goto LABEL_26;
      }
    }

    else
    {
      if (moreMenuType <= 7)
      {
        if (moreMenuType == 6)
        {
          if ([(PKDashboardMoreMenuFactory *)self _isPassActivating])
          {
            self->_forceShowMoreMenuIcon = 1;
          }

          _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _eMoneyPassMenuItems];
        }

        else
        {
          _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _savingsMenuItems];
        }

        goto LABEL_26;
      }

      switch(moreMenuType)
      {
        case 8:
          _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _appleCardMenuItems];
          goto LABEL_26;
        case 9:
          _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _appleCashMenuItems];
          goto LABEL_26;
        case 10:
          _transitPassMenuItems = [(PKDashboardMoreMenuFactory *)self _appleBalanceMenuItems];
LABEL_26:
          v5 = _transitPassMenuItems;
          break;
      }
    }

    if ([v5 count])
    {
      v3 = [MEMORY[0x1E69DCC60] menuWithChildren:v5];
      [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9970]];
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_31;
  }

  v3 = 0;
LABEL_31:

  return v3;
}

- (id)_barcodePassMenuItems
{
  v27[1] = *MEMORY[0x1E69E9840];
  _canShowNotificationsInfo = [(PKDashboardMoreMenuFactory *)self _canShowNotificationsInfo];
  _canShowManualArchiveButton = [(PKDashboardMoreMenuFactory *)self _canShowManualArchiveButton];
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _addToCalendarAction = [(PKDashboardMoreMenuFactory *)self _addToCalendarAction];
  [v6 safelyAddObject:_addToCalendarAction];

  _addAllToCalendarAction = [(PKDashboardMoreMenuFactory *)self _addAllToCalendarAction];
  [v6 safelyAddObject:_addAllToCalendarAction];

  _showTransferAction = [(PKDashboardMoreMenuFactory *)self _showTransferAction];
  [v6 safelyAddObject:_showTransferAction];

  _showSellAction = [(PKDashboardMoreMenuFactory *)self _showSellAction];
  [v6 safelyAddObject:_showSellAction];

  if ([v6 count])
  {
    v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v6];
    [array safelyAddObject:v11];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _showPassInfoAction = [(PKDashboardMoreMenuFactory *)self _showPassInfoAction];
  [v12 safelyAddObject:_showPassInfoAction];

  if (_canShowNotificationsInfo)
  {
    _showPassManageNotifications = [(PKDashboardMoreMenuFactory *)self _showPassManageNotifications];
    [v12 safelyAddObject:_showPassManageNotifications];
  }

  if ([v12 count])
  {
    v15 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v12];
    [array safelyAddObject:v15];
  }

  if (_canShowManualArchiveButton)
  {
    v16 = MEMORY[0x1E69DCC60];
    _archivePassAction = [(PKDashboardMoreMenuFactory *)self _archivePassAction];
    v27[0] = _archivePassAction;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v19 = [v16 menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v18];
    [array safelyAddObject:v19];
  }

  if ((PKRunningInViewService() & 1) == 0)
  {
    v20 = MEMORY[0x1E69DCC60];
    _removePassAction = [(PKDashboardMoreMenuFactory *)self _removePassAction];
    v26 = _removePassAction;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v23 = [v20 menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v22];
    [array safelyAddObject:v23];
  }

  v24 = [array copy];

  return v24;
}

- (id)_paymentPassMenuItems
{
  _canShowNotificationsInfo = [(PKDashboardMoreMenuFactory *)self _canShowNotificationsInfo];
  _canShowPaymentCardNumberAction = [(PKDashboardMoreMenuFactory *)self _canShowPaymentCardNumberAction];
  _canShowPredictedTransactionsAction = [(PKDashboardMoreMenuFactory *)self _canShowPredictedTransactionsAction];
  v6 = _canShowPredictedTransactionsAction;
  if (_canShowNotificationsInfo || _canShowPaymentCardNumberAction || _canShowPredictedTransactionsAction)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (_canShowPaymentCardNumberAction)
    {
      _showPaymentCardNumberAction = [(PKDashboardMoreMenuFactory *)self _showPaymentCardNumberAction];
      [array safelyAddObject:_showPaymentCardNumberAction];
    }

    if (v6)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      _showPredictedTransactionsAction = [(PKDashboardMoreMenuFactory *)self _showPredictedTransactionsAction];
      [v10 safelyAddObject:_showPredictedTransactionsAction];

      v12 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v10];
      [array safelyAddObject:v12];
    }

    _showPassInfoAction = [(PKDashboardMoreMenuFactory *)self _showPassInfoAction];
    [array safelyAddObject:_showPassInfoAction];

    if (_canShowNotificationsInfo)
    {
      _showPassManageNotifications = [(PKDashboardMoreMenuFactory *)self _showPassManageNotifications];
      [array safelyAddObject:_showPassManageNotifications];
    }

    v7 = [array copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_transitPassMenuItems
{
  _hasValidEnteredValueActions = [(PKDashboardMoreMenuFactory *)self _hasValidEnteredValueActions];
  _hasTransitCardNumber = [(PKDashboardMoreMenuFactory *)self _hasTransitCardNumber];
  _canShowNotificationsInfo = [(PKDashboardMoreMenuFactory *)self _canShowNotificationsInfo];
  _hasValidSelectedItemActions = [(PKDashboardMoreMenuFactory *)self _hasValidSelectedItemActions];
  _hasGroupActions = [(PKDashboardMoreMenuFactory *)self _hasGroupActions];
  _hasCombinedActions = [(PKDashboardMoreMenuFactory *)self _hasCombinedActions];
  _hasExternalActions = [(PKDashboardMoreMenuFactory *)self _hasExternalActions];
  if (!_hasValidEnteredValueActions && !_hasTransitCardNumber && !_canShowNotificationsInfo && !_hasValidSelectedItemActions && !_hasGroupActions)
  {
    v10 = 0;
    goto LABEL_24;
  }

  array = [MEMORY[0x1E695DF70] array];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!_hasExternalActions)
  {
    if (_hasValidEnteredValueActions)
    {
      _showEnteredValuePassActions = [(PKDashboardMoreMenuFactory *)self _showEnteredValuePassActions];
      [v12 safelyAddObject:_showEnteredValuePassActions];
    }

    if (_hasCombinedActions)
    {
      _showCombinedPassActionsBuy = [(PKDashboardMoreMenuFactory *)self _showCombinedPassActionsBuy];
      [v12 safelyAddObject:_showCombinedPassActionsBuy];

      _showCombinedPassActionsRenew = [(PKDashboardMoreMenuFactory *)self _showCombinedPassActionsRenew];
    }

    else
    {
      if (_hasValidSelectedItemActions)
      {
        _showSelectedItemPassActions = [(PKDashboardMoreMenuFactory *)self _showSelectedItemPassActions];
        [v12 safelyAddObject:_showSelectedItemPassActions];
      }

      if (!_hasGroupActions)
      {
        goto LABEL_17;
      }

      _showCombinedPassActionsRenew = [(PKDashboardMoreMenuFactory *)self _showPassActionGroups];
    }

    v17 = _showCombinedPassActionsRenew;
    [v12 safelyAddObject:_showCombinedPassActionsRenew];
  }

LABEL_17:
  if ([v12 count])
  {
    v18 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v12];
    [array safelyAddObject:v18];
  }

  if (_hasTransitCardNumber)
  {
    _showTransitCardNumberAction = [(PKDashboardMoreMenuFactory *)self _showTransitCardNumberAction];
    [array safelyAddObject:_showTransitCardNumberAction];
  }

  _showPassInfoAction = [(PKDashboardMoreMenuFactory *)self _showPassInfoAction];
  [array safelyAddObject:_showPassInfoAction];

  if (_canShowNotificationsInfo)
  {
    _showPassManageNotifications = [(PKDashboardMoreMenuFactory *)self _showPassManageNotifications];
    [array safelyAddObject:_showPassManageNotifications];
  }

  v10 = [array copy];

LABEL_24:

  return v10;
}

- (id)_eMoneyPassMenuItems
{
  _hasValidEnteredValueActions = [(PKDashboardMoreMenuFactory *)self _hasValidEnteredValueActions];
  _hasTransitCardNumber = [(PKDashboardMoreMenuFactory *)self _hasTransitCardNumber];
  _canShowNotificationsInfo = [(PKDashboardMoreMenuFactory *)self _canShowNotificationsInfo];
  v6 = _canShowNotificationsInfo;
  if (_hasValidEnteredValueActions || _hasTransitCardNumber || _canShowNotificationsInfo)
  {
    array = [MEMORY[0x1E695DF70] array];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (_hasValidEnteredValueActions)
    {
      _showEnteredValuePassActions = [(PKDashboardMoreMenuFactory *)self _showEnteredValuePassActions];
      [v9 safelyAddObject:_showEnteredValuePassActions];
    }

    if ([v9 count])
    {
      v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v9];
      [array safelyAddObject:v11];
    }

    if (_hasTransitCardNumber)
    {
      _showTransitCardNumberAction = [(PKDashboardMoreMenuFactory *)self _showTransitCardNumberAction];
      [array safelyAddObject:_showTransitCardNumberAction];
    }

    _showPassInfoAction = [(PKDashboardMoreMenuFactory *)self _showPassInfoAction];
    [array safelyAddObject:_showPassInfoAction];

    if (v6)
    {
      _showPassManageNotifications = [(PKDashboardMoreMenuFactory *)self _showPassManageNotifications];
      [array safelyAddObject:_showPassManageNotifications];
    }

    v7 = [array copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_accessPassMenuItems
{
  _canShowNotificationsInfo = [(PKDashboardMoreMenuFactory *)self _canShowNotificationsInfo];
  homeKitHasHomeGuestAccessSchedule = self->_homeKitHasHomeGuestAccessSchedule;
  if (_canShowNotificationsInfo || self->_homeKitHasHomeGuestAccessSchedule)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (homeKitHasHomeGuestAccessSchedule)
    {
      _showHasHomeGuestAccessScheduleAction = [(PKDashboardMoreMenuFactory *)self _showHasHomeGuestAccessScheduleAction];
      [array safelyAddObject:_showHasHomeGuestAccessScheduleAction];
    }

    _showPassInfoAction = [(PKDashboardMoreMenuFactory *)self _showPassInfoAction];
    [array safelyAddObject:_showPassInfoAction];

    if (_canShowNotificationsInfo)
    {
      _showPassManageNotifications = [(PKDashboardMoreMenuFactory *)self _showPassManageNotifications];
      [array safelyAddObject:_showPassManageNotifications];
    }

    v5 = [array copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_savingsMenuItems
{
  array = [MEMORY[0x1E695DF70] array];
  _savingsDetailsAction = [(PKDashboardMoreMenuFactory *)self _savingsDetailsAction];
  [array safelyAddObject:_savingsDetailsAction];

  _showSavingsDocumentsAction = [(PKDashboardMoreMenuFactory *)self _showSavingsDocumentsAction];
  [array safelyAddObject:_showSavingsDocumentsAction];

  _showAccountManageNotifications = [(PKDashboardMoreMenuFactory *)self _showAccountManageNotifications];
  [array safelyAddObject:_showAccountManageNotifications];

  _showSavingsDebugAction = [(PKDashboardMoreMenuFactory *)self _showSavingsDebugAction];
  [array safelyAddObject:_showSavingsDebugAction];

  v8 = [array copy];

  return v8;
}

- (id)_appleCardMenuItems
{
  v3 = ([(PKAccount *)self->_account blockAllAccountAccess]& 1) != 0 || [(PKAccount *)self->_account state]== 3;
  creditDetails = [(PKAccount *)self->_account creditDetails];
  if (creditDetails)
  {
    creditDetails2 = [(PKAccount *)self->_account creditDetails];
    accountSummary = [creditDetails2 accountSummary];
    requiresDebtCollectionNotices = [accountSummary requiresDebtCollectionNotices];
  }

  else
  {
    requiresDebtCollectionNotices = 0;
  }

  v8 = ((v3 | requiresDebtCollectionNotices) & 1) == 0 && [(PKAccount *)self->_account state]!= 4;
  creditDetails3 = [(PKAccount *)self->_account creditDetails];
  installmentPlans = [creditDetails3 installmentPlans];

  v11 = !v3 && [installmentPlans count] != 0;
  _canShowNotificationsInfo = [(PKDashboardMoreMenuFactory *)self _canShowNotificationsInfo];
  _canShowPredictedTransactionsAction = [(PKDashboardMoreMenuFactory *)self _canShowPredictedTransactionsAction];
  if (!v8 && !v11 && !_canShowNotificationsInfo)
  {
    v14 = 0;
    goto LABEL_27;
  }

  array = [MEMORY[0x1E695DF70] array];
  paymentPass = [(PKPass *)self->_pass paymentPass];
  if ([MEMORY[0x1E69B8770] shouldDisplayScheduledPaymentsWithAccount:self->_account andPass:paymentPass])
  {
    _showScheduledPaymentsAction = [(PKDashboardMoreMenuFactory *)self _showScheduledPaymentsAction];
    [array safelyAddObject:_showScheduledPaymentsAction];

    if (!_canShowPredictedTransactionsAction)
    {
LABEL_18:
      if (!v11)
      {
        goto LABEL_19;
      }

LABEL_32:
      _showInstallmentPlansAction = [(PKDashboardMoreMenuFactory *)self _showInstallmentPlansAction];
      [array safelyAddObject:_showInstallmentPlansAction];

      if (!v8)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (!_canShowPredictedTransactionsAction)
  {
    goto LABEL_18;
  }

  _showPredictedTransactionsAction = [(PKDashboardMoreMenuFactory *)self _showPredictedTransactionsAction];
  [array safelyAddObject:_showPredictedTransactionsAction];

  if (v11)
  {
    goto LABEL_32;
  }

LABEL_19:
  if (v8)
  {
LABEL_20:
    _openRewardsHubAction = [(PKDashboardMoreMenuFactory *)self _openRewardsHubAction];
    [array safelyAddObject:_openRewardsHubAction];
  }

LABEL_21:
  array2 = [MEMORY[0x1E695DF70] array];
  _showPassInfoAction = [(PKDashboardMoreMenuFactory *)self _showPassInfoAction];
  [array2 safelyAddObject:_showPassInfoAction];

  if (_canShowNotificationsInfo)
  {
    _showPassManageNotifications = [(PKDashboardMoreMenuFactory *)self _showPassManageNotifications];
    [array2 safelyAddObject:_showPassManageNotifications];
  }

  v21 = [array count];
  v22 = array2;
  if (v21)
  {
    v23 = [array2 count];
    v22 = array;
    if (v23)
    {
      v24 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:array2];
      [array safelyAddObject:v24];

      v22 = array;
    }
  }

  v14 = [v22 copy];

LABEL_27:

  return v14;
}

- (id)_appleCashMenuItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  currentUser = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
  if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount isEligibleToAddMoneyForUser:currentUser])
  {
    _addMoneyPeerPaymentAction = [(PKDashboardMoreMenuFactory *)self _addMoneyPeerPaymentAction];
    [v3 safelyAddObject:_addMoneyPeerPaymentAction];
  }

  if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount isEligibleToWithdrawForUser:currentUser])
  {
    _transferToBankAction = [(PKDashboardMoreMenuFactory *)self _transferToBankAction];
    [v3 safelyAddObject:_transferToBankAction];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _recurringPeerPaymentsPaymentsAction = [(PKDashboardMoreMenuFactory *)self _recurringPeerPaymentsPaymentsAction];
  [v7 safelyAddObject:_recurringPeerPaymentsPaymentsAction];

  _peerPaymentFamilyAction = [(PKDashboardMoreMenuFactory *)self _peerPaymentFamilyAction];
  [v7 safelyAddObject:_peerPaymentFamilyAction];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKDashboardMoreMenuFactory *)self _canShowPaymentCardNumberAction])
  {
    _showPaymentCardNumberAction = [(PKDashboardMoreMenuFactory *)self _showPaymentCardNumberAction];
    [v10 safelyAddObject:_showPaymentCardNumberAction];
  }

  _showPassInfoAction = [(PKDashboardMoreMenuFactory *)self _showPassInfoAction];
  [v10 safelyAddObject:_showPassInfoAction];

  if ([(PKDashboardMoreMenuFactory *)self _canShowNotificationsInfo])
  {
    _showPassManageNotifications = [(PKDashboardMoreMenuFactory *)self _showPassManageNotifications];
    [v10 safelyAddObject:_showPassManageNotifications];
  }

  if ([v7 count])
  {
    v14 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v7];
    [v3 safelyAddObject:v14];
  }

  if ([v10 count])
  {
    v15 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v10];
    [v3 safelyAddObject:v15];
  }

  v16 = [v3 copy];

  return v16;
}

- (id)_appleBalanceMenuItems
{
  paymentPass = [(PKPass *)self->_pass paymentPass];
  v4 = PKCanShowAppleBalanceTopUpOptions();

  if (([(PKAccount *)self->_account supportsTopUp]& 1) != 0)
  {
    supportsAMPTopUp = 1;
  }

  else
  {
    supportsAMPTopUp = [(PKAccount *)self->_account supportsAMPTopUp];
  }

  supportsAMPRedeemGiftcard = [(PKAccount *)self->_account supportsAMPRedeemGiftcard];
  _canShowNotificationsInfo = [(PKDashboardMoreMenuFactory *)self _canShowNotificationsInfo];
  array = [MEMORY[0x1E695DF70] array];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _showPassInfoAction = [(PKDashboardMoreMenuFactory *)self _showPassInfoAction];
  [v9 safelyAddObject:_showPassInfoAction];

  if (_canShowNotificationsInfo)
  {
    _showPassManageNotifications = [(PKDashboardMoreMenuFactory *)self _showPassManageNotifications];
    [v9 safelyAddObject:_showPassManageNotifications];
  }

  if ((v4 & supportsAMPTopUp) == 1)
  {
    _addMoneyAppleBalanceAction = [(PKDashboardMoreMenuFactory *)self _addMoneyAppleBalanceAction];
    [array safelyAddObject:_addMoneyAppleBalanceAction];
  }

  if ((v4 & supportsAMPRedeemGiftcard) == 1)
  {
    _redeemAction = [(PKDashboardMoreMenuFactory *)self _redeemAction];
    [array safelyAddObject:_redeemAction];
  }

  if ([array count])
  {
    v14 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v9];
    [array safelyAddObject:v14];
  }

  else
  {
    [array addObjectsFromArray:v9];
  }

  v15 = [array copy];

  return v15;
}

- (id)_showPassManageNotifications
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedString(&cfstr_DashboardMoreM_2.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bell.badge"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __58__PKDashboardMoreMenuFactory__showPassManageNotifications__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B9998], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __58__PKDashboardMoreMenuFactory__showPassManageNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained[12] paymentPass];

    v3 = objc_loadWeakRetained(v5 + 18);
    v4 = v3;
    if (v2)
    {
      [(PKDashboardPassGroupViewController *)v3 presentManagePaymentPassNotificationsControllerWithDataProvider:v5[9] peerPaymentAccount:v5[14] bankConnectAccount:v5[13] account:?];
    }

    else
    {
      [(PKDashboardPassGroupViewController *)v3 presentManageBarcodePassNotifications];
    }

    WeakRetained = v5;
  }
}

- (id)_showEnteredValuePassActions
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKPassLocalizedStringWithFormat();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"plus", 0}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PKDashboardMoreMenuFactory__showEnteredValuePassActions__block_invoke;
  v7[3] = &unk_1E8010A60;
  objc_copyWeak(&v8, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v7];

  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9768]];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __58__PKDashboardMoreMenuFactory__showEnteredValuePassActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentActionsWithPaymentDataProvider:v3[5] webService:1 actionType:v3[4] transitBalanceModel:?];

    WeakRetained = v3;
  }
}

- (id)_showCombinedPassActionsBuy
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKPassLocalizedStringWithFormat();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"creditcard", 0}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKDashboardMoreMenuFactory__showCombinedPassActionsBuy__block_invoke;
  v7[3] = &unk_1E8010A60;
  objc_copyWeak(&v8, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v7];

  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9580]];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __57__PKDashboardMoreMenuFactory__showCombinedPassActionsBuy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentCombinedActionsWithPaymentDataProvider:v3[5] webService:v3[4] balanceModel:0 mode:?];

    WeakRetained = v3;
  }
}

- (id)_showCombinedPassActionsRenew
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKPassLocalizedStringWithFormat();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"creditcard", 0}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKDashboardMoreMenuFactory__showCombinedPassActionsRenew__block_invoke;
  v7[3] = &unk_1E8010A60;
  objc_copyWeak(&v8, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v7];

  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9B60]];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __59__PKDashboardMoreMenuFactory__showCombinedPassActionsRenew__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentCombinedActionsWithPaymentDataProvider:v3[5] webService:v3[4] balanceModel:1 mode:?];

    WeakRetained = v3;
  }
}

- (id)_showSelectedItemPassActions
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKPassLocalizedStringWithFormat();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"creditcard", 0}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PKDashboardMoreMenuFactory__showSelectedItemPassActions__block_invoke;
  v7[3] = &unk_1E8010A60;
  objc_copyWeak(&v8, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v7];

  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9B60]];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __58__PKDashboardMoreMenuFactory__showSelectedItemPassActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentActionsWithPaymentDataProvider:v3[5] webService:2 actionType:v3[4] transitBalanceModel:?];

    WeakRetained = v3;
  }
}

- (id)_showPassActionGroups
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKPassLocalizedStringWithFormat();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"creditcard", 0}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PKDashboardMoreMenuFactory__showPassActionGroups__block_invoke;
  v7[3] = &unk_1E8010A60;
  objc_copyWeak(&v8, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v7];

  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9580]];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __51__PKDashboardMoreMenuFactory__showPassActionGroups__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentActionGroupsWithPaymentDataProvider:v3[4] balanceModel:v3[5] webService:?];

    WeakRetained = v3;
  }
}

- (id)_showPassInfoAction
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  _showPassInfoLocalizedTitle = [(PKDashboardMoreMenuFactory *)self _showPassInfoLocalizedTitle];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __49__PKDashboardMoreMenuFactory__showPassInfoAction__block_invoke;
  v11 = &unk_1E8010A60;
  objc_copyWeak(&v12, &location);
  v6 = [v3 actionWithTitle:_showPassInfoLocalizedTitle image:v5 identifier:0 handler:&v8];

  [v6 setAccessibilityIdentifier:{*MEMORY[0x1E69B95B8], v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __49__PKDashboardMoreMenuFactory__showPassInfoAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentPassDetailsAnimated:0 completion:?];

    WeakRetained = v3;
  }
}

- (id)_addToCalendarAction
{
  objc_initWeak(&location, self);
  v3 = PKIsAuthorizedForEvents();
  if (v3 == 2 || [(PKPass *)self->_pass style]!= 9)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v4 = v3 == 1;
  v5 = PKEventStore();
  v6 = PKExistingCalendarEventsFromPass();
  v7 = v6;
  if (v3 == 1 && v6 && [v6 count])
  {
    v8 = PKNextCalendarEventFromEvents();
    v9 = MEMORY[0x1E69DC628];
    v10 = PKLocalizedString(&cfstr_DashboardMoreM_5.isa);
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __50__PKDashboardMoreMenuFactory__addToCalendarAction__block_invoke;
    v25[3] = &unk_1E80158E8;
    objc_copyWeak(&v28, &location);
    v12 = v8;
    v26 = v12;
    v27 = v5;
    v13 = [v9 actionWithTitle:v10 image:v11 identifier:0 handler:v25];

    objc_destroyWeak(&v28);
  }

  else
  {
    _possibleCalendarEventsCount = [(PKDashboardMoreMenuFactory *)self _possibleCalendarEventsCount];
    if (!_possibleCalendarEventsCount)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v15 = @"calendar.badge.plus";
    if (_possibleCalendarEventsCount == 1)
    {
      v15 = @"calendar";
    }

    v12 = v15;
    if ([(PKDashboardMoreMenuFactory *)self _upcomingInformationCanCreateCalendarEvents])
    {
      v16 = @"DASHBOARD_MORE_MENU_ADD_THIS_CALENDAR";
    }

    else
    {
      v16 = @"DASHBOARD_MORE_MENU_ADD_TO_CALENDAR";
    }

    v17 = PKLocalizedString(&v16->isa);
    v18 = MEMORY[0x1E69DC628];
    v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:v12];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__PKDashboardMoreMenuFactory__addToCalendarAction__block_invoke_2;
    v21[3] = &unk_1E8018F80;
    objc_copyWeak(&v23, &location);
    v24 = v4;
    v22 = v5;
    v13 = [v18 actionWithTitle:v17 image:v19 identifier:0 handler:v21];

    objc_destroyWeak(&v23);
  }

  [v13 setAccessibilityIdentifier:*MEMORY[0x1E69B9598]];
LABEL_17:

LABEL_18:
  objc_destroyWeak(&location);

  return v13;
}

void __50__PKDashboardMoreMenuFactory__addToCalendarAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 18);
    [PKDashboardPassGroupViewController presentExistingCalendarEvent:v3 eventStore:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void __50__PKDashboardMoreMenuFactory__addToCalendarAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__PKDashboardMoreMenuFactory__addToCalendarAction__block_invoke_3;
    v6[3] = &unk_1E8010A10;
    v6[4] = WeakRetained;
    v7 = v5;
    [v3 _performAddToCalendarRequestNeedingPermission:(v4 & 1) == 0 eventStore:v7 requestBlock:v6];
  }
}

- (id)_addAllToCalendarAction
{
  v3 = PKIsAuthorizedForEvents();
  if (v3 == 2 || (v4 = v3, [(PKPass *)self->_pass style]!= 9))
  {
    v13 = 0;
  }

  else
  {
    upcomingPassInformation = [(PKPass *)self->_pass upcomingPassInformation];
    if (upcomingPassInformation)
    {
      v6 = PKEventStore();
      v7 = MEMORY[0x1BFB42370](self->_pass, upcomingPassInformation, v6);
      v8 = v7;
      v9 = v4 == 1;
      if (v4 == 1 && [v7 count] || !-[PKDashboardMoreMenuFactory _possibleCalendarEventsCount](self, "_possibleCalendarEventsCount") || !-[PKDashboardMoreMenuFactory _upcomingInformationCanCreateCalendarEvents](self, "_upcomingInformationCanCreateCalendarEvents"))
      {
        v13 = 0;
      }

      else
      {
        objc_initWeak(&location, self);
        v10 = MEMORY[0x1E69DC628];
        v11 = PKLocalizedString(&cfstr_DashboardMoreM_8.isa);
        v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar.badge.plus"];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __53__PKDashboardMoreMenuFactory__addAllToCalendarAction__block_invoke;
        v15[3] = &unk_1E8018F80;
        objc_copyWeak(&v17, &location);
        v18 = v9;
        v16 = v6;
        v13 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

void __53__PKDashboardMoreMenuFactory__addAllToCalendarAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__PKDashboardMoreMenuFactory__addAllToCalendarAction__block_invoke_2;
    v6[3] = &unk_1E8010A10;
    v6[4] = WeakRetained;
    v7 = v5;
    [v3 _performAddToCalendarRequestNeedingPermission:(v4 & 1) == 0 eventStore:v7 requestBlock:v6];
  }
}

- (id)_showTransferAction
{
  objc_initWeak(&location, self);
  transferURL = [(PKPass *)self->_pass transferURL];
  if (transferURL)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = PKLocalizedString(&cfstr_DashboardMoreM_9.isa);
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.line.dotted.person"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__PKDashboardMoreMenuFactory__showTransferAction__block_invoke;
    v9[3] = &unk_1E8012328;
    objc_copyWeak(&v11, &location);
    v10 = transferURL;
    v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v9];

    [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9D68]];
    objc_destroyWeak(&v11);
  }

  else
  {
    v7 = 0;
  }

  objc_destroyWeak(&location);

  return v7;
}

void __49__PKDashboardMoreMenuFactory__showTransferAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKOpenURL();
    WeakRetained = v2;
  }
}

- (id)_showSellAction
{
  objc_initWeak(&location, self);
  sellURL = [(PKPass *)self->_pass sellURL];
  if (sellURL)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = PKLocalizedString(&cfstr_DashboardMoreM_10.isa);
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"banknote"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__PKDashboardMoreMenuFactory__showSellAction__block_invoke;
    v9[3] = &unk_1E8012328;
    objc_copyWeak(&v11, &location);
    v10 = sellURL;
    v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v9];

    [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9C08]];
    objc_destroyWeak(&v11);
  }

  else
  {
    v7 = 0;
  }

  objc_destroyWeak(&location);

  return v7;
}

void __45__PKDashboardMoreMenuFactory__showSellAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKOpenURL();
    WeakRetained = v2;
  }
}

- (id)_showTransitCardNumberAction
{
  if ([(PKPass *)self->_pass passType]== PKPassTypeSecureElement)
  {
    paymentPass = [(PKPass *)self->_pass paymentPass];
    if ([paymentPass isStoredValuePass])
    {
      objc_initWeak(&location, self);
      v4 = MEMORY[0x1E69DC628];
      v5 = PKLocalizedString(&cfstr_DashboardMoreM_11.isa);
      v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard.and.123"];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __58__PKDashboardMoreMenuFactory__showTransitCardNumberAction__block_invoke;
      v12 = &unk_1E8010A60;
      objc_copyWeak(&v13, &location);
      v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:&v9];

      [v7 setAccessibilityIdentifier:{*MEMORY[0x1E69B95C8], v9, v10, v11, v12}];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __58__PKDashboardMoreMenuFactory__showTransitCardNumberAction__block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v3 presentTransitCardNumber];

    v4 = objc_loadWeakRetained(v2 + 18);
    v5 = *MEMORY[0x1E69BA440];
    v8[0] = *MEMORY[0x1E69BA680];
    v8[1] = v5;
    v6 = *MEMORY[0x1E69BA4A8];
    v9[0] = *MEMORY[0x1E69BA6F0];
    v9[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [(PKDashboardPassGroupViewController *)v4 reportEventForPassIfNecessary:v7];
  }
}

- (BOOL)_canShowPaymentCardNumberAction
{
  if ([(PKPass *)self->_pass passType]!= PKPassTypeSecureElement)
  {
    return 0;
  }

  pass = [(PKDashboardMoreMenuFactory *)self pass];
  secureElementPass = [pass secureElementPass];

  if ([secureElementPass isAppleCardPass])
  {
    v5 = MEMORY[0x1E69B8770];
    cardAvailabilityInfo = [(PKAccount *)self->_account cardAvailabilityInfo];
    deviceAccountNumberSuffix = [secureElementPass deviceAccountNumberSuffix];
    v8 = [v5 shouldShowCardNumbersWithAccountAvailabilityInfo:cardAvailabilityInfo dpanSuffixForPaymentApplication:deviceAccountNumberSuffix];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_showPaymentCardNumberAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedString(&cfstr_DashboardMoreM_12.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard.and.123"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __58__PKDashboardMoreMenuFactory__showPaymentCardNumberAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B95C8], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __58__PKDashboardMoreMenuFactory__showPaymentCardNumberAction__block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 18);
    [v3 presentCardNumbers];

    v4 = objc_loadWeakRetained(v2 + 18);
    v5 = *MEMORY[0x1E69BA440];
    v8[0] = *MEMORY[0x1E69BA680];
    v8[1] = v5;
    v6 = *MEMORY[0x1E69BA4A8];
    v9[0] = *MEMORY[0x1E69BA6F0];
    v9[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [(PKDashboardPassGroupViewController *)v4 reportEventForPassIfNecessary:v7];
  }
}

- (BOOL)_canShowPredictedTransactionsAction
{
  if ([(PKPass *)self->_pass passType]!= PKPassTypeSecureElement)
  {
    return 0;
  }

  pass = [(PKDashboardMoreMenuFactory *)self pass];
  secureElementPass = [pass secureElementPass];

  v8 = 1;
  if (![secureElementPass isAppleCardPass] || (PKAppleCardUpcomingPaymentsEnabled() & 1) == 0)
  {
    bankConnectAccount = [(PKDashboardMoreMenuFactory *)self bankConnectAccount];
    if (!bankConnectAccount || (v6 = bankConnectAccount, v7 = PKBankConnectUpcomingPaymentsEnabled(), v6, (v7 & 1) == 0))
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_showPredictedTransactionsAction
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v4 = PKLocalizedString(&cfstr_DashboardMoreM_13.isa);
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"dollarsign.arrow.trianglehead.counterclockwise.rotate.90"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__PKDashboardMoreMenuFactory__showPredictedTransactionsAction__block_invoke;
  v8[3] = &unk_1E8012328;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __62__PKDashboardMoreMenuFactory__showPredictedTransactionsAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 17);
    v4 = [v3 navigationController];

    v5 = [*(a1 + 32) pass];
    v6 = [v5 paymentPass];

    v7 = [_TtC9PassKitUI53FinanceKitPredictedTransactionsViewControllerProvider makeViewControllerForPass:v6 navigationController:v4];
    [v4 pushViewController:v7 animated:1];

    WeakRetained = v8;
  }
}

- (id)_removePassAction
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  _removePassLocalizedTitle = [(PKDashboardMoreMenuFactory *)self _removePassLocalizedTitle];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __47__PKDashboardMoreMenuFactory__removePassAction__block_invoke;
  v11 = &unk_1E8010A60;
  objc_copyWeak(&v12, &location);
  v6 = [v3 actionWithTitle:_removePassLocalizedTitle image:v5 identifier:0 handler:&v8];

  [v6 setAttributes:{2, v8, v9, v10, v11}];
  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __47__PKDashboardMoreMenuFactory__removePassAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    v3 = [v2 navigationController];
    v4 = objc_loadWeakRetained(v14 + 20);
    v5 = [PKViewControllerPresentationTarget targetWithPresentingViewController:v3 sourceItem:v4];

    if ([v14 moreMenuType] == 1)
    {
      [PKPassDeleteHelper presentDeleteBarcodePassAlertForPass:v14[12] withHandler:v2 presentationTarget:v5];
    }

    else
    {
      v6 = [v14[12] paymentPass];
      v7 = [v6 hasMerchantTokens];
      v8 = v14[13];
      if (v7)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69B8A60]);
        LOBYTE(v13) = 0;
        [PKPassDeleteHelper presentMerchantTokenDeletePaymentPassAlertForPass:v6 withAccount:v8 merchantTokensResponse:0 deleteHander:v2 passLibraryDataProvider:v9 navigationController:v3 presentationTarget:v5 isBridge:v13];
      }

      else
      {
        v11 = v14[3];
        v10 = v14[4];
        v12 = v14[2];
        v9 = objc_alloc_init(MEMORY[0x1E69B8A60]);
        [PKPassDeleteHelper presentDeletePaymentPassAlertForPass:v6 withAccount:v8 paymentServiceDataProvider:v12 transitBalanceModel:v10 transitPassProperties:v11 fkInstitution:0 detailViewStyle:0 deleteHander:v2 passLibraryDataProvider:v9 presentationTarget:v5];
      }
    }

    WeakRetained = v14;
  }
}

- (id)_archivePassAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedString(&cfstr_ExpiredPassesM.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"archivebox.circle"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PKDashboardMoreMenuFactory__archivePassAction__block_invoke;
  v7[3] = &unk_1E8010A60;
  objc_copyWeak(&v8, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __48__PKDashboardMoreMenuFactory__archivePassAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    v3 = [v4[12] uniqueID];
    [(PKDashboardPassGroupViewController *)v2 manuallyArchivePassWithUniqueID:v3];

    WeakRetained = v4;
  }
}

- (id)_addMoneyPeerPaymentAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedString(&cfstr_DashboardMoreM_3.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"dollarsign.circle"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __56__PKDashboardMoreMenuFactory__addMoneyPeerPaymentAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B93F0], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __56__PKDashboardMoreMenuFactory__addMoneyPeerPaymentAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentPeerPaymentActionViewControllerForAction:v3[6] passLibraryDataProvider:?];

    WeakRetained = v3;
  }
}

- (id)_transferToBankAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedString(&cfstr_DashboardMoreM_14.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrowshape.turn.up.right"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__PKDashboardMoreMenuFactory__transferToBankAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B9D70], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __51__PKDashboardMoreMenuFactory__transferToBankAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentPeerPaymentActionViewControllerForAction:v3[6] passLibraryDataProvider:?];

    WeakRetained = v3;
  }
}

- (id)_peerPaymentFamilyAction
{
  familyMembersByAltDSID = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
  altDSID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount altDSID];
  v5 = [familyMembersByAltDSID objectForKey:altDSID];

  if ([v5 isOrganizer])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 isParent] ^ 1;
  }

  role = [(PKPeerPaymentAccount *)self->_peerPaymentAccount role];
  supportsFamilySharing = [(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsFamilySharing];
  v9 = 0;
  if (!role && supportsFamilySharing && (v6 & 1) == 0)
  {
    familyMembers = [(PKFamilyMemberCollection *)self->_familyCollection familyMembers];
    v11 = [PKPeerPaymentFamilyMemberRowModel sortedPeerPaymentFamilyMemberRowModelsForFamilyMembers:familyMembers peerPaymentAccount:self->_peerPaymentAccount];

    if ([v11 count])
    {
      objc_initWeak(&location, self);
      v12 = MEMORY[0x1E69DC628];
      v13 = PKLocalizedPeerPaymentString(&cfstr_MoreMenuFamily.isa);
      v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2"];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54__PKDashboardMoreMenuFactory__peerPaymentFamilyAction__block_invoke;
      v16[3] = &unk_1E8012328;
      objc_copyWeak(&v17, &location);
      v16[4] = self;
      v9 = [v12 actionWithTitle:v13 image:v14 identifier:0 handler:v16];

      [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B97D0]];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {

      v9 = 0;
    }
  }

  return v9;
}

void __54__PKDashboardMoreMenuFactory__peerPaymentFamilyAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [PKPeerPaymentFamilySettingsViewController alloc];
    v4 = [*(*(a1 + 32) + 96) paymentPass];
    v5 = [(PKPeerPaymentFamilySettingsViewController *)v3 initWithPass:v4 dataProvider:*(*(a1 + 32) + 16) peerPaymentAccount:*(*(a1 + 32) + 72) familyCollection:*(*(a1 + 32) + 120)];

    v6 = objc_loadWeakRetained(v8 + 17);
    v7 = [v6 navigationController];
    [v7 pushViewController:v5 animated:1];

    WeakRetained = v8;
  }
}

- (id)_recurringPeerPaymentsPaymentsAction
{
  currentUser = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
  secureElementPass = [(PKPass *)self->_pass secureElementPass];
  devicePrimaryPaymentApplication = [secureElementPass devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  if (![(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsRecurringPayments])
  {
    goto LABEL_5;
  }

  v7 = 0;
  if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount isEligibleForRecurringPaymentsForUser:currentUser]&& state != 7)
  {
    if (PKIsVision())
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69DC628];
    v10 = PKLocalizedPeerPaymentRecurringString(&cfstr_DashboardMoreM.isa);
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock.arrow.2.circlepath"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __66__PKDashboardMoreMenuFactory__recurringPeerPaymentsPaymentsAction__block_invoke;
    v15 = &unk_1E8010A60;
    objc_copyWeak(&v16, &location);
    v7 = [v9 actionWithTitle:v10 image:v11 identifier:0 handler:&v12];

    [v7 setAccessibilityIdentifier:{*MEMORY[0x1E69B9B30], v12, v13, v14, v15}];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

LABEL_6:

  return v7;
}

void __66__PKDashboardMoreMenuFactory__recurringPeerPaymentsPaymentsAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentPeerPaymentRecurringPaymentsWithIdentifier:0 completion:?];

    WeakRetained = v3;
  }
}

- (id)_savingsDetailsAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedFeatureString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__PKDashboardMoreMenuFactory__savingsDetailsAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B96F8], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __51__PKDashboardMoreMenuFactory__savingsDetailsAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
    v3 = [v7 account];
    [(PKAccountViewInterfaceConfiguration *)v2 setAccount:v3];

    [(PKAccountViewInterfaceConfiguration *)v2 setViewStyle:0];
    v4 = [[PKSavingsAccountDetailsViewController alloc] initWithConfiguration:v2];
    v5 = objc_loadWeakRetained(v7 + 17);
    v6 = [v5 navigationController];
    [v6 pushViewController:v4 animated:1];

    WeakRetained = v7;
  }
}

- (id)_showSavingsDocumentsAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedFeatureString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.plaintext"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __57__PKDashboardMoreMenuFactory__showSavingsDocumentsAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B9718], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __57__PKDashboardMoreMenuFactory__showSavingsDocumentsAction__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PKAccountDocumentsViewInterfaceConfiguration);
    v3 = [WeakRetained account];
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(PKAccountDocumentsViewInterfaceConfiguration *)v2 setAccounts:v4];

    v5 = [[PKAccountDocumentsViewController alloc] initWithConfiguration:v2];
    v6 = objc_loadWeakRetained(WeakRetained + 17);
    v7 = [v6 navigationController];
    [v7 pushViewController:v5 animated:1];
  }
}

- (id)_showAccountManageNotifications
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedString(&cfstr_DashboardMoreM_2.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bell.badge"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __61__PKDashboardMoreMenuFactory__showAccountManageNotifications__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B9998], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __61__PKDashboardMoreMenuFactory__showAccountManageNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
    v3 = [v7 account];
    [(PKAccountViewInterfaceConfiguration *)v2 setAccount:v3];

    [(PKAccountViewInterfaceConfiguration *)v2 setViewStyle:0];
    v4 = [[PKAccountManageNotificationsViewController alloc] initWithConfiguration:v2];
    v5 = objc_loadWeakRetained(v7 + 17);
    v6 = [v5 navigationController];
    [v6 pushViewController:v4 animated:1];

    WeakRetained = v7;
  }
}

- (id)_showSavingsDebugAction
{
  if ((PKSavingsDemoAccountEnabled() & 1) == 0 && os_variant_has_internal_ui() && PKTransactionDebugDetailsEnabled())
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69DC628];
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant"];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __53__PKDashboardMoreMenuFactory__showSavingsDebugAction__block_invoke;
    v10 = &unk_1E8010A60;
    objc_copyWeak(&v11, &location);
    v5 = [v3 actionWithTitle:@"[INTERNAL] Diagnostics" image:v4 identifier:0 handler:&v7];

    [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B96A8], v7, v8, v9, v10}];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __53__PKDashboardMoreMenuFactory__showSavingsDebugAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
    v3 = [v7 account];
    [(PKAccountViewInterfaceConfiguration *)v2 setAccount:v3];

    [(PKAccountViewInterfaceConfiguration *)v2 setViewStyle:0];
    v4 = [[PKAccountDebugViewController alloc] initWithConfiguration:v2];
    v5 = objc_loadWeakRetained(v7 + 17);
    v6 = [v5 navigationController];
    [v6 pushViewController:v4 animated:1];

    WeakRetained = v7;
  }
}

- (id)_openRewardsHubAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedFeatureString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__PKDashboardMoreMenuFactory__openRewardsHubAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B9B90], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __51__PKDashboardMoreMenuFactory__openRewardsHubAction__block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v3 presentRewardsHubWithCompletion:?];

    v4 = objc_loadWeakRetained(v2 + 18);
    v5 = *MEMORY[0x1E69BA440];
    v8[0] = *MEMORY[0x1E69BA680];
    v8[1] = v5;
    v6 = *MEMORY[0x1E69BB658];
    v9[0] = *MEMORY[0x1E69BA6F0];
    v9[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [(PKDashboardPassGroupViewController *)v4 reportEventForPassIfNecessary:v7];
  }
}

- (id)_showScheduledPaymentsAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedFeatureString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock.arrow.2.circlepath"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __58__PKDashboardMoreMenuFactory__showScheduledPaymentsAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B9BC8], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __58__PKDashboardMoreMenuFactory__showScheduledPaymentsAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentScheduledPayments];

    WeakRetained = v3;
  }
}

- (id)_showInstallmentPlansAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedFeatureString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar.badge.clock"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __57__PKDashboardMoreMenuFactory__showInstallmentPlansAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B98A0], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __57__PKDashboardMoreMenuFactory__showInstallmentPlansAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentInstallmentPlans];

    WeakRetained = v3;
  }
}

- (id)_addMoneyAppleBalanceAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedFeatureString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"dollarsign.circle"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __57__PKDashboardMoreMenuFactory__addMoneyAppleBalanceAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B93F0], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __57__PKDashboardMoreMenuFactory__addMoneyAppleBalanceAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentAddMoneyAppleBalance];

    WeakRetained = v3;
  }
}

- (id)_redeemAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedFeatureString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"giftcard"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __43__PKDashboardMoreMenuFactory__redeemAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B9B48], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __43__PKDashboardMoreMenuFactory__redeemAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentRedeemGiftcard];

    WeakRetained = v3;
  }
}

- (id)_showHasHomeGuestAccessScheduleAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedHomeKeyString(&cfstr_PassDetailsSho.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKDashboardMoreMenuFactory__showHasHomeGuestAccessScheduleAction__block_invoke;
  v7[3] = &unk_1E8010A60;
  objc_copyWeak(&v8, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __67__PKDashboardMoreMenuFactory__showHasHomeGuestAccessScheduleAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 18);
    [(PKDashboardPassGroupViewController *)v2 presentRestrictedGuestAccessScheduleWithHomeIdentifier:?];

    WeakRetained = v3;
  }
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  if (self->_pass != passCopy)
  {
    objc_storeStrong(&self->_pass, pass);
    [(PKDashboardMoreMenuFactory *)self _reevaluateMoreMenuType];
    if (self->_moreMenuType == 3)
    {
      v5 = [PKIdentityReplaceFingerprintHelper alloc];
      secureElementPass = [(PKPass *)passCopy secureElementPass];
      v7 = [(PKIdentityReplaceFingerprintHelper *)v5 initWithPass:secureElementPass isRemote:0];
      fingerprintHelper = self->_fingerprintHelper;
      self->_fingerprintHelper = v7;
    }

    else
    {
      secureElementPass = self->_fingerprintHelper;
      self->_fingerprintHelper = 0;
    }

    [(PKDashboardMoreMenuFactory *)self _recalculateTransitPassDetails];
    if ([(PKDashboardMoreMenuFactory *)self _isPeerPaymentPass])
    {
      mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
      targetDevice = [mEMORY[0x1E69B9020] targetDevice];

      if (!self->_peerPaymentAccount)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__peerPaymentAccountChanged_ name:*MEMORY[0x1E69BC378] object:targetDevice];
      }

      account = [targetDevice account];
      peerPaymentAccount = self->_peerPaymentAccount;
      self->_peerPaymentAccount = account;
    }
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_account, account);
    [(PKDashboardMoreMenuFactory *)self _reevaluateMoreMenuType];
  }
}

- (void)setBankConnectAccount:(id)account
{
  accountCopy = account;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_bankConnectAccount, account);
    [(PKDashboardMoreMenuFactory *)self _reloadMoreMenuItems];
  }
}

- (int64_t)_moreMenuTypeValue
{
  pass = self->_pass;
  account = self->_account;
  if (pass | account)
  {
    if ([(PKAccount *)account type]== 4)
    {
      return 7;
    }

    v6 = self->_pass;
    if (v6)
    {
      if ([(PKPass *)v6 passType]== PKPassTypeBarcode)
      {
        return 1;
      }

      secureElementPass = [(PKPass *)self->_pass secureElementPass];
      v8 = secureElementPass;
      if (!secureElementPass)
      {
        v5 = 0;
        goto LABEL_29;
      }

      if ([secureElementPass isTransitPass])
      {
        v5 = 4;
LABEL_29:

        return v5;
      }

      if ([v8 isEMoneyPass])
      {
        v5 = 6;
        goto LABEL_29;
      }

      if ([v8 isAccessPass])
      {
        v5 = 5;
        goto LABEL_29;
      }

      if ([(PKDashboardMoreMenuFactory *)self _isCreditPass])
      {
        v5 = 8;
        goto LABEL_29;
      }

      if ([(PKDashboardMoreMenuFactory *)self _isPeerPaymentPass])
      {
        v5 = 9;
        goto LABEL_29;
      }

      if ([(PKDashboardMoreMenuFactory *)self _isAppleBalancePass])
      {
        v5 = 10;
        goto LABEL_29;
      }

      associatedAccountServiceAccountIdentifier = [v8 associatedAccountServiceAccountIdentifier];
      v10 = [associatedAccountServiceAccountIdentifier length];

      if ([v8 cardType] == 1)
      {
        if (v10)
        {
          goto LABEL_24;
        }
      }

      else if ([v8 cardType] | v10)
      {
LABEL_24:
        if ([v8 isIdentityPass])
        {
          v5 = 3;
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_29;
      }

      v5 = 2;
      goto LABEL_29;
    }
  }

  return 0;
}

- (id)_showPassInfoLocalizedTitle
{
  moreMenuType = [(PKDashboardMoreMenuFactory *)self moreMenuType];
  if (moreMenuType > 5)
  {
    if (moreMenuType > 8)
    {
      if (moreMenuType == 9)
      {
        v4 = @"DASHBOARD_MORE_MENU_SHOW_APPLE_CASH_PASS_INFO";
        goto LABEL_24;
      }

      if (moreMenuType == 10)
      {
        v7 = PKLocalizedAppleBalanceString(&cfstr_DashboardMoreM_23.isa);
        goto LABEL_25;
      }
    }

    else
    {
      if (moreMenuType == 6)
      {
        v4 = @"DASHBOARD_MORE_MENU_SHOW_EMONEY_PASS_INFO";
        goto LABEL_24;
      }

      if (moreMenuType == 8)
      {
        v4 = @"DASHBOARD_MORE_MENU_SHOW_APPLE_CARD_PASS_INFO";
        goto LABEL_24;
      }
    }

LABEL_23:
    v4 = @"DASHBOARD_MORE_MENU_SHOW_GENERIC_PASS_INFO";
    goto LABEL_24;
  }

  if (moreMenuType > 3)
  {
    if (moreMenuType == 4)
    {
      v4 = @"DASHBOARD_MORE_MENU_SHOW_TRANSIT_PASS_INFO";
      goto LABEL_24;
    }

    secureElementPass = [(PKPass *)self->_pass secureElementPass];
    accessType = [secureElementPass accessType];

    if (accessType > 3)
    {
      switch(accessType)
      {
        case 4:
          v4 = @"DASHBOARD_MORE_MENU_SHOW_ACCESS_PASS_CAR_INFO";
          goto LABEL_24;
        case 5:
          v4 = @"DASHBOARD_MORE_MENU_SHOW_ACCESS_PASS_MULTI_FAMILY_HOME_INFO";
          goto LABEL_24;
        case 6:
          v4 = @"DASHBOARD_MORE_MENU_SHOW_ACCESS_PASS_URBAN_MOBILITY";
          goto LABEL_24;
      }
    }

    else
    {
      switch(accessType)
      {
        case 1:
          v4 = @"DASHBOARD_MORE_MENU_SHOW_ACCESS_PASS_HOSPITALITY_INFO";
          goto LABEL_24;
        case 2:
          v4 = @"DASHBOARD_MORE_MENU_SHOW_ACCESS_PASS_CORPORATE_INFO";
          goto LABEL_24;
        case 3:
          v4 = @"DASHBOARD_MORE_MENU_SHOW_ACCESS_PASS_HOME_INFO";
          goto LABEL_24;
      }
    }

    v4 = @"DASHBOARD_MORE_MENU_SHOW_GENERIC_CARD_INFO";
    goto LABEL_24;
  }

  if (moreMenuType == 2)
  {
    v4 = @"DASHBOARD_MORE_MENU_SHOW_PAYMENT_PASS_INFO";
    goto LABEL_24;
  }

  if (moreMenuType != 3)
  {
    goto LABEL_23;
  }

  v4 = @"DASHBOARD_MORE_MENU_SHOW_IDENTITY_PASS_INFO";
LABEL_24:
  v7 = PKLocalizedString(&v4->isa);
LABEL_25:

  return v7;
}

- (id)_removePassLocalizedTitle
{
  moreMenuType = [(PKDashboardMoreMenuFactory *)self moreMenuType];
  if (moreMenuType > 5)
  {
    if (moreMenuType > 8)
    {
      if (moreMenuType == 9)
      {
        v4 = @"DASHBOARD_MORE_MENU_REMOVE_APPLE_CASH_PASS";
        goto LABEL_24;
      }

      if (moreMenuType == 10)
      {
        v7 = PKLocalizedAppleBalanceString(&cfstr_DashboardMoreM_38.isa);
        goto LABEL_25;
      }
    }

    else
    {
      if (moreMenuType == 6)
      {
        v4 = @"DASHBOARD_MORE_MENU_REMOVE_EMONEY_PASS";
        goto LABEL_24;
      }

      if (moreMenuType == 8)
      {
        v4 = @"DASHBOARD_MORE_MENU_REMOVE_APPLE_CARD_PASS";
        goto LABEL_24;
      }
    }

LABEL_23:
    v4 = @"DASHBOARD_MORE_MENU_REMOVE_GENERIC_PASS";
    goto LABEL_24;
  }

  if (moreMenuType > 3)
  {
    if (moreMenuType == 4)
    {
      v4 = @"DASHBOARD_MORE_MENU_REMOVE_TRANSIT_PASS";
      goto LABEL_24;
    }

    secureElementPass = [(PKPass *)self->_pass secureElementPass];
    accessType = [secureElementPass accessType];

    if (accessType > 3)
    {
      switch(accessType)
      {
        case 4:
          v4 = @"DASHBOARD_MORE_MENU_REMOVE_ACCESS_PASS_CAR";
          goto LABEL_24;
        case 5:
          v4 = @"DASHBOARD_MORE_MENU_REMOVE_ACCESS_PASS_MULTI_FAMILY_HOME";
          goto LABEL_24;
        case 6:
          v4 = @"DASHBOARD_MORE_MENU_REMOVE_ACCESS_PASS_URBAN_MOBILITY";
          goto LABEL_24;
      }
    }

    else
    {
      switch(accessType)
      {
        case 1:
          v4 = @"DASHBOARD_MORE_MENU_REMOVE_ACCESS_PASS_HOSPITALITY";
          goto LABEL_24;
        case 2:
          v4 = @"DASHBOARD_MORE_MENU_REMOVE_ACCESS_PASS_CORPORATE";
          goto LABEL_24;
        case 3:
          v4 = @"DASHBOARD_MORE_MENU_REMOVE_ACCESS_PASS_HOME";
          goto LABEL_24;
      }
    }

    v4 = @"DASHBOARD_MORE_MENU_REMOVE_GENERIC_CARD";
    goto LABEL_24;
  }

  if (moreMenuType == 2)
  {
    v4 = @"DASHBOARD_MORE_MENU_REMOVE_PAYMENT_PASS";
    goto LABEL_24;
  }

  if (moreMenuType != 3)
  {
    goto LABEL_23;
  }

  v4 = @"DASHBOARD_MORE_MENU_REMOVE_IDENTITY_PASS";
LABEL_24:
  v7 = PKLocalizedString(&v4->isa);
LABEL_25:

  return v7;
}

- (BOOL)_canShowNotificationsInfo
{
  passType = [(PKPass *)self->_pass passType];
  if (passType == PKPassTypeSecureElement)
  {
    paymentPass = [(PKPass *)self->_pass paymentPass];
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    peerPaymentAccount = self->_peerPaymentAccount;
    bankConnectAccount = self->_bankConnectAccount;
    account = [(PKDashboardMoreMenuFactory *)self account];
    v11 = [PKManagePaymentPassNotificationsViewController canShowForPass:paymentPass dataProvider:paymentServiceDataProvider peerPaymentAccount:peerPaymentAccount bankConnectAccount:bankConnectAccount account:account];

    return v11;
  }

  else if (passType)
  {
    return 0;
  }

  else
  {
    pass = self->_pass;

    return [PKManageBarcodePassNotificationsViewController canShowForPass:pass];
  }
}

- (BOOL)_canShowManualArchiveButton
{
  if ((PKExpiredPassesDisabledByUser() & 1) != 0 || !PKManualArchiveEnabled())
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dashboardVC);
  uniqueID = [(PKPass *)self->_pass uniqueID];
  v5 = [(PKDashboardPassGroupViewController *)WeakRetained shouldOfferManualArchivalForPassWithUniqueID:uniqueID];

  return v5;
}

- (void)_recalculateTransitPassDetails
{
  paymentPass = [(PKPass *)self->_pass paymentPass];
  v4 = paymentPass;
  if (!paymentPass || ([paymentPass isStoredValuePass] & 1) == 0)
  {
    transitPassProperties = self->_transitPassProperties;
    self->_transitPassProperties = 0;

    transitBalanceModel = self->_transitBalanceModel;
    self->_transitBalanceModel = 0;

    goto LABEL_13;
  }

  v5 = [MEMORY[0x1E69B9310] passPropertiesForPass:v4];
  v6 = self->_transitPassProperties;
  self->_transitPassProperties = v5;

  v7 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v4];
  v8 = self->_transitBalanceModel;
  self->_transitBalanceModel = v7;

  [(PKTransitBalanceModel *)self->_transitBalanceModel setTransitProperties:self->_transitPassProperties andApplyStoredValueBalances:1];
  uniqueID = [v4 uniqueID];
  devicePrimaryPaymentApplication = [v4 devicePrimaryPaymentApplication];
  v11 = dispatch_group_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__22;
  v42[4] = __Block_byref_object_dispose__22;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__22;
  v40[4] = __Block_byref_object_dispose__22;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__22;
  v38[4] = __Block_byref_object_dispose__22;
  v39 = 0;
  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v11);
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __60__PKDashboardMoreMenuFactory__recalculateTransitPassDetails__block_invoke;
    v33[3] = &unk_1E8016A48;
    v37 = v42;
    v34 = devicePrimaryPaymentApplication;
    v35 = v4;
    v36 = v11;
    [(PKPaymentDefaultDataProvider *)paymentServiceDataProvider transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v34 completion:v33];
  }

  balanceFields = [v4 balanceFields];
  if (![balanceFields count])
  {
    goto LABEL_8;
  }

  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    dispatch_group_enter(v11);
    v15 = self->_paymentServiceDataProvider;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __60__PKDashboardMoreMenuFactory__recalculateTransitPassDetails__block_invoke_2;
    v30[3] = &unk_1E8016A70;
    v32 = v40;
    v31 = v11;
    [(PKPaymentDefaultDataProvider *)v15 balancesForPaymentPassWithUniqueIdentifier:uniqueID completion:v30];
    balanceFields = v31;
LABEL_8:
  }

  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v11);
    v16 = self->_paymentServiceDataProvider;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __60__PKDashboardMoreMenuFactory__recalculateTransitPassDetails__block_invoke_3;
    v27[3] = &unk_1E8012BB0;
    v29 = v38;
    v28 = v11;
    [(PKPaymentDefaultDataProvider *)v16 plansForPaymentPassWithUniqueIdentifier:uniqueID completion:v27];
  }

  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__PKDashboardMoreMenuFactory__recalculateTransitPassDetails__block_invoke_4;
  v20[3] = &unk_1E8018FA8;
  objc_copyWeak(&v25, &location);
  v21 = uniqueID;
  v22 = v42;
  v23 = v40;
  v24 = v38;
  v17 = uniqueID;
  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], v20);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);

LABEL_13:
}

void __60__PKDashboardMoreMenuFactory__recalculateTransitPassDetails__block_invoke(void *a1, void *a2)
{
  v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:a1[5]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[6];

  dispatch_group_leave(v6);
}

void __60__PKDashboardMoreMenuFactory__recalculateTransitPassDetails__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __60__PKDashboardMoreMenuFactory__recalculateTransitPassDetails__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __60__PKDashboardMoreMenuFactory__recalculateTransitPassDetails__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[12] paymentPass];
    v4 = [v3 uniqueID];

    if ([v4 isEqualToString:*(a1 + 32)])
    {
      objc_storeStrong(v5 + 3, *(*(*(a1 + 40) + 8) + 40));
      [v5[4] setTransitProperties:*(*(*(a1 + 40) + 8) + 40)];
      [v5[4] setDynamicBalances:*(*(*(a1 + 48) + 8) + 40)];
      [v5[4] updateWithDynamicCommutePlans:*(*(*(a1 + 56) + 8) + 40)];
      [v5 _reloadMoreMenuItems];
    }

    WeakRetained = v5;
  }
}

- (void)_performAddToCalendarRequestNeedingPermission:(BOOL)permission eventStore:(id)store requestBlock:(id)block
{
  storeCopy = store;
  blockCopy = block;
  v10 = blockCopy;
  if (permission)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v12, &location);
    v11 = v10;
    PKRequestEventsAuthorization();

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy);
  }
}

void __100__PKDashboardMoreMenuFactory__performAddToCalendarRequestNeedingPermission_eventStore_requestBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__PKDashboardMoreMenuFactory__performAddToCalendarRequestNeedingPermission_eventStore_requestBlock___block_invoke_2;
  v7[3] = &unk_1E8018FD0;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
}

void __100__PKDashboardMoreMenuFactory__performAddToCalendarRequestNeedingPermission_eventStore_requestBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 56) == 1 && !*(a1 + 32))
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [WeakRetained _presentNeedsCalendarPermissionsAlert];
    }

    WeakRetained = v3;
  }
}

- (void)_addPassEventsToCalendarWithEventStore:(id)store
{
  storeCopy = store;
  v4 = PKGenerateCalendarEventsFromPass();
  v5 = [v4 count];
  if (v5)
  {
    if (v5 == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dashboardVC);
      firstObject = [v4 firstObject];
      [(PKDashboardPassGroupViewController *)WeakRetained presentEditCalendarEvent:firstObject eventStore:storeCopy];
    }

    else
    {
      PKCommitCalendarEvents();
    }
  }
}

- (void)_addPassAndUpcomingInformationEventsToCalendarWithEventStore:(id)store
{
  storeCopy = store;
  upcomingPassInformation = [(PKPass *)self->_pass upcomingPassInformation];
  v5 = PKGenerateCalendarEventsFromPassAndUpcomingInformation();
  v6 = [v5 count];
  if (v6)
  {
    if (v6 == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dashboardVC);
      firstObject = [v5 firstObject];
      [(PKDashboardPassGroupViewController *)WeakRetained presentEditCalendarEvent:firstObject eventStore:storeCopy];
    }

    else
    {
      PKCommitCalendarEvents();
    }
  }
}

- (void)_presentNeedsCalendarPermissionsAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedString(&cfstr_DashboardMoreM_47.isa);
  v5 = PKLocalizedString(&cfstr_DashboardMoreM_48.isa);
  v13 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedString(&cfstr_DashboardMoreM_49.isa);
  v8 = [v6 actionWithTitle:v7 style:0 handler:&__block_literal_global_98];
  [v13 addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedString(&cfstr_Cancel.isa);
  v11 = [v9 actionWithTitle:v10 style:1 handler:0];
  [v13 addAction:v11];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained presentViewController:v13 animated:1 completion:0];
}

void __67__PKDashboardMoreMenuFactory__presentNeedsCalendarPermissionsAlert__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Privacy&path=CALENDARS"];
  PKOpenURL();
}

- (unint64_t)_feature
{
  pass = [(PKDashboardMoreMenuFactory *)self pass];
  paymentPass = [pass paymentPass];

  feature = [(PKAccount *)self->_account feature];
  if (feature || (feature = [paymentPass associatedAccountFeatureIdentifier]) != 0)
  {
    hasAssociatedPeerPaymentAccount = feature;
  }

  else
  {
    hasAssociatedPeerPaymentAccount = [paymentPass hasAssociatedPeerPaymentAccount];
  }

  return hasAssociatedPeerPaymentAccount;
}

- (id)_passActions
{
  pass = [(PKDashboardMoreMenuFactory *)self pass];
  paymentPass = [pass paymentPass];

  availableActions = [paymentPass availableActions];

  return availableActions;
}

- (BOOL)_isPassActivating
{
  pass = [(PKDashboardMoreMenuFactory *)self pass];
  paymentPass = [pass paymentPass];

  LOBYTE(pass) = [paymentPass activationState] == 2;
  return pass;
}

- (BOOL)_isPassActivated
{
  pass = [(PKDashboardMoreMenuFactory *)self pass];
  paymentPass = [pass paymentPass];

  LOBYTE(pass) = [paymentPass activationState] == 0;
  return pass;
}

- (BOOL)_isPassRequiresActivation
{
  pass = [(PKDashboardMoreMenuFactory *)self pass];
  paymentPass = [pass paymentPass];

  LOBYTE(pass) = [paymentPass activationState] == 1;
  return pass;
}

- (BOOL)_hasValidEnteredValueActions
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(PKDashboardMoreMenuFactory *)self _isPassActivated])
  {
    return 0;
  }

  _passActions = [(PKDashboardMoreMenuFactory *)self _passActions];
  v4 = [_passActions pk_objectsPassingTest:&__block_literal_global_364];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (([*(*(&v12 + 1) + 8 * i) unavailableActionBehavior] & 4) != 0)
        {

          v10 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [v5 count] != 0;
LABEL_13:

  return v10;
}

- (BOOL)_hasCombinedActions
{
  _hasValidSelectedItemActions = [(PKDashboardMoreMenuFactory *)self _hasValidSelectedItemActions];
  if (_hasValidSelectedItemActions)
  {

    LOBYTE(_hasValidSelectedItemActions) = [(PKDashboardMoreMenuFactory *)self _hasGroupActions];
  }

  return _hasValidSelectedItemActions;
}

- (BOOL)_hasValidSelectedItemActions
{
  if (![(PKDashboardMoreMenuFactory *)self _isPassActivated])
  {
    return 0;
  }

  displayableCommutePlanActions = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableCommutePlanActions];
  v4 = [displayableCommutePlanActions pk_objectsPassingTest:&__block_literal_global_366];

  v5 = [v4 count] != 0;
  return v5;
}

BOOL __58__PKDashboardMoreMenuFactory__hasValidSelectedItemActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 2 && objc_msgSend(v2, "isActionAvailable") && (objc_msgSend(v2, "unavailableActionBehavior") & 4) == 0;

  return v3;
}

- (BOOL)_hasGroupActions
{
  if (![(PKDashboardMoreMenuFactory *)self _isPassActivated])
  {
    return 0;
  }

  pass = [(PKDashboardMoreMenuFactory *)self pass];
  paymentPass = [pass paymentPass];

  actionGroups = [paymentPass actionGroups];
  v6 = [actionGroups count] != 0;

  return v6;
}

- (BOOL)_hasExternalActions
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(PKDashboardMoreMenuFactory *)self _isPassActivated])
  {
    pass = [(PKDashboardMoreMenuFactory *)self pass];
    paymentPass = [pass paymentPass];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    actionGroups = [paymentPass actionGroups];
    v6 = [actionGroups countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(actionGroups);
        }

        if ([*(*(&v18 + 1) + 8 * v9) hasExternalActionContent])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [actionGroups countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      actionGroups = [paymentPass availableActions];
      v10 = [actionGroups countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (!v10)
      {
LABEL_21:

        return v10;
      }

      v11 = *v15;
LABEL_12:
      v12 = 0;
      while (1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(actionGroups);
        }

        if ([*(*(&v14 + 1) + 8 * v12) hasExternalActionContent])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [actionGroups countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v10)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }
      }
    }

    LOBYTE(v10) = 1;
    goto LABEL_21;
  }

  LOBYTE(v10) = 0;
  return v10;
}

- (BOOL)_hasTransitCardNumber
{
  if ([(PKDashboardMoreMenuFactory *)self _isPassActivating])
  {
    return 0;
  }

  paymentPass = [(PKPass *)self->_pass paymentPass];
  v5 = [PKTransitCardNumberViewController canShowForPass:paymentPass];

  return v5;
}

- (unint64_t)_possibleCalendarEventsCount
{
  relevantDates = [(PKPass *)self->_pass relevantDates];
  v4 = [relevantDates count];

  if (!v4)
  {
    return 0;
  }

  result = [(PKPass *)self->_pass eventName];
  if (result)
  {
    v6 = result;
    v7 = [result length];

    if (v7)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)_upcomingInformationCanCreateCalendarEvents
{
  v19 = *MEMORY[0x1E69E9840];
  upcomingPassInformation = [(PKPass *)self->_pass upcomingPassInformation];
  v3 = upcomingPassInformation;
  if (upcomingPassInformation)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allEntries = [upcomingPassInformation allEntries];
    v5 = [allEntries countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(allEntries);
          }

          metadata = [*(*(&v14 + 1) + 8 * i) metadata];
          date = [metadata date];
          if (date)
          {
            v11 = date;
            name = [metadata name];

            if (name)
            {
              ++v6;
            }
          }
        }

        v5 = [allEntries countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
      LOBYTE(v5) = v6 != 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  propertiesCopy = properties;
  pass = self->_pass;
  identifierCopy = identifier;
  uniqueID = [(PKPass *)pass uniqueID];
  v10 = [identifierCopy isEqualToString:uniqueID];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__PKDashboardMoreMenuFactory_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = propertiesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

uint64_t __97__PKDashboardMoreMenuFactory_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);

  return [v3 setTransitProperties:v2];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update
{
  updateCopy = update;
  pass = self->_pass;
  identifierCopy = identifier;
  uniqueID = [(PKPass *)pass uniqueID];
  v10 = [identifierCopy isEqualToString:uniqueID];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__PKDashboardMoreMenuFactory_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = updateCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  updateCopy = update;
  pass = self->_pass;
  identifierCopy = identifier;
  uniqueID = [(PKPass *)pass uniqueID];
  v10 = [identifierCopy isEqualToString:uniqueID];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__PKDashboardMoreMenuFactory_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = updateCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (void)_reloadMoreMenuItems
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained menuFactoryDidUpdateMenu:self];
  }
}

- (void)_peerPaymentAccountChanged:(id)changed
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PKDashboardMoreMenuFactory__peerPaymentAccountChanged___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __57__PKDashboardMoreMenuFactory__peerPaymentAccountChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained _isPeerPaymentPass];
    v2 = v8;
    if (v3)
    {
      v4 = [MEMORY[0x1E69B9020] sharedService];
      v5 = [v4 targetDevice];
      v6 = [v5 account];
      v7 = v8[9];
      v8[9] = v6;

      [v8 _reloadMoreMenuItems];
      v2 = v8;
    }
  }
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKDashboardMoreMenuFactory_accountChanged___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __45__PKDashboardMoreMenuFactory_accountChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [*(a1 + 32) accountIdentifier];
    if (v3)
    {
      v4 = [v8[13] accountIdentifier];
      v5 = v3;
      v6 = v5;
      if (v4 == v5)
      {
      }

      else
      {
        if (!v4)
        {

          goto LABEL_10;
        }

        v7 = [v4 isEqualToString:v5];

        if (!v7)
        {
          goto LABEL_10;
        }
      }

      objc_storeStrong(v8 + 13, *(a1 + 32));
    }

LABEL_10:

    WeakRetained = v8;
  }
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (PKDashboardPassGroupViewController)dashboardVC
{
  WeakRetained = objc_loadWeakRetained(&self->_dashboardVC);

  return WeakRetained;
}

- (PKDashboardMoreMenuFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

@end