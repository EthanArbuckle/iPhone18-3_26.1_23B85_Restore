@interface PKPeerPaymentSetupFlowController
- (BOOL)_hasTooManyPasses;
- (BOOL)_willDisplayErrorForOperationOperationInContext:(unint64_t)context completion:(id)completion;
- (PKPeerPaymentSetupFlowController)initWithPeerPaymentCredential:(id)credential provisioningController:(id)controller passLibraryDataProvider:(id)provider configuration:(id)configuration context:(int64_t)context campaignAttributionReferrerIdentifier:(id)identifier;
- (PKPeerPaymentSetupFlowControllerDelegate)flowItemDelegate;
- (id)_paymentWebService;
- (id)_peerPaymentWebService;
- (id)firstPeerPaymentAccountSetupViewController;
- (id)passesIncludingPeerPaymentPass:(BOOL)pass isCheckingTotalPassCount:(BOOL)count;
- (unint64_t)_cipState;
- (void)_addAssociatedAccountWithCompletion:(id)completion;
- (void)_checkCloudStoreSetupWithCompletion:(id)completion;
- (void)_checkManateeCapabilityWithCompletion:(id)completion;
- (void)_checkMissingTLKsWithCompletion:(id)completion;
- (void)_completedOperation:(unint64_t)operation;
- (void)_fetchAppleCashCapabilitiesIfNecessary;
- (void)_fitlerOperations:(unint64_t)operations peerPaymentAccount:(id)account context:(int64_t)context;
- (void)_handleDisplayableError:(id)error completion:(id)completion;
- (void)_handlePeerPaymentAccountDidChangeNotification;
- (void)_nextViewControllerWithCompletion:(id)completion;
- (void)_presentEnsurePassCountWithCompletion:(id)completion;
- (void)_presentIdentityVerificationFlowWithError:(id)error completion:(id)completion;
- (void)_presentManateeCapableOperationWithCompletion:(id)completion;
- (void)_presentMissingTLKsFlowWithCompletion:(id)completion;
- (void)_presentNameConfirmationViewControllerWithError:(id)error completion:(id)completion;
- (void)_presentTermWithTermsResponse:(id)response completion:(id)completion;
- (void)_provisionPassWithCompletion:(id)completion;
- (void)_setupCloudStoreWithCompletion:(id)completion;
- (void)_termsOperationWithTermsResponse:(id)response completion:(id)completion;
- (void)confirmNameViewController:(id)controller enteredFirstName:(id)name lastName:(id)lastName;
- (void)confirmNameViewControllerCancelled:(id)cancelled;
- (void)nextViewControllerAfterPerfomingOperations:(unint64_t)operations completion:(id)completion;
- (void)selectPassesViewController:(id)controller didSelectPasses:(id)passes completion:(id)completion;
- (void)selectPassesViewControllerDidTapBackButton:(id)button;
- (void)viewControllerDidCancelSetupFlow:(id)flow;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation PKPeerPaymentSetupFlowController

- (PKPeerPaymentSetupFlowController)initWithPeerPaymentCredential:(id)credential provisioningController:(id)controller passLibraryDataProvider:(id)provider configuration:(id)configuration context:(int64_t)context campaignAttributionReferrerIdentifier:(id)identifier
{
  credentialCopy = credential;
  controllerCopy = controller;
  providerCopy = provider;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v20 = [(PKPeerPaymentSetupFlowController *)self init];
  v21 = v20;
  if (v20)
  {
    v61 = configurationCopy;
    objc_storeStrong(&v20->_peerPaymentCredential, credential);
    account = [(PKPeerPaymentCredential *)v21->_peerPaymentCredential account];
    peerPaymentAccount = v21->_peerPaymentAccount;
    v21->_peerPaymentAccount = account;

    if (providerCopy)
    {
      v24 = providerCopy;
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    }

    passLibraryDataProvider = v21->_passLibraryDataProvider;
    v21->_passLibraryDataProvider = v24;

    if (controllerCopy)
    {
      v26 = controllerCopy;
      provisioningController = v21->_provisioningController;
      v21->_provisioningController = v26;
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x1E69B8D48]);
      provisioningController = [(PKPeerPaymentSetupFlowController *)v21 _paymentWebService];
      v29 = [v28 initWithWebService:provisioningController];
      v30 = v21->_provisioningController;
      v21->_provisioningController = v29;
    }

    v21->_context = context;
    objc_storeStrong(&v21->_configuration, configuration);
    _peerPaymentWebService = [(PKPeerPaymentSetupFlowController *)v21 _peerPaymentWebService];
    peerPaymentWebService = v21->_peerPaymentWebService;
    v21->_peerPaymentWebService = _peerPaymentWebService;

    webService = [(PKPaymentProvisioningController *)v21->_provisioningController webService];
    v34 = webService;
    if (webService)
    {
      _paymentWebService = webService;
    }

    else
    {
      _paymentWebService = [(PKPeerPaymentSetupFlowController *)v21 _paymentWebService];
    }

    paymentWebService = v21->_paymentWebService;
    v21->_paymentWebService = _paymentWebService;

    peerPaymentService = [(PKPeerPaymentWebService *)v21->_peerPaymentWebService peerPaymentService];
    peerPaymentService = v21->_peerPaymentService;
    v21->_peerPaymentService = peerPaymentService;

    v39 = objc_alloc_init(MEMORY[0x1E69B87B0]);
    deviceCapabiltiesManager = v21->_deviceCapabiltiesManager;
    v21->_deviceCapabiltiesManager = v39;

    objc_storeStrong(&v21->_campaignAttributionReferrerIdentifier, identifier);
    associatedPassUniqueID = [(PKPeerPaymentAccount *)v21->_peerPaymentAccount associatedPassUniqueID];
    targetDevice = [(PKPaymentWebService *)v21->_paymentWebService targetDevice];
    v43 = objc_opt_respondsToSelector();

    if (v43)
    {
      targetDevice2 = [(PKPaymentWebService *)v21->_paymentWebService targetDevice];
      v45 = [targetDevice2 paymentWebService:v21->_paymentWebService passesOfType:1];

      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __173__PKPeerPaymentSetupFlowController_initWithPeerPaymentCredential_provisioningController_passLibraryDataProvider_configuration_context_campaignAttributionReferrerIdentifier___block_invoke;
      v62[3] = &unk_1E8017BC0;
      v63 = associatedPassUniqueID;
      v46 = [v45 pk_objectsPassingTest:v62];
      firstObject = [v46 firstObject];
      paymentPass = [firstObject paymentPass];
      peerPaymentPass = v21->_peerPaymentPass;
      v21->_peerPaymentPass = paymentPass;
    }

    if ([associatedPassUniqueID length])
    {
      v50 = v21->_peerPaymentPass;
      if (v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = [(PKPassLibraryDataProvider *)v21->_passLibraryDataProvider passWithUniqueID:associatedPassUniqueID];
      }

      v52 = v51;
      [(PKPaymentPass *)v51 loadImageSetSync:0 preheat:1];
      if ([credentialCopy flowState] == 2)
      {
        v53 = 1536;
      }

      else
      {
        v53 = 512;
      }

      v54 = [[PKPassView alloc] initWithPass:v52 content:5 suppressedContent:v53];
      v55 = [(PKPassView *)v54 snapshotOfFrontFaceWithRequestedSize:257.0, 157.0];
      passSnapShot = v21->_passSnapShot;
      v21->_passSnapShot = v55;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v58 = *MEMORY[0x1E69BC378];
    targetDevice3 = [(PKPeerPaymentWebService *)v21->_peerPaymentWebService targetDevice];
    [defaultCenter addObserver:v21 selector:sel__handlePeerPaymentAccountDidChangeNotification name:v58 object:targetDevice3];

    [(PKPeerPaymentSetupFlowController *)v21 _fetchAppleCashCapabilitiesIfNecessary];
    configurationCopy = v61;
  }

  return v21;
}

uint64_t __173__PKPeerPaymentSetupFlowController_initWithPeerPaymentCredential_provisioningController_passLibraryDataProvider_configuration_context_campaignAttributionReferrerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
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

