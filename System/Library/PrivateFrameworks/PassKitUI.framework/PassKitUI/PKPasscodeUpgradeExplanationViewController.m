@interface PKPasscodeUpgradeExplanationViewController
- (PKPasscodeUpgradeExplanationViewController)initWithContext:(int64_t)a3 isForWatch:(BOOL)a4 delegate:(id)a5;
- (void)_showSpinner:(BOOL)a3;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPasscodeUpgradeExplanationViewController

- (PKPasscodeUpgradeExplanationViewController)initWithContext:(int64_t)a3 isForWatch:(BOOL)a4 delegate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = PKPasscodeUpgradeExplanationViewController;
  v9 = [(PKExplanationViewController *)&v12 initWithContext:a3];
  v10 = v9;
  if (v9)
  {
    v9->_context = a3;
    v9->_isForWatch = a4;
    objc_storeWeak(&v9->_delegate, v8);
  }

  return v10;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = PKPasscodeUpgradeExplanationViewController;
  [(PKExplanationViewController *)&v29 viewDidLoad];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*MEMORY[0x1E69BC650]];
  v5 = PKLocalizedPaymentString(&cfstr_PasscodeUpgrad_12.isa, &stru_1F3BD5BF0.isa, v4);
  [v3 setTitleText:v5];

  v6 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:v4 numberStyle:5];
  v28 = v6;
  if (self->_upgradeStrongPasscodeRequiredToAddNewPass)
  {
    v7 = @"PASSCODE_UPGRADE_REQUIRED_TO_ADD_CARD_BODY";
  }

  else
  {
    v7 = @"PASSCODE_UPGRADE_REQUIRED_BODY";
  }

  v8 = PKDeviceSpecificLocalizedStringKeyForKey(v7, self->_isForWatch);
  v9 = PKLocalizedPaymentString(v8, &stru_1F3BD5BF0.isa, v6);
  [v3 setBodyText:v9];

  v10 = PKPassKitUIBundle();
  if (PKPaymentSetupContextIsBridge())
  {
    v11 = @"PasscodeLock_Watch";
  }

  else
  {
    v11 = @"PasscodeLock";
  }

  v12 = [v10 URLForResource:v11 withExtension:@"pdf"];
  v13 = PKUIScreenScale();
  v14 = PKUIImageFromPDF(v12, 80.0, 80.0, v13);
  [v3 setImage:v14];

  v15 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v15 bounds];
  v17 = v16;
  v18 = [MEMORY[0x1E69DC668] sharedApplication];
  [v18 statusBarFrame];
  v20 = -(v19 - v17 * 0.09);

  [v3 setTopMargin:v20];
  v21 = [v3 dockView];
  v22 = [v21 footerView];

  [v3 setShowPrivacyView:0];
  [v3 setForceShowSetupLaterButton:1];
  v23 = [v22 setUpLaterButton];
  v24 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
  [v23 setTitle:v24 forState:0];

  v25 = [(PKPasscodeUpgradeExplanationViewController *)self view];
  [v25 setAccessibilityIdentifier:*MEMORY[0x1E69B9A00]];

  context = self->_context;
  v27 = [(PKPasscodeUpgradeExplanationViewController *)self view];
  PKPaymentSetupApplyContextAppearance(context, v27);
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = PKPasscodeUpgradeExplanationViewController;
  [(PKPasscodeUpgradeExplanationViewController *)&v16 viewWillAppear:a3];
  if (!self->_viewHasAppeared)
  {
    self->_viewHasAppeared = 1;
    if (self->_isForWatch)
    {
      [(PKPasscodeUpgradeExplanationViewController *)self _showSpinner:0];
    }
  }

  v4 = [(PKPasscodeUpgradeExplanationViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 count];

  if (v6 == 1)
  {
    [(PKExplanationViewController *)self setShowCancelButton:1];
  }

  else
  {
    [(PKExplanationViewController *)self setShowCancelButton:0];
    objc_initWeak(&location, self);
    v7 = [(PKPasscodeUpgradeExplanationViewController *)self navigationItem];
    v8 = MEMORY[0x1E69DC628];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __61__PKPasscodeUpgradeExplanationViewController_viewWillAppear___block_invoke;
    v13 = &unk_1E8010A60;
    objc_copyWeak(&v14, &location);
    v9 = [v8 actionWithHandler:&v10];
    [v7 setBackAction:{v9, v10, v11, v12, v13}];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __61__PKPasscodeUpgradeExplanationViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 137);
    [v2 upgradeExplanationViewControllerSelectedBack:v3];

    WeakRetained = v3;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPasscodeUpgradeExplanationViewController;
  [(PKPasscodeUpgradeExplanationViewController *)&v6 viewDidAppear:a3];
  v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [MEMORY[0x1E695DF00] date];
  [v4 notifyUserHasSeenComplianceMessageWithLastLockDate:v5];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPasscodeUpgradeExplanationViewController;
  [(PKPasscodeUpgradeExplanationViewController *)&v4 viewDidDisappear:a3];
  if (self->_viewHasAppeared)
  {
    self->_viewHasAppeared = 0;
  }
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained upgradeExplanationViewControllerSelectedSetupLater:self];

  reporter = self->_reporter;

  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:4];
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained upgradeExplanationViewControllerDidComplete:self];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  if (self->_isForWatch)
  {

    [(PKPasscodeUpgradeExplanationViewController *)self _showSpinner:1];
  }
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained upgradeExplanationViewControllerSelectedSetupLater:self];

  reporter = self->_reporter;

  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:4];
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  v8 = [(PKExplanationViewController *)self explanationView];
  v4 = [v8 dockView];
  v5 = [v4 primaryButton];
  [v5 setShowSpinner:v3];
  [v5 setEnabled:v3 ^ 1];
  v6 = [v4 footerView];
  v7 = [v6 setUpLaterButton];
  [v7 setEnabled:v3 ^ 1];
}

@end