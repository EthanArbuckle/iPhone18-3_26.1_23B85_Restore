@interface DevicePINController
+ (BOOL)settingEnabled;
- (BOOL)_shouldCheckForWeakness;
- (BOOL)_shouldShowOptionsButton;
- (BOOL)_useSEPLockInfo;
- (BOOL)attemptValidationWithPIN:(id)n;
- (BOOL)isCreatingPasscode;
- (BOOL)isNumericPIN;
- (BOOL)pinIsAcceptable:(id)acceptable outError:(id *)error;
- (BOOL)requiresKeyboard;
- (BOOL)simplePIN;
- (BOOL)validatePIN:(id)n;
- (CGSize)overallContentSizeForViewInPopover;
- (DevicePINController)init;
- (DevicePINControllerDelegate)pinDelegate;
- (double)_secondsToBlockForFailedAttempts:(int64_t)attempts;
- (double)blockedTimeRemaining;
- (double)unblockTime;
- (id)_createAndShowAnimatedNavBarSpinner;
- (id)_sepLockInfo;
- (id)localizedPINStringForKey:(id)key;
- (id)passcodeOptionsAlertController;
- (id)pinInstructionsPrompt;
- (id)stringsBundle;
- (id)titleString;
- (int)_getScreenType;
- (int)_simplePasscodeType;
- (int)defaultPinLength;
- (int)pinLength;
- (int64_t)numberOfFailedAttempts;
- (void)_adjustUnblockTime;
- (void)_clearBlockedState;
- (void)_dismiss;
- (void)_invalidateSEPLockInfo;
- (void)_preflightPasswordForWeakness:(id)weakness withCompletion:(id)completion;
- (void)_removePinWithOldPassword:(id)password;
- (void)_rereadBlockedState;
- (void)_setNumberOfFailedAttempts:(int64_t)attempts;
- (void)_setPINPaneToSimple:(BOOL)simple simpleLength:(int)length numeric:(BOOL)numeric requiresKeyboard:(int)keyboard;
- (void)_setUnblockTime:(double)time;
- (void)_showFailedAttempts;
- (void)_showPINConfirmationError;
- (void)_showUnacceptablePINError:(id)error password:(id)password;
- (void)_slidePasscodeFieldLeft:(BOOL)left;
- (void)_updateErrorTextAndFailureCount:(BOOL)count;
- (void)_updatePINButtons;
- (void)_updateUI;
- (void)adjustButtonsForPasswordLength:(unint64_t)length;
- (void)cancelButtonTapped;
- (void)deactivateKeypad;
- (void)dealloc;
- (void)loadView;
- (void)optionsTapped;
- (void)pinEntered:(id)entered;
- (void)setMode:(int)mode;
- (void)setNumericPIN:(BOOL)n;
- (void)setPIN:(id)n completion:(id)completion;
- (void)setPane:(id)pane;
- (void)setPinBlocked:(BOOL)blocked;
- (void)setPinLength:(int)length;
- (void)setRequiresKeyboard:(BOOL)keyboard;
- (void)setSimplePIN:(BOOL)n;
- (void)setSpecifier:(id)specifier;
- (void)showPasscodeOptions:(id)options;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willUnlock;
@end

@implementation DevicePINController

+ (BOOL)settingEnabled
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  isPasscodeSet = [mEMORY[0x1E69ADFB8] isPasscodeSet];

  return isPasscodeSet;
}

- (void)willUnlock
{
  if ([(DevicePINController *)self useProgressiveDelays])
  {
    [(DevicePINController *)self _rereadBlockedState];

    [(DevicePINController *)self _updateUI];
  }
}

- (DevicePINController)init
{
  v5.receiver = self;
  v5.super_class = DevicePINController;
  v2 = [(PSViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    if ([(DevicePINController *)v2 useProgressiveDelays])
    {
      CFPreferencesAppSynchronize([(DevicePINController *)v3 defaultsID]);
    }

    v3->_mode = 1000;
    v3->_shouldDismissWhenDone = 1;
  }

  return v3;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v7.receiver = self;
  v7.super_class = DevicePINController;
  [(PSViewController *)&v7 setSpecifier:specifierCopy];
  WeakRetained = objc_loadWeakRetained(&self->_pinDelegate);

  if (!WeakRetained)
  {
    v6 = [specifierCopy propertyForKey:@"PINControllerDelegate"];
    objc_storeWeak(&self->_pinDelegate, v6);

    [specifierCopy removePropertyForKey:@"PINControllerDelegate"];
  }

  [(DevicePINController *)self overallContentSizeForViewInPopover];
  [(DevicePINController *)self setPreferredContentSize:?];
}

- (void)setMode:(int)mode
{
  self->_mode = mode;
  title = [(DevicePINController *)self title];
  [(DevicePINController *)self setTitle:title];

  pinLength = self->_pinLength;
  self->_pinLength = 0;

  numericPIN = self->_numericPIN;
  self->_numericPIN = 0;

  requiresKeyboard = self->_requiresKeyboard;
  self->_requiresKeyboard = 0;

  simplePIN = self->_simplePIN;
  self->_simplePIN = 0;
}

- (CGSize)overallContentSizeForViewInPopover
{
  requiresKeyboard = [(DevicePINController *)self requiresKeyboard];
  v3 = 264.0;
  if (!requiresKeyboard)
  {
    v3 = 480.0;
  }

  v4 = 320.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)_dismiss
{
  self->_hasBeenDismissed = 1;
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard setUserInteractionEnabled:1];

  [(PSEditingPane *)self->super._pane dismissKeypad];
  if (self->_shouldDismissWhenDone)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._parentController);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__DevicePINController__dismiss__block_invoke;
    v5[3] = &unk_1E71DBE20;
    v5[4] = self;
    [WeakRetained dismissWithCompletion:v5];
  }
}

void __31__DevicePINController__dismiss__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1096));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1096));
    [v4 devicePINControllerDidDismissPINPane:*(a1 + 32)];
  }
}

- (id)stringsBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (id)localizedPINStringForKey:(id)key
{
  keyCopy = key;
  stringsBundle = [(DevicePINController *)self stringsBundle];
  stringsTable = [(DevicePINController *)self stringsTable];
  v7 = [stringsBundle localizedStringForKey:keyCopy value:&stru_1EFE45030 table:stringsTable];

  if (v7 == keyCopy)
  {
    v8 = PS_LocalizedStringForPINEntry(keyCopy);

    v7 = v8;
  }

  return v7;
}

- (void)dealloc
{
  [(PSEditingPane *)self->super._pane dismissKeypad];
  v3.receiver = self;
  v3.super_class = DevicePINController;
  [(PSDetailController *)&v3 dealloc];
}