- (id)passesIncludingPeerPaymentPass:(BOOL)pass isCheckingTotalPassCount:(BOOL)count
{
  v28 = *MEMORY[0x1E69E9840];
  targetDevice = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v8 = [targetDevice paymentWebService:self->_paymentWebService passesOfType:1];

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if (pass)
        {
          goto LABEL_11;
        }

        uniqueID = [*(*(&v23 + 1) + 8 * i) uniqueID];
        v16 = associatedPassUniqueID;
        v17 = v16;
        if (uniqueID == v16)
        {

          continue;
        }

        if (associatedPassUniqueID && uniqueID)
        {
          v18 = [uniqueID isEqualToString:v16];

          if (v18)
          {
            continue;
          }

LABEL_11:
          if (count)
          {
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        if (count)
        {
LABEL_16:
          [v22 addObject:v14];
          continue;
        }

LABEL_12:
        if (([v14 isHomeKeyPass] & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v19 = [v22 copy];

  return v19;
}

- (id)firstPeerPaymentAccountSetupViewController
{
  peerPaymentSetupConfigurationType = [(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType];
  if (!peerPaymentSetupConfigurationType)
  {
    v4 = off_1E8005FB0;
    goto LABEL_5;
  }

  if (peerPaymentSetupConfigurationType == 1)
  {
    v4 = off_1E8005E88;
LABEL_5:
    v5 = [objc_alloc(*v4) initWithPeerPaymentSetupFlowController:self];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)nextViewControllerAfterPerfomingOperations:(unint64_t)operations completion:(id)completion
{
  completionCopy = completion;
  [(PKPeerPaymentSetupFlowController *)self setOperations:operations];
  [(PKPeerPaymentSetupFlowController *)self _nextViewControllerWithCompletion:completionCopy];
}

- (void)_nextViewControllerWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    operations = self->_operations;
    if (operations)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PKPeerPaymentSetupOperationDescriptionForOperations(1uLL);
        *buf = 138412290;
        v39 = v11;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Processing peer payment setup operation: %@", buf, 0xCu);
      }

      if (![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:1 completion:completionCopy])
      {
        [(PKPeerPaymentSetupFlowController *)self _termsOperationWithTermsResponse:0 completion:completionCopy];
      }
    }

    else if ((operations & 2) != 0)
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PKPeerPaymentSetupOperationDescriptionForOperations(2uLL);
        *buf = 138412290;
        v39 = v13;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Checking peer payment setup operation: %@", buf, 0xCu);
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke;
      v36[3] = &unk_1E80158C0;
      v36[4] = self;
      v37 = completionCopy;
      [(PKPeerPaymentSetupFlowController *)self _checkManateeCapabilityWithCompletion:v36];
    }

    else if ((operations & 4) != 0)
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PKPeerPaymentSetupOperationDescriptionForOperations(4uLL);
        *buf = 138412290;
        v39 = v15;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Processing peer payment setup operation: %@", buf, 0xCu);
      }

      if (![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:4 completion:completionCopy])
      {
        [(PKPeerPaymentSetupFlowController *)self _presentEnsurePassCountWithCompletion:completionCopy];
      }
    }

    else if ((operations & 8) != 0)
    {
      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PKPeerPaymentSetupOperationDescriptionForOperations(8uLL);
        *buf = 138412290;
        v39 = v17;
        _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Checking peer payment setup operation: %@", buf, 0xCu);
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_42;
      v34[3] = &unk_1E80158C0;
      v34[4] = self;
      v35 = completionCopy;
      [(PKPeerPaymentSetupFlowController *)self _checkMissingTLKsWithCompletion:v34];
    }

    else if ((operations & 0x10) != 0)
    {
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = PKPeerPaymentSetupOperationDescriptionForOperations(0x10uLL);
        *buf = 138412290;
        v39 = v19;
        _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Checking peer payment setup operation: %@", buf, 0xCu);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_44;
      v32[3] = &unk_1E80158C0;
      v32[4] = self;
      v33 = completionCopy;
      [(PKPeerPaymentSetupFlowController *)self _checkCloudStoreSetupWithCompletion:v32];
    }

    else if ((operations & 0x20) != 0)
    {
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = PKPeerPaymentSetupOperationDescriptionForOperations(0x20uLL);
        *buf = 138412290;
        v39 = v21;
        _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Processing peer payment setup operation: %@", buf, 0xCu);
      }

      if (![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:32 completion:completionCopy])
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_46;
        v30[3] = &unk_1E8017A28;
        v30[4] = self;
        v31 = completionCopy;
        [(PKPeerPaymentSetupFlowController *)self _provisionPassWithCompletion:v30];
      }
    }

    else if ((operations & 0x40) != 0)
    {
      v22 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = PKPeerPaymentSetupOperationDescriptionForOperations(0x40uLL);
        *buf = 138412290;
        v39 = v23;
        _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Processing peer payment setup operation: %@", buf, 0xCu);
      }

      if (![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:64 completion:completionCopy])
      {
        [(PKPeerPaymentSetupFlowController *)self _presentIdentityVerificationFlowWithError:0 completion:completionCopy];
      }
    }

    else if ((operations & 0x80) != 0)
    {
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = PKPeerPaymentSetupOperationDescriptionForOperations(0x80uLL);
        *buf = 138412290;
        v39 = v25;
        _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Processing peer payment setup operation: %@", buf, 0xCu);
      }

      if (![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:128 completion:completionCopy])
      {
        objc_initWeak(buf, self);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_51;
        v27[3] = &unk_1E8027AB0;
        objc_copyWeak(&v29, buf);
        v27[4] = self;
        v28 = completionCopy;
        [(PKPeerPaymentSetupFlowController *)self _addAssociatedAccountWithCompletion:v27];

        objc_destroyWeak(&v29);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if ((operations & 0x100) == 0)
      {
        if (v7)
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Completed peer payment setup operations", buf, 2u);
        }

        completedOperations = self->_completedOperations;
        if ((completedOperations & 0x20) != 0)
        {
          if (![(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType])
          {
            goto LABEL_50;
          }

          completedOperations = self->_completedOperations;
        }

        if ((completedOperations & 0x80) == 0)
        {
          firstPeerPaymentAccountSetupViewController = [(PKPeerPaymentSetupFlowController *)self firstPeerPaymentAccountSetupViewController];
          (*(completionCopy + 2))(completionCopy, firstPeerPaymentAccountSetupViewController, 0, 0);

          goto LABEL_51;
        }

LABEL_50:
        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
        goto LABEL_51;
      }

      if (v7)
      {
        v26 = PKPeerPaymentSetupOperationDescriptionForOperations(0x100uLL);
        *buf = 138412290;
        v39 = v26;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Processing peer payment setup operation: %@", buf, 0xCu);
      }

      [(PKPeerPaymentSetupFlowController *)self _completedOperation:256];
      [(PKPeerPaymentSetupFlowController *)self _nextViewControllerWithCompletion:completionCopy];
    }
  }

LABEL_51:
}

uint64_t __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 _completedOperation:2];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _nextViewControllerWithCompletion:v5];
  }

  else
  {
    result = [v3 _willDisplayErrorForOperationOperationInContext:2 completion:*(a1 + 40)];
    if ((result & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);

      return [v7 _presentManateeCapableOperationWithCompletion:v8];
    }
  }

  return result;
}

void __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_42(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    if (([v3 _willDisplayErrorForOperationOperationInContext:8 completion:*(a1 + 40)] & 1) == 0)
    {
      v4 = *(a1 + 32);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_2;
      v7[3] = &unk_1E8027A60;
      v7[4] = v4;
      v8 = *(a1 + 40);
      [v4 _presentMissingTLKsFlowWithCompletion:v7];
    }
  }

  else
  {
    [v3 _completedOperation:8];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 _nextViewControllerWithCompletion:v6];
  }
}

void __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_2(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    [*(a1 + 32) _completedOperation:8];
    [*(a1 + 32) _nextViewControllerWithCompletion:*(a1 + 40)];
  }

  else if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _handleDisplayableError:v7 completion:*(a1 + 40)];
  }
}

void __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_44(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 _completedOperation:16];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _nextViewControllerWithCompletion:v5];
  }

  else if (([v3 _willDisplayErrorForOperationOperationInContext:16 completion:*(a1 + 40)] & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_2_45;
    v7[3] = &unk_1E8027A60;
    v7[4] = v6;
    v8 = *(a1 + 40);
    [v6 _setupCloudStoreWithCompletion:v7];
  }
}

void __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_2_45(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    [*(a1 + 32) _completedOperation:16];
    [*(a1 + 32) _nextViewControllerWithCompletion:*(a1 + 40)];
  }

  else if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _handleDisplayableError:v7 completion:*(a1 + 40)];
  }
}

