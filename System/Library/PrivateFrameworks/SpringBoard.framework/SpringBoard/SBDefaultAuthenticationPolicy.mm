@interface SBDefaultAuthenticationPolicy
- (BOOL)allowAuthenticationRevocation;
- (void)cachePasscode:(id)a3;
- (void)clearPasscodeCache;
- (void)passcodeAuthenticationFailedWithError:(id)a3;
- (void)wipeDeviceWithReason:(id)a3;
@end

@implementation SBDefaultAuthenticationPolicy

- (BOOL)allowAuthenticationRevocation
{
  v2 = [SBApp restartManager];
  v3 = v2 != 0;

  return v3;
}

- (void)wipeDeviceWithReason:(id)a3
{
  v6 = a3;
  v3 = [SBApp userSessionController];
  v4 = [v3 sessionType];

  if (v4 == 2)
  {
    v5 = [SBApp userSessionController];
    [v5 disableCurrentUser];
  }

  else
  {
    [SBApp performSelector:sel_wipeDeviceNowWithReason_ withObject:v6 afterDelay:0.0];
  }
}

- (void)cachePasscode:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SBSetupManager sharedInstance];
  if ([v5 isInSetupMode])
  {
    [v5 noteAuthenticationSucceededWithPasscode:v4];
    if (!self->_secureBackupHelper)
    {
      v6 = objc_alloc_init(MEMORY[0x277CFB280]);
      secureBackupHelper = self->_secureBackupHelper;
      self->_secureBackupHelper = v6;

      v8 = self->_secureBackupHelper;
      v11 = *MEMORY[0x277CFB348];
      v12[0] = v4;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v10 = [(SecureBackup *)v8 cachePassphraseWithInfo:v9];
    }
  }

  if ([(SBSoftwareUpdatePasscodePolicyManager *)self->_softwareUpdatePasscodePolicyManager softwareUpdatePasscodePolicy])
  {
    [(SBSoftwareUpdatePasscodePolicyManager *)self->_softwareUpdatePasscodePolicyManager noteAuthenticationSucceededWithPasscode:v4];
  }

  if ([(SBiCloudPasscodeRequirementLockoutController *)self->_iCloudPasscodeRequirementLockoutController desiresPasscode])
  {
    [(SBiCloudPasscodeRequirementLockoutController *)self->_iCloudPasscodeRequirementLockoutController noteAuthenticationSucceededWithPasscode:v4];
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

- (void)passcodeAuthenticationFailedWithError:(id)a3
{
  v6 = a3;
  v3 = [v6 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277D66048]];

  if (v4 && [v6 code] == -14)
  {
    v5 = objc_alloc_init(SBDataRecoveryController);
    if ([(SBDataRecoveryController *)v5 dataRecoveryRequired])
    {
      [(SBDataRecoveryController *)v5 performDataRecovery];
    }
  }
}

@end