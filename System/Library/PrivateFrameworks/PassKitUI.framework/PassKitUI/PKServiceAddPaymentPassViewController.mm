@interface PKServiceAddPaymentPassViewController
- (PKServiceAddPaymentPassViewController)init;
- (void)_applyCancelItem:(id)a3;
- (void)_cancel;
- (void)_hostApplicationDidEnterBackground;
- (void)_hostApplicationWillEnterForeground;
- (void)_launchFlowWithFlowManager;
- (void)dealloc;
- (void)generateRequestWithCertificateChain:(id)a3 nonce:(id)a4 nonceSignature:(id)a5 completionHandler:(id)a6;
- (void)loadView;
- (void)setConfiguration:(id)a3 completionHandler:(id)a4;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKServiceAddPaymentPassViewController

- (PKServiceAddPaymentPassViewController)init
{
  v15.receiver = self;
  v15.super_class = PKServiceAddPaymentPassViewController;
  v2 = [(PKNavigationController *)&v15 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if (PKSecureElementIsAvailable() || PKIsSimulator())
    {
      v4 = [MEMORY[0x1E69B8EF8] sharedService];
      if (v4)
      {
        objc_storeStrong(&v2->_managingDeviceWebService, v4);
        [v3 addObject:v4];
      }
    }

    v5 = [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
    if ([v5 _hasRemoteLibrary] && objc_msgSend(v5, "isWatchIssuerAppProvisioningSupported"))
    {
      v6 = objc_alloc_init(_MergedGlobals_1_14());
      v7 = [v6 watchPaymentWebService];
      if (v7)
      {
        [v3 addObject:v7];
      }
    }

    v8 = [v3 copy];
    webServices = v2->_webServices;
    v2->_webServices = v8;

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKServiceAddPaymentPassViewController: Calling didCompleteFlow for Buddy", v14, 2u);
    }

    v11 = objc_alloc_init(off_1EE989780());
    v12 = off_1EE989788();
    [v11 didCompleteFlow:v12];
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKServiceAddPaymentPassViewController;
  [(PKNavigationController *)&v2 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKServiceAddPaymentPassViewController;
  [(PKServiceAddPaymentPassViewController *)&v5 loadView];
  v3 = [(PKServiceAddPaymentPassViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];
}

- (void)_hostApplicationWillEnterForeground
{
  v2.receiver = self;
  v2.super_class = PKServiceAddPaymentPassViewController;
  [(PKServiceAddPaymentPassViewController *)&v2 _hostApplicationWillEnterForeground];
  [MEMORY[0x1E69B8540] beginSubjectReporting:*MEMORY[0x1E69BB6E8]];
}

- (void)_hostApplicationDidEnterBackground
{
  v2.receiver = self;
  v2.super_class = PKServiceAddPaymentPassViewController;
  [(PKServiceAddPaymentPassViewController *)&v2 _hostApplicationDidEnterBackground];
  [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6E8]];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6E8]];
  v5.receiver = self;
  v5.super_class = PKServiceAddPaymentPassViewController;
  [(PKServiceAddPaymentPassViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E69B8540] beginSubjectReporting:*MEMORY[0x1E69BB6E8]];
  v5.receiver = self;
  v5.super_class = PKServiceAddPaymentPassViewController;
  [(PKServiceAddPaymentPassViewController *)&v5 viewWillAppear:v3];
}

- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v13 = *MEMORY[0x1E69E9840];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14.width = width;
    v14.height = height;
    v8 = NSStringFromCGSize(v14);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)setConfiguration:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [(PKServiceAddPaymentPassViewController *)self _hostAuditToken];
  v9 = SecTaskCreateWithAuditToken(0, &v27);
  if (v9)
  {
    v10 = v9;
    v11 = SecTaskCopyValueForEntitlement(v9, @"com.apple.developer.team-identifier", 0);
    teamID = self->_teamID;
    self->_teamID = v11;

    if ([(NSString *)self->_teamID length]!= 10)
    {
      v13 = self->_teamID;
      self->_teamID = 0;
    }

    v14 = objc_alloc(MEMORY[0x1E69B8840]);
    v15 = [(PKServiceAddPaymentPassViewController *)self _hostProcessIdentifier];
    [(PKServiceAddPaymentPassViewController *)self _hostAuditToken];
    v16 = [v14 initWithProcessIdentifier:v15 auditToken:&v27];
    [v7 updateAllowManagedAppleIDWithEntitlements:v16];
    self->_entitled = [v16 paymentPassProvisioning];
    CFRelease(v10);
  }

  if ([(NSArray *)self->_webServices count])
  {
    if (self->_entitled)
    {
      objc_storeStrong(&self->_configuration, a3);
      v17 = [(PKAddPaymentPassRequestConfiguration *)self->_configuration _filterWebServices:self->_webServices primaryAccountIdentifierRequired:0];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(&self->_webServices, v19);

      [(PKServiceAddPaymentPassViewController *)self _launchFlowWithFlowManager];
      if (v8)
      {
        v8[2](v8);
      }

      goto LABEL_19;
    }

    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = [(PKServiceAddPaymentPassViewController *)self _hostApplicationBundleIdentifier];
      v27.val[0] = 138543362;
      *&v27.val[1] = v26;
      _os_log_error_impl(&dword_1BD026000, v24, OS_LOG_TYPE_ERROR, "%{public}@ missing entitlement: com.apple.developer.payment-pass-provisioning", &v27, 0xCu);
    }

    v20 = [(PKServiceAddPaymentPassViewController *)self _remoteViewControllerProxy];
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BBBC8];
    v23 = 2;
  }

  else
  {
    v20 = [(PKServiceAddPaymentPassViewController *)self _remoteViewControllerProxy];
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BBBC8];
    v23 = 0;
  }

  v25 = [v21 errorWithDomain:v22 code:v23 userInfo:0];
  [v20 didFinishWithPass:0 error:v25];

  if (v8)
  {
    v8[2](v8);
  }

LABEL_19:
}

- (void)_launchFlowWithFlowManager
{
  webServices = self->_webServices;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__PKServiceAddPaymentPassViewController__launchFlowWithFlowManager__block_invoke;
  v16[3] = &unk_1E8019750;
  v16[4] = self;
  v4 = [(NSArray *)webServices pk_firstObjectPassingTest:v16];
  v5 = self->_webServices;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__PKServiceAddPaymentPassViewController__launchFlowWithFlowManager__block_invoke_2;
  v15[3] = &unk_1E8019750;
  v15[4] = self;
  v6 = [(NSArray *)v5 pk_firstObjectPassingTest:v15];
  v7 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:self->_managingDeviceWebService];
  v8 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:7 provisioningController:v7 groupsController:0];
  [v8 setTeamIdentifier:self->_teamID];
  v9 = [(PKServiceAddPaymentPassViewController *)self _hostApplicationBundleIdentifier];
  [v8 setHostApplicationBundleIdentifier:v9];

  objc_initWeak(&location, self);
  configuration = self->_configuration;
  v12[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKServiceAddPaymentPassViewController__launchFlowWithFlowManager__block_invoke_3;
  v13[3] = &unk_1E8019778;
  v13[4] = self;
  v11[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PKServiceAddPaymentPassViewController__launchFlowWithFlowManager__block_invoke_4;
  v12[3] = &unk_1E8010970;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PKServiceAddPaymentPassViewController__launchFlowWithFlowManager__block_invoke_5;
  v11[3] = &unk_1E80197A0;
  [PKProvisioningFlowBridge startInAppFlowWithUnownedNavController:self context:v8 requestConfiguration:configuration phoneWebService:v4 watchWebService:v6 generateRequest:v13 onViewLoaded:v12 completion:v11];
  objc_destroyWeak(&location);
}

uint64_t __67__PKServiceAddPaymentPassViewController__launchFlowWithFlowManager__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    return [v5 generateRequestWithCertificateChain:a2 nonce:a3 nonceSignature:a4 completionHandler:a5];
  }

  else
  {
    return (*(a5 + 16))(a5, 0);
  }
}