void __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_46(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _handleDisplayableError:v4 completion:*(a1 + 40)];
  }

  else
  {
    v6 = v5[9];
    if (v6)
    {
      [MEMORY[0x1E69B8540] reportCampaignIdentifier:v6 eventType:2 referralSource:0 deepLinkType:0 productType:1];
      v5 = *(a1 + 32);
    }

    [v5 _completedOperation:32];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_2_48;
    v8[3] = &unk_1E8027A88;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v7 _nextViewControllerWithCompletion:v8];
  }
}

void __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_51(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_2_52;
      aBlock[3] = &unk_1E8010DD0;
      aBlock[4] = WeakRetained;
      v19 = *(a1 + 40);
      v10 = _Block_copy(aBlock);
      v11 = v10;
      if (v9[6])
      {
        [v9 _completedOperation:256];
        v12 = *(a1 + 32);
        v13 = *(v12 + 80);
        *(v12 + 80) = 0;

        v14 = v9[6];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_3;
        v16[3] = &unk_1E8010DD0;
        v16[4] = v9;
        v17 = v11;
        [v14 dismissViewControllerAnimated:1 completion:v16];
      }

      else
      {
        (*(v10 + 2))(v10);
      }
    }

    else
    {
      v15 = *(a1 + 40);
      if (a3)
      {
        (*(v15 + 16))(*(a1 + 40), 0, 1, 0);
      }

      else
      {
        [WeakRetained _handleDisplayableError:v7 completion:v15];
      }
    }
  }
}

uint64_t __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_2_52(uint64_t a1)
{
  [*(a1 + 32) _completedOperation:128];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _nextViewControllerWithCompletion:v3];
}

uint64_t __70__PKPeerPaymentSetupFlowController__nextViewControllerWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)_handleDisplayableError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke;
    aBlock[3] = &unk_1E8012370;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v9 = [MEMORY[0x1E69B8F28] proposedResolutionForError:errorCopy];
    if (v9 > 1)
    {
      if (v9 == 3)
      {
        v24 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Attempting to display CIP after an error was received", buf, 2u);
        }

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke_72;
        v37[3] = &unk_1E8012300;
        v37[4] = self;
        v38 = errorCopy;
        v39 = completionCopy;
        v8[2](v8, v37);

        v23 = v38;
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_39;
        }

        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Attempting to display terms after an error was received", buf, 2u);
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke_56;
        v46[3] = &unk_1E8012300;
        v47 = errorCopy;
        selfCopy = self;
        v49 = completionCopy;
        v8[2](v8, v46);

        v23 = v47;
      }
    }

    else
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v10 = errorCopy;
          domain = [v10 domain];
          v12 = [domain isEqualToString:*MEMORY[0x1E69BB840]];

          v13 = v10;
          if (v12)
          {
            userInfo = [v10 userInfo];
            v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
          }

          domain2 = [v13 domain];
          code = [v13 code];
          v17 = *MEMORY[0x1E69BC388];
          v18 = domain2;
          v19 = v18;
          if (v18 == v17)
          {

            if (code != 40310)
            {
              v27 = v19;
              v21 = 1;
              goto LABEL_29;
            }
          }

          else
          {
            if (!v18 || !v17)
            {

              goto LABEL_34;
            }

            v20 = [v18 isEqualToString:v17];

            if (!v20 || code != 40310)
            {
              v21 = [v19 isEqualToString:v17];
LABEL_29:

              if (v21 && code == 40014 && [(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]== 1)
              {
                if (!self->_confirmNameViewControllerBeingPresented)
                {
                  [(PKPeerPaymentSetupFlowController *)self _presentNameConfirmationViewControllerWithError:v13 completion:completionCopy];
                  goto LABEL_38;
                }

                v34 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_6.isa);
                v28 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_7.isa);
                v29 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v34 message:v28 preferredStyle:1];
                v30 = MEMORY[0x1E69DC648];
                v31 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
                v43[0] = MEMORY[0x1E69E9820];
                v43[1] = 3221225472;
                v43[2] = __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke_2_69;
                v43[3] = &unk_1E80112E8;
                v43[4] = self;
                v32 = [v30 actionWithTitle:v31 style:0 handler:v43];
                [v29 addAction:v32];

                [(PKPeerPaymentConfirmNameViewController *)self->_confirmNameViewControllerBeingPresented presentViewController:v29 animated:1 completion:0];
                v26 = v34;
LABEL_37:

LABEL_38:
                goto LABEL_39;
              }

LABEL_34:
              v33 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1BD026000, v33, OS_LOG_TYPE_DEFAULT, "Attempting to display an alert after an error was received", buf, 2u);
              }

              v40[0] = MEMORY[0x1E69E9820];
              v40[1] = 3221225472;
              v40[2] = __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke_71;
              v40[3] = &unk_1E8010E20;
              v42 = completionCopy;
              v41 = v10;
              v8[2](v8, v40);

              v26 = v42;
              goto LABEL_37;
            }
          }

          v25 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Presenting HSA2 upgrade flow after error from server was returned.", buf, 2u);
          }

          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke_57;
          v44[3] = &unk_1E8010DD0;
          v44[4] = self;
          v45 = completionCopy;
          v8[2](v8, v44);
          v26 = v45;
          goto LABEL_37;
        }

LABEL_39:

        goto LABEL_40;
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke_2_73;
      v35[3] = &unk_1E8010B50;
      v36 = completionCopy;
      v8[2](v8, v35);
      v23 = v36;
    }

    goto LABEL_39;
  }

LABEL_40:
}

void __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 48);
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke_2;
    v6[3] = &unk_1E8010B50;
    v7 = v3;
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    v3[2](v3);
  }
}

void __71__PKPeerPaymentSetupFlowController__handleDisplayableError_completion___block_invoke_56(uint64_t a1)
{
  v9 = *(a1 + 32);
  v2 = [*(a1 + 32) domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BB840]];

  if (v3)
  {
    v4 = [v9 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v6 = v5;
  }

  else
  {
    v6 = v9;
  }

  v10 = v6;
  v7 = [v6 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E69BC558]];

  [*(a1 + 40) _termsOperationWithTermsResponse:v8 completion:*(a1 + 48)];
}

- (void)_completedOperation:(unint64_t)operation
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKPeerPaymentSetupOperationDescriptionForOperations(operation);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "User completed peer payment setup operation %@", &v8, 0xCu);
  }

  v7 = self->_completedOperations | operation;
  self->_operations &= ~operation;
  self->_completedOperations = v7;
}

- (void)_termsOperationWithTermsResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  if (![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:1 completion:completionCopy])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PKPeerPaymentSetupFlowController__termsOperationWithTermsResponse_completion___block_invoke;
    v8[3] = &unk_1E8017A28;
    v8[4] = self;
    v9 = completionCopy;
    [(PKPeerPaymentSetupFlowController *)self _presentTermWithTermsResponse:responseCopy completion:v8];
  }
}

void __80__PKPeerPaymentSetupFlowController__termsOperationWithTermsResponse_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E69B8F28] displayableErrorForError:v5];
    [v6 _handleDisplayableError:v7 completion:*(a1 + 40)];
  }

  else if (a2)
  {
    [*(a1 + 32) _completedOperation:1];
    [*(a1 + 32) _nextViewControllerWithCompletion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_presentTermWithTermsResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    termsURL = [responseCopy termsURL];
    termsIdentifier = [responseCopy termsIdentifier];
    v10 = termsIdentifier;
    if (!termsURL || !termsIdentifier)
    {
      termsURL2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount termsURL];

      termsIdentifier2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount termsIdentifier];

      v10 = termsIdentifier2;
      termsURL = termsURL2;
    }

    v13 = [PKPeerPaymentTermsController alloc];
    associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v15 = [(PKPeerPaymentTermsController *)v13 initWithTermsURL:termsURL termsIdentifier:v10 passUniqueID:associatedPassUniqueID webService:self->_peerPaymentWebService];
    termsController = self->_termsController;
    self->_termsController = v15;

    [(PKPeerPaymentTermsController *)self->_termsController setPaymentSetupContext:[(PKPeerPaymentSetupFlowController *)self context]];
    if ([(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController shouldPushTerms])
    {
      [(PKPeerPaymentTermsController *)self->_termsController setCustomPresentationHandler:&__block_literal_global_271];
    }

    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Presenting terms for peer payment setup", buf, 2u);
    }

    v18 = self->_termsController;
    navigationController = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77__PKPeerPaymentSetupFlowController__presentTermWithTermsResponse_completion___block_invoke_76;
    v20[3] = &unk_1E801BBA0;
    v20[4] = self;
    v21 = completionCopy;
    [(PKPeerPaymentTermsController *)v18 presentTermsOverController:navigationController showInterstitialViewController:0 withCompletionHandler:v20];
  }
}