- (BOOL)pinIsAcceptable:(id)acceptable outError:(id *)error
{
  acceptableCopy = acceptable;
  if (error)
  {
    *error = 0;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v8 = [mEMORY[0x1E69ADFB8] passcode:acceptableCopy meetsCurrentConstraintsOutError:error];

  if (!v8)
  {
    LOBYTE(v16) = 0;
    goto LABEL_10;
  }

  pinDelegate = [(DevicePINController *)self pinDelegate];
  if (([pinDelegate conformsToProtocol:&unk_1EFE6C730] & 1) == 0)
  {

    goto LABEL_9;
  }

  pinDelegate2 = [(DevicePINController *)self pinDelegate];
  specifier = [pinDelegate2 specifier];
  v12 = [specifier objectForKeyedSubscript:@"passcode"];

  if (!v12)
  {
LABEL_9:
    v16 = ![(DevicePINController *)self validatePIN:acceptableCopy];
    goto LABEL_10;
  }

  pinDelegate3 = [(DevicePINController *)self pinDelegate];
  specifier2 = [pinDelegate3 specifier];
  v15 = [specifier2 objectForKeyedSubscript:@"passcode"];
  v16 = [v15 isEqualToString:acceptableCopy] ^ 1;

LABEL_10:
  return v16;
}

- (void)setPIN:(id)n completion:(id)completion
{
  nCopy = n;
  completionCopy = completion;
  _createAndShowAnimatedNavBarSpinner = [(DevicePINController *)self _createAndShowAnimatedNavBarSpinner];
  self->_showingSpinner = 1;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"com.apple.Preferences.passcode" expirationHandler:0];

  mode = [(DevicePINController *)self mode];
  v12 = self->_oldPassword;
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__DevicePINController_setPIN_completion___block_invoke;
  block[3] = &unk_1E71DE7C0;
  v25 = mode;
  v19 = v12;
  v20 = nCopy;
  v21 = _createAndShowAnimatedNavBarSpinner;
  selfCopy = self;
  v23 = completionCopy;
  v24 = v10;
  v14 = completionCopy;
  v15 = _createAndShowAnimatedNavBarSpinner;
  v16 = nCopy;
  v17 = v12;
  dispatch_async(v13, block);
}

void __41__DevicePINController_setPIN_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = *(a1 + 80);
  v4 = _PSLoggingFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "Removing passcode...", buf, 2u);
    }

    v6 = *(a1 + 32);
    v27 = 0;
    v8 = &v27;
    v9 = &v27;
    v10 = v2;
    v7 = 0;
  }

  else if (v3 == 2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "Changing passcode...", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v28 = 0;
    v8 = &v28;
    v9 = &v28;
    v10 = v2;
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "Setting passcode...", buf, 2u);
    }

    v7 = *(a1 + 40);
    v26 = 0;
    v8 = &v26;
    v9 = &v26;
    v10 = v2;
    v6 = 0;
  }

  v11 = [v10 changePasscodeFrom:v6 to:v7 outError:v9];
  v12 = *v8;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__DevicePINController_setPIN_completion___block_invoke_119;
  v17[3] = &unk_1E71DE798;
  v25 = v11;
  v23 = *(a1 + 72);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v18 = v13;
  v19 = v14;
  v22 = v15;
  v20 = v12;
  v24 = *(a1 + 80);
  v21 = *(a1 + 40);
  v16 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

void __41__DevicePINController_setPIN_completion___block_invoke_119(uint64_t a1)
{
  if (*(a1 + 84) == 1 && ([MEMORY[0x1E69DCBF0] sharedInputModeController], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "saveDeviceUnlockPasscodeInputModes"), v2, objc_msgSend(MEMORY[0x1E69DC668], "sharedApplication"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "endBackgroundTask:", *(a1 + 72)), v3, (*(a1 + 84) & 1) != 0) && *(a1 + 80) != 1)
  {
    v4 = +[PSKeychainSyncManager sharedManager];
    v5 = *(a1 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__DevicePINController_setPIN_completion___block_invoke_2;
    v12[3] = &unk_1E71DE770;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13 = v7;
    v14 = v8;
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v15 = v9;
    v16 = v10;
    [v4 promptForDevicePasscodeChangeToPasscode:v5 overController:v6 completion:v12];
  }

  else
  {
    [*(a1 + 32) stopAnimating];
    *(*(a1 + 40) + 1169) = 0;
    (*(*(a1 + 64) + 16))();
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    [v11 endBackgroundTask:*(a1 + 72)];
  }
}

void __41__DevicePINController_setPIN_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__DevicePINController_setPIN_completion___block_invoke_3;
  v10[3] = &unk_1E71DE748;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v16 = a2;
  v13 = v5;
  v14 = v8;
  v15 = *(a1 + 56);
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __41__DevicePINController_setPIN_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) stopAnimating];
  *(*(a1 + 40) + 1169) = 0;
  (*(*(a1 + 56) + 16))();
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endBackgroundTask:*(a1 + 64)];
}

- (id)_createAndShowAnimatedNavBarSpinner
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v3];
  navigationItem = [(DevicePINController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  [v3 startAnimating];

  return v3;
}

- (BOOL)validatePIN:(id)n
{
  v3 = MEMORY[0x1E69ADFB8];
  nCopy = n;
  sharedConnection = [v3 sharedConnection];
  if ([sharedConnection isPasscodeSet])
  {
    v8 = 0;
    v6 = [sharedConnection unlockDeviceWithPasscode:nCopy outError:&v8];

    nCopy = v8;
  }

  else
  {
    v6 = [nCopy isEqualToString:&stru_1EFE45030];
  }

  return v6;
}

- (int)_getScreenType
{
  if ([(DevicePINController *)self isCreatingPasscode])
  {
    v6 = 0;
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    unlockScreenType = [mEMORY[0x1E69ADFB8] defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v6];
  }

  else
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    unlockScreenType = [mEMORY[0x1E69ADFB8] unlockScreenType];
  }

  v4 = unlockScreenType;

  return v4;
}

- (int)_simplePasscodeType
{
  v6 = 0;
  isCreatingPasscode = [(DevicePINController *)self isCreatingPasscode];
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = mEMORY[0x1E69ADFB8];
  if (isCreatingPasscode)
  {
    [mEMORY[0x1E69ADFB8] defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v6];
  }

  else
  {
    [mEMORY[0x1E69ADFB8] unlockScreenTypeWithOutSimplePasscodeType:&v6];
  }

  return v6;
}

- (void)setRequiresKeyboard:(BOOL)keyboard
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:keyboard];
  requiresKeyboard = self->_requiresKeyboard;
  self->_requiresKeyboard = v4;
}

- (void)setPinLength:(int)length
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&length];
  pinLength = self->_pinLength;
  self->_pinLength = v4;
}

- (void)setSimplePIN:(BOOL)n
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:n];
  simplePIN = self->_simplePIN;
  self->_simplePIN = v4;
}

- (void)setNumericPIN:(BOOL)n
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:n];
  numericPIN = self->_numericPIN;
  self->_numericPIN = v4;
}

