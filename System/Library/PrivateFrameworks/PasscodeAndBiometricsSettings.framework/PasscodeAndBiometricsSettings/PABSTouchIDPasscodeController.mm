@interface PABSTouchIDPasscodeController
- (BOOL)isBiometricIdentityMatchingGovernmentIDTemplate:(id)a3;
- (LAContext)authContext;
- (PABSTouchIDPasscodeController)init;
- (id)_fingerprintSpecifierForIdentity:(id)a3;
- (id)biometricLogo;
- (id)fingerprintSpecifiers;
- (id)specifiers;
- (void)_cancelMatching;
- (void)_setupMatching;
- (void)addEnrollment:(id)a3;
- (void)addFooterToUseForGroup:(id)a3;
- (void)backgrounded:(id)a3;
- (void)biometricBindingDeleted;
- (void)cancelModalFlow;
- (void)cancelModalFlowWithCompletion:(id)a3;
- (void)configureBiometricTemplateMatching;
- (void)dealloc;
- (void)enrollmentControllerDidDismiss;
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
- (void)highlightFingerprintSpecifier:(id)a3;
- (void)learnMoreTapped:(id)a3;
- (void)matchBiometricIdentitiesWithBiometricTemplates;
- (void)matchResult:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)proceedToAddEnrollment:(id)a3;
- (void)statusMessage:(unsigned int)a3;
- (void)suspend;
- (void)unhighlightFingerprintSpecifiersAfterDelay:(double)a3;
- (void)updateAddFingerprintSpecifier;
- (void)updateWithReplacedUUIDs:(id)a3;
@end

@implementation PABSTouchIDPasscodeController

- (PABSTouchIDPasscodeController)init
{
  v9.receiver = self;
  v9.super_class = PABSTouchIDPasscodeController;
  v2 = [(PABSBiometricController *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_reloadSpecifiers name:@"PSEnrollmentNameChanged" object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_biometricBindingDeleted name:@"PSBiometricBindingDeleted" object:0];

    v5 = objc_opt_new();
    dtoController = v2->_dtoController;
    v2->_dtoController = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_backgrounded_ name:*MEMORY[0x277D76660] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if ([(PABSBiometricController *)self isObservingBiometricTemplateFetchingStatus])
  {
    [(PABSTouchIDPasscodeController *)self removeObserver:self forKeyPath:@"currentBiometricTemplateFetchStatus"];
  }

  [(BiometricKit *)self->_highlightMatcher setDelegate:0];
  [(BiometricKit *)self->_highlightMatcher cancel];
  v4.receiver = self;
  v4.super_class = PABSTouchIDPasscodeController;
  [(PABSPasscodeLockController *)&v4 dealloc];
}

- (void)backgrounded:(id)a3
{
  v4 = a3;
  v5 = [(PABSTouchIDPasscodeController *)self presenter];
  v6 = [v5 splashController];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(PABSTouchIDPasscodeController *)self presenter];
    v8 = [v7 splashController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__PABSTouchIDPasscodeController_backgrounded___block_invoke;
    v9[3] = &unk_279A031D0;
    objc_copyWeak(&v10, &location);
    [v8 dismissViewControllerAnimated:0 completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __46__PABSTouchIDPasscodeController_backgrounded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPresenter:0];
}

- (void)suspend
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__PABSTouchIDPasscodeController_suspend__block_invoke;
  v2[3] = &unk_279A03008;
  v2[4] = self;
  [(PABSTouchIDPasscodeController *)self cancelModalFlowWithCompletion:v2];
}

id __40__PABSTouchIDPasscodeController_suspend__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PABSTouchIDPasscodeController;
  return objc_msgSendSuper2(&v2, sel_suspend);
}

- (void)updateAddFingerprintSpecifier
{
  v3 = [(PABSTouchIDPasscodeController *)self specifierForID:@"ADD_FINGERPRINT"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSBiometricController isEnrollmentAvailable](self, "isEnrollmentAvailable")}];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D3FF38]];

  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "ADD_FINGERPRINT_ID: - Reloading -", v6, 2u);
  }

  [(PABSTouchIDPasscodeController *)self reloadSpecifier:v3 animated:1];
}

