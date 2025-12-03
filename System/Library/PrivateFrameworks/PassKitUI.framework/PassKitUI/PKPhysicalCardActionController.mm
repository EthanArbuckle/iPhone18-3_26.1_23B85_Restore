@interface PKPhysicalCardActionController
- (PKPhysicalCardActionController)initWithAccountService:(id)service account:(id)account accountUser:(id)user delegate:(id)delegate;
- (id)_generatePaymentRequestWithSignatureRequest:(id)request;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator;
- (void)_performAction:(id)action onPhysicalCard:(id)card;
- (void)_performApplePayTrustSignatureRequestWithSignature:(id)signature completion:(id)completion;
- (void)_presentApplePayTrustWithPaymentRequest:(id)request completion:(id)completion;
- (void)_transitionToState:(int64_t)state withError:(id)error;
- (void)activatePhysicalCard:(id)card withActivationCode:(id)code;
- (void)activatePhysicalCardWithoutActivationCode:(id)code;
- (void)cancelPhysicalCard:(id)card;
- (void)disablePhysicalCard:(id)card;
- (void)enablePhysicalCard:(id)card;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizeApplePayTrustSignature:(id)signature handler:(id)handler;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
- (void)replacePhysicalCard:(id)card withReason:(unint64_t)reason;
@end

@implementation PKPhysicalCardActionController

- (PKPhysicalCardActionController)initWithAccountService:(id)service account:(id)account accountUser:(id)user delegate:(id)delegate
{
  serviceCopy = service;
  accountCopy = account;
  userCopy = user;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = PKPhysicalCardActionController;
  v15 = [(PKPhysicalCardActionController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountService, service);
    objc_storeStrong(&v16->_account, account);
    objc_storeStrong(&v16->_accountUser, user);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v17 = objc_alloc_init(MEMORY[0x1E69B8BE0]);
    paymentDevice = v16->_paymentDevice;
    v16->_paymentDevice = v17;

    v16->_state = 0;
  }

  return v16;
}

- (void)activatePhysicalCard:(id)card withActivationCode:(id)code
{
  cardCopy = card;
  codeCopy = code;
  if (codeCopy && [(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v7 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:4];
    [v7 setActivationCode:codeCopy];
    [(PKPhysicalCardActionController *)self _performAction:v7 onPhysicalCard:cardCopy];
  }
}

- (void)activatePhysicalCardWithoutActivationCode:(id)code
{
  codeCopy = code;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:4];
    [(PKPhysicalCardActionController *)self _performAction:v4 onPhysicalCard:codeCopy];
  }
}

- (void)enablePhysicalCard:(id)card
{
  cardCopy = card;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:1];
    [(PKPhysicalCardActionController *)self _performAction:v4 onPhysicalCard:cardCopy];
  }
}

- (void)disablePhysicalCard:(id)card
{
  cardCopy = card;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:2];
    [(PKPhysicalCardActionController *)self _performAction:v4 onPhysicalCard:cardCopy];
  }
}

- (void)cancelPhysicalCard:(id)card
{
  cardCopy = card;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:3];
    [(PKPhysicalCardActionController *)self _performAction:v4 onPhysicalCard:cardCopy];
  }
}

- (void)replacePhysicalCard:(id)card withReason:(unint64_t)reason
{
  cardCopy = card;
  if ([(PKPhysicalCardActionController *)self _canPerformActionWithState:self->_state])
  {
    v6 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:5];
    [v6 setReason:reason];
    [(PKPhysicalCardActionController *)self _performAction:v6 onPhysicalCard:cardCopy];
  }
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish
{
  v12 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  if (self->_authorizationCoordinator == finishCopy)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[PKPhysicalCardActionController paymentAuthorizationCoordinatorDidFinish:]";
      v10 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%s %p: paymentAuthorizationCoordinatorDidFinish: callback called.", buf, 0x16u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__PKPhysicalCardActionController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
    v6[3] = &unk_1E8010A10;
    v6[4] = self;
    v7 = finishCopy;
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

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator
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

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizeApplePayTrustSignature:(id)signature handler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__PKPhysicalCardActionController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke;
  v9[3] = &unk_1E8010AD8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(PKPhysicalCardActionController *)self _performApplePayTrustSignatureRequestWithSignature:signature completion:v9];
}

