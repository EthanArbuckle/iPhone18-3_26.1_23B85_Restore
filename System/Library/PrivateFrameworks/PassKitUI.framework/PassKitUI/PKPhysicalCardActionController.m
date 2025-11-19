@interface PKPhysicalCardActionController
- (PKPhysicalCardActionController)initWithAccountService:(id)a3 account:(id)a4 accountUser:(id)a5 delegate:(id)a6;
- (id)_generatePaymentRequestWithSignatureRequest:(id)a3;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)_performAction:(id)a3 onPhysicalCard:(id)a4;
- (void)_performApplePayTrustSignatureRequestWithSignature:(id)a3 completion:(id)a4;
- (void)_presentApplePayTrustWithPaymentRequest:(id)a3 completion:(id)a4;
- (void)_transitionToState:(int64_t)a3 withError:(id)a4;
- (void)activatePhysicalCard:(id)a3 withActivationCode:(id)a4;
- (void)activatePhysicalCardWithoutActivationCode:(id)a3;
- (void)cancelPhysicalCard:(id)a3;
- (void)disablePhysicalCard:(id)a3;
- (void)enablePhysicalCard:(id)a3;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)replacePhysicalCard:(id)a3 withReason:(unint64_t)a4;
@end

@implementation PKPhysicalCardActionController

- (PKPhysicalCardActionController)initWithAccountService:(id)a3 account:(id)a4 accountUser:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = PKPhysicalCardActionController;
  v15 = [(PKPhysicalCardActionController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountService, a3);
    objc_storeStrong(&v16->_account, a4);
    objc_storeStrong(&v16->_accountUser, a5);
    objc_storeWeak(&v16->_delegate, v14);
    v17 = objc_alloc_init(MEMORY[0x1E69B8BE0]);
    paymentDevice = v16->_paymentDevice;
    v16->_paymentDevice = v17;

    v16->_state = 0;
  }

  return v16;
}

- (void)activatePhysicalCard:(id)a3 withActivationCode:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6 && [(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v7 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:4];
    [v7 setActivationCode:v6];
    [(PKPhysicalCardActionController *)self _performAction:v7 onPhysicalCard:v8];
  }
}

- (void)activatePhysicalCardWithoutActivationCode:(id)a3
{
  v5 = a3;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:4];
    [(PKPhysicalCardActionController *)self _performAction:v4 onPhysicalCard:v5];
  }
}

- (void)enablePhysicalCard:(id)a3
{
  v5 = a3;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:1];
    [(PKPhysicalCardActionController *)self _performAction:v4 onPhysicalCard:v5];
  }
}

- (void)disablePhysicalCard:(id)a3
{
  v5 = a3;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:2];
    [(PKPhysicalCardActionController *)self _performAction:v4 onPhysicalCard:v5];
  }
}

- (void)cancelPhysicalCard:(id)a3
{
  v5 = a3;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:3];
    [(PKPhysicalCardActionController *)self _performAction:v4 onPhysicalCard:v5];
  }
}

- (void)replacePhysicalCard:(id)a3 withReason:(unint64_t)a4
{
  v7 = a3;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v6 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:5];
    [v6 setReason:a4];
    [(PKPhysicalCardActionController *)self _performAction:v6 onPhysicalCard:v7];
  }
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_authorizationCoordinator == v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[PKPhysicalCardActionController paymentAuthorizationCoordinatorDidFinish:]";
      v10 = 2048;
      v11 = self;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%s %p: paymentAuthorizationCoordinatorDidFinish: callback called.", buf, 0x16u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__PKPhysicalCardActionController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
    v6[3] = &unk_1E8010A10;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

uint64_t __75__PKPhysicalCardActionController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PKPhysicalCardActionController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  v6[3] = &unk_1E8010970;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  return [v4 dismissWithCompletion:v6];
}

void __75__PKPhysicalCardActionController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1)
  {
    v3 = 2;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 48);
    if (v4)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  [v2 _transitionToState:v3 withError:v4];
  *(*(a1 + 32) + 40) = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = 0;
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained presentationSceneIdentifierForPhysicalCardActionController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__PKPhysicalCardActionController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke;
  v9[3] = &unk_1E8010AD8;
  v10 = v7;
  v8 = v7;
  [(PKPhysicalCardActionController *)self _performApplePayTrustSignatureRequestWithSignature:a4 completion:v9];
}

void __109__PKPhysicalCardActionController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke(uint64_t a1, int a2)
{
  v3 = [objc_alloc(MEMORY[0x1E69B8B80]) initWithStatus:a2 ^ 1u errors:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_performAction:(id)a3 onPhysicalCard:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PKPhysicalCardActionController *)self _transitionToState:1 withError:0];
  v8 = [v6 actionType];
  paymentDevice = self->_paymentDevice;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPhysicalCardActionController__performAction_onPhysicalCard___block_invoke;
  v13[3] = &unk_1E80205E8;
  if (v8 == 5)
  {
    v10 = 251;
  }

  else
  {
    v10 = 0;
  }

  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(PKPaymentDevice *)paymentDevice paymentDeviceMetadataFields:v10 completion:v13];
}

