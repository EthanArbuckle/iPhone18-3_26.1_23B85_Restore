@interface PKDailyCashSelectionSectionController
- (BOOL)shouldHighlightItem:(id)item;
- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier;
- (NSArray)identifiers;
- (PKDailyCashSelectionSectionController)initWithSectionIdentifier:(id)identifier account:(id)account accountService:(id)service delegate:(id)delegate;
- (id)_applyAccessory;
- (id)_checkmarkAccessory;
- (id)_disclosureAccessory;
- (id)_eligibleAccountOfType:(unint64_t)type;
- (id)_hasRedeemedAccessory;
- (id)_pendingApplicationAccessory;
- (id)_presentingViewController;
- (id)_setupAccessory;
- (id)_spinnerAccessory;
- (id)analyticsEventReportWithPreSelect:(BOOL)select;
- (id)cellRegistrationForItem:(id)item;
- (id)dailyCashSelectionItems;
- (id)footerTitle;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_applyRewardsAsStatementCredit;
- (void)_changeRewardsDestination:(unint64_t)destination;
- (void)_changeRewardsDestinationAndOpenAccountIfNeeded:(unint64_t)needed;
- (void)_presentPeerPaymentNotEnabledAlert;
- (void)_reloadSection;
- (void)_reportDailyCashConfirmationEventWithRedemptionType:(unint64_t)type button:(id)button;
- (void)_reportDestinationButtonTapWithRedemptionType:(unint64_t)type;
- (void)accountAdded:(id)added;
- (void)accountChanged:(id)changed;
- (void)accountRemoved:(id)removed;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)dealloc;
- (void)didSelectItem:(id)item;
- (void)featureApplicationAdded:(id)added;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationRemoved:(id)removed;
- (void)paymentSetupDidFinish:(id)finish;
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)preflightWithCompletion:(id)completion;
- (void)presentConfirmationAlertWithTitle:(id)title redemptionType:(unint64_t)type confirmationHandler:(id)handler;
- (void)willDisplayItem:(id)item;
@end

@implementation PKDailyCashSelectionSectionController

