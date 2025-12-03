@interface SBFAuthenticationAssertionManager
- (BOOL)hasActiveAssertions;
- (BOOL)isAssertionValid:(id)valid;
- (SBFAuthenticationAssertionManager)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)addAssertion:(id)assertion;
- (void)dealloc;
- (void)removeAssertion:(id)assertion;
@end

@implementation SBFAuthenticationAssertionManager

- (BOOL)hasActiveAssertions
{
  if ([(SBFAuthenticationAssertionTracker *)self->_preventLockTracker hasActiveAssertions])
  {
    return 1;
  }

  transientTracker = self->_transientTracker;

  return [(SBFAuthenticationAssertionTracker *)transientTracker hasActiveAssertions];
}

- (SBFAuthenticationAssertionManager)init
{
  v13.receiver = self;
  v13.super_class = SBFAuthenticationAssertionManager;
  v2 = [(SBFAuthenticationAssertionManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBFPasscodeLockTrackerForPreventLockAssertions);
    preventLockTracker = v2->_preventLockTracker;
    v2->_preventLockTracker = &v3->super;

    v5 = objc_alloc_init(SBFPasscodeLockTrackerForTransientAssertions);
    transientTracker = v2->_transientTracker;
    v2->_transientTracker = &v5->super;

    objc_initWeak(&location, v2);
    v7 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v11, &location);
    v8 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureToken = v2->_stateCaptureToken;
    v2->_stateCaptureToken = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __41__SBFAuthenticationAssertionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionWithMultilinePrefix:0];

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3.receiver = self;
  v3.super_class = SBFAuthenticationAssertionManager;
  [(SBFAuthenticationAssertionManager *)&v3 dealloc];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFAuthenticationAssertionManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFAuthenticationAssertionManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFAuthenticationAssertionManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SBFAuthenticationAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E807F290;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (void)addAssertion:(id)assertion
{
  v11 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = SBLogAuthenticationAssertions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    publicDescription = [assertionCopy publicDescription];
    v9 = 138543362;
    v10 = publicDescription;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "Adding authentication assertion %{public}@", &v9, 0xCu);
  }

  type = [assertionCopy type];
  if (type == 1)
  {
    v8 = 8;
    goto LABEL_7;
  }

  if (type == 2)
  {
    v8 = 16;
LABEL_7:
    [*(&self->super.isa + v8) addAssertion:assertionCopy];
  }
}

- (void)removeAssertion:(id)assertion
{
  v11 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = SBLogAuthenticationAssertions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    publicDescription = [assertionCopy publicDescription];
    v9 = 138543362;
    v10 = publicDescription;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "Removed authentication assertion %{public}@", &v9, 0xCu);
  }

  type = [assertionCopy type];
  if (type == 1)
  {
    v8 = 8;
    goto LABEL_7;
  }

  if (type == 2)
  {
    v8 = 16;
LABEL_7:
    [*(&self->super.isa + v8) removeAssertion:assertionCopy];
  }
}

- (BOOL)isAssertionValid:(id)valid
{
  validCopy = valid;
  type = [validCopy type];
  if (type == 1)
  {
    v6 = 8;
  }

  else
  {
    if (type != 2)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = 16;
  }

  v7 = [*(&self->super.isa + v6) isAssertionValid:validCopy];
LABEL_7:

  return v7;
}

@end