- (BOOL)requiresKeyboard
{
  requiresKeyboard = self->_requiresKeyboard;
  if (requiresKeyboard)
  {

    return [(NSNumber *)requiresKeyboard BOOLValue];
  }

  else if (PSUsePadStylePIN())
  {
    if (self->_mode == 1000)
    {
      v5 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"mode"];

      if (v5)
      {
        v6 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"mode"];
        self->_mode = [v6 intValue];

        title = [(DevicePINController *)self title];
        [(DevicePINController *)self setTitle:title];
      }
    }

    return ![(DevicePINController *)self isNumericPIN];
  }

  else
  {
    return 1;
  }
}

- (BOOL)simplePIN
{
  if (!self->_simplePIN)
  {
    return [(DevicePINController *)self _getScreenType:v2]== 0;
  }

  simplePIN = self->_simplePIN;

  return [(NSNumber *)simplePIN BOOLValue];
}

- (int)defaultPinLength
{
  v2 = 6;
  if ((PSSupportsMesa() & 1) == 0)
  {
    if (PSIsPearlAvailable())
    {
      return 6;
    }

    else
    {
      return 4;
    }
  }

  return v2;
}

- (int)pinLength
{
  pinLength = self->_pinLength;
  if (pinLength)
  {

    return [(NSNumber *)pinLength intValue];
  }

  else if ([(DevicePINController *)self _simplePasscodeType]== 1)
  {
    return 6;
  }

  else if ([(DevicePINController *)self isCreatingPasscode])
  {

    return [(DevicePINController *)self defaultPinLength];
  }

  else
  {
    return 4;
  }
}

- (BOOL)isCreatingPasscode
{
  mode = self->_mode;
  if (!mode)
  {
    return 1;
  }

  if (mode == 2)
  {
    return self->_substate > 1;
  }

  return 0;
}

- (BOOL)isNumericPIN
{
  if (!self->_numericPIN)
  {
    return [(DevicePINController *)self _getScreenType:v2]!= 2;
  }

  numericPIN = self->_numericPIN;

  return [(NSNumber *)numericPIN BOOLValue];
}

- (BOOL)_useSEPLockInfo
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__DevicePINController__useSEPLockInfo__block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  if (self->_sepOnceToken != -1)
  {
    dispatch_once(&self->_sepOnceToken, block);
  }

  return self->_useSEPLockInfo;
}

void __38__DevicePINController__useSEPLockInfo__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) useProgressiveDelays] && objc_msgSend(objc_msgSend(*(a1 + 32), "defaultsID"), "isEqualToString:", @"com.apple.springboard") && objc_msgSend(objc_msgSend(*(a1 + 32), "failedAttemptsKey"), "isEqualToString:", @"SBDeviceLockFailedAttempts") && objc_msgSend(objc_msgSend(*(a1 + 32), "blockTimeIntervalKey"), "isEqualToString:", @"SBDeviceLockBlockTimeIntervalSinceReferenceDate") && objc_msgSend(objc_msgSend(*(a1 + 32), "blockedStateKey"), "isEqualToString:", @"SBDeviceLockBlocked") && MGGetBoolAnswer())
  {
    v2 = [*(a1 + 32) _sepLockInfo];

    if (v2)
    {
      *(*(a1 + 32) + 1168) = 1;
    }
  }
}

- (id)_sepLockInfo
{
  sepLockInfo = self->_sepLockInfo;
  if (!sepLockInfo)
  {
    v4 = MKBGetDeviceLockStateInfo();
    v5 = self->_sepLockInfo;
    self->_sepLockInfo = v4;

    sepLockInfo = self->_sepLockInfo;
  }

  return sepLockInfo;
}

- (void)_invalidateSEPLockInfo
{
  sepLockInfo = self->_sepLockInfo;
  self->_sepLockInfo = 0;
}

- (void)_rereadBlockedState
{
  if ([(DevicePINController *)self _useSEPLockInfo])
  {

    [(DevicePINController *)self _invalidateSEPLockInfo];
  }

  else
  {
    defaultsID = [(DevicePINController *)self defaultsID];

    CFPreferencesAppSynchronize(defaultsID);
  }
}

- (int64_t)numberOfFailedAttempts
{
  if ([(DevicePINController *)self _useSEPLockInfo])
  {
    _sepLockInfo = [(DevicePINController *)self _sepLockInfo];
    v4 = [_sepLockInfo objectForKeyedSubscript:*MEMORY[0x1E69B1A38]];

    longValue = [v4 longValue];
    return longValue;
  }

  else
  {
    failedAttemptsKey = [(DevicePINController *)self failedAttemptsKey];
    defaultsID = [(DevicePINController *)self defaultsID];

    return CFPreferencesGetAppIntegerValue(failedAttemptsKey, defaultsID, 0);
  }
}

- (void)_setNumberOfFailedAttempts:(int64_t)attempts
{
  if ([(DevicePINController *)self _useSEPLockInfo])
  {

    [(DevicePINController *)self _invalidateSEPLockInfo];
  }

  else
  {
    defaultsID = [(DevicePINController *)self defaultsID];
    value = [MEMORY[0x1E696AD98] numberWithLong:attempts];
    CFPreferencesSetAppValue([(DevicePINController *)self failedAttemptsKey], value, defaultsID);
    CFPreferencesAppSynchronize(defaultsID);
  }
}

- (void)_clearBlockedState
{
  if ([(DevicePINController *)self _useSEPLockInfo])
  {

    [(DevicePINController *)self _invalidateSEPLockInfo];
  }

  else
  {
    defaultsID = [(DevicePINController *)self defaultsID];
    CFPreferencesSetAppValue([(DevicePINController *)self failedAttemptsKey], 0, defaultsID);
    CFPreferencesSetAppValue([(DevicePINController *)self blockTimeIntervalKey], 0, defaultsID);
    blockedStateKey = [(DevicePINController *)self blockedStateKey];
    CFPreferencesSetAppValue(blockedStateKey, *MEMORY[0x1E695E4C0], defaultsID);

    CFPreferencesAppSynchronize(defaultsID);
  }
}

- (double)unblockTime
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v5 = v4;

  if (self->_useSEPLockInfo)
  {
    [(DevicePINController *)self blockedTimeRemaining];
    if (v6 > 0.0)
    {
      v7 = v6;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      return v7 + v8;
    }
  }

  else
  {
    v9 = CFPreferencesCopyAppValue([(DevicePINController *)self blockTimeIntervalKey], [(DevicePINController *)self defaultsID]);
    v10 = v9;
    if (v9)
    {
      [v9 doubleValue];
      v5 = v11;
    }
  }

  return v5;
}

- (double)blockedTimeRemaining
{
  if ([(DevicePINController *)self _useSEPLockInfo])
  {
    [(DevicePINController *)self _invalidateSEPLockInfo];
    _sepLockInfo = [(DevicePINController *)self _sepLockInfo];
    v4 = [_sepLockInfo objectForKeyedSubscript:*MEMORY[0x1E69B1A28]];

    [v4 doubleValue];
    v6 = v5;

    return v6;
  }

  else
  {
    useProgressiveDelays = [(DevicePINController *)self useProgressiveDelays];
    result = 0.0;
    if (useProgressiveDelays)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v10 = v9;
      [(DevicePINController *)self unblockTime];
      v12 = v11 - v10;
      v13 = v10 < v11;
      result = 0.0;
      if (v13)
      {
        return v12;
      }
    }
  }

  return result;
}

