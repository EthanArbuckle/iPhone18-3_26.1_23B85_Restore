@interface PKAppleBalanceExplanationViewController
- (PKAppleBalanceExplanationViewController)initWithSetupController:(id)controller;
- (PKAppleBalanceExplanationViewControllerDelegate)delegate;
- (id)_bodyText;
- (void)_setShowSpinner:(BOOL)spinner;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)viewDidLoad;
@end

@implementation PKAppleBalanceExplanationViewController

- (PKAppleBalanceExplanationViewController)initWithSetupController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PKAppleBalanceExplanationViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v9, sel_initWithContext_, [controllerCopy setupContext]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_setupController, controller);
    [(PKExplanationViewController *)v7 setShowCancelButton:[(PKAppleBalanceSetupController *)v7->_setupController uiOnly]];
  }

  return v7;
}

- (void)viewDidLoad
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = PKAppleBalanceExplanationViewController;
  [(PKExplanationViewController *)&v27 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v4 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:8];
  [explanationView setShowPrivacyView:1];
  [(PKExplanationViewController *)self setPrivacyLinkController:v4];
  [explanationView setDelegate:self];
  [explanationView setBodyDataDetectorTypes:0];
  _titleText = [(PKAppleBalanceExplanationViewController *)self _titleText];
  [explanationView setTitleText:_titleText];

  _bodyText = [(PKAppleBalanceExplanationViewController *)self _bodyText];
  [explanationView setBodyText:_bodyText];

  v7 = MEMORY[0x1E69B8948];
  v8 = PKPassKitUIBundle();
  v9 = [v7 URLForImageNamed:@"AppleBalance_Hero" inBundle:v8 scale:0];

  if (v9 && ([MEMORY[0x1E696AC08] defaultManager], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "fileExistsAtPath:", v11), v11, v10, v12))
  {
    v13 = objc_alloc_init(MEMORY[0x1E69B8C10]);
    v14 = objc_alloc(MEMORY[0x1E69B8C08]);
    v15 = MEMORY[0x1E695DEF0];
    path = [v9 path];
    v17 = [v15 dataWithContentsOfFile:path];
    v18 = [v14 initWithIdentifier:@"AppleBalance_Hero" imageData:v17 credentialType:135];

    if (v18)
    {
      v19 = [PKPaymentSetupHeroView alloc];
      setupContext = [(PKAppleBalanceSetupController *)self->_setupController setupContext];
      v28[0] = v18;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v22 = [(PKPaymentSetupHeroView *)v19 initWithContext:setupContext heroImageController:v13 heroImages:v21];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  [explanationView setHeroView:v22];
  v23 = PKProvisioningSecondaryBackgroundColor();
  [explanationView setTopBackgroundColor:v23];

  dockView = [explanationView dockView];
  _primaryActionTitle = [(PKAppleBalanceExplanationViewController *)self _primaryActionTitle];
  primaryButton = [dockView primaryButton];
  [primaryButton setTitle:_primaryActionTitle forState:0];
}

- (id)_bodyText
{
  credential = [(PKAppleBalanceSetupController *)self->_setupController credential];
  product = [credential product];

  longLocalizedDescription = [product longLocalizedDescription];
  v5 = longLocalizedDescription;
  if (longLocalizedDescription)
  {
    v6 = longLocalizedDescription;
  }

  else
  {
    v6 = PKLocalizedFeatureString();
  }

  v7 = v6;

  return v7;
}

- (void)_setShowSpinner:(BOOL)spinner
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKAppleBalanceExplanationViewController__setShowSpinner___block_invoke;
  block[3] = &unk_1E80111A8;
  objc_copyWeak(&v5, &location);
  spinnerCopy = spinner;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __59__PKAppleBalanceExplanationViewController__setShowSpinner___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained explanationView];
    v4 = [v3 dockView];
    [v4 setButtonsEnabled:(*(a1 + 40) & 1) == 0];

    [v5 showSpinner:*(a1 + 40)];
    WeakRetained = v5;
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appleBalanceExplanationViewControllerDidSelectContinue:self];
}

- (PKAppleBalanceExplanationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end