@interface PABSPasscodeLockController
+ (int64_t)passcodeGracePeriod;
- (BOOL)_shouldUseLocalAuthenticationBasedPasscodeFlowForPINSheetRequest:(id)a3;
- (BOOL)canBeShownFromSuspendedState;
- (BOOL)gracePeriodPasscodeRecoveryAvailable;
- (BOOL)isAssistantRestricted;
- (BOOL)isPasscodeSet;
- (BOOL)isVoiceDialRestricted;
- (BOOL)isWalletRestricted;
- (BOOL)shouldShowVoiceDial;
- (BOOL)showReplyWithMessage;
- (BOOL)trmUnificationFeatureIsEnabled;
- (BOOL)useAlternateFooterTextForPAU;
- (PABSPasscodeLockController)init;
- (id)_allowAccessWhenLockedSpecifierFooter;
- (id)_makeWipeDeviceGroupFooter;
- (id)assistantUnderLockEnabled:(id)a3;
- (id)autoUnlockEnabled:(id)a3;
- (id)enabledInLockScreen:(id)a3;
- (id)enabledInLockScreenForUSB:(id)a3;
- (id)getDTOSpecifiers;
- (id)getDTOStatusForSpecifier:(id)a3;
- (id)getPendingVisionDeviceIdForSession:(id)a3;
- (id)getStringLabelForPasscodeGroupFooterWithConfig:(BOOL)a3 needsAppleIDAuthWhichNeedsInternet:(BOOL)a4 isEnrolledInBiometrics:(BOOL)a5 sdpIsON:(BOOL)a6;
- (id)getTurnOffAlertDescriptionForFeatureProtectedApps;
- (id)getTurnOffAlertDescriptionForOtherFeatures;
- (id)graceValue:(id)a3;
- (id)homeControlAccessAllowedWhenLocked:(id)a3;
- (id)parseEligibleAutoUnlockDevices:(id)a3;
- (id)parseVisionUnlockCandidateDevices:(id)a3;
- (id)specifiers;
- (id)turnOffPasscodeAlertMessage;
- (id)visionUnlockEnabled:(id)a3;
- (id)voiceDial:(id)a3;
- (id)wallet:(id)a3;
- (id)wipeEnabled:(id)a3;
- (id)workoutHealthDataAllowedWhenLocked:(id)a3;
- (int64_t)fingerprintCount;
- (void)_didUpdatePasscode:(id)a3;
- (void)_localizeGracePeriodTitlesForSpecifier:(id)a3;
- (void)_showDeleteSavedFingerprintsAlert;
- (void)_showLocalAuthenticationPINSheet:(id)a3;
- (void)_updateGracePeriodForSpecifier:(id)a3;
- (void)addGracePeriodPasscodeRecoveryFooterToSpecifier:(id)a3;
- (void)dealloc;
- (void)devicePINController:(id)a3 didAcceptSetPIN:(id)a4;
- (void)devicePINController:(id)a3 shouldAcceptPIN:(id)a4 withCompletion:(id)a5;
- (void)didAcceptRemovePIN;
- (void)disablePasscodeRequiredSpecifiers:(id)a3;
- (void)enableAutoUnlockForDevice:(id)a3 ofSpecifier:(id)a4;
- (void)enableVisionUnlockForDevice:(id)a3 ofSpecifier:(id)a4;
- (void)gracePeriodClearRecoveryPasscode:(id)a3;
- (void)handleDTOStatusChanged;
- (void)homeManager:(id)a3 didUpdateAccessAllowedWhenLocked:(BOOL)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)manager:(id)a3 didDisableAuthenticationForSessionWithID:(id)a4;
- (void)manager:(id)a3 didEnableAuthenticationForSessionWithID:(id)a4;
- (void)manager:(id)a3 didEnableDevice:(id)a4;
- (void)manager:(id)a3 didFailToDisableDeviceForSessionWithID:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didFailToEnableDeviceForSessionWithID:(id)a4 error:(id)a5;
- (void)manager:(id)a3 enablingLockedDevice:(id)a4;
- (void)manager:(id)a3 failedToEnableDevice:(id)a4 error:(id)a5;
- (void)navigationControllerDidPushFirstController:(id)a3;
- (void)openGracePeriodPasscodeRecoveryHelpLink;
- (void)presentAppleIDAuthenticationController;
- (void)presentAutoUnlockEnableFailureAlertWithDevice:(id)a3 withError:(id)a4;
- (void)presentVisionUnlockEnableFailureAlertWithDevice:(id)a3 withError:(id)a4;
- (void)proceedToTurnOffPasscode:(id)a3;
- (void)profileNotification:(id)a3;
- (void)provideNavigationDonations;
- (void)registerObserverAndHandlerForDTOStatusChanges;
- (void)reloadDTOGroup;
- (void)reloadPasscodeGroup;
- (void)scrollToStolenDeviceProtection;
- (void)setAssistantUnderLockEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setAutoUnlockEnabled:(id)a3 specifier:(id)a4;
- (void)setEnabledInLockScreen:(id)a3 specifier:(id)a4;
- (void)setEnabledInLockScreenForUSB:(id)a3 specifier:(id)a4;
- (void)setGraceValue:(id)a3 specifier:(id)a4;
- (void)setHomeControlAccessAllowedWhenLocked:(id)a3 specifier:(id)a4;
- (void)setVisionUnlockEnabled:(id)a3 specifier:(id)a4;
- (void)setVoiceDial:(id)a3 specifier:(id)a4;
- (void)setWallet:(id)a3 specifier:(id)a4;
- (void)setWipeEnabled:(id)a3 specifier:(id)a4;
- (void)setWorkoutHealthDataAllowedWhenLocked:(id)a3 specifier:(id)a4;
- (void)setupAutoUnlockSectionWithSpecifiers:(id)a3;
- (void)setupInternetAvailabilityMonitoring;
- (void)setupPasscodeGroupSpecifier:(id)a3 onOffButtonSpecifier:(id)a4;
- (void)showAlertForPhoneAutoUnlockEnablementOfDevice:(id)a3 ofSpecifier:(id)a4;
- (void)showAlertForVisionUnlockEnablementOfDevice:(id)a3 ofSpecifier:(id)a4;
- (void)showKeychainAlert;
- (void)showLocalAuthenticationPasscodeChangeFlowFromPresentingController:(id)a3 title:(id)a4 passcodePrompt:(id)a5 withCompletion:(id)a6;
- (void)showLocalAuthenticationPasscodeRemoveFlowFromPresentingController:(id)a3 title:(id)a4 passcodePrompt:(id)a5 withCompletion:(id)a6;
- (void)showPINSheet:(id)a3;
- (void)showPINSheet:(id)a3 allowOptionsButton:(BOOL)a4;
- (void)showWeakWarningAlertForController:(id)a3 offerUseAnyway:(BOOL)a4 withCompletion:(id)a5;
- (void)suspend;
- (void)togglePasscode:(id)a3;
- (void)trmUnificationFeatureIsEnabled;
- (void)updateAutoUnlockDevicewithDevice:(id)a3;
- (void)updateAutoUnlockSpecifiers;
- (void)updateGracePeriodSpecifier;
- (void)updatePendingVisionUnlockDeviceForSession:(id)a3 forceReload:(BOOL)a4;
- (void)updatePhoneAutounlockSection:(BOOL)a3;
- (void)updateVoiceDialGroup;
@end

@implementation PABSPasscodeLockController

- (PABSPasscodeLockController)init
{
  v28.receiver = self;
  v28.super_class = PABSPasscodeLockController;
  v2 = [(PABSPasscodeLockController *)&v28 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionRestrictionChangedNotification" object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionEffectiveSettingsChangedNotification" object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionPasscodeChangedNotification" object:0];

    v6 = [MEMORY[0x277D07D70] sharedInstance];
    [v6 addListenerID:@"com.apple.Preferences" forService:0];

    v7 = [MEMORY[0x277D07D70] sharedInstance];
    [v7 addListenerID:@"com.apple.Preferences" forService:1];

    v8 = +[PABSUnlockWithAppleWatchManager sharedInstance];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __34__PABSPasscodeLockController_init__block_invoke;
    v26 = &unk_279A03990;
    v9 = v2;
    v27 = v9;
    [v8 canUseWatchToUnlockWithCompletionHandler:&v23];

    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v10 = getHMHomeManagerClass_softClass;
    v33 = getHMHomeManagerClass_softClass;
    if (!getHMHomeManagerClass_softClass)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __getHMHomeManagerClass_block_invoke;
      v29[3] = &unk_279A03148;
      v29[4] = &v30;
      __getHMHomeManagerClass_block_invoke(v29);
      v10 = v31[3];
    }

    v11 = v10;
    _Block_object_dispose(&v30, 8);
    v12 = [v10 alloc];
    v13 = [v12 initWithOptions:{0, v23, v24, v25, v26}];
    homeManager = v9->_homeManager;
    v9->_homeManager = v13;

    [(HMHomeManager *)v9->_homeManager setDelegate:v9];
    v9->_shouldIncludeAccessoriesToggle = ![(PABSPasscodeLockController *)v9 trmUnificationFeatureIsEnabled];
    v15 = objc_opt_new();
    [(PABSPasscodeLockController *)v9 setAutoUnlockManager:v15];

    v16 = [(PABSPasscodeLockController *)v9 autoUnlockManager];
    [v16 setDelegate:v9];

    v17 = objc_alloc(MEMORY[0x277D54C10]);
    v18 = [v17 initWithQueue:MEMORY[0x277D85CD0]];
    [(PABSPasscodeLockController *)v9 setAuthenticationManager:v18];

    v19 = [(PABSPasscodeLockController *)v9 authenticationManager];
    [v19 setDelegate:v9];

    v20 = objc_opt_new();
    dtoController = v9->_dtoController;
    v9->_dtoController = v20;

    [(PABSPasscodeLockController *)v9 registerObserverAndHandlerForDTOStatusChanges];
    [(PABSPasscodeLockController *)v9 setupInternetAvailabilityMonitoring];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D07D70] sharedInstance];
  [v3 removeListenerID:@"com.apple.Preferences" forService:0];

  v4 = [MEMORY[0x277D07D70] sharedInstance];
  [v4 removeListenerID:@"com.apple.Preferences" forService:1];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277CBEEB0], 0);
  v6 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v6, self, *MEMORY[0x277CD4768], 0);
  [(PABSPasscodeLockController *)self setIsObservingDTOStatusChange:0];
  v7 = PABSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "DTO: Stopped observing status changes", buf, 2u);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self];

  nw_path_monitor_cancel(self->_pathMonitor);
  v9.receiver = self;
  v9.super_class = PABSPasscodeLockController;
  [(PABSPasscodeLockController *)&v9 dealloc];
}

- (void)setupInternetAvailabilityMonitoring
{
  v19 = *MEMORY[0x277D85DE8];
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v4 = nw_path_evaluator_copy_path();
  status = nw_path_get_status(v4);

  if (status == nw_path_status_satisfied)
  {
    self->_isInternetReachable = 1;
  }

  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInternetReachable];
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Internet status: at startup [%@]", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = nw_path_monitor_create();
  pathMonitor = self->_pathMonitor;
  self->_pathMonitor = v8;

  v10 = self->_pathMonitor;
  v11 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85CD0];
  nw_path_monitor_set_queue(v10, v11);

  v13 = self->_pathMonitor;
  update_handler[0] = MEMORY[0x277D85DD0];
  update_handler[1] = 3221225472;
  update_handler[2] = __65__PABSPasscodeLockController_setupInternetAvailabilityMonitoring__block_invoke;
  update_handler[3] = &unk_279A03B38;
  objc_copyWeak(&v16, buf);
  nw_path_monitor_set_update_handler(v13, update_handler);
  nw_path_monitor_start(self->_pathMonitor);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v14 = *MEMORY[0x277D85DE8];
}

void __65__PABSPasscodeLockController_setupInternetAvailabilityMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  status = nw_path_get_status(v3);

  if ([WeakRetained isInternetReachable] != (status == nw_path_status_satisfied))
  {
    [WeakRetained setIsInternetReachable:status == nw_path_status_satisfied];
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "isInternetReachable")}];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Internet status: changed to [%@]. - Reloading Pane -", &v9, 0xCu);
    }

    [WeakRetained reloadSpecifiers];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)provideNavigationDonations
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Passcode"];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  if (PSIsPearlAvailable())
  {
    v5 = @"Face ID & Passcode";
  }

  else
  {
    v5 = @"Touch ID & Passcode";
  }

  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 bundleURL];
  v9 = [v4 initWithKey:v5 table:0 locale:v6 bundleURL:v8];

  if (PSIsPearlAvailable())
  {
    v10 = @"com.apple.graphic-icon.face-id";
  }

  else
  {
    v10 = @"com.apple.graphic-icon.touch-id";
  }

  [(PABSPasscodeLockController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v10 title:v9 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v3];
  v11 = PABSLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "Provided navigation donations for %@", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPasscodeSet
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (int64_t)fingerprintCount
{
  if (!PSSupportsMesa())
  {
    return 0;
  }

  v2 = +[PABSBiometrics identities];
  v3 = [v2 count];

  return v3;
}

- (void)_showDeleteSavedFingerprintsAlert
{
  v3 = [(PABSPasscodeLockController *)self fingerprintCount];
  v4 = MEMORY[0x277D75110];
  v5 = v3 <= 1;
  if (v3 <= 1)
  {
    v6 = @"DELETE_SAVED_FINGER_SINGULAR";
  }

  else
  {
    v6 = @"DELETE_SAVED_FINGER_PLURAL";
  }

  if (v5)
  {
    v7 = @"DELETE_SAVED_FINGER_DETAIL_SINGULAR";
  }

  else
  {
    v7 = @"DELETE_SAVED_FINGER_DETAIL_PLURAL";
  }

  if (v5)
  {
    v8 = @"KEEP_SINGULAR";
  }

  else
  {
    v8 = @"KEEP_PLURAL";
  }

  if (v5)
  {
    v9 = @"DELETE_SINGULAR";
  }

  else
  {
    v9 = @"DELETE_PLURAL";
  }

  v10 = PABS_LocalizedStringForPasscodeLock(v6);
  v11 = PABS_LocalizedStringForPasscodeLock(v7);
  v12 = [v4 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  v14 = PABS_LocalizedStringForPasscodeLock(v8);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__PABSPasscodeLockController__showDeleteSavedFingerprintsAlert__block_invoke;
  v20[3] = &unk_279A030F8;
  v20[4] = self;
  v15 = [v13 actionWithTitle:v14 style:1 handler:v20];
  [v12 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = PABS_LocalizedStringForPasscodeLock(v9);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__PABSPasscodeLockController__showDeleteSavedFingerprintsAlert__block_invoke_2;
  v19[3] = &unk_279A030F8;
  v19[4] = self;
  v18 = [v16 actionWithTitle:v17 style:0 handler:v19];
  [v12 addAction:v18];

  [(PABSPasscodeLockController *)self presentViewController:v12 animated:1 completion:0];
}

void __63__PABSPasscodeLockController__showDeleteSavedFingerprintsAlert__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 specifierForID:@"PASSCODE_TOGGLE"];
  [v1 showPINSheet:v2 allowOptionsButton:1];
}

void __63__PABSPasscodeLockController__showDeleteSavedFingerprintsAlert__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEA60]);
  v3 = +[PABSBiometrics sharedInstance];
  v4 = [v3 identitiesForIdentityType:1];
  v5 = [v2 initWithArray:v4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = +[PABSBiometrics sharedInstance];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __63__PABSPasscodeLockController__showDeleteSavedFingerprintsAlert__block_invoke_3;
        v16[3] = &unk_279A03B60;
        v16[4] = *(a1 + 32);
        [v12 removeIdentity:v11 completion:v16];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = *(a1 + 32);
  v14 = [v13 specifierForID:@"PASSCODE_TOGGLE"];
  [v13 showPINSheet:v14 allowOptionsButton:1];

  v15 = *MEMORY[0x277D85DE8];
}

