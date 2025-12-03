@interface PKPeerPaymentActionController
+ (BOOL)canPerformPeerPaymentAction:(unint64_t)action account:(id)account;
+ (BOOL)canPerformPeerPaymentAction:(unint64_t)action account:(id)account unableReason:(unint64_t *)reason displayableError:(id *)error;
+ (id)alertControllerForPeerPaymentActionUnableReason:(unint64_t)reason displayableError:(id)error addCardActionHandler:(id)handler;
+ (id)displayableErrorForPeerPaymentAction:(unint64_t)action andReason:(unint64_t)reason;
+ (id)startProvisionToAddDebitWithNetworkAllowlist:(id)allowlist;
- (PKPeerPaymentActionController)initWithPaymentPass:(id)pass webService:(id)service context:(int64_t)context passLibraryDataProvider:(id)provider delegate:(id)delegate;
- (PKPeerPaymentActionControllerDelegate)delegate;
- (id)presentationSceneBundleIdentifierForPeerPaymentController:(id)controller;
- (id)presentationSceneIdentifierForPeerPaymentController:(id)controller;
- (unint64_t)_peerPaymentControllerModeForAction;
- (void)_handleError:(id)error;
- (void)_handlePeerPaymentAccountDidChangeNotification:(id)notification;
- (void)_peerPaymentActionHasCompletedWithState:(unint64_t)state;
- (void)_presentIdentityVerificationWithError:(id)error;
- (void)_presentTermsAndConditionsWithError:(id)error;
- (void)_updateAccountWithCompletion:(id)completion;
- (void)bankAccountInformationViewControllerChangedBankAccountInformation:(id)information;
- (void)performActionWithCurrencyAmount:(id)amount;
- (void)presentAddBankAccountViewController;
- (void)presentAddDebitCardViewController;
@end

@implementation PKPeerPaymentActionController

+ (BOOL)canPerformPeerPaymentAction:(unint64_t)action account:(id)account
{
  v5 = 0;
  v6 = 0;
  return [PKPeerPaymentActionController canPerformPeerPaymentAction:action account:account unableReason:&v6 displayableError:&v5];
}