- (PKDailyCashSelectionSectionController)initWithSectionIdentifier:(id)identifier account:(id)account accountService:(id)service delegate:(id)delegate
{
  identifierCopy = identifier;
  accountCopy = account;
  serviceCopy = service;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = PKDailyCashSelectionSectionController;
  v15 = [(PKDailyCashSelectionSectionController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeStrong(&v16->_account, account);
    objc_storeStrong(&v16->_accountService, service);
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v16->_paymentService;
    v16->_paymentService = paymentService;
  }

  return v16;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKDailyCashSelectionSectionController;
  [(PKDailyCashSelectionSectionController *)&v3 dealloc];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  creditDetails = [(PKAccount *)self->_account creditDetails];
  self->_currentDestination = [creditDetails rewardsDestination];

  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  account = [mEMORY[0x1E69B9000] account];
  peerPaymentAccount = self->_peerPaymentAccount;
  self->_peerPaymentAccount = account;

  v9 = [PKPeerPaymentAccountResolutionController alloc];
  v10 = self->_peerPaymentAccount;
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  v12 = objc_alloc_init(MEMORY[0x1E69B8A60]);
  v13 = [(PKPeerPaymentAccountResolutionController *)v9 initWithAccount:v10 webService:mEMORY[0x1E69B9020] context:0 delegate:self passLibraryDataProvider:v12];
  peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
  self->_peerPaymentAccountResolutionController = v13;

  [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController setSetupDelegate:self];
  [(PKAccountService *)self->_accountService registerObserver:self];
  [(PKPaymentService *)self->_paymentService registerObserver:self];
  v15 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke;
  v24[3] = &unk_1E8019220;
  v24[4] = self;
  [v15 addOperation:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_4;
  v23[3] = &unk_1E8019220;
  v23[4] = self;
  [v15 addOperation:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_8;
  v22[3] = &unk_1E8019220;
  v22[4] = self;
  [v15 addOperation:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_11;
  v21[3] = &unk_1E8019220;
  v21[4] = self;
  [v15 addOperation:v21];
  null = [MEMORY[0x1E695DFB0] null];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_14;
  v19[3] = &unk_1E8020CB8;
  v20 = completionCopy;
  v17 = completionCopy;
  v18 = [v15 evaluateWithInput:null completion:v19];
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 88);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_2;
  v12[3] = &unk_1E8014420;
  v13 = v6;
  v14 = v7;
  v12[4] = v8;
  v10 = v6;
  v11 = v7;
  [v9 accountsWithCompletion:v12];
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_3;
  v5[3] = &unk_1E8014760;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_5;
  v12[3] = &unk_1E80149E0;
  v13 = v6;
  v14 = v7;
  v12[4] = v8;
  v10 = v6;
  v11 = v7;
  [v9 featureApplicationsWithCompletion:v12];
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_6;
  v5[3] = &unk_1E8014760;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_6(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = [*(*(a1 + 32) + 56) pk_firstObjectPassingTest:&__block_literal_global_208];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  v5 = *(*(a1 + 56) + 16);

  return v5();
}

BOOL __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feature] == 5 && objc_msgSend(v2, "applicationState") == 5;

  return v3;
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 88);
  v10 = [*(v8 + 24) accountIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_9;
  v14[3] = &unk_1E8014A08;
  v11 = *(a1 + 32);
  v15 = v6;
  v16 = v7;
  v14[4] = v11;
  v12 = v6;
  v13 = v7;
  [v9 accountUsersForAccountWithIdentifier:v10 completion:v14];
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_10;
  v5[3] = &unk_1E8014760;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_10(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:a1[5]];
  v3 = a1[4];
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = *(a1[7] + 16);

  return v5();
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, *(a1 + 32));
  v10 = MEMORY[0x1E69B8770];
  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  v13 = [*(v11 + 32) currentAccountUser];
  v14 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_12;
  v17[3] = &unk_1E8020C90;
  objc_copyWeak(&v20, &location);
  v15 = v9;
  v19 = v15;
  v16 = v8;
  v18 = v16;
  [v10 resolutionToReceiveCashbackForAccount:v12 accountUser:v13 withPeerPaymentAccount:v14 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_12(id *a1, uint64_t a2, char a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_13;
  v5[3] = &unk_1E8020C68;
  objc_copyWeak(&v8, a1 + 6);
  v9 = a3;
  v7 = a1[5];
  v6 = a1[4];
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v8);
}

void __65__PKDailyCashSelectionSectionController_preflightWithCompletion___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    WeakRetained[81] = *(a1 + 56);
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (id)dailyCashSelectionItems
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  redeemRewardsFeatureDescriptor = [(PKAccount *)self->_account redeemRewardsFeatureDescriptor];
  supportedDestinations = [redeemRewardsFeatureDescriptor supportedDestinations];
  v6 = supportedDestinations;
  v7 = MEMORY[0x1E695E0F0];
  if (supportedDestinations)
  {
    v7 = supportedDestinations;
  }

  v8 = v7;

  v9 = PKAccountRewardRedemptionTypeToString();
  v42 = v9;
  if (([v8 containsObject:v9] & 1) == 0)
  {
    v10 = [v8 arrayByAddingObject:v9];

    v8 = v10;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v46;
    v15 = off_1E8004000;
    v43 = v3;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = PKAccountRewardRedemptionTypeFromString();
        v18 = objc_alloc_init(v15[373]);
        [v18 setRedemptionType:v17];
        [v18 setLoading:v17 == self->_loadingDestination];
        [v18 setSelected:v17 == self->_currentDestination];
        if (v17 == 1)
        {
          currentPeerPaymentAccountResolution = [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController currentPeerPaymentAccountResolution];
          if ((PKSavingsFDICSignageEnabled() & 1) == 0 && !currentPeerPaymentAccountResolution)
          {
            currentBalance = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
            [v18 setBalance:currentBalance];
          }

          ++v13;
          if (self->_peerPaymentAccount)
          {
            v34 = currentPeerPaymentAccountResolution == 1;
          }

          else
          {
            v34 = 1;
          }

          v35 = !v34;
          [v18 setHasAccount:v35];
          state = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state];
          if ((state - 1) >= 4)
          {
            v37 = 0;
          }

          else
          {
            v37 = state;
          }

          [v18 setState:v37];
          [v3 addObject:v18];
        }

        else
        {
          if (v17 == 3)
          {
            v22 = [(PKDailyCashSelectionSectionController *)self _eligibleAccountOfType:4];
            [v18 setHasAccount:v22 != 0];
            [v18 setHasPendingApplication:self->_pendingSavingsApplication != 0];
            savingsDetails = [v22 savingsDetails];
            accountSummary = [savingsDetails accountSummary];
            currentBalance2 = [accountSummary currentBalance];

            savingsDetails2 = [v22 savingsDetails];
            currencyCode = [savingsDetails2 currencyCode];

            if ((!PKSavingsFDICSignageEnabled() || [v22 FDICBehaviorShowCreditRewardsHubBalance]) && currentBalance2 && currencyCode)
            {
              v31 = PKCurrencyAmountMake();
              [v18 setBalance:v31];
              [v18 setEventToReport:2];
            }

            ++v13;
            [v18 setState:{objc_msgSend(v22, "state")}];
            v3 = v43;
            [v43 addObject:v18];

            goto LABEL_23;
          }

          if (v17 == 2 && self->_allowStatementCreditRedemption)
          {
            creditDetails = [(PKAccount *)self->_account creditDetails];
            accountSummary2 = [creditDetails accountSummary];
            currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
            v22 = [accountSummary2 redeemableRewardsBalanceForUser:currentAccountUser];

            if (v22)
            {
              creditDetails2 = [(PKAccount *)self->_account creditDetails];
              currencyCode2 = [creditDetails2 currencyCode];
              v25 = PKCurrencyAmountMake();

              [v18 setBalance:v25];
            }

            [v18 setHasRedeemed:self->_hasRedeemed];
            [v18 setHasAccount:1];
            v3 = v43;
            [v43 addObject:v18];
LABEL_23:

            v15 = off_1E8004000;
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v12)
      {
        goto LABEL_41;
      }
    }
  }

  v13 = 0;
LABEL_41:

  v38 = [v3 pk_containsObjectPassingTest:&__block_literal_global_145_1];
  if (v13 != 1 || !v38)
  {
    v39 = v42;
    if (!v13 && !self->_allowStatementCreditRedemption)
    {
      goto LABEL_48;
    }

LABEL_47:
    [v3 sortUsingComparator:&__block_literal_global_148];
    v40 = [v3 copy];
    goto LABEL_49;
  }

  v39 = v42;
  if (self->_allowStatementCreditRedemption)
  {
    goto LABEL_47;
  }

LABEL_48:
  v40 = 0;
LABEL_49:

  return v40;
}

uint64_t __64__PKDailyCashSelectionSectionController_dailyCashSelectionItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 redemptionType] - 1;
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1BE116540[v5];
  }

  v7 = [v4 redemptionType];

  if ((v7 - 1) > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1BE116540[v7 - 1];
  }

  v9 = v6 >= v8;
  v10 = v6 > v8;
  if (v9)
  {
    return v10;
  }

  else
  {
    return -1;
  }
}

- (id)analyticsEventReportWithPreSelect:(BOOL)select
{
  selectCopy = select;
  v30 = *MEMORY[0x1E69E9840];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *MEMORY[0x1E69BA538];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_currentDailyCashSelectionItems;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {
    v12 = v5;
    goto LABEL_25;
  }

  v7 = v6;
  v8 = *v26;
  v23 = *MEMORY[0x1E69BA550];
  v9 = *MEMORY[0x1E69BA528];
  v10 = *MEMORY[0x1E69BA530];
  v11 = *MEMORY[0x1E69BA548];
  v12 = v5;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v25 + 1) + 8 * i);
      redemptionType = [v14 redemptionType];
      switch(redemptionType)
      {
        case 3:
          if ([v14 hasAccount])
          {
            v18 = v9;
          }

          else
          {
            v18 = v5;
          }

          [v4 setObject:v18 forKeyedSubscript:v11];
          if ([v14 selected])
          {
            v17 = v11;
            goto LABEL_20;
          }

          break;
        case 2:
          [v4 setObject:v5 forKeyedSubscript:v23];
          continue;
        case 1:
          v16 = [v14 hasAccount] ? v9 : v5;
          [v4 setObject:v16 forKeyedSubscript:v10];
          if ([v14 selected])
          {
            v17 = v10;
LABEL_20:
            v19 = v17;

            v12 = v19;
            continue;
          }

          break;
      }
    }

    v7 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v7);
