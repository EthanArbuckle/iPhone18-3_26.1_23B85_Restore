@interface PKPaymentSetupAssistantProvisioningContext
- (PKPaymentSetupAssistantProvisioningContext)initWithProvisioningController:(id)controller snapshotCoordinator:(id)coordinator setupAssistantCredentials:(id)credentials maximumSelectable:(unint64_t)selectable;
- (id)_setupAssistantCredentialForPaymentCredential:(id)credential;
- (id)passSnapshotForCredential:(id)credential;
- (void)paymentPassUpdatedOnCredential:(id)credential;
@end

@implementation PKPaymentSetupAssistantProvisioningContext

- (PKPaymentSetupAssistantProvisioningContext)initWithProvisioningController:(id)controller snapshotCoordinator:(id)coordinator setupAssistantCredentials:(id)credentials maximumSelectable:(unint64_t)selectable
{
  coordinatorCopy = coordinator;
  v15.receiver = self;
  v15.super_class = PKPaymentSetupAssistantProvisioningContext;
  v12 = [(PKPaymentSetupAssistantCoreProvisioningContext *)&v15 initWithProvisioningController:controller setupAssistantCredentials:credentials maximumSelectable:selectable];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_snapshotCoordinator, coordinator);
  }

  return v13;
}

- (id)passSnapshotForCredential:(id)credential
{
  v15 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  if (credentialCopy)
  {
    delegate = self->_delegate;
    if (delegate)
    {
      [(PKPaymentSetupAssistantProvisioningContextDelegate *)delegate setupAssistantCredentialCardArtSize];
      snapshotCoordinator = self->_snapshotCoordinator;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __72__PKPaymentSetupAssistantProvisioningContext_passSnapshotForCredential___block_invoke;
      v12[3] = &unk_2799FFCB0;
      v12[4] = self;
      v7 = [(PKPassSnapshotCoordinatorProtocol *)snapshotCoordinator cardSnapshotForSource:credentialCopy withSize:v12 completion:?];
      goto LABEL_10;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[PKPaymentSetupAssistantProvisioningContext passSnapshotForCredential:]";
      v9 = "%s - called without a delegate set, returning nil as no snapshot size can be determined.";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[PKPaymentSetupAssistantProvisioningContext passSnapshotForCredential:]";
      v9 = "%s - called without a credential, returning nil.";
LABEL_8:
      _os_log_impl(&dword_25E0A9000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)paymentPassUpdatedOnCredential:(id)credential
{
  v12 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v5 = credentialCopy;
  if (self->_delegate)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__PKPaymentSetupAssistantProvisioningContext_paymentPassUpdatedOnCredential___block_invoke;
    v8[3] = &unk_2799FFCD8;
    v8[4] = self;
    v9 = credentialCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[PKPaymentSetupAssistantProvisioningContext paymentPassUpdatedOnCredential:]";
      _os_log_impl(&dword_25E0A9000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring %s as no delegate has been set.", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __77__PKPaymentSetupAssistantProvisioningContext_paymentPassUpdatedOnCredential___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _setupAssistantCredentialForPaymentCredential:*(a1 + 40)];
  v2 = [*(a1 + 32) passSnapshotForCredential:?];
  if (v2)
  {
    [*(*(a1 + 32) + 40) setupAssistantCredentialUpdatedCardArt:v3];
  }
}

- (id)_setupAssistantCredentialForPaymentCredential:(id)credential
{
  credentialCopy = credential;
  setupAssistantCredentials = [(PKPaymentSetupAssistantProvisioningContext *)self setupAssistantCredentials];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__PKPaymentSetupAssistantProvisioningContext__setupAssistantCredentialForPaymentCredential___block_invoke;
  v9[3] = &unk_2799FFD00;
  v10 = credentialCopy;
  v6 = credentialCopy;
  v7 = [setupAssistantCredentials pk_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __92__PKPaymentSetupAssistantProvisioningContext__setupAssistantCredentialForPaymentCredential___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 credential];
  v4 = [v2 isEqual:v3];

  return v4;
}

@end