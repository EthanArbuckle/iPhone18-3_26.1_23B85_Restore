@interface PKPeerPaymentDocumentSubmissionController
- (PKPeerPaymentDocumentSubmissionController)initWithPeerPaymentWebService:(id)a3 identityVerificationResponse:(id)a4 setupDelegate:(id)a5 context:(int64_t)a6;
- (void)contactApplePressed;
- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4;
- (void)peerPaymentAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5;
- (void)uploadID;
@end

@implementation PKPeerPaymentDocumentSubmissionController

- (PKPeerPaymentDocumentSubmissionController)initWithPeerPaymentWebService:(id)a3 identityVerificationResponse:(id)a4 setupDelegate:(id)a5 context:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v12 acceptableDocuments];
  v15 = PKPassKitBundle();
  v23.receiver = self;
  v23.super_class = PKPeerPaymentDocumentSubmissionController;
  v16 = [(PKPaymentDocumentSubmissionController *)&v23 initWithSetupDelegate:v13 context:a6 acceptableDocuments:v14 featureIdentifier:1 localizationBundle:v15 preferredLanguage:0];

  if (v16)
  {
    objc_storeStrong(&v16->_webService, a3);
    objc_storeStrong(&v16->_identityVerificationResponse, a4);
    v17 = [(PKPeerPaymentWebService *)v16->_webService peerPaymentService];
    v18 = [v17 account];

    v19 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v20 = [[PKPeerPaymentAccountResolutionController alloc] initWithAccount:v18 webService:v16->_webService context:a6 delegate:v16 passLibraryDataProvider:v19];
    accountResolutionController = v16->_accountResolutionController;
    v16->_accountResolutionController = v20;
  }

  return v16;
}

- (void)uploadID
{
  if ([(PKPaymentDocumentSubmissionController *)self state]!= 5)
  {
    [(PKPaymentDocumentSubmissionController *)self setState:5];
    if (!self->_preventUpload && self->_webService && (-[PKPeerPaymentIdentityVerificationResponse encryptionCertificates](self->_identityVerificationResponse, "encryptionCertificates"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
    {
      v5 = objc_alloc_init(MEMORY[0x1E69B8F48]);
      v6 = [(PKPaymentDocumentSubmissionController *)self frontID];
      v7 = v6;
      if (v6)
      {
        v8 = UIImageJPEGRepresentation(v6, 0.9);
        [v5 setFrontImageData:v8];
      }

      v9 = [(PKPaymentDocumentSubmissionController *)self backID];
      v10 = v9;
      if (v9)
      {
        v11 = UIImageJPEGRepresentation(v9, 0.9);
        [v5 setBackImageData:v11];
      }

      v12 = [(PKPeerPaymentIdentityVerificationResponse *)self->_identityVerificationResponse encryptionCertificates];
      [v5 setCertificates:v12];

      v13 = [(PKPaymentDocumentSubmissionController *)self selectedDocument];
      [v5 setDocumentType:{objc_msgSend(v13, "documentType")}];
      v14 = [v13 countryCode];
      [v5 setDocumentCountryCode:v14];

      webService = self->_webService;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __53__PKPeerPaymentDocumentSubmissionController_uploadID__block_invoke;
      v16[3] = &unk_1E8017DF8;
      v16[4] = self;
      [(PKPeerPaymentWebService *)webService peerPaymentDocumentSubmissionRequest:v5 completion:v16];
    }

    else
    {

      [(PKPaymentDocumentSubmissionController *)self setState:6];
    }
  }
}

void __53__PKPeerPaymentDocumentSubmissionController_uploadID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PKPeerPaymentDocumentSubmissionController_uploadID__block_invoke_2;
  block[3] = &unk_1E8010A88;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __53__PKPeerPaymentDocumentSubmissionController_uploadID__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 setIdleTimerDisabled:0];

  v3 = [*(a1 + 32) state];
  if (*(a1 + 40))
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0E0], 0);
    v4 = *(a1 + 32);
    v5 = 6;
LABEL_11:
    [v4 setState:v5];
    goto LABEL_12;
  }

  v6 = [*(a1 + 48) status];
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0E0], 0);
      v4 = *(a1 + 32);
      v5 = 11;
      goto LABEL_11;
    }

    if (v6 != 4)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v6 - 1) < 2)
  {
LABEL_9:
    v4 = *(a1 + 32);
    v5 = 8;
    goto LABEL_11;
  }

  if (!v6)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0F8], 0);
    v7 = [*(*(a1 + 32) + 104) targetDevice];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__PKPeerPaymentDocumentSubmissionController_uploadID__block_invoke_3;
    v9[3] = &unk_1E8017DD0;
    v9[4] = *(a1 + 32);
    v9[5] = v3;
    [v7 updateAccountWithCompletion:v9];
  }

LABEL_12:
  result = [*(a1 + 32) state];
  if (v3 != result)
  {
    return [*(a1 + 32) stateChanged];
  }

  return result;
}

uint64_t __53__PKPeerPaymentDocumentSubmissionController_uploadID__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 state];
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69BA0F0];
    v5 = 9;
    goto LABEL_5;
  }

  if (v3 == 3)
  {
    v4 = MEMORY[0x1E69BA0E8];
    v5 = 10;
LABEL_5:
    MEMORY[0x1BFB41980](*v4, 0);
    goto LABEL_7;
  }

  v5 = 7;
LABEL_7:
  [*(a1 + 32) setState:v5];
  v6 = *(a1 + 40);
  result = [*(a1 + 32) state];
  if (v6 != result)
  {
    v8 = *(a1 + 32);

    return [v8 stateChanged];
  }

  return result;
}

- (void)contactApplePressed
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presenting contact apple support alert...", v4, 2u);
  }

  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0D8], 0);
  [(PKPeerPaymentAccountResolutionController *)self->_accountResolutionController presentFlowForAccountResolution:3 configuration:0 completion:&__block_literal_global_82];
}

void __64__PKPeerPaymentDocumentSubmissionController_contactApplePressed__block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presented contact apple support alert with success %@", &v5, 0xCu);
  }
}

- (void)peerPaymentAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  v7 = [(PKPaymentDocumentSubmissionController *)self delegate];
  [v7 presentViewController:v6 animated:1 completion:0];
}

- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4
{
  v4 = [(PKPaymentDocumentSubmissionController *)self delegate:a3];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

@end