void __77__PKPeerPaymentSetupFlowController__presentTermWithTermsResponse_completion___block_invoke_76(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 - 1) >= 2)
  {
    if (!a2)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = a2 == 2;
    v7 = *(*(a1 + 32) + 88);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__PKPeerPaymentSetupFlowController__presentTermWithTermsResponse_completion___block_invoke_2;
    v8[3] = &unk_1E8015148;
    v10 = *(a1 + 40);
    v11 = v6;
    v9 = v5;
    [v7 dismissViewControllerAnimated:1 completion:v8];
  }
}

- (void)_presentManateeCapableOperationWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy && ![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:2 completion:completionCopy])
  {
    v5 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:8 feature:1 context:[(PKPeerPaymentSetupFlowController *)self context]];
    securityCapabiltiesController = self->_securityCapabiltiesController;
    self->_securityCapabiltiesController = v5;

    navigationController = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
    lastObject = navigationController;
    if (PKPaymentSetupContextIsBridge())
    {
      viewControllers = [navigationController viewControllers];
      lastObject = [viewControllers lastObject];
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Presenting hsa2 flow for peer payment setup", buf, 2u);
    }

    v11 = self->_securityCapabiltiesController;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PKPeerPaymentSetupFlowController__presentManateeCapableOperationWithCompletion___block_invoke;
    v12[3] = &unk_1E801BBA0;
    v12[4] = self;
    v13 = completionCopy;
    [(PKSecurityCapabilitiesController *)v11 presentSecurityRepairFlowWithPresentingViewController:lastObject completion:v12];
  }
}

void __82__PKPeerPaymentSetupFlowController__presentManateeCapableOperationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PKPeerPaymentSetupFlowController__presentManateeCapableOperationWithCompletion___block_invoke_2;
  v9[3] = &unk_1E80147B0;
  v13 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __82__PKPeerPaymentSetupFlowController__presentManateeCapableOperationWithCompletion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSecurityCapabilitiesErrorToString(*(a1 + 56));
    v4 = *(a1 + 32);
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Finished checking peer payment security capabilities with upgrade error %@, error %@", buf, 0x16u);
  }

  v5 = *(a1 + 56);
  if (v5 == 3)
  {
    v6 = *(*(a1 + 48) + 16);
    goto LABEL_8;
  }

  if (v5 || *(a1 + 32))
  {
    *(*(a1 + 40) + 32) = 1;
    v6 = *(*(a1 + 48) + 16);
LABEL_8:
    v6();
    return;
  }

  *(*(a1 + 40) + 32) = 1;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PKPeerPaymentSetupOperationDescriptionForOperations(2uLL);
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "User successfully completed %@. Ensuring that they indeed supportsDeviceToDeviceEncryption", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PKPeerPaymentSetupFlowController__presentManateeCapableOperationWithCompletion___block_invoke_79;
  v9[3] = &unk_1E80158C0;
  v9[4] = v8;
  v10 = *(a1 + 48);
  [v8 _checkManateeCapabilityWithCompletion:v9];
}

void __82__PKPeerPaymentSetupFlowController__presentManateeCapableOperationWithCompletion___block_invoke_79(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPeerPaymentSetupFlowController__presentManateeCapableOperationWithCompletion___block_invoke_2_80;
  block[3] = &unk_1E80150A8;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__PKPeerPaymentSetupFlowController__presentManateeCapableOperationWithCompletion___block_invoke_2_80(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _completedOperation:2];
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 _nextViewControllerWithCompletion:v3];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Error: Possible bug on CoreCDP. User is not manatee capable after successful completion of hsa2 upgrade flow", v7, 2u);
    }

    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E69B8F28] displayableErrorForError:0];
    (*(v5 + 16))(v5, 0, 0, v6);
  }
}

- (void)_presentEnsurePassCountWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = _Block_copy(completionCopy);

  nextViewControllerCompletion = self->_nextViewControllerCompletion;
  self->_nextViewControllerCompletion = v5;

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Presenting pass picker flow for peer payment setup", v15, 2u);
  }

  v8 = [PKPaymentSelectPassesViewController alloc];
  v9 = [(PKPeerPaymentSetupFlowController *)self passesIncludingPeerPaymentPass:0 isCheckingTotalPassCount:0];
  v10 = [(PKPaymentSelectPassesViewController *)v8 initWithSecureElementPasses:v9 context:self->_context delegate:self peerPaymentAccount:self->_peerPaymentAccount reporter:0];

  v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMax.isa);
  [(PKPaymentSelectPassesViewController *)v10 setHeaderTitle:v11];

  v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMax_0.isa);
  [(PKPaymentSelectPassesViewController *)v10 setHeaderSubtitle:v12];

  v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentRem.isa);
  [(PKPaymentSelectPassesViewController *)v10 setButtonText:v13];

  navigationController = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
  [navigationController pushViewController:v10 animated:1];
}

- (void)_presentMissingTLKsFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    v5 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:16 feature:1 context:[(PKPeerPaymentSetupFlowController *)self context]];
    securityCapabiltiesController = self->_securityCapabiltiesController;
    self->_securityCapabiltiesController = v5;

    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Presenting missing TLKs for peer payment setup", buf, 2u);
    }

    v8 = self->_securityCapabiltiesController;
    parentViewController = self->_parentViewController;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PKPeerPaymentSetupFlowController__presentMissingTLKsFlowWithCompletion___block_invoke;
    v10[3] = &unk_1E8026458;
    v11 = completionCopy;
    [(PKSecurityCapabilitiesController *)v8 presentSecurityRepairFlowWithPresentingViewController:parentViewController completion:v10];
  }
}

void __74__PKPeerPaymentSetupFlowController__presentMissingTLKsFlowWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKPeerPaymentSetupFlowController__presentMissingTLKsFlowWithCompletion___block_invoke_2;
  block[3] = &unk_1E801B4E8;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __74__PKPeerPaymentSetupFlowController__presentMissingTLKsFlowWithCompletion___block_invoke_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSecurityCapabilitiesErrorToString(a1[6]);
    v4 = a1[4];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Finished checking missing tlks with upgrade error %@, error %@", &v6, 0x16u);
  }

  return (*(a1[5] + 16))();
}

- (void)_setupCloudStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    v5 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:32 feature:1 context:[(PKPeerPaymentSetupFlowController *)self context]];
    securityCapabiltiesController = self->_securityCapabiltiesController;
    self->_securityCapabiltiesController = v5;

    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Starting cloud store setup for peer payment setup", buf, 2u);
    }

    v8 = self->_securityCapabiltiesController;
    parentViewController = self->_parentViewController;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__PKPeerPaymentSetupFlowController__setupCloudStoreWithCompletion___block_invoke;
    v10[3] = &unk_1E8026458;
    v11 = completionCopy;
    [(PKSecurityCapabilitiesController *)v8 presentSecurityRepairFlowWithPresentingViewController:parentViewController completion:v10];
  }
}

void __67__PKPeerPaymentSetupFlowController__setupCloudStoreWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPeerPaymentSetupFlowController__setupCloudStoreWithCompletion___block_invoke_2;
  block[3] = &unk_1E801B4E8;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__PKPeerPaymentSetupFlowController__setupCloudStoreWithCompletion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSecurityCapabilitiesErrorToString(a1[6]);
    v4 = a1[4];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Finished checking cloud store setup upgrade error %@, error %@", &v8, 0x16u);
  }

  v5 = a1[6];
  if (v5 == 3)
  {
    v6 = *(a1[5] + 16);
  }

  else
  {
    if (v5)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0A8], 0);
    }

    v6 = *(a1[5] + 16);
  }

  return v6();
}

- (void)_provisionPassWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Begin provisioning pass for peer payment setup", buf, 2u);
    }

    [(PKPaymentProvisioningController *)self->_provisioningController resetForNewProvisioning];
    targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
    p_peerPaymentCredential = &self->_peerPaymentCredential;
    peerPaymentCredential = self->_peerPaymentCredential;
    v8 = p_peerPaymentCredential[1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKPeerPaymentSetupFlowController__provisionPassWithCompletion___block_invoke;
    v10[3] = &unk_1E8013FF8;
    v11 = completionCopy;
    [targetDevice provisionPeerPaymentPassWithProvisioningController:v8 credential:peerPaymentCredential completion:v10];
  }
}