void __64__PKPhysicalCardActionController__performAction_onPhysicalCard___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 8);
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 identifier];
  v8 = [*(a1[4] + 64) accountIdentifier];
  v9 = [*(a1[4] + 72) altDSID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PKPhysicalCardActionController__performAction_onPhysicalCard___block_invoke_2;
  v10[3] = &unk_1E80205C0;
  v10[4] = a1[4];
  [v4 beginPhysicalCardAction:v3 onPhysicalCardWithIdentifier:v7 forAccountWithIdentifier:v8 accountUserAltDSID:v9 deviceMetadata:v6 completion:v10];
}

void __64__PKPhysicalCardActionController__performAction_onPhysicalCard___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = v12;
  if (!v10 || v12)
  {
    v16 = [a4 count];
    if (v13 || !v16)
    {
      v17 = 3;
      v18 = v13;
    }

    else
    {
      v17 = 2;
      v18 = 0;
    }

    [*(a1 + 32) _transitionToState:v17 withError:v18];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 32), a3);
    v14 = [*(a1 + 32) _generatePaymentRequestWithSignatureRequest:v10];
    v15 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__PKPhysicalCardActionController__performAction_onPhysicalCard___block_invoke_3;
    v19[3] = &unk_1E8011D28;
    v19[4] = v15;
    [v15 _presentApplePayTrustWithPaymentRequest:v14 completion:v19];
  }
}

uint64_t __64__PKPhysicalCardActionController__performAction_onPhysicalCard___block_invoke_3(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _transitionToState:3 withError:0];
  }

  return result;
}

- (void)_performApplePayTrustSignatureRequestWithSignature:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  lastActionRequest = self->_lastActionRequest;
  if (lastActionRequest)
  {
    accountService = self->_accountService;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__PKPhysicalCardActionController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke;
    v11[3] = &unk_1E8020610;
    v11[4] = self;
    v12 = v7;
    [(PKAccountService *)accountService completePhysicalCardActionRequest:lastActionRequest withSignature:v6 completion:v11];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __96__PKPhysicalCardActionController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKPhysicalCardActionController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_2;
  block[3] = &unk_1E80135E0;
  v16 = v7;
  v17 = v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __96__PKPhysicalCardActionController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count] && *(a1 + 40) && *(a1 + 48) == 0;
  *(*(a1 + 56) + 40) = v2;
  objc_storeStrong((*(a1 + 56) + 48), *(a1 + 48));
  result = *(a1 + 64);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)_generatePaymentRequestWithSignatureRequest:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E696AB90];
    v4 = a3;
    v5 = [v3 zero];
    v6 = PKCurrencyAmountCreate(v5, *MEMORY[0x1E69BBB38]);

    v7 = objc_alloc_init(MEMORY[0x1E69B8D70]);
    [v7 setRequestType:4];
    v8 = [v6 currency];
    [v7 setCurrencyCode:v8];

    [v7 setClientCallbackTimeout:65.0];
    [v7 setConfirmationStyle:1];
    v9 = PKLocalizedFeatureString();
    [v7 setLocalizedErrorMessage:v9];

    v10 = PKLocalizedFeatureString();
    [v7 setLocalizedAuthorizingTitle:v10];

    v11 = MEMORY[0x1E69B8E90];
    v12 = PKLocalizedFeatureString();
    v13 = [v6 amount];
    v14 = [v11 summaryItemWithLabel:v12 amount:v13];
    v17[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v7 setPaymentSummaryItems:v15];

    [v7 setSuppressTotal:1];
    [v7 setApplePayTrustSignatureRequest:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_presentApplePayTrustWithPaymentRequest:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:v6];
    authorizationCoordinator = self->_authorizationCoordinator;
    self->_authorizationCoordinator = v8;

    [(PKPaymentAuthorizationCoordinator *)self->_authorizationCoordinator setDelegate:self];
    [(PKPaymentAuthorizationCoordinator *)self->_authorizationCoordinator _setPrivateDelegate:self];
    v10 = self->_authorizationCoordinator;
    if (v10)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __85__PKPhysicalCardActionController__presentApplePayTrustWithPaymentRequest_completion___block_invoke;
      v12[3] = &unk_1E8010AD8;
      v13 = v7;
      [(PKPaymentAuthorizationCoordinator *)v10 presentWithCompletion:v12];

      goto LABEL_9;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = "[PKPhysicalCardActionController _presentApplePayTrustWithPaymentRequest:completion:]";
      v16 = 2048;
      v17 = self;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "%s %p: PKPaymentAuthorizationCoordinator could not be instantiated with paymentRequest: %p.", buf, 0x20u);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

LABEL_9:
}

uint64_t __85__PKPhysicalCardActionController__presentApplePayTrustWithPaymentRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_transitionToState:(int64_t)a3 withError:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_state != a3)
  {
    self->_state = a3;
    if (a3 > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E8020630[a3];
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPhysicalCardController transitioning to state: %@, error: %@", &v10, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained physicalCardActionController:self didChangeToState:a3 withError:v6];
  }
}

@end