void __63__PABSPasscodeLockController__showDeleteSavedFingerprintsAlert__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v8 = [v5 description];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "RemoveIdentity: Result [%@] Error [%@] - Reloading Pane -", &v10, 0x16u);
  }

  [*(a1 + 32) reloadSpecifiers];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)reloadPasscodeGroup
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(PABSPasscodeLockController *)self specifierForID:@"PASSCODE_GROUP"];
  v4 = [(PABSPasscodeLockController *)self specifierForID:@"PASSCODE_TOGGLE"];
  [(PABSPasscodeLockController *)self setupPasscodeGroupSpecifier:v3 onOffButtonSpecifier:v4];
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 identifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@: - Reloading -", &v8, 0xCu);
  }

  [(PABSPasscodeLockController *)self reloadSpecifier:v3 animated:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setupPasscodeGroupSpecifier:(id)a3 onOffButtonSpecifier:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v6 = a4;
  v7 = +[PABSPasscode sharedInstance];
  v8 = [v7 isPasscodeSet];

  if (v8)
  {
    v9 = @"PASSCODE_OFF";
  }

  else
  {
    v9 = @"PASSCODE_ON";
  }

  v10 = PABS_LocalizedStringForPasscodeLock(v9);
  [v6 setName:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  [v6 setProperty:v11 forKey:*MEMORY[0x277D401C0]];

  if (v8)
  {
    v12 = ![(PABSPasscodeLockController *)self isInternetReachable]&& [(PABSPasscodeLockController *)self shouldPresentAppleIDAuthenticationForTogglingPasscode];
    v14 = [MEMORY[0x277D262A0] sharedConnection];
    v15 = [v14 isPasscodeRequired];

    v16 = [(PABSPasscodeLockController *)self dtoController];
    LODWORD(v17) = [v16 isRatchetEnabled];

    v18 = +[PABSBiometrics identities];
    v19 = [v18 count];
    v20 = v19 == 0;

    v40 = v15;
    v41 = v12;
    v21 = v12 | v17 | v15;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:v20 & ~v21];
    [v6 setProperty:v22 forKey:*MEMORY[0x277D3FF38]];

    v23 = PABSLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v19 != 0;
      [MEMORY[0x277CCABB0] numberWithInt:v20 & ~v21];
      v38 = v39 = v17;
      v35 = [MEMORY[0x277CCABB0] numberWithBool:v41];
      v25 = [MEMORY[0x277CCABB0] numberWithBool:v40 & 1];
      [MEMORY[0x277CCABB0] numberWithBool:v17 & 1];
      v26 = v37 = v19;
      v27 = [MEMORY[0x277CCABB0] numberWithBool:v24];
      v36 = [(PABSPasscodeLockController *)self specifier];
      v17 = [v36 identifier];
      v28 = MEMORY[0x277CCABB0];
      v34 = [(PABSPasscodeLockController *)self specifier];
      v29 = [v34 objectForKeyedSubscript:*MEMORY[0x277D40100]];
      v30 = [v28 numberWithInt:v29 != 0];
      *buf = 138413826;
      v44 = v38;
      v45 = 2112;
      v46 = v35;
      v47 = 2112;
      v48 = v25;
      v49 = 2112;
      v50 = v26;
      v51 = 2112;
      v52 = v27;
      v53 = 2112;
      v54 = v17;
      v55 = 2112;
      v56 = v30;
      _os_log_impl(&dword_25E0E9000, v23, OS_LOG_TYPE_DEFAULT, "Passcode Group: Passcode On/Off enablement status [%@] | needsAppleIDAuthWhichNeedsInternet [%@] | isMC [%@] | sdpIsON [%@] | isEnrolledInBiometrics [%@] | parentSpecifier [%@] | retrievedCreds [%@]", buf, 0x48u);

      v19 = v37;
      LOBYTE(v17) = v39;
    }

    v13 = [(PABSPasscodeLockController *)self getStringLabelForPasscodeGroupFooterWithConfig:v40 & 1 needsAppleIDAuthWhichNeedsInternet:v41 isEnrolledInBiometrics:v19 != 0 sdpIsON:v17 & 1];
    if ([v13 length])
    {
      v31 = SFLocalizableWAPIStringKeyForKey();
      v32 = PABS_LocalizedStringForPasscodeLock(v31);
      [v42 setProperty:v32 forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      [v42 removePropertyForKey:*MEMORY[0x277D3FF88]];
    }
  }

  else
  {
    v13 = PABSLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0E9000, v13, OS_LOG_TYPE_DEFAULT, "Passcode Group: Passcode not set", buf, 2u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)getStringLabelForPasscodeGroupFooterWithConfig:(BOOL)a3 needsAppleIDAuthWhichNeedsInternet:(BOOL)a4 isEnrolledInBiometrics:(BOOL)a5 sdpIsON:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = [MEMORY[0x277CCAB68] stringWithString:@"PASSCODE_GROUP_FOOTER_WIFI_DEFAULT"];
  v11 = v10;
  if (a3)
  {
    v12 = @"_MANAGED";
LABEL_12:
    [v11 appendString:v12];
    goto LABEL_13;
  }

  if (v8)
  {
    [v10 appendString:@"_NOCONNECTIVITY"];
    if (!v7)
    {
LABEL_5:
      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_11:
      v12 = @"_SDPISON";
      goto LABEL_12;
    }
  }

  else if (!v7)
  {
    goto LABEL_5;
  }

  v13 = PSIsPearlAvailable();
  v14 = @"_TOUCHID";
  if (v13)
  {
    v14 = @"_FACEID";
  }

  [v11 appendFormat:@"%@", v14];
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_13:
  v15 = [v11 copy];

  return v15;
}

- (id)turnOffPasscodeAlertMessage
{
  v3 = [MEMORY[0x277CCACA8] string];
  v4 = [(PABSPasscodeLockController *)self getTurnOffAlertDescriptionForFeatureProtectedApps];
  v5 = [(PABSPasscodeLockController *)self getTurnOffAlertDescriptionForOtherFeatures];
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &stru_286FD1EF8;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v4;

  if (v6)
  {
    v8 = [(__CFString *)v7 stringByAppendingFormat:@"\n\n%@", v6];
LABEL_8:

    v7 = v8;
  }

  v9 = v7;

  return v7;
}

- (id)getTurnOffAlertDescriptionForFeatureProtectedApps
{
  if (PSIsPearlAvailable())
  {
    v2 = @"TURN_OFF_PASSCODE_AFFECTS_PROTECTED_APPS_FACE_ID";
  }

  else
  {
    v2 = @"TURN_OFF_PASSCODE_AFFECTS_PROTECTED_APPS_TOUCH_ID";
  }

  v3 = PABS_LocalizedStringForPasscodeLock(v2);

  return v3;
}

- (id)getTurnOffAlertDescriptionForOtherFeatures
{
  v3 = PSHasStockholmPass();
  Helper_x8__SESExternalProviderCredentialPresent = authPtrLoadHelper_x8__SESExternalProviderCredentialPresent(v4);
  if (*(v6 + 3152))
  {
    inited = SESExternalProviderCredentialPresent_delayInitStub(Helper_x8__SESExternalProviderCredentialPresent);
  }

  else
  {
    inited = 0;
  }

  if (((v3 | self->_canUnlockWatch) & 1) == 0)
  {
    v13 = 0;
    v11 = 0;
    if (!inited)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  canUnlockWatch = self->_canUnlockWatch;
  v9 = PSPreferencesFrameworkBundle();
  v10 = [MEMORY[0x277CCAB68] stringWithString:@"TURN_OFF_PASSCODE_LOCK_CONFIRMATION"];
  v11 = v10;
  if (!v3)
  {
    v12 = @"Passcode Lock";
    if (!canUnlockWatch)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [v10 appendString:@"_STOCKHOLM"];
  v12 = @"Payment_Prefs";
  if (canUnlockWatch)
  {
LABEL_11:
    [v11 appendString:@"_WATCH"];
    v12 = @"Watch_Prefs";
  }

LABEL_12:
  if (v11)
  {
    v13 = [v9 localizedStringForKey:v11 value:&stru_286FD1EF8 table:v12];
    if (PSUsedByHSA2Account())
    {
      v14 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF_PASSCODE_HSA2_ENDING");
      v15 = [v13 stringByAppendingString:v14];

      v13 = v15;
    }
  }

  else
  {
    v13 = 0;
  }

  if (inited)
  {
LABEL_17:
    v16 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF_PASSCODE_LOCK_CONFIRMATION_VIENA");
    v17 = v16;
    if (v16)
    {
      if (v13)
      {
        v18 = [v13 stringByAppendingFormat:@"\n\n%@", v16];

        v13 = v18;
      }

      else
      {
        v13 = v16;
      }
    }
  }

LABEL_22:

  return v13;
}

- (void)togglePasscode:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277D401C0];
  v6 = [v4 propertyForKey:*MEMORY[0x277D401C0]];
  if ([v6 intValue])
  {
  }

  else
  {
    v12 = [(PABSPasscodeLockController *)self fingerprintCount];

    if (v12 >= 1)
    {
      [(PABSPasscodeLockController *)self _showDeleteSavedFingerprintsAlert];
      goto LABEL_10;
    }
  }

  v7 = [v4 propertyForKey:v5];
  v8 = [v7 intValue];

  if (v8 == 1)
  {
    v9 = [(PABSPasscodeLockController *)self dtoController];
    v10 = [v9 isRatchetEnabled];

    if (v10)
    {
      objc_initWeak(&location, self);
      v11 = [(PABSPasscodeLockController *)self dtoController];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __45__PABSPasscodeLockController_togglePasscode___block_invoke;
      v13[3] = &unk_279A03248;
      objc_copyWeak(&v15, &location);
      v14 = v4;
      [v11 gateWithRatchetForOperation:7 forPresentingVC:self completion:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PABSPasscodeLockController *)self proceedToTurnOffPasscode:v4];
    }
  }

  else
  {
    [(PABSPasscodeLockController *)self showPINSheet:v4 allowOptionsButton:1];
  }

LABEL_10:
}

void __45__PABSPasscodeLockController_togglePasscode___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __45__PABSPasscodeLockController_togglePasscode___block_invoke_cold_1();
    }
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__PABSPasscodeLockController_togglePasscode___block_invoke_506;
    v4[3] = &unk_279A030A8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __45__PABSPasscodeLockController_togglePasscode___block_invoke_506(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PABSLogForCategory(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Turn Off Passcode: Proceeding", v5, 2u);
    }

    [WeakRetained proceedToTurnOffPasscode:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__PABSPasscodeLockController_togglePasscode___block_invoke_506_cold_1();
    }
  }
}

- (void)proceedToTurnOffPasscode:(id)a3
{
  v4 = a3;
  v5 = [(PABSPasscodeLockController *)self turnOffPasscodeAlertMessage];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D75110];
  v7 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF_PASSCODE_LOCK_QUESTION");
  v8 = [v6 alertControllerWithTitle:v7 message:v5 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v11 = [v9 actionWithTitle:v10 style:1 handler:0];
  [v8 addAction:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF");
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __55__PABSPasscodeLockController_proceedToTurnOffPasscode___block_invoke;
  v18 = &unk_279A03B88;
  objc_copyWeak(&v19, &location);
  v14 = [v12 actionWithTitle:v13 style:2 handler:&v15];
  [v8 addAction:{v14, v15, v16, v17, v18}];

  [(PABSPasscodeLockController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

void __55__PABSPasscodeLockController_proceedToTurnOffPasscode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained shouldPresentAppleIDAuthenticationForTogglingPasscode])
  {
    [WeakRetained presentAppleIDAuthenticationController];
  }

  else
  {
    v1 = [WeakRetained specifierForID:@"PASSCODE_TOGGLE"];
    [WeakRetained showPINSheet:v1];
  }
}

- (void)presentAppleIDAuthenticationController
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v3 = getAKAppleIDAuthenticationInAppContextClass_softClass;
  v30 = getAKAppleIDAuthenticationInAppContextClass_softClass;
  if (!getAKAppleIDAuthenticationInAppContextClass_softClass)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getAKAppleIDAuthenticationInAppContextClass_block_invoke;
    v25 = &unk_279A03148;
    v26 = &v27;
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke(&v22);
    v3 = v28[3];
  }

  v4 = v3;
  _Block_object_dispose(&v27, 8);
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v7 = [v6 aa_primaryAppleAccount];
  v8 = [v7 username];
  [v5 setUsername:v8];

  v9 = [v7 aa_personID];
  [v5 setDSID:v9];

  v10 = [v7 aa_altDSID];
  [v5 setAltDSID:v10];

  [v5 setAuthenticationType:2];
  [v5 setPresentingViewController:self];
  [v5 setIsUsernameEditable:0];
  v11 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF");
  [v5 setDefaultButtonString:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF_PASSCODE_HSA2_AUTH_PROMPT");
  v14 = [v7 username];
  v15 = [v12 localizedStringWithFormat:v13, v14];
  [v5 setReason:v15];

  [v5 setEnablePasscodeAuth:0];
  objc_initWeak(&location, self);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v16 = getAKAppleIDAuthenticationControllerClass_softClass;
  v30 = getAKAppleIDAuthenticationControllerClass_softClass;
  if (!getAKAppleIDAuthenticationControllerClass_softClass)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getAKAppleIDAuthenticationControllerClass_block_invoke;
    v25 = &unk_279A03148;
    v26 = &v27;
    __getAKAppleIDAuthenticationControllerClass_block_invoke(&v22);
    v16 = v28[3];
  }

  v17 = v16;
  _Block_object_dispose(&v27, 8);
  v18 = objc_alloc_init(v16);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__PABSPasscodeLockController_presentAppleIDAuthenticationController__block_invoke;
  v19[3] = &unk_279A03BB0;
  objc_copyWeak(&v20, &location);
  [v18 authenticateWithContext:v5 completion:v19];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);
}

void __68__PABSPasscodeLockController_presentAppleIDAuthenticationController__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    block[7] = v3;
    block[8] = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PABSPasscodeLockController_presentAppleIDAuthenticationController__block_invoke_2;
    block[3] = &unk_279A03008;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __68__PABSPasscodeLockController_presentAppleIDAuthenticationController__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 specifierForID:@"PASSCODE_TOGGLE"];
  [v1 showPINSheet:v2];
}

