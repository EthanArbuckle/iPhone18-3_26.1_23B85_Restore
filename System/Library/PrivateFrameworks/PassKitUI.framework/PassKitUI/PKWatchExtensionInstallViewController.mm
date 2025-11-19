@interface PKWatchExtensionInstallViewController
+ (BOOL)shouldShowWatchExtensionInstallViewControllerForSecureElementPass:(id)a3 webService:(id)a4;
- (PKWatchExtensionInstallViewController)initWithSecureElementPass:(id)a3 provisioningController:(id)a4 webService:(id)a5 context:(int64_t)a6;
- (PKWatchExtensionInstallViewControllerFlowDelegate)flowItemDelegate;
- (void)_installNowPressed;
- (void)_proceedToNextScreen;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)loadView;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation PKWatchExtensionInstallViewController

+ (BOOL)shouldShowWatchExtensionInstallViewControllerForSecureElementPass:(id)a3 webService:(id)a4
{
  v5 = a3;
  v6 = getNPKCompanionAgentConnectionClass_1[0];
  v7 = a4;
  v8 = objc_alloc_init(v6());
  v9 = [v8 watchPaymentWebService];

  if (v9 == v7)
  {
    v11 = [v5 paymentPass];
    v10 = [v8 shouldShowWatchExtensionInstallationForPaymentPass:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKWatchExtensionInstallViewController)initWithSecureElementPass:(id)a3 provisioningController:(id)a4 webService:(id)a5 context:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = PKWatchExtensionInstallViewController;
  v14 = [(PKExplanationViewController *)&v19 initWithContext:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_secureElementPass, a3);
    objc_storeStrong(&v15->_webservice, a5);
    objc_storeStrong(&v15->_provisioningController, a4);
    v16 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v16 configureWithTransparentBackground];
    v17 = [(PKWatchExtensionInstallViewController *)v15 navigationItem];
    [v17 setStandardAppearance:v16];
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
  v3 = [(PKWatchExtensionInstallViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(PKSecureElementPass *)self->_secureElementPass organizationName];
  v5 = [(PKExplanationViewController *)self explanationView];
  v6 = PKLocalizedAquamanString(&cfstr_InstallWatchEx.isa, &stru_1F3BD5BF0.isa, v4);
  [v5 setTitleText:v6];

  v36 = v4;
  v7 = PKLocalizedAquamanString(&cfstr_InstallWatchEx_0.isa, &stru_1F3BD6370.isa, v4, v4);
  [v5 setBodyText:v7];

  [v5 setShowPrivacyView:0];
  [v5 setForceShowSetupLaterButton:1];
  v8 = [PKWatchDeviceAppCarouselView alloc];
  v9 = [(PKWatchDeviceAppCarouselView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  deviceImageView = self->_deviceImageView;
  self->_deviceImageView = v9;

  [v5 setBodyView:self->_deviceImageView];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = [(PKSecureElementPass *)self->_secureElementPass storeIdentifiers];
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [objc_alloc(MEMORY[0x1E69635F8]) initWithStoreItemIdentifier:objc_msgSend(v16 error:{"unsignedLongLongValue"), 0}];
        if (v17)
        {
          v21 = v17;
          v20 = v16;

          v22 = [v21 counterpartIdentifiers];
          v18 = [v22 firstObject];

          v23 = [MEMORY[0x1E69B36C8] sharedInstance];
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
          [v23 getIconForBundleID:v18 iconVariant:v25 block:v37 timeout:-1.0];

          goto LABEL_16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(PKSecureElementPass *)self->_secureElementPass uniqueID];
    *buf = 138412290;
    v44 = v19;
    _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "(watch-extension-install) Failed to find application record for pass: %@", buf, 0xCu);
  }

  v20 = 0;
  v21 = 0;
LABEL_16:

  v26 = [v5 dockView];
  [v26 setPrimaryButton:0];
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

    v32 = [(ASCLockupView *)self->_appStoreView layer];
    [v32 setCornerRadius:16.0];

    [(ASCLockupView *)self->_appStoreView setLayoutMargins:10.0, 16.0, 10.0, 16.0];
    [(ASCLockupView *)self->_appStoreView setRequest:v27];
    [v26 setLockUpView:self->_appStoreView];
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

  v33 = [v26 footerView];
  v34 = [v33 setUpLaterButton];
  v35 = PKLocalizedAquamanString(&cfstr_InstallWatchEx_1.isa);
  [v34 setTitle:v35 forState:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKWatchExtensionInstallViewController;
  [(PKWatchExtensionInstallViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v9 = *MEMORY[0x1E69BB158];
  v10[0] = *MEMORY[0x1E69BB150];
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:4 context:v7];

  v8 = [(PKExplanationViewController *)self explanationView];

  if (v8 == v6)
  {
    [(PKWatchExtensionInstallViewController *)self _proceedToNextScreen];
  }
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
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
  v24 = v4;
  v8 = [v4 lockup];
  v9 = objc_alloc(MEMORY[0x1E698B3B0]);
  v10 = [v8 id];
  v11 = [v8 kind];
  v12 = [v8 metrics];
  v13 = [v8 icon];
  v14 = [v8 heading];
  v15 = [v8 title];
  v16 = [v8 subtitle];
  v17 = [v8 ageRating];
  v18 = [v9 initWithID:v10 kind:v11 metrics:v12 icon:v13 heading:v14 title:v15 subtitle:v16 ageRating:v17 offer:v25];

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

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(PKWatchExtensionInstallViewController *)self view:a3];
  [v6 setUserInteractionEnabled:v4 ^ 1];

  [(PKExplanationViewController *)self showSpinner:v4];
}

- (void)_installNowPressed
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PKSecureElementPass *)self->_secureElementPass uniqueID];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "(watch-extension-install) begining install of watch extension for pass %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(getNPKCompanionAgentConnectionClass_1[0]());
  objc_initWeak(buf, self);
  v6 = [(PKSecureElementPass *)self->_secureElementPass paymentPass];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59__PKWatchExtensionInstallViewController__installNowPressed__block_invoke;
  v11 = &unk_1E8013B00;
  objc_copyWeak(&v13, buf);
  v7 = v3;
  v12 = v7;
  [v5 beginPairedWatchInstallationOfApplicationForPaymentPass:v6 completion:&v8];

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