@interface PSKeychainSyncManager
+ (id)sharedManager;
+ (void)getStatusWithCompletion:(id)completion;
- (BOOL)_changeSecurityCode:(id)code type:(int)type smsTarget:(id)target smsTargetCountryInfo:(id)info username:(id)username passwordOrEquivalentToken:(id)token error:(id *)error;
- (BOOL)_errorRequiresPasswordPrompt:(id)prompt;
- (BOOL)_registerUserCredentialsName:(id)name rawPassword:(id)password error:(id *)error;
- (BOOL)_resetCircleAndDisableBackupWithError:(id *)error;
- (PSKeychainSyncManager)init;
- (UIViewController)hostViewController;
- (id)navigationController;
- (id)preferencesApp;
- (id)viewControllerForPresentingAlerts;
- (void)_autoVetSMSValidationWithToken:(id)token;
- (void)_callCompletionWithStatus:(int)status error:(id)error;
- (void)_changeToNewSecurityCode:(id)code type:(int)type smsTarget:(id)target smsTargetCountryInfo:(id)info;
- (void)_circleJoinAfterRecoveryTimerFired:(id)fired;
- (void)_cleanup;
- (void)_cleanupAppleIDCredentials;
- (void)_disableCDPKeychainSyncOverController:(id)controller deletingSafariPasswords:(BOOL)passwords withCompletion:(id)completion;
- (void)_disableKeychainSyncOverController:(id)controller deletingSafariPasswords:(BOOL)passwords withCompletion:(id)completion;
- (void)_enableSecureBackupWithPhoneNumber:(id)number countryInfo:(id)info;
- (void)_finishedWithStatus:(int)status error:(id)error;
- (void)_peerApprovalFromRecoveryFlow;
- (void)_preSetupCancelledWithCurrentStatus;
- (void)_presentAuthControllerWithPresentingVC:(id)c completion:(id)completion;
- (void)_promptUserToDeleteSafariSavedContentWithCompletion:(id)completion;
- (void)_recoverWithSecurityCode:(id)code verificationCode:(id)verificationCode;
- (void)_registerForCircleChangeNotifications;
- (void)_registerForCircleChangeNotificationsWithCompletion:(id)completion;
- (void)_resetFromRecoveryFlow;
- (void)_showGenericFlowErrorAlertWithDismissalHandler:(id)handler;
- (void)_showInvalidPhoneNumberAlertWithDigits:(id)digits countryInfo:(id)info;
- (void)_showResetFlowOverController:(id)controller withEnableBackupText:(BOOL)text withCompletion:(id)completion;
- (void)_startCircleJoinAfterRecoveryTimer;
- (void)_stopCircleJoinAfterRecoveryTimer;
- (void)dealloc;
- (void)disableKeychainSyncOverController:(id)controller withCompletion:(id)completion;
- (void)dismissAppleSupportPane:(id)pane;
- (void)handleCircleChangedNotification;
- (void)joinCircleAfterRecovery:(BOOL)recovery withCompletion:(id)completion;
- (void)joinCircleAndEnableSecureBackupWithPhoneNumber:(id)number countryInfo:(id)info;
- (void)keychainSyncController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)keychainSyncControllerCancel:(id)cancel;
- (void)keychainSyncPhoneNumberController:(id)controller didCompleteWithPhoneNumber:(id)number countryInfo:(id)info;
- (void)makeSettingsSetupControllerWithSpecifier:(id)specifier parent:(id)parent initialController:(id)controller;
- (void)pinChoiceAlertDidChooseToUseDevicePasscode:(BOOL)passcode;
- (void)promptForDevicePasscodeChangeToPasscode:(id)passcode overController:(id)controller completion:(id)completion;
- (void)promptForPasswordIfCredentialsNotCachedOverController:(id)controller withCompletion:(id)completion;
- (void)promptForPasswordIfNeededForWritingOverController:(id)controller withCompletion:(id)completion;
- (void)promptForPasswordIfNeededOverController:(id)controller withCompletion:(id)completion;
- (void)promptForPasswordIfNeededWithCompletion:(id)completion;
- (void)promptForPasswordOverController:(id)controller withCompletion:(id)completion;
- (void)setAppleIDRawPassword:(id)password equivalentToken:(id)token;
- (void)setCompletion:(id)completion;
- (void)setStagedSecurityCode:(id)code type:(int)type;
- (void)showAlert:(id)alert;
- (void)showChangeSecurityCodeFlowWithSpecifier:(id)specifier overController:(id)controller completion:(id)completion;
- (void)showContactAppleSupportPane;
- (void)showController:(id)controller;
- (void)showEnableEscrowFlowWithSpecifier:(id)specifier overController:(id)controller completion:(id)completion;
- (void)showEnableFlowWithNavigationController:(id)controller completion:(id)completion;
- (void)showEnableSyncFlowWithSpecifier:(id)specifier overController:(id)controller completion:(id)completion;
- (void)showNetworkReachabilityError;
- (void)showPinChoiceAlert;
- (void)showRecoveryFlowWithNavigationController:(id)controller completion:(id)completion;
- (void)showRecoveryFlowWithSpecifier:(id)specifier overController:(id)controller completion:(id)completion;
- (void)showResetAcknowledgementIfNeededWithCompletion:(id)completion;
- (void)showResetAndJoinFlowOverController:(id)controller withCompletion:(id)completion;
- (void)startNavigationSpinnerInViewController:(id)controller;
- (void)stopNavigationSpinner;
@end

@implementation PSKeychainSyncManager

+ (id)sharedManager
{
  v2 = sharedManager__instance;
  if (!sharedManager__instance)
  {
    v3 = objc_alloc_init(PSKeychainSyncManager);
    v4 = sharedManager__instance;
    sharedManager__instance = v3;

    v2 = sharedManager__instance;
  }

  return v2;
}

- (PSKeychainSyncManager)init
{
  v5.receiver = self;
  v5.super_class = PSKeychainSyncManager;
  v2 = [(PSKeychainSyncManager *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _clearKeychainSyncCache, @"ClearKeychainSyncSettingsCache", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (void)getStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PSKeychainSyncManager_getStatusWithCompletion___block_invoke;
    block[3] = &unk_1E71DC0D8;
    v6 = completionCopy;
    dispatch_async(v4, block);
  }
}

void __49__PSKeychainSyncManager_getStatusWithCompletion___block_invoke(uint64_t a1)
{
  v10 = 0;
  Status = PSKeychainSyncGetStatus(&v10);
  v3 = v10;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PSKeychainSyncManager_getStatusWithCompletion___block_invoke_2;
  v6[3] = &unk_1E71DCFD8;
  v4 = *(a1 + 32);
  v9 = Status;
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)showEnableSyncFlowWithSpecifier:(id)specifier overController:(id)controller completion:(id)completion
{
  specifierCopy = specifier;
  controllerCopy = controller;
  completionCopy = completion;
  mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  isNetworkReachable = [mEMORY[0x1E698B6A0] isNetworkReachable];

  if (isNetworkReachable)
  {
    self->_flow = 1;
    [(PSKeychainSyncManager *)self setCompletion:completionCopy];
    [(PSKeychainSyncManager *)self setHostViewController:controllerCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke;
    v14[3] = &unk_1E71DD028;
    v14[4] = self;
    v17 = completionCopy;
    v15 = specifierCopy;
    v16 = controllerCopy;
    [(PSKeychainSyncManager *)self promptForPasswordIfNeededForWritingOverController:v16 withCompletion:v14];
  }

  else
  {
    [(PSKeychainSyncManager *)self showNetworkReachabilityError];
    if (completionCopy)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 1, v13);
    }
  }
}

void __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = PSKeychainSyncCircleExists();
    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = *(a1 + 56);

      [v4 joinCircleWithCompletion:v5];
    }

    else
    {
      [v4 makeSettingsSetupControllerWithSpecifier:*(a1 + 40) parent:*(a1 + 48) initialController:0];
      if (PSIsKeychainSecureBackupEnabled(0))
      {
        v7 = MEMORY[0x1E69DC650];
        v8 = PS_LocalizedStringForKeychainSync(@"ENABLE_IS_RECOVERY");
        v9 = PS_LocalizedStringForKeychainSync(@"ENABLE_IS_RECOVERY_DESCRIPTION");
        v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

        v11 = MEMORY[0x1E69DC648];
        v12 = PS_LocalizedStringForKeychainSync(@"RESTORE_WITH_SECURITY_CODE");
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke_2;
        v36[3] = &unk_1E71DC060;
        v13 = *(a1 + 40);
        v36[4] = *(a1 + 32);
        v37 = v13;
        v38 = *(a1 + 48);
        v14 = [v11 actionWithTitle:v12 style:0 handler:v36];
        [v10 addAction:v14];

        v15 = MEMORY[0x1E69DC648];
        v16 = PS_LocalizedStringForKeychainSync(@"RESET_ICLOUD_KEYCHAIN");
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke_3;
        v33[3] = &unk_1E71DC060;
        v33[4] = *(a1 + 32);
        v34 = *(a1 + 48);
        v35 = *(a1 + 40);
        v17 = [v15 actionWithTitle:v16 style:0 handler:v33];
        [v10 addAction:v17];

        v18 = MEMORY[0x1E69DC648];
        v19 = PS_LocalizedStringForKeychainSync(@"CANCEL");
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke_5;
        v32[3] = &unk_1E71DC288;
        v32[4] = *(a1 + 32);
        v20 = [v18 actionWithTitle:v19 style:1 handler:v32];
        [v10 addAction:v20];

        [*(a1 + 32) showAlert:v10];
      }

      else
      {
        v21 = [MEMORY[0x1E69ADFB8] sharedConnection];
        v22 = [v21 isPasscodeSet];

        if (v22)
        {
          v23 = *(a1 + 32);

          [v23 showPinChoiceAlert];
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          [v24 setProperty:v26 forKey:@"customControllerClass"];

          v27 = objc_opt_new();
          v28 = *(a1 + 32);
          v29 = *(v28 + 32);
          *(v28 + 32) = v27;

          [*(a1 + 32) makeSettingsSetupControllerWithSpecifier:*(a1 + 40) parent:*(a1 + 48) initialController:*(*(a1 + 32) + 32)];
          [*(*(a1 + 32) + 32) setShowsAdvancedSettings:1];
          [*(*(a1 + 32) + 32) setMode:1];
          v30 = *(a1 + 48);
          v31 = *(*(a1 + 32) + 200);

          [v30 presentViewController:v31 animated:1 completion:0];
        }
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);

    [v6 _preSetupCancelledWithCurrentStatus];
  }
}

void __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke_2(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [v1 completion];
  [v1 showRecoveryFlowWithSpecifier:v2 overController:v3 completion:v4];
}

void __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke_4;
  v4[3] = &unk_1E71DD000;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v2 _showResetFlowOverController:v3 withEnableBackupText:1 withCompletion:v4];
}

void __83__PSKeychainSyncManager_showEnableSyncFlowWithSpecifier_overController_completion___block_invoke_4(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = [*(a1 + 32) completion];
    [v3 showEnableSyncFlowWithSpecifier:v4 overController:v5 completion:v7];
  }

  else
  {
    v6 = *(a1 + 32);

    [v6 _finishedWithStatus:0 error:a3];
  }
}

- (void)showEnableEscrowFlowWithSpecifier:(id)specifier overController:(id)controller completion:(id)completion
{
  specifierCopy = specifier;
  controllerCopy = controller;
  self->_flow = 2;
  [(PSKeychainSyncManager *)self setCompletion:completion];
  [(PSKeychainSyncManager *)self setHostViewController:controllerCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PSKeychainSyncManager_showEnableEscrowFlowWithSpecifier_overController_completion___block_invoke;
  v12[3] = &unk_1E71DD000;
  v12[4] = self;
  v13 = specifierCopy;
  v14 = controllerCopy;
  v10 = controllerCopy;
  v11 = specifierCopy;
  [(PSKeychainSyncManager *)self promptForPasswordIfNeededForWritingOverController:v10 withCompletion:v12];
}

uint64_t __85__PSKeychainSyncManager_showEnableEscrowFlowWithSpecifier_overController_completion___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 makeSettingsSetupControllerWithSpecifier:*(a1 + 40) parent:*(a1 + 48) initialController:0];
    v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v5 = [v4 isPasscodeSet];

    if (v5)
    {
      v6 = *(a1 + 32);

      return [v6 showPinChoiceAlert];
    }

    else
    {
      v8 = objc_opt_new();
      v9 = *(a1 + 32);
      v10 = *(v9 + 32);
      *(v9 + 32) = v8;

      [*(a1 + 32) makeSettingsSetupControllerWithSpecifier:*(a1 + 40) parent:*(a1 + 48) initialController:*(*(a1 + 32) + 32)];
      [*(*(a1 + 32) + 32) setShowsAdvancedSettings:1];
      [*(*(a1 + 32) + 32) setMode:1];
      v11 = *(a1 + 48);
      v12 = *(*(a1 + 32) + 200);

      return [v11 presentViewController:v12 animated:1 completion:0];
    }
  }

  else
  {

    return [v3 _preSetupCancelledWithCurrentStatus];
  }
}

- (void)showRecoveryFlowWithSpecifier:(id)specifier overController:(id)controller completion:(id)completion
{
  specifierCopy = specifier;
  controllerCopy = controller;
  completionCopy = completion;
  mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  isNetworkReachable = [mEMORY[0x1E698B6A0] isNetworkReachable];

  if (isNetworkReachable)
  {
    self->_flow = 4;
    [(PSKeychainSyncManager *)self setCompletion:completionCopy];
    [(PSKeychainSyncManager *)self setHostViewController:controllerCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__PSKeychainSyncManager_showRecoveryFlowWithSpecifier_overController_completion___block_invoke;
    v14[3] = &unk_1E71DD000;
    v14[4] = self;
    v15 = specifierCopy;
    v16 = controllerCopy;
    [(PSKeychainSyncManager *)self promptForPasswordIfNeededForWritingOverController:v16 withCompletion:v14];
  }

  else
  {
    [(PSKeychainSyncManager *)self showNetworkReachabilityError];
    if (completionCopy)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:4 userInfo:0];
      completionCopy[2](completionCopy, 1, v13);
    }
  }
}

void __81__PSKeychainSyncManager_showRecoveryFlowWithSpecifier_overController_completion___block_invoke(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = objc_alloc_init(getSecureBackupClass_0());
    v26 = 0;
    v4 = [v3 getAccountInfoWithInfo:0 results:&v26];
    v5 = v26;
    v6 = _PSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v5;
      _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Starting recovery flow, accountInfo = %@", buf, 0xCu);
    }

    v7 = getkSecureBackupMetadataKey_0();
    v8 = [v5 objectForKey:v7];

    v9 = getkSecureBackupUsesComplexPassphraseKey();
    v10 = [v8 objectForKey:v9];
    v11 = [v10 BOOLValue];

    v12 = getkSecureBackupUsesRandomPassphraseKey();
    v13 = [v5 objectForKey:v12];
    v14 = [v13 BOOLValue];

    v15 = getkSecureBackupUsesNumericPassphraseKey();
    v16 = [v8 objectForKey:v15];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v18 = getkSecureBackupNumericPassphraseLengthKey();
      v19 = [v8 objectForKey:v18];
      v20 = [v19 integerValue];
    }

    else
    {
      v20 = 4;
    }

    v22 = objc_opt_new();
    v23 = *(a1 + 32);
    v24 = *(v23 + 56);
    *(v23 + 56) = v22;

    [*(a1 + 32) makeSettingsSetupControllerWithSpecifier:*(a1 + 40) parent:*(a1 + 48) initialController:*(*(a1 + 32) + 56)];
    if (v14)
    {
      v25 = 2;
    }

    else
    {
      v25 = (v17 ^ 1) & v11;
    }

    [*(*(a1 + 32) + 56) setMode:2];
    [*(*(a1 + 32) + 56) setNumberOfPasscodeFields:v20];
    [*(*(a1 + 32) + 56) setSecurityCodeType:v25];
    [*(a1 + 48) presentViewController:*(*(a1 + 32) + 200) animated:1 completion:0];
    [*(a1 + 32) _registerForCircleChangeNotifications];
  }

  else
  {
    v21 = *(a1 + 32);

    [v21 _preSetupCancelledWithCurrentStatus];
  }
}