LABEL_25:

  [v22 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69BA520]];
  if (selectCopy)
  {
    [v22 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69BA540]];
  }

  return v22;
}

- (NSArray)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_identifier;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)shouldHighlightItem:(id)item
{
  itemCopy = item;
  if (PKStoreDemoModeEnabled())
  {
    v5 = 0;
  }

  else
  {
    v6 = itemCopy;
    redemptionType = [v6 redemptionType];
    if (redemptionType == self->_currentDestination)
    {
      hasAccount = [v6 hasAccount];
    }

    else
    {
      hasAccount = 0;
    }

    hasPendingApplication = [v6 hasPendingApplication];
    v5 = 0;
    if (redemptionType != 2 && (hasAccount & 1) == 0)
    {
      v5 = (self->_loadingDestination == 0) & (hasPendingApplication ^ 1);
    }
  }

  return v5;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  if ((PKStoreDemoModeEnabled() & 1) == 0)
  {
    v5 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PKDailyCashSelectionSectionController_didSelectItem___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
    redemptionType = [itemCopy redemptionType];
    [(PKDailyCashSelectionSectionController *)self _changeRewardsDestinationAndOpenAccountIfNeeded:redemptionType];
    [(PKDailyCashSelectionSectionController *)self _reportDestinationButtonTapWithRedemptionType:redemptionType];
  }
}

void __55__PKDailyCashSelectionSectionController_didSelectItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained deselectCells];
}

- (void)willDisplayItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = itemCopy;
  if (isKindOfClass)
  {
    eventToReport = [itemCopy eventToReport];
    v5 = itemCopy;
    if (eventToReport)
    {
      if (self->_account)
      {
        v7 = eventToReport;
        if (!self->_deviceEventReporter)
        {
          v8 = objc_alloc(MEMORY[0x1E69B8358]);
          account = self->_account;
          mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
          v11 = [v8 initWithAccount:account paymentWebService:mEMORY[0x1E69B8EF8]];
          deviceEventReporter = self->_deviceEventReporter;
          self->_deviceEventReporter = v11;
        }

        v13 = [objc_alloc(MEMORY[0x1E69B8390]) initWithApp:1 page:2];
        [(PKAccountDeviceEventReporter *)self->_deviceEventReporter reportEventIfNecessary:v7 location:v13 completion:0];

        v5 = itemCopy;
      }
    }
  }
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  identifier = self->_identifier;
  v8 = identifierCopy;
  identifierCopy2 = identifier;
  v10 = identifierCopy2;
  if (identifierCopy2 == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !identifierCopy2)
  {

    goto LABEL_9;
  }

  v11 = [(NSString *)v8 isEqualToString:identifierCopy2];

  if (v11)
  {
LABEL_7:
    dailyCashSelectionItems = [(PKDailyCashSelectionSectionController *)self dailyCashSelectionItems];
    currentDailyCashSelectionItems = self->_currentDailyCashSelectionItems;
    self->_currentDailyCashSelectionItems = dailyCashSelectionItems;

    [v6 appendItems:self->_currentDailyCashSelectionItems];
  }

LABEL_9:

  return v6;
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_class();
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC800];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PKDailyCashSelectionSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E8020D20;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v7 = [v6 registrationWithCellClass:v5 configurationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __65__PKDailyCashSelectionSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_53;
  }

  v9 = [v6 traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

  v12 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  [v12 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  v13 = [v12 secondaryTextProperties];
  v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v13 setColor:v14];

  v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], 0);
  v53 = v13;
  [v13 setFont:v15];

  v16 = [v12 imageProperties];
  [v16 setCornerRadius:6.0];

  v17 = [v7 redemptionType];
  v54 = [v7 balance];
  v18 = [v7 state];
  if (v18 > 3)
  {
    if ((v18 - 4) >= 2)
    {
      goto LABEL_14;
    }

    v19 = PKLocalizedFeatureString();
    [v12 setSecondaryText:v19];
    goto LABEL_13;
  }

  if (v18 == 1)
  {
    if (!v54)
    {
      goto LABEL_14;
    }

    v19 = [v54 formattedStringValue];
    v20 = PKLocalizedFeatureString();
    [v12 setSecondaryText:{v20, v19}];
    goto LABEL_12;
  }

  if (v18 == 2 || v18 == 3)
  {
    v21 = PKLocalizedFeatureString();
    [v12 setSecondaryText:v21];

    v19 = [v12 secondaryTextProperties];
    v20 = [MEMORY[0x1E69DC888] systemRedColor];
    [v19 setColor:v20];
LABEL_12:

LABEL_13:
  }

LABEL_14:
  if ([v7 hasPendingApplication])
  {
    if (IsAccessibilityCategory)
    {
      v22 = PKLocalizedFeatureString();
      [v12 setSecondaryText:v22];

LABEL_20:
      v26 = 0;
      goto LABEL_26;
    }

    v23 = [WeakRetained _pendingApplicationAccessory];
    v61[0] = v23;
    v24 = MEMORY[0x1E695DEC8];
    v25 = v61;
  }

  else if ([v7 hasAccount])
  {
    if (![v7 selected])
    {
      goto LABEL_20;
    }

    v23 = [WeakRetained _checkmarkAccessory];
    v58 = v23;
    v24 = MEMORY[0x1E695DEC8];
    v25 = &v58;
  }

  else
  {
    if (!IsAccessibilityCategory)
    {
      v23 = [WeakRetained _setupAccessory];
      v59[0] = v23;
      v38 = [WeakRetained _disclosureAccessory];
      v59[1] = v38;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];

      goto LABEL_25;
    }

    v27 = PKLocalizedFeatureString();
    [v12 setSecondaryText:v27];

    v23 = [WeakRetained _disclosureAccessory];
    v60 = v23;
    v24 = MEMORY[0x1E695DEC8];
    v25 = &v60;
  }

  v26 = [v24 arrayWithObjects:v25 count:1];
