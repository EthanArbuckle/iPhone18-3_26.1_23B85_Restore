@interface STPasscodeGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator listController:(id)controller isRootView:(BOOL)view;
- (BOOL)isHidden;
- (PSListController)listController;
- (STPasscodeGroupSpecifierProvider)init;
- (id)_authenticationContextWithReasonKey:(id)key presentingViewController:(id)controller;
- (id)_removePasscodeActionWithPINOptionsTitle:(id)title pinOptionsHandler:(id)handler pinValidationHandler:(id)validationHandler;
- (void)_promptForRecoveryAppleIDWithPINController:(id)controller passcode:(id)passcode;
- (void)_promptMisconfiguredAdultIfNeeded;
- (void)_removeManagedPasscode;
- (void)_setManagedPasscode;
- (void)_updateHiddenState;
- (void)changeOrRemovePasscode:(id)passcode;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadTogglePasscodeSpecifier;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STPasscodeGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator listController:(id)controller isRootView:(BOOL)view
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___STPasscodeGroupSpecifierProvider;
  controllerCopy = controller;
  v8 = objc_msgSendSuper2(&v10, sel_providerWithCoordinator_, coordinator);
  objc_storeWeak((v8 + 64), controllerCopy);

  *(v8 + 48) = view;
  [v8 _updateHiddenState];

  return v8;
}