- (void)highlightFingerprintSpecifier:(id)a3
{
  v4 = a3;
  if ([(PABSTouchIDPasscodeController *)self containsSpecifier:v4])
  {
    v5 = [v4 propertyForKey:*MEMORY[0x277D40148]];
    if (v5)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [v6 addObject:v5];
      v7 = [(PABSTouchIDPasscodeController *)self highlightQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PABSTouchIDPasscodeController_highlightFingerprintSpecifier___block_invoke;
      block[3] = &unk_279A03008;
      v10 = v6;
      v8 = v6;
      dispatch_async(v7, block);
    }
  }
}

void __63__PABSTouchIDPasscodeController_highlightFingerprintSpecifier___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PABSTouchIDPasscodeController_highlightFingerprintSpecifier___block_invoke_2;
  block[3] = &unk_279A03008;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__PABSTouchIDPasscodeController_highlightFingerprintSpecifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) anyObject];
  [v1 setHighlighted:1 animated:1];
}

- (void)unhighlightFingerprintSpecifiersAfterDelay:(double)a3
{
  v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [v5 addObject:self];
  v6 = [(PABSTouchIDPasscodeController *)self highlightQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__PABSTouchIDPasscodeController_unhighlightFingerprintSpecifiersAfterDelay___block_invoke;
  v8[3] = &unk_279A03380;
  v10 = a3;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __76__PABSTouchIDPasscodeController_unhighlightFingerprintSpecifiersAfterDelay___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) > 0.0)
  {
    [MEMORY[0x277CCACC8] sleepForTimeInterval:?];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__PABSTouchIDPasscodeController_unhighlightFingerprintSpecifiersAfterDelay___block_invoke_2;
  block[3] = &unk_279A03008;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__PABSTouchIDPasscodeController_unhighlightFingerprintSpecifiersAfterDelay___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [*(a1 + 32) anyObject];
  v2 = [v1 specifiers];

  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x277D40148];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 propertyForKey:v6];
        if ([v9 isHighlighted])
        {
          v10 = [v8 propertyForKey:@"FingerprintIdentity"];

          if (v10)
          {
            [v9 setHighlighted:0 animated:1];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setupMatching
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 applicationState] == 0;

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PABSTouchIDPasscodeController__setupMatching__block_invoke;
  block[3] = &unk_279A033A8;
  objc_copyWeak(&v6, &location);
  v7 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__PABSTouchIDPasscodeController__setupMatching__block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[PABSBiometrics identities];
  if ([v3 count])
  {
    v4 = *(a1 + 40);

    if (v4 == 1)
    {
      v5 = [WeakRetained highlightMatcher];
      [v5 setDelegate:0];

      v6 = [MEMORY[0x277CF1BF8] manager];
      [WeakRetained setHighlightMatcher:v6];

      v7 = [WeakRetained highlightMatcher];
      [v7 setDelegate:WeakRetained];

      v8 = [WeakRetained authorizationToken];
      v9 = [WeakRetained highlightMatcher];
      v10 = v9;
      if (v8)
      {
        v16 = @"BKOptionMatchAuthTokenToBypassPasscodeBiolockout";
        v17[0] = v8;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v12 = [v10 match:0 withOptions:v11];
      }

      else
      {
        v12 = [v9 match:0 withOptions:0];
      }

      if (v12)
      {
        v13 = PABSLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15[0] = 67109120;
          v15[1] = v12;
          _os_log_impl(&dword_25E0E9000, v13, OS_LOG_TYPE_DEFAULT, "Failed to start matching: %i", v15, 8u);
        }
      }
    }
  }

  else
  {
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_cancelMatching
{
  v3 = [(PABSTouchIDPasscodeController *)self highlightMatcher];
  [v3 setDelegate:0];

  v4 = [(PABSTouchIDPasscodeController *)self highlightMatcher];
  [v4 cancel];

  [(PABSTouchIDPasscodeController *)self setHighlightMatcher:0];
}

- (void)enrollmentControllerDidDismiss
{
  v3.receiver = self;
  v3.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v3 enrollmentControllerDidDismiss];
  [(PABSTouchIDPasscodeController *)self _setupMatching];
}