LABEL_25:

LABEL_26:
  switch(v17)
  {
    case 1:
      v36 = PKLocalizedFeatureString();
      [v12 setText:v36];

      v29 = 0;
      v37 = @"AppleCashIcon";
      break;
    case 3:
      v33 = [*(a1 + 32) _eligibleAccountOfType:4];
      v34 = v33;
      if (v33)
      {
        if ([v33 supportsOneTimeDeposit])
        {
          v35 = 1;
        }

        else
        {
          v35 = [v34 supportsOneTimeDepositWithAppleCash];
        }

        [v6 setUserInteractionEnabled:v35];
      }

      v39 = PKLocalizedFeatureString();
      [v12 setText:v39];

      v29 = 0;
      v37 = @"SAVINGS_Icon";
      break;
    case 2:
      v28 = PKLocalizedFeatureString();
      [v12 setText:v28];

      v29 = v54;
      if (!v54)
      {
        [v12 setSecondaryText:0];
LABEL_47:
        v37 = @"AppleCardIcon";
        break;
      }

      v51 = [v54 formattedStringValue];
      v30 = PKLocalizedFeatureString();

      [v12 setSecondaryText:{v30, v51}];
      if ([v7 hasRedeemed])
      {
        v31 = [WeakRetained _hasRedeemedAccessory];
        v57 = v31;
        v32 = &v57;
      }

      else
      {
        v52 = v30;
        v40 = [v54 amount];
        v41 = [MEMORY[0x1E696AB90] zero];
        v42 = [v40 compare:v41];

        if (v42 != 1)
        {
          v30 = v52;
          goto LABEL_46;
        }

        v31 = [WeakRetained _applyAccessory];
        v56 = v31;
        v32 = &v56;
        v30 = v52;
      }

      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];

      v26 = v43;
LABEL_46:

      v29 = 0;
      goto LABEL_47;
    default:
      v37 = 0;
      v29 = 1;
      break;
  }

  if ([v7 loading])
  {
    v44 = [WeakRetained _spinnerAccessory];
    v55 = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];

    v26 = v45;
  }

  if ((v29 & 1) == 0)
  {
    v46 = PKPassKitUIBundle();
    v47 = [v46 URLForResource:v37 withExtension:@"pdf"];
    v48 = PKUIScreenScale();
    v49 = PKUIImageFromPDF(v47, 29.0, 29.0, v48);
    [v12 setImage:v49];
  }

  [v6 setAccessories:v26];
  [v6 setContentConfiguration:v12];
  v50 = **(&unk_1E8020D90 + v17);
  [v6 setAccessibilityIdentifier:v50];

LABEL_53:
}

- (id)_eligibleAccountOfType:(unint64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_accounts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == type && objc_msgSend(v9, "state") != 4)
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E69DC7E0];
  environmentCopy = environment;
  v7 = [[v5 alloc] initWithAppearance:2];
  headerTitle = [(PKDailyCashSelectionSectionController *)self headerTitle];
  v9 = [headerTitle length] != 0;

  footerTitle = [(PKDailyCashSelectionSectionController *)self footerTitle];
  v11 = [footerTitle length];

  [v7 setHeaderMode:v9];
  [v7 setFooterMode:v11 != 0];
  v12 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:environmentCopy];

  [v12 contentInsets];
  [v12 setContentInsets:?];

  return v12;
}

- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier
{
  kindCopy = kind;
  identifierCopy = identifier;
  v7 = *MEMORY[0x1E69DDC08];
  v8 = kindCopy;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v8 || !v7)
    {

LABEL_9:
      v11 = *MEMORY[0x1E69DDC00];
      v12 = v9;
      v13 = v12;
      if (v11 != v12 && v9 && v11)
      {
        [v12 isEqualToString:v11];
      }

      else
      {
      }

      goto LABEL_14;
    }

    v10 = [v8 isEqualToString:v7];

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  v14 = objc_opt_class();

  return v14;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  kindCopy = kind;
  identifierCopy = identifier;
  v10 = *MEMORY[0x1E69DDC08];
  v11 = kindCopy;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_7;
  }

  if (!v11 || !v10)
  {

    goto LABEL_14;
  }

  v13 = [v11 isEqualToString:v10];

  if (v13)
  {
LABEL_7:
    v14 = registrationCopy;
    headerTitle = [(PKDailyCashSelectionSectionController *)self headerTitle];
    [(PKFDICSignageView *)v14 setTitle:headerTitle];
    goto LABEL_8;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69DDC00];
  v17 = v12;
  headerTitle = v17;
  if (v16 == v17)
  {

LABEL_20:
    headerTitle = registrationCopy;
    [headerTitle setBottomInsetType:2];
    [headerTitle setHorizontalAlignment:0];
    footerTitle = [(PKDailyCashSelectionSectionController *)self footerTitle];
    [headerTitle setFooterText:footerTitle];

    v20 = [(NSArray *)self->_currentDailyCashSelectionItems pk_containsObjectPassingTest:&__block_literal_global_210];
    if (!PKSavingsFDICSignageEnabled() || !v20 || ([(PKAccount *)self->_account FDICBehaviorHideCreditRewardsHubSignage]& 1) != 0)
    {
      goto LABEL_9;
    }

    v14 = [[PKFDICSignageView alloc] initWithFeature:5 displayingBankName:0];
    [headerTitle setAdditionalView:v14];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  if (!v12 || !v16)
  {
    goto LABEL_9;
  }

  v18 = [v17 isEqualToString:v16];

  if (v18)
  {
    goto LABEL_20;
  }

LABEL_10:
}