- (STPasscodeGroupSpecifierProvider)init
{
  v13.receiver = self;
  v13.super_class = STPasscodeGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"LockScreenTimeSettingsButtonName" value:&stru_28766E5A8 table:0];

    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:v3 set:0 get:0 detail:0 cell:13 edit:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [v6 setObject:&unk_28769D2F8 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [(STPasscodeGroupSpecifierProvider *)v3 setTogglePasscodeSpecifier:v6];
    mutableSpecifiers = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    togglePasscodeSpecifier = [(STPasscodeGroupSpecifierProvider *)v3 togglePasscodeSpecifier];
    [mutableSpecifiers addObject:togglePasscodeSpecifier];

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STPasscodeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STPasscodeGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"passcodeEnabled" context:"STPasscodeGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.canEditScreenTimePasscode" context:"STPasscodeGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STPasscodeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canEditScreenTimePasscode" options:4 context:"STPasscodeGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"passcodeEnabled" options:4 context:"STPasscodeGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (context == "STPasscodeGroupSpecifierProviderObservationContext")
  {
    [(STRootGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"viewModel.canEditScreenTimePasscode"])
    {
      [(STPasscodeGroupSpecifierProvider *)self _updateHiddenState];
    }

    else
    {
      [(STRootGroupSpecifierProvider *)self coordinator];

      if ([pathCopy isEqualToString:@"passcodeEnabled"])
      {
        [(STPasscodeGroupSpecifierProvider *)self reloadTogglePasscodeSpecifier];
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STPasscodeGroupSpecifierProvider;
    [(STPasscodeGroupSpecifierProvider *)&v11 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (void)_updateHiddenState
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];

  canEditScreenTimePasscode = [viewModel canEditScreenTimePasscode];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  if (_os_feature_enabled_impl() && ([viewModel me], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isRemoteUser"), v7, v8) && -[STPasscodeGroupSpecifierProvider isRootView](self, "isRootView"))
  {
    v9 = 1;
  }

  else if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = canEditScreenTimePasscode ^ 1u;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v9];
}

- (void)reloadTogglePasscodeSpecifier
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  isPasscodeEnabled = [coordinator isPasscodeEnabled];
  togglePasscodeSpecifier = [(STPasscodeGroupSpecifierProvider *)self togglePasscodeSpecifier];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  v7 = v6;
  if (isPasscodeEnabled)
  {
    v8 = [v6 localizedStringForKey:@"ChangeScreenTimePasscodeButtonName" value:&stru_28766E5A8 table:0];
    [togglePasscodeSpecifier setName:v8];

    [togglePasscodeSpecifier removePropertyForKey:*MEMORY[0x277D400B8]];
    [togglePasscodeSpecifier removePropertyForKey:*MEMORY[0x277D401C0]];
    [togglePasscodeSpecifier setEditPaneClass:0];
    [togglePasscodeSpecifier setTarget:self];
    [togglePasscodeSpecifier setButtonAction:sel_changeOrRemovePasscode_];
  }

  else
  {
    v9 = [v6 localizedStringForKey:@"LockScreenTimeSettingsButtonName" value:&stru_28766E5A8 table:0];
    [togglePasscodeSpecifier setName:v9];

    [togglePasscodeSpecifier setEditPaneClass:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [togglePasscodeSpecifier setObject:v11 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [togglePasscodeSpecifier setObject:&unk_28769D2F8 forKeyedSubscript:*MEMORY[0x277D401C0]];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__STPasscodeGroupSpecifierProvider_reloadTogglePasscodeSpecifier__block_invoke;
    aBlock[3] = &unk_279B7CC68;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    [togglePasscodeSpecifier setObject:v12 forKeyedSubscript:0x287675888];
  }

  viewModel = [coordinator viewModel];
  v14 = [viewModel me];
  needsRecoveryAppleID = [v14 needsRecoveryAppleID];

  if (!needsRecoveryAppleID)
  {
    [togglePasscodeSpecifier removePropertyForKey:0x287675A68];
    [togglePasscodeSpecifier removePropertyForKey:0x287675828];
    if (!isPasscodeEnabled)
    {
      goto LABEL_6;
    }

LABEL_8:
    groupSpecifier = [(STGroupSpecifierProvider *)self groupSpecifier];
    [groupSpecifier removePropertyForKey:*MEMORY[0x277D3FF88]];
    goto LABEL_9;
  }

  [togglePasscodeSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A68];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__STPasscodeGroupSpecifierProvider_reloadTogglePasscodeSpecifier__block_invoke_2;
  v20[3] = &unk_279B7DB78;
  v20[4] = self;
  v16 = _Block_copy(v20);
  [togglePasscodeSpecifier setObject:v16 forKeyedSubscript:0x287675828];

  if (isPasscodeEnabled)
  {
    goto LABEL_8;
  }

LABEL_6:
  groupSpecifier = [v7 localizedStringForKey:@"EnableScreenTimePasscodeFooterText" value:&stru_28766E5A8 table:0];
  groupSpecifier2 = [(STGroupSpecifierProvider *)self groupSpecifier];
  [groupSpecifier2 setObject:groupSpecifier forKeyedSubscript:*MEMORY[0x277D3FF88]];

LABEL_9:
  groupSpecifier3 = [(STGroupSpecifierProvider *)self groupSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:groupSpecifier3 animated:1];
}

uint64_t __65__STPasscodeGroupSpecifierProvider_reloadTogglePasscodeSpecifier__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _promptMisconfiguredAdultIfNeeded];
  }

  return result;
}

- (void)_promptMisconfiguredAdultIfNeeded
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  shouldShowMisconfiguredAdultPrompt = [viewModel shouldShowMisconfiguredAdultPrompt];

  if (shouldShowMisconfiguredAdultPrompt)
  {
    v5 = +[STUILog ageMigrationTip];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_INFO, "Calling displayAgeMisconfiguredPromptWithContext to display a confirm age alert if it is needed.", v11, 2u);
    }

    v6 = objc_opt_new();
    viewModel2 = [coordinator viewModel];
    v8 = [viewModel2 me];
    altDSID = [v8 altDSID];

    v10 = [objc_alloc(MEMORY[0x277CEC770]) initWithAltDSID:altDSID bundleID:@"com.apple.ScreenTimeSettingsUI"];
    [v6 displayMisconfiguredAgePromptWithContext:v10 completion:&__block_literal_global_14];
  }
}

void __69__STPasscodeGroupSpecifierProvider__promptMisconfiguredAdultIfNeeded__block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = +[STUILog ageMigrationTip];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67240192;
    v4[1] = a2;
    _os_log_impl(&dword_264BA2000, v3, OS_LOG_TYPE_INFO, "AgeAttestationController displayAgeMisconfiguredPromptWithContext responded with result: %{public}i", v4, 8u);
  }
}

