@interface PKPaymentSetupAssistantResetController
- (id)_provisioningContextWithProvisioningController:(id)a3 setupAssistantCredentials:(id)a4 maximumSelectable:(unint64_t)a5;
- (id)_setupAssistantCredentialForPaymentCredential:(id)a3;
- (id)_setupAssistantCredentialForPaymentPass:(id)a3;
- (void)expressResetCardsWithCompletion:(id)a3;
@end

@implementation PKPaymentSetupAssistantResetController

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

- (void)expressResetCardsWithCompletion:(id)a3
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
  v9[2] = __74__PKPaymentSetupAssistantResetController_expressResetCardsWithCompletion___block_invoke;
  v9[3] = &unk_1E801CEF8;
  v10 = v5;
  v11 = a2;
  v8 = v5;
  [(PKPaymentSetupAssistantCoreController *)self _expressCardRemovalProvisioningContext:v9];
}

void __74__PKPaymentSetupAssistantResetController_expressResetCardsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = 138543618;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ returning:\n%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

@end