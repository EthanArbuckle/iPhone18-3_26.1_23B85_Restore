@interface PABSBiometricController
+ (BOOL)shouldPresentInModalSheet;
- (BOOL)isBiometricEditingAllowed;
- (BOOL)isEnrollmentAvailable;
- (BOOL)isPasscodeSet;
- (BOOL)isSafariAutofillRestricted;
- (BOOL)isTouchIDForPurchasesRestricted;
- (BOOL)isTouchIDForStockholmRestricted;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CIDVUIBiometricBindingFlowManager)_biometricBindingFlowManager;
- (PABSBiometricController)init;
- (PSEnrollContainerViewController)enrollContainerController;
- (id)_passcodeControllerForSpecifier:(id)a3;
- (id)authorizationToken;
- (id)biometricTableViewHeader;
- (id)isTouchIDForPurchasesEnabled:(id)a3;
- (id)isTouchIDForStockholmEnabled:(id)a3;
- (id)isTouchIDUnlockEnabled:(id)a3;
- (id)nextIdentityNameForIdentityType:(int64_t)a3;
- (id)passcodeController;
- (id)placardSpecifiersWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
- (id)safariAutoFillEnabled:(id)a3;
- (id)useBiometricForSpecifiers;
- (void)_popEnrollmentControllerWithCompletion:(id)a3;
- (void)addEnrollmentOrCreatePasscodeIfNecessaryWithCompletion:(id)a3;
- (void)cancelModalFlowWithCompletion:(id)a3;
- (void)completeModalFlow;
- (void)deleteGlobalAuthACL;
- (void)devicePINController:(id)a3 didAcceptSetPIN:(id)a4;
- (void)didUnlock;
- (void)enrollmentCompletedForIdentity:(id)a3;
- (void)fetchBiometricTemplateUUIDsWithCompletion:(id)a3;
- (void)hideCancelButton;
- (void)presentConfirmationAndProceedTouchIDForStockholmEnabled:(id)a3 specifier:(id)a4;
- (void)presentPasscodePaneFromSpecifier:(id)a3;
- (void)presentSheetForContentViewController:(id)a3 completion:(id)a4;
- (void)proceedTouchIDForStockholmEnabled:(id)a3 specifier:(id)a4;
- (void)pushPasscodePane;
- (void)setBiometricUnlockEnabled:(id)a3 specifier:(id)a4;
- (void)setSafariAutoFillEnabled:(id)a3 specifier:(id)a4;
- (void)setStoreState:(int64_t)a3 forceRefresh:(BOOL)a4;
- (void)setTouchIDForPurchasesEnabled:(id)a3 specifier:(id)a4;
- (void)setTouchIDForStockholmEnabled:(id)a3 specifier:(id)a4;
- (void)setupBiometricLogoHeader;
- (void)updateStoreBiometricsStateAndForceRefresh:(BOOL)a3;
- (void)updateTouchIDUnlockSpecifier;
@end

@implementation PABSBiometricController

- (PABSBiometricController)init
{
  v8.receiver = self;
  v8.super_class = PABSBiometricController;
  v2 = [(PABSPasscodeLockController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    storedBiometricTemplates = v2->_storedBiometricTemplates;
    v2->_storedBiometricTemplates = 0;

    v3->_boundCredentialsCount = 0;
    v3->_currentBiometricTemplateFetchStatus = 0;
    [(PABSBiometricController *)v3 fetchBiometricTemplateUUIDsWithCompletion:0];
    v5 = objc_opt_new();
    dtoController = v3->_dtoController;
    v3->_dtoController = v5;
  }

  return v3;
}

- (void)fetchBiometricTemplateUUIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  currentBiometricTemplateFetchStatus = self->_currentBiometricTemplateFetchStatus;
  if (currentBiometricTemplateFetchStatus != 1)
  {
    if (currentBiometricTemplateFetchStatus == 4)
    {
      if (v4)
      {
        (*(v4 + 2))(v4);
      }
    }

    else
    {
      self->_currentBiometricTemplateFetchStatus = 1;
      objc_initWeak(&location, self);
      v7 = [(PABSBiometricController *)self _biometricBindingFlowManager];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __69__PABSBiometricController_fetchBiometricTemplateUUIDsWithCompletion___block_invoke;
      v8[3] = &unk_279A03568;
      objc_copyWeak(&v10, &location);
      v9 = v5;
      [v7 globalAuthACLTemplateUUIDsAndBoundCredentialsCountWithCompletion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __69__PABSBiometricController_fetchBiometricTemplateUUIDsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PABSBiometricController_fetchBiometricTemplateUUIDsWithCompletion___block_invoke_2;
  block[3] = &unk_279A03540;
  objc_copyWeak(v15, (a1 + 40));
  v12 = v8;
  v13 = v7;
  v15[1] = a3;
  v14 = *(a1 + 32);
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v15);
}

void __69__PABSBiometricController_fetchBiometricTemplateUUIDsWithCompletion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    if (*(a1 + 32))
    {
      v4 = PABSLogForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke_2_cold_1((a1 + 32), v4);
      }
    }

    [v3 setStoredBiometricTemplates:*(a1 + 40)];
    [v3 setBoundCredentialsCount:*(a1 + 64)];
    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Fetched biometric template UUIDs: %@", &v10, 0xCu);
    }

    v7 = 2;
    if (*(a1 + 32))
    {
      v7 = 3;
    }

    v3[200] = v7;
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (CIDVUIBiometricBindingFlowManager)_biometricBindingFlowManager
{
  biometricBindingFlowManager = self->__biometricBindingFlowManager;
  if (!biometricBindingFlowManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277CFFE58]);
    v5 = self->__biometricBindingFlowManager;
    self->__biometricBindingFlowManager = v4;

    biometricBindingFlowManager = self->__biometricBindingFlowManager;
  }

  return biometricBindingFlowManager;
}

