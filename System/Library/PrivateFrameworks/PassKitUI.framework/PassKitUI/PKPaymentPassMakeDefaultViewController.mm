@interface PKPaymentPassMakeDefaultViewController
- (CGSize)_snapshotSize;
- (PKPaymentPassMakeDefaultViewController)initWithProvisioningController:(id)controller paymentPass:(id)pass context:(int64_t)context;
- (PKPaymentPassMakeDefaultViewControllerDelegate)flowItemDelegate;
- (void)_makePaymentPassDefault;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)proceedToNextScreen;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PKPaymentPassMakeDefaultViewController

- (PKPaymentPassMakeDefaultViewController)initWithProvisioningController:(id)controller paymentPass:(id)pass context:(int64_t)context
{
  controllerCopy = controller;
  passCopy = pass;
  v14.receiver = self;
  v14.super_class = PKPaymentPassMakeDefaultViewController;
  v11 = [(PKExplanationViewController *)&v14 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_provisioningController, controller);
    objc_storeStrong(&v12->_pass, pass);
    [(PKSecureElementPass *)v12->_pass loadImageSetSync:0 preheat:1];
  }

  return v12;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = PKPaymentPassMakeDefaultViewController;
  [(PKExplanationViewController *)&v15 loadView];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  if ([(PKSecureElementPass *)self->_pass supportsBarcodePayment])
  {
    v6 = PKLocalizedAquamanString(&cfstr_PaymentAccount.isa);
    v7 = PKLocalizedAquamanString(&cfstr_PaymentAccount_0.isa);
    PKLocalizedAquamanString(&cfstr_PaymentMakeDef.isa);
  }

  else
  {
    v6 = PKLocalizedPaymentString(&cfstr_PaymentMakeDef_0.isa);
    v7 = PKLocalizedPaymentString(&cfstr_PaymentMakeDef_1.isa);
    PKLocalizedPaymentString(&cfstr_PaymentMakeDef.isa);
  }
  v8 = ;
  [explanationView setTitleText:v6];
  primaryButton = [dockView primaryButton];
  [primaryButton setTitle:v8 forState:0];

  [explanationView setForceShowSetupLaterButton:1];
  [explanationView setBodyText:v7];
  setUpLaterButton = [footerView setUpLaterButton];
  v11 = PKLocalizedPaymentString(&cfstr_PaymentMakeDef_2.isa);
  [setUpLaterButton setTitle:v11 forState:0];

  v12 = [[PKPassView alloc] initWithPass:self->_pass content:5 suppressedContent:1911];
  [(PKPaymentPassMakeDefaultViewController *)self _snapshotSize];
  v13 = [(PKPassView *)v12 snapshotOfFrontFaceWithRequestedSize:?];
  [explanationView setImage:v13];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  [explanationView showCheckmark:0 animated:0];
  [explanationView setNeedsLayout];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  navigationItem = [(PKPaymentPassMakeDefaultViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentPassMakeDefaultViewController;
  [(PKPaymentPassMakeDefaultViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:0];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  [(PKPaymentPassMakeDefaultViewController *)self _makePaymentPassDefault];

  [(PKPaymentPassMakeDefaultViewController *)self proceedToNextScreen];
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v9[1] = *MEMORY[0x1E69E9840];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:0];

  reporter = self->_reporter;
  v8 = *MEMORY[0x1E69BB158];
  v9[0] = *MEMORY[0x1E69BB150];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:4 context:v7];

  [(PKPaymentPassMakeDefaultViewController *)self proceedToNextScreen];
}

- (void)proceedToNextScreen
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained paymentPassMakeDefaultViewControllerDidFinish:self];
}

- (CGSize)_snapshotSize
{
  v2 = 220.0;
  v3 = 134.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_makePaymentPassDefault
{
  if (([(PKSecureElementPass *)self->_pass supportsDefaultCardSelection]& 1) != 0)
  {
    webService = [(PKPaymentProvisioningController *)self->_provisioningController webService];
    targetDevice = [webService targetDevice];
    if (targetDevice && (objc_opt_respondsToSelector() & 1) != 0)
    {
      uniqueID = [(PKSecureElementPass *)self->_pass uniqueID];
      [targetDevice paymentWebService:webService setDefaultPaymentPassUniqueIdentifier:uniqueID];

      reporter = self->_reporter;
      v7 = 1;
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Error: Target device does not support setting default", v9, 2u);
      }

      reporter = self->_reporter;
      v7 = 0;
    }

    [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportPageCompleted:v7 context:0];
  }

  else
  {
    webService = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(webService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, webService, OS_LOG_TYPE_DEFAULT, "Attempted to set default with pass that does not allow default selection. Skipping.", buf, 2u);
    }
  }
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKPaymentPassMakeDefaultViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  [(PKExplanationViewController *)self showSpinner:iCopy];
}

- (PKPaymentPassMakeDefaultViewControllerDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end