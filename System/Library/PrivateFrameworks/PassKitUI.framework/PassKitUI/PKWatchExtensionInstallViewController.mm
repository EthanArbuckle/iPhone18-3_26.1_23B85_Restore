@interface PKWatchExtensionInstallViewController
+ (BOOL)shouldShowWatchExtensionInstallViewControllerForSecureElementPass:(id)pass webService:(id)service;
- (PKWatchExtensionInstallViewController)initWithSecureElementPass:(id)pass provisioningController:(id)controller webService:(id)service context:(int64_t)context;
- (PKWatchExtensionInstallViewControllerFlowDelegate)flowItemDelegate;
- (void)_installNowPressed;
- (void)_proceedToNextScreen;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PKWatchExtensionInstallViewController

+ (BOOL)shouldShowWatchExtensionInstallViewControllerForSecureElementPass:(id)pass webService:(id)service
{
  passCopy = pass;
  v6 = getNPKCompanionAgentConnectionClass_1[0];
  serviceCopy = service;
  v8 = objc_alloc_init(v6());
  watchPaymentWebService = [v8 watchPaymentWebService];

  if (watchPaymentWebService == serviceCopy)
  {
    paymentPass = [passCopy paymentPass];
    v10 = [v8 shouldShowWatchExtensionInstallationForPaymentPass:paymentPass];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKWatchExtensionInstallViewController)initWithSecureElementPass:(id)pass provisioningController:(id)controller webService:(id)service context:(int64_t)context
{
  passCopy = pass;
  controllerCopy = controller;
  serviceCopy = service;
  v19.receiver = self;
  v19.super_class = PKWatchExtensionInstallViewController;
  v14 = [(PKExplanationViewController *)&v19 initWithContext:context];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_secureElementPass, pass);
    objc_storeStrong(&v15->_webservice, service);
    objc_storeStrong(&v15->_provisioningController, controller);
    v16 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v16 configureWithTransparentBackground];
    navigationItem = [(PKWatchExtensionInstallViewController *)v15 navigationItem];
    [navigationItem setStandardAppearance:v16];
  }

  return v15;
}