- (void)deleteGlobalAuthACL
{
  notify_post("com.apple.passd.bound-biometric-reset");
  self->_currentBiometricTemplateFetchStatus = 4;
  [(PABSBiometricController *)self setStoredBiometricTemplates:0];

  [(PABSBiometricController *)self setBoundCredentialsCount:0];
}

- (void)didUnlock
{
  v3 = +[PABSPasscode sharedInstance];
  v4 = [v3 isPasscodeSet];

  if (v4)
  {
    [(PABSBiometricController *)self popRecursivelyToRootController];
    v5 = [(PABSBiometricController *)self navigationController];
    [v5 setViewControllers:MEMORY[0x277CBEBF8]];
  }
}

- (BOOL)isPasscodeSet
{
  v2 = +[PABSPasscode sharedInstance];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (void)addEnrollmentOrCreatePasscodeIfNecessaryWithCompletion:(id)a3
{
  v9 = a3;
  [(PABSBiometricController *)self setModalFlowSuccessCompletion:?];
  v4 = +[PABSBiometrics identities];
  v5 = [v4 count];

  if (v5)
  {
    v6 = +[PABSPasscode sharedInstance];
    v7 = [v6 isPasscodeSet];

    if (v7)
    {
      v9[2]();
    }

    else
    {
      v8 = [(PABSBiometricController *)self specifierForID:@"PASSCODE_TOGGLE"];
      [(PABSBiometricController *)self presentPasscodePaneFromSpecifier:v8];
    }
  }

  else
  {
    [(PABSBiometricController *)self enrollBiometric];
  }
}

- (id)isTouchIDUnlockEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[PABSPasscodeAndBiometrics_Common sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isUnlockEnabled")}];

  return v5;
}

- (void)setBiometricUnlockEnabled:(id)a3 specifier:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSBiometricController *)self isTouchIDUnlockEnabled:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    *buf = 138412802;
    v25 = v10;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v14 = PABSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 identifier];
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v12 = [(PABSBiometricController *)self presentingViewController];

  if (!v12)
  {
    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [v13 addObject:self];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __63__PABSBiometricController_setBiometricUnlockEnabled_specifier___block_invoke;
    v21 = &unk_279A030D0;
    v22 = v13;
    v23 = v6;
    v14 = v13;
    v15 = _Block_copy(&v18);
    [(PABSBiometricController *)self addEnrollmentOrCreatePasscodeIfNecessaryWithCompletion:v15, v18, v19, v20, v21];

LABEL_8:
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __63__PABSBiometricController_setBiometricUnlockEnabled_specifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) anyObject];
  v3 = [v2 specifier];

  if (!v3)
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__PABSBiometricController_setBiometricUnlockEnabled_specifier___block_invoke_cold_1();
    }
  }

  v5 = [*(a1 + 32) anyObject];
  v6 = [v5 specifier];
  v7 = [v6 propertyForKey:*MEMORY[0x277D40100]];

  if (!v7)
  {
    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__PABSBiometricController_setBiometricUnlockEnabled_specifier___block_invoke_cold_2();
    }
  }

  v9 = [MEMORY[0x277D262A0] sharedConnection];
  [v9 setFingerprintUnlockAllowed:objc_msgSend(*(a1 + 40) passcode:"BOOLValue") completion:{v7, 0}];

  if ([*(a1 + 40) BOOLValue])
  {
    v10 = [MEMORY[0x277D262A0] sharedConnection];
    [v10 setValue:&unk_286FD6B88 forSetting:*MEMORY[0x277D25FE0]];
  }

  v11 = [*(a1 + 32) anyObject];
  [v11 updateGracePeriodSpecifier];
}

- (void)updateTouchIDUnlockSpecifier
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PABSBiometricController *)self specifierForID:@"TOUCHID_UNLOCK"];
  v4 = MEMORY[0x277CCABB0];
  v5 = +[PABSBiometrics sharedInstance];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "isTouchIDUnlockRestricted") ^ 1}];
  [v3 setProperty:v6 forKey:*MEMORY[0x277D3FF38]];

  v7 = PABSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 identifier];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "%@: - Reloading -", &v10, 0xCu);
  }

  [(PABSBiometricController *)self reloadSpecifier:v3 animated:1];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setStoreState:(int64_t)a3 forceRefresh:(BOOL)a4
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_storeState != a3 || a4)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "TOUCHID_PURCHASES_ID: Setting storeState to %@", &v13, 0xCu);
    }

    self->_storeState = a3;
    v9 = [(PABSBiometricController *)self specifierForID:@"TOUCHID_PURCHASES"];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[PABSBiometricController isTouchIDForPurchasesRestricted](self, "isTouchIDForPurchasesRestricted") ^ 1}];
    [v9 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "TOUCHID_PURCHASES_ID: - Reloading -", &v13, 2u);
    }

    [(PABSBiometricController *)self reloadSpecifierID:@"TOUCHID_PURCHASES"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateStoreBiometricsStateAndForceRefresh:(BOOL)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D69A70]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PABSBiometricController_updateStoreBiometricsStateAndForceRefresh___block_invoke;
  v6[3] = &unk_279A035B8;
  v6[4] = self;
  v7 = a3;
  [v5 getStateWithCompletionBlock:v6];
}