void __109__PKPhysicalCardActionController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke(uint64_t a1, int a2)
{
  v3 = [objc_alloc(MEMORY[0x1E69B8B80]) initWithStatus:a2 ^ 1u errors:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_performAction:(id)action onPhysicalCard:(id)card
{
  actionCopy = action;
  cardCopy = card;
  [(PKPhysicalCardActionController *)self _transitionToState:1 withError:0];
  actionType = [actionCopy actionType];
  paymentDevice = self->_paymentDevice;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPhysicalCardActionController__performAction_onPhysicalCard___block_invoke;
  v13[3] = &unk_1E80205E8;
  if (actionType == 5)
  {
    v10 = 251;
  }

  else
  {
    v10 = 0;
  }

  v13[4] = self;
  v14 = actionCopy;
  v15 = cardCopy;
  v11 = cardCopy;
  v12 = actionCopy;
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

- (void)_performApplePayTrustSignatureRequestWithSignature:(id)signature completion:(id)completion
{
  signatureCopy = signature;
  completionCopy = completion;
  v8 = completionCopy;
  lastActionRequest = self->_lastActionRequest;
  if (lastActionRequest)
  {
    accountService = self->_accountService;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__PKPhysicalCardActionController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke;
    v11[3] = &unk_1E8020610;
    v11[4] = self;
    v12 = completionCopy;
    [(PKAccountService *)accountService completePhysicalCardActionRequest:lastActionRequest withSignature:signatureCopy completion:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (id)_generatePaymentRequestWithSignatureRequest:(id)request
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (request)
  {
    v3 = MEMORY[0x1E696AB90];
    requestCopy = request;
    zero = [v3 zero];
    v6 = PKCurrencyAmountCreate(zero, *MEMORY[0x1E69BBB38]);

    v7 = objc_alloc_init(MEMORY[0x1E69B8D70]);
    [v7 setRequestType:4];
    currency = [v6 currency];
    [v7 setCurrencyCode:currency];

    [v7 setClientCallbackTimeout:65.0];
    [v7 setConfirmationStyle:1];
    v9 = PKLocalizedFeatureString();
    [v7 setLocalizedErrorMessage:v9];

    v10 = PKLocalizedFeatureString();
    [v7 setLocalizedAuthorizingTitle:v10];

    v11 = MEMORY[0x1E69B8E90];
    v12 = PKLocalizedFeatureString();
    amount = [v6 amount];
    v14 = [v11 summaryItemWithLabel:v12 amount:amount];
    v17[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v7 setPaymentSummaryItems:v15];

    [v7 setSuppressTotal:1];
    [v7 setApplePayTrustSignatureRequest:requestCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_presentApplePayTrustWithPaymentRequest:(id)request completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (requestCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:requestCopy];
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
      v13 = completionCopy;
      [(PKPaymentAuthorizationCoordinator *)v10 presentWithCompletion:v12];

      goto LABEL_9;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = "[PKPhysicalCardActionController _presentApplePayTrustWithPaymentRequest:completion:]";
      v16 = 2048;
      selfCopy = self;
      v18 = 2048;
      v19 = requestCopy;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "%s %p: PKPaymentAuthorizationCoordinator could not be instantiated with paymentRequest: %p.", buf, 0x20u);
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)_transitionToState:(int64_t)state withError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_state != state)
  {
    self->_state = state;
    if (state > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E8020630[state];
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = errorCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPhysicalCardController transitioning to state: %@, error: %@", &v10, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained physicalCardActionController:self didChangeToState:state withError:errorCopy];
  }
}

@end