+ (BOOL)canPerformPeerPaymentAction:(unint64_t)action account:(id)account unableReason:(unint64_t *)reason displayableError:(id *)error
{
  accountCopy = account;
  v11 = accountCopy;
  switch(action)
  {
    case 3uLL:
      if ([accountCopy supportsRecurringPayments])
      {
        selfCopy2 = self;
        recurringPaymentsFeatureDescriptor = [v11 recurringPaymentsFeatureDescriptor];
        supportedFundingSourceCountryCodes = [recurringPaymentsFeatureDescriptor supportedFundingSourceCountryCodes];
        v19 = supportedFundingSourceCountryCodes;
        if (supportedFundingSourceCountryCodes)
        {
          v20 = supportedFundingSourceCountryCodes;
        }

        else
        {
          v21 = MEMORY[0x1E695DFD8];
          countryCode = [v11 countryCode];
          v20 = [v21 setWithObject:countryCode];
        }

        v23 = objc_alloc_init(MEMORY[0x1E69B8FE8]);
        merchantIdentifier = [recurringPaymentsFeatureDescriptor merchantIdentifier];
        [v23 setMerchantIdentifier:merchantIdentifier];

        supportedNetworks = [recurringPaymentsFeatureDescriptor supportedNetworks];
        [v23 setSupportedNetworks:supportedNetworks];

        [v23 setMerchantCapabilities:{objc_msgSend(recurringPaymentsFeatureDescriptor, "merchantCapabilities")}];
        [v23 setSupportedCountries:v20];
        [v23 setPeerPaymentType:2];
        mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
        v27 = [mEMORY[0x1E69B8A58] _defaultPaymentPassForPaymentRequest:v23];
        v17 = v27 != 0;
        v16 = 4 * (v27 == 0);

LABEL_29:
        self = selfCopy2;
        if (!reason)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      goto LABEL_14;
    case 2uLL:
      if (([accountCopy supportsTransferToBank] & 1) != 0 || objc_msgSend(v11, "supportsInstantWithdrawal"))
      {
        v16 = 0;
        v17 = 1;
        if (!reason)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

LABEL_14:
      v17 = 0;
      v16 = 2;
      if (!reason)
      {
        goto LABEL_31;
      }

LABEL_30:
      *reason = v16;
      goto LABEL_31;
    case 1uLL:
      if ([accountCopy supportsLoadFromCard])
      {
        selfCopy2 = self;
        recurringPaymentsFeatureDescriptor = [v11 loadFromCardFeatureDescriptor];
        supportedFundingSourceCountryCodes2 = [recurringPaymentsFeatureDescriptor supportedFundingSourceCountryCodes];
        v14 = supportedFundingSourceCountryCodes2;
        if (supportedFundingSourceCountryCodes2)
        {
          v15 = supportedFundingSourceCountryCodes2;
        }

        else
        {
          v28 = MEMORY[0x1E695DFD8];
          countryCode2 = [v11 countryCode];
          v15 = [v28 setWithObject:countryCode2];
        }

        v30 = objc_alloc_init(MEMORY[0x1E69B8FE8]);
        merchantIdentifier2 = [recurringPaymentsFeatureDescriptor merchantIdentifier];
        [v30 setMerchantIdentifier:merchantIdentifier2];

        supportedNetworks2 = [recurringPaymentsFeatureDescriptor supportedNetworks];
        [v30 setSupportedNetworks:supportedNetworks2];

        [v30 setMerchantCapabilities:{objc_msgSend(recurringPaymentsFeatureDescriptor, "merchantCapabilities")}];
        v36 = v15;
        [v30 setSupportedCountries:v15];
        [v30 setPeerPaymentType:4];
        mEMORY[0x1E69B8A58]2 = [MEMORY[0x1E69B8A58] sharedInstance];
        v34 = [mEMORY[0x1E69B8A58]2 _defaultPaymentPassForPaymentRequest:v30];
        v17 = v34 != 0;
        if (v34)
        {
          v16 = 0;
        }

        else if (([recurringPaymentsFeatureDescriptor merchantCapabilities] & 8) != 0)
        {
          if (([recurringPaymentsFeatureDescriptor merchantCapabilities] & 4) != 0)
          {
            v16 = 3;
          }

          else
          {
            v16 = 4;
          }
        }

        else
        {
          v16 = 3;
        }

        goto LABEL_29;
      }

      goto LABEL_14;
  }

  v16 = 0;
  v17 = 0;
  if (reason)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (error)
  {
    *error = [self displayableErrorForPeerPaymentAction:action andReason:v16];
  }

  return v17;
}

+ (id)displayableErrorForPeerPaymentAction:(unint64_t)action andReason:(unint64_t)reason
{
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_4.isa);
  switch(reason)
  {
    case 4uLL:
      if (action == 3)
      {
        v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_SetupNoDebitCa.isa);

        v10 = PKLocalizedPeerPaymentRecurringString(&cfstr_SetupNoDebitCa_0.isa);
        goto LABEL_14;
      }

      if (action != 1)
      {
        goto LABEL_11;
      }

      v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_8.isa);

      v9 = @"PEER_PAYMENT_ACTION_UNAVAILABLE_REASON_ADD_MONEY_NO_DEBIT_PAYMENT_CARDS_AVAILABLE_DESCRIPTION";
      break;
    case 3uLL:
      if (action != 1)
      {
        goto LABEL_11;
      }

      v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_6.isa);

      v9 = @"PEER_PAYMENT_ACTION_UNAVAILABLE_REASON_ADD_MONEY_NO_PAYMENT_CARDS_AVAILABLE_DESCRIPTION";
      break;
    case 2uLL:
LABEL_11:
      v7 = @"PEER_PAYMENT_ACTION_UNAVAILABLE_FEATURE_NOT_SUPPORTED_DESCRIPTION";
      goto LABEL_12;
    default:
      v7 = @"PEER_PAYMENT_ACTION_UNAVAILABLE_GENERIC_DESCRIPTION";
LABEL_12:
      v11 = PKLocalizedPeerPaymentString(&v7->isa);
      goto LABEL_15;
  }

  v10 = PKLocalizedPeerPaymentString(&v9->isa);
LABEL_14:
  v11 = v10;
  v6 = v8;
LABEL_15:
  v12 = PKDisplayableErrorCustom();

  return v12;
}

