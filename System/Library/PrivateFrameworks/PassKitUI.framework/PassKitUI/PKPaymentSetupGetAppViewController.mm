@interface PKPaymentSetupGetAppViewController
- (PKPaymentSetupGetAppViewController)initWithPaymentProduct:(id)product setupContext:(int64_t)context inAppMethod:(id)method;
- (PKPaymentSetupGetAppViewController)initWithPaymentProduct:(id)product setupContext:(int64_t)context linkedApplication:(id)application;
- (void)_updateAppStoreViewRequest;
- (void)linkedApplicationDidChangeState:(id)state;
- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)size;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupGetAppViewController

- (PKPaymentSetupGetAppViewController)initWithPaymentProduct:(id)product setupContext:(int64_t)context inAppMethod:(id)method
{
  objc_storeStrong(&self->_inApp, method);
  methodCopy = method;
  productCopy = product;
  v11 = [PKLinkedApplication alloc];
  associatedStoreIdentifiers = [methodCopy associatedStoreIdentifiers];
  appLaunchURL = [methodCopy appLaunchURL];

  v14 = [(PKLinkedApplication *)v11 initWithStoreIDs:associatedStoreIdentifiers defaultLaunchURL:appLaunchURL];
  v15 = [(PKPaymentSetupGetAppViewController *)self initWithPaymentProduct:productCopy setupContext:context linkedApplication:v14];

  return v15;
}

- (PKPaymentSetupGetAppViewController)initWithPaymentProduct:(id)product setupContext:(int64_t)context linkedApplication:(id)application
{
  productCopy = product;
  applicationCopy = application;
  v16.receiver = self;
  v16.super_class = PKPaymentSetupGetAppViewController;
  v11 = [(PKExplanationViewController *)&v16 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_product, product);
    objc_storeStrong(&v12->_linkedApplication, application);
    [(PKLinkedApplication *)v12->_linkedApplication addObserver:v12];
    v13 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v13 configureWithTransparentBackground];
    navigationItem = [(PKPaymentSetupGetAppViewController *)v12 navigationItem];
    [navigationItem setStandardAppearance:v13];
  }

  return v12;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PKPaymentSetupGetAppViewController;
  [(PKExplanationViewController *)&v15 viewDidLoad];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  explanationView = [(PKExplanationViewController *)self explanationView];
  partnerName = [(PKPaymentSetupProduct *)self->_product partnerName];
  [explanationView setShowPrivacyView:0];
  dockView = [explanationView dockView];
  [dockView setPrimaryButton:0];

  v6 = PKLocalizedAquamanString(&cfstr_BarcodePayment_5.isa, &stru_1F3BD5BF0.isa, partnerName);
  [explanationView setTitleText:v6];

  v7 = PKLocalizedAquamanString(&cfstr_BarcodePayment_6.isa, &stru_1F3BD5BF0.isa, partnerName);
  [explanationView setBodyText:v7];

  v8 = objc_alloc_init(MEMORY[0x1E698B3C8]);
  layer = [v8 layer];
  [layer setCornerRadius:16.0];

  [v8 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  v10 = PKProvisioningSecondaryBackgroundColor();
  [v8 setBackgroundColor:v10];

  [v8 setSize:*MEMORY[0x1E698B368]];
  [v8 setDelegate:self];
  appStoreView = self->_appStoreView;
  self->_appStoreView = v8;
  v12 = v8;

  [(PKPaymentSetupGetAppViewController *)self _updateAppStoreViewRequest];
  [explanationView setBodyView:v12];

  [explanationView setBodyViewPadding:32.0];
  view = [(PKPaymentSetupGetAppViewController *)self view];
  v14 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v14];

  PKPaymentSetupApplyContextAppearance([(PKExplanationViewController *)self context], view);
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupGetAppViewController;
  [(PKPaymentSetupGetAppViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupGetAppViewController;
  [(PKPaymentSetupGetAppViewController *)&v5 traitCollectionDidChange:change];
  view = [(PKPaymentSetupGetAppViewController *)self view];
  [view setNeedsLayout];
}

- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)size
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setNeedsLayout];
}

- (void)linkedApplicationDidChangeState:(id)state
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
  state = [(PKLinkedApplication *)self->_linkedApplication state];
  if (state != 2)
  {
    if (state != 1)
    {
      if (!state)
      {
        linkedApplication = self->_linkedApplication;

        [(PKLinkedApplication *)linkedApplication reloadApplicationStateIfNecessary];
      }

      return;
    }

    storeIdentifier = [(PKLinkedApplication *)self->_linkedApplication storeIdentifier];
    if (!storeIdentifier)
    {
      return;
    }

LABEL_8:
    appStoreView = self->_appStoreView;
    v7 = _PKCreateASCLookupRequestForStoreID(storeIdentifier, 0);
    [(ASCLockupView *)appStoreView setRequest:v7];

    return;
  }

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupGetAppViewController received payment setup product with invalid linked application", v10, 2u);
  }

  associatedStoreIdentifiers = [(PKSetupProductMethodInApp *)self->_inApp associatedStoreIdentifiers];
  storeIdentifier = [associatedStoreIdentifiers firstObject];

  if (storeIdentifier)
  {
    goto LABEL_8;
  }
}

@end