void __69__PABSBiometricController_updateStoreBiometricsStateAndForceRefresh___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PABSBiometricController_updateStoreBiometricsStateAndForceRefresh___block_invoke_2;
  block[3] = &unk_279A03590;
  block[4] = *(a1 + 32);
  block[5] = a2;
  v3 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)authorizationToken
{
  v3 = [(PABSBiometricController *)self specifier];

  if (!v3)
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometricController authorizationToken];
    }
  }

  v5 = [(PABSBiometricController *)self specifier];
  v6 = [v5 propertyForKey:*MEMORY[0x277D40100]];

  if (!v6)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometricController authorizationToken];
    }
  }

  v8 = PSAuthorizationTokenForPasscode();

  return v8;
}

- (id)isTouchIDForPurchasesEnabled:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PABSBiometricController *)self currentlyEnablingTouchIDForPurchases])
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    if ([(PABSBiometricController *)self storeState]== 1)
    {
      v6 = +[PABSPasscode sharedInstance];
      if ([v6 isPasscodeSet])
      {
        v7 = +[PABSBiometrics identities];
        v8 = [v7 count] != 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 identifier];
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Get: %@", &v14, 0x16u);
    }

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setTouchIDForPurchasesEnabled:(id)a3 specifier:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  v9 = [(PABSBiometricController *)self isTouchIDForPurchasesEnabled:v7];
  v10 = [v9 BOOLValue];

  v11 = PABSLogForCategory(0);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if ((v8 ^ v10))
  {
    if (v12)
    {
      v13 = [v7 identifier];
      *buf = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ == current", buf, 0x16u);
    }

    [(PABSBiometricController *)self setCurrentlyEnablingTouchIDForPurchases:1];
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PABSBiometricController_setTouchIDForPurchasesEnabled_specifier___block_invoke;
    aBlock[3] = &unk_279A03448;
    objc_copyWeak(&v20, buf);
    v18 = v6;
    v19 = v7;
    v14 = _Block_copy(aBlock);
    [(PABSBiometricController *)self addEnrollmentOrCreatePasscodeIfNecessaryWithCompletion:v14];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v12)
    {
      v15 = [v7 identifier];
      *buf = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ == current, ignoring", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __67__PABSBiometricController_setTouchIDForPurchasesEnabled_specifier___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__PABSBiometricController_setTouchIDForPurchasesEnabled_specifier___block_invoke_2;
  v4[3] = &unk_279A03630;
  v4[4] = WeakRetained;
  v5 = a1[4];
  v6 = a1[5];
  objc_copyWeak(&v7, a1 + 6);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v7);
}

void __67__PABSBiometricController_setTouchIDForPurchasesEnabled_specifier___block_invoke_2(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] authorizationToken];
  v3 = [a1[5] BOOLValue];
  v4 = objc_alloc_init(MEMORY[0x277D69A70]);
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1[6] identifier];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@: Set: Requesting StoreBiometrics to %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__PABSBiometricController_setTouchIDForPurchasesEnabled_specifier___block_invoke_87;
  v9[3] = &unk_279A03608;
  objc_copyWeak(&v11, a1 + 7);
  v10 = a1[6];
  [v4 setEnabled:v3 withAuthToken:v2 completionBlock:v9];

  objc_destroyWeak(&v11);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__PABSBiometricController_setTouchIDForPurchasesEnabled_specifier___block_invoke_87(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__PABSBiometricController_setTouchIDForPurchasesEnabled_specifier___block_invoke_2_88;
  v8[3] = &unk_279A035E0;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = *(a1 + 32);
  v12 = a2;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v11);
}

void __67__PABSBiometricController_setTouchIDForPurchasesEnabled_specifier___block_invoke_2_88(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) identifier];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "%@: Set: StoreBiometrics set [%@] error %@", &v8, 0x20u);
  }

  [WeakRetained setCurrentlyEnablingTouchIDForPurchases:0];
  [WeakRetained updateStoreBiometricsStateAndForceRefresh:1];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTouchIDForPurchasesRestricted
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];

  if ([(PABSBiometricController *)self storeState]== 4)
  {
    return 1;
  }

  v6 = +[PABSBiometrics sharedInstance];
  v7 = [v6 shouldRestrictFeaturesRequiringEnrollment];
  if (v4 == 1)
  {
    v5 = v7;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)isTouchIDForStockholmEnabled:(id)a3
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25EB0]];

  v5 = MEMORY[0x277CCABB0];
  if (v4 == 1)
  {
    v6 = +[PABSPasscode sharedInstance];
    if ([v6 isPasscodeSet])
    {
      v7 = +[PABSBiometrics identities];
      v8 = [v5 numberWithBool:{objc_msgSend(v7, "count") != 0}];
    }

    else
    {
      v8 = [v5 numberWithBool:0];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  }

  return v8;
}

