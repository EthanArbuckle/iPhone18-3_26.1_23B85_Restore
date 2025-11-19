@interface SBSystemAperturePlatformElementHost
- (SAInvalidatable)requiredPriorityAssertion;
- (SAInvalidatable)urgentAndImportantAssertion;
- (SBSystemAperturePlatformElementHost)initWithElement:(id)a3 delegate:(id)a4;
- (id)_requiredPriorityAssertionWithReason:(id)a3 creatingIfNecessary:(BOOL)a4;
- (id)_urgencyAssertionWithReason:(id)a3 creatingIfNecessary:(BOOL)a4;
- (id)elementRequestsPersistentAnimationOfType:(int64_t)a3;
- (id)requestRequiredPriorityAssertionWithReason:(id)a3;
- (id)requestUrgentAndImportantPriorityWithReason:(id)a3;
- (void)elementRequestsDiscreteAnimationOfType:(int64_t)a3;
- (void)performAction:(id)a3 withCompletionUponAnimationSettling:(id)a4;
- (void)performAction:(id)a3 withCompletionUponIndicatorSettling:(id)a4;
@end

@implementation SBSystemAperturePlatformElementHost

- (SAInvalidatable)urgentAndImportantAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_urgentAndImportantAssertion);

  return WeakRetained;
}

- (SBSystemAperturePlatformElementHost)initWithElement:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBSystemAperturePlatformElementHost;
  v8 = [(SBSystemAperturePlatformElementHost *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_element, v6);
    objc_storeWeak(&v9->_delegate, v7);
  }

  return v9;
}

- (void)elementRequestsDiscreteAnimationOfType:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_loadWeakRetained(&self->_element);
  [WeakRetained element:v5 requestsDiscreteAnimationOfType:a3];
}

- (id)elementRequestsPersistentAnimationOfType:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_loadWeakRetained(&self->_element);
  v7 = [WeakRetained element:v6 requestsPersistentAnimationOfType:a3];

  return v7;
}

- (void)performAction:(id)a3 withCompletionUponAnimationSettling:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performAction:v7 withCompletionUponAnimationSettling:v6];
}

- (void)performAction:(id)a3 withCompletionUponIndicatorSettling:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performAction:v7 withCompletionUponIndicatorSettling:v6];
}

- (id)requestUrgentAndImportantPriorityWithReason:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  WeakRetained = objc_loadWeakRetained(&v5->_urgentAndImportantAssertion);
  v7 = objc_opt_class();
  v8 = WeakRetained;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    v10 = [(SBSystemAperturePlatformElementHost *)v5 _urgencyAssertionWithReason:v4 creatingIfNecessary:1];
    objc_initWeak(&location, v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__SBSystemAperturePlatformElementHost_requestUrgentAndImportantPriorityWithReason___block_invoke;
    v13[3] = &unk_2783ABE60;
    objc_copyWeak(&v14, &location);
    v13[4] = v5;
    [v10 addInvalidationBlock:v13];
    objc_storeWeak(&v5->_urgentAndImportantAssertion, v10);
    v11 = objc_loadWeakRetained(&v5->_delegate);
    [v11 invalidateElementUrgencyPreferences];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v5);

  return v10;
}

void __83__SBSystemAperturePlatformElementHost_requestUrgentAndImportantPriorityWithReason___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 5);

    if (v5 == v7)
    {
      objc_storeWeak(v4 + 5, 0);
      v6 = objc_loadWeakRetained((*(a1 + 32) + 32));
      [v6 invalidateElementUrgencyPreferences];
    }
  }
}

