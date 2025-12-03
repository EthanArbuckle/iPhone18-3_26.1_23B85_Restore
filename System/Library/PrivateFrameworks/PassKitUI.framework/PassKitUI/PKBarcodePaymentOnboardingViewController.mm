@interface PKBarcodePaymentOnboardingViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (PKBarcodePaymentOnboardingViewController)initWithIssuerName:(id)name context:(int64_t)context;
- (id)_imageForWatchView;
- (void)_terminateSetupFlow;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKBarcodePaymentOnboardingViewController

- (PKBarcodePaymentOnboardingViewController)initWithIssuerName:(id)name context:(int64_t)context
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = PKBarcodePaymentOnboardingViewController;
  v8 = [(PKExplanationViewController *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_issuerName, name);
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
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  v5 = PKLocalizedAquamanString(&cfstr_BarcodePayment.isa, &stru_1F3BD5BF0.isa, self->_issuerName);
  [explanationView setTitleText:v5];

  [(PKExplanationViewController *)self context];
  if (PKPaymentSetupContextIsBridge())
  {
    v6 = PKLocalizedAquamanString(&cfstr_BarcodePayment_0.isa, &stru_1F3BD5BF0.isa, self->_issuerName);
    v7 = [PKWatchDeviceImageOverlayView alloc];
    v8 = [(PKWatchDeviceImageOverlayView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    _imageForWatchView = [(PKBarcodePaymentOnboardingViewController *)self _imageForWatchView];
    [(PKWatchDeviceImageOverlayView *)v8 setOverlayImage:_imageForWatchView];
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
    _imageForWatchView = PKUIImageNamed(@"BarcodePaymentEducation");
    [(PKWatchDeviceImageOverlayView *)v8 setPassImage:_imageForWatchView];
    v10 = &OBJC_IVAR___PKBarcodePaymentOnboardingViewController__educationPhone;
  }

  [explanationView setBodyView:v8];
  v13 = *v10;
  v14 = *(&self->super.super.super.super.isa + v13);
  *(&self->super.super.super.super.isa + v13) = v8;

  v31 = v6;
  [explanationView setBodyText:v6];
  v15 = PKUIGetMinScreenType() - 4;
  v16 = 0.0;
  if (v15 <= 0xF)
  {
    v16 = dbl_1BE114560[v15];
  }

  [explanationView setBodyViewPadding:v16];
  [explanationView setShowPrivacyView:0];
  buttonExplanationTextView = [dockView buttonExplanationTextView];
  v18 = PKLocalizedAquamanString(&cfstr_BarcodePayment_3.isa, &stru_1F3BD6370.isa, self->_issuerName, self->_issuerName);
  v19 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v19 setLineBreakMode:0];
  [v19 setAlignment:1];
  v33[0] = *MEMORY[0x1E69DB648];
  font = [buttonExplanationTextView font];
  v21 = *MEMORY[0x1E69DB688];
  v34[0] = font;
  v34[1] = v19;
  v22 = *MEMORY[0x1E69DB650];
  v33[1] = v21;
  v33[2] = v22;
  textColor = [buttonExplanationTextView textColor];
  v34[2] = textColor;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v25 = v24 = dockView;

  v26 = PKAttributedStringByParsingLinksInString();
  [buttonExplanationTextView setAttributedText:v26];
  [buttonExplanationTextView setDelegate:self];
  [buttonExplanationTextView setDataDetectorTypes:2];
  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsIssuerApp() & 1) == 0)
  {
    primaryButton = [v24 primaryButton];
    v28 = PKLocalizedAquamanString(&cfstr_BarcodePayment_4.isa, &stru_1F3BD5BF0.isa, self->_issuerName);
    [primaryButton setTitle:v28 forState:0];
  }

  view = [(PKBarcodePaymentOnboardingViewController *)self view];
  v30 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v30];

  PKPaymentSetupApplyContextAppearance([(PKExplanationViewController *)self context], view);
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKBarcodePaymentOnboardingViewController;
  [(PKBarcodePaymentOnboardingViewController *)&v6 viewDidAppear:appear];
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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  absoluteString = [l absoluteString];
  v8 = [absoluteString isEqualToString:@"OPEN_BARCODE_PAYMENT_PRIVACY_TEXT"];

  if (v8)
  {
    v9 = [[PKBarcodePaymentPrivacyViewController alloc] initWithIssuerName:self->_issuerName displayContext:0 paymentSetupContext:[(PKExplanationViewController *)self context]];
    v10 = [[PKPortraitNavigationController alloc] initWithRootViewController:v9];
    [(PKBarcodePaymentOnboardingViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  return 0;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  if (self->_continueHandler)
  {
    explanationView = [(PKExplanationViewController *)self explanationView];
    dockView = [explanationView dockView];
    [dockView setButtonsEnabled:0];

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
    presentingViewController = [(PKBarcodePaymentOnboardingViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
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