- (void)showRecoveryFlowWithNavigationController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  isNetworkReachable = [mEMORY[0x1E698B6A0] isNetworkReachable];

  if (isNetworkReachable)
  {
    self->_flow = 4;
    [(PSKeychainSyncManager *)self setCompletion:completionCopy];
    [(PSKeychainSyncManager *)self setBuddyNavigationController:controllerCopy];
    topViewController = [controllerCopy topViewController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__PSKeychainSyncManager_showRecoveryFlowWithNavigationController_completion___block_invoke;
    v12[3] = &unk_1E71DCE98;
    v12[4] = self;
    [(PSKeychainSyncManager *)self promptForPasswordIfNeededForWritingOverController:topViewController withCompletion:v12];
  }

  else
  {
    [(PSKeychainSyncManager *)self showNetworkReachabilityError];
    if (completionCopy)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:4 userInfo:0];
      completionCopy[2](completionCopy, 1, v11);
    }
  }
}

void __77__PSKeychainSyncManager_showRecoveryFlowWithNavigationController_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = objc_alloc_init(getSecureBackupClass_0());
    v25 = 0;
    v4 = [v3 getAccountInfoWithInfo:0 results:&v25];
    v5 = v25;
    v6 = getkSecureBackupMetadataKey_0();
    v7 = [v5 objectForKey:v6];

    v8 = getkSecureBackupUsesComplexPassphraseKey();
    v9 = [v7 objectForKey:v8];
    v10 = [v9 BOOLValue];

    v11 = getkSecureBackupUsesRandomPassphraseKey();
    v12 = [v5 objectForKey:v11];
    v13 = [v12 BOOLValue];

    v14 = getkSecureBackupUsesNumericPassphraseKey();
    v15 = [v7 objectForKey:v14];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      v17 = getkSecureBackupNumericPassphraseLengthKey();
      v18 = [v7 objectForKey:v17];
      v19 = [v18 integerValue];
    }

    else
    {
      v19 = 4;
    }

    *(*(a1 + 32) + 16) = 4;
    v21 = objc_alloc_init(PSKeychainSyncSecurityCodeController);
    v22 = *(a1 + 32);
    v23 = *(v22 + 56);
    *(v22 + 56) = v21;

    [*(*(a1 + 32) + 56) setMode:2];
    if (v13)
    {
      v24 = 2;
    }

    else
    {
      v24 = v10;
    }

    [*(*(a1 + 32) + 56) setSecurityCodeType:v24];
    [*(*(a1 + 32) + 56) setNumberOfPasscodeFields:v19];
    [*(*(a1 + 32) + 56) setDelegate:?];
    [*(a1 + 32) showController:*(*(a1 + 32) + 56)];
    [*(a1 + 32) _registerForCircleChangeNotifications];
  }

  else
  {
    v20 = *(a1 + 32);

    [v20 _preSetupCancelledWithCurrentStatus];
  }
}

- (void)showChangeSecurityCodeFlowWithSpecifier:(id)specifier overController:(id)controller completion:(id)completion
{
  specifierCopy = specifier;
  controllerCopy = controller;
  self->_flow = 3;
  [(PSKeychainSyncManager *)self setChangeSecurityCodeCompletion:completion];
  [(PSKeychainSyncManager *)self setHostViewController:controllerCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PSKeychainSyncManager_showChangeSecurityCodeFlowWithSpecifier_overController_completion___block_invoke;
  v12[3] = &unk_1E71DD000;
  v12[4] = self;
  v13 = specifierCopy;
  v14 = controllerCopy;
  v10 = controllerCopy;
  v11 = specifierCopy;
  [(PSKeychainSyncManager *)self promptForPasswordIfNeededForWritingOverController:v10 withCompletion:v12];
}

uint64_t __91__PSKeychainSyncManager_showChangeSecurityCodeFlowWithSpecifier_overController_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    [*(a1 + 32) makeSettingsSetupControllerWithSpecifier:*(a1 + 40) parent:*(a1 + 48) initialController:*(*(a1 + 32) + 32)];
    [*(*(a1 + 32) + 32) setSecurityCodeType:0];
    [*(*(a1 + 32) + 32) setShowsAdvancedSettings:1];
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 32) + 200);

    return [v6 presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v9 = *(a1 + 32);

    return [v9 _preSetupCancelledWithCurrentStatus];
  }
}

- (void)showEnableFlowWithNavigationController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  isNetworkReachable = [mEMORY[0x1E698B6A0] isNetworkReachable];

  if (isNetworkReachable)
  {
    if (PSKeychainSyncCircleExists())
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 2, 0);
      }
    }

    else
    {
      self->_flow = 1;
      [(PSKeychainSyncManager *)self setCompletion:completionCopy];
      [(PSKeychainSyncManager *)self setBuddyNavigationController:controllerCopy];
      topViewController = [controllerCopy topViewController];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __75__PSKeychainSyncManager_showEnableFlowWithNavigationController_completion___block_invoke;
      v12[3] = &unk_1E71DC638;
      v12[4] = self;
      v13 = controllerCopy;
      [(PSKeychainSyncManager *)self promptForPasswordIfNeededForWritingOverController:topViewController withCompletion:v12];
    }
  }

  else
  {
    [(PSKeychainSyncManager *)self showNetworkReachabilityError];
    if (completionCopy)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:4 userInfo:0];
      (completionCopy)[2](completionCopy, 1, v10);
    }
  }
}

uint64_t __75__PSKeychainSyncManager_showEnableFlowWithNavigationController_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v4 = [v3 isPasscodeSet];

    if (v4)
    {
      v5 = *(a1 + 32);

      return [v5 showPinChoiceAlert];
    }

    else
    {
      v8 = objc_opt_new();
      v9 = *(a1 + 32);
      v10 = *(v9 + 32);
      *(v9 + 32) = v8;

      [*(*(a1 + 32) + 32) setDelegate:?];
      [*(*(a1 + 32) + 32) setShowsAdvancedSettings:1];
      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 32);

      return [v11 pushViewController:v12 animated:1];
    }
  }

  else
  {
    v7 = *(a1 + 32);

    return [v7 _preSetupCancelledWithCurrentStatus];
  }
}

- (void)_showResetFlowOverController:(id)controller withEnableBackupText:(BOOL)text withCompletion:(id)completion
{
  self->_flow = 5;
  completionCopy = completion;
  controllerCopy = controller;
  [(PSKeychainSyncManager *)self setResetPromptControllerHost:controllerCopy];
  [(PSKeychainSyncManager *)self setResetCompletion:completionCopy];

  [(PSKeychainSyncManager *)self setHostViewController:controllerCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke;
  v10[3] = &unk_1E71DD050;
  textCopy = text;
  v10[4] = self;
  [(PSKeychainSyncManager *)self promptForPasswordIfNeededForWritingOverController:controllerCopy withCompletion:v10];
}

void __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = @"REPLACE_ICLOUD_KEYCHAIN_DETAILS_WITH_RECOVERY";
    }

    else
    {
      v3 = @"REPLACE_ICLOUD_KEYCHAIN_DETAILS";
    }

    v4 = PS_LocalizedStringForKeychainSync(v3);
    v5 = MEMORY[0x1E69DC650];
    v6 = PS_LocalizedStringForKeychainSync(@"RESET_ICLOUD_KEYCHAIN_QUESTION");
    v7 = [v5 alertControllerWithTitle:v6 message:v4 preferredStyle:1];

    v8 = MEMORY[0x1E69DC648];
    v9 = PS_LocalizedStringForKeychainSync(@"CANCEL");
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke_2;
    v16[3] = &unk_1E71DC288;
    v16[4] = *(a1 + 32);
    v10 = [v8 actionWithTitle:v9 style:1 handler:v16];
    [v7 addAction:v10];

    v11 = MEMORY[0x1E69DC648];
    v12 = PS_LocalizedStringForKeychainSync(@"RESET");
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke_3;
    v15[3] = &unk_1E71DC288;
    v15[4] = *(a1 + 32);
    v13 = [v11 actionWithTitle:v12 style:0 handler:v15];
    [v7 addAction:v13];

    [*(a1 + 32) showAlert:v7];
  }

  else
  {
    v14 = *(a1 + 32);

    [v14 _preSetupCancelledWithCurrentStatus];
  }
}

void __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) startNavigationSpinnerInViewController:*(*(a1 + 32) + 184)];
  [*(a1 + 32) setResetPromptControllerHost:0];
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke_4;
  block[3] = &unk_1E71DBE20;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [v2 _resetCircleAndDisableBackupWithError:&v10];
  v4 = v10;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke_5;
  v7[3] = &unk_1E71DC820;
  v5 = *(a1 + 32);
  v9 = v3;
  v7[4] = v5;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __90__PSKeychainSyncManager__showResetFlowOverController_withEnableBackupText_withCompletion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) stopNavigationSpinner];
  v2 = *(a1 + 32);
  v3 = v2[21];
  if (v3)
  {
    (*(v3 + 16))(v2[21], *(a1 + 48), *(a1 + 40));
    v2 = *(a1 + 32);
  }

  return [v2 setResetCompletion:0];
}

- (void)showResetAndJoinFlowOverController:(id)controller withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  [(PSKeychainSyncManager *)self setHostViewController:controllerCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PSKeychainSyncManager_showResetAndJoinFlowOverController_withCompletion___block_invoke;
  v10[3] = &unk_1E71DCF88;
  v10[4] = self;
  v11 = controllerCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = controllerCopy;
  [(PSKeychainSyncManager *)self _showResetFlowOverController:v9 withEnableBackupText:0 withCompletion:v10];
}

void __75__PSKeychainSyncManager_showResetAndJoinFlowOverController_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) startNavigationSpinnerInViewController:*(a1 + 40)];
    v6 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__PSKeychainSyncManager_showResetAndJoinFlowOverController_withCompletion___block_invoke_2;
    v8[3] = &unk_1E71DD078;
    v8[4] = v6;
    v9 = *(a1 + 48);
    [v6 joinCircleWithCompletion:v8];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v5);
    }
  }
}

void __75__PSKeychainSyncManager_showResetAndJoinFlowOverController_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) stopNavigationSpinner];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }

  if (a2 == 2)
  {
    [*(a1 + 32) showResetAcknowledgementIfNeededWithCompletion:0];
  }

  [*(a1 + 32) setCircleWasReset:0];
}

- (void)disableKeychainSyncOverController:(id)controller withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  [(PSKeychainSyncManager *)self setHostViewController:controllerCopy];
  if (PSKeychainSyncIsUsingICDP())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PSKeychainSyncManager_disableKeychainSyncOverController_withCompletion___block_invoke;
    v8[3] = &unk_1E71DCF88;
    v8[4] = self;
    v9 = controllerCopy;
    v10 = completionCopy;
    [(PSKeychainSyncManager *)self _promptUserToDeleteSafariSavedContentWithCompletion:v8];
  }

  else
  {
    PSKeychainSyncGetStatus(0);
    [(PSKeychainSyncManager *)self _disableKeychainSyncOverController:controllerCopy deletingSafariPasswords:0 withCompletion:completionCopy];
  }
}

- (void)_promptUserToDeleteSafariSavedContentWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)_disableCDPKeychainSyncOverController:(id)controller deletingSafariPasswords:(BOOL)passwords withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  CDPKeychainSyncClass = getCDPKeychainSyncClass();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__PSKeychainSyncManager__disableCDPKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke;
  v13[3] = &unk_1E71DD0A0;
  v14 = controllerCopy;
  selfCopy = self;
  passwordsCopy = passwords;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = controllerCopy;
  [CDPKeychainSyncClass setUserVisibleKeychainSyncEnabled:0 withCompletion:v13];
}

void __102__PSKeychainSyncManager__disableCDPKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = getCDPStateErrorDomain();
  if ([v6 isEqualToString:v7])
  {
    v8 = [v5 code];

    if (v8 == -5600)
    {
      v9 = PS_LocalizedStringForKeychainSync(@"TURN_OFF_KEYCHAIN_OLDER_PEERS_TITLE");
      v10 = PS_LocalizedStringForKeychainSync(@"TURN_OFF_KEYCHAIN_OLDER_PEERS_MESSAGE");
      v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
      v12 = MEMORY[0x1E69DC648];
      v13 = PS_LocalizedStringForKeychainSync(@"TURN_OFF_KEYCHAIN_OLDER_PEERS_CONTINUE");
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __102__PSKeychainSyncManager__disableCDPKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke_2;
      v25 = &unk_1E71DD0F0;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v26 = v14;
      v27 = v15;
      v29 = *(a1 + 56);
      v28 = v16;
      v17 = [v12 actionWithTitle:v13 style:0 handler:&v22];
      [v11 addAction:{v17, v22, v23, v24, v25}];

      v18 = MEMORY[0x1E69DC648];
      v19 = PS_LocalizedStringForKeychainSync(@"TURN_OFF_KEYCHAIN_OLDER_PEERS_CANCEL");
      v20 = [v18 actionWithTitle:v19 style:1 handler:0];
      [v11 addAction:v20];

      [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (a2 && *(a1 + 56) == 1)
  {
    [*(a1 + 40) _deleteSafariAutoFillPasswords];
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, a2, v5);
  }

LABEL_10:
}

void __102__PSKeychainSyncManager__disableCDPKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 aa_primaryAppleAccount];
  v4 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass_0());
  v5 = [v3 username];
  [v4 setUsername:v5];

  [v4 setAuthenticationType:2];
  [v4 setIsUsernameEditable:0];
  [v4 setPresentingViewController:*(a1 + 32)];
  v6 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__PSKeychainSyncManager__disableCDPKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke_3;
  v9[3] = &unk_1E71DD0C8;
  v8 = *(a1 + 32);
  v7 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  [v6 authenticateWithContext:v4 completion:v9];
}

void __102__PSKeychainSyncManager__disableCDPKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(getCDPContextClass()) initWithAuthenticationResults:v5];
    CDPKeychainSyncClass = getCDPKeychainSyncClass();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __102__PSKeychainSyncManager__disableCDPKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke_4;
    v11[3] = &unk_1E71DD0A0;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    v14 = *(a1 + 56);
    v13 = *(a1 + 48);
    [CDPKeychainSyncClass removeNonViewAwarePeersFromCircleWithContext:v7 completion:v11];
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v6);
    }
  }
}

uint64_t __102__PSKeychainSyncManager__disableCDPKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    [*(a1 + 32) _disableCDPKeychainSyncOverController:*(a1 + 40) deletingSafariPasswords:*(a1 + 56) withCompletion:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)_disableKeychainSyncOverController:(id)controller deletingSafariPasswords:(BOOL)passwords withCompletion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v10 = objc_opt_new();
  aa_primaryAppleAccount = [v10 aa_primaryAppleAccount];
  v12 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass_0());
  username = [aa_primaryAppleAccount username];
  [v12 setUsername:username];

  [v12 setAuthenticationType:2];
  [v12 setIsUsernameEditable:0];
  [v12 setPresentingViewController:controllerCopy];

  v14 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__PSKeychainSyncManager__disableKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke;
  v16[3] = &unk_1E71DD140;
  v16[4] = self;
  v17 = completionCopy;
  passwordsCopy = passwords;
  v15 = completionCopy;
  [v14 authenticateWithContext:v12 completion:v16];
}

