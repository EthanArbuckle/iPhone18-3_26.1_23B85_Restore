@interface SBPasscodeController
+ (id)sharedInstance;
- (SBPasscodeController)init;
- (void)_abort;
- (void)_activateComplianceAlert;
- (void)_fetchAndSetUnlockScreenTypeForNewPasscode:(BOOL)a3;
- (void)_passwordEntered:(id)a3;
- (void)_presentPasscodeAlertItemWithMode:(int)a3 alertItemErrorString:(id)a4 unlockScreenType:(int)a5;
- (void)_startListeningToManagedConfigurationNotification;
- (void)_startListeningToRestoreCompletedAlertStateChangedNotifications;
- (void)_startListeningToTelephonyNotifications;
- (void)_stopListeningToManagedConfigurationNotification;
- (void)_stopListeningToRestoreCompletedAlertStateChangedNotifications;
- (void)_stopListeningToTelephonyNotifications;
- (void)_userWantsToComplyNow:(BOOL)a3;
- (void)checkPasscodeCompliance;
- (void)dealloc;
- (void)forceUserToChangePasscode;
@end

@implementation SBPasscodeController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[SBPasscodeController sharedInstance];
  }

  v3 = __sharedInstance;

  return v3;
}

void __38__SBPasscodeController_sharedInstance__block_invoke()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 isPasscodeNagDaemonEnabled];

  if ((v1 & 1) == 0)
  {
    v2 = objc_alloc_init(SBPasscodeController);
    v3 = __sharedInstance;
    __sharedInstance = v2;
  }
}

- (SBPasscodeController)init
{
  v10.receiver = self;
  v10.super_class = SBPasscodeController;
  v2 = [(SBPasscodeController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_restoreCompletedAlertStateChangedToken = 0;
    v2->_simplePasscodeType = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);

    v6 = dispatch_get_global_queue(17, 0);
    v7 = dispatch_queue_create_with_target_V2("com.apple.SpringBoard.PasscodeCompliance", v5, v6);
    passcodeComplianceQueue = v3->_passcodeComplianceQueue;
    v3->_passcodeComplianceQueue = v7;

    [(SBPasscodeController *)v3 _startListeningToManagedConfigurationNotification];
  }

  return v3;
}

- (void)dealloc
{
  if (self->_telephonyNotificationObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_telephonyNotificationObserver];

    telephonyNotificationObserver = self->_telephonyNotificationObserver;
    self->_telephonyNotificationObserver = 0;
  }

  [(SBPasscodeController *)self _stopListeningToManagedConfigurationNotification];
  v5.receiver = self;
  v5.super_class = SBPasscodeController;
  [(SBPasscodeController *)&v5 dealloc];
}

- (void)forceUserToChangePasscode
{
  if (!self->_passcodeAlertItem)
  {
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [v4 isPasscodeSet];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      previousPasscode = self->_previousPasscode;
      self->_previousPasscode = 0;

      v6 = 1;
    }

    self->_mode = v6;
    [(SBPasscodeController *)self _fetchAndSetUnlockScreenTypeForNewPasscode:v5 ^ 1u];
    mode = self->_mode;
    unlockScreenType = self->_unlockScreenType;

    [(SBPasscodeController *)self _presentPasscodeAlertItemWithMode:mode alertItemErrorString:0 unlockScreenType:unlockScreenType];
  }
}

