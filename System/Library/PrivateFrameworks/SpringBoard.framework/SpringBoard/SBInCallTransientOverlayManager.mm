@interface SBInCallTransientOverlayManager
- (id)_newAlertDefinition;
- (void)presentTransientOverlay;
- (void)presentTransientOverlayForActivityContinuationWithActivityIdentifier:(id)identifier;
- (void)presentTransientOverlayForUILock;
@end

@implementation SBInCallTransientOverlayManager

- (void)presentTransientOverlay
{
  _newAlertDefinition = [(SBInCallTransientOverlayManager *)self _newAlertDefinition];
  _remoteTransientOverlaySessionManager = [(SBInCallTransientOverlayManager *)self _remoteTransientOverlaySessionManager];
  v4 = [_remoteTransientOverlaySessionManager sessionWithDefinition:_newAlertDefinition options:0];
  v5 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v4 prepareWithConfigurationContext:v5];
  v6 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [v4 activateWithContext:v6];
}

- (void)presentTransientOverlayForActivityContinuationWithActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _newAlertDefinition = [(SBInCallTransientOverlayManager *)self _newAlertDefinition];
  _remoteTransientOverlaySessionManager = [(SBInCallTransientOverlayManager *)self _remoteTransientOverlaySessionManager];
  v6 = [_remoteTransientOverlaySessionManager sessionWithDefinition:_newAlertDefinition options:0];
  v7 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v6 prepareWithConfigurationContext:v7];
  v8 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [v8 setActivityContinuationIdentifier:identifierCopy];

  [v6 activateWithContext:v8];
}

- (void)presentTransientOverlayForUILock
{
  _newAlertDefinition = [(SBInCallTransientOverlayManager *)self _newAlertDefinition];
  _remoteTransientOverlaySessionManager = [(SBInCallTransientOverlayManager *)self _remoteTransientOverlaySessionManager];
  v5 = [_remoteTransientOverlaySessionManager sessionWithDefinition:_newAlertDefinition options:0];
  v6 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v5 prepareWithConfigurationContext:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SBInCallTransientOverlayManager_presentTransientOverlayForUILock__block_invoke;
  v8[3] = &unk_2783AFAB8;
  v9 = v5;
  v7 = v5;
  [v7 getActionForHandlingButtonEvents:1 completion:v8];
}

void __67__SBInCallTransientOverlayManager_presentTransientOverlayForUILock__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [v3 setReason:*MEMORY[0x277D67FA0]];
  if (v5)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:v5];
    [v3 setActions:v4];
  }

  [*(a1 + 32) activateWithContext:v3];
}

- (id)_newAlertDefinition
{
  v2 = objc_alloc(MEMORY[0x277D66BD8]);
  v3 = TUInCallRemoteAlertViewControllerClassName();
  v4 = [v2 initWithServiceName:@"com.apple.InCallService" viewControllerClassName:v3];

  return v4;
}

@end