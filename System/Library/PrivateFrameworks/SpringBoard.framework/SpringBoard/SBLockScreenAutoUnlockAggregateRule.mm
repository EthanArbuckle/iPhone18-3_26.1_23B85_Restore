@interface SBLockScreenAutoUnlockAggregateRule
- (BOOL)shouldAutoUnlockForSource:(int)a3;
- (SBLockScreenAutoUnlockAggregateRule)initWithUserAuthenticationController:(id)a3;
- (id)_initWithUserAuthenticationController:(id)a3 syncController:(id)a4;
@end

@implementation SBLockScreenAutoUnlockAggregateRule

- (SBLockScreenAutoUnlockAggregateRule)initWithUserAuthenticationController:(id)a3
{
  v4 = a3;
  v5 = +[SBSyncController sharedInstance];
  v6 = [(SBLockScreenAutoUnlockAggregateRule *)self _initWithUserAuthenticationController:v4 syncController:v5];

  return v6;
}

- (id)_initWithUserAuthenticationController:(id)a3 syncController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBLockScreenAutoUnlockAggregateRule;
  v9 = [(SBAutoUnlockComposableRule *)&v12 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_userAuthenticationController, a3);
    objc_storeStrong(p_isa + 3, a4);
  }

  return p_isa;
}

- (BOOL)shouldAutoUnlockForSource:(int)a3
{
  v3 = *&a3;
  v5 = [(SBFUserAuthenticationController *)self->_userAuthenticationController isAuthenticated];
  if (v5)
  {
    v6 = [(SBLockScreenAutoUnlockAggregateRule *)self _syncController];
    v7 = [v6 isInUse];

    if (v7)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = SBLockScreenAutoUnlockAggregateRule;
      LOBYTE(v5) = [(SBAutoUnlockComposableRule *)&v9 shouldAutoUnlockForSource:v3];
    }
  }

  return v5;
}

@end