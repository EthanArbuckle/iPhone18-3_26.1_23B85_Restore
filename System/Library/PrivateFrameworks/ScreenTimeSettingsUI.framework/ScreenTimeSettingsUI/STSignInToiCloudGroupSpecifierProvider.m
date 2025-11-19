@interface STSignInToiCloudGroupSpecifierProvider
- (STSignInToiCloudGroupSpecifierProvider)init;
- (void)_updateEnabledValue;
- (void)_updateSpecifiersForConnectToFamily;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentAppleAccountSignInController:(id)a3;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)setCoordinator:(id)a3;
@end

@implementation STSignInToiCloudGroupSpecifierProvider

- (STSignInToiCloudGroupSpecifierProvider)init
{
  v13.receiver = self;
  v13.super_class = STSignInToiCloudGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"SignInToiCloudFooterText" value:&stru_28766E5A8 table:0];
    v6 = [(STGroupSpecifierProvider *)v3 groupSpecifier];
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v7 = [v4 localizedStringForKey:@"SignInToiCloudButtonName" value:&stru_28766E5A8 table:0];
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:v3 set:0 get:0 detail:0 cell:13 edit:0];
    signInSpecifier = v3->_signInSpecifier;
    v3->_signInSpecifier = v8;

    [(PSSpecifier *)v3->_signInSpecifier setButtonAction:sel_presentAppleAccountSignInController_];
    v10 = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    [v10 addObject:v3->_signInSpecifier];
    v11 = [MEMORY[0x277D262A0] sharedConnection];
    [v11 registerObserver:v3];

    [(STSignInToiCloudGroupSpecifierProvider *)v3 _updateEnabledValue];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STSignInToiCloudGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.canSignIn" context:@"STSignInToiCloudGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STSignInToiCloudGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  if ([v4 shouldShowConnectToFamilyForSignIn])
  {
    [(STSignInToiCloudGroupSpecifierProvider *)self _updateSpecifiersForConnectToFamily];
  }

  [v4 addObserver:self forKeyPath:@"viewModel.canSignIn" options:4 context:@"STSignInToiCloudGroupSpecifierProviderObservationContext"];
}

- (void)_updateSpecifiersForConnectToFamily
{
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v7 localizedStringForKey:@"SignInToiCloudFooterTextConnectToFamily" value:&stru_28766E5A8 table:0];
  v4 = [(STGroupSpecifierProvider *)self groupSpecifier];
  [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v5 = [v7 localizedStringForKey:@"SignInToiCloudButtonNameConnectToFamily" value:&stru_28766E5A8 table:0];
  v6 = [(STSignInToiCloudGroupSpecifierProvider *)self signInSpecifier];
  [v6 setName:v5];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"STSignInToiCloudGroupSpecifierProviderObservationContext")
  {
    v11 = a3;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v12 = [v11 isEqualToString:@"viewModel.canSignIn"];
    if (v12)
    {
      v13 = [MEMORY[0x277D262A0] sharedConnection];
      v14 = [v13 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      v18 = [(STRootGroupSpecifierProvider *)self coordinator];
      v15 = [v18 viewModel];
      v16 = [v15 canSignIn] ^ 1;
      if (v14 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      [(STGroupSpecifierProvider *)self setIsHidden:v17];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = STSignInToiCloudGroupSpecifierProvider;
    v10 = a3;
    [(STSignInToiCloudGroupSpecifierProvider *)&v19 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (void)presentAppleAccountSignInController:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  address = xmmword_264CD1B10;
  v4 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], &address);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  flags = 0;
  if (!SCNetworkReachabilityGetFlags(v4, &flags) || (v6 = flags, (flags & 6) != 2))
  {
    CFRelease(v5);
    goto LABEL_9;
  }

  CFRelease(v5);
  if ((v6 & 0x10) != 0)
  {
LABEL_9:
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v10 = [v7 localizedStringForKey:@"SignInToiCloudNotConnectedToInternet" value:&stru_28766E5A8 table:0];
    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:0 preferredStyle:1];
    v12 = MEMORY[0x277D750F8];
    v13 = [v7 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
    v14 = [v12 actionWithTitle:v13 style:0 handler:0];
    [v11 addAction:v14];

    [(STGroupSpecifierProvider *)self presentViewController:v11 animated:1];
    goto LABEL_10;
  }

  v7 = objc_opt_new();
  [v7 setDelegate:self];
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 sf_isiPad];

  if (v9)
  {
    [v7 setModalPresentationStyle:2];
    [v7 setModalTransitionStyle:0];
  }

  [(STGroupSpecifierProvider *)self presentViewController:v7 animated:1];
LABEL_10:
}

- (void)_updateEnabledValue
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] != 2;

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v5 = [(STSignInToiCloudGroupSpecifierProvider *)self signInSpecifier];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF38]];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  [(STSignInToiCloudGroupSpecifierProvider *)self _updateEnabledValue:a3];
  v5 = [(STSignInToiCloudGroupSpecifierProvider *)self signInSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:v5 animated:1];

  v6 = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [v6 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  v11 = [(STRootGroupSpecifierProvider *)self coordinator];
  v8 = [v11 viewModel];
  v9 = [v8 canSignIn] ^ 1;
  if (v7 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v10];
}

@end