- (void)_setUnblockTime:(double)time
{
  defaultsID = [(DevicePINController *)self defaultsID];
  value = [MEMORY[0x1E696AD98] numberWithDouble:time];
  CFPreferencesSetAppValue([(DevicePINController *)self blockTimeIntervalKey], value, defaultsID);
  CFPreferencesAppSynchronize(defaultsID);
}

- (double)_secondsToBlockForFailedAttempts:(int64_t)attempts
{
  result = 0.0;
  v4 = attempts - 6;
  if (attempts >= 6)
  {
    if (v4 > 2)
    {
      return 3600.0;
    }

    else
    {
      return dbl_18B103D60[v4];
    }
  }

  return result;
}

- (void)_adjustUnblockTime
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v9 = [mEMORY[0x1E69ADFB8] valueRestrictionForFeature:*MEMORY[0x1E69ADED8]];

  if (v9)
  {
    longValue = [v9 longValue];
  }

  else
  {
    longValue = -1;
  }

  numberOfFailedAttempts = [(DevicePINController *)self numberOfFailedAttempts];
  [(DevicePINController *)self _setNumberOfFailedAttempts:numberOfFailedAttempts + 1];
  if (longValue < 0 || numberOfFailedAttempts < longValue)
  {
    [(DevicePINController *)self _secondsToBlockForFailedAttempts:numberOfFailedAttempts + 1];
    v6 = v7;
    if (v7 == 0.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 3600.0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(DevicePINController *)self _setUnblockTime:v6 + v8];
LABEL_9:
}

- (BOOL)attemptValidationWithPIN:(id)n
{
  v4 = [(DevicePINController *)self validatePIN:n];
  if (v4)
  {
    [(DevicePINController *)self _clearBlockedState];
  }

  else if (![(DevicePINController *)self _useSEPLockInfo]&& [(DevicePINController *)self useProgressiveDelays])
  {
    [(DevicePINController *)self _adjustUnblockTime];
  }

  return v4;
}

- (void)_showFailedAttempts
{
  mode = self->_mode;
  if (mode == 2)
  {
    v4 = self->_substate == 3;
  }

  else
  {
    if (!mode)
    {
      [(DevicePINController *)self useProgressiveDelays];
      goto LABEL_9;
    }

    v4 = 0;
  }

  useProgressiveDelays = [(DevicePINController *)self useProgressiveDelays];
  if (!v4 && useProgressiveDelays)
  {
    [(PSEditingPane *)self->super._pane showFailedAttempts:[(DevicePINController *)self numberOfFailedAttempts]];
  }

LABEL_9:
  if ([(DevicePINController *)self isBlocked])
  {

    [(DevicePINController *)self performSelector:sel__updateUI withObject:0 afterDelay:30.0];
  }
}

- (void)_updateErrorTextAndFailureCount:(BOOL)count
{
  isBlocked = [(DevicePINController *)self isBlocked];
  if (!self->_error1)
  {
    v5 = [(DevicePINController *)self localizedPINStringForKey:@"WRONG_1"];
    error1 = self->_error1;
    self->_error1 = v5;
  }

  HIDWORD(v7) = 0;
  if (!self->_error2)
  {
    v21 = [(DevicePINController *)self localizedPINStringForKey:@"WRONG_2"];
    error2 = self->_error2;
    self->_error2 = v21;

    if (isBlocked)
    {
      goto LABEL_5;
    }

LABEL_13:
    v23 = self->_error2;
    [DevicePINController cancelPreviousPerformRequestsWithTarget:self];
    goto LABEL_14;
  }

  if (!isBlocked)
  {
    goto LABEL_13;
  }

LABEL_5:
  [(DevicePINController *)self unblockTime];
  v9 = v8;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v11 = (v9 - v10) / 60.0;
  v12 = v11;
  LODWORD(v7) = vcvtps_s32_f32(v12);
  v13 = (v11 - (v7 - 1)) * 60.0;
  v14 = @"MULTIPLE_MINUTES_TO_UNBLOCK";
  if (v7 <= 1)
  {
    v14 = 0;
  }

  if (v7 == 1)
  {
    v15 = @"ONE_MINUTE_TO_UNBLOCK";
  }

  else
  {
    v15 = v14;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(DevicePINController *)self localizedPINStringForKey:v15];
  v18 = MEMORY[0x1E696ADA0];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v20 = [v18 localizedStringFromNumber:v19 numberStyle:1];
  v23 = [v16 stringWithFormat:v17, v20];

  [DevicePINController cancelPreviousPerformRequestsWithTarget:self];
  if (v13 > 0.0)
  {
    [(DevicePINController *)self performSelector:sel__updateUI withObject:0 afterDelay:v13];
  }

LABEL_14:
  [PSEditingPane showError:"showError:error:isBlocked:animate:" error:self->_error1 isBlocked:? animate:?];
  if ([(DevicePINController *)self numberOfFailedAttempts]< 1)
  {
    [(PSEditingPane *)self->super._pane hideFailedAttempts];
  }

  else
  {
    [(DevicePINController *)self _showFailedAttempts];
  }
}

- (void)_updateUI
{
  [(DevicePINController *)self _updateErrorTextAndFailureCount:1];
  if (![(DevicePINController *)self isBlocked])
  {
    pane = self->super._pane;

    [(PSEditingPane *)pane hideError];
  }
}

