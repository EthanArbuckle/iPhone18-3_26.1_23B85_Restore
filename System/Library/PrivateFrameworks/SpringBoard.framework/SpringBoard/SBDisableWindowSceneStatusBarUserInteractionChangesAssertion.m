@interface SBDisableWindowSceneStatusBarUserInteractionChangesAssertion
- (id)_initWithWindowSceneStatusBarAssertionManager:(id)a3 reason:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBDisableWindowSceneStatusBarUserInteractionChangesAssertion

- (id)_initWithWindowSceneStatusBarAssertionManager:(id)a3 reason:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBDisableWindowSceneStatusBarUserInteractionChangesAssertion;
  v4 = [(SBBaseWindowSceneStatusBarChangeAssertion *)&v8 _initWithWindowSceneStatusBarAssertionManager:a3 reason:a4];
  v5 = v4;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(v4 + 2);
    [WeakRetained _addDisableWindowSceneStatusBarUserInteractionChangesAssertion:v5];
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->super._assertionManager);
  [WeakRetained _removeDisableWindowSceneStatusBarUserInteractionChangesAssertion:self];

  v4.receiver = self;
  v4.super_class = SBDisableWindowSceneStatusBarUserInteractionChangesAssertion;
  [(SBDisableWindowSceneStatusBarUserInteractionChangesAssertion *)&v4 dealloc];
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->super._assertionManager);
  [WeakRetained _removeDisableWindowSceneStatusBarUserInteractionChangesAssertion:self];
}

@end