+ (id)alertControllerForPeerPaymentActionUnableReason:(unint64_t)reason displayableError:(id)error addCardActionHandler:(id)handler
{
  handlerCopy = handler;
  if (error)
  {
    v8 = MEMORY[0x1E69DC650];
    errorCopy = error;
    v10 = PKTitleForDisplayableError();
    v11 = MEMORY[0x1BFB42D10](errorCopy);

    error = [v8 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

    v12 = MEMORY[0x1E69DC648];
    v13 = PKLocalizedString(&cfstr_CancelButtonTi.isa);
    v14 = [v12 actionWithTitle:v13 style:1 handler:0];

    [error addAction:v14];
    if (reason - 3 <= 1 && handlerCopy)
    {
      v15 = MEMORY[0x1E69DC648];
      v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_11.isa);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __119__PKPeerPaymentActionController_alertControllerForPeerPaymentActionUnableReason_displayableError_addCardActionHandler___block_invoke;
      v19[3] = &unk_1E8011248;
      v20 = handlerCopy;
      v17 = [v15 actionWithTitle:v16 style:0 handler:v19];

      [error addAction:v17];
      [error setPreferredAction:v17];
    }
  }

  return error;
}

+ (id)startProvisionToAddDebitWithNetworkAllowlist:(id)allowlist
{
  allowlistCopy = allowlist;
  v4 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [v4 initWithWebService:mEMORY[0x1E69B8EF8]];

  [v6 setAllowedPaymentNetworks:allowlistCopy];
  [v6 setAllowedCardTypes:&unk_1F3CC8708];
  v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v6 setAllowedFeatureIdentifiers:v7];
  v8 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v6 groupsController:0];
  v9 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
  [(PKNavigationController *)v9 setCustomFormSheetPresentationStyleForiPad];
  objc_initWeak(&location, v9);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PKPeerPaymentActionController_startProvisionToAddDebitWithNetworkAllowlist___block_invoke;
  v11[3] = &unk_1E8010998;
  objc_copyWeak(&v12, &location);
  [PKProvisioningFlowBridge startProvisionToPurchaseFlowWithNavController:v9 context:v8 onFirstViewControllerShown:0 completion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __78__PKPeerPaymentActionController_startProvisionToAddDebitWithNetworkAllowlist___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (PKPeerPaymentActionController)initWithPaymentPass:(id)pass webService:(id)service context:(int64_t)context passLibraryDataProvider:(id)provider delegate:(id)delegate
{
  passCopy = pass;
  serviceCopy = service;
  providerCopy = provider;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = PKPeerPaymentActionController;
  v17 = [(PKPeerPaymentActionController *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_pass, pass);
    objc_storeStrong(&v18->_peerPaymentWebService, service);
    v18->_context = context;
    objc_storeWeak(&v18->_delegate, delegateCopy);
    v18->_controllerAction = 0;
    targetDevice = [(PKPeerPaymentWebService *)v18->_peerPaymentWebService targetDevice];
    account = [targetDevice account];
    account = v18->_account;
    v18->_account = account;

    v22 = objc_alloc_init(MEMORY[0x1E69B86A8]);
    bankInformation = v18->_bankInformation;
    v18->_bankInformation = v22;

    objc_storeStrong(&v18->_passLibraryDataProvider, provider);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v25 = *MEMORY[0x1E69BC378];
    targetDevice2 = [(PKPeerPaymentWebService *)v18->_peerPaymentWebService targetDevice];
    [defaultCenter addObserver:v18 selector:sel__handlePeerPaymentAccountDidChangeNotification_ name:v25 object:targetDevice2];
  }

  return v18;
}

- (void)performActionWithCurrencyAmount:(id)amount
{
  v26 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke;
  aBlock[3] = &unk_1E8022828;
  objc_copyWeak(&v22, &location);
  v5 = amountCopy;
  v21 = v5;
  v6 = _Block_copy(aBlock);
  if (self->_performingAction)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[PKPeerPaymentActionController performActionWithCurrencyAmount:]";
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "%s: Cannot Present - already performing action", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (!self->_peerPaymentController)
  {
    v8 = [objc_alloc(MEMORY[0x1E69B8F28]) initWithPeerPaymentWebService:self->_peerPaymentWebService];
    peerPaymentController = self->_peerPaymentController;
    self->_peerPaymentController = v8;

    [(PKPeerPaymentController *)self->_peerPaymentController setDelegate:self];
  }

  controllerAction = self->_controllerAction;
  switch(controllerAction)
  {
    case 3uLL:
      [(PKBankAccountInformation *)self->_bankInformation updateToLatestKeychainData];
      v12 = self->_peerPaymentController;
      routingNumber = [(PKBankAccountInformation *)self->_bankInformation routingNumber];
      accountNumber = [(PKBankAccountInformation *)self->_bankInformation accountNumber];
      bankName = [(PKBankAccountInformation *)self->_bankInformation bankName];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_120;
      v18[3] = &unk_1E8019DB0;
      v18[4] = self;
      v19 = v6;
      [(PKPeerPaymentController *)v12 identifyRecipientWithRoutingNumber:routingNumber accountNumber:accountNumber accountName:bankName completion:v18];

      v7 = v19;
      goto LABEL_12;
    case 2uLL:
      v11 = self->_peerPaymentController;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_3_123;
      v16[3] = &unk_1E8019DB0;
      v16[4] = self;
      v17 = v6;
      [(PKPeerPaymentController *)v11 identifyRecipientDebitCardWithCompletion:v16];
      v7 = v17;
LABEL_12:

      break;
    case 1uLL:
      [(PKPeerPaymentController *)self->_peerPaymentController identifyRecipientSelf];
      (*(v6 + 2))(v6, self->_peerPaymentController);
      break;
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [v3 selectMode:{objc_msgSend(WeakRetained, "_peerPaymentControllerModeForAction")}];
    *(v5 + 64) = 1;
    v6 = *(a1 + 32);
    v8 = *(v5 + 13);
    v7 = *(v5 + 14);
    v9 = [*(v5 + 12) amount];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_2;
    v10[3] = &unk_1E8022800;
    v11 = v3;
    objc_copyWeak(&v12, (a1 + 40));
    [v11 quoteWithAmount:v6 source:3 requestToken:0 alternateFundingSource:v7 preserveCurrentBalance:0 recurringPaymentIdentifier:v8 frequency:0 startDate:0 threshold:v9 completion:v10];

    objc_destroyWeak(&v12);
  }
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_3;
    aBlock[3] = &unk_1E8012808;
    v17 = *(a1 + 32);
    v9 = v7;
    v18 = v9;
    objc_copyWeak(&v19, (a1 + 40));
    v10 = _Block_copy(aBlock);
    if ([v9 riskLevel])
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_7;
      v12[3] = &unk_1E80111F8;
      objc_copyWeak(&v15, (a1 + 40));
      v13 = v9;
      v14 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], v12);

      objc_destroyWeak(&v15);
    }

    else
    {
      v10[2](v10);
    }

    objc_destroyWeak(&v19);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleError:v8];
  }
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_4;
  v3[3] = &unk_1E80227D8;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 performQuote:v2 completion:v3];
  objc_destroyWeak(&v4);
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_4(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_5;
  v11[3] = &unk_1E8013AD8;
  objc_copyWeak(&v14, (a1 + 32));
  v15 = a2;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v14);
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1)
    {
      if (!WeakRetained[13])
      {
        v4 = [*(a1 + 32) recurringPaymentIdentifier];
        v5 = v3[13];
        v3[13] = v4;
      }

      WeakRetained = v3;
      v6 = 0;
      goto LABEL_9;
    }

    v7 = *(a1 + 40);
    if (!v7)
    {
      v6 = 2;
LABEL_9:
      [WeakRetained _peerPaymentActionHasCompletedWithState:v6];
      goto LABEL_10;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_6;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, (a1 + 48));
    v8 = PKAlertForDisplayableErrorWithHandlers(v7, 0, v10, 0);
    v9 = objc_loadWeakRetained(v3 + 10);
    [v9 peerPaymentActionController:v3 requestPresentViewController:v8];

    objc_destroyWeak(&v11);
  }