- (void)changeOrRemovePasscode:(id)passcode
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];

  isRemotelyManagedUserWithPasscode = [viewModel isRemotelyManagedUserWithPasscode];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  v51 = sf_isiPad;
  if (isRemotelyManagedUserWithPasscode)
  {
    if (sf_isiPad)
    {
      v10 = [v7 localizedStringForKey:@"ChangePasscodeAlertTitle" value:&stru_28766E5A8 table:0];
    }

    else
    {
      v10 = 0;
    }

    v12 = [v7 localizedStringForKey:@"ChangeScreenTimePasscodeConfirmPrompt" value:&stru_28766E5A8 table:0];
    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v12 preferredStyle:sf_isiPad];
  }

  else
  {
    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:sf_isiPad];
  }

  v13 = MEMORY[0x277D3FAD8];
  v14 = [v7 localizedStringForKey:@"LockScreenTimeSettingsButtonName" value:&stru_28766E5A8 table:0];
  v15 = [v13 preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];

  v16 = [viewModel me];
  if ([v16 needsRecoveryAppleID])
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v15 setObject:v18 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A68];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke;
    aBlock[3] = &unk_279B7DB78;
    aBlock[4] = self;
    v19 = _Block_copy(aBlock);
    [v15 setObject:v19 forKeyedSubscript:0x287675848];
  }

  v58 = v16;
  v52 = sf_isiPad;
  if ([v16 canRecoveryAuthenticate])
  {
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_2;
    v73[3] = &unk_279B7DC10;
    v76 = sf_isiPad;
    v74 = v16;
    selfCopy = self;
    v20 = _Block_copy(v73);

    if (v20)
    {
      v21 = [v7 localizedStringForKey:@"ForgotPasscodeButtonTitle" value:&stru_28766E5A8 table:0];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_105;
      v72[3] = &unk_279B7DC38;
      v72[4] = self;
      v22 = _Block_copy(v72);
      [v15 setObject:v21 forKeyedSubscript:0x287675A88];
      v23 = _Block_copy(v20);
      [v15 setObject:v23 forKeyedSubscript:0x287675AA8];

      v24 = _Block_copy(v22);
      [v15 setObject:v24 forKeyedSubscript:0x287675868];

      v25 = v22;
      goto LABEL_14;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v25 = 0;
LABEL_14:
  v56 = v25;
  v57 = v21;
  v26 = [(STPasscodeGroupSpecifierProvider *)self _removePasscodeActionWithPINOptionsTitle:v21 pinOptionsHandler:v20 pinValidationHandler:?];
  v27 = MEMORY[0x277D750F8];
  v28 = [v7 localizedStringForKey:@"ChangeScreenTimePasscodeButtonName" value:&stru_28766E5A8 table:0];
  v54 = v7;
  v55 = v20;
  if (isRemotelyManagedUserWithPasscode)
  {
    v50 = v26;
    v53 = viewModel;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_2_108;
    v68[3] = &unk_279B7CD58;
    v29 = v7;
    v69 = v29;
    v70 = v15;
    selfCopy2 = self;
    v30 = [v27 actionWithTitle:v28 style:0 handler:v68];
    [v11 addAction:v30];

    coordinator2 = [(STRootGroupSpecifierProvider *)self coordinator];
    viewModel2 = [coordinator2 viewModel];
    v33 = [viewModel2 me];

    name = [v33 name];

    if (name)
    {
      v35 = objc_opt_new();
      name2 = [v33 name];
      v37 = [v35 personNameComponentsFromString:name2];

      givenName = [v37 givenName];
    }

    else
    {
      givenName = 0;
    }

    v42 = 0x277D75000uLL;
    v43 = MEMORY[0x277D750F8];
    v44 = [v29 localizedStringForKey:@"TurnOffScreenTimePasscodeButtonName" value:&stru_28766E5A8 table:0];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_130;
    v61[3] = &unk_279B7DC60;
    v62 = givenName;
    v67 = v52;
    v63 = v29;
    v66 = v51;
    v64 = v50;
    selfCopy3 = self;
    v45 = givenName;
    v46 = [v43 actionWithTitle:v44 style:2 handler:v61];
    [v11 addAction:v46];

    v26 = v50;
    viewModel = v53;
    v39 = v15;
    v40 = &v69;
  }

  else
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_2_144;
    v59[3] = &unk_279B7CDF0;
    v39 = v15;
    v40 = v60;
    v60[0] = v39;
    v60[1] = self;
    v41 = [v27 actionWithTitle:v28 style:0 handler:v59];
    [v11 addAction:v41];

    [v11 addAction:v26];
    v42 = 0x277D75000;
  }

  v47 = *(v42 + 248);
  v48 = [v54 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v49 = [v47 actionWithTitle:v48 style:1 handler:0];
  [v11 addAction:v49];

  [(STGroupSpecifierProvider *)self presentViewController:v11 animated:1 completion:0];
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isBlocked] && (*(a1 + 48) & 1) == 0)
  {
    v7 = [MEMORY[0x277D75658] activeKeyboard];
    [v7 setUserInteractionEnabled:1];
  }

  v8 = [*(a1 + 32) recoveryAltDSID];
  v9 = @"EnterRecoveryAppleIDAlertReason";
  if (!v8)
  {
    v9 = @"EnterAppleIDAlertReason";
  }

  v10 = v9;

  v11 = [*(a1 + 40) _authenticationContextWithReasonKey:v10 presentingViewController:v5];

  [v11 setAppProvidedContext:@"recovery"];
  v12 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_3;
  v15[3] = &unk_279B7DBE8;
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v19 = *(a1 + 48);
  v13 = v6;
  v14 = v5;
  [v12 authenticateWithContext:v11 completion:v15];
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCABD8] mainQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4;
  v10[3] = &unk_279B7DBC0;
  v11 = v5;
  v12 = *(a1 + 32);
  v13 = v6;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  [v7 addOperationWithBlock:v10];
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  v4 = [*(v2 + 8) recoveryAltDSID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 40) altDSID];
  }

  v7 = v6;

  v8 = (a1 + 48);
  v9 = [*(a1 + 48) domain];
  if ([v9 isEqualToString:*MEMORY[0x277CEFF48]])
  {
    v10 = [*v8 code] == -7003;
  }

  else
  {
    v10 = 0;
  }

  if (*v8 || ![v3 isEqual:v7])
  {
    if (!v10)
    {
      if (*v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_cold_1();
        }
      }

      else if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_cold_2(v3, v7);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_cold_3();
      }

      [*(a1 + 56) recoveryAuthenticationFailed:*(a1 + 64)];
    }
  }

  else
  {
    [*(a1 + 56) setPasscodeOptionsTitle:0];
    [*(a1 + 56) setPasscodeOptionsHandler:0];
    v11 = *(a1 + 56);
    v12 = [*(a1 + 40) passcode];
    [v11 recoveryAuthenticationSucceededForPasscode:v12];
  }

  if ([*(a1 + 56) isBlocked] && (*(a1 + 72) & 1) == 0)
  {
    v13 = [MEMORY[0x277D75658] activeKeyboard];
    [v13 setUserInteractionEnabled:0];
  }

  v14 = [MEMORY[0x277D75418] currentDevice];
  v15 = [v14 sf_isiPad];

  if (v15)
  {
    v16 = [*(a1 + 56) pane];
    [v16 deactivateKeypadView];
    [v16 activateKeypadView];
  }
}

