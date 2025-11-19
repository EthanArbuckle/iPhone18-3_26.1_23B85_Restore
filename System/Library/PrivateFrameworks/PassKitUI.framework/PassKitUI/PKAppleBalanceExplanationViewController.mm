@interface PKAppleBalanceExplanationViewController
- (PKAppleBalanceExplanationViewController)initWithSetupController:(id)a3;
- (PKAppleBalanceExplanationViewControllerDelegate)delegate;
- (id)_bodyText;
- (void)_setShowSpinner:(BOOL)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKAppleBalanceExplanationViewController

- (PKAppleBalanceExplanationViewController)initWithSetupController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKAppleBalanceExplanationViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v9, sel_initWithContext_, [v5 setupContext]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_setupController, a3);
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
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:8];
  [v3 setShowPrivacyView:1];
  [(PKExplanationViewController *)self setPrivacyLinkController:v4];
  [v3 setDelegate:self];
  [v3 setBodyDataDetectorTypes:0];
  v5 = [(PKAppleBalanceExplanationViewController *)self _titleText];
  [v3 setTitleText:v5];

  v6 = [(PKAppleBalanceExplanationViewController *)self _bodyText];
  [v3 setBodyText:v6];

  v7 = MEMORY[0x1E69B8948];
  v8 = PKPassKitUIBundle();
  v9 = [v7 URLForImageNamed:@"AppleBalance_Hero" inBundle:v8 scale:0];

  if (v9 && ([MEMORY[0x1E696AC08] defaultManager], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "fileExistsAtPath:", v11), v11, v10, v12))
  {
    v13 = objc_alloc_init(MEMORY[0x1E69B8C10]);
    v14 = objc_alloc(MEMORY[0x1E69B8C08]);
    v15 = MEMORY[0x1E695DEF0];
    v16 = [v9 path];
    v17 = [v15 dataWithContentsOfFile:v16];
    v18 = [v14 initWithIdentifier:@"AppleBalance_Hero" imageData:v17 credentialType:135];

    if (v18)
    {
      v19 = [PKPaymentSetupHeroView alloc];
      v20 = [(PKAppleBalanceSetupController *)self->_setupController setupContext];
      v28[0] = v18;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v22 = [(PKPaymentSetupHeroView *)v19 initWithContext:v20 heroImageController:v13 heroImages:v21];
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

  [v3 setHeroView:v22];
  v23 = PKProvisioningSecondaryBackgroundColor();
  [v3 setTopBackgroundColor:v23];

  v24 = [v3 dockView];
  v25 = [(PKAppleBalanceExplanationViewController *)self _primaryActionTitle];
  v26 = [v24 primaryButton];
  [v26 setTitle:v25 forState:0];
}

- (id)_bodyText
{
  v2 = [(PKAppleBalanceSetupController *)self->_setupController credential];
  v3 = [v2 product];

  v4 = [v3 longLocalizedDescription];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = PKLocalizedFeatureString();
  }

  v7 = v6;

  return v7;
}

- (void)_setShowSpinner:(BOOL)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKAppleBalanceExplanationViewController__setShowSpinner___block_invoke;
  block[3] = &unk_1E80111A8;
  objc_copyWeak(&v5, &location);
  v6 = a3;
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

- (void)explanationViewDidSelectContinue:(id)a3
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