void __99__PSKeychainSyncManager__disableKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    NSLog(&cfstr_CredentialRene.isa, v6);
    v22 = *(a1 + 40);
    if (v7)
    {
      (*(v22 + 16))(v22, 0, v7);
    }

    else
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:1 userInfo:0];
      (*(v22 + 16))(v22, 0, v23);
    }

    goto LABEL_26;
  }

  cf = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v8 = getAKAuthenticationUsernameKeySymbolLoc_ptr;
  v37 = getAKAuthenticationUsernameKeySymbolLoc_ptr;
  if (!getAKAuthenticationUsernameKeySymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getAKAuthenticationUsernameKeySymbolLoc_block_invoke;
    v32 = &unk_1E71DBC78;
    v33 = &v34;
    v9 = AuthKitLibrary_0();
    v35[3] = dlsym(v9, "AKAuthenticationUsernameKey");
    getAKAuthenticationUsernameKeySymbolLoc_ptr = *(v33[1] + 24);
    v8 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v8)
  {
    [PSContactsAuthorizationLevelController dealloc];
LABEL_28:
    [PSContactsAuthorizationLevelController dealloc];
    goto LABEL_29;
  }

  v10 = *v8;
  v11 = [v5 objectForKeyedSubscript:v10];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v12 = getAKAuthenticationRawPasswordKeySymbolLoc_ptr;
  v37 = getAKAuthenticationRawPasswordKeySymbolLoc_ptr;
  if (!getAKAuthenticationRawPasswordKeySymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getAKAuthenticationRawPasswordKeySymbolLoc_block_invoke;
    v32 = &unk_1E71DBC78;
    v33 = &v34;
    v13 = AuthKitLibrary_0();
    v35[3] = dlsym(v13, "AKAuthenticationRawPasswordKey");
    getAKAuthenticationRawPasswordKeySymbolLoc_ptr = *(v33[1] + 24);
    v12 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v12)
  {
    goto LABEL_28;
  }

  v14 = *v12;
  v15 = [v5 objectForKeyedSubscript:v14];
  [v15 dataUsingEncoding:4];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v16 = getAKAuthenticationDSIDKeySymbolLoc_ptr;
  v37 = getAKAuthenticationDSIDKeySymbolLoc_ptr;
  if (!getAKAuthenticationDSIDKeySymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getAKAuthenticationDSIDKeySymbolLoc_block_invoke;
    v32 = &unk_1E71DBC78;
    v33 = &v34;
    v17 = AuthKitLibrary_0();
    v35[3] = dlsym(v17, "AKAuthenticationDSIDKey");
    getAKAuthenticationDSIDKeySymbolLoc_ptr = *(v33[1] + 24);
    v16 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v16)
  {
LABEL_29:
    v24 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v34, 8);
    _Unwind_Resume(v24);
  }

  v18 = [v5 objectForKeyedSubscript:*v16];
  [v18 stringValue];
  v19 = SOSCCSetUserCredentialsAndDSID();

  if ((v19 & 1) == 0)
  {
    NSLog(&cfstr_CallingSosccse.isa, cf);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v29 = 0;
  if ((SOSCCRemoveThisDeviceFromCircle() & 1) != 0 || ![*(a1 + 32) _errorRequiresPasswordPrompt:v29])
  {
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) _deleteSafariAutoFillPasswords];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    NSLog(&cfstr_Sosccremovethi.isa);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __99__PSKeychainSyncManager__disableKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke_2;
    v25[3] = &unk_1E71DD118;
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v27 = *(a1 + 48);
    v25[4] = *(a1 + 32);
    v26 = v21;
    [v20 promptForPasswordOverController:0 withCompletion:v25];
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_26:
}

void __99__PSKeychainSyncManager__disableKeychainSyncOverController_deletingSafariPasswords_withCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5 || !a2)
  {
    v7 = *(a1 + 40);
    if (v5)
    {
      (*(v7 + 16))(v7, 0, v5);
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:1 userInfo:0];
      (*(v7 + 16))(v7, 0, v8);
    }
  }

  else if (SOSCCRemoveThisDeviceFromCircle())
  {
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) _deleteSafariAutoFillPasswords];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    NSLog(&cfstr_ErrorLeavingCi.isa, 0);
    (*(*(a1 + 40) + 16))();
    CFRelease(0);
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"ClearKeychainSyncSettingsCache", 0);
  PSHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier();
  [(NSTimer *)self->_joinAfterRecoveryTimeoutTimer invalidate];
  [(NSTimer *)self->_credentialExpirationTimer invalidate];
  v4.receiver = self;
  v4.super_class = PSKeychainSyncManager;
  [(PSKeychainSyncManager *)&v4 dealloc];
}

- (id)navigationController
{
  isRunningInBuddy = [(PSKeychainSyncManager *)self isRunningInBuddy];
  v4 = 200;
  if (isRunningInBuddy)
  {
    v4 = 208;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (void)setCompletion:(id)completion
{
  if (self->_completion != completion)
  {
    v5 = [completion copy];
    completion = self->_completion;
    self->_completion = v5;
  }
}

- (void)_cleanupAppleIDCredentials
{
  appleIDUsername = self->_appleIDUsername;
  self->_appleIDUsername = 0;

  appleIDRawPassword = self->_appleIDRawPassword;
  self->_appleIDRawPassword = 0;

  appleIDPasswordOrEquivalentToken = self->_appleIDPasswordOrEquivalentToken;
  self->_appleIDPasswordOrEquivalentToken = 0;

  [(NSTimer *)self->_credentialExpirationTimer invalidate];
  credentialExpirationTimer = self->_credentialExpirationTimer;
  self->_credentialExpirationTimer = 0;

  NSLog(&cfstr_ClearedCredent.isa);
}

- (void)setAppleIDRawPassword:(id)password equivalentToken:(id)token
{
  passwordCopy = password;
  tokenCopy = token;
  if (*&self->_appleIDRawPassword != __PAIR128__(tokenCopy, passwordCopy))
  {
    objc_storeStrong(&self->_appleIDRawPassword, password);
    objc_storeStrong(&self->_appleIDPasswordOrEquivalentToken, token);
    [(NSTimer *)self->_credentialExpirationTimer invalidate];
    isRunningInBuddy = [(PSKeychainSyncManager *)self isRunningInBuddy];
    if (self->_appleIDRawPassword)
    {
      if (!isRunningInBuddy)
      {
        v9 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__cleanupAppleIDCredentials selector:0 userInfo:0 repeats:600.0];
        credentialExpirationTimer = self->_credentialExpirationTimer;
        self->_credentialExpirationTimer = v9;
      }
    }
  }
}

- (BOOL)_registerUserCredentialsName:(id)name rawPassword:(id)password error:(id *)error
{
  nameCopy = name;
  [password dataUsingEncoding:4];
  LOBYTE(password) = SOSCCSetUserCredentials();

  return password;
}

- (void)promptForPasswordOverController:(id)controller withCompletion:(id)completion
{
  v43[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  isNetworkReachable = [mEMORY[0x1E698B6A0] isNetworkReachable];

  if (isNetworkReachable)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__5;
    v40 = __Block_byref_object_dispose__5;
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    aa_primaryAppleAccount = [v37[5] aa_primaryAppleAccount];
    if (aa_primaryAppleAccount)
    {
      appleIDRawPassword = [(PSKeychainSyncManager *)self appleIDRawPassword];
      v12 = appleIDRawPassword;
      if (appleIDRawPassword)
      {
        _aa_rawPassword = appleIDRawPassword;
      }

      else
      {
        _aa_rawPassword = [aa_primaryAppleAccount _aa_rawPassword];
      }

      v15 = _aa_rawPassword;

      appleIDPasswordOrEquivalentToken = [(PSKeychainSyncManager *)self appleIDPasswordOrEquivalentToken];
      v17 = appleIDPasswordOrEquivalentToken;
      if (appleIDPasswordOrEquivalentToken)
      {
        aa_password = appleIDPasswordOrEquivalentToken;
      }

      else
      {
        aa_password = [aa_primaryAppleAccount aa_password];
      }

      v19 = aa_password;

      if (v15)
      {
        if (controllerCopy)
        {
          [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:controllerCopy];
        }

        v20 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke;
        block[3] = &unk_1E71DD190;
        block[4] = self;
        v30 = aa_primaryAppleAccount;
        v31 = v15;
        v32 = controllerCopy;
        v33 = v19;
        v34 = completionCopy;
        v35 = &v36;
        dispatch_async(v20, block);
      }

      else if ([(PSKeychainSyncManager *)self isRunningInBuddy])
      {
        NSLog(&cfstr_TriedToDisplay.isa);
      }

      else
      {
        if (controllerCopy)
        {
          [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:controllerCopy];
        }

        v42 = *MEMORY[0x1E6959AA8];
        v43[0] = MEMORY[0x1E695E118];
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
        v22 = v37[5];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke_3;
        v23[3] = &unk_1E71DD208;
        v24 = aa_primaryAppleAccount;
        selfCopy = self;
        v26 = controllerCopy;
        v27 = completionCopy;
        v28 = &v36;
        [v22 renewCredentialsForAccount:v24 options:v21 completion:v23];
      }
    }

    else
    {
      if (!completionCopy)
      {
LABEL_24:

        _Block_object_dispose(&v36, 8);
        goto LABEL_25;
      }

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:3 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v15);
    }

    goto LABEL_24;
  }

  [(PSKeychainSyncManager *)self showNetworkReachabilityError];
  if (completionCopy)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:4 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }

LABEL_25:
}

void __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) username];
  v4 = *(a1 + 48);
  v21 = 0;
  v5 = [v2 _registerUserCredentialsName:v3 rawPassword:v4 error:&v21];
  v6 = v21;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke_2;
  block[3] = &unk_1E71DD168;
  v7 = *(a1 + 56);
  v20 = v5;
  v12 = *(a1 + 32);
  v8 = v12.i64[1];
  v9.i64[0] = *(a1 + 48);
  v9.i64[1] = v7;
  v14 = vextq_s8(v9, v12, 8uLL);
  v15 = vextq_s8(v12, v9, 8uLL);
  v16 = *(a1 + 64);
  v10 = *(a1 + 72);
  v17 = v6;
  v18 = v10;
  v19 = *(a1 + 80);
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) stopNavigationSpinner];
  }

  v2 = *(a1 + 40);
  if (*(a1 + 96) == 1)
  {
    v3 = [*(a1 + 48) username];
    [v2 setAppleIDUsername:v3];

    [*(a1 + 40) setAppleIDRawPassword:*(a1 + 56) equivalentToken:*(a1 + 64)];
  }

  else
  {
    [*(a1 + 40) _showGenericFlowErrorAlert];
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 96), *(a1 + 72));
  }

  v5 = *(*(a1 + 88) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke_4;
  block[3] = &unk_1E71DD1E0;
  v20 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v5;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v18 = v10;
  v19 = v11;
  v12 = v5;
  dispatch_async(v6, block);
}

void __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = [*(a1 + 32) _aa_rawPassword];
    v3 = [*(a1 + 32) aa_password];
    if (v2)
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) username];
      v27 = 0;
      v4 = [v6 _registerUserCredentialsName:v7 rawPassword:v2 error:&v27];
      v5 = v27;

      goto LABEL_6;
    }

    NSLog(&cfstr_GotANilPasswor.isa);
  }

  v4 = 0;
  v5 = 0;
LABEL_6:
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke_5;
  v15[3] = &unk_1E71DD1B8;
  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v16 = v8;
  v17 = v9;
  v25 = *(a1 + 80);
  v18 = *(a1 + 56);
  v19 = v5;
  v20 = v2;
  v21 = v3;
  v26 = v4;
  v22 = *(a1 + 32);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v23 = v10;
  v24 = v11;
  v12 = v3;
  v13 = v2;
  v14 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __72__PSKeychainSyncManager_promptForPasswordOverController_withCompletion___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) stopNavigationSpinner];
  }

  v2 = *(a1 + 104);
  if (v2 == 1)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:1 userInfo:0];
  }

  else if (v2)
  {
    v6 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      v3 = *(a1 + 56);
    }

    v10 = v3;
    if (*(a1 + 64) && *(a1 + 72) && *(a1 + 112) == 1)
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 80) username];
      [v4 setAppleIDUsername:v5];

      [*(a1 + 40) setAppleIDRawPassword:*(a1 + 64) equivalentToken:*(a1 + 72)];
    }

    else
    {
      [*(a1 + 40) _showGenericFlowErrorAlert];
    }

    v6 = v10;
  }

  v11 = v6;
  v7 = *(a1 + 88);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 112), v11);
  }

  v8 = *(*(a1 + 96) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)promptForPasswordIfNeededForWritingOverController:(id)controller withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (SOSCCCanAuthenticate())
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    [(PSKeychainSyncManager *)self promptForPasswordOverController:controllerCopy withCompletion:completionCopy];
  }
}

- (void)promptForPasswordIfNeededOverController:(id)controller withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PSKeychainSyncManager_promptForPasswordIfNeededOverController_withCompletion___block_invoke;
  block[3] = &unk_1E71DC5E8;
  block[4] = self;
  v12 = controllerCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controllerCopy;
  dispatch_async(v8, block);
}

void __80__PSKeychainSyncManager_promptForPasswordIfNeededOverController_withCompletion___block_invoke(uint64_t a1)
{
  v10 = 0;
  SOSCCThisDeviceIsInCircle();
  if ([*(a1 + 32) _errorRequiresPasswordPrompt:0])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PSKeychainSyncManager_promptForPasswordIfNeededOverController_withCompletion___block_invoke_2;
    block[3] = &unk_1E71DC5E8;
    v2 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v8 = v2;
    v9 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v3 = v8;
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __80__PSKeychainSyncManager_promptForPasswordIfNeededOverController_withCompletion___block_invoke_3;
    v4[3] = &unk_1E71DD230;
    v6 = *(a1 + 48);
    v5 = 0;
    dispatch_async(MEMORY[0x1E69E96A0], v4);

    v3 = v6;
  }
}

- (void)promptForPasswordIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  navigationController = [(PSKeychainSyncManager *)self navigationController];
  topViewController = [navigationController topViewController];
  [(PSKeychainSyncManager *)self promptForPasswordIfNeededOverController:topViewController withCompletion:completionCopy];
}

- (void)promptForPasswordIfCredentialsNotCachedOverController:(id)controller withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  appleIDUsername = [(PSKeychainSyncManager *)self appleIDUsername];
  appleIDRawPassword = [(PSKeychainSyncManager *)self appleIDRawPassword];
  if ([appleIDUsername length] && objc_msgSend(appleIDRawPassword, "length"))
  {
    v10 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass_0());
    [v10 setUsername:appleIDUsername];
    [v10 _setPassword:appleIDRawPassword];
    [v10 setAuthenticationType:1];
    v11 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__PSKeychainSyncManager_promptForPasswordIfCredentialsNotCachedOverController_withCompletion___block_invoke;
    v12[3] = &unk_1E71DD280;
    v12[4] = self;
    v13 = appleIDRawPassword;
    v14 = completionCopy;
    [v11 authenticateWithContext:v10 completion:v12];
  }

  else
  {
    [(PSKeychainSyncManager *)self promptForPasswordOverController:controllerCopy withCompletion:completionCopy];
  }
}

void __94__PSKeychainSyncManager_promptForPasswordIfCredentialsNotCachedOverController_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PSKeychainSyncManager_promptForPasswordIfCredentialsNotCachedOverController_withCompletion___block_invoke_2;
  block[3] = &unk_1E71DD258;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v9 = *(a1 + 48);
  v16 = v6;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __94__PSKeychainSyncManager_promptForPasswordIfCredentialsNotCachedOverController_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v3 = getAKAuthenticationPasswordKeySymbolLoc_ptr;
    v13 = getAKAuthenticationPasswordKeySymbolLoc_ptr;
    if (!getAKAuthenticationPasswordKeySymbolLoc_ptr)
    {
      v4 = AuthKitLibrary_0();
      v11[3] = dlsym(v4, "AKAuthenticationPasswordKey");
      getAKAuthenticationPasswordKeySymbolLoc_ptr = v11[3];
      v3 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v3)
    {
      v9 = [PSContactsAuthorizationLevelController dealloc];
      _Block_object_dispose(&v10, 8);
      _Unwind_Resume(v9);
    }

    v5 = [v2 objectForKey:*v3];
    [*(a1 + 40) setAppleIDRawPassword:*(a1 + 48) equivalentToken:v5];
    v6 = *(a1 + 64);
    if (v6)
    {
      (*(v6 + 16))(v6, 1, 0);
    }
  }

  else
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

- (BOOL)_errorRequiresPasswordPrompt:(id)prompt
{
  promptCopy = prompt;
  domain = [promptCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E697AB38]])
  {
    v5 = [promptCopy code] == 1 || objc_msgSend(promptCopy, "code") == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)makeSettingsSetupControllerWithSpecifier:(id)specifier parent:(id)parent initialController:(id)controller
{
  controllerCopy = controller;
  parentCopy = parent;
  specifierCopy = specifier;
  v10 = [[KeychainSyncSetupController alloc] initWithManager:self];
  [(PSKeychainSyncManager *)self setSettingsSetupController:v10];

  [(PSRootController *)self->_settingsSetupController setSpecifier:specifierCopy];
  [(PSSetupController *)self->_settingsSetupController setParentController:parentCopy];

  [controllerCopy setParentController:self->_settingsSetupController];
  [controllerCopy setRootController:self->_settingsSetupController];
  [controllerCopy setSpecifier:specifierCopy];

  v11 = controllerCopy;
  if (controllerCopy)
  {
    [(PSRootController *)self->_settingsSetupController showController:controllerCopy];
    v11 = controllerCopy;
  }
}

- (void)_registerForCircleChangeNotifications
{
  if (!self->_circleNotificationToken)
  {
    handler[5] = v2;
    handler[6] = v3;
    v4 = *MEMORY[0x1E697AB30];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__PSKeychainSyncManager__registerForCircleChangeNotifications__block_invoke;
    handler[3] = &unk_1E71DD2A8;
    handler[4] = self;
    notify_register_dispatch(v4, &self->_circleNotificationToken, MEMORY[0x1E69E96A0], handler);
  }
}

- (void)_registerForCircleChangeNotificationsWithCompletion:(id)completion
{
  [(PSKeychainSyncManager *)self setCircleJoinCompletion:completion];

  [(PSKeychainSyncManager *)self _registerForCircleChangeNotifications];
}

