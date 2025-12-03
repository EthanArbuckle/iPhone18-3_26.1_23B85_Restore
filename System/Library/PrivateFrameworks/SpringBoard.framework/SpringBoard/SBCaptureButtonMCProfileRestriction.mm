@interface SBCaptureButtonMCProfileRestriction
- (SBCaptureButtonMCProfileRestriction)initWithCoordinator:(id)coordinator;
- (void)invalidate;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation SBCaptureButtonMCProfileRestriction

- (SBCaptureButtonMCProfileRestriction)initWithCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = SBCaptureButtonMCProfileRestriction;
  v3 = [(SBCaptureButtonInternalRestrictionGlue *)&v6 initWithCoordinator:coordinator];
  if (v3)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v3];
    [(SBCaptureButtonMCProfileRestriction *)v3 profileConnectionDidReceiveEffectiveSettingsChangedNotification:mEMORY[0x277D262A0] userInfo:0];
  }

  return v3;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = SBCaptureButtonMCProfileRestriction;
  [(SBCaptureButtonInternalRestrictionGlue *)&v4 invalidate];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  if ([notification isCameraAllowed])
  {

    [(SBCaptureButtonInternalRestrictionGlue *)self relinquishRestriction];
  }

  else
  {

    [(SBCaptureButtonInternalRestrictionGlue *)self acquireRestriction:@"MCProfileConnection isCameraAllowed is false"];
  }
}

@end