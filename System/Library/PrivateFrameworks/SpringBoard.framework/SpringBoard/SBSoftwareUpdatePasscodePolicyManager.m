@interface SBSoftwareUpdatePasscodePolicyManager
- (BOOL)consumePendingUnlock;
- (BOOL)requiresLockout;
- (SBSoftwareUpdatePasscodePolicyManager)init;
- (SBSoftwareUpdatePasscodePolicyManager)initWithLockScreenManager:(id)a3 mobileKeyBag:(id)a4;
- (int64_t)_effectiveSoftwareUpdatePasscodePolicy;
- (void)_authRequestCompleted:(id)a3;
- (void)dealloc;
- (void)noteAuthenticationSucceededWithPasscode:(id)a3;
- (void)setSoftwareUpdatePasscodePolicy:(int64_t)a3;
@end

@implementation SBSoftwareUpdatePasscodePolicyManager

- (BOOL)requiresLockout
{
  if ([(SBSoftwareUpdatePasscodePolicyManager *)self _effectiveSoftwareUpdatePasscodePolicy]== 2)
  {
    v2 = +[SBCoverSheetPresentationManager sharedInstance];
    v3 = [v2 hasBeenDismissedSinceKeybagLock] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (int64_t)_effectiveSoftwareUpdatePasscodePolicy
{
  if (!self->_softwareUpdatePasscodePolicy)
  {
    return 0;
  }

  if ([(SBFMobileKeyBag *)self->_mobileKeyBag hasPasscodeSet])
  {
    return self->_softwareUpdatePasscodePolicy;
  }

  return 0;
}

- (SBSoftwareUpdatePasscodePolicyManager)init
{
  v3 = +[SBLockScreenManager sharedInstance];
  v4 = [MEMORY[0x277D65ED8] sharedInstance];
  v5 = [(SBSoftwareUpdatePasscodePolicyManager *)self initWithLockScreenManager:v3 mobileKeyBag:v4];

  return v5;
}

- (SBSoftwareUpdatePasscodePolicyManager)initWithLockScreenManager:(id)a3 mobileKeyBag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBSoftwareUpdatePasscodePolicyManager;
  v8 = [(SBSoftwareUpdatePasscodePolicyManager *)&v13 init];
  if (v8)
  {
    v9 = [[SBSoftLockoutController alloc] initWithBiometricLockoutState:6 lockScreenManager:v6];
    softLockoutController = v8->_softLockoutController;
    v8->_softLockoutController = v9;

    [(SBSoftLockoutController *)v8->_softLockoutController setDelegate:v8];
    objc_storeStrong(&v8->_mobileKeyBag, a4);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v8 selector:sel__authRequestCompleted_ name:*MEMORY[0x277D66060] object:0];
  }

  return v8;
}

- (void)dealloc
{
  [(SBSoftLockoutController *)self->_softLockoutController setDelegate:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D66060] object:0];

  v4.receiver = self;
  v4.super_class = SBSoftwareUpdatePasscodePolicyManager;
  [(SBSoftwareUpdatePasscodePolicyManager *)&v4 dealloc];
}

- (void)setSoftwareUpdatePasscodePolicy:(int64_t)a3
{
  if (self->_softwareUpdatePasscodePolicy != a3)
  {
    self->_softwareUpdatePasscodePolicy = a3;
    [(SBSoftLockoutController *)self->_softLockoutController reload];
    self->_passcodeAuthenticationSuccessPending = 0;
  }
}

- (void)noteAuthenticationSucceededWithPasscode:(id)a3
{
  v4 = a3;
  if ([(SBSoftwareUpdatePasscodePolicyManager *)self _effectiveSoftwareUpdatePasscodePolicy])
  {
    SUSUICreateInstallationKeybagWithSecret();
    [(SBSoftwareUpdatePasscodePolicyManager *)self setSoftwareUpdatePasscodePolicy:0];
  }
}

- (BOOL)consumePendingUnlock
{
  passcodeAuthenticationSuccessPending = self->_passcodeAuthenticationSuccessPending;
  self->_passcodeAuthenticationSuccessPending = 0;
  return passcodeAuthenticationSuccessPending;
}

- (void)_authRequestCompleted:(id)a3
{
  v8 = [a3 userInfo];
  v4 = [v8 objectForKeyedSubscript:*MEMORY[0x277D66058]];
  v5 = [v8 objectForKeyedSubscript:*MEMORY[0x277D66068]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && [v4 integerValue] == 1 && objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277D66070]))
  {
    self->_passcodeAuthenticationSuccessPending = 1;
  }
}

@end