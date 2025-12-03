@interface PKPaymentSetupAssistantExpressController
- (id)_provisioningContextWithProvisioningController:(id)controller setupAssistantCredentials:(id)credentials maximumSelectable:(unint64_t)selectable;
- (id)_setupAssistantCredentialForPaymentCredential:(id)credential;
- (id)_setupAssistantCredentialForPaymentPass:(id)pass;
- (void)expressSetupFlowForSetupProvisioningContext:(id)context withCompletion:(id)completion;
- (void)expressSetupProvisioningContext:(id)context;
@end

@implementation PKPaymentSetupAssistantExpressController

- (id)_provisioningContextWithProvisioningController:(id)controller setupAssistantCredentials:(id)credentials maximumSelectable:(unint64_t)selectable
{
  credentialsCopy = credentials;
  controllerCopy = controller;
  webService = [controllerCopy webService];
  targetDevice = [webService targetDevice];
  secureElementIdentifiers = [targetDevice secureElementIdentifiers];

  v12 = [[PKPassSnapshotCoordinator alloc] initWithSEIDs:secureElementIdentifiers];
  v13 = [objc_alloc(MEMORY[0x1E69BC778]) initWithProvisioningController:controllerCopy snapshotCoordinator:v12 setupAssistantCredentials:credentialsCopy maximumSelectable:selectable];

  return v13;
}

- (id)_setupAssistantCredentialForPaymentCredential:(id)credential
{
  v3 = MEMORY[0x1E69BC770];
  credentialCopy = credential;
  v5 = [[v3 alloc] initWithPaymentCredential:credentialCopy];

  return v5;
}

- (id)_setupAssistantCredentialForPaymentPass:(id)pass
{
  v3 = MEMORY[0x1E69BC770];
  passCopy = pass;
  v5 = [[v3 alloc] initWithPaymentPass:passCopy];

  return v5;
}

- (void)expressSetupProvisioningContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ with: %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PKPaymentSetupAssistantExpressController_expressSetupProvisioningContext___block_invoke;
  v9[3] = &unk_1E8026C78;
  v10 = contextCopy;
  v11 = a2;
  v9[4] = self;
  v8 = contextCopy;
  [(PKPaymentSetupAssistantCoreController *)self _expressSetupProvisioningContext:v9];
}

void __76__PKPaymentSetupAssistantExpressController_expressSetupProvisioningContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138543874;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ returning:\n%@ with requirements: %lu", &v8, 0x20u);
  }

  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA020], 0);
  (*(*(a1 + 40) + 16))();
}

- (void)expressSetupFlowForSetupProvisioningContext:(id)context withCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    provisioningController = [contextCopy provisioningController];
    availablePaymentCredentials = [contextCopy availablePaymentCredentials];
    v11 = availablePaymentCredentials;
    if (!contextCopy || ![availablePaymentCredentials count])
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = contextCopy;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Error: Empty provisioning context %@ supplied to %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0);
      goto LABEL_18;
    }

    v12 = [PKPaymentSetupAssistantDelegateProxy alloc];
    setupAssistantContext = [(PKPaymentSetupAssistantController *)self setupAssistantContext];
    delegate = [setupAssistantContext delegate];
    v15 = [(PKPaymentSetupAssistantDelegateProxy *)v12 initWithDelegate:delegate provisioningController:provisioningController];

    setupAssistantContext2 = [(PKPaymentSetupAssistantController *)self setupAssistantContext];
    setupAssistant = [setupAssistantContext2 setupAssistant];

    if (setupAssistant == 1)
    {
      v18 = 2;
    }

    else
    {
      if (setupAssistant != 2)
      {
        v25 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          setupAssistantContext3 = [(PKPaymentSetupAssistantController *)self setupAssistantContext];
          *buf = 134217984;
          *&buf[4] = [setupAssistantContext3 setupAssistant];
          _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Error: expressSetupFlowForSetupProvisioningContext called with unsupported type %lu. File a radar!", buf, 0xCu);
        }

        completionCopy[2](completionCopy, 0);
        goto LABEL_17;
      }

      v18 = 6;
    }

    v22 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:v18 provisioningController:provisioningController groupsController:0];
    setupAssistantContext4 = [(PKPaymentSetupAssistantController *)self setupAssistantContext];
    proximitySetupLiaison = [setupAssistantContext4 proximitySetupLiaison];
    [v22 setProximitySetupLiaison:proximitySetupLiaison];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v35 = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __103__PKPaymentSetupAssistantExpressController_expressSetupFlowForSetupProvisioningContext_withCompletion___block_invoke;
    v31[3] = &unk_1E8018DF0;
    v32 = completionCopy;
    v33 = buf;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __103__PKPaymentSetupAssistantExpressController_expressSetupFlowForSetupProvisioningContext_withCompletion___block_invoke_2;
    v27[3] = &unk_1E8026660;
    v30 = buf;
    v28 = v15;
    v29 = v32;
    [PKProvisioningFlowBridge startSetupAssistantFlowWithContext:v22 credentials:v11 onFirstViewControllerShown:v31 completion:v27];

    _Block_object_dispose(buf, 8);
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  provisioningController = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(provisioningController, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromSelector(a2);
    *buf = 138412290;
    *&buf[4] = v21;
    _os_log_impl(&dword_1BD026000, provisioningController, OS_LOG_TYPE_DEFAULT, "Error: No completion provided to %@", buf, 0xCu);
  }

LABEL_19:
}

uint64_t __103__PKPaymentSetupAssistantExpressController_expressSetupFlowForSetupProvisioningContext_withCompletion___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __103__PKPaymentSetupAssistantExpressController_expressSetupFlowForSetupProvisioningContext_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    return [*(a1 + 32) viewControllerDidTerminateSetupFlow:0];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

@end