- (void)setTouchIDForStockholmEnabled:(id)a3 specifier:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PABSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Using biometric for Wallet & Apple Pay: User toggled to %@", buf, 0xCu);
  }

  v9 = [(PABSBiometricController *)self isTouchIDForStockholmEnabled:v7];
  v10 = PABSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 identifier];
    *buf = 138412802;
    v24 = v11;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  v12 = [v6 BOOLValue];
  if (v12 == [v9 BOOLValue])
  {
    v13 = PABSLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 identifier];
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_25E0E9000, v13, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
    }
  }

  else if ([v6 BOOLValue])
  {
    [(PABSBiometricController *)self proceedTouchIDForStockholmEnabled:v6 specifier:v7];
  }

  else
  {
    v16 = [(PABSBiometricController *)self dtoController];
    v17 = [v16 isRatchetEnabled];

    if (v17)
    {
      objc_initWeak(buf, self);
      v18 = [(PABSBiometricController *)self dtoController];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __67__PABSBiometricController_setTouchIDForStockholmEnabled_specifier___block_invoke;
      v19[3] = &unk_279A03680;
      objc_copyWeak(&v22, buf);
      v20 = v7;
      v21 = v6;
      [v18 gateWithRatchetForOperation:8 forPresentingVC:self completion:v19];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PABSBiometricController *)self presentConfirmationAndProceedTouchIDForStockholmEnabled:v6 specifier:v7];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __67__PABSBiometricController_setTouchIDForStockholmEnabled_specifier___block_invoke(id *a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__PABSBiometricController_setTouchIDForStockholmEnabled_specifier___block_invoke_2;
  v4[3] = &unk_279A03658;
  objc_copyWeak(v7, a1 + 6);
  v7[1] = a2;
  v5 = a1[4];
  v6 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(v7);
}

void __67__PABSBiometricController_setTouchIDForStockholmEnabled_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56) == 2)
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__PABSBiometricController_setTouchIDForStockholmEnabled_specifier___block_invoke_2_cold_2();
    }

    [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
  }

  else
  {
    v4 = PABSLogForCategory(0);
    v5 = v4;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Using biometric for Wallet & Apple Pay: Toggling to Off ", v6, 2u);
      }

      [WeakRetained presentConfirmationAndProceedTouchIDForStockholmEnabled:*(a1 + 40) specifier:*(a1 + 32)];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __67__PABSBiometricController_setTouchIDForStockholmEnabled_specifier___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)presentConfirmationAndProceedTouchIDForStockholmEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PSLocalizableStockholmStringForKey();
  v9 = PSLocalizableStockholmStringForKey();
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6 || (PSIsPearlAvailable() & 1) != 0 || PSSupportsMesa())
  {
    v12 = PSLocalizableStockholmStringForKey();

    v13 = PSLocalizableStockholmStringForKey();

    v9 = v13;
    v8 = v12;
  }

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v9 preferredStyle:1];
  v15 = MEMORY[0x277D750F8];
  v16 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __93__PABSBiometricController_presentConfirmationAndProceedTouchIDForStockholmEnabled_specifier___block_invoke;
  v27[3] = &unk_279A03220;
  v27[4] = self;
  v17 = v7;
  v28 = v17;
  v18 = [v15 actionWithTitle:v16 style:1 handler:v27];
  [v14 addAction:v18];

  v19 = MEMORY[0x277D750F8];
  v20 = PABS_LocalizedStringForPasscodeLock(@"CONTINUE");
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__PABSBiometricController_presentConfirmationAndProceedTouchIDForStockholmEnabled_specifier___block_invoke_124;
  v24[3] = &unk_279A036A8;
  v24[4] = self;
  v25 = v6;
  v26 = v17;
  v21 = v17;
  v22 = v6;
  v23 = [v19 actionWithTitle:v20 style:2 handler:v24];
  [v14 addAction:v23];

  [(PABSBiometricController *)self presentViewController:v14 animated:1 completion:0];
}

uint64_t __93__PABSBiometricController_presentConfirmationAndProceedTouchIDForStockholmEnabled_specifier___block_invoke(uint64_t a1)
{
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __93__PABSBiometricController_presentConfirmationAndProceedTouchIDForStockholmEnabled_specifier___block_invoke_cold_1();
  }

  return [*(a1 + 32) reloadSpecifier:*(a1 + 40) animated:1];
}

- (void)proceedTouchIDForStockholmEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(PABSBiometricController *)self specifier];

  if (!v6)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometricController proceedTouchIDForStockholmEnabled:specifier:];
    }
  }

  v8 = [(PABSBiometricController *)self specifier];
  v9 = [v8 propertyForKey:*MEMORY[0x277D40100]];

  if (!v9)
  {
    v10 = PABSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometricController proceedTouchIDForStockholmEnabled:specifier:];
    }
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __71__PABSBiometricController_proceedTouchIDForStockholmEnabled_specifier___block_invoke;
  v17 = &unk_279A030D0;
  v18 = v5;
  v19 = v9;
  v11 = v9;
  v12 = v5;
  v13 = _Block_copy(&v14);
  [(PABSBiometricController *)self addEnrollmentOrCreatePasscodeIfNecessaryWithCompletion:v13, v14, v15, v16, v17];
}

void __71__PABSBiometricController_proceedTouchIDForStockholmEnabled_specifier___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [*(a1 + 32) BOOLValue];
  [v3 setBoolValue:v2 forSetting:*MEMORY[0x277D25EB0] passcode:*(a1 + 40)];
}

- (BOOL)isTouchIDForStockholmRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25EB0]])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[PABSBiometrics sharedInstance];
    v3 = [v4 shouldRestrictFeaturesRequiringEnrollment];
  }

  return v3;
}

