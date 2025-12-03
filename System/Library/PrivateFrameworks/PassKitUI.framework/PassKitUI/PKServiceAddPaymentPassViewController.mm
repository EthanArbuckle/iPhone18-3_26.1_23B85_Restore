@interface PKServiceAddPaymentPassViewController
- (PKServiceAddPaymentPassViewController)init;
- (void)_applyCancelItem:(id)item;
- (void)_cancel;
- (void)_hostApplicationDidEnterBackground;
- (void)_hostApplicationWillEnterForeground;
- (void)_launchFlowWithFlowManager;
- (void)dealloc;
- (void)generateRequestWithCertificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler;
- (void)loadView;
- (void)setConfiguration:(id)configuration completionHandler:(id)handler;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
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
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      if (mEMORY[0x1E69B8EF8])
      {
        objc_storeStrong(&v2->_managingDeviceWebService, mEMORY[0x1E69B8EF8]);
        [v3 addObject:mEMORY[0x1E69B8EF8]];
      }
    }

    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
    if ([mEMORY[0x1E69B8A58] _hasRemoteLibrary] && objc_msgSend(mEMORY[0x1E69B8A58], "isWatchIssuerAppProvisioningSupported"))
    {
      v6 = objc_alloc_init(_MergedGlobals_1_14());
      watchPaymentWebService = [v6 watchPaymentWebService];
      if (watchPaymentWebService)
      {
        [v3 addObject:watchPaymentWebService];
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
  view = [(PKServiceAddPaymentPassViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6E8]];
  v5.receiver = self;
  v5.super_class = PKServiceAddPaymentPassViewController;
  [(PKServiceAddPaymentPassViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [MEMORY[0x1E69B8540] beginSubjectReporting:*MEMORY[0x1E69BB6E8]];
  v5.receiver = self;
  v5.super_class = PKServiceAddPaymentPassViewController;
  [(PKServiceAddPaymentPassViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
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
    scaleCopy = scale;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)setConfiguration:(id)configuration completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
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
    _hostProcessIdentifier = [(PKServiceAddPaymentPassViewController *)self _hostProcessIdentifier];
    [(PKServiceAddPaymentPassViewController *)self _hostAuditToken];
    v16 = [v14 initWithProcessIdentifier:_hostProcessIdentifier auditToken:&v27];
    [configurationCopy updateAllowManagedAppleIDWithEntitlements:v16];
    self->_entitled = [v16 paymentPassProvisioning];
    CFRelease(v10);
  }

  if ([(NSArray *)self->_webServices count])
  {
    if (self->_entitled)
    {
      objc_storeStrong(&self->_configuration, configuration);
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
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }

      goto LABEL_19;
    }

    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      _hostApplicationBundleIdentifier = [(PKServiceAddPaymentPassViewController *)self _hostApplicationBundleIdentifier];
      v27.val[0] = 138543362;
      *&v27.val[1] = _hostApplicationBundleIdentifier;
      _os_log_error_impl(&dword_1BD026000, v24, OS_LOG_TYPE_ERROR, "%{public}@ missing entitlement: com.apple.developer.payment-pass-provisioning", &v27, 0xCu);
    }

    _remoteViewControllerProxy = [(PKServiceAddPaymentPassViewController *)self _remoteViewControllerProxy];
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BBBC8];
    v23 = 2;
  }

  else
  {
    _remoteViewControllerProxy = [(PKServiceAddPaymentPassViewController *)self _remoteViewControllerProxy];
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BBBC8];
    v23 = 0;
  }

  v25 = [v21 errorWithDomain:v22 code:v23 userInfo:0];
  [_remoteViewControllerProxy didFinishWithPass:0 error:v25];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
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
  _hostApplicationBundleIdentifier = [(PKServiceAddPaymentPassViewController *)self _hostApplicationBundleIdentifier];
  [v8 setHostApplicationBundleIdentifier:_hostApplicationBundleIdentifier];

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

- (void)generateRequestWithCertificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler
{
  chainCopy = chain;
  nonceCopy = nonce;
  signatureCopy = signature;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __116__PKServiceAddPaymentPassViewController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke;
    v53[3] = &unk_1E8012C28;
    v29 = handlerCopy;
    v14 = handlerCopy;
    v54 = v14;
    v15 = [(PKServiceAddPaymentPassViewController *)self _remoteViewControllerProxyWithErrorHandler:v53];
    encryptionScheme = [(PKAddPaymentPassRequestConfiguration *)self->_configuration encryptionScheme];
    v16 = self->_teamID;
    _hostApplicationBundleIdentifier = [(PKServiceAddPaymentPassViewController *)self _hostApplicationBundleIdentifier];
    v28 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:_hostApplicationBundleIdentifier allowPlaceholder:1 error:0];
    shortVersionString = [v28 shortVersionString];
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
    v32 = chainCopy;
    v42 = chainCopy;
    v31 = nonceCopy;
    v19 = nonceCopy;
    v43 = v19;
    v30 = signatureCopy;
    v44 = signatureCopy;
    v20 = encryptionScheme;
    v45 = v20;
    v21 = v16;
    v46 = v21;
    v22 = _hostApplicationBundleIdentifier;
    v47 = v22;
    v23 = shortVersionString;
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
    nonceCopy = v31;
    chainCopy = v32;
    handlerCopy = v29;
    signatureCopy = v30;
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

- (void)_applyCancelItem:(id)item
{
  v4 = MEMORY[0x1E69DC708];
  itemCopy = item;
  v6 = [[v4 alloc] initWithBarButtonSystemItem:24 target:self action:sel__cancel];
  [itemCopy setLeftBarButtonItem:v6];
}

- (void)_cancel
{
  _remoteViewControllerProxy = [(PKServiceAddPaymentPassViewController *)self _remoteViewControllerProxy];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
  [_remoteViewControllerProxy didFinishWithPass:0 error:v2];

  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F88], &unk_1F3CC8898);
}

@end