void __65__PKPeerPaymentSetupFlowController__provisionPassWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKPeerPaymentSetupFlowController__provisionPassWithCompletion___block_invoke_2;
  block[3] = &unk_1E8015148;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__PKPeerPaymentSetupFlowController__provisionPassWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Completed provisioning pass for peer payment setup", v5, 2u);
  }

  v3 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    (*(v3 + 16))(*(a1 + 40), 1, 0);
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA190], 0);
  }

  else
  {
    v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:*(a1 + 32)];
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)_presentIdentityVerificationFlowWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = _Block_copy(completionCopy);
  nextViewControllerCompletion = self->_nextViewControllerCompletion;
  self->_nextViewControllerCompletion = v8;

  if (self->_nextViewControllerCompletion && ![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:64 completion:completionCopy])
  {
    domain = [errorCopy domain];
    v11 = [domain isEqualToString:*MEMORY[0x1E69BB840]];

    if (v11)
    {
      userInfo = [errorCopy userInfo];
      v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      errorCopy = v13;
    }

    userInfo2 = [errorCopy userInfo];
    v15 = [userInfo2 objectForKey:*MEMORY[0x1E69BBAC8]];

    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Presenting identity verification for peer payment setup", buf, 2u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke;
    aBlock[3] = &unk_1E8027B00;
    aBlock[4] = self;
    v17 = _Block_copy(aBlock);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_4;
    v22[3] = &unk_1E8027B28;
    v22[4] = self;
    v18 = _Block_copy(v22);
    v19 = v18;
    if (v15)
    {
      (*(v18 + 2))(v18, v15);
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_4_102;
      v20[3] = &unk_1E8017B70;
      v20[4] = self;
      v21 = v18;
      v17[2](v17, v20);
    }
  }
}

void __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69B8F88]);
  v5 = [*(*(a1 + 32) + 128) context];
  [v4 setDevSigned:{objc_msgSend(v5, "devSigned")}];

  v6 = *(*(a1 + 32) + 128);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_2;
  v8[3] = &unk_1E8027AD8;
  v9 = v3;
  v7 = v3;
  [v6 peerPaymentIdentityVerificationRequest:v4 completion:v8];
}

void __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_3;
  block[3] = &unk_1E8014918;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_3(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0C8]);
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_5;
  aBlock[3] = &unk_1E80165F0;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if ([*(*(a1 + 32) + 104) peerPaymentSetupConfigurationType] == 1)
  {
    v5 = [[PKPeerPaymentIdentityVerificationController alloc] initWithPeerPaymentWebService:*(*(a1 + 32) + 128) identityVerificationResponse:v3 setupDelegate:*(a1 + 32) hideInitialSplashScreen:1 context:*(*(a1 + 32) + 96)];
    v6 = [[PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController alloc] initWithPeerPaymentSetupFlowController:*(a1 + 32)];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_2_98;
    v18[3] = &unk_1E8010970;
    v18[4] = *(a1 + 32);
    [(PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController *)v6 setCancelHandler:v18];
    objc_initWeak(&location, v6);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_3_99;
    v13 = &unk_1E80111F8;
    objc_copyWeak(&v16, &location);
    v7 = v5;
    v14 = v7;
    v15 = v4;
    [(PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController *)v6 setContinueHandler:&v10];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    if (v7)
    {
      if (v6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [[PKPeerPaymentIdentityVerificationController alloc] initWithPeerPaymentWebService:*(*(a1 + 32) + 128) identityVerificationResponse:v3 setupDelegate:*(a1 + 32) hideInitialSplashScreen:0 context:*(*(a1 + 32) + 96)];
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_7:
  v6 = [(PKPeerPaymentIdentityVerificationController *)v7 firstViewController:v10];
  if (!v6)
  {
    (*(v4 + 2))(v4, 0);
    goto LABEL_9;
  }

LABEL_8:
  v8 = [[PKNavigationController alloc] initWithRootViewController:v6];
  [(PKNavigationController *)v8 setModalInPresentation:1];
  [(PKNavigationController *)v8 setSupportedInterfaceOrientations:2];
  PKPaymentSetupApplyContextAppearance([*(a1 + 32) context], v8);
  v9 = [*(*(a1 + 32) + 88) navigationController];
  [v9 presentViewController:v8 animated:1 completion:0];

LABEL_9:
}

void __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_6;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_94;
    v6[3] = &unk_1E8010B50;
    v7 = v4;
    [v3 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    v4[2](v4);
  }
}

void __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_6(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Error: no view controller defined for identity verification flow.", v7, 2u);
  }

  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0C0], 0);
  v3 = *(*(a1 + 32) + 80);
  v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:0];
  (*(v3 + 16))(v3, 0, 0, v4);

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;
}

void __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_2_98(uint64_t a1)
{
  (*(*(*(a1 + 32) + 80) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;
}

void __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_3_99(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) firstViewController];
    if (v3)
    {
      v4 = [v5 navigationController];
      [v4 pushViewController:v3 animated:1];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }

    WeakRetained = v5;
  }
}

void __89__PKPeerPaymentSetupFlowController__presentIdentityVerificationFlowWithError_completion___block_invoke_4_102(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (v11)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      v8 = [MEMORY[0x1E69B8F28] displayableErrorForError:v5];
      [v7 _handleDisplayableError:v8 completion:*(*(a1 + 32) + 80)];
    }

    else
    {
      (*(v7[10] + 16))();
      v9 = *(a1 + 32);
      v10 = *(v9 + 80);
      *(v9 + 80) = 0;
    }
  }
}

- (void)_addAssociatedAccountWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    if ([(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]== 1)
    {
      v5 = self->_configuration;
    }

    else
    {
      v5 = 0;
    }

    familyMember = [(PKPeerPaymentSetupFlowControllerConfiguration *)v5 familyMember];
    altDSID = [familyMember altDSID];
    firstName = [(PKPeerPaymentSetupFlowControllerConfiguration *)v5 firstName];
    lastName = [(PKPeerPaymentSetupFlowControllerConfiguration *)v5 lastName];
    if (altDSID)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69B8F10]);
      [v10 setFirstName:firstName];
      [v10 setLastName:lastName];
      [v10 setAltDSID:altDSID];
      [v10 setRole:1];
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v19 = firstName;
        v20 = 2112;
        v21 = lastName;
        v22 = 2112;
        v23 = altDSID;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Starting add associated account flow for firstName: %@  lastName: %@ altDSID:  %@.", buf, 0x20u);
      }

      peerPaymentWebService = self->_peerPaymentWebService;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke;
      v14[3] = &unk_1E8027BA0;
      v17 = completionCopy;
      v15 = v5;
      selfCopy = self;
      [(PKPeerPaymentWebService *)peerPaymentWebService peerPaymentAddAssociatedAccountWithRequest:v10 completion:v14];
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Error: cannot add an associated account for a nil altDSID", buf, 2u);
      }

      v10 = [MEMORY[0x1E69B8F28] displayableErrorForError:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v10);
    }
  }
}

void __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_2;
  block[3] = &unk_1E8014D58;
  v12 = v6;
  v13 = v5;
  v16 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Addition of associated account completed with error %@", buf, 0xCu);
  }

  if (*(a1 + 32) || !*(a1 + 40))
  {
    v4 = *(a1 + 64);
    v5 = [MEMORY[0x1E69B8F28] displayableErrorForError:?];
    (*(v4 + 16))(v4, 0, 0, v5);
  }

  else
  {
    v6 = [*(a1 + 48) updatedPreferences];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_104;
    aBlock[3] = &unk_1E8027B78;
    aBlock[4] = *(a1 + 56);
    v5 = v6;
    v11 = v5;
    v7 = _Block_copy(aBlock);
    if (v5)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Updating preferences for newly added associated account %@", buf, 0xCu);
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_107;
      v8[3] = &unk_1E8010B50;
      v9 = *(a1 + 64);
      v7[2](v7, v8);
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

void __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 128) targetDevice];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_2_105;
  v7[3] = &unk_1E8027B50;
  v8 = v3;
  v6 = v3;
  [v4 setPreferences:v5 completion:v7];
}

