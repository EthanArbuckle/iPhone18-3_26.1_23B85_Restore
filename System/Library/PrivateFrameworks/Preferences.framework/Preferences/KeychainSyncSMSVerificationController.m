@interface KeychainSyncSMSVerificationController
- (KeychainSyncSMSVerificationController)init;
- (PSKeychainSyncManager)keychainSyncManager;
- (id)specifiers;
- (void)loadView;
- (void)showSupportVerification;
- (void)viewDidLayoutSubviews;
@end

@implementation KeychainSyncSMSVerificationController

- (KeychainSyncSMSVerificationController)init
{
  v5.receiver = self;
  v5.super_class = KeychainSyncSMSVerificationController;
  v2 = [(PSKeychainSyncTextEntryController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSKeychainSyncTextEntryController *)v2 setTextEntryType:1];
    [(PSKeychainSyncTextEntryController *)v3 setSecureTextEntry:0];
    [(PSKeychainSyncTextEntryController *)v3 setConvertsNumeralsToASCII:1];
  }

  return v3;
}

- (id)specifiers
{
  v3 = PS_LocalizedStringForKeychainSync(@"VERIFICATION_CODE");
  [(PSKeychainSyncViewController *)self setTitle:v3];

  v15.receiver = self;
  v15.super_class = KeychainSyncSMSVerificationController;
  v4 = [(PSKeychainSyncTextEntryController *)&v15 specifiers];
  phoneNumber = self->_phoneNumber;
  v6 = [(KeychainSyncSMSVerificationController *)self countryCode];
  v7 = [KeychainSyncCountryInfo countryInfoForCountryCode:v6 dialingPrefix:self->_dialingPrefix];
  v8 = [PSKeychainSyncPhoneNumber phoneNumberWithDigits:phoneNumber countryInfo:v7];

  v9 = [v8 formattedAndObfuscatedString];
  v10 = [(PSKeychainSyncViewController *)self headerView];
  v11 = MEMORY[0x1E696AEC0];
  v12 = PS_LocalizedStringForKeychainSync(@"VERIFICATION_CODE_SENT_TO");
  v13 = [v11 stringWithFormat:v12, v9];
  [v10 setDetailText:v13];

  return v4;
}

- (void)loadView
{
  v18.receiver = self;
  v18.super_class = KeychainSyncSMSVerificationController;
  [(PSKeychainSyncTextEntryController *)&v18 loadView];
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  footerButton = self->_footerButton;
  self->_footerButton = v3;

  [(UIButton *)self->_footerButton addTarget:self action:sel_showSupportVerification forControlEvents:64];
  v5 = [(PSListController *)self table];
  [v5 addSubview:self->_footerButton];

  v6 = [(PSKeychainSyncViewController *)self headerView];
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 _referenceBounds];
  [v6 setUsesCompactLayout:v8 == 480.0];

  v9 = MEMORY[0x1E695DF90];
  v10 = [MEMORY[0x1E69DC888] _systemInteractionTintColor];
  v11 = *MEMORY[0x1E69DB650];
  v12 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  v13 = [v9 dictionaryWithObjectsAndKeys:{v10, v11, v12, *MEMORY[0x1E69DB648], 0}];

  v14 = PS_LocalizedStringForKeychainSync(@"DONT_HAVE_PHONE");
  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14 attributes:v13];
  [(UIButton *)self->_footerButton setAttributedTitle:v15 forState:0];
  v16 = [MEMORY[0x1E69DC888] blackColor];
  [v13 setObject:v16 forKey:v11];

  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14 attributes:v13];
  [(UIButton *)self->_footerButton setAttributedTitle:v17 forState:1];
  [(UIButton *)self->_footerButton sizeToFit];
}

- (void)viewDidLayoutSubviews
{
  v31.receiver = self;
  v31.super_class = KeychainSyncSMSVerificationController;
  [(PSListController *)&v31 viewDidLayoutSubviews];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 _referenceBounds];
  if (v4 == 480.0)
  {
    v5 = -21.0;
  }

  else
  {
    v5 = 5.0;
  }

  v6 = [(PSListController *)self table];
  v7 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v8 = [v6 cellForRowAtIndexPath:v7];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(UIButton *)self->_footerButton frame];
  v18 = v17;
  v20 = v19;
  v21 = (v14 - v17) * 0.5;
  v22 = floorf(v21);
  v32.origin.x = v10;
  v32.origin.y = v12;
  v32.size.width = v14;
  v32.size.height = v16;
  v23 = v5 + CGRectGetMaxY(v32);
  [(UIButton *)self->_footerButton setFrame:v22, v23, v18, v20];
  v24 = [(PSListController *)self table];
  [v24 contentSize];
  v26 = v25;
  v28 = v27;

  v33.origin.x = v22;
  v33.origin.y = v23;
  v33.size.width = v18;
  v33.size.height = v20;
  MaxY = CGRectGetMaxY(v33);
  v34.origin.x = v22;
  v34.origin.y = v23;
  v34.size.width = v18;
  v34.size.height = v20;
  if (v28 < CGRectGetMaxY(v34))
  {
    v30 = [(PSListController *)self table];
    [v30 setContentSize:{v26, v5 + MaxY}];
  }
}

- (void)showSupportVerification
{
  v3 = +[PSKeychainSyncManager sharedManager];
  if ([v3 isRunningInBuddy])
  {
    v4 = PS_LocalizedStringForKeychainSync(@"SET_UP_LATER");
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E69DC650];
  v6 = PS_LocalizedStringForKeychainSync(@"VERIFICATION_REQUIRED");
  v7 = PS_LocalizedStringForKeychainSync(@"CAN_VERIFY_WITH_APPLESUPPORT");
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = PS_LocalizedStringForKeychainSync(@"VERIFY_WITH_APPLESUPPORT");
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__KeychainSyncSMSVerificationController_showSupportVerification__block_invoke;
  v17[3] = &unk_1E71DC288;
  v17[4] = self;
  v11 = [v9 actionWithTitle:v10 style:0 handler:v17];
  [v8 addAction:v11];

  if (v4)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__KeychainSyncSMSVerificationController_showSupportVerification__block_invoke_2;
    v16[3] = &unk_1E71DC288;
    v16[4] = self;
    v12 = [MEMORY[0x1E69DC648] actionWithTitle:v4 style:0 handler:v16];
    [v8 addAction:v12];
  }

  v13 = MEMORY[0x1E69DC648];
  v14 = PS_LocalizedStringForKeychainSync(@"CANCEL");
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v8 addAction:v15];

  [(KeychainSyncSMSVerificationController *)self presentViewController:v8 animated:1 completion:0];
}

void __64__KeychainSyncSMSVerificationController_showSupportVerification__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) keychainSyncManager];
  [v1 showContactAppleSupportPane];
}

void __64__KeychainSyncSMSVerificationController_showSupportVerification__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:2 userInfo:0];
  [v4 keychainSyncController:v2 didFinishWithResult:0 error:v3];
}

- (PSKeychainSyncManager)keychainSyncManager
{
  WeakRetained = objc_loadWeakRetained(&self->_keychainSyncManager);

  return WeakRetained;
}

@end