- (void)_passwordEntered:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277D262A0] sharedConnection];
  mode = self->_mode;
  if (mode == 2)
  {
    if (![v5 length] || !-[NSString length](self->_newPasscode, "length") || !objc_msgSend(v5, "isEqualToString:", self->_newPasscode))
    {
LABEL_18:
      v13 = 0;
      goto LABEL_19;
    }

    previousPasscode = self->_previousPasscode;
    newPasscode = self->_newPasscode;
    v37 = 0;
    v15 = [v6 changePasscodeFrom:previousPasscode to:newPasscode outError:&v37];
    v16 = v37;
  }

  else
  {
    if (mode != 1)
    {
      if (!mode)
      {
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v8 = [objc_alloc(MEMORY[0x277D65DF0]) initForPasscode:v5 source:0];
        v9 = [SBApp authenticationController];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __41__SBPasscodeController__passwordEntered___block_invoke;
        v39[3] = &unk_2783A9718;
        v39[4] = &v40;
        v10 = [MEMORY[0x277D65FA8] responderWithSuccessHandler:v39 failureHandler:0 invalidHandler:0];
        [v9 processAuthenticationRequest:v8 responder:v10];

        if (*(v41 + 24) == 1)
        {
          v11 = [v5 copy];
          v12 = self->_previousPasscode;
          self->_previousPasscode = v11;

          _Block_object_dispose(&v40, 8);
          v13 = 0;
          goto LABEL_13;
        }

        _Block_object_dispose(&v40, 8);
      }

      goto LABEL_18;
    }

    objc_storeStrong(&self->_newPasscode, a3);
    if (![(NSString *)self->_newPasscode length])
    {
      v32 = MEMORY[0x277CCA9B8];
      v33 = MEMORY[0x277CBEAC0];
      v34 = [v6 localizedDescriptionOfDefaultNewPasscodeConstraints];
      v35 = [v33 dictionaryWithObjectsAndKeys:{v34, *MEMORY[0x277CCA450], 0}];
      v13 = [v32 errorWithDomain:@"EmptyPasscode" code:0 userInfo:v35];

LABEL_19:
      v23 = [MEMORY[0x277CCA8D8] mainBundle];
      v24 = v23;
      v25 = self->_mode;
      if (v25 == 2)
      {
        self->_mode = 1;
        if (![v5 isEqualToString:self->_newPasscode])
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = [v24 localizedStringForKey:@"CONFIRM_NEW_PASSCODE_MISMATCH" value:&stru_283094718 table:@"SpringBoard"];
          v30 = [MEMORY[0x277D262A0] sharedConnection];
          v31 = [v30 localizedDescriptionOfDefaultNewPasscodeConstraints];
          v26 = [v28 stringWithFormat:v29, v31];

LABEL_33:
          goto LABEL_35;
        }

        v26 = [v13 localizedDescription];
      }

      else
      {
        if (v25 != 1)
        {
          if (v25)
          {
            goto LABEL_38;
          }

          v26 = [v23 localizedStringForKey:@"PASSCODE_ALERT_INCORRECT_PASSCODE" value:&stru_283094718 table:@"SpringBoard"];
          v27 = 0;
LABEL_36:
          [(SBPasscodeController *)self _fetchAndSetUnlockScreenTypeForNewPasscode:v27];
          if (v26)
          {
            [(SBAlertItem *)self->_passcodeAlertItem deactivate];
            passcodeAlertItem = self->_passcodeAlertItem;
            self->_passcodeAlertItem = 0;

            [(SBPasscodeController *)self _presentPasscodeAlertItemWithMode:self->_mode alertItemErrorString:v26 unlockScreenType:self->_unlockScreenType];
LABEL_39:

            goto LABEL_40;
          }

LABEL_38:
          [(SBPasscodeAlertItem *)self->_passcodeAlertItem _setErrorString:0];
          goto LABEL_39;
        }

        if (!v13)
        {
          goto LABEL_31;
        }

        v26 = [v13 localizedDescription];
        if ([v26 isEqualToString:&stru_283094718])
        {

LABEL_31:
          if (!self->_unlockScreenType)
          {
            v26 = 0;
            goto LABEL_35;
          }

          v29 = [MEMORY[0x277D262A0] sharedConnection];
          v26 = [v29 localizedDescriptionOfDefaultNewPasscodeConstraints];
          goto LABEL_33;
        }

        if (!v26)
        {
          goto LABEL_31;
        }
      }

LABEL_35:
      v27 = 1;
      goto LABEL_36;
    }

    v14 = self->_newPasscode;
    v38 = 0;
    v15 = [v6 passcode:v14 meetsCurrentConstraintsOutError:&v38];
    v16 = v38;
  }

  v13 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  [(SBAlertItem *)self->_passcodeAlertItem deactivate];
  v19 = self->_passcodeAlertItem;
  self->_passcodeAlertItem = 0;

  v20 = self->_mode;
  if (!v20)
  {
    self->_mode = 1;
    [(SBPasscodeController *)self _fetchAndSetUnlockScreenTypeForNewPasscode:1];
    goto LABEL_43;
  }

  if (v20 == 1)
  {
    self->_mode = 2;
    goto LABEL_43;
  }

  if (v20 != 2)
  {
LABEL_43:
    [SBPasscodeController _presentPasscodeAlertItemWithMode:"_presentPasscodeAlertItemWithMode:alertItemErrorString:unlockScreenType:" alertItemErrorString:? unlockScreenType:?];
    goto LABEL_40;
  }

  [(SBPasscodeController *)self _stopListeningToRestoreCompletedAlertStateChangedNotifications];
  v21 = self->_previousPasscode;
  self->_previousPasscode = 0;

  v22 = self->_newPasscode;
  self->_newPasscode = 0;