- (void)biometricBindingDeleted
{
  v2.receiver = self;
  v2.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v2 deleteGlobalAuthACL];
}

- (void)configureBiometricTemplateMatching
{
  v3 = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return;
      }

LABEL_7:

      [(PABSTouchIDPasscodeController *)self matchBiometricIdentitiesWithBiometricTemplates];
      return;
    }

    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D85DD0];
    v5 = 3221225472;
    v6 = __67__PABSTouchIDPasscodeController_configureBiometricTemplateMatching__block_invoke;
    v7 = &unk_279A031D0;
    objc_copyWeak(&v8, &location);
    [(PABSBiometricController *)self fetchBiometricTemplateUUIDsWithCompletion:&v4];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else if (v3 != 1)
  {
    if (v3 != 2)
    {
      return;
    }

    goto LABEL_7;
  }

  if (![(PABSBiometricController *)self isObservingBiometricTemplateFetchingStatus:v4])
  {
    [(PABSTouchIDPasscodeController *)self addObserver:self forKeyPath:@"currentBiometricTemplateFetchStatus" options:1 context:@"BiometricTemplateFetchingState"];
    [(PABSBiometricController *)self setIsObservingBiometricTemplateFetchingStatus:1];
  }
}

void __67__PABSTouchIDPasscodeController_configureBiometricTemplateMatching__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    if ([v3 currentBiometricTemplateFetchStatus] == 3)
    {
      [v3 configureBiometricTemplateMatching];
    }

    else
    {
      [v3 matchBiometricIdentitiesWithBiometricTemplates];
    }
  }
}

- (void)updateWithReplacedUUIDs:(id)a3
{
  v4.receiver = self;
  v4.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v4 updateWithReplacedUUIDs:a3];
  [(PABSTouchIDPasscodeController *)self matchBiometricIdentitiesWithBiometricTemplates];
}

- (void)matchBiometricIdentitiesWithBiometricTemplates
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = [(PABSBiometricController *)self storedBiometricTemplates];
  if ([v16 count])
  {
    v3 = [(PABSTouchIDPasscodeController *)self specifiers];
    v4 = [v3 count];

    if (v4)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = [(PABSTouchIDPasscodeController *)self specifiers];
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v18;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v17 + 1) + 8 * i);
            v11 = [v10 propertyForKey:@"FingerprintIdentity"];
            if (v11)
            {
              v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSTouchIDPasscodeController isBiometricIdentityMatchingGovernmentIDTemplate:](self, "isBiometricIdentityMatchingGovernmentIDTemplate:", v11)}];
              [v10 setProperty:v12 forKey:@"BIOMETRIC_TEMPLATE_BINDING"];

              v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PABSBiometricController boundCredentialsCount](self, "boundCredentialsCount")}];
              [v10 setProperty:v13 forKey:@"BOUND_CREDENTIALS_COUNT_BINDING"];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v7);
      }
    }

    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *MEMORY[0x277D85DE8];
  }
}