- (void)_showUnacceptablePINError:(id)error password:(id)password
{
  errorCopy = error;
  if ([(DevicePINController *)self validatePIN:password])
  {
    localizedDescription = [(DevicePINController *)self localizedPINStringForKey:@"CANNOT_REUSE_PASSCODE"];
LABEL_5:
    localizedDescriptionOfCurrentPasscodeConstraints = localizedDescription;
    goto LABEL_7;
  }

  domain = [errorCopy domain];
  v8 = [domain isEqualToString:*MEMORY[0x1E69ADFA8]];

  if (v8)
  {
    localizedDescription = [errorCopy localizedDescription];
    goto LABEL_5;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  localizedDescriptionOfCurrentPasscodeConstraints = [mEMORY[0x1E69ADFB8] localizedDescriptionOfCurrentPasscodeConstraints];

LABEL_7:
  [(PSEditingPane *)self->super._pane setPINPolicyString:localizedDescriptionOfCurrentPasscodeConstraints visible:1];
}

- (void)_showPINConfirmationError
{
  v3 = [(DevicePINController *)self localizedPINStringForKey:@"CONFIRMATION_FAILURE"];
  [(PSEditingPane *)self->super._pane setPINPolicyString:v3 visible:1];
}

- (void)optionsTapped
{
  pinView = [(PSEditingPane *)self->super._pane pinView];
  [pinView optionsButtonTapped];
}

- (void)setPinBlocked:(BOOL)blocked
{
  blockedCopy = blocked;
  pinView = [(PSEditingPane *)self->super._pane pinView];
  [pinView setBlocked:blockedCopy];
}

- (void)deactivateKeypad
{
  [(PSEditingPane *)self->super._pane resignFirstResponder];
  [(PSEditingPane *)self->super._pane dismissKeypad];

  [(DevicePINController *)self setPinBlocked:1];
}

- (void)_updatePINButtons
{
  if (self->_hidesNavigationButtons)
  {
    return;
  }

  v23 = self->super._pane;
  password = [(PSEditingPane *)v23 password];
  v5 = [password length];

  navigationItem = [(DevicePINController *)self navigationItem];
  if (!self->_cancelButton && !self->_hidesCancelButton)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
    cancelButton = self->_cancelButton;
    self->_cancelButton = v7;
  }

  if ([(DevicePINController *)self simplePIN])
  {
    if ([(DevicePINController *)self showSimplePINCancelButtonOnLeft])
    {
      [navigationItem setLeftBarButtonItem:self->_cancelButton];
      v9 = navigationItem;
      v10 = 0;
    }

    else
    {
      [navigationItem setLeftBarButtonItem:0];
      v10 = self->_cancelButton;
      v9 = navigationItem;
    }

    [v9 setRightBarButtonItem:v10];
    goto LABEL_24;
  }

  mode = self->_mode;
  if (mode > 1)
  {
    if (mode == 2)
    {
      mode = self->_substate;
    }

    if (mode == 3)
    {
      goto LABEL_18;
    }

LABEL_11:
    p_nextButton = &self->_nextButton;
    nextButton = self->_nextButton;
    if (!nextButton)
    {
      v14 = objc_alloc(MEMORY[0x1E69DC708]);
      v15 = PS_LocalizedStringForPINEntry(@"NEXT");
      pane = self->super._pane;
      v17 = v14;
      v18 = v15;
      v19 = 0;
LABEL_22:
      v20 = [v17 initWithTitle:v18 style:v19 target:pane action:sel_okButtonPressed];
      v21 = *p_nextButton;
      *p_nextButton = v20;

      nextButton = *p_nextButton;
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (!mode)
  {
    if (self->_substate == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (mode != 1)
  {
    goto LABEL_11;
  }

LABEL_18:
  p_nextButton = &self->_doneButton;
  nextButton = self->_doneButton;
  if (!nextButton)
  {
    v15 = self->_doneButtonTitle;
    if (!v15)
    {
      v15 = PS_LocalizedStringForPINEntry(@"DONE");
    }

    v17 = objc_alloc(MEMORY[0x1E69DC708]);
    pane = self->super._pane;
    v18 = v15;
    v19 = 2;
    goto LABEL_22;
  }

LABEL_23:
  [navigationItem setRightBarButtonItem:nextButton];
  [navigationItem setLeftBarButtonItem:self->_cancelButton];
  v22 = v5 != 0;
  [(UIBarButtonItem *)self->_nextButton setEnabled:v22];
  [(UIBarButtonItem *)self->_doneButton setEnabled:v22];
LABEL_24:
}

- (void)adjustButtonsForPasswordLength:(unint64_t)length
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__DevicePINController_adjustButtonsForPasswordLength___block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = DevicePINController;
  [(PSDetailController *)&v4 loadView];
  view = [(DevicePINController *)self view];
  [view setAutoresizingMask:18];
}

- (void)viewWillLayoutSubviews
{
  parentController = [(PSViewController *)self parentController];
  popoverPresentationController = [parentController popoverPresentationController];

  if (popoverPresentationController)
  {
    [(DevicePINController *)self overallContentSizeForViewInPopover];
    v6 = v5;
    v8 = v7;
    pane = self->super._pane;
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);

    [(PSEditingPane *)pane setFrame:v10, v11, v6, v8];
  }
}

- (void)_slidePasscodeFieldLeft:(BOOL)left
{
  leftCopy = left;
  parentController = [(PSViewController *)self parentController];
  popoverPresentationController = [parentController popoverPresentationController];

  if (popoverPresentationController)
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    [(DevicePINController *)self overallContentSizeForViewInPopover];
    v10 = v9;
    v12 = v11;
    [(PSEditingPane *)self->super._pane setFrame:v7, v8, v9, v11];
    [(DevicePINController *)self setPreferredContentSize:v10, v12];
    navigationController = [(DevicePINController *)self navigationController];
    [navigationController setPreferredContentSize:{v10, v12}];
  }

  pinPane = [(DevicePINController *)self pinPane];
  [pinPane setPINLength:{-[DevicePINController pinLength](self, "pinLength")}];

  pinPane2 = [(DevicePINController *)self pinPane];
  _shouldReverseLayoutDirection = [pinPane2 _shouldReverseLayoutDirection];

  if (_shouldReverseLayoutDirection != leftCopy)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  pinPane3 = [(DevicePINController *)self pinPane];
  [pinPane3 slideToNewPasscodeField:-[DevicePINController simplePIN](self requiresKeyboard:"simplePIN") numericOnly:-[DevicePINController requiresKeyboard](self transition:"requiresKeyboard") showsOptionsButton:{-[DevicePINController isNumericPIN](self, "isNumericPIN"), v17, -[DevicePINController _shouldShowOptionsButton](self, "_shouldShowOptionsButton")}];

  [(DevicePINController *)self _updatePINButtons];
}

- (void)pinEntered:(id)entered
{
  enteredCopy = entered;
  if (![(DevicePINController *)self isBlocked])
  {
    v5 = [enteredCopy copy];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__DevicePINController_pinEntered___block_invoke;
    v6[3] = &unk_1E71DC570;
    v6[4] = self;
    enteredCopy = v5;
    v7 = enteredCopy;
    [(DevicePINController *)self _preflightPasswordForWeakness:enteredCopy withCompletion:v6];
  }
}

void __34__DevicePINController_pinEntered___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1064);
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      if ([v2 attemptValidationWithPIN:*(a1 + 40)] && objc_msgSend(*(a1 + 32), "completedInputIsValid:", *(a1 + 40)))
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 40);

        [v4 _removePinWithOldPassword:v5];
        return;
      }

      goto LABEL_55;
    }

    v16 = *(v2 + 1068);
    if (v16 != 2)
    {
      if (v16 == 1)
      {
        v17 = *(a1 + 40);
        v53 = 0;
        v18 = [v2 pinIsAcceptable:v17 outError:&v53];
        v19 = v53;
        v20 = *(a1 + 32);
        if (v18)
        {
          [v20 setLastEntry:*(a1 + 40)];
          ++*(*(a1 + 32) + 1068);
          [*(a1 + 32) _slidePasscodeFieldLeft:1];
        }

        else
        {
          [v20 _showUnacceptablePINError:v19 password:*(a1 + 40)];
        }
      }

      return;
    }

    if ([*(a1 + 40) isEqualToString:*(v2 + 1080)] && objc_msgSend(*(a1 + 32), "completedInputIsValid:", *(a1 + 40)))
    {
      objc_initWeak(&buf, *(a1 + 32));
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __34__DevicePINController_pinEntered___block_invoke_2;
      aBlock[3] = &unk_1E71DC2F8;
      objc_copyWeak(&v52, &buf);
      v51 = *(a1 + 40);
      v27 = _Block_copy(aBlock);
      if (([*(a1 + 32) isMemberOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(*(a1 + 32), "_asyncSetPinCompatible"))
      {
        [*(a1 + 32) setPIN:*(a1 + 40) completion:v27];
      }

      else
      {
        [*(a1 + 32) setPIN:*(a1 + 40)];
        v27[2](v27, 1, 0);
      }

      objc_destroyWeak(&v52);
      objc_destroyWeak(&buf);
      return;
    }

    [*(a1 + 32) setLastEntry:0];
    v32 = *(a1 + 32);
    v33 = 1;
    goto LABEL_50;
  }

  if (v3 == 2)
  {
    v21 = *(v2 + 1068);
    if (v21 == 3)
    {
      if ([*(a1 + 40) isEqualToString:*(v2 + 1080)] && objc_msgSend(*(a1 + 32), "completedInputIsValid:", *(a1 + 40)))
      {
        v34 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        [v34 addObject:*(a1 + 32)];
        v43 = MEMORY[0x1E69E9820];
        v44 = 3221225472;
        v45 = __34__DevicePINController_pinEntered___block_invoke_184;
        v46 = &unk_1E71DC638;
        v35 = v34;
        v47 = v35;
        v48 = *(a1 + 40);
        v36 = _Block_copy(&v43);
        v37 = [*(a1 + 32) isMemberOfClass:{objc_opt_class(), v43, v44, v45, v46}];
        v38 = *(a1 + 32);
        v39 = *(a1 + 40);
        if (v37)
        {
          [v38 setPIN:v39 completion:v36];
        }

        else
        {
          [v38 setPIN:v39];
          v36[2](v36, 1, 0);
        }

        return;
      }

      [*(a1 + 32) setLastEntry:0];
      v32 = *(a1 + 32);
      v33 = 2;
LABEL_50:
      *(v32 + 1068) = v33;
      [*(a1 + 32) _slidePasscodeFieldLeft:0];
      v40 = *(a1 + 32);

      [v40 _showPINConfirmationError];
      return;
    }

    if (v21 == 2)
    {
      v28 = *(a1 + 40);
      v49 = 0;
      v29 = [v2 pinIsAcceptable:v28 outError:&v49];
      v30 = v49;
      v31 = *(a1 + 32);
      if (v29)
      {
        [v31 setLastEntry:*(a1 + 40)];
        ++*(*(a1 + 32) + 1068);
        [*(a1 + 32) _slidePasscodeFieldLeft:1];
      }

      else
      {
        [v31 _showUnacceptablePINError:v30 password:*(a1 + 40)];
      }

      return;
    }

    if (v21 != 1)
    {
      return;
    }

    v22 = [v2 attemptValidationWithPIN:*(a1 + 40)];
    v23 = *(a1 + 32);
    if (!v22)
    {
      [v23 setLastEntry:0];
LABEL_55:
      v41 = *(a1 + 32);

      [v41 _updateErrorTextAndFailureCount:1];
      return;
    }

    ++v23[267];
    [*(a1 + 32) setOldPassword:*(a1 + 40)];
    v24 = *(a1 + 32);

    [v24 _slidePasscodeFieldLeft:1];
  }

  else
  {
    if (v3 != 3)
    {
      return;
    }

    if ([v2 attemptValidationWithPIN:*(a1 + 40)] && objc_msgSend(*(a1 + 32), "completedInputIsValid:", *(a1 + 40)))
    {
      v6 = _PSLoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Succeeded passcode entry", &buf, 2u);
      }

      [*(*(a1 + 32) + 1056) hideFailedAttempts];
      [*(a1 + 32) setSuccess:1];
      [*(a1 + 32) setOldPassword:*(a1 + 40)];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1096));
      if (WeakRetained)
      {
        v8 = objc_loadWeakRetained((*(a1 + 32) + 1096));
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = objc_loadWeakRetained((*(a1 + 32) + 1096));
          [v10 willAcceptEnteredPIN];
        }
      }

      [*(a1 + 32) performActionAfterPINEntry];
      v11 = objc_loadWeakRetained((*(a1 + 32) + 1096));

      if (!v11)
      {
        goto LABEL_62;
      }

      v12 = objc_loadWeakRetained((*(a1 + 32) + 1096));
      v13 = objc_opt_respondsToSelector();

      v14 = objc_loadWeakRetained((*(a1 + 32) + 1096));
      v15 = v14;
      if (v13)
      {
        [v14 didAcceptEnteredPIN:*(*(a1 + 32) + 1072)];
      }

      else
      {
        v42 = objc_opt_respondsToSelector();

        if ((v42 & 1) == 0)
        {
LABEL_62:
          [*(a1 + 32) _dismiss];
          return;
        }

        v15 = objc_loadWeakRetained((*(a1 + 32) + 1096));
        [v15 didAcceptEnteredPIN];
      }

      goto LABEL_62;
    }

    [*(a1 + 32) _updateErrorTextAndFailureCount:1];
    v25 = _PSLoggingFacility();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 32) numberOfFailedAttempts];
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v26;
      _os_log_impl(&dword_18B008000, v25, OS_LOG_TYPE_DEFAULT, "Failed passcode entry, attempts = %i", &buf, 8u);
    }
  }
}

