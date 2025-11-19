@interface PKPaymentSetupAppRequiredViewController
- (PKPaymentSetupAppRequiredViewController)initWithSetupContext:(int64_t)a3 product:(id)a4 linkedApplication:(id)a5;
- (id)_bodyText;
- (id)_buttonTitle;
- (void)_openAppLink;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupAppRequiredViewController

- (PKPaymentSetupAppRequiredViewController)initWithSetupContext:(int64_t)a3 product:(id)a4 linkedApplication:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKPaymentSetupAppRequiredViewController;
  v11 = [(PKExplanationViewController *)&v16 initWithContext:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_product, a4);
    objc_storeStrong(&v12->_linkedApplication, a5);
    v13 = [(PKLinkedApplication *)v12->_linkedApplication displayName];
    v14 = v13;
    if (!v13)
    {
      v14 = [(PKPaymentSetupProduct *)v12->_product displayName];
    }

    objc_storeStrong(&v12->_displayName, v14);
    if (!v13)
    {
    }

    [(PKLinkedApplication *)v12->_linkedApplication addObserver:v12];
  }

  return v12;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PKPaymentSetupAppRequiredViewController;
  [(PKExplanationViewController *)&v13 viewDidLoad];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  v3 = [(PKExplanationViewController *)self explanationView];
  [v3 setShowPrivacyView:0];
  [v3 setTitleText:self->_displayName];
  [v3 setImageStyle:1];
  v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v5 = [(PKLinkedApplication *)self->_linkedApplication iconImage];
  v6 = [v4 initWithImage:v5];

  [v3 setHeroView:v6];
  [v3 setHeroViewContentMode:0];
  v7 = [(PKPaymentSetupAppRequiredViewController *)self _bodyText];
  [v3 setBodyText:v7];

  v8 = [v3 dockView];
  [v8 setRequiresAdditionalPrimaryButtonPadding:1];
  v9 = [v8 primaryButton];
  v10 = [(PKPaymentSetupAppRequiredViewController *)self _buttonTitle];
  [v9 setTitle:v10 forState:0];

  [v9 addTarget:self action:sel__openAppLink forControlEvents:64];
  v11 = [(PKPaymentSetupAppRequiredViewController *)self view];
  v12 = PKProvisioningBackgroundColor();
  [v11 setBackgroundColor:v12];

  PKPaymentSetupApplyContextAppearance([(PKExplanationViewController *)self context], v11);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupAppRequiredViewController;
  [(PKPaymentSetupAppRequiredViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)_openAppLink
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKLinkedApplication *)self->_linkedApplication isInstalled];
  v4 = MEMORY[0x1E69BB4B8];
  if (!v3)
  {
    v4 = MEMORY[0x1E69BB4B0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", *v4, self->_displayName];
  reporter = self->_reporter;
  v16 = *MEMORY[0x1E69BB170];
  v17[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportOtherButtonPressed:@"appLink" context:v7];

  v8 = [(PKLinkedApplication *)self->_linkedApplication defaultLaunchURL];
  v9 = v8;
  v10 = !v3 || v8 == 0;
  if (v10 || ![(PKLinkedApplication *)self->_linkedApplication canOpenApplication])
  {
    if ([(PKLinkedApplication *)self->_linkedApplication state]== 1 && [(PKLinkedApplication *)self->_linkedApplication canOpenApplication])
    {
      [(PKLinkedApplication *)self->_linkedApplication openApplication:self withLaunchOptions:1];
    }

    else
    {
      v11 = PKLocalizedPaymentString(&cfstr_ActionMessageA.isa, &stru_1F3BD5BF0.isa, self->_displayName);
      v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:0 preferredStyle:1];
      v13 = MEMORY[0x1E69DC648];
      v14 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
      v15 = [v13 actionWithTitle:v14 style:0 handler:0];

      [v12 addAction:v15];
      [(PKPaymentSetupAppRequiredViewController *)self presentViewController:v12 animated:1 completion:0];
    }
  }

  else
  {
    PKOpenURL();
  }
}

- (id)_buttonTitle
{
  if ([(PKLinkedApplication *)self->_linkedApplication isInstalled])
  {
    v3 = @"OPEN_APP";
  }

  else
  {
    v3 = @"GET_APP";
  }

  v4 = PKLocalizedPaymentString(&v3->isa, &stru_1F3BD5BF0.isa, self->_displayName, 0);

  return v4;
}

- (id)_bodyText
{
  if ([(PKLinkedApplication *)self->_linkedApplication isInstalled])
  {
    v3 = @"TO_ADD_CARD_OPEN_THE_APP";
  }

  else
  {
    v3 = @"TO_ADD_CARD_GO_TO_THE_APP_STORE_AND_DOWNLOAD_THE_APP";
  }

  v4 = PKLocalizedPaymentString(&v3->isa, &stru_1F3BD5BF0.isa, self->_displayName);

  return v4;
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PKPaymentSetupAppRequiredViewController_linkedApplicationDidChangeState___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __75__PKPaymentSetupAppRequiredViewController_linkedApplicationDidChangeState___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1088), *(a1 + 40));
  v6 = [*(a1 + 32) explanationView];
  v2 = [*(a1 + 32) _bodyText];
  [v6 setBodyText:v2];

  v3 = [v6 dockView];
  v4 = [v3 primaryButton];
  v5 = [*(a1 + 32) _buttonTitle];
  [v4 setTitle:v5 forState:0];
}

@end