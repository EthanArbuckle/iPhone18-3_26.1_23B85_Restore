@interface UIApplicationSceneDeactivationAssertion
- (UIApplicationSceneDeactivationAssertion)initWithReason:(int64_t)reason manager:(id)manager;
- (UIApplicationSceneDeactivationManager)manager;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)acquireWithPredicate:(id)predicate transitionContext:(id)context;
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

    manager = [(UIApplicationSceneDeactivationAssertion *)self manager];
    [manager removeAssertion:self];
  }
}

- (void)dealloc
{
  [(UIApplicationSceneDeactivationAssertion *)self relinquish];
  v3.receiver = self;
  v3.super_class = UIApplicationSceneDeactivationAssertion;
  [(UIApplicationSceneDeactivationAssertion *)&v3 dealloc];
}

- (UIApplicationSceneDeactivationAssertion)initWithReason:(int64_t)reason manager:(id)manager
{
  managerCopy = manager;
  if (reason >= 0x14 && reason != 30)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplicationSceneDeactivationAssertion.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"UIApplicationSceneDeactivationReasonIsValid(reason)"}];
  }

  v12.receiver = self;
  v12.super_class = UIApplicationSceneDeactivationAssertion;
  v8 = [(UIApplicationSceneDeactivationAssertion *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_reason = reason;
    objc_storeWeak(&v8->_manager, managerCopy);
  }

  return v9;
}

- (void)acquireWithPredicate:(id)predicate transitionContext:(id)context
{
  if (!self->_acquired)
  {
    self->_acquired = 1;
    contextCopy = context;
    v8 = [predicate copy];
    predicate = self->_predicate;
    self->_predicate = v8;

    manager = [(UIApplicationSceneDeactivationAssertion *)self manager];
    [manager addAssertion:self withTransitionContext:contextCopy];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIApplicationSceneDeactivationAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIApplicationSceneDeactivationAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end