uint64_t __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_105(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 coordinator];
  v9 = [v8 validatePIN:v7];

  if (v9)
  {
    [v5 setPasscodeOptionsTitle:0];
    [v5 setPasscodeOptionsHandler:0];
  }

  return v9;
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_2_108(id *a1)
{
  v2 = objc_opt_new();
  v14 = 0;
  v3 = [v2 canEvaluatePolicy:2 error:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = [a1[4] localizedStringForKey:@"BiometricAuthenticationTitle" value:&stru_28766E5A8 table:0];
    [v2 setOptionAuthenticationTitle:v5];

    v6 = [a1[4] localizedStringForKey:@"BiometricAuthenticationDetailText" value:&stru_28766E5A8 table:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_3_116;
    v11[3] = &unk_279B7D7A8;
    v7 = a1[5];
    v8 = a1[6];
    v12 = v7;
    v13 = v8;
    [v2 evaluatePolicy:1 localizedReason:v6 reply:v11];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [a1[5] setObject:v10 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [a1[5] setObject:&unk_28769D310 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [a1[6] showPINSheet:a1[5] completion:0];
  }
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_3_116(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCABD8] mainQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_117;
  v10[3] = &unk_279B7D780;
  v14 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = v5;
  v9 = v5;
  [v6 addOperationWithBlock:v10];
}

uint64_t __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_117(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    [*(a1 + 32) setObject:v3 forKeyedSubscript:*MEMORY[0x277D400B8]];

    v4 = *(a1 + 32);
    v5 = *MEMORY[0x277D401C0];
    v6 = &unk_28769D2F8;
LABEL_3:
    [v4 setObject:v6 forKeyedSubscript:v5];
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v7 showPINSheet:v8 completion:0];
  }

  v10 = (a1 + 48);
  v11 = [*(a1 + 48) domain];
  v12 = [v11 isEqualToString:*MEMORY[0x277CD4770]];

  if (v12)
  {
    result = [*v10 code];
    if (result <= -5)
    {
      if (result == -9)
      {
        return result;
      }

      if (result == -5)
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        [*(a1 + 32) setObject:v14 forKeyedSubscript:*MEMORY[0x277D400B8]];

        v4 = *(a1 + 32);
        v5 = *MEMORY[0x277D401C0];
        v6 = &unk_28769D310;
        goto LABEL_3;
      }

LABEL_20:
      [*(a1 + 32) setButtonAction:sel__setManagedPasscode];
      v18 = NSStringFromClass(+[STDevicePINFactory devicePINControllerForPlatform]);
      [*(a1 + 32) setObject:v18 forKeyedSubscript:*MEMORY[0x277D400B8]];

      v4 = *(a1 + 32);
      v5 = *MEMORY[0x277D401C0];
      v6 = &unk_28769D328;
      goto LABEL_3;
    }

    if (result != -4 && result != -2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_117_cold_1();
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [*(a1 + 32) setObject:v16 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [*(a1 + 32) setObject:&unk_28769D310 forKeyedSubscript:*MEMORY[0x277D401C0]];
    return [*(a1 + 40) showPINSheet:*(a1 + 32) completion:0];
  }

  return result;
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_130(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [*(a1 + 40) localizedStringForKey:@"TurnOffScreenTimePasscodeSecondConfirmPrompt" value:&stru_28766E5A8 table:0];
    v9 = [v2 localizedStringWithFormat:v3, *(a1 + 32)];
  }

  else
  {
    v9 = [*(a1 + 40) localizedStringForKey:@"TurnOffScreenTimePasscodeGenericSecondConfirmPrompt" value:&stru_28766E5A8 table:0];
  }

  if (*(a1 + 72) == 1)
  {
    v4 = [*(a1 + 40) localizedStringForKey:@"TurnOffPasscodeAlertTitle" value:&stru_28766E5A8 table:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v9 preferredStyle:*(a1 + 64)];
  [v5 addAction:*(a1 + 48)];
  v6 = MEMORY[0x277D750F8];
  v7 = [*(a1 + 40) localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];

  [*(a1 + 56) presentViewController:v5 animated:1 completion:0];
}

uint64_t __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_2_144(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [*(a1 + 32) setObject:&unk_28769D310 forKeyedSubscript:*MEMORY[0x277D401C0]];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 showPINSheet:v5 completion:0];
}

- (void)_promptForRecoveryAppleIDWithPINController:(id)controller passcode:(id)passcode
{
  controllerCopy = controller;
  passcodeCopy = passcode;
  v8 = [(STPasscodeGroupSpecifierProvider *)self _authenticationContextWithReasonKey:@"RecoveryAppleIDAlertReason" presentingViewController:controllerCopy];
  [v8 setAppProvidedContext:@"setup"];
  v9 = +[STScreenTimeSettingsUIBundle bundle];
  v10 = [v9 localizedStringForKey:@"RecoveryAppleIDAlertSkipButton" value:&stru_28766E5A8 table:0];
  [v8 setCancelButtonString:v10];

  v11 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke;
  v15[3] = &unk_279B7DD28;
  v15[4] = self;
  v16 = passcodeCopy;
  v17 = v9;
  v18 = controllerCopy;
  v12 = controllerCopy;
  v13 = v9;
  v14 = passcodeCopy;
  [v11 authenticateWithContext:v8 completion:v15];
}

void __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCABD8] mainQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_2;
  v11[3] = &unk_279B7DD00;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  [v7 addOperationWithBlock:v11];
}