void __34__DevicePINController_pinEntered___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setSuccess:1];
    v8 = [v7 pane];
    [v8 hideFailedAttempts];

    [v7 _dismiss];
    [v7 performActionAfterPINSet];
    if (a2)
    {
      v9 = [v7 pinDelegate];
      v10 = objc_opt_respondsToSelector();

      v11 = [v7 pinDelegate];
      v12 = v11;
      if (v10)
      {
        [v11 devicePINController:v7 didAcceptSetPIN:*(a1 + 32)];

        goto LABEL_12;
      }

      v17 = objc_opt_respondsToSelector();

      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

      v16 = [v7 pinDelegate];
      [v16 didAcceptSetPIN];
LABEL_11:

      goto LABEL_12;
    }

    v13 = _PSLoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v5;
      _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "Failed to set passcode with error: %@", &v18, 0xCu);
    }

    v14 = [v7 pinDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [v7 pinDelegate];
      [v16 devicePINController:v7 didFailToSetPinWithError:v5];
      goto LABEL_11;
    }
  }

LABEL_12:
}

void __34__DevicePINController_pinEntered___block_invoke_184(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = [*(a1 + 32) anyObject];
  [v4 setOldPassword:0];
  [v4 setSuccess:1];
  v5 = [v4 pane];
  [v5 hideFailedAttempts];

  if (v13 && ([v4 pinDelegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
  {
    v8 = [v4 pinDelegate];
    [v8 devicePINController:v4 didFailToChangePinWithError:v13];
  }

  else
  {
    v9 = [v4 pinDelegate];
    v10 = objc_opt_respondsToSelector();

    v11 = [v4 pinDelegate];
    v8 = v11;
    if (v10)
    {
      [v11 devicePINController:v4 didAcceptChangedPIN:*(a1 + 40)];
    }

    else
    {
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        goto LABEL_9;
      }

      v8 = [v4 pinDelegate];
      [v8 didAcceptChangedPIN];
    }
  }

LABEL_9:
  [v4 _dismiss];
}

- (void)_removePinWithOldPassword:(id)password
{
  [(DevicePINController *)self setOldPassword:password];
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  [weakObjectsHashTable addObject:self];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__DevicePINController__removePinWithOldPassword___block_invoke;
  aBlock[3] = &unk_1E71DCE98;
  v5 = weakObjectsHashTable;
  v8 = v5;
  v6 = _Block_copy(aBlock);
  if ([(DevicePINController *)self isMemberOfClass:objc_opt_class()])
  {
    [(DevicePINController *)self setPIN:0 completion:v6];
  }

  else
  {
    [(DevicePINController *)self setPIN:0];
    v6[2](v6, 1, 0);
  }
}

void __49__DevicePINController__removePinWithOldPassword___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) anyObject];
  [v7 setSuccess:1];
  [v7 performActionAfterPINRemove];
  v1 = [v7 pinDelegate];
  if (v1)
  {
    v2 = v1;
    v3 = [v7 pinDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [v7 pinDelegate];
      [v5 didAcceptRemovePIN];
    }
  }

  v6 = [v7 pane];
  [v6 hideFailedAttempts];

  [v7 _dismiss];
}

