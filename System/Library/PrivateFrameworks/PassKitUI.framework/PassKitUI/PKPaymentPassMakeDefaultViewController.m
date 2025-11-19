@interface PKPaymentPassMakeDefaultViewController
- (CGSize)_snapshotSize;
- (PKPaymentPassMakeDefaultViewController)initWithProvisioningController:(id)a3 paymentPass:(id)a4 context:(int64_t)a5;
- (PKPaymentPassMakeDefaultViewControllerDelegate)flowItemDelegate;
- (void)_makePaymentPassDefault;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)loadView;
- (void)proceedToNextScreen;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation PKPaymentPassMakeDefaultViewController

- (PKPaymentPassMakeDefaultViewController)initWithProvisioningController:(id)a3 paymentPass:(id)a4 context:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentPassMakeDefaultViewController;
  v11 = [(PKExplanationViewController *)&v14 initWithContext:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_provisioningController, a3);
    objc_storeStrong(&v12->_pass, a4);
    [(PKSecureElementPass *)v12->_pass loadImageSetSync:0 preheat:1];
  }

  return v12;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = PKPaymentPassMakeDefaultViewController;
  [(PKExplanationViewController *)&v15 loadView];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [v3 dockView];
  v5 = [v4 footerView];
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
  [v3 setTitleText:v6];
  v9 = [v4 primaryButton];
  [v9 setTitle:v8 forState:0];

  [v3 setForceShowSetupLaterButton:1];
  [v3 setBodyText:v7];
  v10 = [v5 setUpLaterButton];
  v11 = PKLocalizedPaymentString(&cfstr_PaymentMakeDef_2.isa);
  [v10 setTitle:v11 forState:0];

  v12 = [[PKPassView alloc] initWithPass:self->_pass content:5 suppressedContent:1911];
  [(PKPaymentPassMakeDefaultViewController *)self _snapshotSize];
  v13 = [(PKPassView *)v12 snapshotOfFrontFaceWithRequestedSize:?];
  [v3 setImage:v13];
  [v3 setShowPrivacyView:0];
  [v3 setDelegate:self];
  [v3 showCheckmark:0 animated:0];
  [v3 setNeedsLayout];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  v14 = [(PKPaymentPassMakeDefaultViewController *)self navigationItem];
  [v14 setHidesBackButton:1 animated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentPassMakeDefaultViewController;
  [(PKPaymentPassMakeDefaultViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = [(PKExplanationViewController *)self explanationView];
  v5 = [v4 dockView];
  [v5 setButtonsEnabled:0];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  [(PKPaymentPassMakeDefaultViewController *)self _makePaymentPassDefault];

  [(PKPaymentPassMakeDefaultViewController *)self proceedToNextScreen];
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(PKExplanationViewController *)self explanationView];
  v5 = [v4 dockView];
  [v5 setButtonsEnabled:0];

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
    v3 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
    v4 = [v3 targetDevice];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [(PKSecureElementPass *)self->_pass uniqueID];
      [v4 paymentWebService:v3 setDefaultPaymentPassUniqueIdentifier:v5];

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
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Attempted to set default with pass that does not allow default selection. Skipping.", buf, 2u);
    }
  }
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(PKPaymentPassMakeDefaultViewController *)self view:a3];
  [v6 setUserInteractionEnabled:v4 ^ 1];

  [(PKExplanationViewController *)self showSpinner:v4];
}

- (PKPaymentPassMakeDefaultViewControllerDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end