- (void)showPinChoiceAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PS_LocalizedStringForKeychainSync(@"USE_DEVICE_PASSCODE_TITLE");
  v5 = PS_LocalizedStringForKeychainSync(@"SECURITY_CODE_DESCRIPTION");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = PS_LocalizedStringForKeychainSync(@"USE_DEVICE_PASSCODE");
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__PSKeychainSyncManager_showPinChoiceAlert__block_invoke;
  v14[3] = &unk_1E71DC288;
  v14[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v14];
  [v6 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PS_LocalizedStringForKeychainSync(@"CREATE_DIFFERENT_CODE");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__PSKeychainSyncManager_showPinChoiceAlert__block_invoke_2;
  v13[3] = &unk_1E71DC288;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v13];
  [v6 addAction:v12];

  [(PSKeychainSyncManager *)self showAlert:v6];
}

- (void)setStagedSecurityCode:(id)code type:(int)type
{
  codeCopy = code;
  if (self->_stagedSecurityCode != codeCopy)
  {
    v8 = codeCopy;
    objc_storeStrong(&self->_stagedSecurityCode, code);
    codeCopy = v8;
    self->_stagedSecurityCodeType = type;
  }
}

- (id)preferencesApp
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  NSClassFromString(&cfstr_Preferencesapp.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = mEMORY[0x1E69DC668];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)startNavigationSpinnerInViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    spinningView = self->_spinningView;
    v21 = controllerCopy;
    if (spinningView)
    {
      view = [controllerCopy view];

      v5 = v21;
      if (spinningView != view)
      {
        goto LABEL_10;
      }

      v8 = self->_spinningView;
      ++self->_spinnerCount;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      ++self->_spinnerCount;
    }

    navigationController = [v5 navigationController];
    view2 = [navigationController view];
    v11 = self->_spinningView;
    self->_spinningView = view2;

    v12 = +[PSNavBarSpinnerManager sharedSpinnerManager];
    navigationItem = [v21 navigationItem];
    [v12 startAnimatingInNavItem:navigationItem forIdentifier:@"KeychainSync"];

    [(UIView *)self->_spinningView setUserInteractionEnabled:0];
    isRunningInBuddy = [(PSKeychainSyncManager *)self isRunningInBuddy];
    v5 = v21;
    if (!isRunningInBuddy)
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v5 = v21;
      if (userInterfaceIdiom == 1)
      {
        preferencesApp = [(PSKeychainSyncManager *)self preferencesApp];
        rootController = [preferencesApp rootController];

        rootListController = [rootController rootListController];
        view3 = [rootListController view];
        [view3 setUserInteractionEnabled:0];

        v5 = v21;
      }
    }
  }

LABEL_10:
}

- (void)stopNavigationSpinner
{
  if (self->_spinningView)
  {
    v3 = self->_spinnerCount - 1;
    self->_spinnerCount = v3;
    if (!v3)
    {
      v4 = +[PSNavBarSpinnerManager sharedSpinnerManager];
      [v4 stopAnimatingForIdentifier:@"KeychainSync"];

      [(UIView *)self->_spinningView setUserInteractionEnabled:1];
      spinningView = self->_spinningView;
      self->_spinningView = 0;

      if (![(PSKeychainSyncManager *)self isRunningInBuddy])
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if (userInterfaceIdiom == 1)
        {
          preferencesApp = [(PSKeychainSyncManager *)self preferencesApp];
          rootController = [preferencesApp rootController];

          rootListController = [rootController rootListController];
          view = [rootListController view];
          [view setUserInteractionEnabled:1];
        }
      }
    }
  }
}

- (BOOL)_changeSecurityCode:(id)code type:(int)type smsTarget:(id)target smsTargetCountryInfo:(id)info username:(id)username passwordOrEquivalentToken:(id)token error:(id *)error
{
  codeCopy = code;
  targetCopy = target;
  infoCopy = info;
  usernameCopy = username;
  tokenCopy = token;
  v18 = objc_alloc_init(getSecureBackupClass_0());
  v78[0] = 0;
  v19 = [v18 getAccountInfoWithInfo:0 results:v78];
  v20 = v78[0];
  if (!v19)
  {
    v23 = getkSecureBackupMetadataKey_0();
    v24 = [v20 objectForKey:v23];
    v76 = [v24 mutableCopy];

    v25 = [targetCopy length];
    v71 = usernameCopy;
    v75 = v20;
    if (infoCopy && v25)
    {
      v74 = targetCopy;
      v26 = 0;
      v27 = 0;
      v28 = codeCopy;
    }

    else
    {
      v30 = getkSecureBackupSMSTargetInfoKey();
      v31 = [v20 objectForKey:v30];

      objc_opt_class();
      v28 = codeCopy;
      if (objc_opt_isKindOfClass())
      {
        v32 = infoCopy;
        v33 = getkSecureBackupSMSTargetPhoneNumberKey();
        v34 = [v31 objectForKey:v33];

        v35 = getkSecureBackupCountryDialCodeKey();
        v27 = [v31 objectForKey:v35];

        v36 = getkSecureBackupCountryCodeKey_0();
        v37 = [v31 objectForKey:v36];

        if (v37)
        {
          v38 = v37;
        }

        else
        {
          v39 = getkSecureBackupCountryCodeKey_0();
          v38 = [v76 objectForKey:v39];
        }

        v74 = v34;
        infoCopy = v32;
        usernameCopy = v71;
      }

      else
      {
        v74 = targetCopy;
        v27 = 0;
        v38 = 0;
      }

      v26 = v38;
      if (!infoCopy)
      {
LABEL_17:
        v72 = v26;
        v73 = v27;
        v42 = [MEMORY[0x1E696AD98] numberWithInt:type != 0];
        v43 = getkSecureBackupUsesComplexPassphraseKey();
        [v76 setObject:v42 forKey:v43];

        v44 = [MEMORY[0x1E696AD98] numberWithInt:type == 0];
        v45 = getkSecureBackupUsesNumericPassphraseKey();
        [v76 setObject:v44 forKey:v45];

        if (!type)
        {
          v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v28, "length")}];
          v47 = getkSecureBackupNumericPassphraseLengthKey();
          [v76 setObject:v46 forKey:v47];
        }

        v48 = getkSecureBackupIsEnabledKey();
        v49 = [v75 objectForKey:v48];
        bOOLValue = [v49 BOOLValue];

        v29 = tokenCopy;
        if (bOOLValue && ([v18 disableWithInfo:0], (v51 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v52 = 0;
          v22 = 0;
          v19 = 0;
          v53 = v51;
          targetCopy = v74;
          if (!error)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v69 = v18;
          v70 = infoCopy;
          v54 = MEMORY[0x1E695DF90];
          v55 = getkSecureBackupPassphraseKey();
          v56 = getkSecureBackupAuthenticationAppleID();
          v57 = getkSecureBackupAuthenticationPassword();
          v58 = [MEMORY[0x1E696AD98] numberWithInt:type == 2];
          getkSecureBackupUsesRandomPassphraseKey();
          v60 = v59 = v28;
          v61 = getkSecureBackupMetadataKey_0();
          v62 = v54;
          v63 = v59;
          v53 = [v62 dictionaryWithObjectsAndKeys:{v59, v55, usernameCopy, v56, tokenCopy, v57, v58, v60, v76, v61, 0}];

          if ([v74 length])
          {
            v64 = getkSecureBackupSMSTargetPhoneNumberKey();
            [v53 setObject:v74 forKey:v64];
          }

          if ([v73 length])
          {
            v65 = getkSecureBackupCountryDialCodeKey();
            [v53 setObject:v73 forKey:v65];
          }

          v28 = v63;
          infoCopy = v70;
          usernameCopy = v71;
          v29 = tokenCopy;
          v18 = v69;
          if ([v72 length])
          {
            v66 = getkSecureBackupCountryCodeKey_0();
            [v53 setObject:v72 forKey:v66];

            v67 = getkSecureBackupCountryCodeKey_0();
            [v76 setObject:v72 forKey:v67];
          }

          v51 = [v69 enableWithInfo:v53];
          v22 = v51 == 0;
          targetCopy = v74;
          if (!error)
          {
            v19 = v51;
            goto LABEL_33;
          }

          v52 = v51;
          v19 = v51;
          if (!v51)
          {
LABEL_33:

            v20 = v75;
            goto LABEL_34;
          }
        }

        *error = v51;
        v19 = v52;
        goto LABEL_33;
      }
    }

    countryCode = [infoCopy countryCode];

    dialingPrefix = [infoCopy dialingPrefix];

    v27 = dialingPrefix;
    v26 = countryCode;
    goto LABEL_17;
  }

  if (error)
  {
    v21 = v19;
    v22 = 0;
    *error = v19;
  }

  else
  {
    v22 = 0;
  }

  v28 = codeCopy;
  v29 = tokenCopy;
LABEL_34:

  return v22;
}

- (void)_changeToNewSecurityCode:(id)code type:(int)type smsTarget:(id)target smsTargetCountryInfo:(id)info
{
  codeCopy = code;
  targetCopy = target;
  infoCopy = info;
  navigationController = [(PSKeychainSyncManager *)self navigationController];
  topViewController = [navigationController topViewController];
  [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:topViewController];

  appleIDUsername = [(PSKeychainSyncManager *)self appleIDUsername];
  appleIDPasswordOrEquivalentToken = [(PSKeychainSyncManager *)self appleIDPasswordOrEquivalentToken];
  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PSKeychainSyncManager__changeToNewSecurityCode_type_smsTarget_smsTargetCountryInfo___block_invoke;
  block[3] = &unk_1E71DD2F8;
  block[4] = self;
  v24 = codeCopy;
  typeCopy = type;
  v25 = targetCopy;
  v26 = infoCopy;
  v27 = appleIDUsername;
  v28 = appleIDPasswordOrEquivalentToken;
  v18 = appleIDPasswordOrEquivalentToken;
  v19 = appleIDUsername;
  v20 = infoCopy;
  v21 = targetCopy;
  v22 = codeCopy;
  dispatch_async(v17, block);
}

void __86__PSKeychainSyncManager__changeToNewSecurityCode_type_smsTarget_smsTargetCountryInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v20 = 0;
  v9 = [v2 _changeSecurityCode:v3 type:v5 smsTarget:v4 smsTargetCountryInfo:v6 username:v7 passwordOrEquivalentToken:v8 error:&v20];
  v10 = v20;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PSKeychainSyncManager__changeToNewSecurityCode_type_smsTarget_smsTargetCountryInfo___block_invoke_2;
  block[3] = &unk_1E71DD2D0;
  v11 = *(a1 + 32);
  v19 = v9;
  block[4] = v11;
  v14 = v10;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 40);
  v18 = *(a1 + 80);
  v12 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __86__PSKeychainSyncManager__changeToNewSecurityCode_type_smsTarget_smsTargetCountryInfo___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) stopNavigationSpinner];
  if ((*(a1 + 76) & 1) == 0)
  {
    v2 = [*(a1 + 40) domain];
    v3 = getkSecureBackupErrorDomain();
    if ([v2 isEqualToString:v3])
    {
      v4 = [*(a1 + 40) code];

      if (v4 == 29)
      {
        [*(a1 + 32) _showInvalidPhoneNumberAlertWithDigits:*(a1 + 48) countryInfo:*(a1 + 56)];
        goto LABEL_7;
      }
    }

    else
    {
    }

    [*(a1 + 32) _showGenericFlowErrorAlert];
  }

LABEL_7:
  v5 = *(a1 + 32);
  v6 = *(v5 + 160);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 76), *(a1 + 64), *(a1 + 72), *(a1 + 40));
    [*(a1 + 32) setChangeSecurityCodeCompletion:0];
    v5 = *(a1 + 32);
  }

  v7 = [*(v5 + 200) rootController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  *(*(a1 + 32) + 16) = 0;
}

- (void)promptForDevicePasscodeChangeToPasscode:(id)passcode overController:(id)controller completion:(id)completion
{
  passcodeCopy = passcode;
  controllerCopy = controller;
  completionCopy = completion;
  sharedInstance = [getCDPAccountClass() sharedInstance];
  primaryAccountSecurityLevel = [sharedInstance primaryAccountSecurityLevel];

  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke;
  block[3] = &unk_1E71DD410;
  v18 = controllerCopy;
  v19 = passcodeCopy;
  selfCopy = self;
  v21 = completionCopy;
  v22 = primaryAccountSecurityLevel == 5;
  v14 = completionCopy;
  v15 = passcodeCopy;
  v16 = controllerCopy;
  dispatch_async(v13, block);
}

void __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke(uint64_t a1)
{
  if (PSKeychainSyncIsUsingICDP())
  {
    v28 = 0;
    v2 = PSIsUsingPasscode(&v28);
    v3 = 2;
    if (!v28)
    {
      v3 = 3;
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = objc_alloc_init(getCDPContextClass());
    v6 = [objc_alloc(getCDPStateControllerClass()) initWithContext:v5];
    v7 = [objc_alloc(getCDPUIControllerClass()) initWithPresentingViewController:*(a1 + 32)];
    [v6 setUiProvider:v7];

    v8 = *(a1 + 40);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_2;
    v26[3] = &unk_1E71DD320;
    v27 = *(a1 + 56);
    [v6 localSecretChangedTo:v8 secretType:v4 completion:v26];

    return;
  }

  v28 = 0;
  PSKeychainSyncGetCircleMembershipStatus(0, &v28);
  if (!v28)
  {
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 48) _presentAuthControllerWithPresentingVC:*(a1 + 32) completion:*(a1 + 56)];
      return;
    }

    goto LABEL_16;
  }

  v9 = PSSecureBackupAccountInfo(0, 1);
  v10 = getkSecureBackupIsEnabledKey();
  v11 = [v9 objectForKey:v10];
  v12 = [v11 BOOLValue];

  if (v9 && (getkSecureBackupUsesRandomPassphraseKey(), v13 = objc_claimAutoreleasedReturnValue(), [v9 objectForKey:v13], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v13, (v15 & 1) == 0))
  {
    v25 = 0;
    v16 = v12 & PSIsUsingPasscode(&v25);
    if (v16 == 1)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_157;
      block[3] = &unk_1E71DD410;
      v19 = *(a1 + 40);
      v18 = v19.i64[0];
      v21 = vextq_s8(v19, v19, 8uLL);
      v24 = v25;
      v23 = *(a1 + 56);
      v22 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  if ((v16 & 1) == 0)
  {
LABEL_16:
    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, 1, 0);
    }
  }
}

void __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    if (([v6 sf_isInternalInstall]& 1) != 0 || PSDiagnosticsAreEnabled())
    {
      v7 = _PSLoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_2_cold_2(v7);
      }
    }
  }

  else
  {
    v6 = _PSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_2_cold_1(v5, v6);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

void __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_157(uint64_t a1)
{
  [*(a1 + 32) setStagedSecurityCode:*(a1 + 40) type:*(a1 + 64) ^ 1u];
  v2 = MEMORY[0x1E69DC650];
  v3 = PS_LocalizedStringForKeychainSync(@"USE_NEW_DEVICE_PASSCODE_AS_SECURITY_CODE");
  v4 = PS_LocalizedStringForKeychainSync(@"USE_NEW_DEVICE_PASSCODE_AS_SECURITY_CODE_DETAILS");
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PS_LocalizedStringForKeychainSync(@"DONT_CHANGE_SECURITY_CODE");
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_2_167;
  v14[3] = &unk_1E71DD348;
  v15 = *(a1 + 56);
  v8 = [v6 actionWithTitle:v7 style:1 handler:v14];
  [v5 addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v10 = PS_LocalizedStringForKeychainSync(@"USE_SAME_CODE_DEVICE_TO_ICSC");
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_3;
  v12[3] = &unk_1E71DD3E8;
  v12[4] = *(a1 + 32);
  v13 = *(a1 + 56);
  v11 = [v9 actionWithTitle:v10 style:0 handler:v12];
  [v5 addAction:v11];

  [*(a1 + 48) presentViewController:v5 animated:1 completion:0];
}

uint64_t __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_2_167(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_4;
  v2[3] = &unk_1E71DD3C0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 promptForPasswordIfCredentialsNotCachedOverController:0 withCompletion:v2];
}

void __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = [v6 appleIDUsername];
    v8 = [*(a1 + 32) appleIDPasswordOrEquivalentToken];
    v9 = dispatch_get_global_queue(0, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_5;
    v14[3] = &unk_1E71DD398;
    v10 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v7;
    v16 = v8;
    v17 = v10;
    v11 = v8;
    v12 = v7;
    dispatch_async(v9, v14);
  }

  else
  {
    [v6 _cleanup];
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 1, 0);
    }
  }
}