void __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_2_105(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_3;
  v6[3] = &unk_1E8010DD0;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __72__PKPeerPaymentSetupFlowController__addAssociatedAccountWithCompletion___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error updating preferences for new associated account %@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_presentNameConfirmationViewControllerWithError:(id)error completion:(id)completion
{
  completionCopy = completion;
  v5 = _Block_copy(completionCopy);
  nextViewControllerCompletion = self->_nextViewControllerCompletion;
  self->_nextViewControllerCompletion = v5;

  if (self->_nextViewControllerCompletion && ![(PKPeerPaymentSetupFlowController *)self _willDisplayErrorForOperationOperationInContext:256 completion:completionCopy])
  {
    if ([(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]== 1)
    {
      v7 = self->_configuration;
    }

    else
    {
      v7 = 0;
    }

    familyMember = [(PKPeerPaymentSetupFlowControllerConfiguration *)v7 familyMember];
    if (familyMember)
    {
      v9 = [PKPeerPaymentConfirmNameViewController alloc];
      familyMember2 = [(PKPeerPaymentSetupFlowControllerConfiguration *)v7 familyMember];
      v11 = [(PKPeerPaymentConfirmNameViewController *)v9 initWithFamilyMember:familyMember2 delegate:self context:self->_context];
      confirmNameViewControllerBeingPresented = self->_confirmNameViewControllerBeingPresented;
      self->_confirmNameViewControllerBeingPresented = v11;

      v13 = [[PKNavigationController alloc] initWithRootViewController:self->_confirmNameViewControllerBeingPresented];
      [(PKNavigationController *)v13 setModalInPresentation:1];
      navigationController = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
      [navigationController presentViewController:v13 animated:1 completion:0];
    }

    else
    {
      v15 = self->_nextViewControllerCompletion;
      v16 = [MEMORY[0x1E69B8F28] displayableErrorForError:0];
      (*(v15 + 2))(v15, 0, 0, v16);

      v13 = self->_nextViewControllerCompletion;
      self->_nextViewControllerCompletion = 0;
    }
  }
}

- (void)_fitlerOperations:(unint64_t)operations peerPaymentAccount:(id)account context:(int64_t)context
{
  v18 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PKPeerPaymentSetupOperationDescriptionForOperations(operations);
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Setting new peer payment setup operations %@", &v16, 0xCu);
  }

  completedOperations = self->_completedOperations;
  self->_operations = operations & ~completedOperations;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PKPeerPaymentSetupOperationDescriptionForOperations(completedOperations);
    v16 = 138412290;
    v17 = v11;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Removing completed peer payment setup operations %@", &v16, 0xCu);
  }

  if (([(PKPeerPaymentAccount *)self->_peerPaymentAccount termsAcceptanceRequired]& 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PKPeerPaymentSetupOperationDescriptionForOperations(1uLL);
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Filtering out peer payment setup operation %@", &v16, 0xCu);
    }

    [(PKPeerPaymentSetupFlowController *)self _completedOperation:1];
  }

  if (![(PKPeerPaymentSetupFlowController *)self _cipState])
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PKPeerPaymentSetupOperationDescriptionForOperations(0x40uLL);
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Filtering out peer payment setup operation %@", &v16, 0xCu);
    }

    [(PKPeerPaymentSetupFlowController *)self _completedOperation:64];
  }

  if (![(PKPeerPaymentSetupFlowController *)self _hasTooManyPasses])
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PKPeerPaymentSetupOperationDescriptionForOperations(4uLL);
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Filtering out peer payment setup operation %@", &v16, 0xCu);
    }

    [(PKPeerPaymentSetupFlowController *)self _completedOperation:4];
  }

  if ([(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]== 1 && [(PKPeerPaymentSetupFlowController *)self _peerPaymentPassIsProvisioned])
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PKPeerPaymentSetupOperationDescriptionForOperations(0x20uLL);
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Filtering out peer payment setup operation %@", &v16, 0xCu);
    }

    [(PKPeerPaymentSetupFlowController *)self _completedOperation:32];
  }
}

- (BOOL)_willDisplayErrorForOperationOperationInContext:(unint64_t)context completion:(id)completion
{
  contextCopy = context;
  v87 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ((contextCopy & 2) != 0)
  {
    if (PKPaymentSetupContextIsSetupAssistant())
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PKPeerPaymentSetupOperationDescriptionForOperations(2uLL);
        *buf = 138412290;
        v86 = v18;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Not performing operation %@ because the user is in setup assistant", buf, 0xCu);
      }

      v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_16.isa);
      v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_17.isa);
      v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
      v19 = MEMORY[0x1E69DC648];
      v20 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke;
      v83[3] = &unk_1E8011248;
      v84 = completionCopy;
      v21 = [v19 actionWithTitle:v20 style:0 handler:v83];
      [v11 addAction:v21];

      navigationController = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
      [navigationController presentViewController:v11 animated:1 completion:0];

      v16 = v84;
      goto LABEL_14;
    }

    if (PKPaymentSetupContextIsBridge())
    {
      if (self->_hasPresentedDeviceToDeviceEncryptionFlow)
      {
        v33 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = PKPeerPaymentSetupOperationDescriptionForOperations(2uLL);
          *buf = 138412290;
          v86 = v34;
          _os_log_impl(&dword_1BD026000, v33, OS_LOG_TYPE_DEFAULT, "Not performing operation %@ because the user is in bridge and has already need the device to device encryption flow", buf, 0xCu);
        }

        v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_18.isa);
        v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_19.isa);
        v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
        v35 = MEMORY[0x1E69DC648];
        v36 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke_125;
        v81[3] = &unk_1E8011248;
        v82 = completionCopy;
        v37 = [v35 actionWithTitle:v36 style:1 handler:v81];
        [v11 addAction:v37];

        navigationController2 = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
        [navigationController2 presentViewController:v11 animated:1 completion:0];

        v16 = v82;
        goto LABEL_14;
      }
    }

    else if (self->_hasPresentedDeviceToDeviceEncryptionFlow)
    {
      v45 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = PKPeerPaymentSetupOperationDescriptionForOperations(2uLL);
        *buf = 138412290;
        v86 = v46;
        _os_log_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEFAULT, "Not performing operation %@ because the user has already need the device to device encryption flow", buf, 0xCu);
      }

      v47 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_0.isa);
      v48 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_1.isa);
      v9 = PKDisplayableErrorCustom();

      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke_132;
      v79[3] = &unk_1E8010B50;
      v80 = completionCopy;
      v49 = PKAlertForDisplayableErrorWithHandlers(v9, 0, v79, 0);
      navigationController3 = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
      [navigationController3 presentViewController:v49 animated:1 completion:0];

      goto LABEL_47;
    }

    goto LABEL_52;
  }

  if ((contextCopy & 0x40) == 0)
  {
    if ((contextCopy & 8) != 0)
    {
      if (PKPaymentSetupContextIsSetupAssistant())
      {
        v39 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = PKPeerPaymentSetupOperationDescriptionForOperations(8uLL);
          *buf = 138412290;
          v86 = v40;
          _os_log_impl(&dword_1BD026000, v39, OS_LOG_TYPE_DEFAULT, "Not performing operation %@ because the user is in setup assistant", buf, 0xCu);
        }

        v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_1.isa);
        v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_2.isa);
        v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
        v41 = MEMORY[0x1E69DC648];
        v42 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke_159;
        v71[3] = &unk_1E8011248;
        v72 = completionCopy;
        v43 = [v41 actionWithTitle:v42 style:0 handler:v71];
        [v11 addAction:v43];

        navigationController4 = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
        [navigationController4 presentViewController:v11 animated:1 completion:0];

        v16 = v72;
        goto LABEL_14;
      }
    }

    else if ((contextCopy & 4) != 0)
    {
      if (PKPaymentSetupContextIsSetupAssistant())
      {
        v56 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = PKPeerPaymentSetupOperationDescriptionForOperations(4uLL);
          *buf = 138412290;
          v86 = v57;
          _os_log_impl(&dword_1BD026000, v56, OS_LOG_TYPE_DEFAULT, "Not performing operation %@ because the user is in setup assistant", buf, 0xCu);
        }

        MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0A0], 0);
        v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen.isa);
        v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen_0.isa);
        v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
        v58 = MEMORY[0x1E69DC648];
        v59 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke_166;
        v69[3] = &unk_1E8011248;
        v70 = completionCopy;
        v60 = [v58 actionWithTitle:v59 style:0 handler:v69];
        [v11 addAction:v60];

        navigationController5 = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
        [navigationController5 presentViewController:v11 animated:1 completion:0];

        v16 = v70;
        goto LABEL_14;
      }
    }

    else if ((contextCopy & 0x100) != 0 && [(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]!= 1)
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PKPeerPaymentSetupOperationDescriptionForOperations(0x100uLL);
        *buf = 138412290;
        v86 = v8;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Not performing operation %@ because the user is not adding an associated account", buf, 0xCu);
      }

      v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen.isa);
      v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen_0.isa);
      v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
      v12 = MEMORY[0x1E69DC648];
      v13 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke_167;
      v67[3] = &unk_1E8011248;
      v68 = completionCopy;
      v14 = [v12 actionWithTitle:v13 style:0 handler:v67];
      [v11 addAction:v14];

      navigationController6 = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
      [navigationController6 presentViewController:v11 animated:1 completion:0];

      v16 = v68;
      goto LABEL_14;
    }