- (id)biometricLogo
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:40.0];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"touchid" withConfiguration:v2];
  v4 = [MEMORY[0x277D75348] systemPinkColor];
  v5 = [v3 _flatImageWithColor:v4];
  v6 = [v5 imageWithRenderingMode:1];

  return v6;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 != 6)
    {
      v8 = [(PABSTouchIDPasscodeController *)self localizedPlacardTitle];
      v9 = [(PABSTouchIDPasscodeController *)self localizedPlacardSubtitle];
      v10 = [(PABSTouchIDPasscodeController *)self placardGraphicIconTypeIdentifier];
      v11 = [(PABSBiometricController *)self placardSpecifiersWithTitle:v8 subtitle:v9 icon:v10];
      [v5 addObjectsFromArray:v11];
    }

    v12 = dispatch_queue_create("com.apple.Preferences.highlighting", 0);
    [(PABSTouchIDPasscodeController *)self setHighlightQueue:v12];

    v13 = [(PABSBiometricController *)self useBiometricForSpecifiers];
    v14 = [v13 firstObject];
    [(PABSTouchIDPasscodeController *)self addFooterToUseForGroup:v14];
    [v5 addObjectsFromArray:v13];
    v15 = [(PABSTouchIDPasscodeController *)self fingerprintSpecifiers];
    [v5 addObjectsFromArray:v15];

    v20.receiver = self;
    v20.super_class = PABSTouchIDPasscodeController;
    v16 = [(PABSPasscodeLockController *)&v20 specifiers];
    [v5 addObjectsFromArray:v16];

    v17 = PABS_LocalizedStringForPasscodeLock(@"PASSCODE_PLACARD_TITLE_TOUCH_ID");
    [(PABSTouchIDPasscodeController *)self setTitle:v17];

    v18 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)addFooterToUseForGroup:(id)a3
{
  v4 = MEMORY[0x277D37668];
  v5 = MEMORY[0x277D37630];
  v6 = a3;
  v7 = [v5 bundleWithIdentifier:@"com.apple.onboarding.touchid"];
  v15 = [v4 flowWithBundle:v7];

  v8 = [v15 localizedButtonTitle];
  v9 = PABS_LocalizedStringForPasscodeLock(@"USE_TOUCHID_FOR_GROUP_FOOTER_PREFIX");
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF48]];

  [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  v17.location = [v10 rangeOfString:v8];
  v13 = NSStringFromRange(v17);
  [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF58]];

  v14 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF68]];

  [v6 setObject:@"learnMoreTapped:" forKeyedSubscript:*MEMORY[0x277D3FF50]];
}

- (void)learnMoreTapped:(id)a3
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.touchid"];
  [(PABSTouchIDPasscodeController *)self setPresenter:v4];

  v5 = [(PABSTouchIDPasscodeController *)self presenter];
  [v5 setPresentingViewController:self];

  v6 = [(PABSTouchIDPasscodeController *)self presenter];
  [v6 present];
}

- (id)_fingerprintSpecifierForIdentity:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = v5;
  v7 = &stru_286FD1EF8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [MEMORY[0x277D262A0] sharedConnection];
  v10 = [v9 isFingerprintModificationAllowed];

  if (v10)
  {
    [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  }

  else
  {
    [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  }
  v11 = ;
  [v11 setProperty:v4 forKey:@"FingerprintIdentity"];
  if ([(PABSBiometricController *)self currentBiometricTemplateFetchStatus]== 2)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSTouchIDPasscodeController isBiometricIdentityMatchingGovernmentIDTemplate:](self, "isBiometricIdentityMatchingGovernmentIDTemplate:", v4)}];
    [v11 setProperty:v12 forKey:@"BIOMETRIC_TEMPLATE_BINDING"];
  }

  return v11;
}