LABEL_10:
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _peerPaymentActionHasCompletedWithState:2];
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_8;
    v9 = &unk_1E8010EE0;
    v3 = *(a1 + 32);
    v10 = *(a1 + 40);
    objc_copyWeak(&v11, (a1 + 48));
    v4 = [PKPeerPaymentFraudUIFactory fraudUIViewControllerForQuote:v3 continuationHandler:&v6];
    v5 = objc_loadWeakRetained(WeakRetained + 10);
    [v5 peerPaymentActionController:WeakRetained requestPresentViewController:{v4, v6, v7, v8, v9}];

    objc_destroyWeak(&v11);
  }
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _peerPaymentActionHasCompletedWithState:2];
  }
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_120(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_2_121;
  v8[3] = &unk_1E801EE50;
  v11 = a2;
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v8[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_2_121(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    return (*(*(a1 + 48) + 16))(*(a1 + 48), *(*(a1 + 32) + 56));
  }

  else
  {
    return [*(a1 + 32) _handleError:*(a1 + 40)];
  }
}

void __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_3_123(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_4_124;
  v8[3] = &unk_1E801EE50;
  v11 = a2;
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v8[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __65__PKPeerPaymentActionController_performActionWithCurrencyAmount___block_invoke_4_124(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    return (*(*(a1 + 48) + 16))(*(a1 + 48), *(*(a1 + 32) + 56));
  }

  else
  {
    return [*(a1 + 32) _handleError:*(a1 + 40)];
  }
}

- (void)_peerPaymentActionHasCompletedWithState:(unint64_t)state
{
  self->_performingAction = 0;
  if (state == 2)
  {
    [(PKPeerPaymentController *)self->_peerPaymentController reset];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentActionController:self hasChangedState:state];
}

- (void)bankAccountInformationViewControllerChangedBankAccountInformation:(id)information
{
  [(PKBankAccountInformation *)self->_bankInformation updateToLatestKeychainData];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentActionController:self hasChangedState:5];
}

- (id)presentationSceneIdentifierForPeerPaymentController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [WeakRetained presentationSceneIdentifierForPeerPaymentActionController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)presentationSceneBundleIdentifierForPeerPaymentController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [WeakRetained presentationSceneBundleIdentifierForPeerPaymentActionController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PKPeerPaymentActionController__handleError___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = errorCopy;
  selfCopy = self;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __46__PKPeerPaymentActionController__handleError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B8F28] proposedResolutionForError:*(a1 + 32)];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);

      [v15 _presentTermsAndConditionsWithError:v16];
    }

    else if (v2 == 3)
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);

      [v12 _presentIdentityVerificationWithError:v13];
    }
  }

  else
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return;
      }

      if (*(a1 + 32))
      {
        v3 = [MEMORY[0x1E69B8F28] displayableErrorForError:?];
        v4 = [v3 userInfo];
        v5 = [v4 objectForKey:*MEMORY[0x1E696AA08]];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __46__PKPeerPaymentActionController__handleError___block_invoke_2;
        aBlock[3] = &unk_1E8010970;
        aBlock[4] = *(a1 + 40);
        v6 = _Block_copy(aBlock);
        v7 = [v5 domain];
        v8 = [v7 isEqualToString:*MEMORY[0x1E69BC388]];

        if (v8)
        {
          if (![v5 code])
          {
            v17 = *(*(a1 + 40) + 72) - 1;
            if (v17 > 2)
            {
              v20 = 0;
              v19 = 0;
            }

            else
            {
              v18 = off_1E8022888[v17];
              v19 = PKLocalizedPeerPaymentString(&off_1E8022870[v17]->isa);
              v20 = PKLocalizedPeerPaymentString(&v18->isa);
            }

            v21 = PKDisplayableErrorCustom();

            goto LABEL_36;
          }

          if ([v5 code] == 40301)
          {
            v9 = *(*(a1 + 40) + 72);
            if (v9 == 3)
            {
              v10 = @"PEER_PAYMENT_INSUFFICIENT_BALANCE_TRANSFER_TO_BANK_ERROR_DESCRIPTION";
              v11 = @"PEER_PAYMENT_INSUFFICIENT_BALANCE_TRANSFER_TO_BANK_ERROR_TITLE";
            }

            else
            {
              if (v9 != 2)
              {
                v20 = 0;
                v19 = 0;
                goto LABEL_35;
              }

              v10 = @"PEER_PAYMENT_INSUFFICIENT_BALANCE_TRANSFER_TO_DEBIT_CARD_ERROR_DESCRIPTION";
              v11 = @"PEER_PAYMENT_INSUFFICIENT_BALANCE_TRANSFER_TO_DEBIT_CARD_ERROR_TITLE";
            }

            v19 = PKLocalizedPeerPaymentString(&v11->isa);
            v20 = PKLocalizedPeerPaymentString(&v10->isa);
LABEL_35:
            v21 = PKDisplayableErrorCustom();

            [*(a1 + 40) _updateAccountWithCompletion:0];
LABEL_36:
            v3 = v21;
            goto LABEL_37;
          }

          if ([v5 code] == 40317)
          {
            if (*(*(a1 + 40) + 72) == 3)
            {
              v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_1.isa);
              v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_2.isa);
            }

            else
            {
              v20 = 0;
              v19 = 0;
            }

            v22 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v19 message:v20 preferredStyle:1];
            v30 = MEMORY[0x1E69DC648];
            v31 = PKLocalizedString(&cfstr_Cancel.isa);
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __46__PKPeerPaymentActionController__handleError___block_invoke_3;
            v38[3] = &unk_1E8011248;
            v33 = &v39;
            v39 = v6;
            v25 = [v30 actionWithTitle:v31 style:1 handler:v38];

            v26 = MEMORY[0x1E69DC648];
            v27 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_3.isa);
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __46__PKPeerPaymentActionController__handleError___block_invoke_4;
            v37[3] = &unk_1E80112E8;
            v37[4] = *(a1 + 40);
            v28 = v37;