- (void)showPINSheet:(id)a3
{
  v4 = a3;
  if ([(PABSPasscodeLockController *)self _shouldUseLocalAuthenticationBasedPasscodeFlowForPINSheetRequest:v4])
  {
    [(PABSPasscodeLockController *)self _showLocalAuthenticationPINSheet:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PABSPasscodeLockController;
    [(PABSPasscodeLockController *)&v5 showPINSheet:v4 allowOptionsButton:1];
  }
}

- (void)showPINSheet:(id)a3 allowOptionsButton:(BOOL)a4
{
  v5 = a3;
  if ([(PABSPasscodeLockController *)self _shouldUseLocalAuthenticationBasedPasscodeFlowForPINSheetRequest:v5])
  {
    [(PABSPasscodeLockController *)self _showLocalAuthenticationPINSheet:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PABSPasscodeLockController;
    [(PABSPasscodeLockController *)&v6 showPINSheet:v5 allowOptionsButton:1];
  }
}

- (void)_showLocalAuthenticationPINSheet:(id)a3
{
  v4 = [a3 propertyForKey:*MEMORY[0x277D401C0]];
  v5 = [v4 intValue];

  if (!v5)
  {
    v6 = @"PMSET";
LABEL_7:
    v7 = PABS_LocalizedStringForPasscodeLock(v6);
    [PABSPasscodeLockController showLocalAuthenticationPasscodeChangeFlowFromPresentingController:"showLocalAuthenticationPasscodeChangeFlowFromPresentingController:title:passcodePrompt:withCompletion:" title:self passcodePrompt:? withCompletion:?];
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    if (v5 != 2)
    {
      return;
    }

    v6 = @"PMCHANGE";
    goto LABEL_7;
  }

  v7 = PABS_LocalizedStringForPasscodeLock(@"PMREMOVE");
  [PABSPasscodeLockController showLocalAuthenticationPasscodeRemoveFlowFromPresentingController:"showLocalAuthenticationPasscodeRemoveFlowFromPresentingController:title:passcodePrompt:withCompletion:" title:self passcodePrompt:? withCompletion:?];
LABEL_8:
}

- (BOOL)_shouldUseLocalAuthenticationBasedPasscodeFlowForPINSheetRequest:(id)a3
{
  v4 = [a3 propertyForKey:*MEMORY[0x277D401C0]];
  v5 = [v4 intValue];

  if ((v5 & 0xFFFFFFFD) != 0)
  {
    if (v5 == 1)
    {

      return [(PABSPasscodeLockController *)self shouldUseLocalAuthenticationBasedPasscodeFlowForRemovePasscodeRequests];
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(PABSPasscodeLockController *)self shouldUseLocalAuthenticationBasedPasscodeFlowForChangePasscodeRequests];
  }
}

- (void)showLocalAuthenticationPasscodeRemoveFlowFromPresentingController:(id)a3 title:(id)a4 passcodePrompt:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CD4838]);
  [(PABSPasscodeLockController *)self set_passcodeRemovalService:v14];

  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D2C900];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeRemoveFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke;
  v28[3] = &unk_279A03BD8;
  objc_copyWeak(&v32, &location);
  v16 = v11;
  v29 = v16;
  v17 = v12;
  v30 = v17;
  v18 = v10;
  v31 = v18;
  v19 = [v15 lazyFutureWithBlock:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeRemoveFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_538;
  v26[3] = &unk_279A03C00;
  objc_copyWeak(&v27, &location);
  v20 = [v19 addSuccessBlock:v26];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeRemoveFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_2;
  v23[3] = &unk_279A03C28;
  objc_copyWeak(&v25, &location);
  v21 = v13;
  v24 = v21;
  v22 = [v19 addCompletionBlock:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeRemoveFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained _passcodeRemovalService];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v14 = 138543874;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Starting Passcode Removal Service (%{public}@) with title '%{public}@' and prompt '%{public}@'.", &v14, 0x20u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CD4840]);
  [v9 setTitle:*(a1 + 32)];
  [v9 setPasscodePrompt:*(a1 + 40)];
  v10 = [WeakRetained _passcodeRemovalService];
  v11 = *(a1 + 48);
  v12 = [v3 errorOnlyCompletionHandlerAdapter];

  [v10 startInParentVC:v11 options:v9 completion:v12];
  v13 = *MEMORY[0x277D85DE8];
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeRemoveFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didUpdatePasscode:0];
  [WeakRetained showKeychainAlert];
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeRemoveFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = PABSLogForCategory(0);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeRemoveFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained _passcodeRemovalService];
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Successfully completed passcode removal request (%{public}@).", &v11, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v4);
  }

  [WeakRetained set_passcodeRemovalService:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)showLocalAuthenticationPasscodeChangeFlowFromPresentingController:(id)a3 title:(id)a4 passcodePrompt:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CD4820]);
  [(PABSPasscodeLockController *)self set_passcodeChangeService:v14];

  v15 = objc_alloc_init(PasscodeChangeNavigationController);
  [(PasscodeChangeNavigationController *)v15 setCustomDelegate:self];
  objc_initWeak(location, self);
  v16 = MEMORY[0x277D2C900];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke;
  v40[3] = &unk_279A03BD8;
  objc_copyWeak(&v44, location);
  v17 = v11;
  v41 = v17;
  v18 = v12;
  v42 = v18;
  v19 = v15;
  v43 = v19;
  v20 = [v16 lazyFutureWithBlock:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_544;
  v38[3] = &unk_279A03C78;
  objc_copyWeak(&v39, location);
  v21 = [v20 flatMap:v38];
  v22 = [v21 flatMap:&__block_literal_global_4];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_548;
  v36[3] = &unk_279A03CC0;
  objc_copyWeak(&v37, location);
  v23 = [v22 flatMap:v36];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_553;
  v31[3] = &unk_279A03CE8;
  objc_copyWeak(&v35, location);
  v24 = v10;
  v32 = v24;
  v25 = v19;
  v33 = v25;
  v26 = v13;
  v34 = v26;
  v27 = [v23 addCompletionBlock:v31];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_555;
  v29[3] = &unk_279A03D10;
  objc_copyWeak(&v30, location);
  v28 = [v22 addCompletionBlock:v29];
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v44);
  objc_destroyWeak(location);
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained _passcodeChangeService];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v14 = 138543874;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Starting Passcode Change Service (%{public}@) with title '%{public}@' and prompt '%{public}@'.", &v14, 0x20u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CD4828]);
  [v9 setTitle:*(a1 + 32)];
  [v9 setPasscodePrompt:*(a1 + 40)];
  v10 = [WeakRetained _passcodeChangeService];
  v11 = *(a1 + 48);
  v12 = [v3 completionHandlerAdapter];

  [v10 startInParentVC:v11 options:v9 completion:v12];
  v13 = *MEMORY[0x277D85DE8];
}

id __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_544(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_2;
  v9[3] = &unk_279A03C50;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = v3;
  v7 = [v5 lazyFutureWithBlock:v9];

  return v7;
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) _passcodeChangeService];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Passcode Change Service (%{public}@) completed, extracting credentials.", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [v3 completionHandlerAdapter];

  [v6 credentialOfType:-9 reply:v7];
  v8 = *MEMORY[0x277D85DE8];
}

id __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_546(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "Extracted Credentials, continuing to update system state.", v8, 2u);
  }

  v4 = MEMORY[0x277D2C900];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];

  v6 = [v4 futureWithResult:v5];

  return v6;
}

id __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_548(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Extracted Credentials, Updating Keychain State.", buf, 2u);
  }

  v6 = MEMORY[0x277D2C900];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_549;
  v10[3] = &unk_279A03C50;
  v11 = v3;
  v12 = WeakRetained;
  v7 = v3;
  v8 = [v6 lazyFutureWithBlock:v10];

  return v8;
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_549(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D3FA38] sharedManager];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_2_551;
  v8[3] = &unk_279A03B60;
  v9 = v3;
  v7 = v3;
  [v4 promptForDevicePasscodeChangeToPasscode:v6 overController:v5 completion:v8];
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_2_551(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_3;
  v6[3] = &unk_279A030D0;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PABSLogForCategory(0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "Updating Keychain State failed with error '%{public}@'.", &v8, 0xCu);
    }

    result = [*(a1 + 40) finishWithError:*(a1 + 32)];
  }

  else
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "Updating Keychain State succeeded.", &v8, 2u);
    }

    result = [*(a1 + 40) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_553(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = PABSLogForCategory(0);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_553_cold_1();
    }

    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained _passcodeChangeService];
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Successfully completed passcode change request (%{public}@).", &v14, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.private.restrict-post.settings.userchangedpasscode", 0, 0, 1u);
    [MEMORY[0x277D05528] startReviewDeviceAccessWithPresentingViewController:*(a1 + 40)];
    v10 = PABSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "Passcode service was presented from: (%{public}@).", &v14, 0xCu);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v4);
  }

  [WeakRetained set_passcodeChangeService:0];

  v13 = *MEMORY[0x277D85DE8];
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_555(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_555_cold_1();
    }
  }

  else
  {
    [WeakRetained _didUpdatePasscode:v5];
  }
}

- (void)navigationControllerDidPushFirstController:(id)a3
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Passcode Change Service: Pushed first controller, ready to present", v6, 2u);
  }

  [(PABSPasscodeLockController *)self presentViewController:v4 animated:1 completion:&__block_literal_global_558];
}

+ (int64_t)passcodeGracePeriod
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveValueForSetting:*MEMORY[0x277D25FE0]];
  v4 = [v3 integerValue];

  return v4;
}

- (id)graceValue:(id)a3
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 effectiveValueForSetting:*MEMORY[0x277D25FE0]];

  return v4;
}

- (void)setGraceValue:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(PABSPasscodeLockController *)self specifier];
  v7 = [v6 propertyForKey:*MEMORY[0x277D40100]];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PABSPasscodeLockController setGraceValue:specifier:];
  }

  if (!v8)
  {
LABEL_7:
    v10 = PABSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController setGraceValue:specifier:];
    }
  }

LABEL_10:
  v11 = [MEMORY[0x277D262A0] sharedConnection];
  [v11 setValue:v5 forSetting:*MEMORY[0x277D25FE0] passcode:v8];
}

- (void)updateGracePeriodSpecifier
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(PABSPasscodeLockController *)self specifierForID:@"PASSCODE_REQ"];
  [(PABSPasscodeLockController *)self _updateGracePeriodForSpecifier:v3];
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 identifier];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "%@: - Reloading -", &v7, 0xCu);
  }

  [(PABSPasscodeLockController *)self reloadSpecifier:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateGracePeriodForSpecifier:(id)a3
{
  v25 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 effectiveParametersForValueSetting:*MEMORY[0x277D25FE0]];
  v6 = [v5 objectForKey:*MEMORY[0x277D26188]];
  v7 = [v6 intValue];

  LOBYTE(v4) = PSSupportsMesa();
  v8 = PSIsPearlAvailable();
  if ((v4 & 1) != 0 || v8)
  {
    v9 = +[PABSBiometrics identities];
    if ([v9 count])
    {
      v10 = +[PABSBiometrics sharedInstance];
      v11 = [v10 isFingerprintUnlockAllowed];

      if (v11)
      {
        v7 = 0;
      }
    }

    else
    {
    }
  }

  v12 = MEMORY[0x277CBEB18];
  v13 = [v25 propertyForKey:@"gracePeriodValues"];
  v14 = [v12 arrayWithArray:v13];

  v15 = MEMORY[0x277CBEB38];
  v16 = [v25 propertyForKey:@"gracePeriodShortTitles"];
  v17 = [v15 dictionaryWithDictionary:v16];

  v18 = MEMORY[0x277CBEB38];
  v19 = [v25 propertyForKey:@"gracePeriodTitles"];
  v20 = [v18 dictionaryWithDictionary:v19];

  v21 = [v14 count];
  if (v21 >= 1)
  {
    v22 = v21 + 1;
    do
    {
      v23 = [v14 objectAtIndex:v22 - 2];
      if ([v23 intValue] > v7)
      {
        [v17 removeObjectForKey:v23];
        [v20 removeObjectForKey:v23];
        [v14 removeObjectAtIndex:v22 - 2];
      }

      --v22;
    }

    while (v22 > 1);
  }

  [v25 setValues:v14];
  [v25 setTitleDictionary:v20];
  [v25 setShortTitleDictionary:v17];
  if ([v14 count] < 2)
  {
    [v25 removePropertyForKey:*MEMORY[0x277D40118]];
  }

  else
  {
    v24 = PABS_LocalizedStringForPasscodeLock(@"SECURITY_MSG");
    [v25 setProperty:v24 forKey:*MEMORY[0x277D40118]];
  }

  [(PABSPasscodeLockController *)self _localizeGracePeriodTitlesForSpecifier:v25];
}

- (void)_localizeGracePeriodTitlesForSpecifier:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((_localizeGracePeriodTitlesForSpecifier__sSubscribed & 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, apple_numbers_changed_notification, *MEMORY[0x277CBEEB0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    _localizeGracePeriodTitlesForSpecifier__sSubscribed = 1;
  }

  v6 = [v4 values];
  v7 = [v4 titleDictionary];
  v35 = [v7 mutableCopy];

  v32 = v4;
  v8 = [v4 shortTitleDictionary];
  v34 = [v8 mutableCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v37 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v37)
  {
    v36 = *v39;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 intValue];
        if (v11 >= 1)
        {
          v12 = v11 / 0x3CuLL;
          if (v11 > 0xE0F)
          {
            v16 = v11 / 0xE10uLL;
            if (v12 - 60 >= 0x3C)
            {
              v17 = @"%ld_HOURS";
            }

            else
            {
              v17 = @"%ld_HOUR";
            }

            if (v12 - 60 >= 0x3C)
            {
              v18 = @"%ld_HOURS_SHORT";
            }

            else
            {
              v18 = @"%ld_HOUR_SHORT";
            }

            v14 = [MEMORY[0x277CCACA8] stringWithFormat:v17, v16];
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:v18, v16];
            v12 = v16;
          }

          else
          {
            if (v11 - 60 >= 0x3C)
            {
              v13 = @"%ld_MINUTES";
            }

            else
            {
              v13 = @"%ld_MINUTE";
            }

            v14 = [MEMORY[0x277CCACA8] stringWithFormat:v13, v11 / 0x3CuLL];
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld_MIN", v12];
          }

          v19 = MEMORY[0x277CCACA8];
          v20 = PABS_LocalizedStringForPasscodeLock(v14);
          v21 = MEMORY[0x277CCABB8];
          v22 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
          v23 = [v21 localizedStringFromNumber:v22 numberStyle:1];
          v24 = [v19 stringWithFormat:v20, v23];
          [v35 setObject:v24 forKey:v10];

          v25 = MEMORY[0x277CCACA8];
          v26 = PABS_LocalizedStringForPasscodeLock(v15);
          v27 = MEMORY[0x277CCABB8];
          v28 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
          v29 = [v27 localizedStringFromNumber:v28 numberStyle:1];
          v30 = [v25 stringWithFormat:v26, v29];
          [v34 setObject:v30 forKey:v10];
        }
      }

      v37 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v37);
  }

  [v32 setTitleDictionary:v35];
  [v32 setShortTitleDictionary:v34];

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)gracePeriodPasscodeRecoveryAvailable
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 recoveryPasscodeAvailable];

  return v3;
}

- (void)gracePeriodClearRecoveryPasscode:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = PABS_LocalizedStringForPasscodeLock(@"GRACE_PERIOD_CLEAR_PASSCODE_ALERT_TITLE");
  v7 = PABS_LocalizedStringForPasscodeLock(@"GRACE_PERIOD_CLEAR_PASSCODE_ALERT_MESSAGE");
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = PABS_LocalizedStringForPasscodeLock(@"GRACE_PERIOD_CLEAR_PASSCODE_ALERT_TURN_OFF");
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke;
  v19 = &unk_279A03220;
  v20 = v4;
  v21 = self;
  v11 = v4;
  v12 = [v9 actionWithTitle:v10 style:2 handler:&v16];
  [v8 addAction:{v12, v16, v17, v18, v19}];

  v13 = MEMORY[0x277D750F8];
  v14 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v15 = [v13 actionWithTitle:v14 style:1 handler:&__block_literal_global_613];
  [v8 addAction:v15];

  [(PABSPasscodeLockController *)self presentViewController:v8 animated:1 completion:0];
}

void __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: Clear recovery passcode alert canceled: - Reloading -", buf, 0xCu);
  }

  [*(a1 + 40) reloadSpecifier:*(a1 + 32)];
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke_607;
  block[3] = &unk_279A030D0;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  dispatch_async(v4, block);

  v6 = *MEMORY[0x277D85DE8];
}

void __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke_607(uint64_t a1)
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 clearRecoveryPasscode];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke_2;
  block[3] = &unk_279A03D38;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = PABSLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke_2_cold_1(v2);
    }

    [*(a1 + 48) setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
    [*(a1 + 40) reloadSpecifier:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "User decided to clear recovery passcode.", v8, 2u);
    }

    v6 = *(a1 + 40);
    v7 = [v6 specifierForID:@"PASSCODE_GRACE_PERIOD_GROUP"];
    [v6 removeSpecifier:v7 animated:1];
  }
}

void __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke_611()
{
  v0 = PABSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25E0E9000, v0, OS_LOG_TYPE_DEFAULT, "User canceled for clear recovery passcode.", v1, 2u);
  }
}

- (void)openGracePeriodPasscodeRecoveryHelpLink
{
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = PABS_LocalizedStringForPasscodeLock(@"PASSCODE_GRACE_PERIOD_LEARN_MORE_LINK");
  v4 = [v2 URLWithString:v3];
  [v5 openURL:v4 withCompletionHandler:&__block_literal_global_619];
}

void __69__PABSPasscodeLockController_openGracePeriodPasscodeRecoveryHelpLink__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __69__PABSPasscodeLockController_openGracePeriodPasscodeRecoveryHelpLink__block_invoke_cold_1();
    }
  }
}