- (BOOL)isBiometricIdentityMatchingGovernmentIDTemplate:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PABSBiometricController *)self storedBiometricTemplates];
  if ([v5 count])
  {
    v6 = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];

    if (v6 != 4)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = [(PABSBiometricController *)self storedBiometricTemplates];
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = [v4 uuid];
            LOBYTE(v12) = [v12 isEqual:v13];

            if (v12)
            {

              v14 = 1;
              goto LABEL_14;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)fingerprintSpecifiers
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v4 setIdentifier:@"FINGERPRINTS"];
  v5 = PABS_LocalizedStringForPasscodeLock(@"FINGERPRINTS");
  [v4 setName:v5];

  [v3 addObject:v4];
  v6 = +[PABSBiometrics sharedInstance];
  v7 = [v6 identitiesForIdentityType:1];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(PABSTouchIDPasscodeController *)self _fingerprintSpecifierForIdentity:*(*(&v20 + 1) + 8 * i)];
        [v3 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x277D3FAD8];
  v15 = PABS_LocalizedStringForPasscodeLock(@"ADD_FINGERPRINT");
  v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v16 setButtonAction:sel_addEnrollment_];
  [v16 setIdentifier:@"ADD_FINGERPRINT"];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSBiometricController isEnrollmentAvailable](self, "isEnrollmentAvailable")}];
  [v16 setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

  [v3 addObject:v16];
  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (LAContext)authContext
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(PABSTouchIDPasscodeController *)self specifier];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D40100]];

  authContext = self->_authContext;
  if (v4)
  {
    if (!authContext)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v6 = getLAContextClass_softClass_0;
      v24 = getLAContextClass_softClass_0;
      if (!getLAContextClass_softClass_0)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v28 = __getLAContextClass_block_invoke_0;
        v29 = &unk_279A03148;
        v30 = &v21;
        __getLAContextClass_block_invoke_0(&buf);
        v6 = v22[3];
      }

      v7 = v6;
      _Block_object_dispose(&v21, 8);
      v8 = objc_opt_new();
      v9 = self->_authContext;
      self->_authContext = v8;

      [(LAContext *)self->_authContext setUiDelegate:self];
      v10 = self->_authContext;
      v25 = &unk_286FD6B40;
      v26 = &unk_286FD6B58;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v20 = 0;
      v12 = [(LAContext *)v10 evaluatePolicy:1007 options:v11 error:&v20];
      v13 = v20;

      if (v13)
      {
        v14 = PABSLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 description];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "LAContextClass evaluatePolicy failed: %@", &buf, 0xCu);
        }
      }

      authContext = self->_authContext;
    }

    v16 = authContext;
  }

  else
  {
    self->_authContext = 0;

    v17 = PABSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PABSTouchIDPasscodeController authContext];
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v8 = a5;
  if (a3 == 2)
  {
    v9 = [a4 objectForKey:&unk_286FD6B70];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = [(PABSTouchIDPasscodeController *)self specifier];

      if (!v11)
      {
        v12 = PABSLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PABSPearlPasscodeController event:params:reply:];
        }
      }

      v13 = [(PABSTouchIDPasscodeController *)self specifier];
      v14 = *MEMORY[0x277D40100];
      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277D40100]];

      if (!v15)
      {
        v16 = PABSLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [PABSPearlPasscodeController event:params:reply:];
        }
      }

      v17 = [(PABSTouchIDPasscodeController *)self authContext];
      v18 = [(PABSTouchIDPasscodeController *)self specifier];
      v19 = [v18 objectForKeyedSubscript:v14];
      v20 = [v19 dataUsingEncoding:4];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __52__PABSTouchIDPasscodeController_event_params_reply___block_invoke;
      v21[3] = &unk_279A03300;
      v22 = v8;
      [v17 setCredential:v20 forProcessedEvent:2 credentialType:-1 reply:v21];
    }
  }
}

- (void)addEnrollment:(id)a3
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Touch ID: User pressed Add a Fingerprint", buf, 2u);
  }

  v6 = [(PABSTouchIDPasscodeController *)self dtoController];
  v7 = [v6 isRatchetEnabled];

  if (v7)
  {
    objc_initWeak(buf, self);
    v8 = [(PABSTouchIDPasscodeController *)self dtoController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke;
    v9[3] = &unk_279A03248;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    [v8 gateWithRatchetForOperation:5 forPresentingVC:self completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PABSTouchIDPasscodeController *)self proceedToAddEnrollment:v4];
  }
}

void __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke_cold_1();
    }
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke_113;
    v4[3] = &unk_279A030A8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke_113(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PABSLogForCategory(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Touch ID: Starting addition of fingerprint", v5, 2u);
    }

    [WeakRetained proceedToAddEnrollment:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke_113_cold_1();
    }
  }
}

- (void)proceedToAddEnrollment:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@: - Reloading -", buf, 0xCu);
  }

  [(PABSTouchIDPasscodeController *)self reloadSpecifier:v4];
  objc_initWeak(buf, self);
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PABSTouchIDPasscodeController_proceedToAddEnrollment___block_invoke;
  block[3] = &unk_279A031D0;
  objc_copyWeak(&v10, buf);
  dispatch_async(v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __56__PABSTouchIDPasscodeController_proceedToAddEnrollment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x277CF1C48] sharedInstance];
  v4 = [v3 getEnrollUIViewController:1 bundleName:0];
  if (v4)
  {
    [WeakRetained _cancelMatching];
    v5 = [MEMORY[0x277CF1BF8] manager];
    [v4 setBiometricKit:v5];

    [v4 setDelegate:WeakRetained];
    v6 = [WeakRetained authContext];
    v7 = [v6 externalizedContext];

    if (v7)
    {
      [v4 setProperty:v7 forKey:@"credset"];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__PABSTouchIDPasscodeController_proceedToAddEnrollment___block_invoke_2;
    v8[3] = &unk_279A030A8;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(&v10);
  }
}