void __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 stagedSecurityCode];
  v4 = [*(a1 + 32) stagedSecurityCodeType];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v15 = 0;
  LOBYTE(v2) = [v2 _changeSecurityCode:v3 type:v4 smsTarget:0 smsTargetCountryInfo:0 username:v5 passwordOrEquivalentToken:v6 error:&v15];
  v7 = v15;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_6;
  block[3] = &unk_1E71DD370;
  v14 = v2;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 56);
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      (*(v2 + 16))(v2, 1, 0);
    }
  }

  else
  {
    NSLog(&cfstr_ErrorChangingS.isa, *(a1 + 32));
    *(*(a1 + 40) + 16) = 3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_7;
    v5[3] = &unk_1E71DC0D8;
    v3 = *(a1 + 40);
    v6 = *(a1 + 48);
    [v3 _showGenericFlowErrorAlertWithDismissalHandler:v5];
  }

  return [*(a1 + 40) _cleanup];
}

uint64_t __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)_presentAuthControllerWithPresentingVC:(id)c completion:(id)completion
{
  completionCopy = completion;
  cCopy = c;
  v7 = objc_opt_new();
  aa_primaryAppleAccount = [v7 aa_primaryAppleAccount];
  v9 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass_0());
  username = [aa_primaryAppleAccount username];
  [v9 setUsername:username];

  [v9 setAuthenticationType:2];
  [v9 setIsUsernameEditable:0];
  [v9 setPresentingViewController:cCopy];

  v11 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PSKeychainSyncManager__presentAuthControllerWithPresentingVC_completion___block_invoke;
  v13[3] = &unk_1E71DD438;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 authenticateWithContext:v9 completion:v13];
}

- (void)_showGenericFlowErrorAlertWithDismissalHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_flow - 1;
  if (v5 > 4)
  {
    v6 = @"GENERIC_KEYCHAIN_ERROR_TITLE";
  }

  else
  {
    v6 = *(&off_1E71DD6E0 + v5);
  }

  v7 = MEMORY[0x1E69DC650];
  v8 = PS_LocalizedStringForKeychainSync(v6);
  v9 = [v7 alertControllerWithTitle:v8 message:0 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = PS_LocalizedStringForKeychainSync(@"OK");
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PSKeychainSyncManager__showGenericFlowErrorAlertWithDismissalHandler___block_invoke;
  v14[3] = &unk_1E71DD348;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [v10 actionWithTitle:v11 style:1 handler:v14];
  [v9 addAction:v13];

  [(PSKeychainSyncManager *)self showAlert:v9];
}

uint64_t __72__PSKeychainSyncManager__showGenericFlowErrorAlertWithDismissalHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_showInvalidPhoneNumberAlertWithDigits:(id)digits countryInfo:(id)info
{
  v15 = [PSKeychainSyncPhoneNumber phoneNumberWithDigits:digits countryInfo:info];
  v5 = MEMORY[0x1E696AEC0];
  v6 = PS_LocalizedStringForKeychainSync(@"INVALID_PHONE_NUMBER");
  formattedStringWithDialingPrefix = [v15 formattedStringWithDialingPrefix];
  v8 = [v5 stringWithFormat:v6, formattedStringWithDialingPrefix];

  v9 = MEMORY[0x1E69DC650];
  v10 = PS_LocalizedStringForKeychainSync(@"KEYCHAIN_VERIFICATION");
  v11 = [v9 alertControllerWithTitle:v10 message:v8 preferredStyle:1];

  v12 = MEMORY[0x1E69DC648];
  v13 = PS_LocalizedStringForKeychainSync(@"OK");
  v14 = [v12 actionWithTitle:v13 style:0 handler:0];
  [v11 addAction:v14];

  [(PSKeychainSyncManager *)self showAlert:v11];
}

- (void)showResetAcknowledgementIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PSKeychainSyncManager *)self circleWasReset])
  {
    v5 = MEMORY[0x1E69DC650];
    v6 = PS_LocalizedStringForKeychainSync(@"RESET_COMPLETED_TITLE");
    v7 = PS_LocalizedStringForKeychainSync(@"RESET_COMPLETED_DESCRIPTION");
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x1E69DC648];
    v10 = PS_LocalizedStringForKeychainSync(@"OK");
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__PSKeychainSyncManager_showResetAcknowledgementIfNeededWithCompletion___block_invoke;
    v12[3] = &unk_1E71DD348;
    v13 = completionCopy;
    v11 = [v9 actionWithTitle:v10 style:0 handler:v12];
    [v8 addAction:v11];

    [(PSKeychainSyncManager *)self showAlert:v8];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  [(PSKeychainSyncManager *)self setCircleWasReset:0];
}

uint64_t __72__PSKeychainSyncManager_showResetAcknowledgementIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_resetCircleAndDisableBackupWithError:(id *)error
{
  v5 = SOSCCResetToEmpty();
  [(PSKeychainSyncManager *)self setCircleWasReset:v5];
  v6 = objc_alloc_init(getSecureBackupClass_0());
  v7 = [v6 disableWithInfo:0];
  v8 = v7;
  if (v7)
  {
    NSLog(&cfstr_ErrorDisabling.isa, v7);
    LOBYTE(v5) = 0;
  }

  if (error && v8)
  {
    *error = v8;
  }

  return v5;
}

- (void)_resetFromRecoveryFlow
{
  navigationController = [(PSKeychainSyncManager *)self navigationController];
  topViewController = [navigationController topViewController];
  [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:topViewController];

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PSKeychainSyncManager__resetFromRecoveryFlow__block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  dispatch_async(v5, block);
}

void __47__PSKeychainSyncManager__resetFromRecoveryFlow__block_invoke(uint64_t a1)
{
  v2 = PSSecureBackupAccountInfo(0, 1);
  v3 = getkSecureBackupIsEnabledKey();
  v4 = [v2 objectForKey:v3];
  v5 = [v4 BOOLValue];

  [*(a1 + 32) _resetCircleAndDisableBackupWithError:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PSKeychainSyncManager__resetFromRecoveryFlow__block_invoke_2;
  v6[3] = &unk_1E71DD460;
  v7 = v5;
  v6[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __47__PSKeychainSyncManager__resetFromRecoveryFlow__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 stopNavigationSpinner];
    v4 = [*(a1 + 32) isRunningInBuddy];
    v5 = *(a1 + 32);
    if (v4)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:5 userInfo:0];
      [v5 _finishedWithStatus:1 error:v7];
    }

    else
    {
      v6 = [v5[25] rootController];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__PSKeychainSyncManager__resetFromRecoveryFlow__block_invoke_3;
      v9[3] = &unk_1E71DBE20;
      v9[4] = *(a1 + 32);
      [v6 dismissViewControllerAnimated:1 completion:v9];
    }
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PSKeychainSyncManager__resetFromRecoveryFlow__block_invoke_4;
    v8[3] = &unk_1E71DCF10;
    v8[4] = v3;
    [v3 joinCircleWithCompletion:v8];
  }
}

void __47__PSKeychainSyncManager__resetFromRecoveryFlow__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2[25] specifier];
  v3 = [*(*(a1 + 32) + 200) parentController];
  v4 = [*(a1 + 32) completion];
  [v2 showEnableSyncFlowWithSpecifier:v5 overController:v3 completion:v4];
}

void __47__PSKeychainSyncManager__resetFromRecoveryFlow__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 stopNavigationSpinner];
  [*(a1 + 32) _finishedWithStatus:a2 error:v6];
}

- (void)_peerApprovalFromRecoveryFlow
{
  navigationController = [(PSKeychainSyncManager *)self navigationController];
  topViewController = [navigationController topViewController];
  [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:topViewController];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PSKeychainSyncManager__peerApprovalFromRecoveryFlow__block_invoke;
  v5[3] = &unk_1E71DCF10;
  v5[4] = self;
  [(PSKeychainSyncManager *)self joinCircleWithCompletion:v5];
}

void __54__PSKeychainSyncManager__peerApprovalFromRecoveryFlow__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) stopNavigationSpinner];
  v6 = *(a1 + 32);
  if (a3)
  {
    [*(a1 + 32) _showGenericFlowErrorAlert];
    v7 = *(a1 + 32);
    v8 = v7[7];

    [v7 keychainSyncControllerCancel:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:6 userInfo:0];
    [v6 _finishedWithStatus:a2 error:v9];
  }
}

- (void)_cleanup
{
  devicePinController = self->_devicePinController;
  self->_devicePinController = 0;

  simpleSecurityCodeController = self->_simpleSecurityCodeController;
  self->_simpleSecurityCodeController = 0;

  complexSecurityCodeController = self->_complexSecurityCodeController;
  self->_complexSecurityCodeController = 0;

  advancedSecurityCodeChoiceController = self->_advancedSecurityCodeChoiceController;
  self->_advancedSecurityCodeChoiceController = 0;

  securityCodeRecoveryController = self->_securityCodeRecoveryController;
  self->_securityCodeRecoveryController = 0;

  phoneNumberController = self->_phoneNumberController;
  self->_phoneNumberController = 0;

  smsValidationController = self->_smsValidationController;
  self->_smsValidationController = 0;

  stagedSecurityCode = self->_stagedSecurityCode;
  self->_stagedSecurityCode = 0;

  circleNotificationToken = self->_circleNotificationToken;
  if (circleNotificationToken)
  {
    notify_cancel(circleNotificationToken);
    self->_circleNotificationToken = 0;
  }

  [(PSKeychainSyncManager *)self setCircleJoinCompletion:0];

  [(PSKeychainSyncManager *)self setHostViewController:0];
}

- (void)showController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  if ([(PSKeychainSyncManager *)self isRunningInBuddy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [controllerCopy setRootController:self->_buddyNavigationController];
    }

    [(PSRootController *)self->_buddyNavigationController pushViewController:controllerCopy animated:1];
  }

  else
  {
    [(PSRootController *)self->_settingsSetupController showController:controllerCopy];
  }
}

- (id)viewControllerForPresentingAlerts
{
  if ([(PSKeychainSyncManager *)self isRunningInBuddy])
  {
    v3 = self->_buddyNavigationController;
  }

  else
  {
    navigationController = [(PSKeychainSyncManager *)self navigationController];
    presentingViewController = [navigationController presentingViewController];
    if (presentingViewController)
    {
      [(PSKeychainSyncManager *)self navigationController];
    }

    else
    {
      [(PSKeychainSyncManager *)self hostViewController];
    }
    v3 = ;
  }

  return v3;
}

- (void)showAlert:(id)alert
{
  alertCopy = alert;
  viewControllerForPresentingAlerts = [(PSKeychainSyncManager *)self viewControllerForPresentingAlerts];
  [viewControllerForPresentingAlerts presentViewController:alertCopy animated:1 completion:0];
}

- (void)showNetworkReachabilityError
{
  v3 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  airplaneMode = [v3 airplaneMode];

  if (airplaneMode)
  {
    v5 = SFLocalizableWAPIStringKeyForKey();
    v10 = PS_LocalizedStringForKeychainSync(v5);
  }

  else
  {
    v10 = PS_LocalizedStringForKeychainSync(@"NO_NETWORK_REACHABILITY_MESSAGE");
  }

  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:0 preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = PS_LocalizedStringForKeychainSync(@"OK");
  v9 = [v7 actionWithTitle:v8 style:0 handler:0];
  [v6 addAction:v9];

  [(PSKeychainSyncManager *)self showAlert:v6];
}

- (void)showContactAppleSupportPane
{
  if ([(PSKeychainSyncManager *)self isRunningInBuddy])
  {
    mEMORY[0x1E69DC668] = objc_alloc_init(MEMORY[0x1E69DCCD8]);
    navigationBar = [mEMORY[0x1E69DC668] navigationBar];
    [navigationBar _setHidesShadow:1];

    navigationBar2 = [mEMORY[0x1E69DC668] navigationBar];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.96];
    [navigationBar2 setBarTintColor:v5];

    v6 = [[KeychainSyncAppleSupportController alloc] initWithNibName:0 bundle:0];
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissAppleSupportPane_];
    navigationItem = [(KeychainSyncAppleSupportController *)v6 navigationItem];
    [navigationItem setRightBarButtonItem:v7];

    [mEMORY[0x1E69DC668] pushViewController:v6 animated:0];
    [mEMORY[0x1E69DC668] setModalPresentationStyle:2];
    navigationController = [(PSKeychainSyncManager *)self navigationController];
    topViewController = [navigationController topViewController];
    [topViewController presentViewController:mEMORY[0x1E69DC668] animated:1 completion:0];
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:@"http://apple.com/support/icloud/keychain"];
    [mEMORY[0x1E69DC668] openURL:v6 options:MEMORY[0x1E695E0F8] completionHandler:0];
  }
}

- (void)dismissAppleSupportPane:(id)pane
{
  navigationController = [(PSKeychainSyncManager *)self navigationController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PSKeychainSyncManager_dismissAppleSupportPane___block_invoke;
  v5[3] = &unk_1E71DBE20;
  v5[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v5];
}

void __49__PSKeychainSyncManager_dismissAppleSupportPane___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 topViewController];
  [v1 becomeFirstResponder];
}

- (void)joinCircleAfterRecovery:(BOOL)recovery withCompletion:(id)completion
{
  recoveryCopy = recovery;
  completionCopy = completion;
  v22 = 0;
  Status = PSKeychainSyncGetStatus(&v22);
  v8 = v22;
  v9 = v8;
  v10 = Status != 3 || recoveryCopy;
  if (Status == 2 || (v10 & 1) == 0)
  {
    if (completionCopy)
    {
      v11 = completionCopy[2];
      v12 = completionCopy;
      v13 = Status;
      v14 = 0;
      goto LABEL_12;
    }
  }

  else if (v8)
  {
    NSLog(&cfstr_ErrorCheckingC_1.isa, v8);
    if (completionCopy)
    {
      v11 = completionCopy[2];
      v12 = completionCopy;
      v13 = 0;
LABEL_9:
      v14 = v9;
LABEL_12:
      v11(v12, v13, v14);
    }
  }

  else
  {
    [(PSKeychainSyncManager *)self _registerForCircleChangeNotificationsWithCompletion:completionCopy];
    self->_joiningCircle = 1;
    self->_joiningCircleAfterRecovery = recoveryCopy;
    v21 = 0;
    if (recoveryCopy)
    {
      v15 = SOSCCRequestToJoinCircleAfterRestore();
    }

    else
    {
      v15 = SOSCCRequestToJoinCircle();
    }

    v16 = v15;
    [(PSKeychainSyncManager *)self _defaultKeychainViewSet];
    [MEMORY[0x1E695DFD8] set];
    SOSCCViewSet();
    v9 = v21;
    if ((v16 & 1) == 0)
    {
      NSLog(&cfstr_RequestToJoinC.isa, v21);
      self->_joiningCircle = 0;
    }

    if ([(PSKeychainSyncManager *)self _errorRequiresPasswordPrompt:v9])
    {
      navigationController = [(PSKeychainSyncManager *)self navigationController];
      topViewController = [navigationController topViewController];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64__PSKeychainSyncManager_joinCircleAfterRecovery_withCompletion___block_invoke;
      v19[3] = &unk_1E71DD3C0;
      v19[4] = self;
      v20 = completionCopy;
      [(PSKeychainSyncManager *)self promptForPasswordOverController:topViewController withCompletion:v19];

      goto LABEL_13;
    }

    if (completionCopy && v16 != 1)
    {
      v11 = completionCopy[2];
      v12 = completionCopy;
      v13 = 1;
      goto LABEL_9;
    }
  }

LABEL_13:
}

uint64_t __64__PSKeychainSyncManager_joinCircleAfterRecovery_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    [*(a1 + 32) joinCircleWithCompletion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)_recoverWithSecurityCode:(id)code verificationCode:(id)verificationCode
{
  codeCopy = code;
  verificationCodeCopy = verificationCode;
  navigationController = [(PSKeychainSyncManager *)self navigationController];
  topViewController = [navigationController topViewController];
  [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:topViewController];

  v10 = MEMORY[0x1E695DF20];
  v11 = getkSecureBackupPassphraseKey();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v12 = getkSecureBackupVerificationTokenKeySymbolLoc_ptr;
  v28 = getkSecureBackupVerificationTokenKeySymbolLoc_ptr;
  if (!getkSecureBackupVerificationTokenKeySymbolLoc_ptr)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getkSecureBackupVerificationTokenKeySymbolLoc_block_invoke;
    v23 = &unk_1E71DBC78;
    v24 = &v25;
    v13 = CloudServicesLibrary_1();
    v26[3] = dlsym(v13, "kSecureBackupVerificationTokenKey");
    getkSecureBackupVerificationTokenKeySymbolLoc_ptr = *(v24[1] + 24);
    v12 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v12)
  {
    v17 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v25, 8);
    _Unwind_Resume(v17);
  }

  v14 = [v10 dictionaryWithObjectsAndKeys:{codeCopy, v11, verificationCodeCopy, *v12, 0}];

  v15 = objc_alloc_init(getSecureBackupClass_0());
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke;
  v18[3] = &unk_1E71DC548;
  v18[4] = self;
  v19 = verificationCodeCopy;
  v16 = verificationCodeCopy;
  [v15 recoverWithInfo:v14 completionBlockWithResults:v18];
}