LABEL_42:
            v32 = [v26 actionWithTitle:v27 style:0 handler:v28];

            [v22 addAction:v25];
            [v22 addAction:v32];
            [v22 setPreferredAction:v32];

            if (v22)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          }

          if ([v5 code] == 40318)
          {
            v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_12.isa);
            v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_13.isa);
            v22 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v19 message:v20 preferredStyle:1];
            v23 = MEMORY[0x1E69DC648];
            v24 = PKLocalizedString(&cfstr_Cancel.isa);
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __46__PKPeerPaymentActionController__handleError___block_invoke_5;
            v35[3] = &unk_1E8011248;
            v33 = &v36;
            v36 = v6;
            v25 = [v23 actionWithTitle:v24 style:1 handler:v35];

            v26 = MEMORY[0x1E69DC648];
            v27 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_11.isa);
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __46__PKPeerPaymentActionController__handleError___block_invoke_6;
            v34[3] = &unk_1E80112E8;
            v34[4] = *(a1 + 40);
            v28 = v34;
            goto LABEL_42;
          }
        }

        v19 = 0;
        v20 = 0;
LABEL_37:
        v22 = PKAlertForDisplayableErrorWithHandlers(v3, 0, v6, 0);
LABEL_38:
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
        [WeakRetained peerPaymentActionController:*(a1 + 40) requestPresentViewController:v22];

        return;
      }
    }

    v14 = *(a1 + 40);

    [v14 _peerPaymentActionHasCompletedWithState:2];
  }
}