void __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_2(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  v4 = [a1[4] coordinator];
  v6 = a1 + 6;
  v5 = a1[6];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (!v7)
  {
    objc_initWeak(location, a1[4]);
    v11 = a1[7];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_3;
    v34[3] = &unk_279B7DCB0;
    v35 = v2;
    objc_copyWeak(&v36, location);
    [v4 setPIN:v11 recoveryAltDSID:v3 completionHandler:v34];
    objc_destroyWeak(&v36);

    objc_destroyWeak(location);
    goto LABEL_22;
  }

  v8 = [v5 domain];
  if (![v8 isEqualToString:*MEMORY[0x277CEFF48]])
  {

    goto LABEL_10;
  }

  v9 = [*v6 code];

  if (v9 != -7003)
  {
LABEL_10:
    if (*v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_cold_1();
      }
    }

    else if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_2_cold_2();
    }

    v10 = @"RecoveryAppleIDUnknownError";
    goto LABEL_17;
  }

  v10 = @"RecoveryAppleIDAlertConfirmSkipTitle";
LABEL_17:
  v12 = [a1[8] localizedStringForKey:v10 value:&stru_28766E5A8 table:0];
  v13 = [v4 viewModel];
  v14 = [v13 me];

  v24 = v14;
  if (([v14 isChild] & 1) != 0 || !objc_msgSend(v14, "type", v14))
  {
    v15 = @"RecoveryAppleIDAlertConfirmSkipMessageChild";
  }

  else
  {
    v15 = @"RecoveryAppleIDAlertConfirmSkipMessage";
  }

  v16 = [a1[8] localizedStringForKey:v15 value:&stru_28766E5A8 table:{0, v24}];
  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v16 preferredStyle:1];
  v18 = [a1[8] localizedStringForKey:@"RecoveryAppleIDAlertSkipButton" value:&stru_28766E5A8 table:0];
  objc_initWeak(location, a1[4]);
  v19 = MEMORY[0x277D750F8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_164;
  v30[3] = &unk_279B7DCD8;
  v30[4] = a1[4];
  v31 = a1[7];
  v26 = v2;
  v32 = v2;
  objc_copyWeak(&v33, location);
  v20 = [v19 actionWithTitle:v18 style:0 handler:v30];
  [v17 addAction:v20];

  v21 = [a1[8] localizedStringForKey:@"RecoveryAppleIDAlertSetButton" value:&stru_28766E5A8 table:0];
  v22 = MEMORY[0x277D750F8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_4_170;
  v27[3] = &unk_279B7CD58;
  v27[4] = a1[4];
  v28 = a1[9];
  v29 = a1[7];
  v23 = [v22 actionWithTitle:v21 style:1 handler:v27];
  [v17 addAction:v23];

  [a1[9] presentViewController:v17 animated:1 completion:0];
  objc_destroyWeak(&v33);

  objc_destroyWeak(location);
  v2 = v26;
LABEL_22:
}

void __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) listController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_4;
  v5[3] = &unk_279B7DC88;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
}

