@interface PKPasscodeUpgradeExplanationViewController
- (PKPasscodeUpgradeExplanationViewController)initWithContext:(int64_t)context isForWatch:(BOOL)watch delegate:(id)delegate;
- (void)_showSpinner:(BOOL)spinner;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPasscodeUpgradeExplanationViewController

- (PKPasscodeUpgradeExplanationViewController)initWithContext:(int64_t)context isForWatch:(BOOL)watch delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKPasscodeUpgradeExplanationViewController;
  v9 = [(PKExplanationViewController *)&v12 initWithContext:context];
  v10 = v9;
  if (v9)
  {
    v9->_context = context;
    v9->_isForWatch = watch;
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v10;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = PKPasscodeUpgradeExplanationViewController;
  [(PKExplanationViewController *)&v29 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*MEMORY[0x1E69BC650]];
  v5 = PKLocalizedPaymentString(&cfstr_PasscodeUpgrad_12.isa, &stru_1F3BD5BF0.isa, v4);
  [explanationView setTitleText:v5];

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
  [explanationView setBodyText:v9];

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
  [explanationView setImage:v14];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v17 = v16;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] statusBarFrame];
  v20 = -(v19 - v17 * 0.09);

  [explanationView setTopMargin:v20];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];

  [explanationView setShowPrivacyView:0];
  [explanationView setForceShowSetupLaterButton:1];
  setUpLaterButton = [footerView setUpLaterButton];
  v24 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
  [setUpLaterButton setTitle:v24 forState:0];

  view = [(PKPasscodeUpgradeExplanationViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9A00]];

  context = self->_context;
  view2 = [(PKPasscodeUpgradeExplanationViewController *)self view];
  PKPaymentSetupApplyContextAppearance(context, view2);
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = PKPasscodeUpgradeExplanationViewController;
  [(PKPasscodeUpgradeExplanationViewController *)&v16 viewWillAppear:appear];
  if (!self->_viewHasAppeared)
  {
    self->_viewHasAppeared = 1;
    if (self->_isForWatch)
    {
      [(PKPasscodeUpgradeExplanationViewController *)self _showSpinner:0];
    }
  }

  navigationController = [(PKPasscodeUpgradeExplanationViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v6 = [viewControllers count];

  if (v6 == 1)
  {
    [(PKExplanationViewController *)self setShowCancelButton:1];
  }

  else
  {
    [(PKExplanationViewController *)self setShowCancelButton:0];
    objc_initWeak(&location, self);
    navigationItem = [(PKPasscodeUpgradeExplanationViewController *)self navigationItem];
    v8 = MEMORY[0x1E69DC628];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __61__PKPasscodeUpgradeExplanationViewController_viewWillAppear___block_invoke;
    v13 = &unk_1E8010A60;
    objc_copyWeak(&v14, &location);
    v9 = [v8 actionWithHandler:&v10];
    [navigationItem setBackAction:{v9, v10, v11, v12, v13}];

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

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKPasscodeUpgradeExplanationViewController;
  [(PKPasscodeUpgradeExplanationViewController *)&v6 viewDidAppear:appear];
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  date = [MEMORY[0x1E695DF00] date];
  [mEMORY[0x1E69ADFB8] notifyUserHasSeenComplianceMessageWithLastLockDate:date];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPasscodeUpgradeExplanationViewController;
  [(PKPasscodeUpgradeExplanationViewController *)&v4 viewDidDisappear:disappear];
  if (self->_viewHasAppeared)
  {
    self->_viewHasAppeared = 0;
  }
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained upgradeExplanationViewControllerSelectedSetupLater:self];

  reporter = self->_reporter;

  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:4];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained upgradeExplanationViewControllerDidComplete:self];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  if (self->_isForWatch)
  {

    [(PKPasscodeUpgradeExplanationViewController *)self _showSpinner:1];
  }
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained upgradeExplanationViewControllerSelectedSetupLater:self];

  reporter = self->_reporter;

  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:4];
}

- (void)_showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  [primaryButton setShowSpinner:spinnerCopy];
  [primaryButton setEnabled:spinnerCopy ^ 1];
  footerView = [dockView footerView];
  setUpLaterButton = [footerView setUpLaterButton];
  [setUpLaterButton setEnabled:spinnerCopy ^ 1];
}

@end