- (void)_presentIdentityVerificationWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E69BB840]];

  if (v6)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    errorCopy = v8;
  }

  v9 = PKDeviceSupportsPeerPaymentIdentityVerification();
  userInfo2 = [errorCopy userInfo];
  v11 = [userInfo2 objectForKey:*MEMORY[0x1E69BBAC8]];

  if ((v9 & 1) == 0)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__PKPeerPaymentActionController__presentIdentityVerificationWithError___block_invoke;
    v25[3] = &unk_1E8010970;
    v25[4] = self;
    v14 = PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported(v25);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peerPaymentActionController:self requestPresentViewController:v14];
LABEL_12:

    goto LABEL_13;
  }

  v12 = PKLogFacilityTypeGetObject();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Presenting identity verification flow.", buf, 2u);
    }

    v14 = [[PKPeerPaymentIdentityVerificationController alloc] initWithPeerPaymentWebService:self->_peerPaymentWebService identityVerificationResponse:v11 setupDelegate:self hideInitialSplashScreen:0 context:self->_context];
    WeakRetained = [(PKPeerPaymentIdentityVerificationController *)v14 firstViewController];
    if (WeakRetained)
    {
      v16 = [[PKNavigationController alloc] initWithRootViewController:WeakRetained];
      [(PKNavigationController *)v16 setSupportedInterfaceOrientations:2];
      [(PKNavigationController *)v16 setModalInPresentation:1];
      if ([WeakRetained pkui_userInterfaceIdiomSupportsLargeLayouts])
      {
        [(PKNavigationController *)v16 setModalPresentationStyle:2];
      }

      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 peerPaymentActionController:self requestPresentViewController:v16];
    }

    goto LABEL_12;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Cannot present identity verification flow because the response data is nil", buf, 2u);
  }

  v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen.isa);
  v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen_0.isa);
  v20 = PKDisplayableErrorCustom();

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71__PKPeerPaymentActionController__presentIdentityVerificationWithError___block_invoke_185;
  v23[3] = &unk_1E8010970;
  v23[4] = self;
  v21 = PKAlertForDisplayableErrorWithHandlers(v20, 0, v23, 0);
  v22 = objc_loadWeakRetained(&self->_delegate);
  [v22 peerPaymentActionController:self requestPresentViewController:v21];

  errorCopy = v20;
