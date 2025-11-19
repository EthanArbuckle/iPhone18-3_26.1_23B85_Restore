@interface SBAppExitedWorkspaceTransaction
- (void)_begin;
- (void)_didComplete;
@end

@implementation SBAppExitedWorkspaceTransaction

- (void)_begin
{
  v3.receiver = self;
  v3.super_class = SBAppExitedWorkspaceTransaction;
  [(SBAppExitedWorkspaceTransaction *)&v3 _begin];
  [(SBToAppsWorkspaceTransaction *)self activateApplications];
}

- (void)_didComplete
{
  v3 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  [v3 updateWhitePointAdaptationStrength];

  [SBApp updateNativeOrientationAnimated:1 logMessage:{@"App exited, interface orientation may need to be updated."}];
  v4.receiver = self;
  v4.super_class = SBAppExitedWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v4 _didComplete];
}

@end