@interface HDSHAccessibilityAssertionManager
- (BOOL)shouldBeObservingContentProtectionState;
- (HDAssertion)accessibilityAssertion;
- (HDSHAccessibilityAssertionManager)initWithProfile:(id)a3;
- (void)_queue_takeAccessibilityAssertion;
- (void)_restoreContentProtectionObservingState;
- (void)beginObservingContentProtectionState;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)dealloc;
- (void)invalidateAccessibilityAssertion;
- (void)profileDidBecomeReady:(id)a3;
- (void)setShouldBeObservingContentProtectionState:(BOOL)a3;
- (void)stopObservingContentProtectionState;
@end

@implementation HDSHAccessibilityAssertionManager

- (HDSHAccessibilityAssertionManager)initWithProfile:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDSHAccessibilityAssertionManager;
  v5 = [(HDSHAccessibilityAssertionManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v6 = *&v8[4];
    _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] profileDidBecomeReady", v8, 0xCu);
  }

  [(HDSHAccessibilityAssertionManager *)self _restoreContentProtectionObservingState];
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldBeObservingContentProtectionState
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 initWithCategory:0 domainName:@"SleepTracking" profile:WeakRetained];

  v16 = 0;
  v6 = [v5 dateForKey:@"SleepTrackingSessionStartDate" error:&v16];
  v7 = v16;
  if (v7)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      v12 = objc_opt_class();
      *buf = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v7;
      v13 = v12;
      _os_log_error_impl(&dword_269C02000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] failed to read observing protection state key: %{public}@", buf, 0x16u);

      if (v6)
      {
        goto LABEL_4;
      }

LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_4:
  [v6 timeIntervalSinceNow];
  v10 = v9 > -86400.0;
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)setShouldBeObservingContentProtectionState:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 initWithCategory:0 domainName:@"SleepTracking" profile:WeakRetained];

  if (v3)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    v8 = 0;
  }

  v16 = 0;
  v9 = [v7 setDate:v8 forKey:@"SleepTrackingSessionStartDate" error:&v16];
  v10 = v16;
  if (v3)
  {
  }

  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      v14 = objc_opt_class();
      *buf = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v10;
      v15 = v14;
      _os_log_error_impl(&dword_269C02000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] failed to set observing protection state key: %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_restoreContentProtectionObservingState
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HDSHAccessibilityAssertionManager *)self shouldBeObservingContentProtectionState])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v10 = 138543362;
      v11 = objc_opt_class();
      v5 = v11;
      _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] should be observing content protection state", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v7 = [WeakRetained daemon];
    v8 = [v7 contentProtectionManager];
    [v8 addContentProtectionObserver:self withQueue:self->_queue];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)beginObservingContentProtectionState
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v10 = 138543362;
    *&v10[4] = objc_opt_class();
    v5 = *&v10[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] beginObservingContentProtectionState", v10, 0xCu);
  }

  [(HDSHAccessibilityAssertionManager *)self setShouldBeObservingContentProtectionState:1, *v10];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained daemon];
  v8 = [v7 contentProtectionManager];
  [v8 addContentProtectionObserver:self withQueue:self->_queue];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingContentProtectionState
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v10 = 138543362;
    *&v10[4] = objc_opt_class();
    v5 = *&v10[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopObservingContentProtectionState", v10, 0xCu);
  }

  [(HDSHAccessibilityAssertionManager *)self setShouldBeObservingContentProtectionState:0, *v10];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained daemon];
  v8 = [v7 contentProtectionManager];
  [v8 removeContentProtectionObserver:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAccessibilityAssertion
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidateAccessibilityAssertion", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDSHAccessibilityAssertionManager_invalidateAccessibilityAssertion__block_invoke;
  block[3] = &unk_279C830E0;
  block[4] = self;
  dispatch_sync(queue, block);
  v7 = *MEMORY[0x277D85DE8];
}

void __69__HDSHAccessibilityAssertionManager_invalidateAccessibilityAssertion__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (HDAssertion)accessibilityAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HDSHAccessibilityAssertionManager_accessibilityAssertion__block_invoke;
  v5[3] = &unk_279C83108;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (a3 == 3 && [(HDSHAccessibilityAssertionManager *)self shouldBeObservingContentProtectionState])
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *v10 = 138543362;
      *&v10[4] = objc_opt_class();
      v8 = *&v10[4];
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] database is locking, taking assertion", v10, 0xCu);
    }

    [(HDSHAccessibilityAssertionManager *)self _queue_takeAccessibilityAssertion];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_takeAccessibilityAssertion
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCC320];
  if (self->_accessibilityAssertion)
  {
    _HKInitializeLogging();
    v4 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      *buf = 138543362;
      v21 = objc_opt_class();
      v6 = v21;
      _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidating existing assertion", buf, 0xCu);
    }

    [(HDAssertion *)self->_accessibilityAssertion invalidate];
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v19 = 0;
  v11 = [v8 takeAccessibilityAssertionWithOwnerIdentifier:v10 timeout:&v19 error:600.0];
  v12 = v19;
  accessibilityAssertion = self->_accessibilityAssertion;
  self->_accessibilityAssertion = v11;

  if (!self->_accessibilityAssertion)
  {
    _HKInitializeLogging();
    v14 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v16 = v14;
      v17 = objc_opt_class();
      *buf = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v12;
      v18 = v17;
      _os_log_error_impl(&dword_269C02000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] failed to take assertion with error: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(HDAssertion *)self->_accessibilityAssertion invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 contentProtectionManager];
  [v5 removeContentProtectionObserver:self];

  v6.receiver = self;
  v6.super_class = HDSHAccessibilityAssertionManager;
  [(HDSHAccessibilityAssertionManager *)&v6 dealloc];
}

@end