LABEL_52:
    v55 = 0;
    goto LABEL_53;
  }

  _cipState = [(PKPeerPaymentSetupFlowController *)self _cipState];
  v24 = PKDeviceSupportsPeerPaymentIdentityVerification();
  if (_cipState == 2)
  {
    if (v24)
    {
      v51 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = PKPeerPaymentSetupOperationDescriptionForOperations(0x40uLL);
        *buf = 138412290;
        v86 = v52;
        _os_log_impl(&dword_1BD026000, v51, OS_LOG_TYPE_DEFAULT, "Not performing operation %@ because the cannot perform CIP.", buf, 0xCu);
      }

      v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_9.isa);
      v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_13.isa);
      if (PKPaymentSetupContextIsSetupAssistant())
      {
        PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
      }

      else
      {
        PKLocalizedString(&cfstr_OkButtonTitle.isa);
      }
      v11 = ;
      v63 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
      v64 = MEMORY[0x1E69DC648];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke_139;
      v75[3] = &unk_1E8011248;
      v76 = completionCopy;
      v65 = [v64 actionWithTitle:v11 style:0 handler:v75];
      [v63 addAction:v65];

      navigationController7 = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
      [navigationController7 presentViewController:v63 animated:1 completion:0];

      goto LABEL_15;
    }

    goto LABEL_46;
  }

  if (_cipState != 1)
  {
    if (v24)
    {
      goto LABEL_52;
    }

LABEL_46:
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke_2;
    v77[3] = &unk_1E8010B50;
    v78 = completionCopy;
    v53 = PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported(v77);
    navigationController8 = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
    [navigationController8 presentViewController:v53 animated:1 completion:0];

    v9 = v78;
    goto LABEL_47;
  }

  if ((v24 & 1) == 0)
  {
    goto LABEL_46;
  }

  if (!PKPaymentSetupContextIsSetupAssistant())
  {
    goto LABEL_52;
  }

  peerPaymentSetupConfigurationType = [(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType];
  v26 = peerPaymentSetupConfigurationType == 1;
  if (peerPaymentSetupConfigurationType == 1)
  {
    v27 = @"PEER_PAYMENT_ERROR_IDENTITY_VERIFICATION_SETUP_ASSISTANT_FAMILY_ALERT_TITLE";
  }

  else
  {
    v27 = @"IDENTITY_VERIFICATION_SETUP_ASSISTANT_ALERT_TITLE";
  }

  if (v26)
  {
    v28 = @"PEER_PAYMENT_ERROR_IDENTITY_VERIFICATION_SETUP_ASSISTANT_FAMILY_ALERT_MESSAGE";
  }

  else
  {
    v28 = @"IDENTITY_VERIFICATION_SETUP_ASSISTANT_ALERT_MESSAGE";
  }

  v9 = PKLocalizedPeerPaymentString(&v27->isa);
  v10 = PKLocalizedPeerPaymentString(&v28->isa);
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
  v29 = MEMORY[0x1E69DC648];
  v30 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __95__PKPeerPaymentSetupFlowController__willDisplayErrorForOperationOperationInContext_completion___block_invoke_2_152;
  v73[3] = &unk_1E8011248;
  v74 = completionCopy;
  v31 = [v29 actionWithTitle:v30 style:0 handler:v73];
  [v11 addAction:v31];

  navigationController9 = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
  [navigationController9 presentViewController:v11 animated:1 completion:0];

  v16 = v74;
LABEL_14:

LABEL_15:
LABEL_47:

  v55 = 1;
LABEL_53:

  return v55;
}

- (BOOL)_hasTooManyPasses
{
  v17 = *MEMORY[0x1E69E9840];
  if (PKDisableDynamicSEAllocation())
  {
    targetDevice = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
    v4 = [(PKPeerPaymentSetupFlowController *)self passesIncludingPeerPaymentPass:0 isCheckingTotalPassCount:1];
    v5 = [v4 pk_countObjectsPassingTest:&__block_literal_global_170_1];
    if (v5)
    {
      if (targetDevice && (objc_opt_respondsToSelector() & 1) != 0)
      {
        maximumPaymentCards = [targetDevice maximumPaymentCards];
      }

      else
      {
        v9 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v15 = 138543362;
          v16 = v11;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Target device did not respond to max payment cards. Assuming local maximum.", &v15, 0xCu);
        }

        maximumPaymentCards = PKMaxPaymentCards();
      }

      LODWORD(v5) = maximumPaymentCards - 1 < v5;
    }

    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v5)
      {
        v13 = @"YES";
      }

      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Need to ensure pass count %@ for peer payment setup", &v15, 0xCu);
    }
  }

  else
  {
    targetDevice = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(targetDevice, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1BD026000, targetDevice, OS_LOG_TYPE_DEFAULT, "%{public}@ - _hasTooManyPasses returning false because dynamic se allocation enabled", &v15, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_checkManateeCapabilityWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:8 feature:1 context:self->_context];
    securityCapabiltiesController = self->_securityCapabiltiesController;
    self->_securityCapabiltiesController = v5;

    v7 = self->_securityCapabiltiesController;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PKPeerPaymentSetupFlowController__checkManateeCapabilityWithCompletion___block_invoke;
    v8[3] = &unk_1E8018328;
    v9 = completionCopy;
    [(PKSecurityCapabilitiesController *)v7 isEnabledForSecuirtyRequirementsWithCompletion:v8];
  }
}

void __74__PKPeerPaymentSetupFlowController__checkManateeCapabilityWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PKPeerPaymentSetupFlowController__checkManateeCapabilityWithCompletion___block_invoke_2;
  v3[3] = &unk_1E8010FA8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_checkCloudStoreSetupWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:32 feature:1 context:self->_context];
    securityCapabiltiesController = self->_securityCapabiltiesController;
    self->_securityCapabiltiesController = v5;

    v7 = self->_securityCapabiltiesController;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__PKPeerPaymentSetupFlowController__checkCloudStoreSetupWithCompletion___block_invoke;
    v8[3] = &unk_1E8018328;
    v9 = completionCopy;
    [(PKSecurityCapabilitiesController *)v7 isEnabledForSecuirtyRequirementsWithCompletion:v8];
  }
}

void __72__PKPeerPaymentSetupFlowController__checkCloudStoreSetupWithCompletion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKPeerPaymentSetupFlowController__checkCloudStoreSetupWithCompletion___block_invoke_2;
  block[3] = &unk_1E8027BC8;
  v5 = *(a1 + 32);
  v9 = a2;
  v7 = v5;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __72__PKPeerPaymentSetupFlowController__checkCloudStoreSetupWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48) == 1 && *(a1 + 40) == 0;
  return (*(v2 + 16))(v2, v3);
}

- (void)_checkMissingTLKsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:16 feature:1 context:[(PKPeerPaymentSetupFlowController *)self context]];
    securityCapabiltiesController = self->_securityCapabiltiesController;
    self->_securityCapabiltiesController = v5;

    v7 = self->_securityCapabiltiesController;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PKPeerPaymentSetupFlowController__checkMissingTLKsWithCompletion___block_invoke;
    v8[3] = &unk_1E8018328;
    v9 = completionCopy;
    [(PKSecurityCapabilitiesController *)v7 isEnabledForSecuirtyRequirementsWithCompletion:v8];
  }
}

void __68__PKPeerPaymentSetupFlowController__checkMissingTLKsWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__PKPeerPaymentSetupFlowController__checkMissingTLKsWithCompletion___block_invoke_2;
  v2[3] = &unk_1E8010FA8;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __68__PKPeerPaymentSetupFlowController__checkMissingTLKsWithCompletion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"YES";
    if (v2)
    {
      v4 = @"NO";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Need to present missing TLKs flow %@ for peer payment setup", &v7, 0xCu);
  }

  v5 = MEMORY[0x1E69BA0B0];
  if (!v2)
  {
    v5 = MEMORY[0x1E69B9F38];
  }

  MEMORY[0x1BFB41980](*v5, 0);
  return (*(*(a1 + 32) + 16))();
}