- (void)addGracePeriodPasscodeRecoveryFooterToSpecifier:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v5 isPasscodeRecoverySupported];

  if (v6)
  {
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [v7 recoveryPasscodeExpiryDate];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEAA8] date];
      if ([v9 compare:v8]== 1)
      {
        v10 = PABSLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [PABSPasscodeLockController addGracePeriodPasscodeRecoveryFooterToSpecifier:];
        }
      }

      else
      {
        [v8 timeIntervalSinceNow];
        v12 = v11;
        v10 = objc_alloc_init(MEMORY[0x277CCA958]);
        [v10 setUnitsStyle:5];
        [v10 setAllowedUnits:96];
        [v10 setZeroFormattingBehavior:14];
        v13 = [v10 stringFromTimeInterval:v12];
        v14 = PABSLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = v8;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "Recovery Expiry date [%@] time remaining to expire [%@]", buf, 0x16u);
        }

        v15 = MEMORY[0x277CCACA8];
        v16 = PABS_LocalizedStringForPasscodeLock(@"PASSCODE_RECOVERY_TEXT");
        v26 = v13;
        v17 = [v15 stringWithFormat:v16, v13];

        v18 = [MEMORY[0x277D262A0] sharedConnection];
        LODWORD(v16) = [v18 isPasscodeRecoveryRestricted];

        if (v16)
        {
          [v4 setProperty:v17 forKey:*MEMORY[0x277D3FF88]];
        }

        else
        {
          v19 = PABS_LocalizedStringForPasscodeLock(@"PASSCODE_RECOVERY_LEARN_MORE_TEXT");
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v17, v19];

          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          [v4 setProperty:v22 forKey:*MEMORY[0x277D3FF48]];

          [v4 setProperty:v20 forKey:*MEMORY[0x277D3FF70]];
          v32.location = [v20 rangeOfString:v19];
          v23 = NSStringFromRange(v32);
          [v4 setProperty:v23 forKey:*MEMORY[0x277D3FF58]];

          v24 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
          [v4 setProperty:v24 forKey:*MEMORY[0x277D3FF68]];

          [v4 setProperty:@"openGracePeriodPasscodeRecoveryHelpLink" forKey:*MEMORY[0x277D3FF50]];
          v17 = v20;
        }
      }
    }

    else
    {
      v9 = PABSLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PABSPasscodeLockController addGracePeriodPasscodeRecoveryFooterToSpecifier:];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)scrollToStolenDeviceProtection
{
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "Scrolling and highlighting: Stolen Device Protection", v5, 2u);
  }

  v4 = [(PABSPasscodeLockController *)self specifierForID:@"DTO_STATUS_LABEL_ID"];
  [(PABSPasscodeLockController *)self _scrollToSpecifierWithID:@"DTO_STATUS_LABEL_ID" animated:1];
  [(PABSPasscodeLockController *)self selectRowForSpecifier:v4];
}

- (void)registerObserverAndHandlerForDTOStatusChanges
{
  if (![(PABSPasscodeLockController *)self isObservingDTOStatusChange])
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "DTO: Start observing status changes", v5, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, dtoStatusChangedNotification_0, *MEMORY[0x277CD4768], 0, 1028);
    [(PABSPasscodeLockController *)self setIsObservingDTOStatusChange:1];
  }
}

- (void)handleDTOStatusChanged
{
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "Passcode Controller: DTOStatusChanged", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PABSPasscodeLockController_handleDTOStatusChanged__block_invoke;
  block[3] = &unk_279A031D0;
  objc_copyWeak(&v5, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __52__PABSPasscodeLockController_handleDTOStatusChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reloadDTOGroup];
    [v2 reloadPasscodeGroup];
  }

  else
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__PABSPearlPasscodeController_handleDTOStatusChanged__block_invoke_cold_1();
    }
  }
}

- (id)getDTOSpecifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() isRatchetFeatureAvailable];
  v4 = PABSLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = [(PABSPasscodeLockController *)self dtoController];
      v8 = [v6 numberWithBool:{objc_msgSend(v7, "isRatchetEnabled")}];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "DTO: Available [Status: %@]: Adding specifiers", buf, 0xCu);
    }

    v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_286FD1EF8 target:self set:0 get:0 detail:0 cell:0 edit:0];
    [v4 setIdentifier:@"DTO_GROUP_ID"];
    v9 = MEMORY[0x277D3FAD8];
    v10 = PABS_LocalizedStringForPasscodeLock(@"DTO_STATUS_LABEL_DESCRIPTION");
    v11 = [v9 preferenceSpecifierNamed:v10 target:self set:0 get:sel_getDTOStatusForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

    [v11 setIdentifier:@"DTO_STATUS_LABEL_ID"];
    v15[0] = v4;
    v15[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "DTO: Unavailable: Skip adding specifiers", buf, 2u);
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)getDTOStatusForSpecifier:(id)a3
{
  v3 = [(PABSPasscodeLockController *)self dtoController];
  v4 = [v3 isRatchetEnabled];

  if (v4)
  {
    v5 = @"DTO_STATUS_LABEL_DESCRIPTION_STATE_ON";
  }

  else
  {
    v5 = @"DTO_STATUS_LABEL_DESCRIPTION_STATE_OFF";
  }

  v6 = PABS_LocalizedStringForPasscodeLock(v5);

  return v6;
}

- (void)reloadDTOGroup
{
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "DTO_STATUS_LABEL_ID: - Reloading -", v4, 2u);
  }

  [(PABSPasscodeLockController *)self reloadSpecifierID:@"DTO_STATUS_LABEL_ID" animated:1];
}

- (id)voiceDial:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 effectiveRestrictedBoolValueForSetting:*MEMORY[0x277D25CE8]];

  switch(v5)
  {
    case 1:
      v7 = 1;
      goto LABEL_7;
    case 2:
      v7 = 0;
LABEL_7:
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v7];
      goto LABEL_8;
    case 0:
      [PABSPasscodeLockController voiceDial:];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setVoiceDial:(id)a3 specifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self voiceDial:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", &v16, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 identifier];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", &v16, 0xCu);
    }
  }

  else
  {
    v12 = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [v6 BOOLValue];
    [v12 setBoolValue:v13 forSetting:*MEMORY[0x277D25CE8]];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowVoiceDial
{
  if (MGGetBoolAnswer() && ([getAFPreferencesClass() sharedPreferences], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "assistantIsEnabled"), v2, v3))
  {
    v4 = [getAFPreferencesClass() sharedPreferences];
    v5 = [v4 disableAssistantWhilePasscodeLocked] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isVoiceDialRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25CE8]];

  return v3;
}

- (void)updateVoiceDialGroup
{
  v12[2] = *MEMORY[0x277D85DE8];
  if (self->_voiceDialGroupSpecifier && self->_voiceDialSpecifier)
  {
    if (([(PABSPasscodeLockController *)self containsSpecifier:?]& 1) != 0)
    {
      v3 = [(PABSPasscodeLockController *)self containsSpecifier:self->_voiceDialSpecifier];
      v4 = [(PABSPasscodeLockController *)self shouldShowVoiceDial];
      if (v3 && !v4)
      {
        voiceDialSpecifier = self->_voiceDialSpecifier;
        v12[0] = self->_voiceDialGroupSpecifier;
        v12[1] = voiceDialSpecifier;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
        [(PABSPasscodeLockController *)self removeContiguousSpecifiers:v6 animated:1];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v4 = [(PABSPasscodeLockController *)self shouldShowVoiceDial];
      LOBYTE(v3) = 0;
    }

    if ((v3 & 1) == 0 && v4)
    {
      v7 = self->_voiceDialSpecifier;
      v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[PABSPasscodeLockController isVoiceDialRestricted](self, "isVoiceDialRestricted") ^ 1}];
      [(PSSpecifier *)v7 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

      v9 = self->_voiceDialSpecifier;
      v11[0] = self->_voiceDialGroupSpecifier;
      v11[1] = v9;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
      [(PABSPasscodeLockController *)self insertContiguousSpecifiers:v6 afterSpecifierID:@"PASSCODE_REQ" animated:1];
      goto LABEL_11;
    }
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
}

- (id)assistantUnderLockEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [getAFPreferencesClass() sharedPreferences];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "disableAssistantWhilePasscodeLocked") ^ 1}];

  return v5;
}

- (void)setAssistantUnderLockEnabled:(id)a3 forSpecifier:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self assistantUnderLockEnabled:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    v20 = 138412802;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", &v20, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v17 = PABSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v7 identifier];
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&dword_25E0E9000, v17, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", &v20, 0xCu);
    }
  }

  else
  {
    v12 = [v6 BOOLValue];
    v13 = [getAFPreferencesClass() sharedPreferences];
    v14 = [v13 disableAssistantWhilePasscodeLocked];

    if (v12 == v14)
    {
      v15 = [getAFPreferencesClass() sharedPreferences];
      [v15 setDisableAssistantWhilePasscodeLocked:v12 ^ 1u];

      v16 = [getAFPreferencesClass() sharedPreferences];
      [v16 synchronize];
    }

    [(PABSPasscodeLockController *)self updateVoiceDialGroup];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAssistantRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D48]];

  return v3;
}

- (id)homeControlAccessAllowedWhenLocked:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(PABSPasscodeLockController *)self homeManager];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isAccessAllowedWhenLocked")}];

  return v5;
}

- (void)setHomeControlAccessAllowedWhenLocked:(id)a3 specifier:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self homeControlAccessAllowedWhenLocked:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    *buf = 138412802;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v14 = PABSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 identifier];
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
    }
  }

  else
  {
    v12 = [(PABSPasscodeLockController *)self homeManager];
    v13 = [v6 BOOLValue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__PABSPasscodeLockController_setHomeControlAccessAllowedWhenLocked_specifier___block_invoke;
    v17[3] = &unk_279A03D60;
    v18 = v7;
    v19 = self;
    [v12 updateAccessAllowedWhenLocked:v13 completionHandler:v17];

    v14 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __78__PABSPasscodeLockController_setHomeControlAccessAllowedWhenLocked_specifier___block_invoke(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(v2 + 32) identifier];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "%@: - Reloading -", &v6, 0xCu);
    }

    result = [*(v2 + 40) reloadSpecifier:*(v2 + 32) animated:1];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "HOME_CONTROL_ID: - Reloading -", v5, 2u);
  }

  [(PABSPasscodeLockController *)self reloadSpecifierID:@"HOME_CONTROL_SWITCH"];
}

- (void)homeManager:(id)a3 didUpdateAccessAllowedWhenLocked:(BOOL)a4
{
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "HOME_CONTROL_ID: - Reloading -", v6, 2u);
  }

  [(PABSPasscodeLockController *)self reloadSpecifierID:@"HOME_CONTROL_SWITCH"];
}

- (id)workoutHealthDataAllowedWhenLocked:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = objc_alloc(MEMORY[0x277CCD570]);
  v5 = [v4 initWithCategory:3 domainName:*MEMORY[0x277CCE5B0] healthStore:v3];
  v6 = *MEMORY[0x277CCE540];
  v15 = 0;
  v7 = [v5 numberForKey:v6 error:&v15];
  v8 = v7;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v15 == 0;
  }

  if (v9)
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = &unk_286FD6C90;
    }
  }

  else
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "Failed to fetch Health database access while locked value", v14, 2u);
    }

    v10 = &unk_286FD6C78;
  }

  return v10;
}

- (void)setWorkoutHealthDataAllowedWhenLocked:(id)a3 specifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self workoutHealthDataAllowedWhenLocked:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    *buf = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 identifier];
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    v13 = objc_alloc(MEMORY[0x277CCD570]);
    v14 = [v13 initWithCategory:3 domainName:*MEMORY[0x277CCE5B0] healthStore:v12];
    v15 = *MEMORY[0x277CCE540];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__PABSPasscodeLockController_setWorkoutHealthDataAllowedWhenLocked_specifier___block_invoke;
    v18[3] = &unk_279A034E8;
    v19 = v7;
    v20 = self;
    [v14 setNumber:v6 forKey:v15 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __78__PABSPasscodeLockController_setWorkoutHealthDataAllowedWhenLocked_specifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v9 = [v5 description];
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "%@: Set: Result [%@] Error [%@] - Reloading -", &v11, 0x20u);
    }

    [*(a1 + 40) reloadSpecifier:*(a1 + 32) animated:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)wallet:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 effectiveBoolValueForSetting:*MEMORY[0x277D25DC0]];

  switch(v5)
  {
    case 1:
      v7 = 1;
      goto LABEL_7;
    case 2:
      v7 = 0;
LABEL_7:
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v7];
      goto LABEL_8;
    case 0:
      [PABSPasscodeLockController wallet:];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setWallet:(id)a3 specifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self wallet:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", &v16, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 identifier];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", &v16, 0xCu);
    }
  }

  else
  {
    v12 = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [v6 BOOLValue];
    [v12 setBoolValue:v13 forSetting:*MEMORY[0x277D25DC0]];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isWalletRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25DC0]];

  return v3;
}

- (BOOL)showReplyWithMessage
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sf_isiPhone];

  return v3;
}

- (id)wipeEnabled:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v4 = [(PABSPasscodeLockController *)self specifierForID:@"WIPE_DEVICE"];
  }

  v5 = [v4 propertyForKey:*MEMORY[0x277D3FF38]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x277D3FAB8] readPreferenceValue:v4];
    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 identifier];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "%@: Get: %@", &v15, 0x16u);
    }
  }

  else
  {
    if (self->_policyDictatedMaxFailedAttempts < 0)
    {
      v10 = MEMORY[0x277CBEC28];
    }

    else
    {
      v10 = MEMORY[0x277CBEC38];
    }

    v7 = v10;
    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 identifier];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_policyDictatedMaxFailedAttempts];
      v15 = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "%@: Get: %@ (policyMax: %@)", &v15, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setWipeEnabled:(id)a3 specifier:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self wipeEnabled:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    *buf = 138412802;
    v50 = v10;
    v51 = 2112;
    v52 = v6;
    v53 = 2112;
    v54 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v35 = PABSLogForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v7 identifier];
      *buf = 138412290;
      v50 = v36;
      _os_log_impl(&dword_25E0E9000, v35, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
    }
  }

  else if ([v6 BOOLValue])
  {
    v12 = MEMORY[0x277CCABB8];
    policyDictatedMaxFailedAttempts = self->_policyDictatedMaxFailedAttempts;
    if (policyDictatedMaxFailedAttempts < 0)
    {
      v14 = 10;
    }

    else
    {
      v14 = policyDictatedMaxFailedAttempts;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    v16 = [v12 localizedStringFromNumber:v15 numberStyle:1];

    v17 = MEMORY[0x277CCACA8];
    v18 = PABS_LocalizedStringForPasscodeLock(@"WIPE_DEVICE_ALERT_TITLE");
    v42 = v16;
    v19 = [v17 stringWithFormat:v18, v16];

    v40 = PABS_LocalizedStringForPasscodeLock(@"WIPE_DEVICE_ALERT_OK");
    v20 = PABS_LocalizedStringForPasscodeLock(@"WIPE_DEVICE_ALERT_CANCEL");
    v38 = MEMORY[0x277D75110];
    v39 = v20;
    v21 = [MEMORY[0x277D75418] currentDevice];
    v22 = [v21 sf_isiPad];
    v23 = v19;
    if (v22)
    {
      v23 = [v7 name];
    }

    v24 = [MEMORY[0x277D75418] currentDevice];
    v41 = v19;
    if (![v24 sf_isiPad])
    {
      v19 = 0;
    }

    v25 = [MEMORY[0x277D75418] currentDevice];
    v26 = [v38 alertControllerWithTitle:v23 message:v19 preferredStyle:{objc_msgSend(v25, "sf_isiPad")}];

    if (v22)
    {
    }

    v27 = MEMORY[0x277D750F8];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __55__PABSPasscodeLockController_setWipeEnabled_specifier___block_invoke;
    v46[3] = &unk_279A03220;
    v28 = v7;
    v47 = v28;
    v48 = self;
    v29 = [v27 actionWithTitle:v39 style:1 handler:v46];
    [v26 addAction:v29];

    v30 = MEMORY[0x277D750F8];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __55__PABSPasscodeLockController_setWipeEnabled_specifier___block_invoke_683;
    v43[3] = &unk_279A03220;
    v31 = v28;
    v44 = v31;
    v45 = self;
    v32 = [v30 actionWithTitle:v40 style:2 handler:v43];
    [v26 addAction:v32];

    v33 = PABSLogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v31 identifier];
      *buf = 138412290;
      v50 = v34;
      _os_log_impl(&dword_25E0E9000, v33, OS_LOG_TYPE_DEFAULT, "%@: Presenting confirmation alert", buf, 0xCu);
    }

    [(PABSPasscodeLockController *)self presentViewController:v26 animated:1 completion:0];
  }

  else
  {
    [(PABSPasscodeLockController *)self _setWipeEnabled:0];
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PABSPasscodeLockController_setWipeEnabled_specifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: User canceled. - Reloading - ", &v6, 0xCu);
  }

  result = [*(a1 + 40) reloadSpecifier:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __55__PABSPasscodeLockController_setWipeEnabled_specifier___block_invoke_683(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: User confirmed", &v6, 0xCu);
  }

  result = [*(a1 + 40) _setWipeEnabled:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_makeWipeDeviceGroupFooter
{
  v2 = MEMORY[0x277CCABB8];
  policyDictatedMaxFailedAttempts = self->_policyDictatedMaxFailedAttempts;
  if (policyDictatedMaxFailedAttempts < 0)
  {
    v4 = 10;
  }

  else
  {
    v4 = policyDictatedMaxFailedAttempts;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v6 = [v2 localizedStringFromNumber:v5 numberStyle:1];

  v7 = MEMORY[0x277CCACA8];
  v8 = PABS_LocalizedStringForPasscodeLock(@"WIPE_DEVICE_TEXT");
  v9 = [v7 stringWithFormat:v8, v6];

  v10 = [MEMORY[0x277D262A0] sharedConnection];
  v11 = [v10 isContentProtectionInEffect];

  if (v11)
  {
    v12 = PABS_LocalizedStringForPasscodeLock(@"DATA_ENCRYPTED_TEXT");
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@\n ", v9, v12];
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

- (void)devicePINController:(id)a3 shouldAcceptPIN:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [v8 simplePIN];
  IsPasswordWeak2 = SecPasswordIsPasswordWeak2();

  if (IsPasswordWeak2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__PABSPasscodeLockController_devicePINController_shouldAcceptPIN_withCompletion___block_invoke;
    v12[3] = &unk_279A03AA0;
    v13 = v9;
    [(PABSPasscodeLockController *)self showWeakWarningAlertForController:v8 offerUseAnyway:1 withCompletion:v12];
  }

  else
  {
    (*(v9 + 2))(v9, 1);
  }
}

- (void)showWeakWarningAlertForController:(id)a3 offerUseAnyway:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = PSUsedByHSA2Account();
  v10 = @"WEAK_PASSCODE_DETAILS";
  if (v9)
  {
    v10 = @"WEAK_PASSCODE_DETAILS_HSA2";
  }

  v11 = MEMORY[0x277D75110];
  v12 = v10;
  v13 = PABS_LocalizedStringForPasscodeLock(@"WEAK_PASSCODE");
  v14 = PABS_LocalizedStringForPasscodeLock(v12);

  v15 = [v11 alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v16 = MEMORY[0x277D750F8];
  v17 = PABS_LocalizedStringForPasscodeLock(@"CHOOSE_NEW_CODE");
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __94__PABSPasscodeLockController_showWeakWarningAlertForController_offerUseAnyway_withCompletion___block_invoke;
  v28[3] = &unk_279A03120;
  v18 = v8;
  v29 = v18;
  v19 = [v16 actionWithTitle:v17 style:1 handler:v28];
  [v15 addAction:v19];

  if (v6)
  {
    v20 = MEMORY[0x277D750F8];
    v21 = PABS_LocalizedStringForPasscodeLock(@"USE_WEAK_PASSCODE_ANYWAY");
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __94__PABSPasscodeLockController_showWeakWarningAlertForController_offerUseAnyway_withCompletion___block_invoke_2;
    v26 = &unk_279A03120;
    v27 = v18;
    v22 = [v20 actionWithTitle:v21 style:0 handler:&v23];
    [v15 addAction:{v22, v23, v24, v25, v26}];
  }

  [v7 presentViewController:v15 animated:1 completion:0];
}

- (void)devicePINController:(id)a3 didAcceptSetPIN:(id)a4
{
  [(PABSPasscodeLockController *)self _didUpdatePasscode:a4];
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "devicePINController: - Reloading Pane -", v6, 2u);
  }

  [(PABSPasscodeLockController *)self reloadSpecifiers];
}

- (void)_didUpdatePasscode:(id)a3
{
  v4 = a3;
  v5 = [(PABSPasscodeLockController *)self specifier];

  if (!v5)
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController _didUpdatePasscode:];
    }
  }

  v7 = PABSLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "_didUpdatePasscode: Saving passcode for specifier", buf, 2u);
    }

    v9 = [(PABSPasscodeLockController *)self specifier];
    [v9 setProperty:v4 forKey:*MEMORY[0x277D40100]];
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "_didUpdatePasscode: Removing passcode for specifier", v10, 2u);
    }

    v9 = [(PABSPasscodeLockController *)self specifier];
    [v9 removePropertyForKey:*MEMORY[0x277D40100]];
  }
}