LABEL_13:
}

- (void)_presentTermsAndConditionsWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKPeerPaymentActionController__presentTermsAndConditionsWithError___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = errorCopy;
  selfCopy = self;
  v5 = errorCopy;
  [(PKPeerPaymentActionController *)self _updateAccountWithCompletion:v6];
}

void __69__PKPeerPaymentActionController__presentTermsAndConditionsWithError___block_invoke(uint64_t a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69BB840]];

  if (v4)
  {
    v5 = [v2 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v2 = v6;
  }

  v7 = [v2 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E69BC558]];

  v9 = [v8 termsURL];
  v10 = [v8 termsIdentifier];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = [*(*(a1 + 40) + 24) termsURL];

  v9 = [*(*(a1 + 40) + 24) termsIdentifier];

  if (v13)
  {
    if (v9)
    {
      v11 = v9;
      v9 = v13;
LABEL_11:
      v14 = [*(*(a1 + 40) + 24) associatedPassUniqueID];
      v15 = [[PKPeerPaymentTermsController alloc] initWithTermsURL:v9 termsIdentifier:v11 passUniqueID:v14 webService:*(*(a1 + 40) + 16)];
      v16 = *(*(a1 + 40) + 40);
      *(*(a1 + 40) + 40) = v15;

      objc_initWeak(location, *(a1 + 40));
      v17 = *(*(a1 + 40) + 40);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __69__PKPeerPaymentActionController__presentTermsAndConditionsWithError___block_invoke_2;
      v35[3] = &unk_1E8022850;
      objc_copyWeak(&v36, location);
      [v17 setCustomPresentationHandler:v35];
      v18 = *(*(a1 + 40) + 40);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __69__PKPeerPaymentActionController__presentTermsAndConditionsWithError___block_invoke_3;
      v33[3] = &unk_1E8012C78;
      objc_copyWeak(&v34, location);
      [v18 presentTermsOverController:0 showInterstitialViewController:1 withCompletionHandler:v33];
      objc_destroyWeak(&v34);
      objc_destroyWeak(&v36);
      objc_destroyWeak(location);

      goto LABEL_18;
    }

    v26 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(*(a1 + 40) + 24);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v27;
      _os_log_impl(&dword_1BD026000, v26, OS_LOG_TYPE_DEFAULT, "Error: Cannot present terms with a nil terms identifier for account %@", location, 0xCu);
    }

    v29 = *(a1 + 40);
    v28 = (a1 + 40);
    v30 = *(v28 - 1);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__PKPeerPaymentActionController__presentTermsAndConditionsWithError___block_invoke_187;
    v37[3] = &unk_1E8010970;
    v37[4] = v29;
    v31 = PKAlertForDisplayableErrorWithHandlers(v30, 0, v37, 0);
    WeakRetained = objc_loadWeakRetained((*v28 + 80));
    [WeakRetained peerPaymentActionController:*v28 requestPresentViewController:v31];

    v9 = v13;
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(a1 + 40) + 24);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v20;
      _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Error: Cannot present a nil terms URL for account %@", location, 0xCu);
    }

    v22 = *(a1 + 40);
    v21 = (a1 + 40);
    v23 = *(v21 - 1);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __69__PKPeerPaymentActionController__presentTermsAndConditionsWithError___block_invoke_186;
    v38[3] = &unk_1E8010970;
    v38[4] = v22;
    v24 = PKAlertForDisplayableErrorWithHandlers(v23, 0, v38, 0);
    v25 = objc_loadWeakRetained((*v21 + 80));
    [v25 peerPaymentActionController:*v21 requestPresentViewController:v24];
  }

LABEL_18:
}