- (void)loadView
{
  v46 = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PKWatchExtensionInstallViewController;
  [(PKExplanationViewController *)&v42 loadView];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  navigationItem = [(PKWatchExtensionInstallViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  organizationName = [(PKSecureElementPass *)self->_secureElementPass organizationName];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v6 = PKLocalizedAquamanString(&cfstr_InstallWatchEx.isa, &stru_1F3BD5BF0.isa, organizationName);
  [explanationView setTitleText:v6];

  v36 = organizationName;
  v7 = PKLocalizedAquamanString(&cfstr_InstallWatchEx_0.isa, &stru_1F3BD6370.isa, organizationName, organizationName);
  [explanationView setBodyText:v7];

  [explanationView setShowPrivacyView:0];
  [explanationView setForceShowSetupLaterButton:1];
  v8 = [PKWatchDeviceAppCarouselView alloc];
  v9 = [(PKWatchDeviceAppCarouselView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  deviceImageView = self->_deviceImageView;
  self->_deviceImageView = v9;

  [explanationView setBodyView:self->_deviceImageView];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  storeIdentifiers = [(PKSecureElementPass *)self->_secureElementPass storeIdentifiers];
  v12 = [storeIdentifiers countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(storeIdentifiers);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [objc_alloc(MEMORY[0x1E69635F8]) initWithStoreItemIdentifier:objc_msgSend(v16 error:{"unsignedLongLongValue"), 0}];
        if (v17)
        {
          v21 = v17;
          v20 = v16;

          counterpartIdentifiers = [v21 counterpartIdentifiers];
          firstObject = [counterpartIdentifiers firstObject];

          mEMORY[0x1E69B36C8] = [MEMORY[0x1E69B36C8] sharedInstance];
          PKScreenScale();
          if (v24 <= 2.0)
          {
            v25 = 47;
          }

          else
          {
            v25 = 48;
          }

          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __49__PKWatchExtensionInstallViewController_loadView__block_invoke;
          v37[3] = &unk_1E8010A38;
          v37[4] = self;
          [mEMORY[0x1E69B36C8] getIconForBundleID:firstObject iconVariant:v25 block:v37 timeout:-1.0];

          goto LABEL_16;
        }
      }

      v13 = [storeIdentifiers countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  firstObject = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(PKSecureElementPass *)self->_secureElementPass uniqueID];
    *buf = 138412290;
    v44 = uniqueID;
    _os_log_impl(&dword_1BD026000, firstObject, OS_LOG_TYPE_DEFAULT, "(watch-extension-install) Failed to find application record for pass: %@", buf, 0xCu);
  }

  v20 = 0;
  v21 = 0;
LABEL_16:

  dockView = [explanationView dockView];
  [dockView setPrimaryButton:0];
  if (v20)
  {
    v27 = _PKCreateASCLookupRequestForStoreID(v20, 1);
    v28 = objc_alloc_init(MEMORY[0x1E698B3C8]);
    appStoreView = self->_appStoreView;
    self->_appStoreView = v28;

    [(ASCLockupView *)self->_appStoreView setDelegate:self];
    v30 = self->_appStoreView;
    [(PKExplanationViewController *)self context];
    if (PKPaymentSetupContextIsBridge())
    {
      PKBridgeForegroundColor();
    }

    else
    {
      PKProvisioningSecondaryBackgroundColor();
    }
    v31 = ;
    [(ASCLockupView *)v30 setBackgroundColor:v31];

    layer = [(ASCLockupView *)self->_appStoreView layer];
    [layer setCornerRadius:16.0];

    [(ASCLockupView *)self->_appStoreView setLayoutMargins:10.0, 16.0, 10.0, 16.0];
    [(ASCLockupView *)self->_appStoreView setRequest:v27];
    [dockView setLockUpView:self->_appStoreView];
  }

  else
  {
    v27 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BD026000, v27, OS_LOG_TYPE_ERROR, "PKWatchExtensionInstallViewController had nil storeID.", buf, 2u);
    }
  }

  footerView = [dockView footerView];
  setUpLaterButton = [footerView setUpLaterButton];
  v35 = PKLocalizedAquamanString(&cfstr_InstallWatchEx_1.isa);
  [setUpLaterButton setTitle:v35 forState:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKWatchExtensionInstallViewController;
  [(PKWatchExtensionInstallViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v10[1] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v9 = *MEMORY[0x1E69BB158];
  v10[0] = *MEMORY[0x1E69BB150];
  v5 = MEMORY[0x1E695DF20];
  laterCopy = later;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:4 context:v7];

  explanationView = [(PKExplanationViewController *)self explanationView];

  if (explanationView == laterCopy)
  {
    [(PKWatchExtensionInstallViewController *)self _proceedToNextScreen];
  }
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  v5 = PKLocalizedAquamanString(&cfstr_InstallWatchEx_2.isa);
  v6 = [MEMORY[0x1E698B3E0] textMetadataWithTitle:v5 subtitle:0];
  objc_initWeak(location, self);
  v7 = objc_alloc(MEMORY[0x1E698B3A8]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __68__PKWatchExtensionInstallViewController_lockupViewDidFinishRequest___block_invoke;
  v29[3] = &unk_1E8010998;
  objc_copyWeak(&v30, location);
  v25 = [v7 initWithMetadata:v6 action:v29];
  v22 = v6;
  v23 = v5;
  v24 = requestCopy;
  lockup = [requestCopy lockup];
  v9 = objc_alloc(MEMORY[0x1E698B3B0]);
  v10 = [lockup id];
  kind = [lockup kind];
  metrics = [lockup metrics];
  icon = [lockup icon];
  heading = [lockup heading];
  title = [lockup title];
  subtitle = [lockup subtitle];
  ageRating = [lockup ageRating];
  v18 = [v9 initWithID:v10 kind:kind metrics:metrics icon:icon heading:heading title:title subtitle:subtitle ageRating:ageRating offer:v25];

  v19 = MEMORY[0x1E69DD250];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__PKWatchExtensionInstallViewController_lockupViewDidFinishRequest___block_invoke_2;
  v26[3] = &unk_1E8010A10;
  v20 = v24;
  v27 = v20;
  v21 = v18;
  v28 = v21;
  [v19 performWithoutAnimation:v26];

  objc_destroyWeak(&v30);
  objc_destroyWeak(location);
}

void __68__PKWatchExtensionInstallViewController_lockupViewDidFinishRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _installNowPressed];
    WeakRetained = v2;
  }
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKWatchExtensionInstallViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  [(PKExplanationViewController *)self showSpinner:iCopy];
}

- (void)_installNowPressed
{
  v16 = *MEMORY[0x1E69E9840];
  uniqueID = [(PKSecureElementPass *)self->_secureElementPass uniqueID];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = uniqueID;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "(watch-extension-install) begining install of watch extension for pass %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(getNPKCompanionAgentConnectionClass_1[0]());
  objc_initWeak(buf, self);
  paymentPass = [(PKSecureElementPass *)self->_secureElementPass paymentPass];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59__PKWatchExtensionInstallViewController__installNowPressed__block_invoke;
  v11 = &unk_1E8013B00;
  objc_copyWeak(&v13, buf);
  v7 = uniqueID;
  v12 = v7;
  [v5 beginPairedWatchInstallationOfApplicationForPaymentPass:paymentPass completion:&v8];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0, v8, v9, v10, v11];
  [(PKWatchExtensionInstallViewController *)self _proceedToNextScreen];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __59__PKWatchExtensionInstallViewController__installNowPressed__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = @"NO";
    v11 = 138412802;
    if (a2)
    {
      v9 = @"YES";
    }

    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "(watch-extension-install) install of watch extension for %@ didBegin %@ error %@", &v11, 0x20u);
  }

  if (WeakRetained)
  {
    v10 = [WeakRetained reporter];
    [v10 reportPageCompleted:a2 context:0];
  }
}

- (void)_proceedToNextScreen
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained watchExtensionInstallViewControllerDidFinish:self];
}

- (PKWatchExtensionInstallViewControllerFlowDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end