- (void)didAcceptRemovePIN
{
  [(PABSPasscodeLockController *)self _didUpdatePasscode:0];
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "didAcceptRemovePIN: - Reloading Pane -", v4, 2u);
  }

  [(PABSPasscodeLockController *)self reloadSpecifiers];
  [(PABSPasscodeLockController *)self showKeychainAlert];
}

- (void)showKeychainAlert
{
  if (PSKeychainSyncGetStatus() == 2)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"DISABLE_WARNING%@%@", @"_PASSWORDS", @"_KEYCHAIN"];
    v3 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF_ICLOUD_KEYCHAIN");
    v4 = PABS_LocalizedStringForPasscodeLock(@"KEEP_USING_ICLOUD_KEYCHAIN");
    v5 = MEMORY[0x277D75110];
    v6 = PABS_LocalizedStringForPasscodeLock(v12);
    v7 = [v5 alertControllerWithTitle:v3 message:v6 preferredStyle:1];

    v8 = [MEMORY[0x277D750F8] actionWithTitle:v4 style:1 handler:0];
    [v7 addAction:v8];

    v9 = MEMORY[0x277D750F8];
    v10 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF_AND_REMOVE_PASSWORDS");
    v11 = [v9 actionWithTitle:v10 style:2 handler:&__block_literal_global_709];
    [v7 addAction:v11];

    [(PABSPasscodeLockController *)self presentViewController:v7 animated:1 completion:0];
  }
}

void __47__PABSPasscodeLockController_showKeychainAlert__block_invoke()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &__block_literal_global_711);
}

void __47__PABSPasscodeLockController_showKeychainAlert__block_invoke_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = PABSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v0, OS_LOG_TYPE_DEFAULT, "Disabling keychain sync.", buf, 2u);
  }

  [MEMORY[0x277CFD4F0] setUserVisibleKeychainSyncEnabled:0 withCompletion:&__block_literal_global_715];
  SOSCCRemoveThisDeviceFromCircle();
  v1 = *MEMORY[0x277D85DE8];
}

void __47__PABSPasscodeLockController_showKeychainAlert__block_invoke_713(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PABSLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138543362;
      v11 = v3;
      v6 = "setUserVisibleKeychainSyncEnabled failed with error: %{public}@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "setUserVisibleKeychainSyncEnabled completed successfully";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)canBeShownFromSuspendedState
{
  v2 = +[PABSPasscode sharedInstance];
  v3 = [v2 isPasscodeSet];

  return v3 ^ 1;
}

- (void)suspend
{
  v3 = [(PABSPasscodeLockController *)self specifier];

  if (!v3)
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController suspend];
    }
  }

  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "suspend: Removing passcode for specifier", buf, 2u);
  }

  v6 = [(PABSPasscodeLockController *)self specifier];
  [v6 removePropertyForKey:*MEMORY[0x277D40100]];

  v7 = [(PABSPasscodeLockController *)self splitViewController];
  v8 = [v7 containerNavigationController];

  v9 = [v8 viewControllers];
  v10 = [v9 firstObject];
  v11 = [v10 specifier];

  v12 = [(PABSPasscodeLockController *)self specifier];

  if (v12 == v11)
  {
    [v8 popRecursivelyToRootController];
  }

  v13.receiver = self;
  v13.super_class = PABSPasscodeLockController;
  [(PABSPasscodeLockController *)&v13 suspend];
}

- (id)specifiers
{
  v134[2] = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v126 = *MEMORY[0x277D3FC48];
    v4 = [(PABSPasscodeLockController *)self loadSpecifiersFromPlistName:@"Passcode Lock" target:self];
    v5 = [v4 specifierForID:@"PASSCODE_TOGGLE"];
    v124 = [v4 specifierForID:@"PASSCODE_GROUP"];
    v125 = v5;
    [PABSPasscodeLockController setupPasscodeGroupSpecifier:"setupPasscodeGroupSpecifier:onOffButtonSpecifier:" onOffButtonSpecifier:?];
    v6 = [(PABSPasscodeLockController *)self getDTOSpecifiers];
    v7 = [v6 count];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v7}];
      [v4 insertObjects:v6 atIndexes:v8];
    }

    v123 = v6;
    v9 = [MEMORY[0x277D262A0] sharedConnection];
    v10 = [v9 recoveryPasscodeExpiryDate];

    v11 = MEMORY[0x277D3FF38];
    v122 = v10;
    if (v10)
    {
      v12 = [v4 specifierForID:@"PASSCODE_GRACE_PERIOD_GROUP"];
      [(PABSPasscodeLockController *)self addGracePeriodPasscodeRecoveryFooterToSpecifier:v12];
      v13 = [v4 specifierForID:@"TURN_OFF_PASSCODE_RECOVERY"];
      [v13 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      [v13 setProperty:&unk_286FD6C90 forKey:*MEMORY[0x277D3FD78]];
      [v13 setProperty:MEMORY[0x277CBEC38] forKey:*v11];
    }

    else
    {
      v12 = [v4 specifierForID:@"TURN_OFF_PASSCODE_RECOVERY"];
      v13 = [v4 specifierForID:@"PASSCODE_GRACE_PERIOD_GROUP"];
      if (v12)
      {
        [v4 removeObject:v12];
      }

      if (v13)
      {
        [v4 removeObject:v13];
      }
    }

    v14 = [v4 specifierForID:@"VOICE_DIAL"];
    voiceDialSpecifier = self->_voiceDialSpecifier;
    self->_voiceDialSpecifier = v14;

    v16 = [v4 specifierForID:@"VOICE_DIAL_GROUP"];
    voiceDialGroupSpecifier = self->_voiceDialGroupSpecifier;
    self->_voiceDialGroupSpecifier = v16;

    v18 = self->_voiceDialSpecifier;
    if (self->_voiceDialGroupSpecifier)
    {
      if (v18)
      {
        v19 = [(PABSPasscodeLockController *)self shouldShowVoiceDial];
        v18 = self->_voiceDialSpecifier;
        if (!v19)
        {
          v134[0] = self->_voiceDialGroupSpecifier;
          v134[1] = v18;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:2];
          [v4 removeObjectsInArray:v20];

          v18 = self->_voiceDialSpecifier;
        }
      }
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInt:{-[PABSPasscodeLockController isVoiceDialRestricted](self, "isVoiceDialRestricted") ^ 1}];
    v22 = *v11;
    [(PSSpecifier *)v18 setProperty:v21 forKey:*v11];

    v132 = v4;
    v23 = [v4 specifierForID:@"ALLOW_ACCESS_WHEN_LOCKED"];
    v24 = [(PABSPasscodeLockController *)self _allowAccessWhenLockedSpecifierFooter];
    v120 = *MEMORY[0x277D3FF88];
    v121 = v23;
    [v23 setProperty:v24 forKey:?];

    v25 = [MEMORY[0x277D262A0] sharedConnection];
    v26 = *MEMORY[0x277D25F50];
    v27 = [v25 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F50]];

    v28 = MEMORY[0x277D3FAD8];
    v29 = PABS_LocalizedStringForPasscodeLock(@"NOTIFICATIONS_VIEW");
    v30 = [v28 preferenceSpecifierNamed:v29 target:self set:sel_setEnabledInLockScreen_specifier_ get:sel_enabledInLockScreen_ detail:0 cell:6 edit:0];

    [v30 setProperty:v26 forKey:@"MC_FEATURE"];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v27 ^ 1u];
    v131 = v30;
    v32 = v22;
    [v30 setProperty:v31 forKey:v22];

    v33 = [MEMORY[0x277D262A0] sharedConnection];
    v34 = *MEMORY[0x277D25F58];
    LODWORD(v29) = [v33 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F58]];

    v35 = MEMORY[0x277D3FAD8];
    v36 = PABS_LocalizedStringForPasscodeLock(@"TODAY_VIEW");
    v37 = [v35 preferenceSpecifierNamed:v36 target:self set:sel_setEnabledInLockScreen_specifier_ get:sel_enabledInLockScreen_ detail:0 cell:6 edit:0];

    [v37 setProperty:v34 forKey:@"MC_FEATURE"];
    v38 = [MEMORY[0x277CCABB0] numberWithInt:v29 ^ 1];
    v130 = v37;
    [v37 setProperty:v38 forKey:v32];

    v39 = [MEMORY[0x277D262A0] sharedConnection];
    v40 = *MEMORY[0x277D25F48];
    LODWORD(v29) = [v39 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F48]];

    v41 = MEMORY[0x277D3FAD8];
    v42 = PABS_LocalizedStringForPasscodeLock(@"CONTROL_CENTER");
    v43 = [v41 preferenceSpecifierNamed:v42 target:self set:sel_setEnabledInLockScreen_specifier_ get:sel_enabledInLockScreen_ detail:0 cell:6 edit:0];

    [v43 setProperty:v40 forKey:@"MC_FEATURE"];
    v44 = [MEMORY[0x277CCABB0] numberWithInt:v29 ^ 1];
    v129 = v43;
    v119 = v32;
    [v43 setProperty:v44 forKey:v32];

    v45 = MEMORY[0x277D3FAD8];
    v46 = PABS_LocalizedStringForPasscodeLock(@"COMPLICATIONS");
    v47 = [v45 preferenceSpecifierNamed:v46 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];

    [v47 setIdentifier:@"COMPLICATIONS"];
    v48 = *MEMORY[0x277D3FEF8];
    [v47 setProperty:@"com.apple.chronod" forKey:*MEMORY[0x277D3FEF8]];
    v49 = *MEMORY[0x277D3FFF0];
    [v47 setProperty:@"showComplicationDataWhenPasscodeLocked" forKey:*MEMORY[0x277D3FFF0]];
    v50 = *MEMORY[0x277D3FEF0];
    v51 = MEMORY[0x277CBEC38];
    v128 = v47;
    [v47 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEF0]];
    v52 = MEMORY[0x277D3FAD8];
    v53 = PABS_LocalizedStringForPasscodeLock(@"LIVE_ACTIVITIES");
    v54 = [v52 preferenceSpecifierNamed:v53 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];

    [v54 setIdentifier:@"LIVE_ACTIVITIES"];
    [v54 setProperty:@"com.apple.chronod" forKey:v48];
    [v54 setProperty:@"showLiveActivitiesWhenPasscodeLocked" forKey:v49];
    v127 = v54;
    [v54 setProperty:v51 forKey:v50];
    v55 = [MEMORY[0x277D262A0] sharedConnection];
    v56 = *MEMORY[0x277D260C0];
    LOBYTE(v43) = [v55 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D260C0]];

    if (v43)
    {
      v57 = 0;
    }

    else
    {
      v58 = [getLockdownModeManagerClass() shared];
      v59 = [v58 enabled];

      v57 = v59 ^ 1u;
    }

    v60 = MEMORY[0x277D3FAD8];
    v61 = PABS_LocalizedStringForPasscodeLock(@"ACCESSORIES");
    v62 = [v60 preferenceSpecifierNamed:v61 target:self set:sel_setEnabledInLockScreenForUSB_specifier_ get:sel_enabledInLockScreenForUSB_ detail:0 cell:6 edit:0];

    v63 = *MEMORY[0x277D3FFB8];
    [v62 setProperty:@"ACCESSORIES" forKey:*MEMORY[0x277D3FFB8]];
    [v62 setProperty:v56 forKey:@"MC_FEATURE"];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:v57];
    v118 = v62;
    [v62 setProperty:v64 forKey:v119];

    v65 = [MEMORY[0x277CBEB18] arrayWithObjects:{v130, v131, v129, 0}];
    if (_os_feature_enabled_impl())
    {
      [v65 addObject:v128];
    }

    if (_os_feature_enabled_impl())
    {
      [v65 addObject:v127];
    }

    if (MGGetBoolAnswer())
    {
      v66 = [getAFPreferencesClass() sharedPreferences];
      v67 = [v66 assistantIsEnabled];

      if (v67)
      {
        v68 = MEMORY[0x277D3FAD8];
        v69 = PABS_LocalizedStringForPasscodeLock(@"SIRI");
        v70 = [v68 preferenceSpecifierNamed:v69 target:self set:sel_setAssistantUnderLockEnabled_forSpecifier_ get:sel_assistantUnderLockEnabled_ detail:0 cell:6 edit:0];

        [v70 setProperty:@"ASSISTANT_WHILE_LOCKED" forKey:v63];
        [v70 setProperty:&unk_286FD6CA8 forKey:*MEMORY[0x277D400A0]];
        v71 = [MEMORY[0x277CCABB0] numberWithInt:{-[PABSPasscodeLockController isAssistantRestricted](self, "isAssistantRestricted") ^ 1}];
        [v70 setProperty:v71 forKey:v119];

        [v65 addObject:v70];
      }
    }

    v72 = [v132 specifierForID:@"RETURN_MISSED_CALLS_SWITCH"];
    if (PSIsBundleIDHiddenDueToRestrictions())
    {
      [v132 removeObject:v72];
    }

    v116 = v72;
    v73 = [v132 specifierForID:@"ALLOW_ACCESS_WHEN_LOCKED"];
    v74 = [v65 count];
    v115 = v73;
    v75 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{objc_msgSend(v132, "indexOfObject:", v73) + 1, v74}];
    [v132 insertObjects:v65 atIndexes:v75];

    v76 = [v132 specifierForID:@"WALLET_SWITCH"];
    if ([(PABSPasscodeLockController *)self isWalletRestricted])
    {
      [v76 setProperty:MEMORY[0x277CBEC28] forKey:v119];
    }

    v114 = v76;
    v77 = [MEMORY[0x277D262A0] sharedConnection];
    v78 = [v77 valueRestrictionForFeature:*MEMORY[0x277D25F78]];

    v117 = v65;
    v113 = v78;
    if (v78)
    {
      v79 = [v78 intValue];
    }

    else
    {
      v79 = -1;
    }

    self->_policyDictatedMaxFailedAttempts = v79;
    v80 = [v132 specifierForID:@"WIPE_DEVICE"];
    v112 = MGCopyAnswer();
    [v80 setProperty:? forKey:?];
    v81 = [MEMORY[0x277D262A0] sharedConnection];
    v82 = [v81 effectiveBoolValueForSetting:*MEMORY[0x277D25E88]];

    if (v82 == 2)
    {
      v83 = 0;
    }

    else
    {
      v83 = self->_policyDictatedMaxFailedAttempts >> 31;
    }

    v111 = [MEMORY[0x277CCABB0] numberWithBool:v83];
    [v80 setProperty:? forKey:?];
    if (v82 == 2)
    {
      [v80 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D401A8]];
    }

    v84 = [v132 specifierForID:@"WIPE_DEVICE_TEXT"];
    v85 = [(PABSPasscodeLockController *)self _makeWipeDeviceGroupFooter];
    [v84 setProperty:v85 forKey:v120];

    v86 = [MEMORY[0x277D07D70] sharedInstance];
    v87 = [v86 availabilityForListenerID:@"com.apple.Preferences" forService:0] == 1;

    v88 = [MEMORY[0x277D07DB0] sharedInstance];
    LODWORD(v86) = [v88 isTelephonyDevice];

    v89 = [MEMORY[0x277D07D70] sharedInstance];
    v90 = [v89 availabilityForListenerID:@"com.apple.Preferences" forService:1] == 1;

    v91 = [MEMORY[0x277D07DB0] sharedInstance];
    v92 = [v91 supportsSMS];

    v93 = [MEMORY[0x277D07DB0] sharedInstance];
    v94 = [v93 deviceType];

    v95 = [MEMORY[0x277D07DB0] sharedInstance];
    v96 = [v95 deviceType];

    v97 = 0;
    if ((v87 | v86))
    {
      v98 = v90 | v92;
      v99 = v118;
      if (v98)
      {
        v97 = v94 == 3 || v96 == 2;
      }
    }

    else
    {
      v99 = v118;
    }

    if ([(PABSPasscodeLockController *)self shouldIncludeAccessoriesToggle]&& (PKIsUSBRestrictedModeDisabledByMobileAsset() & 1) == 0)
    {
      v101 = PABSLogForCategory(0);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E0E9000, v101, OS_LOG_TYPE_DEFAULT, "Adding Accessories toggle", buf, 2u);
      }

      v102 = [v132 specifierForID:@"WORKOUT_HEALTH_DATA_SWITCH"];
      [v132 ps_insertObject:v99 afterObject:v102];
    }

    if (!v97)
    {
      v103 = [v132 specifierForID:@"REPLY_WITH_MESSAGE_SWITCH"];
      [v132 removeObject:v103];
    }

    v104 = [v132 specifierForID:@"PASSCODE_REQ"];
    v105 = [v104 values];
    [v104 setProperty:v105 forKey:@"gracePeriodValues"];

    v106 = [v104 titleDictionary];
    [v104 setProperty:v106 forKey:@"gracePeriodTitles"];

    v107 = [v104 shortTitleDictionary];
    [v104 setProperty:v107 forKey:@"gracePeriodShortTitles"];

    [(PABSPasscodeLockController *)self _updateGracePeriodForSpecifier:v104];
    [(PABSPasscodeLockController *)self disablePasscodeRequiredSpecifiers:v132];
    v108 = *(&self->super.super.super.super.super.isa + v126);
    *(&self->super.super.super.super.super.isa + v126) = v132;

    [(PABSPasscodeLockController *)self updateAutoUnlockSpecifiers];
    v3 = *(&self->super.super.super.super.super.isa + v126);
  }

  v109 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)enabledInLockScreen:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  v6 = [v4 propertyForKey:@"MC_FEATURE"];

  v7 = [v5 effectiveBoolValueForSetting:v6];
  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithInt:v7 == 1];
}

