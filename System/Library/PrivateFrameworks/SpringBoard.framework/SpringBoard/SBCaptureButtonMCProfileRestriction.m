@interface SBCaptureButtonMCProfileRestriction
- (SBCaptureButtonMCProfileRestriction)initWithCoordinator:(id)a3;
- (void)invalidate;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation SBCaptureButtonMCProfileRestriction

- (SBCaptureButtonMCProfileRestriction)initWithCoordinator:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBCaptureButtonMCProfileRestriction;
  v3 = [(SBCaptureButtonInternalRestrictionGlue *)&v6 initWithCoordinator:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    [v4 registerObserver:v3];
    [(SBCaptureButtonMCProfileRestriction *)v3 profileConnectionDidReceiveEffectiveSettingsChangedNotification:v4 userInfo:0];
  }

  return v3;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = SBCaptureButtonMCProfileRestriction;
  [(SBCaptureButtonInternalRestrictionGlue *)&v4 invalidate];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  if ([a3 isCameraAllowed])
  {

    [(SBCaptureButtonInternalRestrictionGlue *)self relinquishRestriction];
  }

  else
  {

    [(SBCaptureButtonInternalRestrictionGlue *)self acquireRestriction:@"MCProfileConnection isCameraAllowed is false"];
  }
}

@end