- (id)_urgencyAssertionWithReason:(id)a3 creatingIfNecessary:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_element);
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)v8->_reasonsToUrgencyAssertions objectForKey:v6];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (!v10)
  {
    v9 = objc_alloc_init(MEMORY[0x277D6B898]);
    v11 = SBLogSystemApertureController();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x223D6CED0](WeakRetained);
      *buf = 138543874;
      v25 = v9;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Created urgency assertion (%{public}@) with reason '%{public}@' for element: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, v8);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __87__SBSystemAperturePlatformElementHost__urgencyAssertionWithReason_creatingIfNecessary___block_invoke;
    v21 = &unk_2783ABE60;
    objc_copyWeak(&v23, buf);
    v13 = v6;
    v22 = v13;
    [v9 addInvalidationBlock:&v18];
    reasonsToUrgencyAssertions = v8->_reasonsToUrgencyAssertions;
    if (!reasonsToUrgencyAssertions)
    {
      v15 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v16 = v8->_reasonsToUrgencyAssertions;
      v8->_reasonsToUrgencyAssertions = v15;

      reasonsToUrgencyAssertions = v8->_reasonsToUrgencyAssertions;
    }

    [(NSMapTable *)reasonsToUrgencyAssertions setObject:v9 forKey:v13, v18, v19, v20, v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v8);

  return v9;
}

void __87__SBSystemAperturePlatformElementHost__urgencyAssertionWithReason_creatingIfNecessary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] removeObjectForKey:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)requestRequiredPriorityAssertionWithReason:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_element);
  v6 = self;
  objc_sync_enter(v6);
  v7 = objc_loadWeakRetained(&v6->_requiredPriorityAssertion);
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v11 = [(SBSystemAperturePlatformElementHost *)v6 _requiredPriorityAssertionWithReason:v4 creatingIfNecessary:1];
    objc_initWeak(&location, v6);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__SBSystemAperturePlatformElementHost_requestRequiredPriorityAssertionWithReason___block_invoke;
    v14[3] = &unk_2783BC290;
    objc_copyWeak(&v18, &location);
    v15 = v4;
    v16 = WeakRetained;
    v17 = v6;
    [v11 addInvalidationBlock:v14];
    objc_storeWeak(&v6->_requiredPriorityAssertion, v11);
    v12 = objc_loadWeakRetained(&v6->_delegate);
    [v12 invalidateElementUrgencyPreferences];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v6);

  return v11;
}

void __82__SBSystemAperturePlatformElementHost_requestRequiredPriorityAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 6);

    if (v6 == v3)
    {
      v7 = SBLogSystemApertureController();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = MEMORY[0x223D6CED0](*(a1 + 40));
        v11 = 138543874;
        v12 = v3;
        v13 = 2114;
        v14 = v8;
        v15 = 2114;
        v16 = v9;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Invalidating required priority assertion (%{public}@) with reason '%{public}@' for element: %{public}@", &v11, 0x20u);
      }

      objc_storeWeak(v5 + 6, 0);
      v10 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v10 invalidateElementUrgencyPreferences];
    }
  }
}

- (id)_requiredPriorityAssertionWithReason:(id)a3 creatingIfNecessary:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_element);
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)v8->_reasonsToRequiredPriorityAssertions objectForKey:v6];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (!v10)
  {
    v9 = objc_alloc_init(MEMORY[0x277D6B898]);
    v11 = SBLogSystemApertureController();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x223D6CED0](WeakRetained);
      *buf = 138543874;
      v25 = v9;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Created required priority assertion (%{public}@) with reason '%{public}@' for element: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, v8);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __96__SBSystemAperturePlatformElementHost__requiredPriorityAssertionWithReason_creatingIfNecessary___block_invoke;
    v21 = &unk_2783ABE60;
    objc_copyWeak(&v23, buf);
    v13 = v6;
    v22 = v13;
    [v9 addInvalidationBlock:&v18];
    reasonsToRequiredPriorityAssertions = v8->_reasonsToRequiredPriorityAssertions;
    if (!reasonsToRequiredPriorityAssertions)
    {
      v15 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v16 = v8->_reasonsToRequiredPriorityAssertions;
      v8->_reasonsToRequiredPriorityAssertions = v15;

      reasonsToRequiredPriorityAssertions = v8->_reasonsToRequiredPriorityAssertions;
    }

    [(NSMapTable *)reasonsToRequiredPriorityAssertions setObject:v9 forKey:v13, v18, v19, v20, v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v8);

  return v9;
}

void __96__SBSystemAperturePlatformElementHost__requiredPriorityAssertionWithReason_creatingIfNecessary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] removeObjectForKey:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (SAInvalidatable)requiredPriorityAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_requiredPriorityAssertion);

  return WeakRetained;
}

@end