- (void)_preflightPasswordForWeakness:(id)weakness withCompletion:(id)completion
{
  weaknessCopy = weakness;
  completionCopy = completion;
  if ([(DevicePINController *)self _shouldCheckForWeakness]&& ([(DevicePINController *)self pinDelegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    v19 = 0;
    v10 = [(DevicePINController *)self pinIsAcceptable:weaknessCopy outError:&v19];
    v11 = v19;
    if (v10 || ([(DevicePINController *)self pinDelegate], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, (v13 & 1) == 0))
    {
      pinDelegate = [(DevicePINController *)self pinDelegate];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __68__DevicePINController__preflightPasswordForWeakness_withCompletion___block_invoke_2;
      v16[3] = &unk_1E71DE810;
      v16[4] = self;
      v17 = completionCopy;
      [pinDelegate devicePINController:self shouldAcceptPIN:weaknessCopy withCompletion:v16];
    }

    else
    {
      pinDelegate2 = [(DevicePINController *)self pinDelegate];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __68__DevicePINController__preflightPasswordForWeakness_withCompletion___block_invoke;
      v18[3] = &unk_1E71DE7E8;
      v18[4] = self;
      [pinDelegate2 showWeakWarningAlertForController:self offerUseAnyway:0 withCompletion:v18];
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __68__DevicePINController__preflightPasswordForWeakness_withCompletion___block_invoke_2(uint64_t a1, int a2)
{
  if (!a2)
  {
    return [*(*(a1 + 32) + 1056) clearPassword];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_shouldCheckForWeakness
{
  mode = self->_mode;
  if (mode == 2)
  {
    return self->_substate == mode;
  }

  if (!mode)
  {
    mode = 1;
    return self->_substate == mode;
  }

  return 0;
}

- (void)cancelButtonTapped
{
  [(DevicePINController *)self setOldPassword:0];
  WeakRetained = objc_loadWeakRetained(&self->_pinDelegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_pinDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_pinDelegate);
      [v7 willCancelEnteringPIN];
    }
  }

  [(DevicePINController *)self setSuccess:0];
  [(DevicePINController *)self _dismiss];
  v8 = objc_loadWeakRetained(&self->_pinDelegate);
  if (v8)
  {
    v9 = v8;
    v10 = objc_loadWeakRetained(&self->_pinDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_pinDelegate);
      [v12 didCancelEnteringPIN];
    }
  }
}

- (id)pinInstructionsPrompt
{
  mode = self->_mode;
  if (mode > 3)
  {
    v4 = &stru_1EFE45030;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:off_1E71DE858[mode], self->_substate];
  }

  v5 = [(DevicePINController *)self localizedPINStringForKey:v4];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = DevicePINController;
  [(PSDetailController *)&v6 viewWillAppear:appear];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice sf_isiPhone])
  {

LABEL_4:
    [(PSEditingPane *)self->super._pane becomeFirstResponder];
    goto LABEL_5;
  }

  simplePIN = [(DevicePINController *)self simplePIN];

  if (simplePIN)
  {
    goto LABEL_4;
  }

LABEL_5:
  self->_hasBeenDismissed = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DevicePINController;
  [(PSDetailController *)&v4 viewDidAppear:appear];
  if (PSUsePadStylePIN())
  {
    [(PSEditingPane *)self->super._pane becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = DevicePINController;
  [(PSDetailController *)&v4 viewWillDisappear:disappear];
  [(PSEditingPane *)self->super._pane resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = DevicePINController;
  [(PSViewController *)&v7 viewDidDisappear:disappear];
  if (!self->_hasBeenDismissed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pinDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_pinDelegate);
      [v6 devicePINControllerDidDismissPINPane:self];
    }
  }
}

- (BOOL)_shouldShowOptionsButton
{
  mode = self->_mode;
  if (mode == 2)
  {
    if (!self->_allowOptionsButton || self->_substate != 2)
    {
      goto LABEL_13;
    }
  }

  else if (mode || self->_substate != 1 || !self->_allowOptionsButton)
  {
    goto LABEL_13;
  }

  passcodeOptionsAlertController = [(DevicePINController *)self passcodeOptionsAlertController];
  actions = [passcodeOptionsAlertController actions];
  v7 = [actions count];

  if (v7 > 1)
  {
    return 1;
  }

LABEL_13:
  passcodeOptionsTitle = [(DevicePINController *)self passcodeOptionsTitle];
  if (passcodeOptionsTitle)
  {
    passcodeOptionsHandler = [(DevicePINController *)self passcodeOptionsHandler];
    v8 = passcodeOptionsHandler != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setPINPaneToSimple:(BOOL)simple simpleLength:(int)length numeric:(BOOL)numeric requiresKeyboard:(int)keyboard
{
  numericCopy = numeric;
  simpleCopy = simple;
  [(DevicePINController *)self setPinLength:*&length];
  pinPane = [(DevicePINController *)self pinPane];
  [pinPane setPINLength:{-[DevicePINController pinLength](self, "pinLength")}];

  [(DevicePINController *)self setSimplePIN:simpleCopy];
  [(DevicePINController *)self setNumericPIN:numericCopy];
  pinPane2 = [(DevicePINController *)self pinPane];
  [pinPane2 slideToNewPasscodeField:-[DevicePINController simplePIN](self requiresKeyboard:"simplePIN") numericOnly:-[DevicePINController requiresKeyboard](self transition:"requiresKeyboard") showsOptionsButton:{-[DevicePINController isNumericPIN](self, "isNumericPIN"), 6, -[DevicePINController _shouldShowOptionsButton](self, "_shouldShowOptionsButton")}];

  [(DevicePINController *)self _updatePINButtons];
}

- (id)passcodeOptionsAlertController
{
  v26 = 0;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = [mEMORY[0x1E69ADFB8] minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v26];

  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  if ([(DevicePINController *)self isNumericPIN])
  {
    v6 = MEMORY[0x1E69DC648];
    v7 = PS_LocalizedStringForPINEntry(@"CUSTOM_ALPHANUMERIC_CODE");
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__DevicePINController_passcodeOptionsAlertController__block_invoke;
    v25[3] = &unk_1E71DC288;
    v25[4] = self;
    v8 = [v6 actionWithTitle:v7 style:0 handler:v25];
    [v5 addAction:v8];
  }

  if (v4 != 2)
  {
    if (![(DevicePINController *)self isNumericPIN]|| [(DevicePINController *)self simplePIN])
    {
      v9 = MEMORY[0x1E69DC648];
      v10 = PS_LocalizedStringForPINEntry(@"CUSTOM_NUMERIC_CODE");
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __53__DevicePINController_passcodeOptionsAlertController__block_invoke_2;
      v24[3] = &unk_1E71DC288;
      v24[4] = self;
      v11 = [v9 actionWithTitle:v10 style:0 handler:v24];
      [v5 addAction:v11];
    }

    if (!v4)
    {
      if (![(DevicePINController *)self simplePIN]|| [(DevicePINController *)self pinLength]!= 6)
      {
        v12 = MEMORY[0x1E69DC648];
        v13 = PS_LocalizedStringForPINEntry(@"6_DIGIT_CODE");
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __53__DevicePINController_passcodeOptionsAlertController__block_invoke_3;
        v23[3] = &unk_1E71DC288;
        v23[4] = self;
        v14 = [v12 actionWithTitle:v13 style:0 handler:v23];
        [v5 addAction:v14];
      }

      if (v26 != 1 && (![(DevicePINController *)self simplePIN]|| [(DevicePINController *)self pinLength]!= 4))
      {
        v15 = MEMORY[0x1E69DC648];
        v16 = PS_LocalizedStringForPINEntry(@"4_DIGIT_CODE");
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __53__DevicePINController_passcodeOptionsAlertController__block_invoke_4;
        v22[3] = &unk_1E71DC288;
        v22[4] = self;
        v17 = [v15 actionWithTitle:v16 style:0 handler:v22];
        [v5 addAction:v17];
      }
    }
  }

  v18 = MEMORY[0x1E69DC648];
  v19 = PS_LocalizedStringForPINEntry(@"CANCEL");
  v20 = [v18 actionWithTitle:v19 style:1 handler:0];
  [v5 addAction:v20];

  return v5;
}

uint64_t __53__DevicePINController_passcodeOptionsAlertController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 requiresKeyboard];

  return [v1 _setPINPaneToSimple:0 simpleLength:0 numeric:0 requiresKeyboard:v2];
}

uint64_t __53__DevicePINController_passcodeOptionsAlertController__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 requiresKeyboard];

  return [v1 _setPINPaneToSimple:0 simpleLength:0 numeric:1 requiresKeyboard:v2];
}