LABEL_40:
}

- (void)_fetchAndSetUnlockScreenTypeForNewPasscode:(BOOL)a3
{
  v3 = a3;
  v6 = [MEMORY[0x277D262A0] sharedConnection];
  v7 = v6;
  p_simplePasscodeType = &self->_simplePasscodeType;
  if (v3)
  {
    v9 = [v6 defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:p_simplePasscodeType];
  }

  else
  {
    v9 = [v6 unlockScreenTypeWithOutSimplePasscodeType:p_simplePasscodeType];
  }

  self->_unlockScreenType = v9;

  if (!self->_unlockScreenType && self->_simplePasscodeType == -1)
  {
    [(SBPasscodeController *)a2 _fetchAndSetUnlockScreenTypeForNewPasscode:?];
  }
}

- (void)_presentPasscodeAlertItemWithMode:(int)a3 alertItemErrorString:(id)a4 unlockScreenType:(int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v8 = a4;
  if (self->_passcodeAlertItem)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "WARNING: Activating passcode compliance alert before existing compliance alert was dismissed", buf, 2u);
    }

    [(SBAlertItem *)self->_passcodeAlertItem deactivate];
    passcodeAlertItem = self->_passcodeAlertItem;
    self->_passcodeAlertItem = 0;
  }

  v11 = [MEMORY[0x277D262A0] sharedConnection];
  v12 = [v11 isPasscodeModificationAllowed];

  if (v12)
  {
    v13 = [[SBPasscodeAlertItem alloc] initWithPasscodeMode:v6 unlockScreenType:v5 simplePasscodeType:self->_simplePasscodeType];
    v14 = self->_passcodeAlertItem;
    self->_passcodeAlertItem = v13;

    [(SBPasscodeAlertItem *)self->_passcodeAlertItem _setErrorString:v8];
    v15 = +[SBAlertItemsController sharedInstance];
    [v15 activateAlertItem:self->_passcodeAlertItem];
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "NOTE: Skipping presentation of passcode alert item (passcode modification not allowed by MC)", v16, 2u);
    }
  }
}

- (void)_startListeningToManagedConfigurationNotification
{
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D25CA0];
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v5 = [v7 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_189];
  manageConfigurationEffectiveSettingsObserver = self->_manageConfigurationEffectiveSettingsObserver;
  self->_manageConfigurationEffectiveSettingsObserver = v5;
}

void __73__SBPasscodeController__startListeningToManagedConfigurationNotification__block_invoke()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 isPasscodeModificationAllowed];

  v2 = +[SBPasscodeController sharedInstance];
  v3 = v2;
  if (v1)
  {
    [v2 checkPasscodeCompliance];
  }

  else
  {
    [v2 _abort];
  }
}

- (void)_stopListeningToManagedConfigurationNotification
{
  if (self->_manageConfigurationEffectiveSettingsObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_manageConfigurationEffectiveSettingsObserver];

    manageConfigurationEffectiveSettingsObserver = self->_manageConfigurationEffectiveSettingsObserver;
    self->_manageConfigurationEffectiveSettingsObserver = 0;
  }
}

