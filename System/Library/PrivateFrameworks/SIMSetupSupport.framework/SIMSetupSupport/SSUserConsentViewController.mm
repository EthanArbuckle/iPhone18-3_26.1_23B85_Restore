@interface SSUserConsentViewController
- (SSUserConsentViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_continueButtonTapped;
- (void)_setNavigationItems;
- (void)viewDidLoad;
@end

@implementation SSUserConsentViewController

- (SSUserConsentViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACTIVATE_ESIM" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"INSTALL_ESIM_CONSENT_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v10.receiver = self;
  v10.super_class = SSUserConsentViewController;
  v7 = [(SSUserConsentViewController *)&v10 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];
  v8 = v7;
  if (v7)
  {
    [(SSUserConsentViewController *)v7 setModalInPresentation:1];
  }

  return v8;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SSUserConsentViewController;
  [(TSOBWelcomeController *)&v8 viewDidLoad];
  v3 = +[SSOBBoldTrayButton boldButton];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [v3 setTitle:v5 forState:0];

  [v3 addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  buttonTray = [(SSUserConsentViewController *)self buttonTray];
  [buttonTray addButton:v3];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  [(SSUserConsentViewController *)self _continueButtonTapped];
}

- (void)_continueButtonTapped
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CONNECTING" value:&stru_28753DF48 table:@"Localizable"];
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:v4];

  v6 = +[TSCellularPlanManagerCache sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v6 resumePlanProvisioning:1 userConsent:{objc_msgSend(WeakRetained, "signupUserConsentResponse")}];
}

- (void)_cancelButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (void)_setNavigationItems
{
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  v3 = +[TSUtilities isPad];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  v5 = navigationItem;
  if (v3)
  {
    [navigationItem setRightBarButtonItem:v6];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:v6 animated:0];
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end