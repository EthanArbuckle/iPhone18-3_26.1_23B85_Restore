@interface UIApplicationSceneDeactivationAssertion
- (UIApplicationSceneDeactivationAssertion)initWithReason:(int64_t)a3 manager:(id)a4;
- (UIApplicationSceneDeactivationManager)manager;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)acquireWithPredicate:(id)a3 transitionContext:(id)a4;
- (void)dealloc;
- (void)relinquish;
@end

@implementation UIApplicationSceneDeactivationAssertion

- (UIApplicationSceneDeactivationManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = UIApplicationSceneDeactivationReasonDescription(self->_reason);
  v5 = [v3 appendObject:v4 withName:@"reason"];

  v6 = [v3 appendObject:@"all scene levels" withName:0];
  v7 = [v3 appendBool:self->_predicate != 0 withName:@"hasPredicate"];

  return v3;
}

- (void)relinquish
{
  if (self->_acquired)
  {
    self->_acquired = 0;
    predicate = self->_predicate;
    self->_predicate = 0;

    v5 = [(UIApplicationSceneDeactivationAssertion *)self manager];
    [v5 removeAssertion:self];
  }
}

- (void)dealloc
{
  [(UIApplicationSceneDeactivationAssertion *)self relinquish];
  v3.receiver = self;
  v3.super_class = UIApplicationSceneDeactivationAssertion;
  [(UIApplicationSceneDeactivationAssertion *)&v3 dealloc];
}

- (UIApplicationSceneDeactivationAssertion)initWithReason:(int64_t)a3 manager:(id)a4
{
  v7 = a4;
  if (a3 >= 0x14 && a3 != 30)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIApplicationSceneDeactivationAssertion.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"UIApplicationSceneDeactivationReasonIsValid(reason)"}];
  }

  v12.receiver = self;
  v12.super_class = UIApplicationSceneDeactivationAssertion;
  v8 = [(UIApplicationSceneDeactivationAssertion *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_reason = a3;
    objc_storeWeak(&v8->_manager, v7);
  }

  return v9;
}

- (void)acquireWithPredicate:(id)a3 transitionContext:(id)a4
{
  if (!self->_acquired)
  {
    self->_acquired = 1;
    v7 = a4;
    v8 = [a3 copy];
    predicate = self->_predicate;
    self->_predicate = v8;

    v10 = [(UIApplicationSceneDeactivationAssertion *)self manager];
    [v10 addAssertion:self withTransitionContext:v7];
  }
}

- (id)succinctDescription
{
  v2 = [(UIApplicationSceneDeactivationAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIApplicationSceneDeactivationAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end