- (BOOL)trmUnificationFeatureIsEnabled
{
  v6 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -5;
  v13 = 8;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __ACMTRMEnv_Get_block_invoke;
  v10 = &unk_279A03EB0;
  v11 = &v14;
  v12 = &v6;
  if (ACMKernelControl())
  {
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v2 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
    if (!v2)
    {
      return (v6 >> 3) & 1;
    }
  }

  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [PABSPasscodeLockController trmUnificationFeatureIsEnabled];
  }

  LOBYTE(v4) = 0;
  return v4;
}

- (id)enabledInLockScreenForUSB:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(PABSPasscodeLockController *)self enabledInLockScreen:a3];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "BOOLValue") ^ 1}];

  return v5;
}

- (void)setEnabledInLockScreenForUSB:(id)a3 specifier:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self enabledInLockScreenForUSB:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    *buf = 138412802;
    v46 = v10;
    v47 = 2112;
    v48 = v6;
    v49 = 2112;
    v50 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 != [v8 BOOLValue])
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PABSPasscodeLockController_setEnabledInLockScreenForUSB_specifier___block_invoke;
    aBlock[3] = &unk_279A03498;
    objc_copyWeak(&v44, buf);
    v12 = v6;
    v41 = v12;
    v33 = v7;
    v42 = v33;
    v43 = self;
    v34 = _Block_copy(aBlock);
    v13 = _AXSGetUSBRMDisablers();
    v14 = [v12 BOOLValue];
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v34[2]();
LABEL_24:

      objc_destroyWeak(&v44);
      objc_destroyWeak(buf);
      goto LABEL_25;
    }

    if (__clz(__rbit32(v13)) + 1 == fls(v13))
    {
      if (v13)
      {
        v18 = @"ACCESSORIES_OFF_WARNING_VO";
      }

      else
      {
        if ((v13 & 2) == 0)
        {
          goto LABEL_24;
        }

        v18 = @"ACCESSORIES_OFF_WARNING_SC";
      }
    }

    else
    {
      v18 = @"ACCESSORIES_OFF_WARNING_MULTI";
    }

    v19 = MEMORY[0x277D75110];
    v20 = [MEMORY[0x277D75418] currentDevice];
    v21 = [v20 sf_isiPad];
    if (v21)
    {
      v22 = [v33 name];
    }

    else
    {
      v22 = 0;
    }

    v23 = PABS_LocalizedStringForPasscodeLock(v18);
    v24 = [MEMORY[0x277D75418] currentDevice];
    v25 = [v19 alertControllerWithTitle:v22 message:v23 preferredStyle:{objc_msgSend(v24, "sf_isiPad")}];

    if (v21)
    {
    }

    v26 = MEMORY[0x277D750F8];
    v27 = PABS_LocalizedStringForPasscodeLock(@"TURN_OFF");
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__PABSPasscodeLockController_setEnabledInLockScreenForUSB_specifier___block_invoke_842;
    v38[3] = &unk_279A03120;
    v39 = v34;
    v28 = [v26 actionWithTitle:v27 style:2 handler:v38];
    [v25 addAction:v28];

    v29 = MEMORY[0x277D750F8];
    v30 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __69__PABSPasscodeLockController_setEnabledInLockScreenForUSB_specifier___block_invoke_2;
    v35[3] = &unk_279A03220;
    v36 = v33;
    v37 = self;
    v31 = [v29 actionWithTitle:v30 style:1 handler:v35];
    [v25 addAction:v31];

    [(PABSPasscodeLockController *)self presentViewController:v25 animated:1 completion:0];
    goto LABEL_24;
  }

  v16 = PABSLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v7 identifier];
    *buf = 138412290;
    v46 = v17;
    _os_log_impl(&dword_25E0E9000, v16, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
  }

LABEL_25:
  v32 = *MEMORY[0x277D85DE8];
}

void __69__PABSPasscodeLockController_setEnabledInLockScreenForUSB_specifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "BOOLValue") ^ 1}];
  [WeakRetained setEnabledInLockScreen:v3 specifier:*(a1 + 40)];

  v4 = [WeakRetained specifiers];
  v5 = [v4 specifierForID:@"ALLOW_ACCESS_WHEN_LOCKED"];

  v6 = [*(a1 + 48) _allowAccessWhenLockedSpecifierFooter];
  [v5 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];

  v7 = PABSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "%@: Set: - Reloading -", &v10, 0xCu);
  }

  [WeakRetained reloadSpecifier:v5 animated:1];
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __69__PABSPasscodeLockController_setEnabledInLockScreenForUSB_specifier___block_invoke_842(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return MEMORY[0x2821F0238](0);
}

uint64_t __69__PABSPasscodeLockController_setEnabledInLockScreenForUSB_specifier___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: Set: - Reloading -", &v6, 0xCu);
  }

  result = [*(a1 + 40) reloadSpecifier:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setEnabledInLockScreen:(id)a3 specifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self enabledInLockScreen:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    v17 = 138412802;
    v18 = v10;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", &v17, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 identifier];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", &v17, 0xCu);
    }
  }

  else
  {
    v12 = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [v6 BOOLValue];
    v14 = [v7 propertyForKey:@"MC_FEATURE"];
    [v12 setBoolValue:v13 forSetting:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)disablePasscodeRequiredSpecifiers:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PABSPasscode sharedInstance];
  v5 = [v4 isPasscodeSet];

  if ((v5 & 1) == 0)
  {
    v6 = objc_opt_new();
    [v6 addObject:@"PASSCODE_TOGGLE"];
    [v6 addObject:@"DTO_GROUP_ID"];
    [v6 addObject:@"DTO_STATUS_LABEL_ID"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      v11 = *MEMORY[0x277D3FF38];
      v12 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [v6 containsObject:v15];

          if ((v16 & 1) == 0)
          {
            [v14 setProperty:v12 forKey:v11];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v3 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)profileNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D26180]];

  LODWORD(v4) = [v5 intValue];
  if (v4 != getpid())
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "profileNotification: - Reloading Pane -", v7, 2u);
    }

    [(PABSPasscodeLockController *)self reloadSpecifiers];
  }
}

- (id)_allowAccessWhenLockedSpecifierFooter
{
  v3 = [getLockdownModeManagerClass() shared];
  v4 = [v3 enabled];

  IsAvailable = PKNearFieldRadioIsAvailable();
  if ([(PABSPasscodeLockController *)self shouldIncludeAccessoriesToggle]&& (PKIsUSBRestrictedModeDisabledByMobileAsset() & 1) == 0)
  {
    if (v4)
    {
      v8 = @"ACCESSORIES_OFF_LOCKDOWN";
    }

    else
    {
      v8 = @"ACCESSORIES_TOGGLE_FOOTER_DEFAULT";
    }

    v7 = PABS_LocalizedStringForPasscodeLock(v8);
    if (!IsAvailable)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!IsAvailable)
    {
      v7 = 0;
      goto LABEL_21;
    }

    if (PSIsPearlAvailable())
    {
      v6 = @"WALLET_FOOTER_TEXT_FACEID";
    }

    else
    {
      v6 = @"WALLET_FOOTER_TEXT";
    }

    v7 = PABS_LocalizedStringForPasscodeLock(v6);
  }

  v9 = [MEMORY[0x277D37D30] shared];
  v10 = [v9 isEffectivelyLocked];

  if (v10)
  {
    if (PSIsPearlAvailable())
    {
      v11 = @"WALLET_LOCKED_FOOTER_TEXT_FACEID";
    }

    else
    {
      v11 = @"WALLET_LOCKED_FOOTER_TEXT_TOUCHID";
    }

    v12 = PABS_LocalizedStringForPasscodeLock(v11);
    if ([v7 length])
    {
      v13 = [v7 stringByAppendingFormat:@"\n\n%@", v12];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;

    v7 = v14;
  }

LABEL_21:

  return v7;
}

- (void)updatePhoneAutounlockSection:(BOOL)a3
{
  if (a3)
  {

    [(PABSPasscodeLockController *)self updateAutoUnlockSpecifiers];
  }

  else
  {
    v4 = [(PABSPasscodeLockController *)self autoUnlockSpecifiers];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(PABSPasscodeLockController *)self autoUnlockSpecifiers];
      [(PABSPasscodeLockController *)self removeContiguousSpecifiers:v6 animated:1];

      [(PABSPasscodeLockController *)self setAutoUnlockSpecifiers:0];
    }
  }
}

- (void)updateAutoUnlockSpecifiers
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D54C20] autoUnlockSupported];
  v4 = [(PABSPasscodeLockController *)self authenticationManager];
  v5 = [v4 isSupportedForType:12];

  v6 = +[PABSBiometrics sharedInstance];
  v7 = [v6 isEnrolledInFaceID];

  v8 = +[PABSPasscodeAndBiometrics_Common sharedInstance];
  v9 = [v8 isUnlockEnabled];

  v10 = PABSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v3;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = v5;
    HIWORD(v30) = 1024;
    LODWORD(v31) = v7;
    WORD2(v31) = 1024;
    *(&v31 + 6) = v9;
    _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "Auto unlock supported: %d, Vision unlock supported: %d, is enrolled in faceID: %d, phone unlock enabled: %d", buf, 0x1Au);
  }

  if ((v3 | v5) & v7 & v9)
  {
    v11 = dispatch_group_create();
    *buf = 0;
    v30 = buf;
    *&v31 = 0x3032000000;
    *(&v31 + 1) = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    v33 = objc_opt_new();
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__0;
    v27[4] = __Block_byref_object_dispose__0;
    v28 = objc_opt_new();
    v12 = [(PABSPasscodeLockController *)self authenticationManager];
    v13 = [v12 isSupportedForType:12];

    if (v13)
    {
      dispatch_group_enter(v11);
      v14 = PABSLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "Querying for visionUnlockiOS", v26, 2u);
      }

      v15 = [(PABSPasscodeLockController *)self authenticationManager];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke;
      v23[3] = &unk_279A03D88;
      v25 = v27;
      v23[4] = self;
      v24 = v11;
      [v15 listCandidateDevicesForType:12 completionHandler:v23];
    }

    if ([MEMORY[0x277D54C20] autoUnlockSupported])
    {
      dispatch_group_enter(v11);
      v16 = PABSLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_25E0E9000, v16, OS_LOG_TYPE_DEFAULT, "Querying for watchUnlockiOS", v26, 2u);
      }

      v17 = [(PABSPasscodeLockController *)self autoUnlockManager];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke_864;
      v20[3] = &unk_279A03D88;
      v22 = buf;
      v20[4] = self;
      v21 = v11;
      [v17 eligibleAutoUnlockDevicesWithCompletionHandler:v20];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke_865;
    block[3] = &unk_279A03DB0;
    block[5] = buf;
    block[6] = v27;
    block[4] = self;
    dispatch_group_notify(v11, MEMORY[0x277D85CD0], block);
    _Block_object_dispose(v27, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "Autounlock is not supported or FaceID is not setup.", buf, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PABSLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Querying for visionUnlockiOS succeeded: %@", &v13, 0xCu);
  }

  v9 = [*(a1 + 32) parseVisionUnlockCandidateDevices:v5];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_group_leave(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

void __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke_864(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PABSLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke_864_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Querying for watchUnlockiOS succeeded: %@", &v13, 0xCu);
  }

  v9 = [*(a1 + 32) parseEligibleAutoUnlockDevices:v5];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_group_leave(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

void __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke_865(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[5] + 8) + 40);
    v4 = *(*(a1[6] + 8) + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Updating devices. Auto unlock specifiers: %@ and Vision unlock specifiers: %@", &v8, 0x16u);
  }

  v5 = a1[4];
  v6 = [*(*(a1[6] + 8) + 40) arrayByAddingObjectsFromArray:*(*(a1[5] + 8) + 40)];
  [v5 setupAutoUnlockSectionWithSpecifiers:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setupAutoUnlockSectionWithSpecifiers:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "All unlock specifiers: %@", buf, 0xCu);
  }

  v6 = [v4 mutableCopy];
  if ([v4 count])
  {
    v7 = MEMORY[0x277D3FAD8];
    v8 = PABS_LocalizedStringForPasscodeLock(@"USE_APPLE_DEVICES_TO_UNLOCK");
    v9 = [v7 groupSpecifierWithID:@"AUTO_UNLOCK_DEVICES_GROUP" name:v8];

    [v6 insertObject:v9 atIndex:0];
    v10 = [(PABSPasscodeLockController *)self useAlternateFooterTextForPAU];
    v11 = [MEMORY[0x277CEF640] assistantEnabled];
    v12 = @"PHONE_AUTO_UNLOCK_FOOTER_PERIOCULAR_ASSISTANT_DISABLED";
    if (v11)
    {
      v12 = @"PHONE_AUTO_UNLOCK_FOOTER_PERIOCULAR_ASSISTANT_ENABLED";
    }

    v13 = @"PHONE_NEARBY_DEVICE_AUTO_UNLOCK_FOOTER_ASSISTANT_ENABLED";
    if (!v11)
    {
      v13 = @"PHONE_NEARBY_DEVICE_AUTO_UNLOCK_FOOTER_ASSISTANT_DISABLED";
    }

    if (v10)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = PABS_LocalizedStringForPasscodeLock(v14);
    [v9 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];
  }

  objc_initWeak(buf, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__PABSPasscodeLockController_setupAutoUnlockSectionWithSpecifiers___block_invoke;
  v18[3] = &unk_279A030A8;
  objc_copyWeak(&v20, buf);
  v19 = v6;
  v16 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v18);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];
}

