@interface PKPaymentSetupGetAppViewController
- (PKPaymentSetupGetAppViewController)initWithPaymentProduct:(id)a3 setupContext:(int64_t)a4 inAppMethod:(id)a5;
- (PKPaymentSetupGetAppViewController)initWithPaymentProduct:(id)a3 setupContext:(int64_t)a4 linkedApplication:(id)a5;
- (void)_updateAppStoreViewRequest;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupGetAppViewController

- (PKPaymentSetupGetAppViewController)initWithPaymentProduct:(id)a3 setupContext:(int64_t)a4 inAppMethod:(id)a5
{
  objc_storeStrong(&self->_inApp, a5);
  v9 = a5;
  v10 = a3;
  v11 = [PKLinkedApplication alloc];
  v12 = [v9 associatedStoreIdentifiers];
  v13 = [v9 appLaunchURL];

  v14 = [(PKLinkedApplication *)v11 initWithStoreIDs:v12 defaultLaunchURL:v13];
  v15 = [(PKPaymentSetupGetAppViewController *)self initWithPaymentProduct:v10 setupContext:a4 linkedApplication:v14];

  return v15;
}

- (PKPaymentSetupGetAppViewController)initWithPaymentProduct:(id)a3 setupContext:(int64_t)a4 linkedApplication:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKPaymentSetupGetAppViewController;
  v11 = [(PKExplanationViewController *)&v16 initWithContext:a4];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_product, a3);
    objc_storeStrong(&v12->_linkedApplication, a5);
    [(PKLinkedApplication *)v12->_linkedApplication addObserver:v12];
    v13 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v13 configureWithTransparentBackground];
    v14 = [(PKPaymentSetupGetAppViewController *)v12 navigationItem];
    [v14 setStandardAppearance:v13];
  }

  return v12;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PKPaymentSetupGetAppViewController;
  [(PKExplanationViewController *)&v15 viewDidLoad];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [(PKPaymentSetupProduct *)self->_product partnerName];
  [v3 setShowPrivacyView:0];
  v5 = [v3 dockView];
  [v5 setPrimaryButton:0];

  v6 = PKLocalizedAquamanString(&cfstr_BarcodePayment_5.isa, &stru_1F3BD5BF0.isa, v4);
  [v3 setTitleText:v6];

  v7 = PKLocalizedAquamanString(&cfstr_BarcodePayment_6.isa, &stru_1F3BD5BF0.isa, v4);
  [v3 setBodyText:v7];

  v8 = objc_alloc_init(MEMORY[0x1E698B3C8]);
  v9 = [v8 layer];
  [v9 setCornerRadius:16.0];

  [v8 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  v10 = PKProvisioningSecondaryBackgroundColor();
  [v8 setBackgroundColor:v10];

  [v8 setSize:*MEMORY[0x1E698B368]];
  [v8 setDelegate:self];
  appStoreView = self->_appStoreView;
  self->_appStoreView = v8;
  v12 = v8;

  [(PKPaymentSetupGetAppViewController *)self _updateAppStoreViewRequest];
  [v3 setBodyView:v12];

  [v3 setBodyViewPadding:32.0];
  v13 = [(PKPaymentSetupGetAppViewController *)self view];
  v14 = PKProvisioningBackgroundColor();
  [v13 setBackgroundColor:v14];

  PKPaymentSetupApplyContextAppearance([(PKExplanationViewController *)self context], v13);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupGetAppViewController;
  [(PKPaymentSetupGetAppViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupGetAppViewController;
  [(PKPaymentSetupGetAppViewController *)&v5 traitCollectionDidChange:a3];
  v4 = [(PKPaymentSetupGetAppViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)a3
{
  v3 = [(PKExplanationViewController *)self explanationView];
  [v3 setNeedsLayout];
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentSetupGetAppViewController_linkedApplicationDidChangeState___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateAppStoreViewRequest
{
  v3 = [(PKLinkedApplication *)self->_linkedApplication state];
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      if (!v3)
      {
        linkedApplication = self->_linkedApplication;

        [(PKLinkedApplication *)linkedApplication reloadApplicationStateIfNecessary];
      }

      return;
    }

    v5 = [(PKLinkedApplication *)self->_linkedApplication storeIdentifier];
    if (!v5)
    {
      return;
    }

LABEL_8:
    appStoreView = self->_appStoreView;
    v7 = _PKCreateASCLookupRequestForStoreID(v5, 0);
    [(ASCLockupView *)appStoreView setRequest:v7];

    return;
  }

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupGetAppViewController received payment setup product with invalid linked application", v10, 2u);
  }

  v9 = [(PKSetupProductMethodInApp *)self->_inApp associatedStoreIdentifiers];
  v5 = [v9 firstObject];

  if (v5)
  {
    goto LABEL_8;
  }
}

@end