- (BOOL)isBiometricEditingAllowed
{
  v2 = +[PABSBiometrics sharedInstance];
  v3 = [v2 isBiometricEditingAllowed];

  return v3;
}

- (BOOL)isEnrollmentAvailable
{
  if (PSIsPearlAvailable())
  {
    v3 = 2;
LABEL_5:
    v4 = +[PABSBiometrics sharedInstance];
    v5 = [v4 maximumIdentityCountForIdentityType:v3];

    goto LABEL_7;
  }

  if (PSSupportsMesa())
  {
    v3 = 1;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v6 = +[PABSBiometrics identities];
  v7 = [v6 count] < v5 && -[PABSBiometricController isBiometricEditingAllowed](self, "isBiometricEditingAllowed");

  return v7;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(PABSBiometricController *)self specifierAtIndex:[(PABSBiometricController *)self indexForIndexPath:a4]];
  v5 = [v4 properties];
  v6 = [v5 objectForKey:*MEMORY[0x277D3FF38]];

  v7 = !v6 || [v6 BOOLValue];
  return v7;
}

- (id)placardSpecifiersWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v13 = *MEMORY[0x277D3FFB8];
  [v12 setProperty:@"PLACARD_GROUP_ID" forKey:*MEMORY[0x277D3FFB8]];
  [v11 addObject:v12];
  v14 = [(PABSBiometricController *)self traitCollection];
  v15 = [v14 pe_isSettingsFeatureDescriptionCellSupported];

  if (v15)
  {
    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v16 setProperty:@"PLACARD_ID" forKey:v13];
    [v16 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v16 setProperty:v9 forKey:*MEMORY[0x277D40160]];
    [v16 setProperty:v10 forKey:*MEMORY[0x277D3FFD8]];
    [v11 addObject:v16];
  }

  v17 = [v11 copy];

  return v17;
}

- (id)biometricTableViewHeader
{
  v2 = [(PABSBiometricController *)self biometricLogo];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  [v2 size];
  v5 = v4;
  [v2 size];
  v7 = [v3 initWithFrame:{0.0, 0.0, v5, v6 + 45.0}];
  [v7 setImage:v2];
  [v7 setContentMode:6];

  return v7;
}

- (void)setupBiometricLogoHeader
{
  v4 = [(PABSBiometricController *)self biometricTableViewHeader];
  v3 = [(PABSBiometricController *)self table];
  [v3 setTableHeaderView:v4];
}

