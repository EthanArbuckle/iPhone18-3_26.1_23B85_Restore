@interface PKPaymentAutoReloadSetupCompleteViewController
- (PKPaymentAutoReloadSetupCompleteViewController)initWithPass:(id)a3 amount:(id)a4 threshold:(id)a5 setupMode:(int64_t)a6 paymentDataProvider:(id)a7 delegate:(id)a8;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)showBalanceUpdatedUIWithAnimation:(BOOL)a3;
- (void)showWaitingOnBalanceUpdateUI;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentAutoReloadSetupCompleteViewController

- (PKPaymentAutoReloadSetupCompleteViewController)initWithPass:(id)a3 amount:(id)a4 threshold:(id)a5 setupMode:(int64_t)a6 paymentDataProvider:(id)a7 delegate:(id)a8
{
  v15 = a3;
  v24 = a4;
  v23 = a5;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = PKPaymentAutoReloadSetupCompleteViewController;
  v18 = [(PKExplanationViewController *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, a3);
    objc_storeStrong(&v19->_amount, a4);
    objc_storeStrong(&v19->_threshold, a5);
    v19->_setupMode = a6;
    objc_storeWeak(&v19->_delegate, v17);
    objc_storeStrong(&v19->_paymentDataProvider, a7);
    v20 = [(PKPaymentPass *)v19->_pass autoTopUpMerchantTokenIdentifier];
    if (v20)
    {
      v21 = [(PKPaymentPass *)v19->_pass isAutoTopEnabled];
    }

    else
    {
      v21 = 0;
    }

    v19->_passUpdated = (a6 != 1) & v21;
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentDataProvider *)v19->_paymentDataProvider addDelegate:v19];
    }
  }

  return v19;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  v5.receiver = self;
  v5.super_class = PKPaymentAutoReloadSetupCompleteViewController;
  [(PKPaymentAutoReloadSetupCompleteViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PKPaymentAutoReloadSetupCompleteViewController;
  [(PKExplanationViewController *)&v28 viewDidLoad];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKPaymentAutoReloadSetupCompleteViewController *)self setModalInPresentation:1];
  v3 = [(PKPaymentAutoReloadSetupCompleteViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setTopMargin:80.0];
  [v4 setShowPrivacyView:0];
  [v4 setDelegate:self];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:60.0];
  v6 = [(PKCurrencyAmount *)self->_amount currency];
  v7 = v6;
  if (v6 == @"KRW" || v6 && (v8 = [(__CFString *)v6 isEqualToString:@"KRW"], v7, v8))
  {
    v9 = PKPassKitUIBundle();
    v10 = [v9 URLForResource:@"WonIconArrowCirclePath" withExtension:@"pdf"];
    v11 = PKUIScreenScale();
    v12 = PKUIImageFromPDF(v10, 80.0, 80.0, v11);
  }

  else
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"dollarsign.arrow.circlepath" withConfiguration:v5];
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    v12 = [v10 imageWithTintColor:v9];
  }

  v13 = v12;

  v14 = [MEMORY[0x1E69DC888] blackColor];
  v15 = PKUIImageWithBackgroundAndCornerRadius(v13, v14, 80.0, 80.0, 0.0);

  v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
  v17 = [v16 layer];
  [v17 setCornerCurve:*MEMORY[0x1E69796E8]];
  [v17 setCornerRadius:14.0];
  [v17 setMasksToBounds:1];
  [v4 setHeroView:v16];
  if (self->_passUpdated)
  {
    [(PKPaymentAutoReloadSetupCompleteViewController *)self showBalanceUpdatedUIWithAnimation:0];
  }

  else
  {
    [(PKPaymentAutoReloadSetupCompleteViewController *)self showWaitingOnBalanceUpdateUI];
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      v19 = self->_timer;
      self->_timer = 0;
    }

    objc_initWeak(&location, self);
    v20 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v21 = self->_timer;
    self->_timer = v20;

    v22 = self->_timer;
    v23 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v24 = self->_timer;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __61__PKPaymentAutoReloadSetupCompleteViewController_viewDidLoad__block_invoke;
    v25[3] = &unk_1E8010998;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(v24, v25);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __61__PKPaymentAutoReloadSetupCompleteViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentAutoReloadSetupCompleteViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __61__PKPaymentAutoReloadSetupCompleteViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[140];
    v5 = v2;
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = v5[140];
      v5[140] = 0;

      v2 = v5;
    }

    [v2 showBalanceUpdatedUIWithAnimation:1];
    v2 = v5;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentAutoReloadSetupCompleteViewController;
  [(PKPaymentAutoReloadSetupCompleteViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)showWaitingOnBalanceUpdateUI
{
  v6 = [(PKExplanationViewController *)self explanationView];
  [v6 setShowSpinner:1];
  v2 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_4.isa);
  [v6 setTitleText:v2];

  v3 = [v6 dockView];
  [v3 setButtonsEnabled:0];
  v4 = [v3 primaryButton];
  v5 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_5.isa);
  [v4 setTitle:v5 forState:0];
}

- (void)showBalanceUpdatedUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v13 = [(PKExplanationViewController *)self explanationView];
  [v13 setShowSpinner:0];
  v5 = [(PKCurrencyAmount *)self->_amount formattedStringValue];
  v6 = [(PKCurrencyAmount *)self->_threshold formattedStringValue];
  v7 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_6.isa, &stru_1F3BD6370.isa, v5, v6);
  [v13 setBodyText:v7];

  [v13 showCheckmark:1 animated:v3];
  if (self->_setupMode == 1)
  {
    v8 = @"PASS_DETAILS_AUTO_RELOAD_SETUP_COMPLETE_CHANGES_SAVED";
  }

  else
  {
    v8 = @"PASS_DETAILS_AUTO_RELOAD_SETUP_COMPLETE";
  }

  v9 = PKLocalizedPaymentString(&v8->isa);
  [v13 setTitleText:v9];

  v10 = [v13 dockView];
  [v10 setButtonsEnabled:1];
  v11 = [v10 primaryButton];
  v12 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_5.isa);
  [v11 setTitle:v12 forState:0];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__PKPaymentAutoReloadSetupCompleteViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __106__PKPaymentAutoReloadSetupCompleteViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1104) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    v4 = *(*(a1 + 32) + 1120);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 32);
      v6 = *(v5 + 1120);
      *(v5 + 1120) = 0;

      v7 = *(a1 + 32);

      [v7 showBalanceUpdatedUIWithAnimation:1];
    }
  }
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v8 = *MEMORY[0x1E69BB158];
  v9[0] = *MEMORY[0x1E69BB160];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:0 context:v5];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 autoReloadSetupCompleteViewControllerDidComplete:self->_setupMode];
  }

  else
  {
    [(PKPaymentAutoReloadSetupCompleteViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

@end