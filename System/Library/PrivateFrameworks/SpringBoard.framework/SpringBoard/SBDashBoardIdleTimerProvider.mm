@interface SBDashBoardIdleTimerProvider
- (SBDashBoardIdleTimerProvider)initWithDelegate:(id)delegate;
- (SBDashBoardIdleTimerProviderDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)effectiveIdleTimerBehavior;
- (id)succinctDescription;
- (void)_proposeEffectiveIdleTimerBehaviorForReason:(id)reason;
- (void)_proposeIdleTimerBehavior:(id)behavior forReason:(id)reason;
- (void)addDisabledIdleTimerAssertionReason:(id)reason;
- (void)dealloc;
- (void)idleTimerDidExpire:(id)expire;
- (void)idleTimerDidRefresh:(id)refresh;
- (void)idleTimerDidWarn:(id)warn;
- (void)removeDisabledIdleTimerAssertionReason:(id)reason;
- (void)resetIdleTimer;
- (void)setIdleTimer:(id)timer;
- (void)updateIdleTimerWithIdleDimProvider:(id)provider reason:(id)reason;
@end

@implementation SBDashBoardIdleTimerProvider

- (id)effectiveIdleTimerBehavior
{
  if ([(SBDashBoardIdleTimerProvider *)self isIdleTimerEnabled]&& self->_idleTimerProvider)
  {
    v3 = [(SBDashBoardIdleTimerProvider *)self _copyIdleTimerBehaviorForBehaviorProvider:?];
  }

  else
  {
    v3 = +[SBIdleTimerBehavior disabledBehavior];
  }

  return v3;
}

- (void)resetIdleTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained idleTimerWillRefresh:self];

  idleTimer = self->_idleTimer;

  [(SBIdleTimer *)idleTimer reset];
}

- (SBDashBoardIdleTimerProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = SBDashBoardIdleTimerProvider;
  v5 = [(SBDashBoardIdleTimerProvider *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    idleTimer = v6->_idleTimer;
    v6->_idleTimer = 0;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    disabledIdleTimerAssertions = v6->_disabledIdleTimerAssertions;
    v6->_disabledIdleTimerAssertions = v8;

    objc_initWeak(&location, v6);
    v10 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v14, &location);
    v11 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureAssertion = v6->_stateCaptureAssertion;
    v6->_stateCaptureAssertion = v11;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __49__SBDashBoardIdleTimerProvider_initWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionBuilderWithMultilinePrefix:&stru_283094718];
  v3 = [v2 build];

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBDashBoardIdleTimerProvider;
  [(SBDashBoardIdleTimerProvider *)&v3 dealloc];
}

- (void)setIdleTimer:(id)timer
{
  timerCopy = timer;
  [(SBIdleTimer *)self->_idleTimer removeIdleTimerObserver:self];
  idleTimer = self->_idleTimer;
  self->_idleTimer = timerCopy;
  v6 = timerCopy;

  [(SBIdleTimer *)v6 addIdleTimerObserver:self];
}

- (void)updateIdleTimerWithIdleDimProvider:(id)provider reason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  reasonCopy = reason;
  p_idleTimerProvider = &self->_idleTimerProvider;
  idleTimerDuration = [(SBFIdleTimerBehaviorProviding *)self->_idleTimerProvider idleTimerDuration];
  if (idleTimerDuration != [providerCopy idleTimerDuration] || (v11 = -[SBFIdleTimerBehaviorProviding idleWarnMode](*p_idleTimerProvider, "idleWarnMode"), v11 != objc_msgSend(providerCopy, "idleWarnMode")) || (v12 = -[SBFIdleTimerBehaviorProviding idleTimerMode](*p_idleTimerProvider, "idleTimerMode"), v12 != objc_msgSend(providerCopy, "idleTimerMode")))
  {
    objc_storeStrong(&self->_idleTimerProvider, provider);
    isIdleTimerEnabled = [(SBDashBoardIdleTimerProvider *)self isIdleTimerEnabled];
    v14 = SBLogIdleTimer();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (isIdleTimerEnabled)
    {
      if (v15)
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v20 = 138543618;
        v21 = v17;
        v22 = 2114;
        v23 = reasonCopy;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating idle timer for reason: %{public}@", &v20, 0x16u);
      }

      v14 = [(SBDashBoardIdleTimerProvider *)self _copyIdleTimerBehaviorForBehaviorProvider:providerCopy];
      [(SBDashBoardIdleTimerProvider *)self _proposeIdleTimerBehavior:v14 forReason:reasonCopy];
    }

    else if (v15)
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = 138543618;
      v21 = v19;
      v22 = 2114;
      v23 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating idle timer for reason: %{public}@ (but not active)", &v20, 0x16u);
    }
  }
}

- (void)addDisabledIdleTimerAssertionReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([(NSMutableSet *)self->_disabledIdleTimerAssertions containsObject:reasonCopy])
  {
    v5 = SBLogIdleTimer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = reasonCopy;
      v8 = "%{public}@ - Skipping add disabled reason: %{public}@ as it already exist in _disabledIdleTimerAssertion";
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v8, &v14, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = [(NSMutableSet *)self->_disabledIdleTimerAssertions count];
  [(NSMutableSet *)self->_disabledIdleTimerAssertions addObject:reasonCopy];
  v5 = SBLogIdleTimer();
  v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      v7 = NSStringFromClass(v11);
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = reasonCopy;
      v8 = "%{public}@ - Added idle timer disabled reason: %{public}@";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v10)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = 138543618;
    v15 = v13;
    v16 = 2114;
    v17 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Disabling idle timer for reason: %{public}@", &v14, 0x16u);
  }

  [(SBDashBoardIdleTimerProvider *)self _proposeEffectiveIdleTimerBehaviorForReason:reasonCopy];
LABEL_9:
}

- (void)removeDisabledIdleTimerAssertionReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (([(NSMutableSet *)self->_disabledIdleTimerAssertions containsObject:reasonCopy]& 1) == 0)
  {
    v7 = SBLogIdleTimer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = reasonCopy;
      v13 = "%{public}@ - Skipping remove disabled reason: %{public}@ as it doesn't exist in _disabledIdleTimerAssertions";
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v13, &v15, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  v5 = [(NSMutableSet *)self->_disabledIdleTimerAssertions count];
  [(NSMutableSet *)self->_disabledIdleTimerAssertions removeObject:reasonCopy];
  v6 = [(NSMutableSet *)self->_disabledIdleTimerAssertions count];
  v7 = SBLogIdleTimer();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5 || v6)
  {
    if (v8)
    {
      v14 = objc_opt_class();
      v12 = NSStringFromClass(v14);
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = reasonCopy;
      v13 = "%{public}@ - Removed idle timer disabled reason: %{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v15 = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Reenabling idle timer as last reason removed: %{public}@", &v15, 0x16u);
  }

  [(SBDashBoardIdleTimerProvider *)self _proposeEffectiveIdleTimerBehaviorForReason:reasonCopy];
LABEL_13:
}

- (void)idleTimerDidRefresh:(id)refresh
{
  v13 = *MEMORY[0x277D85DE8];
  refreshCopy = refresh;
  if ([(SBDashBoardIdleTimerProvider *)self isIdleTimerEnabled]&& self->_idleTimer == refreshCopy)
  {
    v5 = SBLogIdleTimer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = refreshCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%{public}@ - Idle timer refreshed %{public}@", &v9, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained idleTimerDidRefresh:self];
  }
}

- (void)idleTimerDidExpire:(id)expire
{
  v13 = *MEMORY[0x277D85DE8];
  expireCopy = expire;
  if ([(SBDashBoardIdleTimerProvider *)self isIdleTimerEnabled]&& self->_idleTimer == expireCopy)
  {
    v5 = SBLogIdleTimer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = expireCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%{public}@ - Idle timer expired %{public}@", &v9, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained idleTimerDidExpire:self];
  }
}

- (void)idleTimerDidWarn:(id)warn
{
  v13 = *MEMORY[0x277D85DE8];
  warnCopy = warn;
  if ([(SBDashBoardIdleTimerProvider *)self isIdleTimerEnabled]&& self->_idleTimer == warnCopy)
  {
    v5 = SBLogIdleTimer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = warnCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%{public}@ - Idle timer warned %{public}@", &v9, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained idleTimerDidWarn:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDashBoardIdleTimerProvider *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDashBoardIdleTimerProvider *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBDashBoardIdleTimerProvider *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__SBDashBoardIdleTimerProvider_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __70__SBDashBoardIdleTimerProvider_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 32) allObjects];
  [*(a1 + 40) appendArraySection:v3 withName:@"DisabledAssertions" skipIfEmpty:0];
  v2 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 8) withName:@"IdleTimer"];
}

- (void)_proposeEffectiveIdleTimerBehaviorForReason:(id)reason
{
  reasonCopy = reason;
  effectiveIdleTimerBehavior = [(SBDashBoardIdleTimerProvider *)self effectiveIdleTimerBehavior];
  [(SBDashBoardIdleTimerProvider *)self _proposeIdleTimerBehavior:effectiveIdleTimerBehavior forReason:reasonCopy];
}

- (void)_proposeIdleTimerBehavior:(id)behavior forReason:(id)reason
{
  reasonCopy = reason;
  behaviorCopy = behavior;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained dashBoardIdleTimerProvider:self didProposeBehavior:behaviorCopy reason:reasonCopy];

  [(SBDashBoardIdleTimerProvider *)self setIdleTimer:v9];
}

- (SBDashBoardIdleTimerProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end