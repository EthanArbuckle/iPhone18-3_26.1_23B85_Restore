@interface SBDisableWindowSceneStatusBarAlphaChangesAssertion
- (id)_initWithWindowSceneStatusBarAssertionManager:(id)a3 reason:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBDisableWindowSceneStatusBarAlphaChangesAssertion

- (id)_initWithWindowSceneStatusBarAssertionManager:(id)a3 reason:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBDisableWindowSceneStatusBarAlphaChangesAssertion;
  v7 = [(SBBaseWindowSceneStatusBarChangeAssertion *)&v9 _initWithWindowSceneStatusBarAssertionManager:v6 reason:a4];
  if (v7)
  {
    [v6 _addDisableWindowSceneStatusBarAlphaChangesAssertion:v7];
  }

  return v7;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->super._assertionManager);
  [WeakRetained _removeDisableWindowSceneStatusBarAlphaChangesAssertion:self];

  v4.receiver = self;
  v4.super_class = SBDisableWindowSceneStatusBarAlphaChangesAssertion;
  [(SBDisableWindowSceneStatusBarAlphaChangesAssertion *)&v4 dealloc];
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->super._assertionManager);
  [WeakRetained _removeDisableWindowSceneStatusBarAlphaChangesAssertion:self];
}

@end