void __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_ErrorRecoverin.isa, v4);
  }

  v6 = PSKeychainSyncCircleExists();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_2;
  block[3] = &unk_1E71DD488;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v14 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v3)
  {
    [v2 _startCircleJoinAfterRecoveryTimer];
    v8 = *(a1 + 40);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_11;
    v52[3] = &unk_1E71DCF10;
    v52[4] = v8;
    [v8 joinCircleAfterRecovery:1 withCompletion:v52];
    return;
  }

  [v2 stopNavigationSpinner];
  v4 = [*(a1 + 32) domain];
  v5 = getkSecureBackupErrorDomain();
  v6 = [v4 isEqualToString:v5];

  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = [*(a1 + 32) code];
  if (v7 > 18)
  {
    if ((v7 - 25) >= 2)
    {
      if (v7 != 19 || [*(*(a1 + 40) + 56) securityCodeType] != 2)
      {
        goto LABEL_20;
      }

      v17 = MEMORY[0x1E69DC650];
      v18 = PS_LocalizedStringForKeychainSync(@"INCORRECT_SECURITY_CODE");
      v19 = PS_LocalizedStringForKeychainSync(@"ENTER_SECURITY_CODE_AGAIN");
      v10 = [v17 alertControllerWithTitle:v18 message:v19 preferredStyle:1];

      v20 = MEMORY[0x1E69DC648];
      v21 = PS_LocalizedStringForKeychainSync(@"OK");
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_10;
      v53[3] = &unk_1E71DC288;
      v53[4] = *(a1 + 40);
      v22 = v53;
      v23 = v20;
      v24 = v21;
      v25 = 1;
      goto LABEL_35;
    }

LABEL_10:
    if (*(a1 + 48))
    {
      v9 = @"INCORRECT_SECURITY_OR_VERIFICATION_CODE";
    }

    else
    {
      v9 = @"INCORRECT_SECURITY_CODE";
    }

    v10 = PS_LocalizedStringForKeychainSync(v9);
    if (*(a1 + 48))
    {
      v11 = @"ENTER_SECURITY_AND_VERIFICATION_CODES_AGAIN";
    }

    else
    {
      v11 = @"ENTER_SECURITY_CODE_AGAIN";
    }

    v12 = PS_LocalizedStringForKeychainSync(v11);
    v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v12 preferredStyle:1];
    v14 = MEMORY[0x1E69DC648];
    v15 = PS_LocalizedStringForKeychainSync(@"OK");
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_3;
    v60[3] = &unk_1E71DC288;
    v60[4] = *(a1 + 40);
    v16 = [v14 actionWithTitle:v15 style:1 handler:v60];
    [v13 addAction:v16];

    goto LABEL_29;
  }

  if (v7 == 12)
  {
    goto LABEL_10;
  }

  if (v7 != 13)
  {
    if (v7 != 14)
    {
LABEL_20:
      [*(a1 + 40) _showGenericFlowErrorAlert];
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v26 = [MEMORY[0x1E695E000] standardUserDefaults];
  v27 = [v26 BOOLForKey:@"keychainSyncTreatSoftLimitAsHardLimit"];

  if ((v27 & 1) == 0)
  {
    v44 = MEMORY[0x1E69DC650];
    v45 = PS_LocalizedStringForKeychainSync(@"SECURITY_CODE_SOFT_LIMIT_TITLE");
    v46 = PS_LocalizedStringForKeychainSync(@"SECURITY_CODE_SOFT_LIMIT_MESSAGE");
    v10 = [v44 alertControllerWithTitle:v45 message:v46 preferredStyle:1];

    v47 = MEMORY[0x1E69DC648];
    v48 = PS_LocalizedStringForKeychainSync(@"CONTACT_APPLE_SUPPORT");
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_4;
    v59[3] = &unk_1E71DC288;
    v59[4] = *(a1 + 40);
    v49 = [v47 actionWithTitle:v48 style:0 handler:v59];
    [v10 addAction:v49];

    v50 = MEMORY[0x1E69DC648];
    v21 = PS_LocalizedStringForKeychainSync(@"SET_UP_LATER");
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_5;
    v58[3] = &unk_1E71DC288;
    v58[4] = *(a1 + 40);
    v22 = v58;
    v23 = v50;
    v24 = v21;
    v25 = 0;
LABEL_35:
    v51 = [v23 actionWithTitle:v24 style:v25 handler:v22];
    [v10 addAction:v51];

    [*(a1 + 40) showAlert:v10];
    goto LABEL_30;
  }

LABEL_22:
  if (*(a1 + 56))
  {
    v28 = @"SECURITY_CODE_HARD_LIMIT_MESSAGE_WITH_APPROVAL";
  }

  else
  {
    v28 = @"SECURITY_CODE_HARD_LIMIT_MESSAGE";
  }

  v10 = PS_LocalizedStringForKeychainSync(v28);
  v12 = PS_LocalizedStringForKeychainSync(@"SECURITY_CODE_HARD_LIMIT_TITLE");
  v29 = *(a1 + 56);
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v10 preferredStyle:1];
  v30 = MEMORY[0x1E69DC648];
  if (v29 == 1)
  {
    v31 = PS_LocalizedStringForKeychainSync(@"APPROVE_FROM_OTHER_DEVICE");
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_6;
    v57[3] = &unk_1E71DC288;
    v57[4] = *(a1 + 40);
    v32 = [v30 actionWithTitle:v31 style:0 handler:v57];
    [v13 addAction:v32];

    v33 = MEMORY[0x1E69DC648];
    v34 = PS_LocalizedStringForKeychainSync(@"RESET_ICLOUD_KEYCHAIN");
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_7;
    v56[3] = &unk_1E71DC288;
    v56[4] = *(a1 + 40);
    v35 = v56;
  }

  else
  {
    v36 = PS_LocalizedStringForKeychainSync(@"CANCEL");
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_8;
    v55[3] = &unk_1E71DC288;
    v55[4] = *(a1 + 40);
    v37 = [v30 actionWithTitle:v36 style:1 handler:v55];
    [v13 addAction:v37];

    v33 = MEMORY[0x1E69DC648];
    v34 = PS_LocalizedStringForKeychainSync(@"RESET_ICLOUD_KEYCHAIN");
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_9;
    v54[3] = &unk_1E71DC288;
    v54[4] = *(a1 + 40);
    v35 = v54;
  }

  v38 = [v33 actionWithTitle:v34 style:0 handler:v35];
  [v13 addAction:v38];

LABEL_29:
  [*(a1 + 40) showAlert:v13];

LABEL_30:
LABEL_31:
  [*(*(a1 + 40) + 56) setTextEntryText:&stru_1EFE45030];
  v39 = [*(a1 + 40) navigationController];
  v40 = [v39 topViewController];
  v41 = *(*(a1 + 40) + 56);

  if (v40 != v41)
  {
    v42 = [*(a1 + 40) navigationController];
    v43 = [v42 popToViewController:*(*(a1 + 40) + 56) animated:1];
  }
}

void __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) navigationController];
  v2 = [v3 popToViewController:*(*(a1 + 32) + 56) animated:1];
}

void __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_10(uint64_t a1)
{
  v3 = [*(a1 + 32) navigationController];
  v2 = [v3 popToViewController:*(*(a1 + 32) + 56) animated:1];
}

void __67__PSKeychainSyncManager__recoverWithSecurityCode_verificationCode___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) _stopCircleJoinAfterRecoveryTimer];
  [*(a1 + 32) stopNavigationSpinner];
  if (a2 != 2)
  {
    NSLog(&cfstr_FailedToJoinCi.isa, a2, v5);
  }

  [*(a1 + 32) _finishedWithStatus:a2 error:v5];
}

- (void)_circleJoinAfterRecoveryTimerFired:(id)fired
{
  v10 = 0;
  Status = PSKeychainSyncGetStatus(&v10);
  v5 = v10;
  NSLog(&cfstr_CircleJoinAfte.isa, Status);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PSKeychainSyncManager__circleJoinAfterRecoveryTimerFired___block_invoke;
  v7[3] = &unk_1E71DD4B0;
  v9 = Status;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PSKeychainSyncManager *)self _showGenericFlowErrorAlertWithDismissalHandler:v7];
}

uint64_t __60__PSKeychainSyncManager__circleJoinAfterRecoveryTimerFired___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 176);
  if (result)
  {
    (*(result + 16))(result, *(a1 + 48), *(a1 + 40));
    v3 = *(a1 + 32);

    return [v3 setCircleJoinCompletion:0];
  }

  return result;
}

- (void)_startCircleJoinAfterRecoveryTimer
{
  [(NSTimer *)self->_joinAfterRecoveryTimeoutTimer invalidate];
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__circleJoinAfterRecoveryTimerFired_ selector:0 userInfo:0 repeats:15.0];
  joinAfterRecoveryTimeoutTimer = self->_joinAfterRecoveryTimeoutTimer;
  self->_joinAfterRecoveryTimeoutTimer = v3;
}

- (void)_stopCircleJoinAfterRecoveryTimer
{
  [(NSTimer *)self->_joinAfterRecoveryTimeoutTimer invalidate];
  joinAfterRecoveryTimeoutTimer = self->_joinAfterRecoveryTimeoutTimer;
  self->_joinAfterRecoveryTimeoutTimer = 0;
}

- (void)handleCircleChangedNotification
{
  if (self->_joiningCircle)
  {
    v3 = SOSCCThisDeviceIsInCircle();
    if (v3)
    {
      if (v3 == 2)
      {
        v7 = 3;
      }

      else
      {
        if (v3 == 1)
        {
          if (self->_joiningCircleAfterRecovery)
          {
            SOSCCRequestToJoinCircleAfterRestore();
          }

          else
          {
            SOSCCRequestToJoinCircle();
          }

          [(PSKeychainSyncManager *)self _defaultKeychainViewSet];
          [MEMORY[0x1E695DFD8] set];
          SOSCCViewSet();

          goto LABEL_21;
        }

        NSLog(&cfstr_StatusNoLonger.isa, v3);
        NSLog(&cfstr_FailedRequestT.isa, 0);
        v7 = 1;
      }
    }

    else
    {
      v7 = 2;
    }

    circleJoinCompletion = self->_circleJoinCompletion;
    if (circleJoinCompletion)
    {
      circleJoinCompletion[2](circleJoinCompletion, v7, 0);
    }

    [(PSKeychainSyncManager *)self setCircleJoinCompletion:0];
    self->_joiningCircle = 0;
    goto LABEL_21;
  }

  if (self->_flow != 4)
  {
    return;
  }

  if (!SOSCCThisDeviceIsInCircle())
  {
    viewControllerForPresentingAlerts = [(PSKeychainSyncManager *)self viewControllerForPresentingAlerts];
    presentedViewController = [viewControllerForPresentingAlerts presentedViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      navigationController = [(PSKeychainSyncManager *)self navigationController];
      [navigationController dismissViewControllerAnimated:1 completion:0];
    }

    [(PSKeychainSyncSecurityCodeController *)self->_securityCodeRecoveryController dismissAlerts];
    [(KeychainSyncSMSVerificationController *)self->_smsValidationController dismissAlerts];
    [(PSKeychainSyncManager *)self _finishedWithStatus:0 error:0];
  }

LABEL_21:
}

- (void)_callCompletionWithStatus:(int)status error:(id)error
{
  completion = self->_completion;
  if (completion)
  {
    errorCopy = error;
    v9 = _Block_copy(completion);
    (*(self->_completion + 2))();

    v7 = _Block_copy(self->_completion);
    v8 = v9;
    if (v7 == v9)
    {
      [(PSKeychainSyncManager *)self setCompletion:0];
      v8 = v9;
    }
  }
}

- (void)_finishedWithStatus:(int)status error:(id)error
{
  errorCopy = error;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PSKeychainSyncManager__finishedWithStatus_error___block_invoke;
  aBlock[3] = &unk_1E71DD4B0;
  aBlock[4] = self;
  statusCopy = status;
  v7 = errorCopy;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  if (![(PSKeychainSyncManager *)self isRunningInBuddy])
  {
    goto LABEL_6;
  }

  domain = [v7 domain];
  if (([domain isEqualToString:@"com.apple.Preferences.KeychainSync"] & 1) == 0)
  {

    goto LABEL_6;
  }

  code = [v7 code];

  if (code != 5)
  {
LABEL_6:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__PSKeychainSyncManager__finishedWithStatus_error___block_invoke_2;
    v11[3] = &unk_1E71DD4D8;
    v11[4] = self;
    v12 = v8;
    [(PSKeychainSyncManager *)self showResetAcknowledgementIfNeededWithCompletion:v11];

    goto LABEL_7;
  }

  v8[2](v8);
LABEL_7:
}

uint64_t __51__PSKeychainSyncManager__finishedWithStatus_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanup];
  *(*(a1 + 32) + 16) = 0;
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _callCompletionWithStatus:v2 error:v4];
}