- (id)useBiometricForSpecifiers
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v49 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v49 setIdentifier:@"TOUCHID_SETTINGS"];
  v4 = [(PABSBiometricController *)self headerForUseBiometricSection];
  [v49 setName:v4];

  [v3 addObject:v49];
  if (PSIsPearlInterlocked())
  {
    v5 = +[PABSBiometrics identities];
    v50 = [v5 count] == 0;
  }

  else
  {
    v50 = 0;
  }

  v6 = MEMORY[0x277D3FAD8];
  v7 = PABS_LocalizedStringForPasscodeLock(@"TOUCHID_UNLOCK");
  v8 = [v6 preferenceSpecifierNamed:v7 target:self set:sel_setBiometricUnlockEnabled_specifier_ get:sel_isTouchIDUnlockEnabled_ detail:0 cell:6 edit:0];

  v48 = *MEMORY[0x277D3FFB8];
  [v8 setProperty:@"TOUCHID_UNLOCK" forKey:?];
  v9 = MEMORY[0x277CCABB0];
  v10 = +[PABSBiometrics sharedInstance];
  v11 = [v9 numberWithInt:{((objc_msgSend(v10, "isTouchIDUnlockRestricted") | v50) & 1) == 0}];
  v12 = *MEMORY[0x277D3FF38];
  [v8 setProperty:v11 forKey:*MEMORY[0x277D3FF38]];

  [v3 addObject:v8];
  [(PABSBiometricController *)self updateStoreBiometricsStateAndForceRefresh:0];
  v13 = MEMORY[0x277D3FAD8];
  v14 = PABS_LocalizedStringForPasscodeLock(@"TOUCHID_PURCHASES");
  v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setTouchIDForPurchasesEnabled_specifier_ get:sel_isTouchIDForPurchasesEnabled_ detail:0 cell:6 edit:0];

  [v15 setProperty:@"TOUCHID_PURCHASES" forKey:v48];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:{!-[PABSBiometricController isTouchIDForPurchasesRestricted](self, "isTouchIDForPurchasesRestricted") && !v50}];
  [v15 setProperty:v16 forKey:v12];

  [v3 addObject:v15];
  if (MGGetBoolAnswer())
  {
    v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v18 = [v17 BOOLForKey:@"showPassbookRow"];

    v56 = 0;
    v57 = &v56;
    v58 = 0x2050000000;
    v19 = getPKWalletVisibilityClass_softClass;
    v59 = getPKWalletVisibilityClass_softClass;
    if (!getPKWalletVisibilityClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPKWalletVisibilityClass_block_invoke;
      v61 = &unk_279A03148;
      v62 = &v56;
      __getPKWalletVisibilityClass_block_invoke(buf);
      v19 = v57[3];
    }

    v45 = v18;
    v20 = v19;
    _Block_object_dispose(&v56, 8);
    v47 = [v19 isWalletVisible];
    v21 = MEMORY[0x277D3FAD8];
    v22 = PSLocalizableStockholmStringForKey();
    v23 = [v21 preferenceSpecifierNamed:v22 target:self set:sel_setTouchIDForStockholmEnabled_specifier_ get:sel_isTouchIDForStockholmEnabled_ detail:0 cell:6 edit:0];

    [v23 setProperty:@"TOUCHID_STOCKHOLM" forKey:v48];
    v24 = [(PABSBiometricController *)self isTouchIDForStockholmRestricted];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:!v24 && !v50];
    [v23 setProperty:v25 forKey:v12];

    v26 = PABSLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v23 identifier];
      v28 = [MEMORY[0x277CCABB0] numberWithBool:v24];
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v50];
      *buf = 138412802;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      *&buf[22] = 2112;
      v61 = v29;
      _os_log_impl(&dword_25E0E9000, v26, OS_LOG_TYPE_DEFAULT, "%@: Setup: restricted [%@] shouldDisableForInterlock [%@]", buf, 0x20u);
    }

    if ((v45 & v47) == 1)
    {
      [v3 addObject:v23];
      v30 = PABSLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v23 identifier];
        *buf = 138412290;
        *&buf[4] = v31;
        _os_log_impl(&dword_25E0E9000, v30, OS_LOG_TYPE_DEFAULT, "%@: Adding: cachedShowPassbookRow [1] isWalletVisible [1]", buf, 0xCu);
      }
    }

    else
    {
      v46 = PSHasStockholmPass();
      v32 = PABSLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v23 identifier];
        *buf = 138412290;
        *&buf[4] = v33;
        _os_log_impl(&dword_25E0E9000, v32, OS_LOG_TYPE_DEFAULT, "%@: Check for can add specifier [start]", buf, 0xCu);
      }

      v56 = 0;
      v57 = &v56;
      v58 = 0x2050000000;
      v34 = getPKPaymentRegistrationUtilitiesClass_softClass;
      v59 = getPKPaymentRegistrationUtilitiesClass_softClass;
      if (!getPKPaymentRegistrationUtilitiesClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getPKPaymentRegistrationUtilitiesClass_block_invoke;
        v61 = &unk_279A03148;
        v62 = &v56;
        __getPKPaymentRegistrationUtilitiesClass_block_invoke(buf);
        v34 = v57[3];
      }

      v35 = v34;
      _Block_object_dispose(&v56, 8);
      v56 = 0;
      v57 = &v56;
      v58 = 0x2050000000;
      v36 = getPKPaymentWebServiceClass_softClass;
      v59 = getPKPaymentWebServiceClass_softClass;
      if (!getPKPaymentWebServiceClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getPKPaymentWebServiceClass_block_invoke;
        v61 = &unk_279A03148;
        v62 = &v56;
        __getPKPaymentWebServiceClass_block_invoke(buf);
        v36 = v57[3];
      }

      v37 = v36;
      _Block_object_dispose(&v56, 8);
      v38 = [v36 sharedService];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __52__PABSBiometricController_useBiometricForSpecifiers__block_invoke;
      v51[3] = &unk_279A036F8;
      v54 = v46;
      v55 = v47;
      v52 = v23;
      v53 = self;
      [v34 shouldShowWalletInSettingsWithApplePaySupportInformation:v38 completion:v51];

      v30 = v52;
    }
  }

  else
  {
    v23 = PABSLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0E9000, v23, OS_LOG_TYPE_DEFAULT, "TOUCHID_STOCKHOLM: Skipping adding: SecureElement [0]", buf, 2u);
    }
  }

  v39 = MEMORY[0x277D3FAD8];
  v40 = PABS_LocalizedStringForPasscodeLock(@"SAFARI_AUTOFILL");
  v41 = [v39 preferenceSpecifierNamed:v40 target:self set:sel_setSafariAutoFillEnabled_specifier_ get:sel_safariAutoFillEnabled_ detail:0 cell:6 edit:0];

  [v41 setProperty:@"TOUCHID_SAFARI_AUTOFILL" forKey:v48];
  v42 = [MEMORY[0x277CCABB0] numberWithInt:{!-[PABSBiometricController isSafariAutofillRestricted](self, "isSafariAutofillRestricted") && !v50}];
  [v41 setProperty:v42 forKey:v12];

  [v3 addObject:v41];
  v43 = *MEMORY[0x277D85DE8];

  return v3;
}

void __52__PABSBiometricController_useBiometricForSpecifiers__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = PABSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) identifier];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    v13 = [v7 description];
    *buf = 138413314;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "%@: Check for can add specifier [end]: shouldShow [%@] supportsApplePay [%@] hasExistingPasses [%@] error [%@]", buf, 0x34u);
  }

  if (a3 & 1) != 0 || (*(a1 + 48))
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a1 + 49);
  }

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v15 setBool:v14 & 1 forKey:@"showPassbookRow"];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PABSBiometricController_useBiometricForSpecifiers__block_invoke_174;
  block[3] = &unk_279A036D0;
  v21 = a2;
  v18 = *(a1 + 32);
  v16 = v18.i64[0];
  v20 = vextq_s8(v18, v18, 8uLL);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v17 = *MEMORY[0x277D85DE8];
}