void __69__PKPeerPaymentActionController__presentTermsAndConditionsWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 10);
    [v6 peerPaymentActionController:v5 requestPresentViewController:v7];
  }
}

void __69__PKPeerPaymentActionController__presentTermsAndConditionsWithError___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _peerPaymentActionHasCompletedWithState:1];
    WeakRetained = v2;
  }
}

- (void)_handlePeerPaymentAccountDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPeerPaymentActionController__handlePeerPaymentAccountDidChangeNotification___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PKPeerPaymentActionController__handlePeerPaymentAccountDidChangeNotification___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) targetDevice];
  v2 = [v5 account];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (unint64_t)_peerPaymentControllerModeForAction
{
  v2 = self->_controllerAction - 1;
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1BE1168E8[v2];
  }
}

- (void)_updateAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  peerPaymentService = [(PKPeerPaymentWebService *)self->_peerPaymentWebService peerPaymentService];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKPeerPaymentActionController__updateAccountWithCompletion___block_invoke;
  v7[3] = &unk_1E8014738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [peerPaymentService updateAccountWithCompletion:v7];
}

void __62__PKPeerPaymentActionController__updateAccountWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPeerPaymentActionController__updateAccountWithCompletion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __62__PKPeerPaymentActionController__updateAccountWithCompletion___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)presentAddBankAccountViewController
{
  countryCode = [(PKPeerPaymentAccount *)self->_account countryCode];
  v3 = [[PKAddBankAccountInformationViewController alloc] initWithDelegate:self bankInformation:self->_bankInformation accountCountryCode:countryCode];
  v4 = [[PKNavigationController alloc] initWithRootViewController:v3];
  [(PKNavigationController *)v4 setModalInPresentation:1];
  [(PKNavigationController *)v4 setSupportedInterfaceOrientations:2];
  if ([(UIViewController *)v3 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)v4 setModalPresentationStyle:2];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentActionController:self requestPresentViewController:v4];
}

- (void)presentAddDebitCardViewController
{
  v3 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v20 = [v3 initWithWebService:mEMORY[0x1E69B8EF8]];

  v5 = objc_alloc_init(PKNavigationController);
  v6 = [objc_alloc(MEMORY[0x1E69B8F38]) initWithPeerPaymentAccount:self->_account];
  v7 = [[PKPeerPaymentSetupFlowProvisionConfiguration alloc] initWithSetupDelegate:self];
  v8 = [[PKPeerPaymentSetupFlowController alloc] initWithPeerPaymentCredential:v6 provisioningController:v20 passLibraryDataProvider:self->_passLibraryDataProvider configuration:v7 context:self->_context campaignAttributionReferrerIdentifier:0];
  v9 = [[PKPaymentAddDebitCardViewController alloc] initWithPeerPaymentSetupFlowController:v8];
  [(PKExplanationViewController *)v9 setExplanationViewControllerDelegate:self];
  instantWithdrawalPromotionFeatureDescriptor = [(PKPeerPaymentAccount *)self->_account instantWithdrawalPromotionFeatureDescriptor];
  feePercentage = [instantWithdrawalPromotionFeatureDescriptor feePercentage];
  if (feePercentage)
  {
    v19 = instantWithdrawalPromotionFeatureDescriptor;
    v12 = v8;
    v13 = v7;
    v14 = v6;
    v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v15 setNumberStyle:3];
    [v15 setMaximumFractionDigits:1];
    v16 = [v15 stringFromNumber:feePercentage];
    v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_28.isa, &stru_1F3BD5BF0.isa, v16);

    v6 = v14;
    v7 = v13;
    v8 = v12;
    instantWithdrawalPromotionFeatureDescriptor = v19;
  }

  else
  {
    v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_29.isa);
  }

  [(PKPaymentAddDebitCardViewController *)v9 setBodyText:v17];
  [(PKPaymentAddDebitCardViewController *)v9 setShowDebitCardHeroView:0];
  [(PKExplanationViewController *)v9 setShowCancelButton:1];
  [(PKNavigationController *)v5 setModalInPresentation:1];
  [(PKNavigationController *)v5 setSupportedInterfaceOrientations:2];
  if ([(UIViewController *)v9 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)v5 setModalPresentationStyle:2];
  }

  [(PKNavigationController *)v5 pushViewController:v9 animated:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentActionController:self requestPresentViewController:v5];
}

- (PKPeerPaymentActionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end