- (unint64_t)_cipState
{
  if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 1 && [(PKPeerPaymentAccount *)self->_peerPaymentAccount stage]== 3)
  {
    return 0;
  }

  result = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state];
  if (result != 1)
  {
    if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount identityVerificationRequired])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)_fetchAppleCashCapabilitiesIfNecessary
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]== 1)
  {
    if ([(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]== 1)
    {
      v3 = self->_configuration;
    }

    else
    {
      v3 = 0;
    }

    familyMember = [(PKPeerPaymentSetupFlowControllerConfiguration *)v3 familyMember];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = familyMember;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Fetching family member apple cash capabilities %@", buf, 0xCu);
    }

    if (familyMember)
    {
      deviceCapabiltiesManager = self->_deviceCapabiltiesManager;
      appleID = [familyMember appleID];
      v11 = appleID;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      v10 = familyMember;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      [(PKDeviceSharingCapabilitiesManager *)deviceCapabiltiesManager fetchDeviceCapabilitesForAppleIDs:v8 associatedFamilyMembers:v9];
    }
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  flowCopy = flow;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Completed identity verification for peer payment setup", buf, 2u);
  }

  peerPaymentService = self->_peerPaymentService;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PKPeerPaymentSetupFlowController_viewControllerDidTerminateSetupFlow___block_invoke;
  v8[3] = &unk_1E8027BF0;
  v8[4] = self;
  v9 = flowCopy;
  v7 = flowCopy;
  [(PKPeerPaymentService *)peerPaymentService updateAccountWithCompletion:v8];
}

void __72__PKPeerPaymentSetupFlowController_viewControllerDidTerminateSetupFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKPeerPaymentSetupFlowController_viewControllerDidTerminateSetupFlow___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __72__PKPeerPaymentSetupFlowController_viewControllerDidTerminateSetupFlow___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((a1[5] + 152), v2);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKPeerPaymentSetupFlowController_viewControllerDidTerminateSetupFlow___block_invoke_3;
  v5[3] = &unk_1E8010970;
  v3 = a1[6];
  v5[4] = a1[5];
  return [v3 dismissViewControllerAnimated:1 completion:v5];
}

void __72__PKPeerPaymentSetupFlowController_viewControllerDidTerminateSetupFlow___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _cipState];
  if ((v2 - 1) >= 3)
  {
    if (!v2)
    {
      [*(a1 + 32) _completedOperation:64];
      v8 = *(a1 + 32);
      v9 = v8[10];

      [v8 _nextViewControllerWithCompletion:v9];
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "The user account is still not in a good state and CIP might still be required.", v10, 2u);
    }

    v4 = *(*(a1 + 32) + 80);
    if (v4)
    {
      v5 = [MEMORY[0x1E69B8F28] displayableErrorForError:0];
      (*(v4 + 16))(v4, 0, 0, v5);

      v6 = *(a1 + 32);
      v7 = *(v6 + 80);
      *(v6 + 80) = 0;
    }
  }
}

- (void)viewControllerDidCancelSetupFlow:(id)flow
{
  flowCopy = flow;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Completed identity verification with cancel for peer payment setup", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKPeerPaymentSetupFlowController_viewControllerDidCancelSetupFlow___block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  [flowCopy dismissViewControllerAnimated:1 completion:v6];
}

uint64_t __69__PKPeerPaymentSetupFlowController_viewControllerDidCancelSetupFlow___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return (*(result + 16))(result, 0, 1, 0);
  }

  return result;
}

- (void)selectPassesViewControllerDidTapBackButton:(id)button
{
  buttonCopy = button;
  navigationController = [(PKPeerPaymentSetupFlowControllerDataSource *)self->_parentViewController navigationController];
  viewControllers = [navigationController viewControllers];

  if ([viewControllers count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [viewControllers objectAtIndex:{objc_msgSend(viewControllers, "count") - 2}];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "The user tapped the back button when removing a pass", v10, 2u);
      }

      nextViewControllerCompletion = self->_nextViewControllerCompletion;
      if (nextViewControllerCompletion)
      {
        (*(nextViewControllerCompletion + 2))(nextViewControllerCompletion, 0, 1, 0);
      }
    }
  }
}

- (void)selectPassesViewController:(id)controller didSelectPasses:(id)passes completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  passesCopy = passes;
  completionCopy = completion;
  targetDevice = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v9 = dispatch_group_create();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__76;
  v30[4] = __Block_byref_object_dispose__76;
  v31 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = passesCopy;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        dispatch_group_enter(v9);
        paymentWebService = self->_paymentWebService;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __90__PKPeerPaymentSetupFlowController_selectPassesViewController_didSelectPasses_completion___block_invoke;
        v23[3] = &unk_1E80265C0;
        v25 = v30;
        v24 = v9;
        [targetDevice paymentWebService:paymentWebService removePass:v13 withCompletionHandler:v23];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v10);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPeerPaymentSetupFlowController_selectPassesViewController_didSelectPasses_completion___block_invoke_2;
  block[3] = &unk_1E8027C18;
  block[4] = self;
  v21 = completionCopy;
  v22 = v30;
  v15 = completionCopy;
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v30, 8);
}

void __90__PKPeerPaymentSetupFlowController_selectPassesViewController_didSelectPasses_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6 && (a2 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __90__PKPeerPaymentSetupFlowController_selectPassesViewController_didSelectPasses_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 32) + 80);
  if (v3)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      (*(v3 + 16))(v3, 0, 0);
      v4 = *(a1 + 32);
      v5 = *(v4 + 80);
      *(v4 + 80) = 0;
    }

    else
    {
      v6 = [*(a1 + 32) _hasTooManyPasses];
      v7 = *(a1 + 32);
      if (!v6)
      {
        [v7 _completedOperation:4];
        v7 = *(a1 + 32);
      }

      v8 = v7[10];

      [v7 _nextViewControllerWithCompletion:v8];
    }
  }
}

- (void)confirmNameViewControllerCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (self->_confirmNameViewControllerBeingPresented == cancelledCopy)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Name confirmation view controller canceled", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__PKPeerPaymentSetupFlowController_confirmNameViewControllerCancelled___block_invoke;
    v6[3] = &unk_1E8010970;
    v6[4] = self;
    [(PKPeerPaymentConfirmNameViewController *)cancelledCopy dismissViewControllerAnimated:1 completion:v6];
  }
}

void __71__PKPeerPaymentSetupFlowController_confirmNameViewControllerCancelled___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 1, 0);
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = 0;
  }
}

- (void)confirmNameViewController:(id)controller enteredFirstName:(id)name lastName:(id)lastName
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  nameCopy = name;
  lastNameCopy = lastName;
  if (self->_confirmNameViewControllerBeingPresented == controllerCopy)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = nameCopy;
      v15 = 2112;
      v16 = lastNameCopy;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Name confirmation view controller completed with %@ %@", &v13, 0x16u);
    }

    if ([(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]== 1)
    {
      v12 = self->_configuration;
    }

    else
    {
      v12 = 0;
    }

    [(PKPeerPaymentSetupFlowControllerConfiguration *)v12 setFirstName:nameCopy];
    [(PKPeerPaymentSetupFlowControllerConfiguration *)v12 setLastName:lastNameCopy];
    if (self->_nextViewControllerCompletion)
    {
      [(PKPeerPaymentSetupFlowController *)self _nextViewControllerWithCompletion:?];
    }
  }
}

- (void)_handlePeerPaymentAccountDidChangeNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPeerPaymentSetupFlowController__handlePeerPaymentAccountDidChangeNotification__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__PKPeerPaymentSetupFlowController__handlePeerPaymentAccountDidChangeNotification__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 128) targetDevice];
  v2 = [v5 account];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
}

- (id)_peerPaymentWebService
{
  if (PKPaymentSetupContextIsBridge() && [(PKPeerPaymentSetupFlowControllerConfiguration *)self->_configuration peerPaymentSetupConfigurationType]!= 1)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Using watch peer payment web service for peer payment setup", buf, 2u);
    }

    watchPeerPaymentWebService = [(objc_class *)getNPKCompanionAgentConnectionClass_9() watchPeerPaymentWebService];
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Using phone peer payment web service for peer payment setup", v7, 2u);
    }

    watchPeerPaymentWebService = [MEMORY[0x1E69B9020] sharedService];
  }

  return watchPeerPaymentWebService;
}

- (id)_paymentWebService
{
  if (PKPaymentSetupContextIsBridge())
  {
    [(objc_class *)getNPKCompanionAgentConnectionClass_9() watchPaymentWebService];
  }

  else
  {
    [MEMORY[0x1E69B8EF8] sharedService];
  }
  v2 = ;

  return v2;
}

- (PKPeerPaymentSetupFlowControllerDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end