void __56__PABSTouchIDPasscodeController_proceedToAddEnrollment___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [[PSEnrollContainerViewController alloc] initWithNibName:0 bundle:0];
  [(PSEnrollContainerViewController *)v2 setEnrollController:*(a1 + 32)];
  [WeakRetained setEnrollContainerController:v2];
  v3 = [[PSEnrollmentNavigationController alloc] initWithRootViewController:v2];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:WeakRetained action:sel_cancelModalFlow];
  v5 = [objc_opt_class() shouldPresentInModalSheet];
  v6 = [(PSEnrollContainerViewController *)v2 navigationItem];
  v7 = v6;
  if (v5)
  {
    [v6 setLeftBarButtonItem:v4];

    [WeakRetained presentSheetForContentViewController:v3];
  }

  else
  {
    [v6 setRightBarButtonItem:v4];

    [(PSEnrollmentNavigationController *)v3 setModalPresentationStyle:0];
    [WeakRetained presentViewController:v3 animated:1 completion:0];
  }
}

- (void)cancelModalFlow
{
  v2.receiver = self;
  v2.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v2 cancelModalFlowWithCompletion:0];
}

- (void)cancelModalFlowWithCompletion:(id)a3
{
  v4 = a3;
  [(PABSTouchIDPasscodeController *)self updateAddFingerprintSpecifier];
  v5.receiver = self;
  v5.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v5 cancelModalFlowWithCompletion:v4];
}

- (void)matchResult:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 uuid];
    if (v4)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = [(PABSTouchIDPasscodeController *)self specifiers];
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v18;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v17 + 1) + 8 * i);
            v11 = [v10 propertyForKey:@"FingerprintIdentity"];
            v12 = v11;
            if (v11)
            {
              v13 = [v11 uuid];
              if (v13 && [v4 isEqual:v13])
              {
                [(PABSTouchIDPasscodeController *)self highlightFingerprintSpecifier:v10];
                v14 = [(PABSTouchIDPasscodeController *)self highlightMatcher];
                v15 = [v14 inUse];

                if ((v15 & 1) == 0)
                {
                  [(PABSTouchIDPasscodeController *)self unhighlightFingerprintSpecifiersAfterDelay:0.5];
                }

                goto LABEL_18;
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)statusMessage:(unsigned int)a3
{
  if (a3 == 64)
  {
    [(PABSTouchIDPasscodeController *)self unhighlightFingerprintSpecifiersAfterDelay:0.0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (a6 == @"BiometricTemplateFetchingState")
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "In KVO, current biometric template fetch status: %ld", buf, 0xCu);
    }

    if ([(PABSBiometricController *)self currentBiometricTemplateFetchStatus]== 2)
    {
      [(PABSTouchIDPasscodeController *)self matchBiometricIdentitiesWithBiometricTemplates];
      [(PABSTouchIDPasscodeController *)self removeObserver:self forKeyPath:v10];
      [(PABSBiometricController *)self setIsObservingBiometricTemplateFetchingStatus:0];
    }

    else if ([(PABSBiometricController *)self currentBiometricTemplateFetchStatus]== 3)
    {
      [(PABSBiometricController *)self fetchBiometricTemplateUUIDsWithCompletion:0];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PABSTouchIDPasscodeController;
    [(PABSTouchIDPasscodeController *)&v13 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__PABSTouchIDPasscodeController_enrollResult_bkIdentity___block_invoke(uint64_t a1)
{
  v2 = +[PABSBiometrics sharedInstance];
  [v2 removeIdentity:*(a1 + 32) completion:0];
}

- (uint64_t)enrollResult:bkIdentity:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke_2_cold_1(v0);
}

@end