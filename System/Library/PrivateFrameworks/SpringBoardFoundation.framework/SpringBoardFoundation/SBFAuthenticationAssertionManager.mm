@interface SBFAuthenticationAssertionManager
- (BOOL)hasActiveAssertions;
- (BOOL)isAssertionValid:(id)a3;
- (SBFAuthenticationAssertionManager)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)addAssertion:(id)a3;
- (void)dealloc;
- (void)removeAssertion:(id)a3;
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
  v2 = [(SBFAuthenticationAssertionManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFAuthenticationAssertionManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBFAuthenticationAssertionManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SBFAuthenticationAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E807F290;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

- (void)addAssertion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogAuthenticationAssertions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 publicDescription];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "Adding authentication assertion %{public}@", &v9, 0xCu);
  }

  v7 = [v4 type];
  if (v7 == 1)
  {
    v8 = 8;
    goto LABEL_7;
  }

  if (v7 == 2)
  {
    v8 = 16;
LABEL_7:
    [*(&self->super.isa + v8) addAssertion:v4];
  }
}

- (void)removeAssertion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogAuthenticationAssertions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 publicDescription];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "Removed authentication assertion %{public}@", &v9, 0xCu);
  }

  v7 = [v4 type];
  if (v7 == 1)
  {
    v8 = 8;
    goto LABEL_7;
  }

  if (v7 == 2)
  {
    v8 = 16;
LABEL_7:
    [*(&self->super.isa + v8) removeAssertion:v4];
  }
}

- (BOOL)isAssertionValid:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 1)
  {
    v6 = 8;
  }

  else
  {
    if (v5 != 2)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = 16;
  }

  v7 = [*(&self->super.isa + v6) isAssertionValid:v4];
LABEL_7:

  return v7;
}

@end