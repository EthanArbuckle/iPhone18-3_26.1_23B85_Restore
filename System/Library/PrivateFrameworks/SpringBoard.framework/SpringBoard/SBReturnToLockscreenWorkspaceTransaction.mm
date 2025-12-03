@interface SBReturnToLockscreenWorkspaceTransaction
- (SBReturnToLockscreenWorkspaceTransaction)initWithTransitionRequest:(id)request toLockScreenEnvironment:(id)environment;
- (id)_setupAnimation;
- (id)debugDescription;
- (void)_animationDidFinish;
- (void)_animationWillBegin:(BOOL)begin;
- (void)_didComplete;
@end

@implementation SBReturnToLockscreenWorkspaceTransaction

- (SBReturnToLockscreenWorkspaceTransaction)initWithTransitionRequest:(id)request toLockScreenEnvironment:(id)environment
{
  requestCopy = request;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = SBReturnToLockscreenWorkspaceTransaction;
  v8 = [(SBActivateAppUnderLockScreenWorkspaceTransaction *)&v15 initWithTransitionRequest:requestCopy lockScreenEnvironment:environmentCopy];
  if (v8)
  {
    applicationContext = [requestCopy applicationContext];
    v10 = [applicationContext previousApplicationSceneEntityForLayoutRole:1];
    fromAppSceneEntity = v8->_fromAppSceneEntity;
    v8->_fromAppSceneEntity = v10;

    v12 = +[SBLockScreenManager sharedInstance];
    if (([v12 isUILocked] & 1) == 0)
    {
      lockScreenEnvironment = [v12 lockScreenEnvironment];

      if (lockScreenEnvironment == environmentCopy)
      {
        [applicationContext setAnimationDisabled:0];
      }
    }
  }

  return v8;
}

- (id)debugDescription
{
  v9.receiver = self;
  v9.super_class = SBReturnToLockscreenWorkspaceTransaction;
  v3 = [(SBReturnToLockscreenWorkspaceTransaction *)&v9 debugDescription];
  v4 = v3;
  fromAppSceneEntity = self->_fromAppSceneEntity;
  if (!fromAppSceneEntity)
  {
    fromAppSceneEntity = @"SpringBoard";
  }

  fromAppSceneEntity = [v3 stringByAppendingFormat:@"\n\tfromApp = %@", fromAppSceneEntity];

  v7 = [fromAppSceneEntity stringByAppendingFormat:@"\n\ttoLockScreen = %@", self->super._lockScreenEnvironment];

  return v7;
}

- (void)_didComplete
{
  v3 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  [v3 updateWhitePointAdaptationStrength];

  v4.receiver = self;
  v4.super_class = SBReturnToLockscreenWorkspaceTransaction;
  [(SBActivateAppUnderLockScreenWorkspaceTransaction *)&v4 _didComplete];
}

- (id)_setupAnimation
{
  v3 = [[SBUIMainScreenAnimationController alloc] initWithTransitionContextProvider:self->super.super.super.super._transitionRequest];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  transitionCoordinator = [(SBUIAnimationController *)v3 transitionCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SBReturnToLockscreenWorkspaceTransaction__setupAnimation__block_invoke;
  v8[3] = &unk_2783BE428;
  v9 = transitionRequest;
  v6 = transitionRequest;
  [transitionCoordinator animateAlongsideTransition:v8 completion:0];

  return v3;
}

void __59__SBReturnToLockscreenWorkspaceTransaction__setupAnimation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  [v4 updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:*(a1 + 32) animationTransitionContext:v3];
}

- (void)_animationWillBegin:(BOOL)begin
{
  if (begin)
  {
    toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v5 = [toApplicationSceneEntities count];

    if (v5)
    {
      self->_animatedAppDeactivation = 1;
      v6 = SBApp;

      [v6 _accessibilityDeactivationAnimationWillBegin];
    }
  }
}

- (void)_animationDidFinish
{
  if (self->_animatedAppDeactivation)
  {
    self->_animatedAppDeactivation = 0;
  }
}

@end