uint64_t __53__DevicePINController_passcodeOptionsAlertController__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 requiresKeyboard];

  return [v1 _setPINPaneToSimple:1 simpleLength:6 numeric:1 requiresKeyboard:v2];
}

uint64_t __53__DevicePINController_passcodeOptionsAlertController__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 requiresKeyboard];

  return [v1 _setPINPaneToSimple:1 simpleLength:4 numeric:1 requiresKeyboard:v2];
}

- (void)showPasscodeOptions:(id)options
{
  optionsCopy = options;
  passcodeOptionsAlertController = [(DevicePINController *)self passcodeOptionsAlertController];
  if (PSUsePadStylePIN())
  {
    [passcodeOptionsAlertController setModalPresentationStyle:7];
    popoverPresentationController = [passcodeOptionsAlertController popoverPresentationController];
    [popoverPresentationController setSourceView:optionsCopy];
    [optionsCopy bounds];
    [popoverPresentationController setSourceRect:?];
  }

  [(DevicePINController *)self presentViewController:passcodeOptionsAlertController animated:1 completion:0];
}

- (void)setPane:(id)pane
{
  paneCopy = pane;
  v15.receiver = self;
  v15.super_class = DevicePINController;
  [(PSDetailController *)&v15 setPane:paneCopy];
  self->_substate = 1;
  [(DevicePINController *)self setSuccess:0];
  if (self->_mode == 1000)
  {
    v5 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"mode"];
    self->_mode = [v5 intValue];

    title = [(DevicePINController *)self title];
    [(DevicePINController *)self setTitle:title];
  }

  passcodeOptionsHandler = [(DevicePINController *)self passcodeOptionsHandler];
  if (passcodeOptionsHandler)
  {
    [paneCopy setPasscodeOptionsHandler:passcodeOptionsHandler];
  }

  else if (self->_allowOptionsButton)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __31__DevicePINController_setPane___block_invoke;
    v12 = &unk_1E71DE838;
    objc_copyWeak(&v13, &location);
    [paneCopy setPasscodeOptionsHandler:&v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v8 = [(DevicePINController *)self passcodeOptionsTitle:v9];
  [paneCopy setPasscodeOptionsTitle:v8];

  [paneCopy setPINLength:{-[DevicePINController pinLength](self, "pinLength")}];
  [paneCopy setSimplePIN:-[DevicePINController simplePIN](self requiresKeyboard:"simplePIN") numericOnly:-[DevicePINController requiresKeyboard](self showsOptions:{"requiresKeyboard"), -[DevicePINController isNumericPIN](self, "isNumericPIN"), -[DevicePINController _shouldShowOptionsButton](self, "_shouldShowOptionsButton")}];
  if ([(DevicePINController *)self isBlocked])
  {
    [(DevicePINController *)self _updateErrorTextAndFailureCount:0];
  }

  else if ([(DevicePINController *)self numberOfFailedAttempts])
  {
    [(DevicePINController *)self _showFailedAttempts];
  }

  [(DevicePINController *)self _updatePINButtons];
}

void __31__DevicePINController_setPane___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showPasscodeOptions:v3];
}

- (id)titleString
{
  mode = self->_mode;
  if (mode > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(DevicePINController *)self localizedPINStringForKey:off_1E71DE878[mode], v2];
  }

  return v5;
}

- (DevicePINControllerDelegate)pinDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pinDelegate);

  return WeakRetained;
}

@end