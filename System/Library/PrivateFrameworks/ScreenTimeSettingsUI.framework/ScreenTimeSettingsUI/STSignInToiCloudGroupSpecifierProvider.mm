@interface STSignInToiCloudGroupSpecifierProvider
- (STSignInToiCloudGroupSpecifierProvider)init;
- (void)_updateEnabledValue;
- (void)_updateSpecifiersForConnectToFamily;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentAppleAccountSignInController:(id)controller;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setCoordinator:(id)coordinator;
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
    groupSpecifier = [(STGroupSpecifierProvider *)v3 groupSpecifier];
    [groupSpecifier setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v7 = [v4 localizedStringForKey:@"SignInToiCloudButtonName" value:&stru_28766E5A8 table:0];
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:v3 set:0 get:0 detail:0 cell:13 edit:0];
    signInSpecifier = v3->_signInSpecifier;
    v3->_signInSpecifier = v8;

    [(PSSpecifier *)v3->_signInSpecifier setButtonAction:sel_presentAppleAccountSignInController_];
    mutableSpecifiers = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    [mutableSpecifiers addObject:v3->_signInSpecifier];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v3];

    [(STSignInToiCloudGroupSpecifierProvider *)v3 _updateEnabledValue];
  }

  return v3;
}

- (void)dealloc
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STSignInToiCloudGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.canSignIn" context:@"STSignInToiCloudGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STSignInToiCloudGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  if ([coordinatorCopy shouldShowConnectToFamilyForSignIn])
  {
    [(STSignInToiCloudGroupSpecifierProvider *)self _updateSpecifiersForConnectToFamily];
  }

  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canSignIn" options:4 context:@"STSignInToiCloudGroupSpecifierProviderObservationContext"];
}

- (void)_updateSpecifiersForConnectToFamily
{
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [v7 localizedStringForKey:@"SignInToiCloudFooterTextConnectToFamily" value:&stru_28766E5A8 table:0];
  groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
  [groupSpecifier setObject:v3 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v5 = [v7 localizedStringForKey:@"SignInToiCloudButtonNameConnectToFamily" value:&stru_28766E5A8 table:0];
  signInSpecifier = [(STSignInToiCloudGroupSpecifierProvider *)self signInSpecifier];
  [signInSpecifier setName:v5];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"STSignInToiCloudGroupSpecifierProviderObservationContext")
  {
    pathCopy = path;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v12 = [pathCopy isEqualToString:@"viewModel.canSignIn"];
    if (v12)
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      v14 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
      viewModel = [coordinator viewModel];
      v16 = [viewModel canSignIn] ^ 1;
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
    pathCopy2 = path;
    [(STSignInToiCloudGroupSpecifierProvider *)&v19 observeValueForKeyPath:pathCopy2 ofObject:object change:change context:context];
  }
}

- (void)presentAppleAccountSignInController:(id)controller
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
    [v7 setModalPresentationStyle:2];
    [v7 setModalTransitionStyle:0];
  }

  [(STGroupSpecifierProvider *)self presentViewController:v7 animated:1];
LABEL_10:
}

- (void)_updateEnabledValue
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] != 2;

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  signInSpecifier = [(STSignInToiCloudGroupSpecifierProvider *)self signInSpecifier];
  [signInSpecifier setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF38]];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  [(STSignInToiCloudGroupSpecifierProvider *)self _updateEnabledValue:notification];
  signInSpecifier = [(STSignInToiCloudGroupSpecifierProvider *)self signInSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:signInSpecifier animated:1];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v9 = [viewModel canSignIn] ^ 1;
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