void __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptMisconfiguredAdultIfNeeded];
}

void __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) coordinator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_2_165;
  v6[3] = &unk_279B7DCB0;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  objc_copyWeak(&v8, (a1 + 56));
  [v4 setPIN:v5 completionHandler:v6];

  objc_destroyWeak(&v8);
}

void __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_2_165(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) listController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_3_166;
  v5[3] = &unk_279B7DC88;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
}

void __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_3_166(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _promptMisconfiguredAdultIfNeeded];
}

- (id)_authenticationContextWithReasonKey:(id)key presentingViewController:(id)controller
{
  controllerCopy = controller;
  keyCopy = key;
  v7 = objc_opt_new();
  [v7 setIsEphemeral:1];
  [v7 setAuthenticationType:2];
  [v7 setShouldPromptForPasswordOnly:1];
  [v7 _setProxiedAppName:@"ScreenTime"];
  [v7 setPresentingViewController:controllerCopy];

  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:@"RecoveryAppleIDAlertTitle" value:&stru_28766E5A8 table:0];
  [v7 setTitle:v9];

  v10 = [v8 localizedStringForKey:keyCopy value:&stru_28766E5A8 table:0];

  [v7 setReason:v10];
  v11 = [v8 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
  [v7 setDefaultButtonString:v11];

  return v7;
}