uint64_t __51__PSKeychainSyncManager__finishedWithStatus_error___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isRunningInBuddy] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 200) rootController];
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_preSetupCancelledWithCurrentStatus
{
  [(PSKeychainSyncManager *)self _cleanup];
  flow = self->_flow;
  if (flow == 5)
  {
    resetCompletion = self->_resetCompletion;
    if (resetCompletion)
    {
      v5 = _Block_copy(resetCompletion);
      v10 = self->_resetCompletion;
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:2 userInfo:0];
      v10[2](v10, 0, v11);

      v12 = _Block_copy(self->_resetCompletion);
      if (v12 == v5)
      {
        [(PSKeychainSyncManager *)self setResetCompletion:0];
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (flow != 3)
    {
      Status = PSKeychainSyncGetStatus(0);
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:2 userInfo:0];
      [(PSKeychainSyncManager *)self _callCompletionWithStatus:Status error:v5];
LABEL_10:

      goto LABEL_11;
    }

    changeSecurityCodeCompletion = self->_changeSecurityCodeCompletion;
    if (changeSecurityCodeCompletion)
    {
      v5 = _Block_copy(changeSecurityCodeCompletion);
      v6 = self->_changeSecurityCodeCompletion;
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:2 userInfo:0];
      (*(v6 + 2))(v6, 0, 0, 0xFFFFFFFFLL, v7);

      v8 = _Block_copy(self->_changeSecurityCodeCompletion);
      if (v8 == v5)
      {
        [(PSKeychainSyncManager *)self setChangeSecurityCodeCompletion:0];
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  [(PSKeychainSyncManager *)self setCircleWasReset:0];
  self->_flow = 0;
}

- (void)keychainSyncControllerCancel:(id)cancel
{
  if (![(PSKeychainSyncManager *)self isRunningInBuddy])
  {
    rootController = [(PSRootController *)self->_settingsSetupController rootController];
    [rootController dismissViewControllerAnimated:1 completion:0];
  }

  [(PSKeychainSyncManager *)self _preSetupCancelledWithCurrentStatus];
}

- (void)_autoVetSMSValidationWithToken:(id)token
{
  tokenCopy = token;
  navigationController = [(PSKeychainSyncManager *)self navigationController];
  topViewController = [navigationController topViewController];
  smsValidationController = self->_smsValidationController;

  if (topViewController == smsValidationController)
  {
    NSLog(&cfstr_AutoVettingKey.isa, tokenCopy);
    [(PSKeychainSyncTextEntryController *)self->_smsValidationController setTextEntryText:tokenCopy];
  }

  PSHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier();
}

- (void)keychainSyncController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  errorCopy = error;
  if (self->_securityCodeRecoveryController == controllerCopy)
  {
    if (@"usePeerApproval" == resultCopy)
    {
      [(PSKeychainSyncManager *)self _peerApprovalFromRecoveryFlow];
      goto LABEL_66;
    }

    if (@"resetKeychain" == resultCopy)
    {
      [(PSKeychainSyncManager *)self _resetFromRecoveryFlow];
      goto LABEL_66;
    }

    if (@"setUpLater" == resultCopy)
    {
LABEL_29:
      [(PSKeychainSyncManager *)self _finishedWithStatus:1 error:0];
      goto LABEL_66;
    }

    securityCodeRecoveryAttempt = resultCopy;
    v12 = [(__CFString *)securityCodeRecoveryAttempt objectForKey:@"securityCode"];
    [(PSKeychainSyncManager *)self setSecurityCodeRecoveryAttempt:v12];

    [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:self->_securityCodeRecoveryController];
    v13 = objc_alloc_init(getSecureBackupClass_0());
    v90 = 0;
    v14 = [v13 getAccountInfoWithInfo:0 results:&v90];
    v15 = v90;
    if (v14)
    {
      [(PSKeychainSyncManager *)self stopNavigationSpinner];
      NSLog(&cfstr_ErrorLoadingAc_0.isa, v14);
      [(PSKeychainSyncManager *)self _showGenericFlowErrorAlert];
LABEL_63:

      goto LABEL_64;
    }

    v76 = securityCodeRecoveryAttempt;
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v43 = getkSecureBackupAccountIsHighSecurityKeySymbolLoc_ptr;
    v99 = getkSecureBackupAccountIsHighSecurityKeySymbolLoc_ptr;
    if (!getkSecureBackupAccountIsHighSecurityKeySymbolLoc_ptr)
    {
      location = MEMORY[0x1E69E9820];
      v92 = 3221225472;
      v93 = __getkSecureBackupAccountIsHighSecurityKeySymbolLoc_block_invoke;
      v94 = &unk_1E71DBC78;
      v95 = &v96;
      v44 = CloudServicesLibrary_1();
      v45 = dlsym(v44, "kSecureBackupAccountIsHighSecurityKey");
      *(v95[1] + 24) = v45;
      getkSecureBackupAccountIsHighSecurityKeySymbolLoc_ptr = *(v95[1] + 24);
      v43 = v97[3];
    }

    v46 = &v96;
    _Block_object_dispose(&v96, 8);
    if (v43)
    {
      v47 = [v15 objectForKey:*v43];
      bOOLValue = [v47 BOOLValue];

      v96 = 0;
      v97 = &v96;
      v98 = 0x2020000000;
      v46 = &getkSecureBackupAuthenticationPasswordSymbolLoc_ptr;
      v49 = getkSecureBackupRecoveryRequiresVerificationTokenKeySymbolLoc_ptr;
      v99 = getkSecureBackupRecoveryRequiresVerificationTokenKeySymbolLoc_ptr;
      if (!getkSecureBackupRecoveryRequiresVerificationTokenKeySymbolLoc_ptr)
      {
        location = MEMORY[0x1E69E9820];
        v92 = 3221225472;
        v93 = __getkSecureBackupRecoveryRequiresVerificationTokenKeySymbolLoc_block_invoke;
        v94 = &unk_1E71DBC78;
        v95 = &v96;
        v50 = CloudServicesLibrary_1();
        v51 = dlsym(v50, "kSecureBackupRecoveryRequiresVerificationTokenKey");
        *(v95[1] + 24) = v51;
        getkSecureBackupRecoveryRequiresVerificationTokenKeySymbolLoc_ptr = *(v95[1] + 24);
        v49 = v97[3];
      }

      v74 = bOOLValue;
      _Block_object_dispose(&v96, 8);
      if (v49)
      {
        v52 = [v15 objectForKey:*v49];
        bOOLValue2 = [v52 BOOLValue];

        v53 = getkSecureBackupSMSTargetInfoKey();
        v77 = v15;
        v54 = [v15 objectForKey:v53];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = getkSecureBackupSMSTargetPhoneNumberKey();
          v56 = [v54 objectForKey:v55];

          v57 = getkSecureBackupCountryDialCodeKey();
          v71 = [v54 objectForKey:v57];

          v58 = getkSecureBackupCountryCodeKey_0();
          v59 = [v54 objectForKey:v58];

          if (![v59 length])
          {
            v70 = getkSecureBackupMetadataKey_0();
            v68 = [v77 objectForKey:v70];
            v60 = getkSecureBackupCountryCodeKey_0();
            v69 = [v68 objectForKey:?];

            v59 = v69;
          }

          v61 = v71;
        }

        else
        {
          v59 = 0;
          v61 = 0;
          v56 = 0;
        }

        if ((v74 & 1) == 0)
        {
          v62 = bOOLValue2;
          if (!v56)
          {
            v62 = 0;
          }

          if (v62 == 1 && v61)
          {
            v73 = v56;
            [getFTDeviceSupportClass() sharedInstance];
            v75 = v13;
            v63 = v54;
            v65 = v64 = v61;
            isTelephonyDevice = [v65 isTelephonyDevice];

            v61 = v64;
            v54 = v63;
            v13 = v75;
            if (isTelephonyDevice && [(PSKeychainSyncManager *)self isRunningInBuddy])
            {
              objc_initWeak(&location, self);
              v88[0] = MEMORY[0x1E69E9820];
              v88[1] = 3221225472;
              v88[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke;
              v88[3] = &unk_1E71DD500;
              objc_copyWeak(&v89, &location);
              PSHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier(v88);
              objc_destroyWeak(&v89);
              objc_destroyWeak(&location);
            }

            v84[0] = MEMORY[0x1E69E9820];
            v84[1] = 3221225472;
            v84[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_3;
            v84[3] = &unk_1E71DD550;
            v84[4] = self;
            v85 = v59;
            v86 = v61;
            v56 = v73;
            v87 = v73;
            [v75 startSMSChallengeWithInfo:0 completionBlockWithResults:v84];

            goto LABEL_62;
          }

          if (bOOLValue2 && (!v56 || !v61))
          {
            NSLog(&cfstr_RequiresVerifi.isa);
          }
        }

        [(PSKeychainSyncManager *)self stopNavigationSpinner];
        [(PSKeychainSyncManager *)self _recoverWithSecurityCode:self->_securityCodeRecoveryAttempt verificationCode:0];
LABEL_62:

        securityCodeRecoveryAttempt = v76;
        v15 = v77;
        goto LABEL_63;
      }
    }

    else
    {
      [PSContactsAuthorizationLevelController dealloc];
    }

    v67 = [PSContactsAuthorizationLevelController dealloc];
    objc_destroyWeak(v46 + 4);
    objc_destroyWeak(&location);
    _Unwind_Resume(v67);
  }

  if (self->_advancedSecurityCodeChoiceController == controllerCopy)
  {
    intValue = [(__CFString *)resultCopy intValue];
    if (intValue == 3)
    {
      navigationController = [(PSKeychainSyncManager *)self navigationController];
      topViewController = [navigationController topViewController];
      [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:topViewController];

      securityCodeRecoveryAttempt = objc_alloc_init(getSecureBackupClass_0());
      [(__CFString *)securityCodeRecoveryAttempt disableWithInfo:0 completionBlock:&__block_literal_global_17];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_7;
      v83[3] = &unk_1E71DCF10;
      v83[4] = self;
      [(PSKeychainSyncManager *)self joinCircleWithCompletion:v83];
      goto LABEL_65;
    }

    v22 = intValue;
    v23 = objc_alloc_init(PSKeychainSyncSecurityCodeController);
    complexSecurityCodeController = self->_complexSecurityCodeController;
    self->_complexSecurityCodeController = v23;

    [(PSKeychainSyncViewController *)self->_complexSecurityCodeController setDelegate:self];
    [(PSKeychainSyncSecurityCodeController *)self->_complexSecurityCodeController setMode:1];
    if (v22 == 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    [(PSKeychainSyncSecurityCodeController *)self->_complexSecurityCodeController setSecurityCodeType:v25];
    v26 = self->_complexSecurityCodeController;
    goto LABEL_36;
  }

  if (self->_simpleSecurityCodeController == controllerCopy || self->_complexSecurityCodeController == controllerCopy)
  {
    if (@"advancedOptions" != resultCopy)
    {
      securityCodeRecoveryAttempt = [(__CFString *)resultCopy objectForKey:@"securityCodeType"];
      intValue2 = [(__CFString *)securityCodeRecoveryAttempt intValue];
      v17 = [(__CFString *)resultCopy objectForKey:@"securityCode"];
      [(PSKeychainSyncManager *)self setStagedSecurityCode:v17 type:intValue2];

      if (self->_flow == 3)
      {
        [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:controllerCopy];
        v18 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_8;
        block[3] = &unk_1E71DD4B0;
        v82 = intValue2;
        block[4] = self;
        v81 = controllerCopy;
        dispatch_async(v18, block);
      }

      else if (intValue2 == 2)
      {
        [(PSKeychainSyncManager *)self joinCircleAndEnableSecureBackupWithPhoneNumber:0 countryInfo:0];
      }

      else
      {
        phoneNumberController = self->_phoneNumberController;
        if (!phoneNumberController)
        {
          v41 = objc_alloc_init(KeychainSyncPhoneNumberController);
          v42 = self->_phoneNumberController;
          self->_phoneNumberController = v41;

          phoneNumberController = self->_phoneNumberController;
        }

        [(PSKeychainSyncManager *)self showController:phoneNumberController];
      }

      goto LABEL_65;
    }

    v27 = objc_alloc_init(KeychainSyncAdvancedSecurityCodeController);
    advancedSecurityCodeChoiceController = self->_advancedSecurityCodeChoiceController;
    self->_advancedSecurityCodeChoiceController = v27;

    [(PSKeychainSyncViewController *)self->_advancedSecurityCodeChoiceController setDelegate:self];
    [(KeychainSyncAdvancedSecurityCodeController *)self->_advancedSecurityCodeChoiceController setShowsDisableRecoveryOption:self->_flow == 1];
    v26 = self->_advancedSecurityCodeChoiceController;
LABEL_36:
    [(PSKeychainSyncManager *)self showController:v26];
    goto LABEL_66;
  }

  if (self->_devicePinController == controllerCopy)
  {
    LOBYTE(location) = 0;
    PSIsUsingPasscode(&location);
    [(PSKeychainSyncManager *)self setStagedSecurityCode:resultCopy type:location ^ 1u];
    if (!self->_phoneNumberController)
    {
      v29 = objc_alloc_init(KeychainSyncPhoneNumberController);
      v30 = self->_phoneNumberController;
      self->_phoneNumberController = v29;
    }

    if (![(PSKeychainSyncManager *)self isRunningInBuddy])
    {
      [(PSKeychainSyncManager *)self stagedSecurityCode];
      if (SecPasswordIsPasswordWeak2())
      {
        NSLog(&cfstr_DevicePinIsToo.isa);
        v31 = MEMORY[0x1E69DC650];
        v32 = PS_LocalizedStringForKeychainSync(@"DEVICE_PASSCODE_TOO_WEAK");
        v33 = PS_LocalizedStringForKeychainSync(@"DEVICE_PASSCODE_TOO_WEAK_DETAILS");
        securityCodeRecoveryAttempt = [v31 alertControllerWithTitle:v32 message:v33 preferredStyle:1];

        v34 = MEMORY[0x1E69DC648];
        v35 = PS_LocalizedStringForKeychainSync(@"CANCEL");
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_11;
        v79[3] = &unk_1E71DC288;
        v79[4] = self;
        v36 = [v34 actionWithTitle:v35 style:1 handler:v79];
        [(__CFString *)securityCodeRecoveryAttempt addAction:v36];

        v37 = MEMORY[0x1E69DC648];
        v38 = PS_LocalizedStringForKeychainSync(@"USE_CODE");
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_12;
        v78[3] = &unk_1E71DC288;
        v78[4] = self;
        v39 = [v37 actionWithTitle:v38 style:0 handler:v78];
        [(__CFString *)securityCodeRecoveryAttempt addAction:v39];

        [(PSKeychainSyncManager *)self showAlert:securityCodeRecoveryAttempt];
        goto LABEL_65;
      }
    }

    v26 = self->_phoneNumberController;
    goto LABEL_36;
  }

  if (self->_phoneNumberController == controllerCopy)
  {
    securityCodeRecoveryAttempt = [(__CFString *)resultCopy objectForKey:@"phoneNumber"];
    v13 = [(__CFString *)resultCopy objectForKey:@"countryInfo"];
    [(PSKeychainSyncManager *)self keychainSyncPhoneNumberController:controllerCopy didCompleteWithPhoneNumber:securityCodeRecoveryAttempt countryInfo:v13];
LABEL_64:

    goto LABEL_65;
  }

  if (self->_smsValidationController == controllerCopy)
  {
    if (resultCopy)
    {
      securityCodeRecoveryAttempt = [(PSKeychainSyncManager *)self securityCodeRecoveryAttempt];
      [(PSKeychainSyncManager *)self _recoverWithSecurityCode:securityCodeRecoveryAttempt verificationCode:resultCopy];
LABEL_65:

      goto LABEL_66;
    }

    goto LABEL_29;
  }

LABEL_66:
}

void __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_2;
  v8[3] = &unk_1E71DBF68;
  objc_copyWeak(&v10, (a1 + 32));
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v10);
}

void __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _autoVetSMSValidationWithToken:*(a1 + 32)];
}

void __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_4;
  v10[3] = &unk_1E71DD528;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) stopNavigationSpinner];
  v2 = [*(a1 + 40) domain];
  v3 = getkSecureBackupErrorDomain();
  if ([v2 isEqualToString:v3])
  {
    if ([*(a1 + 40) code] == 28)
    {

LABEL_10:
      v6 = [KeychainSyncCountryInfo countryInfoForCountryCode:*(a1 + 48) dialingPrefix:*(a1 + 56)];
      v7 = [PSKeychainSyncPhoneNumber phoneNumberWithDigits:*(a1 + 64) countryInfo:v6];
      NSLog(&cfstr_ErrorSendingSm.isa, *(a1 + 40));
      v8 = MEMORY[0x1E696AEC0];
      v9 = PS_LocalizedStringForKeychainSync(@"SMS_RETRY_LIMIT_REACHED");
      v10 = [v7 formattedAndObfuscatedString];
      v11 = [v8 stringWithFormat:v9, v10];

      v12 = MEMORY[0x1E69DC650];
      v13 = PS_LocalizedStringForKeychainSync(@"TRY_SETTING_UP_LATER");
      v14 = [v12 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

      v15 = MEMORY[0x1E69DC648];
      v16 = PS_LocalizedStringForKeychainSync(@"OK");
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_5;
      v26[3] = &unk_1E71DC288;
      v26[4] = *(a1 + 32);
      v17 = [v15 actionWithTitle:v16 style:0 handler:v26];
      [v14 addAction:v17];

      [*(a1 + 32) showAlert:v14];
LABEL_18:

      return;
    }

    v5 = [*(a1 + 40) code];

    if (v5 == 27)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (!*(a1 + 40))
  {
    v18 = *(a1 + 72);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v19 = getkSecureBackupRecoveryVerificationTokenLengthKeySymbolLoc_ptr;
    v31 = getkSecureBackupRecoveryVerificationTokenLengthKeySymbolLoc_ptr;
    if (!getkSecureBackupRecoveryVerificationTokenLengthKeySymbolLoc_ptr)
    {
      v26[5] = MEMORY[0x1E69E9820];
      v26[6] = 3221225472;
      v26[7] = __getkSecureBackupRecoveryVerificationTokenLengthKeySymbolLoc_block_invoke;
      v26[8] = &unk_1E71DBC78;
      v27 = &v28;
      v20 = CloudServicesLibrary_1();
      v29[3] = dlsym(v20, "kSecureBackupRecoveryVerificationTokenLengthKey");
      getkSecureBackupRecoveryVerificationTokenLengthKeySymbolLoc_ptr = *(v27[1] + 24);
      v19 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (!v19)
    {
      v25 = [PSContactsAuthorizationLevelController dealloc];
      _Block_object_dispose(&v28, 8);
      _Unwind_Resume(v25);
    }

    v6 = [v18 objectForKey:*v19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v6 unsignedIntegerValue];
    }

    else
    {
      v21 = 0;
    }

    v22 = objc_alloc_init(KeychainSyncSMSVerificationController);
    v23 = *(a1 + 32);
    v24 = *(v23 + 72);
    *(v23 + 72) = v22;

    [*(*(a1 + 32) + 72) setKeychainSyncManager:?];
    [*(*(a1 + 32) + 72) setPhoneNumber:*(a1 + 64)];
    [*(*(a1 + 32) + 72) setDialingPrefix:*(a1 + 56)];
    [*(*(a1 + 32) + 72) setCountryCode:*(a1 + 48)];
    [*(*(a1 + 32) + 72) setNumberOfPasscodeFields:v21];
    [*(a1 + 32) showController:*(*(a1 + 32) + 72)];
    goto LABEL_18;
  }

  NSLog(&cfstr_ErrorSendingSm.isa, *(a1 + 40));
  [*(a1 + 32) _showGenericFlowErrorAlert];
  v4 = *(*(a1 + 32) + 56);

  [v4 setTextEntryText:&stru_1EFE45030];
}

void __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 stopNavigationSpinner];
  [*(a1 + 32) _finishedWithStatus:a2 error:v6];
}