- (void)_userWantsToComplyNow:(BOOL)a3
{
  v3 = a3;
  complianceAlertItem = self->_complianceAlertItem;
  self->_complianceAlertItem = 0;

  if (v3)
  {

    [(SBPasscodeController *)self forceUserToChangePasscode];
  }
}

- (void)_abort
{
  [(SBAlertItem *)self->_complianceAlertItem deactivate];
  complianceAlertItem = self->_complianceAlertItem;
  self->_complianceAlertItem = 0;

  [(SBAlertItem *)self->_passcodeAlertItem deactivate];
  passcodeAlertItem = self->_passcodeAlertItem;
  self->_passcodeAlertItem = 0;

  [(SBPasscodeController *)self _stopListeningToTelephonyNotifications];
  [(SBPasscodeController *)self _stopListeningToRestoreCompletedAlertStateChangedNotifications];
  self->_delayedComplianceAlertUntilAfterRestoreCompletedAlert = 0;
}

- (void)_startListeningToTelephonyNotifications
{
  v8 = +[SBTelephonyManager sharedTelephonyManager];
  if ([v8 hasCellularTelephony])
  {
    telephonyNotificationObserver = self->_telephonyNotificationObserver;

    if (telephonyNotificationObserver)
    {
      return;
    }

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277D679E0];
    v5 = [MEMORY[0x277CCABD8] mainQueue];
    v6 = [v8 addObserverForName:v4 object:0 queue:v5 usingBlock:&__block_literal_global_191];
    v7 = self->_telephonyNotificationObserver;
    self->_telephonyNotificationObserver = v6;
  }
}

void __63__SBPasscodeController__startListeningToTelephonyNotifications__block_invoke()
{
  v0 = +[SBTelephonyManager sharedTelephonyManager];
  v1 = [v0 inCall];

  v2 = +[SBPasscodeController sharedInstance];
  v3 = v2;
  if (v1)
  {
    [v2 _abort];
  }

  else
  {
    [v2 _didEndCall];
  }
}

- (void)_stopListeningToTelephonyNotifications
{
  if (self->_telephonyNotificationObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_telephonyNotificationObserver];

    telephonyNotificationObserver = self->_telephonyNotificationObserver;
    self->_telephonyNotificationObserver = 0;
  }
}

- (void)_startListeningToRestoreCompletedAlertStateChangedNotifications
{
  p_restoreCompletedAlertStateChangedToken = &self->_restoreCompletedAlertStateChangedToken;
  if (!self->_restoreCompletedAlertStateChangedToken)
  {
    v4 = [*MEMORY[0x277D28A98] UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __87__SBPasscodeController__startListeningToRestoreCompletedAlertStateChangedNotifications__block_invoke;
    handler[3] = &unk_2783A95E8;
    handler[4] = self;
    notify_register_dispatch(v4, p_restoreCompletedAlertStateChangedToken, MEMORY[0x277D85CD0], handler);
  }
}

uint64_t __87__SBPasscodeController__startListeningToRestoreCompletedAlertStateChangedNotifications__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 84) == 1)
  {
    result = [result _isRestoreCompletedAlertActive];
    if ((result & 1) == 0)
    {
      v3 = SBLogCommon();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Activating passcode compliance alert now that the restore completed alert is inactive", v4, 2u);
      }

      *(*(a1 + 32) + 84) = 0;
      return [*(a1 + 32) _activateComplianceAlert];
    }
  }

  return result;
}

- (void)_stopListeningToRestoreCompletedAlertStateChangedNotifications
{
  restoreCompletedAlertStateChangedToken = self->_restoreCompletedAlertStateChangedToken;
  if (restoreCompletedAlertStateChangedToken)
  {
    notify_cancel(restoreCompletedAlertStateChangedToken);
    self->_restoreCompletedAlertStateChangedToken = 0;
  }
}

- (void)_activateComplianceAlert
{
  v3 = +[SBAlertItemsController sharedInstance];
  [v3 activateAlertItem:self->_complianceAlertItem];

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [SBApp authenticationController];
  v6 = [v5 lastRevokedAuthenticationDate];
  [v4 notifyUserHasSeenComplianceMessageWithLastLockDate:v6];

  [(SBPasscodeController *)self _stopListeningToRestoreCompletedAlertStateChangedNotifications];
}