- (id)_removePasscodeActionWithPINOptionsTitle:(id)title pinOptionsHandler:(id)handler pinValidationHandler:(id)validationHandler
{
  titleCopy = title;
  handlerCopy = handler;
  validationHandlerCopy = validationHandler;
  v11 = +[STScreenTimeSettingsUIBundle bundle];
  v12 = objc_opt_new();
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  if ([viewModel isRemotelyManagedUserWithPasscode])
  {
    v33 = 0;
    v15 = [v12 canEvaluatePolicy:2 error:&v33];
    v16 = v33;

    if (v15)
    {
      v17 = MEMORY[0x277D750F8];
      v18 = [v11 localizedStringForKey:@"TurnOffScreenTimePasscodeButtonName" value:&stru_28766E5A8 table:0];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __116__STPasscodeGroupSpecifierProvider__removePasscodeActionWithPINOptionsTitle_pinOptionsHandler_pinValidationHandler___block_invoke;
      v29[3] = &unk_279B7CD58;
      v30 = v12;
      v31 = v11;
      selfCopy = self;
      v19 = [v17 actionWithTitle:v18 style:2 handler:v29];

      v20 = v30;
      goto LABEL_6;
    }
  }

  else
  {

    v16 = 0;
  }

  v21 = MEMORY[0x277D750F8];
  v22 = [v11 localizedStringForKey:@"TurnOffScreenTimePasscodeButtonName" value:&stru_28766E5A8 table:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __116__STPasscodeGroupSpecifierProvider__removePasscodeActionWithPINOptionsTitle_pinOptionsHandler_pinValidationHandler___block_invoke_182;
  v24[3] = &unk_279B7DD50;
  v24[4] = self;
  v25 = v11;
  v26 = titleCopy;
  v27 = handlerCopy;
  v28 = validationHandlerCopy;
  v19 = [v21 actionWithTitle:v22 style:2 handler:v24];

  v20 = v25;
LABEL_6:

  return v19;
}

void __116__STPasscodeGroupSpecifierProvider__removePasscodeActionWithPINOptionsTitle_pinOptionsHandler_pinValidationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) localizedStringForKey:@"BiometricAuthenticationTitle" value:&stru_28766E5A8 table:0];
  [*(a1 + 32) setOptionAuthenticationTitle:v2];

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) localizedStringForKey:@"BiometricAuthenticationDetailText" value:&stru_28766E5A8 table:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __116__STPasscodeGroupSpecifierProvider__removePasscodeActionWithPINOptionsTitle_pinOptionsHandler_pinValidationHandler___block_invoke_2;
  v7[3] = &unk_279B7D7A8;
  v6 = *(a1 + 40);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  [v3 evaluatePolicy:1 localizedReason:v4 reply:v7];
}

void __116__STPasscodeGroupSpecifierProvider__removePasscodeActionWithPINOptionsTitle_pinOptionsHandler_pinValidationHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCABD8] mainQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __116__STPasscodeGroupSpecifierProvider__removePasscodeActionWithPINOptionsTitle_pinOptionsHandler_pinValidationHandler___block_invoke_3;
  v9[3] = &unk_279B7D780;
  v12 = a2;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 addOperationWithBlock:v9];
}

void __116__STPasscodeGroupSpecifierProvider__removePasscodeActionWithPINOptionsTitle_pinOptionsHandler_pinValidationHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);

    [v2 _removeManagedPasscode];
    return;
  }

  v3 = (a1 + 40);
  v4 = [*(a1 + 40) domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CD4770]];

  if (v5)
  {
    v6 = [*v3 code];
    if (v6 > -5)
    {
      if (v6 == -4 || v6 == -2)
      {
        return;
      }
    }

    else
    {
      if (v6 == -9)
      {
        return;
      }

      if (v6 == -5)
      {
        v7 = MEMORY[0x277D3FAD8];
        v8 = [*(a1 + 48) localizedStringForKey:@"LockScreenTimeSettingsButtonName" value:&stru_28766E5A8 table:0];
        v22 = [v7 preferenceSpecifierNamed:v8 target:*(a1 + 32) set:0 get:0 detail:0 cell:13 edit:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];

        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v22 setObject:v10 forKeyedSubscript:*MEMORY[0x277D400B8]];

        v11 = *MEMORY[0x277D401C0];
        v12 = &unk_28769D340;
LABEL_20:
        [v22 setObject:v12 forKeyedSubscript:v11];
        [*(a1 + 32) showPINSheet:v22 completion:0];

        return;
      }
    }

    v19 = MEMORY[0x277D3FAD8];
    v20 = [*(a1 + 48) localizedStringForKey:@"LockScreenTimeSettingsButtonName" value:&stru_28766E5A8 table:0];
    v22 = [v19 preferenceSpecifierNamed:v20 target:*(a1 + 32) set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];

    [v22 setButtonAction:sel__removeManagedPasscode];
    v21 = NSStringFromClass(+[STDevicePINFactory devicePINControllerForPlatform]);
    [v22 setObject:v21 forKeyedSubscript:*MEMORY[0x277D400B8]];

    v11 = *MEMORY[0x277D401C0];
    v12 = &unk_28769D328;
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_117_cold_1();
  }

  v13 = MEMORY[0x277D3FAD8];
  v14 = [*(a1 + 48) localizedStringForKey:@"LockScreenTimeSettingsButtonName" value:&stru_28766E5A8 table:0];
  v15 = [v13 preferenceSpecifierNamed:v14 target:*(a1 + 32) set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v15 setObject:&unk_28769D340 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [*(a1 + 32) showPINSheet:v15 completion:0];
}

