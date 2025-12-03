@interface PKPaymentSetupBankAppDisambiguationViewController
- (PKPaymentSetupBankAppDisambiguationViewController)initWithProvisioningController:(id)controller context:(int64_t)context delegate:(id)delegate paymentSetupProduct:(id)product inAppMethod:(id)method cameraCaptureMethod:(id)captureMethod;
- (PKPaymentSetupBankAppDisambiguationViewControllerFlowDelegate)flowDelegate;
- (void)didSelectCameraWithCompletion:(id)completion;
- (void)didSelectInAppWithCompletion:(id)completion;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupBankAppDisambiguationViewController

- (PKPaymentSetupBankAppDisambiguationViewController)initWithProvisioningController:(id)controller context:(int64_t)context delegate:(id)delegate paymentSetupProduct:(id)product inAppMethod:(id)method cameraCaptureMethod:(id)captureMethod
{
  productCopy = product;
  methodCopy = method;
  captureMethodCopy = captureMethod;
  v21.receiver = self;
  v21.super_class = PKPaymentSetupBankAppDisambiguationViewController;
  v16 = [(PKPaymentSetupOptionsViewController *)&v21 initWithContext:context];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_paymentSetupProduct, product);
    v18 = [[PKPaymentSetupBankAppDisambiguationController alloc] initWithPaymentSetupProduct:v17->_paymentSetupProduct inAppMethod:methodCopy cameraCaptureMethod:captureMethodCopy];
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
  navigationItem = [(PKPaymentSetupBankAppDisambiguationViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  v4 = PKLocalizedPaymentString(&cfstr_CardType.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v4];

  v5 = PKLocalizedPaymentString(&cfstr_CardTypeSelect.isa);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v5];

  v8[0] = self->_sectionController;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v6 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupBankAppDisambiguationViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)didSelectInAppWithCompletion:(id)completion
{
  reporter = self->_reporter;
  completionCopy = completion;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportOtherButtonPressed:@"inApp"];
  v6 = _Block_copy(completionCopy);

  loadingCompletion = self->_loadingCompletion;
  self->_loadingCompletion = v6;

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained bankAppDisambiguationViewControllerDidSelectApp:self];
}

- (void)didSelectCameraWithCompletion:(id)completion
{
  reporter = self->_reporter;
  completionCopy = completion;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportOtherButtonPressed:@"manualEntry"];
  v6 = _Block_copy(completionCopy);

  loadingCompletion = self->_loadingCompletion;
  self->_loadingCompletion = v6;

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained bankAppDisambiguationViewControllerDidManualEntry:self];
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKDynamicCollectionViewController *)self collectionView:i];
  [v6 setUserInteractionEnabled:!iCopy];

  if (!iCopy)
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