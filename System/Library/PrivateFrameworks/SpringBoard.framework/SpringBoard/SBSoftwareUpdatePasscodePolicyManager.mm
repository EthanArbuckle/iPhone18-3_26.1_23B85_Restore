@interface SBSoftwareUpdatePasscodePolicyManager
- (BOOL)consumePendingUnlock;
- (BOOL)requiresLockout;
- (SBSoftwareUpdatePasscodePolicyManager)init;
- (SBSoftwareUpdatePasscodePolicyManager)initWithLockScreenManager:(id)manager mobileKeyBag:(id)bag;
- (int64_t)_effectiveSoftwareUpdatePasscodePolicy;
- (void)_authRequestCompleted:(id)completed;
- (void)dealloc;
- (void)noteAuthenticationSucceededWithPasscode:(id)passcode;
- (void)setSoftwareUpdatePasscodePolicy:(int64_t)policy;
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
  mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
  v5 = [(SBSoftwareUpdatePasscodePolicyManager *)self initWithLockScreenManager:v3 mobileKeyBag:mEMORY[0x277D65ED8]];

  return v5;
}

- (SBSoftwareUpdatePasscodePolicyManager)initWithLockScreenManager:(id)manager mobileKeyBag:(id)bag
{
  managerCopy = manager;
  bagCopy = bag;
  v13.receiver = self;
  v13.super_class = SBSoftwareUpdatePasscodePolicyManager;
  v8 = [(SBSoftwareUpdatePasscodePolicyManager *)&v13 init];
  if (v8)
  {
    v9 = [[SBSoftLockoutController alloc] initWithBiometricLockoutState:6 lockScreenManager:managerCopy];
    softLockoutController = v8->_softLockoutController;
    v8->_softLockoutController = v9;

    [(SBSoftLockoutController *)v8->_softLockoutController setDelegate:v8];
    objc_storeStrong(&v8->_mobileKeyBag, bag);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__authRequestCompleted_ name:*MEMORY[0x277D66060] object:0];
  }

  return v8;
}

- (void)dealloc
{
  [(SBSoftLockoutController *)self->_softLockoutController setDelegate:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D66060] object:0];

  v4.receiver = self;
  v4.super_class = SBSoftwareUpdatePasscodePolicyManager;
  [(SBSoftwareUpdatePasscodePolicyManager *)&v4 dealloc];
}

- (void)setSoftwareUpdatePasscodePolicy:(int64_t)policy
{
  if (self->_softwareUpdatePasscodePolicy != policy)
  {
    self->_softwareUpdatePasscodePolicy = policy;
    [(SBSoftLockoutController *)self->_softLockoutController reload];
    self->_passcodeAuthenticationSuccessPending = 0;
  }
}

- (void)noteAuthenticationSucceededWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
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

- (void)_authRequestCompleted:(id)completed
{
  userInfo = [completed userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D66058]];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D66068]];
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