uint64_t __106__PKDailyCashSelectionSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 redemptionType] == 3)
  {
    v3 = [v2 hasAccount] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)footerTitle
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  currentDestination = self->_currentDestination;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_currentDailyCashSelectionItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v26 = 0;
    v9 = *v28;
    v10 = currentDestination | 2;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        redemptionType = [v12 redemptionType];
        state = [v12 state];
        if (redemptionType == 3)
        {
          v26 = 1;
        }

        else
        {
          if (redemptionType != 1)
          {
            continue;
          }

          v8 = 1;
        }

        if (state != 1 && (self->_currentDestination == redemptionType || v10 == 2))
        {
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:redemptionType];
          [v3 addObject:v16];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

  v8 = 0;
  v26 = 0;
LABEL_21:

  if (self->_allowStatementCreditRedemption && [v3 count] == 1)
  {
    anyObject = [v3 anyObject];
    integerValue = [anyObject integerValue];

    if (integerValue == 1)
    {
      v19 = PKLocalizedFeatureString();
      v20 = [v19 stringByAppendingString:@"\n"];

      if ((v8 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      v21 = PKLocalizedFeatureString();
      v22 = [(__CFString *)v20 stringByAppendingString:v21];

      if ((v26 & 1) == 0)
      {
        v20 = v22;
        goto LABEL_32;
      }

      v20 = [(__CFString *)v22 stringByAppendingString:@"\n"];

LABEL_30:
      v23 = PKLocalizedFeatureString();
      v24 = [(__CFString *)v20 stringByAppendingString:v23];

      v20 = v24;
      goto LABEL_32;
    }
  }

  v20 = &stru_1F3BD7330;
  if (v8)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v26)
  {
    goto LABEL_30;
  }

LABEL_32:

  return v20;
}

- (id)_presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  rewardsHubCollectionView = [WeakRetained rewardsHubCollectionView];
  pkui_viewControllerFromResponderChain = [rewardsHubCollectionView pkui_viewControllerFromResponderChain];

  return pkui_viewControllerFromResponderChain;
}

- (id)_setupAccessory
{
  v2 = objc_alloc(MEMORY[0x1E69DC7B8]);
  v3 = PKLocalizedFeatureString();
  v4 = [v2 initWithText:v3];

  return v4;
}

- (id)_pendingApplicationAccessory
{
  v2 = objc_alloc(MEMORY[0x1E69DC7B8]);
  v3 = PKLocalizedFeatureString();
  v4 = [v2 initWithText:v3];

  return v4;
}

- (id)_disclosureAccessory
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC7A8]);

  return v2;
}

- (id)_checkmarkAccessory
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC788]);

  return v2;
}

- (id)_hasRedeemedAccessory
{
  v2 = objc_alloc(MEMORY[0x1E69DC7B8]);
  v3 = PKLocalizedFeatureString();
  v4 = [v2 initWithText:v3];

  return v4;
}

- (id)_applyAccessory
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __56__PKDailyCashSelectionSectionController__applyAccessory__block_invoke;
  v15 = &unk_1E8010A60;
  objc_copyWeak(&v16, &location);
  v3 = [v2 actionWithHandler:&v12];
  v4 = MEMORY[0x1E69DC738];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v6 = [v4 buttonWithConfiguration:plainButtonConfiguration primaryAction:v3];

  configuration = [v6 configuration];
  [configuration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [v6 setConfiguration:configuration];
  titleLabel = [v6 titleLabel];
  [titleLabel setLineBreakMode:4];

  v9 = PKLocalizedFeatureString();
  [v6 pkui_updateConfigurationWithTitle:v9];

  v10 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v6 placement:1];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __56__PKDailyCashSelectionSectionController__applyAccessory__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyRewardsAsStatementCredit];
}

- (id)_spinnerAccessory
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC638]);
  [v2 startAnimating];
  v3 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v2 placement:1];

  return v3;
}

- (void)_reloadSection
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataForSectionIdentifier:self->_identifier animated:1];
}

- (void)_applyRewardsAsStatementCredit
{
  if (self->_loadingDestination)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Already changing rewards destination", buf, 2u);
    }
  }

  else
  {
    creditDetails = [(PKAccount *)self->_account creditDetails];
    accountSummary = [creditDetails accountSummary];
    currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
    v7 = [accountSummary redeemableRewardsBalanceForUser:currentAccountUser];

    objc_initWeak(buf, self);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __71__PKDailyCashSelectionSectionController__applyRewardsAsStatementCredit__block_invoke;
    v14 = &unk_1E801E1E8;
    objc_copyWeak(&v18, buf);
    v8 = v7;
    v15 = v8;
    v2 = creditDetails;
    v16 = v2;
    selfCopy = self;
    v9 = _Block_copy(&v11);
    v10 = PKLocalizedFeatureString();
    [(PKDailyCashSelectionSectionController *)self presentConfirmationAlertWithTitle:v10 redemptionType:2 confirmationHandler:v9, v11, v12, v13, v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __71__PKDailyCashSelectionSectionController__applyRewardsAsStatementCredit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[9] = 2;
    [WeakRetained _reloadSection];
    v6 = objc_alloc_init(MEMORY[0x1E69B8338]);
    [v6 setActionType:0];
    [v6 setAmount:*(a1 + 32)];
    v7 = [*(a1 + 40) currencyCode];
    [v6 setCurrencyCode:v7];

    [v6 setRedemptionType:2];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    [v6 setIdentifier:v9];

    v10 = v5[11];
    v11 = [v5[3] accountIdentifier];
    v12 = [v5[4] currentAccountUser];
    v13 = [v12 altDSID];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __71__PKDailyCashSelectionSectionController__applyRewardsAsStatementCredit__block_invoke_2;
    v17 = &unk_1E8017060;
    objc_copyWeak(&v19, (a1 + 56));
    v18 = *(a1 + 48);
    [v10 performAccountAction:v6 withAccountIdentifier:v11 accountUserAltDSID:v13 completion:&v14];

    [*(a1 + 48) _reportDailyCashConfirmationEventWithRedemptionType:2 button:{*MEMORY[0x1E69BA4E8], v14, v15, v16, v17}];
    objc_destroyWeak(&v19);
  }
}

void __71__PKDailyCashSelectionSectionController__applyRewardsAsStatementCredit__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PKDailyCashSelectionSectionController__applyRewardsAsStatementCredit__block_invoke_3;
  v10[3] = &unk_1E8014828;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v14);
}

