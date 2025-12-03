@interface KeychainSyncDevicePINController
- (KeychainSyncDevicePINController)init;
- (id)specifiers;
- (void)dealloc;
- (void)didFinishEnteringText:(id)text;
- (void)updateBlockedState:(id)state;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation KeychainSyncDevicePINController

- (KeychainSyncDevicePINController)init
{
  v8.receiver = self;
  v8.super_class = KeychainSyncDevicePINController;
  v2 = [(PSKeychainSyncTextEntryController *)&v8 init];
  if (v2)
  {
    v7 = 0;
    PSIsUsingPasscode(&v7);
    if (v7)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    [(PSKeychainSyncTextEntryController *)v2 setTextEntryType:v3];
    [(PSKeychainSyncTextEntryController *)v2 setSecureTextEntry:1];
    v4 = objc_alloc_init(DevicePINController);
    devicePINController = v2->_devicePINController;
    v2->_devicePINController = v4;

    [(DevicePINController *)v2->_devicePINController setMode:3];
    [(PSKeychainSyncTextEntryController *)v2 setNumberOfPasscodeFields:[(DevicePINController *)v2->_devicePINController pinLength]];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [KeychainSyncDevicePINController cancelPreviousPerformRequestsWithTarget:self];
  v4.receiver = self;
  v4.super_class = KeychainSyncDevicePINController;
  [(PSKeychainSyncTextEntryController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_updateBlockedState_ name:*MEMORY[0x1E69DDF78] object:0];

  v6.receiver = self;
  v6.super_class = KeychainSyncDevicePINController;
  [(PSKeychainSyncTextEntryController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(UIKeyboard *)self->_disabledKeyboard setUserInteractionEnabled:1];
  [(KeychainSyncDevicePINController *)self setDisabledKeyboard:0];
  [KeychainSyncDevicePINController cancelPreviousPerformRequestsWithTarget:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];

  v6.receiver = self;
  v6.super_class = KeychainSyncDevicePINController;
  [(PSKeychainSyncTextEntryController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)updateBlockedState:(id)state
{
  isBlocked = [(DevicePINController *)self->_devicePINController isBlocked];
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard setUserInteractionEnabled:!isBlocked];
  if (isBlocked)
  {
    v5 = activeKeyboard;
  }

  else
  {
    v5 = 0;
  }

  [(KeychainSyncDevicePINController *)self setDisabledKeyboard:v5];
  if (!isBlocked && self->_showingBlockedMessage)
  {
    UIKeyboardDisableAutomaticAppearance();
    [(PSListController *)self reloadSpecifiers];
    UIKeyboardEnableAutomaticAppearance();
    textEntryView = [(PSKeychainSyncTextEntryController *)self textEntryView];
    [textEntryView becomeFirstResponder];
  }
}

- (id)specifiers
{
  navigationItem = [(KeychainSyncDevicePINController *)self navigationItem];
  v4 = PS_LocalizedStringForKeychainSync(@"ENTER_PASSCODE");
  [navigationItem setTitle:v4];

  v30.receiver = self;
  v30.super_class = KeychainSyncDevicePINController;
  specifiers = [(PSKeychainSyncTextEntryController *)&v30 specifiers];
  headerView = [(PSKeychainSyncViewController *)self headerView];
  enterPasscodeTitle = [(KeychainSyncDevicePINController *)self enterPasscodeTitle];
  [headerView setDetailText:enterPasscodeTitle];

  self->_showingBlockedMessage = 0;
  isBlocked = [(DevicePINController *)self->_devicePINController isBlocked];
  devicePINController = self->_devicePINController;
  if (isBlocked)
  {
    [(DevicePINController *)devicePINController unblockTime];
    v11 = v10;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v13 = (v11 - v12) / 60.0;
    *&v12 = v13;
    LODWORD(headerView) = vcvtps_s32_f32(*&v12);
    v14 = headerView - 1;
    if (headerView == 1)
    {
      v15 = @"UNBLOCK_MINUTES_SINGLE";
    }

    else
    {
      v15 = @"UNBLOCK_MINUTES_PLURAL";
    }

    v16 = PS_LocalizedStringForKeychainSync(v15);
    v17 = MEMORY[0x1E696AEC0];
    v18 = MEMORY[0x1E696ADA0];
    v19 = [MEMORY[0x1E696AD98] numberWithInt:headerView];
    v20 = [v18 localizedStringFromNumber:v19 numberStyle:1];
    enterPasscodeReason = [v17 stringWithFormat:v16, v20];

    self->_showingBlockedMessage = 1;
    v22 = (v13 - v14) * 60.0;
    if (v22 > 0.0)
    {
      [(KeychainSyncDevicePINController *)self performSelector:sel_updateBlockedState_ withObject:0 afterDelay:v22];
    }

    goto LABEL_12;
  }

  if ([(DevicePINController *)devicePINController numberOfFailedAttempts]>= 1)
  {
    if ([(DevicePINController *)self->_devicePINController numberOfFailedAttempts]== 1)
    {
      v23 = @"PASSCODE_INCORRECT_SINGLE";
    }

    else
    {
      v23 = @"PASSCODE_INCORRECT_PLURAL";
    }

    v16 = PS_LocalizedStringForKeychainSync(v23);
    v24 = MEMORY[0x1E696AEC0];
    v25 = MEMORY[0x1E696ADA0];
    v26 = [MEMORY[0x1E696AD98] numberWithLong:{-[DevicePINController numberOfFailedAttempts](self->_devicePINController, "numberOfFailedAttempts")}];
    v27 = [v25 localizedStringFromNumber:v26 numberStyle:1];
    enterPasscodeReason = [v24 stringWithFormat:v16, v27];

LABEL_12:
    goto LABEL_13;
  }

  enterPasscodeReason = [(KeychainSyncDevicePINController *)self enterPasscodeReason];
LABEL_13:
  groupSpecifier = [(PSKeychainSyncViewController *)self groupSpecifier];
  [groupSpecifier setProperty:enterPasscodeReason forKey:@"footerText"];

  return specifiers;
}

- (void)didFinishEnteringText:(id)text
{
  textCopy = text;
  if ([(DevicePINController *)self->_devicePINController isBlocked]|| ![(DevicePINController *)self->_devicePINController attemptValidationWithPIN:textCopy])
  {
    UIKeyboardDisableAutomaticAppearance();
    [(PSListController *)self reloadSpecifiers];
    UIKeyboardEnableAutomaticAppearance();
    textEntryView = [(PSKeychainSyncTextEntryController *)self textEntryView];
    [textEntryView becomeFirstResponder];

    [(KeychainSyncDevicePINController *)self updateBlockedState:0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = KeychainSyncDevicePINController;
    [(PSKeychainSyncTextEntryController *)&v6 didFinishEnteringText:textCopy];
  }
}

@end