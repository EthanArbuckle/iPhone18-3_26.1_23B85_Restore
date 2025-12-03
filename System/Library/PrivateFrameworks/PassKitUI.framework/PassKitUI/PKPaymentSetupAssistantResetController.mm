@interface PKPaymentSetupAssistantResetController
- (id)_provisioningContextWithProvisioningController:(id)controller setupAssistantCredentials:(id)credentials maximumSelectable:(unint64_t)selectable;
- (id)_setupAssistantCredentialForPaymentCredential:(id)credential;
- (id)_setupAssistantCredentialForPaymentPass:(id)pass;
- (void)expressResetCardsWithCompletion:(id)completion;
@end

@implementation PKPaymentSetupAssistantResetController

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

- (void)expressResetCardsWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
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
  v9[2] = __74__PKPaymentSetupAssistantResetController_expressResetCardsWithCompletion___block_invoke;
  v9[3] = &unk_1E801CEF8;
  v10 = completionCopy;
  v11 = a2;
  v8 = completionCopy;
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