void __71__PKDailyCashSelectionSectionController__applyRewardsAsStatementCredit__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v7 = WeakRetained;
      v3 = PKAccountDisplayableError();
      v4 = [*(a1 + 40) _presentingViewController];
      v5 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      [v4 presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      v6 = *(a1 + 48);
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = WeakRetained;
      objc_storeStrong(WeakRetained + 3, v6);
      v7[9] = 0;
      *(v7 + 80) = 1;
      [v7 _reloadSection];
    }

    WeakRetained = v7;
  }

LABEL_7:
}

- (void)_changeRewardsDestinationAndOpenAccountIfNeeded:(unint64_t)needed
{
  if (self->_loadingDestination)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Already changing rewards destination", buf, 2u);
    }
  }

  else if (needed == 3)
  {
    v5 = [(PKDailyCashSelectionSectionController *)self _eligibleAccountOfType:4];
    if (v5)
    {
      [(PKDailyCashSelectionSectionController *)self _changeRewardsDestination:3];
    }

    else
    {
      self->_loadingDestination = 3;
      [(PKDailyCashSelectionSectionController *)self _reloadSection];
      redeemRewardsFeatureDescriptor = [(PKAccount *)self->_account redeemRewardsFeatureDescriptor];
      v11 = [redeemRewardsFeatureDescriptor productForFeature:5];

      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x1E69B8D48]);
        mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
        v14 = [v12 initWithWebService:mEMORY[0x1E69B8EF8]];

        [v14 setReferrerIdentifier:@"cid%3Dapy-930-10001"];
        v15 = [PKFeatureOnBoardingViewController alloc];
        onboardingItems = [v11 onboardingItems];
        firstObject = [onboardingItems firstObject];
        v18 = [(PKFeatureOnBoardingViewController *)v15 initWithParentFlowController:0 setupDelegate:0 setupContext:0 onboardingContext:0 featureIdentifier:5 provisioningController:v14 paymentSetupProduct:v11 currentPage:firstObject];

        objc_initWeak(buf, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __89__PKDailyCashSelectionSectionController__changeRewardsDestinationAndOpenAccountIfNeeded___block_invoke_257;
        aBlock[3] = &unk_1E8010998;
        objc_copyWeak(&v24, buf);
        v19 = _Block_copy(aBlock);
        v20 = [[PKNavigationController alloc] initWithRootViewController:v18];
        [(PKNavigationController *)v20 setModalInPresentation:1];
        _presentingViewController = [(PKDailyCashSelectionSectionController *)self _presentingViewController];
        [_presentingViewController presentViewController:v20 animated:1 completion:v19];

        objc_destroyWeak(&v24);
        objc_destroyWeak(buf);
      }

      else
      {
        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Cannot retrieve savings product to present apply flow", buf, 2u);
        }

        self->_loadingDestination = 0;
        [(PKDailyCashSelectionSectionController *)self _reloadSection];
      }
    }
  }

  else if (needed == 1)
  {
    if (PKUserHasDisabledPeerPayment())
    {

      [(PKDailyCashSelectionSectionController *)self _presentPeerPaymentNotEnabledAlert];
    }

    else
    {
      currentPeerPaymentAccountResolution = [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController currentPeerPaymentAccountResolution];
      if (currentPeerPaymentAccountResolution)
      {
        v7 = currentPeerPaymentAccountResolution;
        objc_initWeak(buf, self);
        self->_loadingDestination = 1;
        [(PKDailyCashSelectionSectionController *)self _reloadSection];
        v8 = objc_alloc_init(MEMORY[0x1E69B8F08]);
        [v8 setRegistrationFlowState:6];
        peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __89__PKDailyCashSelectionSectionController__changeRewardsDestinationAndOpenAccountIfNeeded___block_invoke;
        v25[3] = &unk_1E8011180;
        objc_copyWeak(&v26, buf);
        [(PKPeerPaymentAccountResolutionController *)peerPaymentAccountResolutionController presentFlowForAccountResolution:v7 configuration:v8 completion:v25];
        objc_destroyWeak(&v26);

        objc_destroyWeak(buf);
      }

      else
      {

        [(PKDailyCashSelectionSectionController *)self _changeRewardsDestination:1];
      }
    }
  }
}

void __89__PKDailyCashSelectionSectionController__changeRewardsDestinationAndOpenAccountIfNeeded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[9] = 0;
    v2 = WeakRetained;
    [WeakRetained _reloadSection];
    WeakRetained = v2;
  }
}

void __89__PKDailyCashSelectionSectionController__changeRewardsDestinationAndOpenAccountIfNeeded___block_invoke_257(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[9] = 0;
    v2 = WeakRetained;
    [WeakRetained _reloadSection];
    WeakRetained = v2;
  }
}

- (void)_changeRewardsDestination:(unint64_t)destination
{
  if (self->_loadingDestination)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Already changing rewards destination", buf, 2u);
    }
  }

  if (destination != 3)
  {
    if (destination != 1)
    {
      v6 = 0;
      accountIdentifier = 0;
      goto LABEL_12;
    }

    v6 = PKLocalizedFeatureString();
    accountIdentifier = 0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v6 = PKLocalizedFeatureString();
  v8 = [(PKDailyCashSelectionSectionController *)self _eligibleAccountOfType:4];
  accountIdentifier = [v8 accountIdentifier];

  if (v6)
  {
LABEL_10:
    objc_initWeak(buf, self);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __67__PKDailyCashSelectionSectionController__changeRewardsDestination___block_invoke;
    v13 = &unk_1E8020D70;
    objc_copyWeak(v16, buf);
    v16[1] = destination;
    accountIdentifier = accountIdentifier;
    v14 = accountIdentifier;
    selfCopy = self;
    v9 = _Block_copy(&v10);
    [(PKDailyCashSelectionSectionController *)self presentConfirmationAlertWithTitle:v6 redemptionType:destination confirmationHandler:v9, v10, v11, v12, v13];

    objc_destroyWeak(v16);
    objc_destroyWeak(buf);
  }

LABEL_12:
}