- (void)checkPasscodeCompliance
{
  passcodeAlertItem = self->_passcodeAlertItem;
  if (passcodeAlertItem)
  {
    [(SBAlertItem *)passcodeAlertItem deactivate];
    v4 = self->_passcodeAlertItem;
    self->_passcodeAlertItem = 0;
  }

  complianceAlertItem = self->_complianceAlertItem;
  if (complianceAlertItem)
  {
    [(SBAlertItem *)complianceAlertItem deactivate];
    v6 = self->_complianceAlertItem;
    self->_complianceAlertItem = 0;
  }

  [(SBPasscodeController *)self _startListeningToTelephonyNotifications];
  self->_delayedComplianceAlertUntilAfterRestoreCompletedAlert = 0;
  [(SBPasscodeController *)self _startListeningToRestoreCompletedAlertStateChangedNotifications];
  v7 = [SBApp authenticationController];
  v8 = [v7 lastRevokedAuthenticationDate];

  passcodeComplianceQueue = self->_passcodeComplianceQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SBPasscodeController_checkPasscodeCompliance__block_invoke;
  v11[3] = &unk_2783A92D8;
  v12 = v8;
  v13 = self;
  v10 = v8;
  dispatch_async(passcodeComplianceQueue, v11);
}

void __47__SBPasscodeController_checkPasscodeCompliance__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SBPasscodeController_checkPasscodeCompliance__block_invoke_2;
  v4[3] = &unk_2783B21B8;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v2 getPasscodeComplianceWarningLastLockDate:v3 completionBlock:v4];
}

void __47__SBPasscodeController_checkPasscodeCompliance__block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__SBPasscodeController_checkPasscodeCompliance__block_invoke_3;
  v12[3] = &unk_2783AAA70;
  v9 = *(a1 + 32);
  v15 = a2;
  v12[4] = v9;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __47__SBPasscodeController_checkPasscodeCompliance__block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    return;
  }

  v2 = *(a1 + 56);
  if (v2 == 3)
  {
    v11 = [SBPasscodeComplianceAlertItem alloc];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"PASSCODE_REMINDER_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = v14;
    v15 = @"PASSCODE_REMINDER_CANCEL";
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v11 = [SBPasscodeComplianceAlertItem alloc];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = v14;
    v15 = @"NON_COMPLIANT_PASSCODE_LATER";
LABEL_9:
    v16 = [v14 localizedStringForKey:v15 value:&stru_283094718 table:@"SpringBoard"];
    v17 = [(SBPasscodeComplianceAlertItem *)v11 initWithTitle:v12 message:v13 continueButtonTitle:v7 cancelButtonTitle:v16];
    v18 = *(a1 + 32);
    v19 = *(v18 + 48);
    *(v18 + 48) = v17;

    goto LABEL_10;
  }

  if (v2 != 1)
  {
    goto LABEL_11;
  }

  v3 = [SBPasscodeComplianceAlertItem alloc];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"NON_COMPLIANT_PASSCODE_CONTINUE" value:&stru_283094718 table:@"SpringBoard"];
  v8 = [(SBPasscodeComplianceAlertItem *)v3 initWithTitle:v4 message:v5 continueButtonTitle:v7 cancelButtonTitle:0];
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = v8;
LABEL_10:

LABEL_11:
  v20 = *(a1 + 32);
  if (v20[6])
  {
    if ([v20 _isRestoreCompletedAlertActive])
    {
      v21 = SBLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Dealying activating passcode compliance alert until after restore completed alert", v23, 2u);
      }

      *(*(a1 + 32) + 84) = 1;
    }

    else
    {
      v22 = *(a1 + 32);

      [v22 _activateComplianceAlert];
    }
  }
}

- (void)_fetchAndSetUnlockScreenTypeForNewPasscode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPasscodeController.m" lineNumber:467 description:@"Cannot be simple and have a non-simple passcode type."];
}

@end