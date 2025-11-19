@interface SBiCloudPasscodeRequirementLockoutController
- (BOOL)requiresLockout;
- (SBiCloudPasscodeRequirementLockoutController)initWithLockScreenManager:(id)a3 mobileKeyBag:(id)a4;
- (void)dealloc;
- (void)noteAuthenticationSucceededWithPasscode:(id)a3;
@end

@implementation SBiCloudPasscodeRequirementLockoutController

- (BOOL)requiresLockout
{
  if (!self->_providedPasscode && [MEMORY[0x277CFB280] needPasscodeForHSA2EscrowRecordUpdate:0] == 3 && -[SBFMobileKeyBag hasPasscodeSet](self->_mobileKeybag, "hasPasscodeSet"))
  {
    v3 = +[SBCoverSheetPresentationManager sharedInstance];
    v4 = [v3 hasBeenDismissedSinceKeybagLock] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (SBiCloudPasscodeRequirementLockoutController)initWithLockScreenManager:(id)a3 mobileKeyBag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBiCloudPasscodeRequirementLockoutController;
  v8 = [(SBiCloudPasscodeRequirementLockoutController *)&v12 init];
  if (v8)
  {
    v9 = [[SBSoftLockoutController alloc] initWithBiometricLockoutState:7 lockScreenManager:v6];
    lockOutController = v8->_lockOutController;
    v8->_lockOutController = v9;

    [(SBSoftLockoutController *)v8->_lockOutController setDelegate:v8];
    objc_storeStrong(&v8->_mobileKeybag, a4);
  }

  return v8;
}

- (void)dealloc
{
  [(SBSoftLockoutController *)self->_lockOutController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SBiCloudPasscodeRequirementLockoutController;
  [(SBiCloudPasscodeRequirementLockoutController *)&v3 dealloc];
}

- (void)noteAuthenticationSucceededWithPasscode:(id)a3
{
  v4 = MEMORY[0x277CFB280];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setPassphrase:v5];

  self->_providedPasscode = 1;
  v7 = [(SBiCloudPasscodeRequirementLockoutController *)self _deviceHasComplexPasscode];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__SBiCloudPasscodeRequirementLockoutController_noteAuthenticationSucceededWithPasscode___block_invoke;
  v8[3] = &unk_2783B0F28;
  v8[4] = self;
  [v6 prepareHSA2EscrowRecordContents:v7 reply:v8];
}

void __88__SBiCloudPasscodeRequirementLockoutController_noteAuthenticationSucceededWithPasscode___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SBiCloudPasscodeRequirementLockoutController_noteAuthenticationSucceededWithPasscode___block_invoke_2;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __88__SBiCloudPasscodeRequirementLockoutController_noteAuthenticationSucceededWithPasscode___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) reload];
  *(*(a1 + 32) + 24) = 0;
  return result;
}

@end