void __67__PKDailyCashSelectionSectionController__changeRewardsDestination___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[9] = *(a1 + 56);
    [WeakRetained _reloadSection];
    v6 = objc_alloc_init(MEMORY[0x1E69B8338]);
    [v6 setActionType:2];
    [v6 setRedemptionType:*(a1 + 56)];
    [v6 setIdentifier:*(a1 + 32)];
    objc_initWeak(&location, *(a1 + 40));
    v7 = v5[11];
    v8 = [v5[3] accountIdentifier];
    v9 = [v5[4] currentAccountUser];
    v10 = [v9 altDSID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PKDailyCashSelectionSectionController__changeRewardsDestination___block_invoke_2;
    v11[3] = &unk_1E8020D48;
    objc_copyWeak(v12, &location);
    v12[1] = *(a1 + 56);
    [v7 performAccountAction:v6 withAccountIdentifier:v8 accountUserAltDSID:v10 completion:v11];

    [*(a1 + 40) _reportDailyCashConfirmationEventWithRedemptionType:*(a1 + 56) button:*MEMORY[0x1E69BA4E8]];
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __67__PKDailyCashSelectionSectionController__changeRewardsDestination___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PKDailyCashSelectionSectionController__changeRewardsDestination___block_invoke_3;
  v9[3] = &unk_1E80160F8;
  objc_copyWeak(v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v12[1] = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(v12);
}

void __67__PKDailyCashSelectionSectionController__changeRewardsDestination___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (*(a1 + 32))
    {
      v3 = PKAccountDisplayableError();
      v4 = [v7 _presentingViewController];
      v5 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      [v4 presentViewController:v5 animated:1 completion:0];

      WeakRetained = v7;
    }

    else
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        objc_storeStrong(WeakRetained + 3, v6);
        WeakRetained = v7;
        v7[8] = *(a1 + 56);
      }
    }

    *(WeakRetained + 9) = 0;
    [WeakRetained _reloadSection];
    WeakRetained = v7;
  }
}

- (void)_reportDailyCashConfirmationEventWithRedemptionType:(unint64_t)type button:(id)button
{
  buttonCopy = button;
  v11 = [(PKDailyCashSelectionSectionController *)self analyticsEventReportWithPreSelect:0];
  if (type - 1 > 2)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = **(&unk_1E8020DC8 + type - 1);
  }

  [v11 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  [v11 setObject:*MEMORY[0x1E69BA6F0] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v11 setObject:buttonCopy forKeyedSubscript:*MEMORY[0x1E69BA440]];

  v8 = MEMORY[0x1E69B8540];
  v9 = *MEMORY[0x1E69BB698];
  v10 = [v11 copy];
  [v8 subject:v9 sendEvent:v10];
}

- (void)_reportDestinationButtonTapWithRedemptionType:(unint64_t)type
{
  v8 = [(PKDailyCashSelectionSectionController *)self analyticsEventReportWithPreSelect:0];
  [v8 setObject:*MEMORY[0x1E69BA558] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  [v8 setObject:*MEMORY[0x1E69BA6F0] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  if (type - 1 > 2)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = **(&unk_1E8020DB0 + type - 1);
  }

  [v8 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69BA440]];
  v5 = MEMORY[0x1E69B8540];
  v6 = *MEMORY[0x1E69BB698];
  v7 = [v8 copy];
  [v5 subject:v6 sendEvent:v7];
}

- (void)presentConfirmationAlertWithTitle:(id)title redemptionType:(unint64_t)type confirmationHandler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  if (handlerCopy && [titleCopy length])
  {
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleCopy message:0 preferredStyle:1];
    v11 = MEMORY[0x1E69DC648];
    v12 = PKLocalizedFeatureString();
    v13 = [v11 actionWithTitle:v12 style:0 handler:handlerCopy];
    [v10 addAction:v13];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110__PKDailyCashSelectionSectionController_presentConfirmationAlertWithTitle_redemptionType_confirmationHandler___block_invoke;
    aBlock[3] = &unk_1E801BF80;
    objc_copyWeak(v21, &location);
    v21[1] = type;
    v14 = _Block_copy(aBlock);
    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedFeatureString();
    v17 = [v15 actionWithTitle:v16 style:1 handler:v14];
    [v10 addAction:v17];

    _presentingViewController = [(PKDailyCashSelectionSectionController *)self _presentingViewController];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __110__PKDailyCashSelectionSectionController_presentConfirmationAlertWithTitle_redemptionType_confirmationHandler___block_invoke_2;
    v19[3] = &unk_1E80119C8;
    v19[4] = self;
    v19[5] = type;
    [_presentingViewController presentViewController:v10 animated:1 completion:v19];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

void __110__PKDailyCashSelectionSectionController_presentConfirmationAlertWithTitle_redemptionType_confirmationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reportDailyCashConfirmationEventWithRedemptionType:*(a1 + 40) button:*MEMORY[0x1E69BA468]];
    WeakRetained = v3;
  }
}

void __110__PKDailyCashSelectionSectionController_presentConfirmationAlertWithTitle_redemptionType_confirmationHandler___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) analyticsEventReportWithPreSelect:0];
  v2 = *(a1 + 40) - 1;
  if (v2 > 2)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = **(&unk_1E8020DC8 + v2);
  }

  [v7 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  [v7 setObject:*MEMORY[0x1E69BA818] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB698];
  v6 = [v7 copy];
  [v4 subject:v5 sendEvent:v6];
}

- (void)_presentPeerPaymentNotEnabledAlert
{
  v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_1.isa);
  v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_2.isa);
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v3 preferredStyle:1];
  v5 = MEMORY[0x1E69DC648];
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_5.isa);
  v7 = [v5 actionWithTitle:v6 style:0 handler:&__block_literal_global_287];

  [v4 addAction:v7];
  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedString(&cfstr_Cancel.isa);
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];
  [v4 addAction:v10];

  _presentingViewController = [(PKDailyCashSelectionSectionController *)self _presentingViewController];
  [_presentingViewController presentViewController:v4 animated:1 completion:0];
}

void __75__PKDailyCashSelectionSectionController__presentPeerPaymentNotEnabledAlert__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK"];
  PKOpenURL();
}

