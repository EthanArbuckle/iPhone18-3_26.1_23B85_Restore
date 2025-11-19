@interface PKBarcodePaymentOnboardingViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (PKBarcodePaymentOnboardingViewController)initWithIssuerName:(id)a3 context:(int64_t)a4;
- (id)_imageForWatchView;
- (void)_terminateSetupFlow;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKBarcodePaymentOnboardingViewController

- (PKBarcodePaymentOnboardingViewController)initWithIssuerName:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKBarcodePaymentOnboardingViewController;
  v8 = [(PKExplanationViewController *)&v11 initWithContext:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_issuerName, a3);
    [(PKExplanationViewController *)v9 setExplanationViewControllerDelegate:v9];
  }

  return v9;
}

- (void)viewDidLoad
{
  v34[3] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKBarcodePaymentOnboardingViewController;
  [(PKExplanationViewController *)&v32 viewDidLoad];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  [(PKExplanationViewController *)self context];
  [(PKExplanationViewController *)self setShowCancelButton:PKPaymentSetupContextIsIssuerApp()];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [v3 dockView];
  v5 = PKLocalizedAquamanString(&cfstr_BarcodePayment.isa, &stru_1F3BD5BF0.isa, self->_issuerName);
  [v3 setTitleText:v5];

  [(PKExplanationViewController *)self context];
  if (PKPaymentSetupContextIsBridge())
  {
    v6 = PKLocalizedAquamanString(&cfstr_BarcodePayment_0.isa, &stru_1F3BD5BF0.isa, self->_issuerName);
    v7 = [PKWatchDeviceImageOverlayView alloc];
    v8 = [(PKWatchDeviceImageOverlayView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v9 = [(PKBarcodePaymentOnboardingViewController *)self _imageForWatchView];
    [(PKWatchDeviceImageOverlayView *)v8 setOverlayImage:v9];
    v10 = &OBJC_IVAR___PKBarcodePaymentOnboardingViewController__watchView;
  }

  else
  {
    if (PKPearlIsAvailable())
    {
      v11 = @"BARCODE_PAYMENT_INTRO_BODY_FACEID";
    }

    else
    {
      v11 = @"BARCODE_PAYMENT_INTRO_BODY_TOUCHID";
    }

    v6 = PKLocalizedAquamanString(&v11->isa, &stru_1F3BD5BF0.isa, self->_issuerName);
    v12 = [PKEducationPhone alloc];
    v8 = [(PKEducationPhone *)v12 initWithFrame:3 displayOptions:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v9 = PKUIImageNamed(@"BarcodePaymentEducation");
    [(PKWatchDeviceImageOverlayView *)v8 setPassImage:v9];
    v10 = &OBJC_IVAR___PKBarcodePaymentOnboardingViewController__educationPhone;
  }

  [v3 setBodyView:v8];
  v13 = *v10;
  v14 = *(&self->super.super.super.super.isa + v13);
  *(&self->super.super.super.super.isa + v13) = v8;

  v31 = v6;
  [v3 setBodyText:v6];
  v15 = PKUIGetMinScreenType() - 4;
  v16 = 0.0;
  if (v15 <= 0xF)
  {
    v16 = dbl_1BE114560[v15];
  }

  [v3 setBodyViewPadding:v16];
  [v3 setShowPrivacyView:0];
  v17 = [v4 buttonExplanationTextView];
  v18 = PKLocalizedAquamanString(&cfstr_BarcodePayment_3.isa, &stru_1F3BD6370.isa, self->_issuerName, self->_issuerName);
  v19 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v19 setLineBreakMode:0];
  [v19 setAlignment:1];
  v33[0] = *MEMORY[0x1E69DB648];
  v20 = [v17 font];
  v21 = *MEMORY[0x1E69DB688];
  v34[0] = v20;
  v34[1] = v19;
  v22 = *MEMORY[0x1E69DB650];
  v33[1] = v21;
  v33[2] = v22;
  v23 = [v17 textColor];
  v34[2] = v23;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v25 = v24 = v4;

  v26 = PKAttributedStringByParsingLinksInString();
  [v17 setAttributedText:v26];
  [v17 setDelegate:self];
  [v17 setDataDetectorTypes:2];
  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsIssuerApp() & 1) == 0)
  {
    v27 = [v24 primaryButton];
    v28 = PKLocalizedAquamanString(&cfstr_BarcodePayment_4.isa, &stru_1F3BD5BF0.isa, self->_issuerName);
    [v27 setTitle:v28 forState:0];
  }

  v29 = [(PKBarcodePaymentOnboardingViewController *)self view];
  v30 = PKProvisioningBackgroundColor();
  [v29 setBackgroundColor:v30];

  PKPaymentSetupApplyContextAppearance([(PKExplanationViewController *)self context], v29);
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKBarcodePaymentOnboardingViewController;
  [(PKBarcodePaymentOnboardingViewController *)&v6 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  if (self->_educationPhone)
  {
    v4 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKBarcodePaymentOnboardingViewController_viewDidAppear___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = [a4 absoluteString];
  v8 = [v7 isEqualToString:@"OPEN_BARCODE_PAYMENT_PRIVACY_TEXT"];

  if (v8)
  {
    v9 = [[PKBarcodePaymentPrivacyViewController alloc] initWithIssuerName:self->_issuerName displayContext:0 paymentSetupContext:[(PKExplanationViewController *)self context]];
    v10 = [[PKPortraitNavigationController alloc] initWithRootViewController:v9];
    [(PKBarcodePaymentOnboardingViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  return 0;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  if (self->_continueHandler)
  {
    v5 = [(PKExplanationViewController *)self explanationView];
    v6 = [v5 dockView];
    [v6 setButtonsEnabled:0];

    objc_initWeak(&location, self);
    continueHandler = self->_continueHandler;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__PKBarcodePaymentOnboardingViewController_explanationViewDidSelectContinue___block_invoke;
    v8[3] = &unk_1E8010998;
    objc_copyWeak(&v9, &location);
    continueHandler[2](continueHandler, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKBarcodePaymentOnboardingViewController *)self _terminateSetupFlow];
  }
}

void __77__PKBarcodePaymentOnboardingViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKBarcodePaymentOnboardingViewController_explanationViewDidSelectContinue___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __77__PKBarcodePaymentOnboardingViewController_explanationViewDidSelectContinue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained explanationView];
    v3 = [v2 dockView];
    [v3 setButtonsEnabled:1];

    WeakRetained = v4;
  }
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v6, 2u);
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];
  terminationHandler = self->_terminationHandler;
  if (terminationHandler)
  {
    terminationHandler[2]();
  }

  else
  {
    v5 = [(PKBarcodePaymentOnboardingViewController *)self presentingViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_imageForWatchView
{
  v2 = +[PKBridgeWatchAttributeController heroWatchSize];
  if (v2 <= 4)
  {
    v3 = PKUIImageNamed(off_1E80117C0[v2]);
  }

  return v3;
}

@end