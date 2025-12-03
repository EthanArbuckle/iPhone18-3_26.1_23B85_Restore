@interface SBActivateAppUnderLockScreenWorkspaceTransaction
- (SBActivateAppUnderLockScreenWorkspaceTransaction)initWithTransitionRequest:(id)request lockScreenEnvironment:(id)environment;
- (void)_activateLockScreen;
- (void)_begin;
- (void)_didComplete;
- (void)_setupAndActivate;
- (void)dealloc;
@end

@implementation SBActivateAppUnderLockScreenWorkspaceTransaction

- (SBActivateAppUnderLockScreenWorkspaceTransaction)initWithTransitionRequest:(id)request lockScreenEnvironment:(id)environment
{
  environmentCopy = environment;
  requestCopy = request;
  applicationContext = [requestCopy applicationContext];
  [applicationContext setAnimationDisabled:1];
  v13.receiver = self;
  v13.super_class = SBActivateAppUnderLockScreenWorkspaceTransaction;
  v11 = [(SBToAppsWorkspaceTransaction *)&v13 initWithTransitionRequest:requestCopy];

  if (v11)
  {
    objc_storeStrong(&v11->_lockScreenEnvironment, environment);
    if (!v11->_lockScreenEnvironment)
    {
      [SBActivateAppUnderLockScreenWorkspaceTransaction initWithTransitionRequest:a2 lockScreenEnvironment:v11];
    }
  }

  return v11;
}

- (void)dealloc
{
  [(SBDisableActiveInterfaceOrientationChangeAssertion *)self->_disableActiveOrientationChangeAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBActivateAppUnderLockScreenWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v3 dealloc];
}

- (void)_begin
{
  [(SBActivateAppUnderLockScreenWorkspaceTransaction *)self _activateLockScreen];
  v3.receiver = self;
  v3.super_class = SBActivateAppUnderLockScreenWorkspaceTransaction;
  [(SBActivateAppUnderLockScreenWorkspaceTransaction *)&v3 _begin];
}

- (void)_activateLockScreen
{
  v3 = +[SBLockScreenManager sharedInstance];
  if ([v3 isUILocked])
  {
    [(SBActivateAppUnderLockScreenWorkspaceTransaction *)self _lockScreenDidActivate];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__SBActivateAppUnderLockScreenWorkspaceTransaction__activateLockScreen__block_invoke;
    v4[3] = &unk_2783A9398;
    v4[4] = self;
    [v3 lockUIFromSource:0 withOptions:0 completion:v4];
  }
}

- (void)_setupAndActivate
{
  v3 = [[SBDisableActiveInterfaceOrientationChangeAssertion alloc] initWithReason:@"LaunchUnderLock" nudgeOrientationOnInvalidate:1];
  disableActiveOrientationChangeAssertion = self->_disableActiveOrientationChangeAssertion;
  self->_disableActiveOrientationChangeAssertion = v3;

  [(SBToAppsWorkspaceTransaction *)self activateApplications];
}

- (void)_didComplete
{
  v4.receiver = self;
  v4.super_class = SBActivateAppUnderLockScreenWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v4 _didComplete];
  [(SBDisableActiveInterfaceOrientationChangeAssertion *)self->_disableActiveOrientationChangeAssertion invalidate];
  disableActiveOrientationChangeAssertion = self->_disableActiveOrientationChangeAssertion;
  self->_disableActiveOrientationChangeAssertion = 0;
}

- (void)initWithTransitionRequest:(uint64_t)a1 lockScreenEnvironment:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBActivateAppUnderLockScreenWorkspaceTransaction.m" lineNumber:34 description:@"Must have a lock screen controller provided."];
}

@end