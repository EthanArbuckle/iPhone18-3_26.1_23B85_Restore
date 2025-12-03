@interface SBDefaultAuthenticationPolicy
- (BOOL)allowAuthenticationRevocation;
- (void)cachePasscode:(id)passcode;
- (void)clearPasscodeCache;
- (void)passcodeAuthenticationFailedWithError:(id)error;
- (void)wipeDeviceWithReason:(id)reason;
@end

@implementation SBDefaultAuthenticationPolicy

- (BOOL)allowAuthenticationRevocation
{
  restartManager = [SBApp restartManager];
  v3 = restartManager != 0;

  return v3;
}

- (void)wipeDeviceWithReason:(id)reason
{
  reasonCopy = reason;
  userSessionController = [SBApp userSessionController];
  sessionType = [userSessionController sessionType];

  if (sessionType == 2)
  {
    userSessionController2 = [SBApp userSessionController];
    [userSessionController2 disableCurrentUser];
  }

  else
  {
    [SBApp performSelector:sel_wipeDeviceNowWithReason_ withObject:reasonCopy afterDelay:0.0];
  }
}

- (void)cachePasscode:(id)passcode
{
  v12[1] = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  v5 = +[SBSetupManager sharedInstance];
  if ([v5 isInSetupMode])
  {
    [v5 noteAuthenticationSucceededWithPasscode:passcodeCopy];
    if (!self->_secureBackupHelper)
    {
      v6 = objc_alloc_init(MEMORY[0x277CFB280]);
      secureBackupHelper = self->_secureBackupHelper;
      self->_secureBackupHelper = v6;

      v8 = self->_secureBackupHelper;
      v11 = *MEMORY[0x277CFB348];
      v12[0] = passcodeCopy;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v10 = [(SecureBackup *)v8 cachePassphraseWithInfo:v9];
    }
  }

  if ([(SBSoftwareUpdatePasscodePolicyManager *)self->_softwareUpdatePasscodePolicyManager softwareUpdatePasscodePolicy])
  {
    [(SBSoftwareUpdatePasscodePolicyManager *)self->_softwareUpdatePasscodePolicyManager noteAuthenticationSucceededWithPasscode:passcodeCopy];
  }

  if ([(SBiCloudPasscodeRequirementLockoutController *)self->_iCloudPasscodeRequirementLockoutController desiresPasscode])
  {
    [(SBiCloudPasscodeRequirementLockoutController *)self->_iCloudPasscodeRequirementLockoutController noteAuthenticationSucceededWithPasscode:passcodeCopy];
  }
}

- (void)clearPasscodeCache
{
  secureBackupHelper = self->_secureBackupHelper;
  if (secureBackupHelper)
  {
    v4 = [(SecureBackup *)secureBackupHelper uncachePassphraseWithInfo:0];
    v5 = self->_secureBackupHelper;
    self->_secureBackupHelper = 0;
  }
}

- (void)passcodeAuthenticationFailedWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v4 = [domain isEqualToString:*MEMORY[0x277D66048]];

  if (v4 && [errorCopy code] == -14)
  {
    v5 = objc_alloc_init(SBDataRecoveryController);
    if ([(SBDataRecoveryController *)v5 dataRecoveryRequired])
    {
      [(SBDataRecoveryController *)v5 performDataRecovery];
    }
  }
}

@end