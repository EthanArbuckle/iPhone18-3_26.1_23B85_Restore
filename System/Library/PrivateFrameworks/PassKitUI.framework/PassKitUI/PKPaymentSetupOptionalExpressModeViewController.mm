@interface PKPaymentSetupOptionalExpressModeViewController
- (CGSize)_snapshotSize;
- (PKPaymentSetupOptionalExpressModeViewController)initWithProvisioningController:(id)controller secureElementPass:(id)pass context:(int64_t)context;
- (PKPaymentSetupOptionalExpressModeViewControllerFlowDelegate)flowItemDelegate;
- (void)_terminateSetupFlow;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)proceedToNextScreen;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PKPaymentSetupOptionalExpressModeViewController

- (PKPaymentSetupOptionalExpressModeViewController)initWithProvisioningController:(id)controller secureElementPass:(id)pass context:(int64_t)context
{
  controllerCopy = controller;
  passCopy = pass;
  v16.receiver = self;
  v16.super_class = PKPaymentSetupOptionalExpressModeViewController;
  v11 = [(PKExplanationViewController *)&v16 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_provisioningController, controller);
    objc_storeStrong(&v12->_pass, pass);
    provisioningTracker = [controllerCopy provisioningTracker];
    provisioningTracker = v12->_provisioningTracker;
    v12->_provisioningTracker = provisioningTracker;

    [(PKSecureElementPass *)v12->_pass loadImageSetAsync:0 preheat:1 withCompletion:&__block_literal_global_196];
  }

  return v12;
}

void __108__PKPaymentSetupOptionalExpressModeViewController_initWithProvisioningController_secureElementPass_context___block_invoke()
{
  v0 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BD026000, v0, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupOptionalExpressModeViewController: front face for pass loaded", v1, 2u);
  }
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = PKPaymentSetupOptionalExpressModeViewController;
  [(PKExplanationViewController *)&v16 loadView];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  v6 = PKLocalizedTransitString(&cfstr_OptionalExpres_0.isa);
  [explanationView setTitleText:v6];

  primaryButton = [dockView primaryButton];
  v8 = PKLocalizedTransitString(&cfstr_OptionalExpres_1.isa);
  [primaryButton setTitle:v8 forState:0];

  [explanationView setForceShowSetupLaterButton:1];
  localizedDescription = [(PKSecureElementPass *)self->_pass localizedDescription];
  v10 = PKLocalizedTransitString(&cfstr_OptionalExpres_2.isa, &stru_1F3BD5BF0.isa, localizedDescription);
  [explanationView setBodyText:v10];

  setUpLaterButton = [footerView setUpLaterButton];
  v12 = PKLocalizedTransitString(&cfstr_OptionalExpres_3.isa);
  [setUpLaterButton setTitle:v12 forState:0];

  v13 = [[PKPassView alloc] initWithPass:self->_pass content:5 suppressedContent:1911];
  [(PKPaymentSetupOptionalExpressModeViewController *)self _snapshotSize];
  v14 = [(PKPassView *)v13 snapshotOfFrontFaceWithRequestedSize:?];
  [explanationView setImage:v14];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  [explanationView showCheckmark:0 animated:0];
  [explanationView setNeedsLayout];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  navigationItem = [(PKPaymentSetupOptionalExpressModeViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupOptionalExpressModeViewController;
  [(PKPaymentSetupOptionalExpressModeViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v15 = *MEMORY[0x1E69E9840];
  continueCopy = continue;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(PKSecureElementPass *)self->_pass uniqueID];
    *buf = 138412290;
    v14 = uniqueID;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupOptionalExpressModeViewController: Selected to set pass with uniqueID:%@ as express", buf, 0xCu);
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  [(PKExplanationViewController *)self showSpinner:1];
  objc_initWeak(buf, self);
  provisioningController = self->_provisioningController;
  paymentPass = [(PKSecureElementPass *)self->_pass paymentPass];
  provisioningTracker = self->_provisioningTracker;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PKPaymentSetupOptionalExpressModeViewController_explanationViewDidSelectContinue___block_invoke;
  v11[3] = &unk_1E8011180;
  objc_copyWeak(&v12, buf);
  [(PKPaymentProvisioningController *)provisioningController finishOptionalExpressModeSetupForPass:paymentPass withProvisioningTracker:provisioningTracker completion:v11];

  v10 = self->_provisioningTracker;
  self->_provisioningTracker = 0;

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __84__PKPaymentSetupOptionalExpressModeViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained reporter];
    [v5 reportPageCompleted:1 context:0];

    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4[136] uniqueID];
      v8[0] = 67109378;
      v8[1] = a2;
      v9 = 2112;
      v10 = v7;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupOptionalExpressModeViewController: Finished enabling express mode successfully:%d for pass with uniqueID:%@", v8, 0x12u);
    }

    [v4 proceedToNextScreen];
  }
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v17 = *MEMORY[0x1E69E9840];
  laterCopy = later;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(PKSecureElementPass *)self->_pass uniqueID];
    *buf = 138412290;
    v16 = uniqueID;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupOptionalExpressModeViewController: Selected to not set pass with uniqueID:%@ as express", buf, 0xCu);
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:4];
  [(PKExplanationViewController *)self showSpinner:1];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:0];

  objc_initWeak(buf, self);
  provisioningController = self->_provisioningController;
  paymentPass = [(PKSecureElementPass *)self->_pass paymentPass];
  provisioningTracker = self->_provisioningTracker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__PKPaymentSetupOptionalExpressModeViewController_explanationViewDidSelectSetupLater___block_invoke;
  v13[3] = &unk_1E8010998;
  objc_copyWeak(&v14, buf);
  [(PKPaymentProvisioningController *)provisioningController handleOptionalExpressModeSetupDidFinishForPass:paymentPass withExpressModes:0 provisioningTracker:provisioningTracker completion:v13];

  v12 = self->_provisioningTracker;
  self->_provisioningTracker = 0;

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __86__PKPaymentSetupOptionalExpressModeViewController_explanationViewDidSelectSetupLater___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained[136] uniqueID];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupOptionalExpressModeViewController: Finish without enable express mode for pass with uniqueID:%@", &v5, 0xCu);

LABEL_4:
    v4 = [WeakRetained reporter];
    [v4 reportPageCompleted:0 context:0];

    [WeakRetained proceedToNextScreen];
    goto LABEL_5;
  }

  if (WeakRetained)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)proceedToNextScreen
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained optionalExpressModeViewControllerDidFinish:self];
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupOptionalExpressModeViewController: terminate flow", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained optionalExpressModeViewControllerDidFinish:self];
}

- (CGSize)_snapshotSize
{
  v2 = 220.0;
  v3 = 134.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKPaymentSetupOptionalExpressModeViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  [(PKExplanationViewController *)self showSpinner:iCopy];
}

- (PKPaymentSetupOptionalExpressModeViewControllerFlowDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end