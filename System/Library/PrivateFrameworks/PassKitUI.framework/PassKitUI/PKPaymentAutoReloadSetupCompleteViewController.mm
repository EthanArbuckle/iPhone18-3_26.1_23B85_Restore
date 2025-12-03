@interface PKPaymentAutoReloadSetupCompleteViewController
- (PKPaymentAutoReloadSetupCompleteViewController)initWithPass:(id)pass amount:(id)amount threshold:(id)threshold setupMode:(int64_t)mode paymentDataProvider:(id)provider delegate:(id)delegate;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)showBalanceUpdatedUIWithAnimation:(BOOL)animation;
- (void)showWaitingOnBalanceUpdateUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentAutoReloadSetupCompleteViewController

- (PKPaymentAutoReloadSetupCompleteViewController)initWithPass:(id)pass amount:(id)amount threshold:(id)threshold setupMode:(int64_t)mode paymentDataProvider:(id)provider delegate:(id)delegate
{
  passCopy = pass;
  amountCopy = amount;
  thresholdCopy = threshold;
  providerCopy = provider;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PKPaymentAutoReloadSetupCompleteViewController;
  v18 = [(PKExplanationViewController *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, pass);
    objc_storeStrong(&v19->_amount, amount);
    objc_storeStrong(&v19->_threshold, threshold);
    v19->_setupMode = mode;
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v19->_paymentDataProvider, provider);
    autoTopUpMerchantTokenIdentifier = [(PKPaymentPass *)v19->_pass autoTopUpMerchantTokenIdentifier];
    if (autoTopUpMerchantTokenIdentifier)
    {
      isAutoTopEnabled = [(PKPaymentPass *)v19->_pass isAutoTopEnabled];
    }

    else
    {
      isAutoTopEnabled = 0;
    }

    v19->_passUpdated = (mode != 1) & isAutoTopEnabled;
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
  navigationItem = [(PKPaymentAutoReloadSetupCompleteViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setTopMargin:80.0];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:60.0];
  currency = [(PKCurrencyAmount *)self->_amount currency];
  v7 = currency;
  if (currency == @"KRW" || currency && (v8 = [(__CFString *)currency isEqualToString:@"KRW"], v7, v8))
  {
    whiteColor = PKPassKitUIBundle();
    v10 = [whiteColor URLForResource:@"WonIconArrowCirclePath" withExtension:@"pdf"];
    v11 = PKUIScreenScale();
    v12 = PKUIImageFromPDF(v10, 80.0, 80.0, v11);
  }

  else
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"dollarsign.arrow.circlepath" withConfiguration:v5];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v12 = [v10 imageWithTintColor:whiteColor];
  }

  v13 = v12;

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v15 = PKUIImageWithBackgroundAndCornerRadius(v13, blackColor, 80.0, 80.0, 0.0);

  v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
  layer = [v16 layer];
  [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  [layer setCornerRadius:14.0];
  [layer setMasksToBounds:1];
  [explanationView setHeroView:v16];
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentAutoReloadSetupCompleteViewController;
  [(PKPaymentAutoReloadSetupCompleteViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)showWaitingOnBalanceUpdateUI
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowSpinner:1];
  v2 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_4.isa);
  [explanationView setTitleText:v2];

  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:0];
  primaryButton = [dockView primaryButton];
  v5 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_5.isa);
  [primaryButton setTitle:v5 forState:0];
}

- (void)showBalanceUpdatedUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowSpinner:0];
  formattedStringValue = [(PKCurrencyAmount *)self->_amount formattedStringValue];
  formattedStringValue2 = [(PKCurrencyAmount *)self->_threshold formattedStringValue];
  v7 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_6.isa, &stru_1F3BD6370.isa, formattedStringValue, formattedStringValue2);
  [explanationView setBodyText:v7];

  [explanationView showCheckmark:1 animated:animationCopy];
  if (self->_setupMode == 1)
  {
    v8 = @"PASS_DETAILS_AUTO_RELOAD_SETUP_COMPLETE_CHANGES_SAVED";
  }

  else
  {
    v8 = @"PASS_DETAILS_AUTO_RELOAD_SETUP_COMPLETE";
  }

  v9 = PKLocalizedPaymentString(&v8->isa);
  [explanationView setTitleText:v9];

  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:1];
  primaryButton = [dockView primaryButton];
  v12 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_5.isa);
  [primaryButton setTitle:v12 forState:0];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__PKPaymentAutoReloadSetupCompleteViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
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

- (void)explanationViewDidSelectContinue:(id)continue
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