void __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_8(uint64_t a1)
{
  if (*(a1 + 48) == 2)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc_init(getSecureBackupClass_0());
    v19 = 0;
    v5 = [v4 getAccountInfoWithInfo:0 results:&v19];
    v6 = v19;
    v7 = getkSecureBackupSMSTargetInfoKey();
    v8 = [v6 objectForKey:v7];

    objc_opt_class();
    v2 = 0;
    v3 = 0;
    if (objc_opt_isKindOfClass())
    {
      v9 = getkSecureBackupSMSTargetPhoneNumberKey();
      v3 = [v8 objectForKey:v9];

      v10 = getkSecureBackupCountryDialCodeKey();
      v2 = [v8 objectForKey:v10];
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_9;
  v14[3] = &unk_1E71DD5A0;
  v18 = *(a1 + 48);
  v11 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v3;
  v16 = v2;
  v17 = v11;
  v12 = v2;
  v13 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) stopNavigationSpinner];
  v2 = *(a1 + 64);
  if (v2 == 2)
  {
    goto LABEL_5;
  }

  if ([*(a1 + 40) length] && objc_msgSend(*(a1 + 48), "length"))
  {
    v2 = *(a1 + 64);
LABEL_5:
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_10;
    v10[3] = &unk_1E71DD578;
    v10[4] = v3;
    v12 = v2;
    v11 = v4;
    [v3 promptForPasswordIfCredentialsNotCachedOverController:v11 withCompletion:v10];

    return;
  }

  v5 = objc_alloc_init(KeychainSyncPhoneNumberController);
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  [*(*(a1 + 32) + 64) setDelegate:?];
  v8 = *(a1 + 32);
  v9 = v8[8];

  [v8 showController:v9];
}

void __74__PSKeychainSyncManager_keychainSyncController_didFinishWithResult_error___block_invoke_10(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    [*(a1 + 32) _changeToNewSecurityCode:*(*(a1 + 32) + 224) type:*(a1 + 48) smsTarget:0 smsTargetCountryInfo:0];
    goto LABEL_9;
  }

  v6 = [v5 domain];
  if ([v6 isEqualToString:@"com.apple.Preferences.KeychainSync"] && objc_msgSend(v9, "code") == 1)
  {
  }

  else
  {
    v7 = *(a1 + 48);

    if (v7)
    {
      [*(a1 + 40) reloadSpecifiers];
      [*(a1 + 40) becomeFirstResponder];
      goto LABEL_9;
    }
  }

  v8 = [*(*(a1 + 32) + 200) rootController];
  [v8 dismissViewControllerAnimated:1 completion:0];

  *(*(a1 + 32) + 16) = 0;
LABEL_9:
}

- (void)_enableSecureBackupWithPhoneNumber:(id)number countryInfo:(id)info
{
  numberCopy = number;
  infoCopy = info;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = MEMORY[0x1E695DF90];
  v10 = getkSecureBackupMetadataKey_0();
  v11 = [v9 dictionaryWithObject:dictionary forKey:v10];

  if (infoCopy)
  {
    countryCode = [infoCopy countryCode];
    v13 = getkSecureBackupCountryCodeKey_0();
    [dictionary setObject:countryCode forKey:v13];
  }

  if (-[PSKeychainSyncManager isRunningInBuddy](self, "isRunningInBuddy") && (-[PSKeychainSyncManager stagedSecurityCode](self, "stagedSecurityCode"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, !v15))
  {
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v28 = getkSecureBackupUseCachedPassphraseKeySymbolLoc_ptr;
    v72 = getkSecureBackupUseCachedPassphraseKeySymbolLoc_ptr;
    if (!getkSecureBackupUseCachedPassphraseKeySymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v65 = 3221225472;
      v66 = __getkSecureBackupUseCachedPassphraseKeySymbolLoc_block_invoke;
      v67 = &unk_1E71DBC78;
      v68 = &v69;
      v29 = CloudServicesLibrary_1();
      v70[3] = dlsym(v29, "kSecureBackupUseCachedPassphraseKey");
      getkSecureBackupUseCachedPassphraseKeySymbolLoc_ptr = *(v68[1] + 24);
      v28 = v70[3];
    }

    _Block_object_dispose(&v69, 8);
    if (!v28)
    {
      v57 = [PSContactsAuthorizationLevelController dealloc];
      _Block_object_dispose(&v69, 8);
      _Unwind_Resume(v57);
    }

    [v11 setObject:MEMORY[0x1E695E118] forKey:*v28];
    LOBYTE(v69) = 0;
    PSIsUsingPasscode(&v69);
    v30 = [MEMORY[0x1E696AD98] numberWithInt:v69 ^ 1u];
    v31 = getkSecureBackupUsesComplexPassphraseKey();
    [dictionary setObject:v30 forKey:v31];

    v32 = [MEMORY[0x1E696AD98] numberWithInt:v69];
    v33 = getkSecureBackupUsesNumericPassphraseKey();
    [dictionary setObject:v32 forKey:v33];

    if (v69 == 1)
    {
      *buf = -1;
      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      [mEMORY[0x1E69ADFB8] unlockScreenTypeWithOutSimplePasscodeType:buf];

      if (*buf)
      {
        v35 = 6;
      }

      else
      {
        v35 = 4;
      }

      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
      v37 = getkSecureBackupNumericPassphraseLengthKey();
      [dictionary setObject:v36 forKey:v37];
    }
  }

  else
  {
    stagedSecurityCode = [(PSKeychainSyncManager *)self stagedSecurityCode];
    v17 = getkSecureBackupPassphraseKey();
    [v11 setObject:stagedSecurityCode forKey:v17];

    v18 = [MEMORY[0x1E696AD98] numberWithInt:self->_stagedSecurityCodeType == 2];
    v19 = getkSecureBackupUsesRandomPassphraseKey();
    [v11 setObject:v18 forKey:v19];

    v20 = [MEMORY[0x1E696AD98] numberWithInt:self->_stagedSecurityCodeType != 0];
    v21 = getkSecureBackupUsesComplexPassphraseKey();
    [dictionary setObject:v20 forKey:v21];

    v22 = [MEMORY[0x1E696AD98] numberWithInt:self->_stagedSecurityCodeType == 0];
    v23 = getkSecureBackupUsesNumericPassphraseKey();
    [dictionary setObject:v22 forKey:v23];

    if (!self->_stagedSecurityCodeType)
    {
      v24 = MEMORY[0x1E696AD98];
      stagedSecurityCode2 = [(PSKeychainSyncManager *)self stagedSecurityCode];
      v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(stagedSecurityCode2, "length")}];
      v27 = getkSecureBackupNumericPassphraseLengthKey();
      [dictionary setObject:v26 forKey:v27];
    }
  }

  appleIDPasswordOrEquivalentToken = [(PSKeychainSyncManager *)self appleIDPasswordOrEquivalentToken];

  if (!appleIDPasswordOrEquivalentToken)
  {
    v39 = _PSLoggingFacility();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v39, OS_LOG_TYPE_DEFAULT, "Missing password or password equivalent!", buf, 2u);
    }
  }

  if (numberCopy)
  {
    if (infoCopy)
    {
      appleIDPasswordOrEquivalentToken2 = [(PSKeychainSyncManager *)self appleIDPasswordOrEquivalentToken];

      if (appleIDPasswordOrEquivalentToken2)
      {
        v41 = getkSecureBackupSMSTargetPhoneNumberKey();
        [v11 setObject:numberCopy forKey:v41];

        dialingPrefix = [infoCopy dialingPrefix];
        v43 = getkSecureBackupCountryDialCodeKey();
        [v11 setObject:dialingPrefix forKey:v43];

        countryCode2 = [infoCopy countryCode];
        v45 = getkSecureBackupCountryCodeKey_0();
        [v11 setObject:countryCode2 forKey:v45];

        appleIDUsername = [(PSKeychainSyncManager *)self appleIDUsername];
        v47 = getkSecureBackupAuthenticationAppleID();
        [v11 setObject:appleIDUsername forKey:v47];

        appleIDPasswordOrEquivalentToken3 = [(PSKeychainSyncManager *)self appleIDPasswordOrEquivalentToken];
        v49 = getkSecureBackupAuthenticationPassword();
        [v11 setObject:appleIDPasswordOrEquivalentToken3 forKey:v49];
      }
    }
  }

  navigationController = [(PSKeychainSyncManager *)self navigationController];
  topViewController = [navigationController topViewController];
  [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:topViewController];

  v52 = objc_alloc_init(getSecureBackupClass_0());
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __72__PSKeychainSyncManager__enableSecureBackupWithPhoneNumber_countryInfo___block_invoke;
  v58[3] = &unk_1E71DD5F0;
  v59 = v52;
  v60 = v11;
  selfCopy = self;
  v62 = numberCopy;
  v63 = infoCopy;
  v53 = infoCopy;
  v54 = numberCopy;
  v55 = v11;
  v56 = v52;
  [v56 disableWithInfo:0 completionBlock:v58];
}

void __72__PSKeychainSyncManager__enableSecureBackupWithPhoneNumber_countryInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_FailedToDisabl_0.isa, a2);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PSKeychainSyncManager__enableSecureBackupWithPhoneNumber_countryInfo___block_invoke_2;
  v6[3] = &unk_1E71DD5C8;
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 48);
  v7 = v5;
  v8 = *(a1 + 64);
  [v3 enableWithInfo:v4 completionBlock:v6];
}

void __72__PSKeychainSyncManager__enableSecureBackupWithPhoneNumber_countryInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PSKeychainSyncManager__enableSecureBackupWithPhoneNumber_countryInfo___block_invoke_3;
  v6[3] = &unk_1E71DC598;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __72__PSKeychainSyncManager__enableSecureBackupWithPhoneNumber_countryInfo___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) stopNavigationSpinner];
  if (*(a1 + 40))
  {
    NSLog(&cfstr_FailedToEnable.isa, *(a1 + 40));
    if (*(*(a1 + 32) + 16) == 1)
    {
      SOSCCRemoveThisDeviceFromCircle();
    }

    v2 = [*(a1 + 40) domain];
    v3 = getkSecureBackupErrorDomain();
    if ([v2 isEqualToString:v3])
    {
      v4 = [*(a1 + 40) code];

      if (v4 == 29)
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);

        return [v5 _showInvalidPhoneNumberAlertWithDigits:v6 countryInfo:v7];
      }
    }

    else
    {
    }

    v10 = *(a1 + 32);

    return [v10 _showGenericFlowErrorAlert];
  }

  else
  {
    v9 = *(a1 + 32);

    return [v9 _finishedWithStatus:2 error:0];
  }
}

- (void)joinCircleAndEnableSecureBackupWithPhoneNumber:(id)number countryInfo:(id)info
{
  numberCopy = number;
  infoCopy = info;
  navigationController = [(PSKeychainSyncManager *)self navigationController];
  topViewController = [navigationController topViewController];
  [(PSKeychainSyncManager *)self startNavigationSpinnerInViewController:topViewController];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PSKeychainSyncManager_joinCircleAndEnableSecureBackupWithPhoneNumber_countryInfo___block_invoke;
  v12[3] = &unk_1E71DD618;
  v12[4] = self;
  v13 = numberCopy;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = numberCopy;
  [(PSKeychainSyncManager *)self joinCircleWithCompletion:v12];
}

void __84__PSKeychainSyncManager_joinCircleAndEnableSecureBackupWithPhoneNumber_countryInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) stopNavigationSpinner];
  v6 = *(a1 + 32);
  if (a2 == 2)
  {
    v7 = [*(a1 + 32) navigationController];
    v8 = [v7 topViewController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__PSKeychainSyncManager_joinCircleAndEnableSecureBackupWithPhoneNumber_countryInfo___block_invoke_2;
    v10[3] = &unk_1E71DD000;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    v12 = *(a1 + 48);
    [v6 promptForPasswordIfCredentialsNotCachedOverController:v8 withCompletion:v10];
  }

  else
  {
    [*(a1 + 32) _showGenericFlowErrorAlert];
    [*(a1 + 32) _finishedWithStatus:a2 error:v5];
  }
}

uint64_t __84__PSKeychainSyncManager_joinCircleAndEnableSecureBackupWithPhoneNumber_countryInfo___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _enableSecureBackupWithPhoneNumber:*(result + 40) countryInfo:*(result + 48)];
  }

  return result;
}

- (void)keychainSyncPhoneNumberController:(id)controller didCompleteWithPhoneNumber:(id)number countryInfo:(id)info
{
  numberCopy = number;
  infoCopy = info;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__PSKeychainSyncManager_keychainSyncPhoneNumberController_didCompleteWithPhoneNumber_countryInfo___block_invoke;
  v12[3] = &unk_1E71DD000;
  v12[4] = self;
  v13 = numberCopy;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = numberCopy;
  [(PSKeychainSyncManager *)self promptForPasswordIfCredentialsNotCachedOverController:controller withCompletion:v12];
}

void __98__PSKeychainSyncManager_keychainSyncPhoneNumberController_didCompleteWithPhoneNumber_countryInfo___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = v6[4];
    v9 = v5;
    if (v7 == 3)
    {
      v8 = [v6 stagedSecurityCode];
      [v6 _changeToNewSecurityCode:v8 type:objc_msgSend(*(a1 + 32) smsTarget:"stagedSecurityCodeType") smsTargetCountryInfo:{*(a1 + 40), *(a1 + 48)}];
    }

    else if (v7 == 2)
    {
      [v6 _enableSecureBackupWithPhoneNumber:*(a1 + 40) countryInfo:*(a1 + 48)];
    }

    else
    {
      [v6 joinCircleAndEnableSecureBackupWithPhoneNumber:*(a1 + 40) countryInfo:*(a1 + 48)];
    }

    v5 = v9;
  }
}

- (void)pinChoiceAlertDidChooseToUseDevicePasscode:(BOOL)passcode
{
  passcodeCopy = passcode;
  if ([(PSKeychainSyncManager *)self isRunningInBuddy])
  {
    if (passcodeCopy)
    {
      phoneNumberController = self->_phoneNumberController;
      if (!phoneNumberController)
      {
        v6 = objc_alloc_init(KeychainSyncPhoneNumberController);
        v7 = self->_phoneNumberController;
        self->_phoneNumberController = v6;

        phoneNumberController = self->_phoneNumberController;
      }

      [(PSKeychainSyncManager *)self showController:phoneNumberController];
      return;
    }

    v10 = objc_alloc_init(PSKeychainSyncSecurityCodeController);
    simpleSecurityCodeController = self->_simpleSecurityCodeController;
    self->_simpleSecurityCodeController = v10;

    [(PSKeychainSyncSecurityCodeController *)self->_simpleSecurityCodeController setShowsAdvancedSettings:1];
    v12 = self->_simpleSecurityCodeController;
    if (!v12)
    {
      return;
    }
  }

  else
  {
    if (passcodeCopy)
    {
      objc_opt_class();
      v14 = objc_opt_new();
      objc_storeStrong(&self->_devicePinController, v14);
      if (!v14)
      {
        return;
      }

      devicePinController = self->_devicePinController;
      v9 = PS_LocalizedStringForKeychainSync(@"ENTER_YOUR_PASSCODE");
      [(KeychainSyncDevicePINController *)devicePinController setEnterPasscodeTitle:v9];

      goto LABEL_13;
    }

    objc_opt_class();
    v15 = objc_opt_new();
    objc_storeStrong(&self->_simpleSecurityCodeController, v15);
    [(PSKeychainSyncSecurityCodeController *)self->_simpleSecurityCodeController setShowsAdvancedSettings:1];
    v12 = v15;
    if (!v15)
    {
      return;
    }
  }

  v14 = v12;
  [(PSKeychainSyncSecurityCodeController *)v12 setMode:1];
LABEL_13:
  [v14 setDelegate:self];
  if ([(PSKeychainSyncManager *)self isRunningInBuddy])
  {
    [(PSKeychainSyncManager *)self showController:v14];
  }

  else
  {
    [(PSRootController *)self->_settingsSetupController showController:v14];
    parentController = [(PSSetupController *)self->_settingsSetupController parentController];
    [parentController presentViewController:self->_settingsSetupController animated:1 completion:0];
  }
}

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

void __91__PSKeychainSyncManager_promptForDevicePasscodeChangeToPasscode_overController_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "iCDP: Failed to update local secret after passcode change with error %@", &v2, 0xCu);
}

@end