void __52__PABSBiometricController_useBiometricForSpecifiers__block_invoke_174(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1 && ([*(a1 + 32) specifierForID:@"TOUCHID_STOCKHOLM"], v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) identifier];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "%@: Inserting after TOUCHID_UNLOCK", &v8, 0xCu);
    }

    [*(a1 + 32) insertSpecifier:*(a1 + 40) afterSpecifierID:@"TOUCHID_UNLOCK" animated:1];
  }

  else
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) identifier];
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "%@: Skipping inserting", &v8, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldPresentInModalSheet
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sf_isiPad];

  return v3;
}

- (void)presentSheetForContentViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setModalPresentationStyle:2];
  [MEMORY[0x277D37610] preferredContentSize];
  [v7 setPreferredContentSize:?];
  [(PABSBiometricController *)self presentViewController:v7 animated:1 completion:v6];
}

- (void)pushPasscodePane
{
  v3 = [(PABSBiometricController *)self presentedViewController];
  v4 = [v3 navigationBar];
  [v4 setBarStyle:0];

  v5 = [v3 navigationBar];
  v6 = objc_opt_new();
  [v5 setShadowImage:v6];

  v7 = [v3 navigationBar];
  [v7 _setHidesShadow:0];

  v8 = [MEMORY[0x277D75418] currentDevice];
  if ([v8 userInterfaceIdiom] == 6)
  {
    v9 = [(PABSPasscodeLockController *)self shouldUseLocalAuthenticationBasedPasscodeFlowForChangePasscodeRequests];

    if (!v9)
    {
      v10 = [(PABSBiometricController *)self specifierAtIndex:0];
      v11 = [(PABSBiometricController *)self _passcodeControllerForSpecifier:v10];

      [v11 preferredContentSize];
      [v3 setPreferredContentSize:?];
      [v3 pushViewController:v11 animated:1];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = PABSLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "Dismissing current view to push Passcode Change flow", buf, 2u);
  }

  v13 = PABS_LocalizedStringForPasscodeLock(@"ENTER_PASSCODE_PROMPT_TOUCH_ID");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__PABSBiometricController_pushPasscodePane__block_invoke;
  v14[3] = &unk_279A030D0;
  v14[4] = self;
  v15 = v13;
  v11 = v13;
  [v3 dismissViewControllerAnimated:1 completion:v14];

LABEL_8:
}

void __43__PABSBiometricController_pushPasscodePane__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PABS_LocalizedStringForPasscodeLock(@"PMSET");
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PABSBiometricController_pushPasscodePane__block_invoke_2;
  v5[3] = &unk_279A032D8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v2 showLocalAuthenticationPasscodeChangeFlowFromPresentingController:v2 title:v3 passcodePrompt:v4 withCompletion:v5];
}

uint64_t __43__PABSBiometricController_pushPasscodePane__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 cancelModalFlowWithCompletion:0];
  }

  else
  {
    return [v2 completeModalFlow];
  }
}

- (void)presentPasscodePaneFromSpecifier:(id)a3
{
  v5 = [(PABSBiometricController *)self _passcodeControllerForSpecifier:a3];
  v4 = [[PSEnrollmentNavigationController alloc] initWithRootViewController:v5];
  [(PSEnrollmentNavigationController *)v4 setModalPresentationStyle:2];
  [(PSEnrollmentNavigationController *)v4 setModalInPresentation:1];
  [(PABSBiometricController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_passcodeControllerForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PABSBiometricController *)self passcodeController];
  [v5 setMode:0];
  [v5 setPinDelegate:self];
  [v5 setSpecifier:v4];

  v6 = objc_opt_class();
  v7 = [v5 specifier];
  *&v7[*MEMORY[0x277D3FCA0]] = v6;

  v8 = [v5 navigationItem];
  [v8 setHidesBackButton:1];

  return v5;
}

- (id)passcodeController
{
  v2 = objc_alloc_init(PSBiometricPINController);

  return v2;
}

- (void)hideCancelButton
{
  v3 = [objc_opt_class() shouldPresentInModalSheet];
  v6 = [(PABSBiometricController *)self enrollContainerController];
  v4 = [v6 navigationItem];
  v5 = v4;
  if (v3)
  {
    [v4 setLeftBarButtonItem:0 animated:1];
  }

  else
  {
    [v4 setRightBarButtonItem:0 animated:1];
  }
}

- (id)nextIdentityNameForIdentityType:(int64_t)a3
{
  v4 = +[PABSBiometrics sharedInstance];
  v5 = [v4 nextIdentityNameForIdentityType:a3];

  return v5;
}

- (void)enrollmentCompletedForIdentity:(id)a3
{
  v8 = a3;
  if (PSIsPearlAvailable())
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(PABSBiometricController *)self nextIdentityNameForIdentityType:v4];
  if (!v5)
  {
    [PABSBiometricController enrollmentCompletedForIdentity:];
  }

  v6 = v5;
  v7 = +[PABSBiometrics sharedInstance];
  [v7 setName:v6 forIdentity:v8 completion:0];
}

- (void)completeModalFlow
{
  [(PABSBiometricController *)self setCurrentlyEnablingTouchIDForPurchases:0];
  v3 = [(PABSBiometricController *)self modalFlowSuccessCompletion];

  if (v3)
  {
    v4 = [(PABSBiometricController *)self modalFlowSuccessCompletion];
    v4[2]();
  }

  [(PABSBiometricController *)self setModalFlowSuccessCompletion:0];
  [(PABSBiometricController *)self setModalFlowCancelCompletion:0];

  [(PABSBiometricController *)self _popEnrollmentControllerWithCompletion:0];
}

