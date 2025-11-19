@interface PKPaymentSetupAssistantExpressController
- (id)_provisioningContextWithProvisioningController:(id)a3 setupAssistantCredentials:(id)a4 maximumSelectable:(unint64_t)a5;
- (id)_setupAssistantCredentialForPaymentCredential:(id)a3;
- (id)_setupAssistantCredentialForPaymentPass:(id)a3;
- (void)expressSetupFlowForSetupProvisioningContext:(id)a3 withCompletion:(id)a4;
- (void)expressSetupProvisioningContext:(id)a3;
@end

@implementation PKPaymentSetupAssistantExpressController

- (id)_provisioningContextWithProvisioningController:(id)a3 setupAssistantCredentials:(id)a4 maximumSelectable:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 webService];
  v10 = [v9 targetDevice];
  v11 = [v10 secureElementIdentifiers];

  v12 = [[PKPassSnapshotCoordinator alloc] initWithSEIDs:v11];
  v13 = [objc_alloc(MEMORY[0x1E69BC778]) initWithProvisioningController:v8 snapshotCoordinator:v12 setupAssistantCredentials:v7 maximumSelectable:a5];

  return v13;
}

- (id)_setupAssistantCredentialForPaymentCredential:(id)a3
{
  v3 = MEMORY[0x1E69BC770];
  v4 = a3;
  v5 = [[v3 alloc] initWithPaymentCredential:v4];

  return v5;
}

- (id)_setupAssistantCredentialForPaymentPass:(id)a3
{
  v3 = MEMORY[0x1E69BC770];
  v4 = a3;
  v5 = [[v3 alloc] initWithPaymentPass:v4];

  return v5;
}

- (void)expressSetupProvisioningContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ with: %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PKPaymentSetupAssistantExpressController_expressSetupProvisioningContext___block_invoke;
  v9[3] = &unk_1E8026C78;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v8 = v5;
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

- (void)expressSetupFlowForSetupProvisioningContext:(id)a3 withCompletion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [v7 provisioningController];
    v10 = [v7 availablePaymentCredentials];
    v11 = v10;
    if (!v7 || ![v10 count])
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Error: Empty provisioning context %@ supplied to %@", buf, 0x16u);
      }

      v8[2](v8, 0);
      goto LABEL_18;
    }

    v12 = [PKPaymentSetupAssistantDelegateProxy alloc];
    v13 = [(PKPaymentSetupAssistantController *)self setupAssistantContext];
    v14 = [v13 delegate];
    v15 = [(PKPaymentSetupAssistantDelegateProxy *)v12 initWithDelegate:v14 provisioningController:v9];

    v16 = [(PKPaymentSetupAssistantController *)self setupAssistantContext];
    v17 = [v16 setupAssistant];

    if (v17 == 1)
    {
      v18 = 2;
    }

    else
    {
      if (v17 != 2)
      {
        v25 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [(PKPaymentSetupAssistantController *)self setupAssistantContext];
          *buf = 134217984;
          *&buf[4] = [v26 setupAssistant];
          _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Error: expressSetupFlowForSetupProvisioningContext called with unsupported type %lu. File a radar!", buf, 0xCu);
        }

        v8[2](v8, 0);
        goto LABEL_17;
      }

      v18 = 6;
    }

    v22 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:v18 provisioningController:v9 groupsController:0];
    v23 = [(PKPaymentSetupAssistantController *)self setupAssistantContext];
    v24 = [v23 proximitySetupLiaison];
    [v22 setProximitySetupLiaison:v24];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v35 = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __103__PKPaymentSetupAssistantExpressController_expressSetupFlowForSetupProvisioningContext_withCompletion___block_invoke;
    v31[3] = &unk_1E8018DF0;
    v32 = v8;
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

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromSelector(a2);
    *buf = 138412290;
    *&buf[4] = v21;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Error: No completion provided to %@", buf, 0xCu);
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