void __67__PABSPasscodeLockController_setupAutoUnlockSectionWithSpecifiers___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained autoUnlockSpecifiers];
  v4 = [v3 count];
  v5 = [*(a1 + 32) count];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 autoUnlockSpecifiers];
  v8 = [v7 count];

  if (v8)
  {
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      v11 = [v10 autoUnlockSpecifiers];
      v30 = 138412290;
      v31 = v11;
      _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "Auto unlock specifiers: Removing current specifiers: %@", &v30, 0xCu);
    }

    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 autoUnlockSpecifiers];
    [v12 removeContiguousSpecifiers:v13 animated:v4 != v5];
  }

  v14 = [*(a1 + 32) copy];
  v15 = objc_loadWeakRetained((a1 + 40));
  [v15 setAutoUnlockSpecifiers:v14];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 autoUnlockSpecifiers];
  v18 = [v17 count];

  if (v18)
  {
    v19 = objc_loadWeakRetained((a1 + 40));
    v20 = [v19 specifierForID:@"PASSCODE_REQ"];

    v21 = PABSLogForCategory(0);
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_loadWeakRetained((a1 + 40));
        v24 = [v23 autoUnlockSpecifiers];
        v30 = 138412290;
        v31 = v24;
        _os_log_impl(&dword_25E0E9000, v22, OS_LOG_TYPE_DEFAULT, "Auto unlock specifiers: Inserting specifiers: %@", &v30, 0xCu);
      }

      v25 = v4 != v5;

      v22 = objc_loadWeakRetained((a1 + 40));
      v26 = [v22 autoUnlockSpecifiers];
      v27 = objc_loadWeakRetained((a1 + 40));
      v28 = [v27 specifierForID:@"PASSCODE_REQ"];
      [v22 insertContiguousSpecifiers:v26 afterSpecifier:v28 animated:v25];
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __67__PABSPasscodeLockController_setupAutoUnlockSectionWithSpecifiers___block_invoke_cold_1((a1 + 40));
    }
  }

  else
  {
    v20 = PABSLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_25E0E9000, v20, OS_LOG_TYPE_DEFAULT, "Auto unlock specifiers: No new specifiers to insert", &v30, 2u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)useAlternateFooterTextForPAU
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = +[PABSBiometrics sharedInstance];
    v4 = [v3 isPeriocularEnrollmentSupported];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (id)parseEligibleAutoUnlockDevices:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Found %@ autounlock device(s)", buf, 0xCu);
  }

  v7 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    v35 = *MEMORY[0x277D40160];
    v32 = *MEMORY[0x277D3FF38];
    do
    {
      v11 = 0;
      v33 = v9;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        v13 = MEMORY[0x277D3FAD8];
        v14 = [v12 name];
        v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setAutoUnlockEnabled_specifier_ get:sel_autoUnlockEnabled_ detail:0 cell:6 edit:0];

        v16 = PABSLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          [v12 name];
          v17 = v10;
          v18 = v7;
          v20 = v19 = self;
          v21 = [v12 modelDescription];
          v22 = [v12 unlockEnabled];
          v23 = [v12 supportsApproveWithWatch];
          *buf = 138413058;
          v41 = v20;
          v42 = 2112;
          v43 = v21;
          v44 = 1024;
          v45 = v22;
          v46 = 1024;
          v47 = v23;
          _os_log_impl(&dword_25E0E9000, v16, OS_LOG_TYPE_DEFAULT, "PAU device name: %@, model description: %@, unlock enabled: %d, software supported: %d", buf, 0x22u);

          self = v19;
          v7 = v18;
          v10 = v17;
          v9 = v33;
        }

        if ([v12 supportsApproveWithWatch])
        {
          v24 = [v12 modelDescription];
          v25 = [v24 length];

          if (v25)
          {
            v26 = [v12 modelDescription];
            [v15 setProperty:v26 forKey:v35];
          }
        }

        else
        {
          v27 = PABS_LocalizedStringForPasscodeLock(@"UNSUPPORTED_WATCH_SOFTWARE");
          [v15 setProperty:v27 forKey:v35];

          [v15 setProperty:MEMORY[0x277CBEC28] forKey:v32];
        }

        v28 = [v12 uniqueID];
        [v15 setIdentifier:v28];

        [v15 setObject:v12 forKeyedSubscript:@"PABSAutoUnlockDeviceKey"];
        [v7 addObject:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v9);
  }

  v29 = [v7 copy];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)autoUnlockEnabled:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"PABSAutoUnlockDeviceKey"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "unlockEnabled")}];

  return v4;
}

- (void)setAutoUnlockEnabled:(id)a3 specifier:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PABSPasscodeLockController *)self autoUnlockEnabled:v7];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 identifier];
    *buf = 138412802;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", buf, 0x20u);
  }

  v11 = [v6 BOOLValue];
  if (v11 == [v8 BOOLValue])
  {
    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 identifier];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", buf, 0xCu);
    }
  }

  else
  {
    v12 = [v7 objectForKeyedSubscript:@"PABSAutoUnlockDeviceKey"];
    if ([v6 BOOLValue])
    {
      [(PABSPasscodeLockController *)self showAlertForPhoneAutoUnlockEnablementOfDevice:v12 ofSpecifier:v7];
    }

    else
    {
      v14 = PABSLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "disabling autounlock device: %@", buf, 0xCu);
      }

      v15 = [(PABSPasscodeLockController *)self autoUnlockManager];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__PABSPasscodeLockController_setAutoUnlockEnabled_specifier___block_invoke;
      v17[3] = &unk_279A034E8;
      v12 = v12;
      v18 = v12;
      v19 = self;
      [v15 disableAutoUnlockForDevice:v12 completionHandler:v17];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61__PABSPasscodeLockController_setAutoUnlockEnabled_specifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__PABSPasscodeLockController_setAutoUnlockEnabled_specifier___block_invoke_cold_1(a1, v4, v5);
    }
  }

  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "autounlock device disabled: %@", &v9, 0xCu);
  }

  [*(a1 + 40) updateAutoUnlockSpecifiers];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateAutoUnlockDevicewithDevice:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__PABSPasscodeLockController_updateAutoUnlockDevicewithDevice___block_invoke;
  v6[3] = &unk_279A030D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __63__PABSPasscodeLockController_updateAutoUnlockDevicewithDevice___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueID];
  v4 = [v2 specifierForID:v3];

  if (v4)
  {
    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 identifier];
      v7 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@: Updating auto unlock specifier for device: %@. - Reloading -", &v9, 0x16u);
    }

    [v4 setObject:*(a1 + 40) forKeyedSubscript:@"PABSAutoUnlockDeviceKey"];
    [*(a1 + 32) reloadSpecifier:v4 animated:1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)showAlertForPhoneAutoUnlockEnablementOfDevice:(id)a3 ofSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = [v6 uniqueID];
    v7 = [(PABSPasscodeLockController *)self specifierForID:v8];
  }

  v9 = MEMORY[0x277D75110];
  v10 = MEMORY[0x277CCACA8];
  v11 = PABS_LocalizedStringForPasscodeLock(@"PHONE_AUTO_UNLOCK_ALERT_TITLE");
  v12 = [v6 name];
  v13 = [v10 stringWithFormat:v11, v12];
  v14 = MEMORY[0x277CCACA8];
  v15 = PABS_LocalizedStringForPasscodeLock(@"PHONE_AUTO_UNLOCK_ALERT_BODY");
  v16 = [v6 name];
  v17 = [v14 stringWithFormat:v15, v16];
  v18 = [v9 alertControllerWithTitle:v13 message:v17 preferredStyle:1];

  v19 = MEMORY[0x277D750F8];
  v20 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __88__PABSPasscodeLockController_showAlertForPhoneAutoUnlockEnablementOfDevice_ofSpecifier___block_invoke;
  v32[3] = &unk_279A036A8;
  v21 = v7;
  v33 = v21;
  v22 = v6;
  v34 = v22;
  v35 = self;
  v23 = [v19 actionWithTitle:v20 style:1 handler:v32];
  [v18 addAction:v23];

  v24 = MEMORY[0x277D750F8];
  v25 = PABS_LocalizedStringForPasscodeLock(@"TURN_ON");
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __88__PABSPasscodeLockController_showAlertForPhoneAutoUnlockEnablementOfDevice_ofSpecifier___block_invoke_903;
  v29[3] = &unk_279A036A8;
  v29[4] = self;
  v30 = v22;
  v31 = v21;
  v26 = v21;
  v27 = v22;
  v28 = [v24 actionWithTitle:v25 style:0 handler:v29];

  [v18 addAction:v28];
  [v18 setPreferredAction:v28];
  [(PABSPasscodeLockController *)self presentViewController:v18 animated:1 completion:0];
}

uint64_t __88__PABSPasscodeLockController_showAlertForPhoneAutoUnlockEnablementOfDevice_ofSpecifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: Cancelled enable phone auto unlock with device: %@. - Reloading -", &v8, 0x16u);
  }

  v5 = [*(a1 + 48) autoUnlockManager];
  [v5 declinedToEnablePhoneAutoUnlock];

  result = [*(a1 + 48) reloadSpecifier:*(a1 + 32) animated:1];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)enableAutoUnlockForDevice:(id)a3 ofSpecifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "enabling autounlock device: %@", &v14, 0xCu);
  }

  v7 = [(PABSPasscodeLockController *)self specifier];

  if (!v7)
  {
    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController enableAutoUnlockForDevice:ofSpecifier:];
    }
  }

  v9 = [(PABSPasscodeLockController *)self specifier];
  v10 = [v9 propertyForKey:*MEMORY[0x277D40100]];

  if (!v10)
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController enableAutoUnlockForDevice:ofSpecifier:];
    }
  }

  v12 = [(PABSPasscodeLockController *)self autoUnlockManager];
  [v12 enableAutoUnlockWithDevice:v5 passcode:v10];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)presentAutoUnlockEnableFailureAlertWithDevice:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__PABSPasscodeLockController_presentAutoUnlockEnableFailureAlertWithDevice_withError___block_invoke;
  block[3] = &unk_279A03D38;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __86__PABSPasscodeLockController_presentAutoUnlockEnableFailureAlertWithDevice_withError___block_invoke(id *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Presenting autounlock enable failure alert of device: %@, with error: %@", buf, 0x16u);
  }

  v5 = [a1[5] userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

  v7 = [a1[5] userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D54D28]];

  if (!v8)
  {
    v8 = PABS_LocalizedStringForPasscodeLock(@"WATCH_AUTO_UNLOCK_FAILED_BODY");
  }

  v9 = [a1[6] errorActionWithAutoUnlockError:a1[5]];
  objc_initWeak(&location, a1[6]);
  if (v9)
  {
    v10 = PABS_LocalizedStringForPasscodeLock(@"OPEN");
    v11 = &__block_literal_global_913;
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__PABSPasscodeLockController_presentAutoUnlockEnableFailureAlertWithDevice_withError___block_invoke_907;
    aBlock[3] = &unk_279A03DD8;
    v25 = a1[4];
    v12 = a1[5];
    v13 = a1[6];
    v26 = v12;
    v27 = v13;
    objc_copyWeak(&v28, &location);
    v11 = _Block_copy(aBlock);
    v10 = PABS_LocalizedStringForPasscodeLock(@"TRY_AGAIN");
    objc_destroyWeak(&v28);
  }

  v14 = PABSLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v31 = v9;
    v32 = 2112;
    v33 = v6;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "Presenting autounlock enable error of action type:%lu with title: %@, body: %@, actionTitle: %@", buf, 0x2Au);
  }

  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  v16 = MEMORY[0x277D750F8];
  v17 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__PABSPasscodeLockController_presentAutoUnlockEnableFailureAlertWithDevice_withError___block_invoke_918;
  v21[3] = &unk_279A03220;
  v22 = a1[5];
  v23 = a1[4];
  v18 = [v16 actionWithTitle:v17 style:1 handler:v21];

  v19 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:v11];
  [v15 addAction:v18];
  [v15 addAction:v19];
  [v15 setPreferredAction:v19];
  [a1[6] presentViewController:v15 animated:1 completion:0];

  objc_destroyWeak(&location);
  v20 = *MEMORY[0x277D85DE8];
}

void __86__PABSPasscodeLockController_presentAutoUnlockEnableFailureAlertWithDevice_withError___block_invoke_907(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Retry enable auto unlock with device: %@, of previous error: %@", &v10, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) uniqueID];
  v7 = [v5 specifierForID:v6];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained enableAutoUnlockForDevice:*(a1 + 32) ofSpecifier:v7];

  v9 = *MEMORY[0x277D85DE8];
}

void __86__PABSPasscodeLockController_presentAutoUnlockEnableFailureAlertWithDevice_withError___block_invoke_911()
{
  v0 = PABSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_25E0E9000, v0, OS_LOG_TYPE_DEFAULT, "Switch to watch app to setup watch for auto unlock", v3, 2u);
  }

  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=PASSCODE_ID"];
  [v1 openSensitiveURL:v2 withOptions:0];
}

void __86__PABSPasscodeLockController_presentAutoUnlockEnableFailureAlertWithDevice_withError___block_invoke_918(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Ignored auto unlock enable error alert: %@ of device: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)a3 enablingLockedDevice:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "autounlock device requires unlock: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)a3 didEnableDevice:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "autounlock device enabled: %@", &v8, 0xCu);
  }

  [(PABSPasscodeLockController *)self updateAutoUnlockDevicewithDevice:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)a3 failedToEnableDevice:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PABSPasscodeLockController manager:failedToEnableDevice:error:];
  }

  [(PABSPasscodeLockController *)self updateAutoUnlockDevicewithDevice:v7];
  [(PABSPasscodeLockController *)self presentAutoUnlockEnableFailureAlertWithDevice:v7 withError:v8];
}

- (id)visionUnlockEnabled:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"PABSVisionUnlockDeviceKey"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "enabledAsKey")}];

  return v4;
}