- (void)accountAdded:(id)added
{
  addedCopy = added;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKDailyCashSelectionSectionController_accountAdded___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = addedCopy;
  v5 = addedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __54__PKDailyCashSelectionSectionController_accountAdded___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) arrayByAddingObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = *(a1 + 32);

  return [v5 _reloadSection];
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKDailyCashSelectionSectionController_accountChanged___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __56__PKDailyCashSelectionSectionController_accountChanged___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = *v29;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [*(a1 + 40) accountIdentifier];
        v8 = [v6 accountIdentifier];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {

LABEL_18:
          v3 = v6;
          goto LABEL_19;
        }

        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
        }

        else
        {
          v13 = [v9 isEqualToString:v10];

          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v14 = [*(*(a1 + 32) + 48) pk_arrayByRemovingObject:v3];
  v15 = *(a1 + 32);
  v16 = *(v15 + 48);
  *(v15 + 48) = v14;

  v17 = [*(*(a1 + 32) + 48) arrayByAddingObject:*(a1 + 40)];
  v18 = *(a1 + 32);
  v19 = *(v18 + 48);
  *(v18 + 48) = v17;

  v20 = [*(a1 + 40) accountIdentifier];
  v21 = [*(*(a1 + 32) + 24) accountIdentifier];
  v22 = v20;
  v23 = v21;
  v24 = v23;
  if (v22 == v23)
  {
  }

  else
  {
    if (!v22 || !v23)
    {

      goto LABEL_27;
    }

    v25 = [v22 isEqualToString:v23];

    if ((v25 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v22 = *(v26 + 24);
  *(v26 + 24) = v27;
LABEL_27:

LABEL_28:
  [*(a1 + 32) _reloadSection];
}

- (void)accountRemoved:(id)removed
{
  removedCopy = removed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKDailyCashSelectionSectionController_accountRemoved___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = removedCopy;
  v5 = removedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __56__PKDailyCashSelectionSectionController_accountRemoved___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = [*(a1 + 40) accountIdentifier];
        v8 = [v6 accountIdentifier];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {

LABEL_18:
          v3 = v6;
          goto LABEL_19;
        }

        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
        }

        else
        {
          v13 = [v9 isEqualToString:v10];

          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v14 = [*(*(a1 + 32) + 48) pk_arrayByRemovingObject:v3];
  v15 = *(a1 + 32);
  v16 = *(v15 + 48);
  *(v15 + 48) = v14;

  [*(a1 + 32) _reloadSection];
}

- (void)featureApplicationAdded:(id)added
{
  addedCopy = added;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKDailyCashSelectionSectionController_featureApplicationAdded___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = addedCopy;
  v5 = addedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __65__PKDailyCashSelectionSectionController_featureApplicationAdded___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) arrayByAddingObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = [*(*(a1 + 32) + 56) pk_firstObjectPassingTest:&__block_literal_global_296];
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = v5;

  v8 = *(a1 + 32);

  return [v8 _reloadSection];
}

BOOL __65__PKDailyCashSelectionSectionController_featureApplicationAdded___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feature] == 5 && objc_msgSend(v2, "applicationState") == 5;

  return v3;
}

- (void)featureApplicationChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PKDailyCashSelectionSectionController_featureApplicationChanged___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __67__PKDailyCashSelectionSectionController_featureApplicationChanged___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = *v24;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [*(a1 + 40) applicationIdentifier];
        v8 = [v6 accountIdentifier];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {

LABEL_18:
          v3 = v6;
          goto LABEL_19;
        }

        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
        }

        else
        {
          v13 = [v9 isEqualToString:v10];

          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v14 = [*(*(a1 + 32) + 56) pk_arrayByRemovingObject:v3];
  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = v14;

  v17 = [*(*(a1 + 32) + 56) arrayByAddingObject:*(a1 + 40)];
  v18 = *(a1 + 32);
  v19 = *(v18 + 56);
  *(v18 + 56) = v17;

  v20 = [*(*(a1 + 32) + 56) pk_firstObjectPassingTest:&__block_literal_global_298];
  v21 = *(a1 + 32);
  v22 = *(v21 + 120);
  *(v21 + 120) = v20;

  [*(a1 + 32) _reloadSection];
}

BOOL __67__PKDailyCashSelectionSectionController_featureApplicationChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feature] == 5 && objc_msgSend(v2, "applicationState") == 5;

  return v3;
}

- (void)featureApplicationRemoved:(id)removed
{
  removedCopy = removed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PKDailyCashSelectionSectionController_featureApplicationRemoved___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = removedCopy;
  v5 = removedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __67__PKDailyCashSelectionSectionController_featureApplicationRemoved___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = *v21;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = [*(a1 + 40) accountIdentifier];
        v8 = [v6 accountIdentifier];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {

LABEL_18:
          v3 = v6;
          goto LABEL_19;
        }

        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
        }

        else
        {
          v13 = [v9 isEqualToString:v10];

          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v14 = [*(*(a1 + 32) + 56) pk_arrayByRemovingObject:v3];
  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = v14;

  v17 = [*(*(a1 + 32) + 56) pk_firstObjectPassingTest:&__block_literal_global_300_0];
  v18 = *(a1 + 32);
  v19 = *(v18 + 120);
  *(v18 + 120) = v17;

  [*(a1 + 32) _reloadSection];
}

BOOL __67__PKDailyCashSelectionSectionController_featureApplicationRemoved___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feature] == 5 && objc_msgSend(v2, "applicationState") == 5;

  return v3;
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  _presentingViewController = [(PKDailyCashSelectionSectionController *)self _presentingViewController];
  [_presentingViewController presentViewController:viewControllerCopy animated:1 completion:0];
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  [(PKDailyCashSelectionSectionController *)self _reloadSection:controller];
  _presentingViewController = [(PKDailyCashSelectionSectionController *)self _presentingViewController];
  [_presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)paymentSetupDidFinish:(id)finish
{
  [(PKDailyCashSelectionSectionController *)self _reloadSection];
  _presentingViewController = [(PKDailyCashSelectionSectionController *)self _presentingViewController];
  [_presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end