void __116__STPasscodeGroupSpecifierProvider__removePasscodeActionWithPINOptionsTitle_pinOptionsHandler_pinValidationHandler___block_invoke_182(uint64_t a1)
{
  v2 = [*(a1 + 32) coordinator];
  v3 = [v2 viewModel];
  v4 = [v3 canStopScreenTimeWithoutPasscode];

  if (v4)
  {
    v5 = +[STUILog persistence];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "No blueprints configured. User is allowed to disable passcode without authentication.", buf, 2u);
    }

    [*(a1 + 32) _removeManagedPasscode];
  }

  else
  {
    v11 = [*(a1 + 40) localizedStringForKey:@"LockScreenTimeSettingsButtonName" value:&stru_28766E5A8 table:0];
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:*(a1 + 32) set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [v6 setObject:&unk_28769D340 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [v6 setObject:*(a1 + 48) forKeyedSubscript:0x287675A88];
    v9 = _Block_copy(*(a1 + 56));
    [v6 setObject:v9 forKeyedSubscript:0x287675AA8];

    v10 = _Block_copy(*(a1 + 64));
    [v6 setObject:v10 forKeyedSubscript:0x287675868];

    [*(a1 + 32) showPINSheet:v6 completion:0];
  }
}

- (void)_setManagedPasscode
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v7 = [v3 localizedStringForKey:@"LockScreenTimeSettingsButtonName" value:&stru_28766E5A8 table:0];

  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v4 setObject:&unk_28769D2F8 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [(STGroupSpecifierProvider *)self showPINSheet:v4 completion:0];
}

- (void)_removeManagedPasscode
{
  selfCopy = self;
  coordinator = [(STRootGroupSpecifierProvider *)selfCopy coordinator];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__STPasscodeGroupSpecifierProvider__removeManagedPasscode__block_invoke;
  v5[3] = &unk_279B7CC18;
  v6 = selfCopy;
  v4 = selfCopy;
  [coordinator setPIN:0 recoveryAltDSID:0 completionHandler:v5];
}

void __58__STPasscodeGroupSpecifierProvider__removeManagedPasscode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __58__STPasscodeGroupSpecifierProvider__removeManagedPasscode__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = [*(a1 + 32) coordinator];
    [v11 setHasAlreadyEnteredPINForSession:0];
  }
}

- (BOOL)isHidden
{
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = STPasscodeGroupSpecifierProvider;
  return [(STGroupSpecifierProvider *)&v4 isHidden];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_264BA2000, MEMORY[0x277D86220], v0, "Failed to authenticate recovery Apple ID: %{public}@", v1, v2, v3, v4, v5);
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_cold_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138478083;
  v3 = a1;
  v4 = 2113;
  v5 = a2;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "The authenticated altDSID %{private}@ does not match the recovery altDSID %{private}@", &v2, 0x16u);
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_cold_3()
{
  OUTLINED_FUNCTION_1_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Authenticated user without altDSID: %@", v0, 0xCu);
}

void __59__STPasscodeGroupSpecifierProvider_changeOrRemovePasscode___block_invoke_4_117_cold_1()
{
  OUTLINED_FUNCTION_1_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_264BA2000, MEMORY[0x277D86220], v0, "LAContext failed to evaluate policy with error: %{public}@", v1, v2, v3, v4, v5);
}

void __88__STPasscodeGroupSpecifierProvider__promptForRecoveryAppleIDWithPINController_passcode___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Authenticated user without an altDSID: %@", v0, 0xCu);
}

@end