void __67__PKServiceAddPaymentPassViewController__launchFlowWithFlowManager__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    v5 = [v2 viewControllers];
    v3 = [v5 firstObject];
    v4 = [v3 navigationItem];
    [v2 _applyCancelItem:v4];
  }
}

void __67__PKServiceAddPaymentPassViewController__launchFlowWithFlowManager__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6 = v3;
    v7 = a3;
    v10 = [a2 firstObject];
    [v10 sanitizePaymentApplications];
    v8 = [v6 _remoteViewControllerProxy];

    v9 = [v10 paymentPass];
    [v8 didFinishWithPass:v9 error:v7];
  }
}

- (void)generateRequestWithCertificateChain:(id)a3 nonce:(id)a4 nonceSignature:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke;
    v53[3] = &unk_1E8012C28;
    v29 = v13;
    v14 = v13;
    v54 = v14;
    v15 = [(PKServiceAddPaymentPassViewController *)self _remoteViewControllerProxyWithErrorHandler:v53];
    v33 = [(PKAddPaymentPassRequestConfiguration *)self->_configuration encryptionScheme];
    v16 = self->_teamID;
    v17 = [(PKServiceAddPaymentPassViewController *)self _hostApplicationBundleIdentifier];
    v28 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v17 allowPlaceholder:1 error:0];
    v18 = [v28 shortVersionString];
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = __Block_byref_object_copy__24;
    v51[4] = __Block_byref_object_dispose__24;
    v52 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke_93;
    aBlock[3] = &unk_1E80197F0;
    v27 = v15;
    v41 = v27;
    v32 = v10;
    v42 = v10;
    v31 = v11;
    v19 = v11;
    v43 = v19;
    v30 = v12;
    v44 = v12;
    v20 = v33;
    v45 = v20;
    v21 = v16;
    v46 = v21;
    v22 = v17;
    v47 = v22;
    v23 = v18;
    v48 = v23;
    v50 = v51;
    v49 = v14;
    v24 = _Block_copy(aBlock);
    v25 = v24;
    if (self->_entitled)
    {
      v38 = 0u;
      v39 = 0u;
      [(PKServiceAddPaymentPassViewController *)self _hostAuditToken];
      v26 = MEMORY[0x1E69B8B20];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke_4;
      v35[3] = &unk_1E8019818;
      v37 = v51;
      v36 = v25;
      v34[0] = v38;
      v34[1] = v39;
      [v26 getFairPlayInfoWithAuditToken:v34 nonce:v19 completion:v35];
    }

    else
    {
      (*(v24 + 2))(v24);
    }

    _Block_object_dispose(v51, 8);
    v11 = v31;
    v10 = v32;
    v13 = v29;
    v12 = v30;
  }
}

void __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke_2;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke_93(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke_2_94;
  v14[3] = &unk_1E80197C8;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v13 = *(a1 + 96);
  v12 = v13;
  v17 = v13;
  [v2 generateRequestWithCertificateChain:v3 nonce:v4 nonceSignature:v5 completionHandler:v14];
}

void __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke_2_94(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEncryptionVersion:*(a1 + 32)];
  [v3 setIssuerIdentifier:*(a1 + 40)];
  [v3 setHostApplicationIdentifier:*(a1 + 48)];
  [v3 setHostApplicationVersion:*(a1 + 56)];
  [v3 setFPInfo:*(*(*(a1 + 72) + 8) + 40)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke_3;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 64);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)_applyCancelItem:(id)a3
{
  v4 = MEMORY[0x1E69DC708];
  v5 = a3;
  v6 = [[v4 alloc] initWithBarButtonSystemItem:24 target:self action:sel__cancel];
  [v5 setLeftBarButtonItem:v6];
}

- (void)_cancel
{
  v3 = [(PKServiceAddPaymentPassViewController *)self _remoteViewControllerProxy];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
  [v3 didFinishWithPass:0 error:v2];

  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F88], &unk_1F3CC8898);
}

@end