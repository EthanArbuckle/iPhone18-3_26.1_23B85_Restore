@interface SBDisableWindowSceneStatusBarUserInteractionChangesAssertion
- (id)_initWithWindowSceneStatusBarAssertionManager:(id)manager reason:(id)reason;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBDisableWindowSceneStatusBarUserInteractionChangesAssertion

- (id)_initWithWindowSceneStatusBarAssertionManager:(id)manager reason:(id)reason
{
  v8.receiver = self;
  v8.super_class = SBDisableWindowSceneStatusBarUserInteractionChangesAssertion;
  v4 = [(SBBaseWindowSceneStatusBarChangeAssertion *)&v8 _initWithWindowSceneStatusBarAssertionManager:manager reason:reason];
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