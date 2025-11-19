@interface PKPaymentSetupBankAppDisambiguationViewController
- (PKPaymentSetupBankAppDisambiguationViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 delegate:(id)a5 paymentSetupProduct:(id)a6 inAppMethod:(id)a7 cameraCaptureMethod:(id)a8;
- (PKPaymentSetupBankAppDisambiguationViewControllerFlowDelegate)flowDelegate;
- (void)didSelectCameraWithCompletion:(id)a3;
- (void)didSelectInAppWithCompletion:(id)a3;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupBankAppDisambiguationViewController

- (PKPaymentSetupBankAppDisambiguationViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 delegate:(id)a5 paymentSetupProduct:(id)a6 inAppMethod:(id)a7 cameraCaptureMethod:(id)a8
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v21.receiver = self;
  v21.super_class = PKPaymentSetupBankAppDisambiguationViewController;
  v16 = [(PKPaymentSetupOptionsViewController *)&v21 initWithContext:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_paymentSetupProduct, a6);
    v18 = [[PKPaymentSetupBankAppDisambiguationController alloc] initWithPaymentSetupProduct:v17->_paymentSetupProduct inAppMethod:v14 cameraCaptureMethod:v15];
    sectionController = v17->_sectionController;
    v17->_sectionController = v18;

    [(PKPaymentSetupBankAppDisambiguationController *)v17->_sectionController setDelegate:v17];
    [(PKDynamicCollectionViewController *)v17 setUseItemIdentityWhenUpdating:1];
  }

  return v17;
}

- (void)viewDidLoad
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKPaymentSetupBankAppDisambiguationViewController;
  [(PKPaymentSetupOptionsViewController *)&v7 viewDidLoad];
  v3 = [(PKPaymentSetupBankAppDisambiguationViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:0];

  v4 = PKLocalizedPaymentString(&cfstr_CardType.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v4];

  v5 = PKLocalizedPaymentString(&cfstr_CardTypeSelect.isa);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v5];

  v8[0] = self->_sectionController;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v6 animated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupBankAppDisambiguationViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)didSelectInAppWithCompletion:(id)a3
{
  reporter = self->_reporter;
  v5 = a3;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportOtherButtonPressed:@"inApp"];
  v6 = _Block_copy(v5);

  loadingCompletion = self->_loadingCompletion;
  self->_loadingCompletion = v6;

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained bankAppDisambiguationViewControllerDidSelectApp:self];
}

- (void)didSelectCameraWithCompletion:(id)a3
{
  reporter = self->_reporter;
  v5 = a3;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportOtherButtonPressed:@"manualEntry"];
  v6 = _Block_copy(v5);

  loadingCompletion = self->_loadingCompletion;
  self->_loadingCompletion = v6;

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained bankAppDisambiguationViewControllerDidManualEntry:self];
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(PKDynamicCollectionViewController *)self collectionView:a3];
  [v6 setUserInteractionEnabled:!v4];

  if (!v4)
  {
    loadingCompletion = self->_loadingCompletion;
    if (loadingCompletion)
    {
      loadingCompletion[2]();
      v8 = self->_loadingCompletion;
      self->_loadingCompletion = 0;
    }
  }
}

- (PKPaymentSetupBankAppDisambiguationViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end