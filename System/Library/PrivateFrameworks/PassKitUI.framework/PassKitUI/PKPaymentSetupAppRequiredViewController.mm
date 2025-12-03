@interface PKPaymentSetupAppRequiredViewController
- (PKPaymentSetupAppRequiredViewController)initWithSetupContext:(int64_t)context product:(id)product linkedApplication:(id)application;
- (id)_bodyText;
- (id)_buttonTitle;
- (void)_openAppLink;
- (void)linkedApplicationDidChangeState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupAppRequiredViewController

- (PKPaymentSetupAppRequiredViewController)initWithSetupContext:(int64_t)context product:(id)product linkedApplication:(id)application
{
  productCopy = product;
  applicationCopy = application;
  v16.receiver = self;
  v16.super_class = PKPaymentSetupAppRequiredViewController;
  v11 = [(PKExplanationViewController *)&v16 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_product, product);
    objc_storeStrong(&v12->_linkedApplication, application);
    displayName = [(PKLinkedApplication *)v12->_linkedApplication displayName];
    displayName2 = displayName;
    if (!displayName)
    {
      displayName2 = [(PKPaymentSetupProduct *)v12->_product displayName];
    }

    objc_storeStrong(&v12->_displayName, displayName2);
    if (!displayName)
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
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowPrivacyView:0];
  [explanationView setTitleText:self->_displayName];
  [explanationView setImageStyle:1];
  v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
  iconImage = [(PKLinkedApplication *)self->_linkedApplication iconImage];
  v6 = [v4 initWithImage:iconImage];

  [explanationView setHeroView:v6];
  [explanationView setHeroViewContentMode:0];
  _bodyText = [(PKPaymentSetupAppRequiredViewController *)self _bodyText];
  [explanationView setBodyText:_bodyText];

  dockView = [explanationView dockView];
  [dockView setRequiresAdditionalPrimaryButtonPadding:1];
  primaryButton = [dockView primaryButton];
  _buttonTitle = [(PKPaymentSetupAppRequiredViewController *)self _buttonTitle];
  [primaryButton setTitle:_buttonTitle forState:0];

  [primaryButton addTarget:self action:sel__openAppLink forControlEvents:64];
  view = [(PKPaymentSetupAppRequiredViewController *)self view];
  v12 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v12];

  PKPaymentSetupApplyContextAppearance([(PKExplanationViewController *)self context], view);
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupAppRequiredViewController;
  [(PKPaymentSetupAppRequiredViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)_openAppLink
{
  v17[1] = *MEMORY[0x1E69E9840];
  isInstalled = [(PKLinkedApplication *)self->_linkedApplication isInstalled];
  v4 = MEMORY[0x1E69BB4B8];
  if (!isInstalled)
  {
    v4 = MEMORY[0x1E69BB4B0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", *v4, self->_displayName];
  reporter = self->_reporter;
  v16 = *MEMORY[0x1E69BB170];
  v17[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportOtherButtonPressed:@"appLink" context:v7];

  defaultLaunchURL = [(PKLinkedApplication *)self->_linkedApplication defaultLaunchURL];
  v9 = defaultLaunchURL;
  v10 = !isInstalled || defaultLaunchURL == 0;
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

- (void)linkedApplicationDidChangeState:(id)state
{
  stateCopy = state;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PKPaymentSetupAppRequiredViewController_linkedApplicationDidChangeState___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = stateCopy;
  v5 = stateCopy;
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