- (void)setVisionUnlockEnabled:(id)a3 specifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController setVisionUnlockEnabled:specifier:];
    }
  }

  v9 = [(PABSPasscodeLockController *)self visionUnlockEnabled:v7];
  v10 = PABSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 identifier];
    v21 = 138412802;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", &v21, 0x20u);
  }

  v12 = [v6 BOOLValue];
  if (v12 == [v9 BOOLValue])
  {
    v13 = PABSLogForCategory(0);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v14 = [v7 identifier];
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&dword_25E0E9000, v13, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", &v21, 0xCu);
LABEL_16:

    goto LABEL_17;
  }

  v13 = [v7 objectForKeyedSubscript:@"PABSVisionUnlockDeviceKey"];
  if (![v6 BOOLValue])
  {
    v15 = PABSLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v13;
      _os_log_impl(&dword_25E0E9000, v15, OS_LOG_TYPE_DEFAULT, "disabling Vision Pro autounlock device: %@", &v21, 0xCu);
    }

    v16 = [(PABSPasscodeLockController *)self authenticationManager];
    v17 = [v13 idsDeviceID];
    v18 = [v16 disableForType:12 withIDSDeviceID:v17];
    [v7 setObject:v18 forKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];

    v14 = PABSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v7 objectForKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "SeesionID for disabling Vision Pro autounlock device: %@", &v21, 0xCu);
    }

    goto LABEL_16;
  }

  [(PABSPasscodeLockController *)self showAlertForVisionUnlockEnablementOfDevice:v13 ofSpecifier:v7];
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)enableVisionUnlockForDevice:(id)a3 ofSpecifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PABSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "enabling Vision Pro autounlock device: %@", &v19, 0xCu);
  }

  if (!v7)
  {
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController enableVisionUnlockForDevice:ofSpecifier:];
    }
  }

  v10 = [(PABSPasscodeLockController *)self specifier];
  v11 = [v10 propertyForKey:*MEMORY[0x277D40100]];

  if (!v11)
  {
    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController enableVisionUnlockForDevice:ofSpecifier:];
    }
  }

  v13 = [(PABSPasscodeLockController *)self authenticationManager];
  v14 = [v6 idsDeviceID];
  v15 = [v13 enableForType:12 withIDSDeviceID:v14 passcode:v11];
  [v7 setObject:v15 forKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];

  v16 = PABSLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v7 objectForKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];
    v19 = 138412290;
    v20 = v17;
    _os_log_impl(&dword_25E0E9000, v16, OS_LOG_TYPE_DEFAULT, "SeesionID for enabling Vision Pro autounlock device: %@", &v19, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)parseVisionUnlockCandidateDevices:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Found %@ vision unlock ios device(s)", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v27 = *MEMORY[0x277D40160];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = PABSLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 name];
          v14 = [v11 modelDescription];
          v15 = [v11 enabledAsKey];
          *buf = 138412802;
          v34 = v13;
          v35 = 2112;
          v36 = v14;
          v37 = 1024;
          v38 = v15;
          _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "PAU vision device name: %@, model description: %@, unlock enabled: %d", buf, 0x1Cu);
        }

        v16 = MEMORY[0x277D3FAD8];
        v17 = [v11 name];
        v18 = [v16 preferenceSpecifierNamed:v17 target:self set:sel_setVisionUnlockEnabled_specifier_ get:sel_visionUnlockEnabled_ detail:0 cell:6 edit:0];

        v19 = [v11 modelDescription];
        v20 = [v19 length];

        if (v20)
        {
          v21 = [v11 modelDescription];
          [v18 setProperty:v21 forKey:v27];
        }

        v22 = [v11 uniqueID];
        [v18 setIdentifier:v22];

        [v18 setObject:v11 forKeyedSubscript:@"PABSVisionUnlockDeviceKey"];
        [v4 addObject:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v8);
  }

  v23 = [v4 copy];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)updatePendingVisionUnlockDeviceForSession:(id)a3 forceReload:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__PABSPasscodeLockController_updatePendingVisionUnlockDeviceForSession_forceReload___block_invoke;
    block[3] = &unk_279A036D0;
    v12 = a4;
    v10 = v6;
    v11 = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v8 = v10;
  }

  else
  {
    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController updatePendingVisionUnlockDeviceForSession:forceReload:];
    }
  }
}

void __84__PABSPasscodeLockController_updatePendingVisionUnlockDeviceForSession_forceReload___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) UUIDString];
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Requested force refresh for sessionID: %@", buf, 0xCu);
    }

    v4 = [*(a1 + 40) authenticationManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__PABSPasscodeLockController_updatePendingVisionUnlockDeviceForSession_forceReload___block_invoke_923;
    v12[3] = &unk_279A03E00;
    v11 = *(a1 + 32);
    v5 = v11.i64[0];
    v13 = vextq_s8(v11, v11, 8uLL);
    [v4 listCandidateDevicesForType:12 completionHandler:v12];
  }

  else
  {
    v6 = [*(a1 + 40) getPendingVisionDeviceIdForSession:*(a1 + 32)];
    if (v6)
    {
      v7 = PABSLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "%@: Found pending device for session %@, resetting UnlockPairingSessionKey. - Reloading - ", buf, 0x16u);
      }

      v9 = [*(a1 + 40) specifierForID:v6];
      [v9 setObject:0 forKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];
      [*(a1 + 40) reloadSpecifier:v9 animated:1];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __84__PABSPasscodeLockController_updatePendingVisionUnlockDeviceForSession_forceReload___block_invoke_923(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__PABSPasscodeLockController_updatePendingVisionUnlockDeviceForSession_forceReload___block_invoke_923_cold_1();
    }
  }

  v31 = v6;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = PABSLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 name];
          v16 = [v13 modelDescription];
          v17 = [v13 enabledAsKey];
          *buf = 138412802;
          v40 = v15;
          v41 = 2112;
          v42 = v16;
          v43 = 1024;
          v44 = v17;
          _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "PAU vision device name: %@, model description: %@, unlock enabled: %d", buf, 0x1Cu);
        }

        v18 = *(a1 + 32);
        v19 = [v13 uniqueID];
        v20 = [v18 specifierForID:v19];

        [v20 setObject:v13 forKeyedSubscript:@"PABSVisionUnlockDeviceKey"];
        v21 = [v20 objectForKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];

        if (v21)
        {
          v22 = [v20 objectForKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];
          if ([*(a1 + 40) isEqual:v22])
          {
            v23 = PABSLogForCategory(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v11;
              v25 = v8;
              v26 = *(a1 + 40);
              v27 = [v13 uniqueID];
              *buf = 138412546;
              v40 = v26;
              v8 = v25;
              v11 = v24;
              v41 = 2112;
              v42 = v27;
              _os_log_impl(&dword_25E0E9000, v23, OS_LOG_TYPE_DEFAULT, "Found pending device for session %@, Updating specifier for device: %@", buf, 0x16u);
            }

            [v20 setObject:0 forKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];
          }
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __84__PABSPasscodeLockController_updatePendingVisionUnlockDeviceForSession_forceReload___block_invoke_924;
        block[3] = &unk_279A030D0;
        v28 = *(a1 + 32);
        v33 = v20;
        v34 = v28;
        v29 = v20;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v10);
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __84__PABSPasscodeLockController_updatePendingVisionUnlockDeviceForSession_forceReload___block_invoke_924(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: updatePendingVisionUnlockDeviceForSession: - Reloading - ", &v6, 0xCu);
  }

  result = [*(a1 + 40) reloadSpecifier:*(a1 + 32) animated:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getPendingVisionDeviceIdForSession:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(PABSPasscodeLockController *)self autoUnlockSpecifiers];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"PABSVisionUnlockDeviceKey"];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 objectForKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];

            if (v13)
            {
              v14 = [v10 objectForKeyedSubscript:@"PABSVisionUnlockPairingSessionKey"];
              if ([v4 isEqual:v14])
              {
                v16 = [v10 identifier];

                goto LABEL_19;
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 UUIDString];
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Pending vision device id not found for sessionid %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController getPendingVisionDeviceIdForSession:];
    }
  }

  v16 = 0;
LABEL_19:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)manager:(id)a3 didEnableAuthenticationForSessionWithID:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUIDString];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Successfully enabled Vision Pro autounlock device SessionID: %@", &v9, 0xCu);
  }

  [(PABSPasscodeLockController *)self updatePendingVisionUnlockDeviceForSession:v5 forceReload:1];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)a3 didFailToEnableDeviceForSessionWithID:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PABSPasscodeLockController manager:didFailToEnableDeviceForSessionWithID:error:];
  }

  v10 = [(PABSPasscodeLockController *)self getPendingVisionDeviceIdForSession:v7];
  [(PABSPasscodeLockController *)self updatePendingVisionUnlockDeviceForSession:v7 forceReload:0];
  if (v10)
  {
    v11 = [(PABSPasscodeLockController *)self specifierForID:v10];
    if (v11)
    {
      [(PABSPasscodeLockController *)self presentVisionUnlockEnableFailureAlertWithDevice:v11 withError:v8];
    }

    else
    {
      v12 = PABSLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PABSPasscodeLockController manager:didFailToEnableDeviceForSessionWithID:error:];
      }
    }
  }

  else
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PABSPasscodeLockController manager:didFailToEnableDeviceForSessionWithID:error:];
    }
  }
}

- (void)manager:(id)a3 didDisableAuthenticationForSessionWithID:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Successfully disabled Vision Pro autounlock device SessionID: %@", &v8, 0xCu);
  }

  [(PABSPasscodeLockController *)self updatePendingVisionUnlockDeviceForSession:v5 forceReload:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)a3 didFailToDisableDeviceForSessionWithID:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PABSPasscodeLockController manager:didFailToDisableDeviceForSessionWithID:error:];
  }

  [(PABSPasscodeLockController *)self updatePendingVisionUnlockDeviceForSession:v7 forceReload:0];
}

- (void)showAlertForVisionUnlockEnablementOfDevice:(id)a3 ofSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = [v6 uniqueID];
    v7 = [(PABSPasscodeLockController *)self specifierForID:v8];
  }

  v9 = MEMORY[0x277D75110];
  v10 = MEMORY[0x277CCACA8];
  v11 = PABS_LocalizedStringForPasscodeLock(@"PHONE_AUTO_UNLOCK_ALERT_TITLE");
  v12 = [v6 name];
  v13 = [v10 stringWithFormat:v11, v12];
  v14 = MEMORY[0x277CCACA8];
  v15 = PABS_LocalizedStringForPasscodeLock(@"PHONE_VISION_PRO_AUTO_UNLOCK_ALERT_BODY");
  v16 = [v6 name];
  v17 = [v14 stringWithFormat:v15, v16];
  v18 = [v9 alertControllerWithTitle:v13 message:v17 preferredStyle:1];

  v19 = MEMORY[0x277D750F8];
  v20 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__PABSPasscodeLockController_showAlertForVisionUnlockEnablementOfDevice_ofSpecifier___block_invoke;
  v32[3] = &unk_279A036A8;
  v21 = v7;
  v33 = v21;
  v22 = v6;
  v34 = v22;
  v35 = self;
  v23 = [v19 actionWithTitle:v20 style:1 handler:v32];
  [v18 addAction:v23];

  v24 = MEMORY[0x277D750F8];
  v25 = PABS_LocalizedStringForPasscodeLock(@"TURN_ON");
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __85__PABSPasscodeLockController_showAlertForVisionUnlockEnablementOfDevice_ofSpecifier___block_invoke_928;
  v29[3] = &unk_279A036A8;
  v29[4] = self;
  v30 = v22;
  v31 = v21;
  v26 = v21;
  v27 = v22;
  v28 = [v24 actionWithTitle:v25 style:0 handler:v29];

  [v18 addAction:v28];
  [v18 setPreferredAction:v28];
  [(PABSPasscodeLockController *)self presentViewController:v18 animated:1 completion:0];
}

uint64_t __85__PABSPasscodeLockController_showAlertForVisionUnlockEnablementOfDevice_ofSpecifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: Cancelled enable phone auto unlock with vision device: %@. - Reloading -", &v7, 0x16u);
  }

  result = [*(a1 + 48) reloadSpecifier:*(a1 + 32) animated:1];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)presentVisionUnlockEnableFailureAlertWithDevice:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"PABSVisionUnlockDeviceKey"];
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D54D30]];

    v11 = [v7 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D54D28]];

    if (!v10)
    {
      v13 = PABS_LocalizedStringForPasscodeLock(@"PHONE_VISION_UNLOCK_FAILURE_ALERT_TITLE");

      v12 = v13;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__PABSPasscodeLockController_presentVisionUnlockEnableFailureAlertWithDevice_withError___block_invoke;
    v17[3] = &unk_279A03E28;
    v18 = v8;
    v19 = v7;
    v20 = v10;
    v21 = v12;
    v22 = v6;
    v23 = self;
    v14 = v12;
    v15 = v10;
    v16 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v17);
  }
}

void __88__PABSPasscodeLockController_presentVisionUnlockEnableFailureAlertWithDevice_withError___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v27 = v3;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Presenting Vision autounlock enable failure alert of Vision device: %@, with error: %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 48) message:*(a1 + 56) preferredStyle:1];
  v6 = MEMORY[0x277D750F8];
  v7 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__PABSPasscodeLockController_presentVisionUnlockEnableFailureAlertWithDevice_withError___block_invoke_932;
  v22[3] = &unk_279A036A8;
  v23 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v24 = v8;
  v25 = v9;
  v10 = [v6 actionWithTitle:v7 style:1 handler:v22];
  [v5 addAction:v10];

  v11 = MEMORY[0x277D750F8];
  v12 = PABS_LocalizedStringForPasscodeLock(@"TRY_AGAIN");
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __88__PABSPasscodeLockController_presentVisionUnlockEnableFailureAlertWithDevice_withError___block_invoke_933;
  v18 = &unk_279A036A8;
  v19 = *(a1 + 72);
  v20 = *(a1 + 32);
  v21 = *(a1 + 64);
  v13 = [v11 actionWithTitle:v12 style:0 handler:&v15];

  [v5 addAction:{v13, v15, v16, v17, v18, v19}];
  [v5 setPreferredAction:v13];
  [*(a1 + 72) presentViewController:v5 animated:1 completion:0];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __88__PABSPasscodeLockController_presentVisionUnlockEnableFailureAlertWithDevice_withError___block_invoke_932(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: Cancelled failure alert for retry vision device: %@. - Reloading -", &v7, 0x16u);
  }

  result = [*(a1 + 48) reloadSpecifier:*(a1 + 32) animated:1];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeRemoveFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 _passcodeRemovalService];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_553_cold_1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 _passcodeChangeService];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __132__PABSPasscodeLockController_showLocalAuthenticationPasscodeChangeFlowFromPresentingController_title_passcodePrompt_withCompletion___block_invoke_555_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__PABSPasscodeLockController_gracePeriodClearRecoveryPasscode___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addGracePeriodPasscodeRecoveryFooterToSpecifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(&dword_25E0E9000, v0, v1, "Now [%@] is past RecoveryExpiryDate [%@]");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)voiceDial:.cold.1()
{
  v0 = PABSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_8(&dword_25E0E9000, v1, v2, "The MCFeatureAllowVoiceDialing profile feature has no default value, please file a radar.", v3, v4, v5, v6, 0);
  }

  __assert_rtn("[PABSPasscodeLockController voiceDial:]", "PABSPasscodeLockController.m", 1172, "MCRestrictedBoolNoData != value");
}

- (void)wallet:.cold.1()
{
  v0 = PABSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_8(&dword_25E0E9000, v1, v2, "The MCFeatureCardsWhileLockedAllowed profile feature has no default value, please file a radar.", v3, v4, v5, v6, 0);
  }

  __assert_rtn("[PABSPasscodeLockController wallet:]", "PABSPasscodeLockController.m", 1334, "MCRestrictedBoolNoData != value");
}

- (void)trmUnificationFeatureIsEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__PABSPasscodeLockController_updateAutoUnlockSpecifiers__block_invoke_864_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__PABSPasscodeLockController_setupAutoUnlockSectionWithSpecifiers___block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v2 = [WeakRetained autoUnlockSpecifiers];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __61__PABSPasscodeLockController_setAutoUnlockEnabled_specifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_6(&dword_25E0E9000, a2, a3, "Error when disabling autounlock device: %@, error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)manager:failedToEnableDevice:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(&dword_25E0E9000, v0, v1, "failed to enable autounlock device: %@, with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __84__PABSPasscodeLockController_updatePendingVisionUnlockDeviceForSession_forceReload___block_invoke_923_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)manager:didFailToEnableDeviceForSessionWithID:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 UUIDString];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)manager:didFailToDisableDeviceForSessionWithID:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 UUIDString];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end