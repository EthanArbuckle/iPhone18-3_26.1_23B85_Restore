@interface PSUICarrierSpaceOptInSplashScreen
- (PSListController)listController;
- (PSUICarrierSpaceOptInSplashScreen)initWithParent:(id)a3;
- (void)continueButtonPressed;
@end

@implementation PSUICarrierSpaceOptInSplashScreen

- (PSUICarrierSpaceOptInSplashScreen)initWithParent:(id)a3
{
  v4 = a3;
  v5 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v6 = [v5 activeDataCarrierName];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@"⁠-⁠"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SPLASH_SCREEN_TITLE" value:&stru_287733598 table:@"CarrierSpaceOptIn"];
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SPLASH_SCREEN_EXPLANATION" value:&stru_287733598 table:@"CarrierSpaceOptIn"];
  v13 = [v10 stringWithFormat:v12, v7];
  v26.receiver = self;
  v26.super_class = PSUICarrierSpaceOptInSplashScreen;
  v14 = [(PSUICarrierSpaceOptInSplashScreen *)&v26 initWithTitle:v9 detailText:v13 icon:0];

  if (v14)
  {
    objc_storeWeak(&v14->_listController, v4);
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"BACK_BUTTON_NAME" value:&stru_287733598 table:@"CarrierSpaceOptIn"];
      WeakRetained = objc_loadWeakRetained(&v14->_listController);
      v18 = [WeakRetained navigationItem];
      [v18 setBackButtonTitle:v16];
    }

    v19 = [MEMORY[0x277D37618] boldButton];
    continueButton = v14->_continueButton;
    v14->_continueButton = v19;

    v21 = v14->_continueButton;
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"CONTINUE_BUTTON" value:&stru_287733598 table:@"CarrierSpaceOptIn"];
    [(OBBoldTrayButton *)v21 setTitle:v23 forState:0];

    [(OBBoldTrayButton *)v14->_continueButton addTarget:v14 action:sel_continueButtonPressed forControlEvents:64];
    v24 = [(PSUICarrierSpaceOptInSplashScreen *)v14 buttonTray];
    [v24 addButton:v14->_continueButton];
  }

  return v14;
}

- (void)continueButtonPressed
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICarrierSpaceOptInSplashScreen *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PSUICarrierSpaceOptInSplashScreen continueButtonPressed]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s splash screen 'Continue' button pressed", &v6, 0xCu);
  }

  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  continueButtonAction = self->_continueButtonAction;
  if (continueButtonAction)
  {
    continueButtonAction[2]();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end