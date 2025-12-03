@interface PKVirtualCardPrivacyExplanationViewController
- (PKVirtualCardPrivacyExplanationViewController)initWithContext:(int64_t)context referralSource:(unint64_t)source resultCallback:(id)callback;
- (void)_beginReportingIfNecessary;
- (void)_endReportingIfNecessary;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKVirtualCardPrivacyExplanationViewController

- (PKVirtualCardPrivacyExplanationViewController)initWithContext:(int64_t)context referralSource:(unint64_t)source resultCallback:(id)callback
{
  callbackCopy = callback;
  v14.receiver = self;
  v14.super_class = PKVirtualCardPrivacyExplanationViewController;
  v9 = [(PKExplanationViewController *)&v14 initWithContext:context];
  v10 = v9;
  if (v9)
  {
    v9->_referralSource = source;
    v11 = _Block_copy(callbackCopy);
    resultCallback = v10->_resultCallback;
    v10->_resultCallback = v11;
  }

  return v10;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = PKVirtualCardPrivacyExplanationViewController;
  [(PKExplanationViewController *)&v15 loadView];
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowPrivacyView:1];
  [explanationView setForceShowSetupLaterButton:1];
  [explanationView setDelegate:self];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  dockView = [explanationView dockView];
  v5 = PKLocalizedVirtualCardString(&cfstr_FpanCardWallet.isa);
  [explanationView setTitleText:v5];

  v6 = PKLocalizedVirtualCardString(&cfstr_FpanCardWallet_0.isa);
  [explanationView setBodyText:v6];

  navigationController = [(PKVirtualCardPrivacyExplanationViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:0];

  v8 = objc_alloc_init(PKAutoFillHeroAnimationView);
  animationView = self->_animationView;
  self->_animationView = v8;

  [(PKMicaView *)self->_animationView resetAndPauseAnimations];
  [explanationView setTopMargin:0.0];
  [explanationView setHeroView:self->_animationView];
  primaryButton = [dockView primaryButton];
  v11 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [primaryButton setTitle:v11 forState:0];

  footerView = [dockView footerView];
  setUpLaterButton = [footerView setUpLaterButton];
  v14 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet_3.isa);
  [setUpLaterButton setTitle:v14 forState:0];
}

- (void)viewDidLoad
{
  v13[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKVirtualCardPrivacyExplanationViewController;
  [(PKExplanationViewController *)&v10 viewDidLoad];
  [(PKVirtualCardPrivacyExplanationViewController *)self setModalInPresentation:1];
  [(PKVirtualCardPrivacyExplanationViewController *)self _beginReportingIfNecessary];
  v3 = MEMORY[0x1E69B8540];
  v13[0] = *MEMORY[0x1E69BB728];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v5 = *MEMORY[0x1E69BA818];
  v6 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v6;
  v7 = *MEMORY[0x1E69BA4B8];
  v12[0] = v5;
  v12[1] = v7;
  v11[2] = *MEMORY[0x1E69BB0E0];
  v8 = [MEMORY[0x1E69B8540] virtualCardReferralSource:self->_referralSource];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v3 subjects:v4 sendEvent:v9];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKVirtualCardPrivacyExplanationViewController;
  [(PKVirtualCardPrivacyExplanationViewController *)&v6 viewDidAppear:appear];
  v4 = dispatch_time(0, 350000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKVirtualCardPrivacyExplanationViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKVirtualCardPrivacyExplanationViewController;
  [(PKVirtualCardPrivacyExplanationViewController *)&v5 viewWillDisappear:disappear];
  navigationController = [(PKVirtualCardPrivacyExplanationViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:0];

  [(PKVirtualCardPrivacyExplanationViewController *)self _endReportingIfNecessary];
}

- (void)_beginReportingIfNecessary
{
  v3 = *MEMORY[0x1E69BB728];
  v4 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB728]];

  if (!v4)
  {
    self->_didBeginWalletProvisioningSubject = 1;
    v5 = MEMORY[0x1E69B8540];

    [v5 beginSubjectReporting:v3];
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginWalletProvisioningSubject)
  {
    self->_didBeginWalletProvisioningSubject = 0;
    [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB728]];
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v13[0] = *MEMORY[0x1E69BB728];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v6 = *MEMORY[0x1E69BA6F0];
  v7 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v7;
  v8 = *MEMORY[0x1E69BA4B8];
  v12[0] = v6;
  v12[1] = v8;
  v11[2] = *MEMORY[0x1E69BA440];
  v12[2] = *MEMORY[0x1E69BA500];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v4 subjects:v5 sendEvent:v9];

  [(PKExplanationViewController *)self showSpinner:1];
  resultCallback = self->_resultCallback;
  if (resultCallback)
  {
    resultCallback[2](resultCallback, 1);
  }
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v13[0] = *MEMORY[0x1E69BB728];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v6 = *MEMORY[0x1E69BA6F0];
  v7 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v7;
  v8 = *MEMORY[0x1E69BA4B8];
  v12[0] = v6;
  v12[1] = v8;
  v11[2] = *MEMORY[0x1E69BA440];
  v12[2] = *MEMORY[0x1E69BAB20];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v4 subjects:v5 sendEvent:v9];

  resultCallback = self->_resultCallback;
  if (resultCallback)
  {
    resultCallback[2](resultCallback, 0);
  }
}

@end