- (void)cancelModalFlowWithCompletion:(id)a3
{
  v6 = a3;
  [(PABSBiometricController *)self setCurrentlyEnablingTouchIDForPurchases:0];
  v4 = [(PABSBiometricController *)self modalFlowCancelCompletion];

  if (v4)
  {
    v5 = [(PABSBiometricController *)self modalFlowCancelCompletion];
    v5[2]();
  }

  [(PABSBiometricController *)self setModalFlowCancelCompletion:0];
  [(PABSBiometricController *)self setModalFlowSuccessCompletion:0];
  [(PABSBiometricController *)self _popEnrollmentControllerWithCompletion:v6];
}

- (void)_popEnrollmentControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "_popEnrollmentControllerWithCompletion: - Reloading Pane -", buf, 2u);
  }

  [(PABSBiometricController *)self reloadSpecifiers];
  [(PABSBiometricController *)self setEnrollContainerController:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__PABSBiometricController__popEnrollmentControllerWithCompletion___block_invoke;
  v7[3] = &unk_279A03720;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PABSBiometricController *)self dismissViewControllerAnimated:1 completion:v7];
}

uint64_t __66__PABSBiometricController__popEnrollmentControllerWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) enrollmentControllerDidDismiss];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)devicePINController:(id)a3 didAcceptSetPIN:(id)a4
{
  v5.receiver = self;
  v5.super_class = PABSBiometricController;
  [(PABSPasscodeLockController *)&v5 devicePINController:a3 didAcceptSetPIN:a4];
  [(PABSBiometricController *)self completeModalFlow];
}

- (BOOL)isSafariAutofillRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D60]])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[PABSBiometrics sharedInstance];
    v3 = [v4 shouldRestrictFeaturesRequiringEnrollment];
  }

  return v3;
}

- (id)safariAutoFillEnabled:(id)a3
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 isAuthenticationBeforeAutoFillRequired];

  v5 = MEMORY[0x277CCABB0];
  if (v4)
  {
    v6 = +[PABSPasscode sharedInstance];
    if ([v6 isPasscodeSet])
    {
      v7 = +[PABSBiometrics identities];
      v8 = [v5 numberWithInt:{objc_msgSend(v7, "count") != 0}];
    }

    else
    {
      v8 = [v5 numberWithInt:0];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
  }

  return v8;
}

- (void)setSafariAutoFillEnabled:(id)a3 specifier:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PABSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Using biometric for Password AutoFill: User toggled to %@", buf, 0xCu);
  }

  v9 = [(PABSBiometricController *)self safariAutoFillEnabled:v7];
  v10 = PABSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 identifier];
    *buf = 138412802;
    v28 = v11;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  v12 = [v6 BOOLValue];
  if (v12 == [v9 BOOLValue])
  {
    v13 = PABSLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 identifier];
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&dword_25E0E9000, v13, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
    }
  }

  else if ([v6 BOOLValue])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_2_203;
    v19[3] = &unk_279A03008;
    v20 = v6;
    [(PABSBiometricController *)self addEnrollmentOrCreatePasscodeIfNecessaryWithCompletion:v19];
  }

  else
  {
    v16 = [(PABSBiometricController *)self dtoController];
    v17 = [v16 isRatchetEnabled];

    if (v17)
    {
      objc_initWeak(buf, self);
      v18 = [(PABSBiometricController *)self dtoController];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke;
      v23[3] = &unk_279A03680;
      objc_copyWeak(&v26, buf);
      v24 = v7;
      v25 = v6;
      [v18 gateWithRatchetForOperation:9 forPresentingVC:self completion:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_202;
      v21[3] = &unk_279A03008;
      v22 = v6;
      [(PABSBiometricController *)self addEnrollmentOrCreatePasscodeIfNecessaryWithCompletion:v21];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke(id *a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_2;
  v4[3] = &unk_279A03658;
  objc_copyWeak(v7, a1 + 6);
  v7[1] = a2;
  v5 = a1[4];
  v6 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(v7);
}

void __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56) == 2)
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_2_cold_2();
    }

    [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
  }

  else
  {
    v4 = PABSLogForCategory(0);
    v5 = v4;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Using biometric for Password AutoFill: Toggling to Off ", buf, 2u);
      }

      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_201;
      v6[3] = &unk_279A03008;
      v7 = *(a1 + 40);
      [WeakRetained addEnrollmentOrCreatePasscodeIfNecessaryWithCompletion:v6];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_2_cold_1();
      }
    }
  }
}

void __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_201(uint64_t a1)
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [*(a1 + 32) BOOLValue];
  [v3 setBoolValue:v2 forSetting:*MEMORY[0x277D25D60]];
}

void __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_202(uint64_t a1)
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [*(a1 + 32) BOOLValue];
  [v3 setBoolValue:v2 forSetting:*MEMORY[0x277D25D60]];
}

void __62__PABSBiometricController_setSafariAutoFillEnabled_specifier___block_invoke_2_203(uint64_t a1)
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [*(a1 + 32) BOOLValue];
  [v3 setBoolValue:v2 forSetting:*MEMORY[0x277D25D60]];
}

- (PSEnrollContainerViewController)enrollContainerController
{
  WeakRetained = objc_loadWeakRetained(&self->_enrollContainerController);

  return WeakRetained;
}

@end