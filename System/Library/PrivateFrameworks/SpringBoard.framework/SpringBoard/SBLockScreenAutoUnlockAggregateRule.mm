@interface SBLockScreenAutoUnlockAggregateRule
- (BOOL)shouldAutoUnlockForSource:(int)source;
- (SBLockScreenAutoUnlockAggregateRule)initWithUserAuthenticationController:(id)controller;
- (id)_initWithUserAuthenticationController:(id)controller syncController:(id)syncController;
@end

@implementation SBLockScreenAutoUnlockAggregateRule

- (SBLockScreenAutoUnlockAggregateRule)initWithUserAuthenticationController:(id)controller
{
  controllerCopy = controller;
  v5 = +[SBSyncController sharedInstance];
  v6 = [(SBLockScreenAutoUnlockAggregateRule *)self _initWithUserAuthenticationController:controllerCopy syncController:v5];

  return v6;
}

- (id)_initWithUserAuthenticationController:(id)controller syncController:(id)syncController
{
  controllerCopy = controller;
  syncControllerCopy = syncController;
  v12.receiver = self;
  v12.super_class = SBLockScreenAutoUnlockAggregateRule;
  v9 = [(SBAutoUnlockComposableRule *)&v12 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_userAuthenticationController, controller);
    objc_storeStrong(p_isa + 3, syncController);
  }

  return p_isa;
}

- (BOOL)shouldAutoUnlockForSource:(int)source
{
  v3 = *&source;
  isAuthenticated = [(SBFUserAuthenticationController *)self->_userAuthenticationController isAuthenticated];
  if (isAuthenticated)
  {
    _syncController = [(SBLockScreenAutoUnlockAggregateRule *)self _syncController];
    isInUse = [_syncController isInUse];

    if (isInUse)
    {
      LOBYTE(isAuthenticated) = 0;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = SBLockScreenAutoUnlockAggregateRule;
      LOBYTE(isAuthenticated) = [(SBAutoUnlockComposableRule *)&v9 shouldAutoUnlockForSource:v3];
    }
  }

  return isAuthenticated;
}

@end