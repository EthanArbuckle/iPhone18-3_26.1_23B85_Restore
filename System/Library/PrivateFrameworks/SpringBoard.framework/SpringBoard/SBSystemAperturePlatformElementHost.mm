@interface SBSystemAperturePlatformElementHost
- (SAInvalidatable)requiredPriorityAssertion;
- (SAInvalidatable)urgentAndImportantAssertion;
- (SBSystemAperturePlatformElementHost)initWithElement:(id)element delegate:(id)delegate;
- (id)_requiredPriorityAssertionWithReason:(id)reason creatingIfNecessary:(BOOL)necessary;
- (id)_urgencyAssertionWithReason:(id)reason creatingIfNecessary:(BOOL)necessary;
- (id)elementRequestsPersistentAnimationOfType:(int64_t)type;
- (id)requestRequiredPriorityAssertionWithReason:(id)reason;
- (id)requestUrgentAndImportantPriorityWithReason:(id)reason;
- (void)elementRequestsDiscreteAnimationOfType:(int64_t)type;
- (void)performAction:(id)action withCompletionUponAnimationSettling:(id)settling;
- (void)performAction:(id)action withCompletionUponIndicatorSettling:(id)settling;
@end

@implementation SBSystemAperturePlatformElementHost

- (SAInvalidatable)urgentAndImportantAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_urgentAndImportantAssertion);

  return WeakRetained;
}

- (SBSystemAperturePlatformElementHost)initWithElement:(id)element delegate:(id)delegate
{
  elementCopy = element;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = SBSystemAperturePlatformElementHost;
  v8 = [(SBSystemAperturePlatformElementHost *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_element, elementCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v9;
}

- (void)elementRequestsDiscreteAnimationOfType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_loadWeakRetained(&self->_element);
  [WeakRetained element:v5 requestsDiscreteAnimationOfType:type];
}

- (id)elementRequestsPersistentAnimationOfType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_loadWeakRetained(&self->_element);
  v7 = [WeakRetained element:v6 requestsPersistentAnimationOfType:type];

  return v7;
}

- (void)performAction:(id)action withCompletionUponAnimationSettling:(id)settling
{
  settlingCopy = settling;
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performAction:actionCopy withCompletionUponAnimationSettling:settlingCopy];
}

- (void)performAction:(id)action withCompletionUponIndicatorSettling:(id)settling
{
  settlingCopy = settling;
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performAction:actionCopy withCompletionUponIndicatorSettling:settlingCopy];
}

- (id)requestUrgentAndImportantPriorityWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_urgentAndImportantAssertion);
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
    v10 = [(SBSystemAperturePlatformElementHost *)selfCopy _urgencyAssertionWithReason:reasonCopy creatingIfNecessary:1];
    objc_initWeak(&location, selfCopy);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__SBSystemAperturePlatformElementHost_requestUrgentAndImportantPriorityWithReason___block_invoke;
    v13[3] = &unk_2783ABE60;
    objc_copyWeak(&v14, &location);
    v13[4] = selfCopy;
    [v10 addInvalidationBlock:v13];
    objc_storeWeak(&selfCopy->_urgentAndImportantAssertion, v10);
    v11 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v11 invalidateElementUrgencyPreferences];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

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

- (id)_urgencyAssertionWithReason:(id)reason creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v30 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_element);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMapTable *)selfCopy->_reasonsToUrgencyAssertions objectForKey:reasonCopy];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !necessaryCopy;
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
      v27 = reasonCopy;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Created urgency assertion (%{public}@) with reason '%{public}@' for element: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, selfCopy);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __87__SBSystemAperturePlatformElementHost__urgencyAssertionWithReason_creatingIfNecessary___block_invoke;
    v21 = &unk_2783ABE60;
    objc_copyWeak(&v23, buf);
    v13 = reasonCopy;
    v22 = v13;
    [v9 addInvalidationBlock:&v18];
    reasonsToUrgencyAssertions = selfCopy->_reasonsToUrgencyAssertions;
    if (!reasonsToUrgencyAssertions)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v16 = selfCopy->_reasonsToUrgencyAssertions;
      selfCopy->_reasonsToUrgencyAssertions = strongToWeakObjectsMapTable;

      reasonsToUrgencyAssertions = selfCopy->_reasonsToUrgencyAssertions;
    }

    [(NSMapTable *)reasonsToUrgencyAssertions setObject:v9 forKey:v13, v18, v19, v20, v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(selfCopy);

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

- (id)requestRequiredPriorityAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_element);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_loadWeakRetained(&selfCopy->_requiredPriorityAssertion);
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
    v11 = [(SBSystemAperturePlatformElementHost *)selfCopy _requiredPriorityAssertionWithReason:reasonCopy creatingIfNecessary:1];
    objc_initWeak(&location, selfCopy);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__SBSystemAperturePlatformElementHost_requestRequiredPriorityAssertionWithReason___block_invoke;
    v14[3] = &unk_2783BC290;
    objc_copyWeak(&v18, &location);
    v15 = reasonCopy;
    v16 = WeakRetained;
    v17 = selfCopy;
    [v11 addInvalidationBlock:v14];
    objc_storeWeak(&selfCopy->_requiredPriorityAssertion, v11);
    v12 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v12 invalidateElementUrgencyPreferences];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

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

- (id)_requiredPriorityAssertionWithReason:(id)reason creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v30 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_element);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMapTable *)selfCopy->_reasonsToRequiredPriorityAssertions objectForKey:reasonCopy];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !necessaryCopy;
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
      v27 = reasonCopy;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Created required priority assertion (%{public}@) with reason '%{public}@' for element: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, selfCopy);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __96__SBSystemAperturePlatformElementHost__requiredPriorityAssertionWithReason_creatingIfNecessary___block_invoke;
    v21 = &unk_2783ABE60;
    objc_copyWeak(&v23, buf);
    v13 = reasonCopy;
    v22 = v13;
    [v9 addInvalidationBlock:&v18];
    reasonsToRequiredPriorityAssertions = selfCopy->_reasonsToRequiredPriorityAssertions;
    if (!reasonsToRequiredPriorityAssertions)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v16 = selfCopy->_reasonsToRequiredPriorityAssertions;
      selfCopy->_reasonsToRequiredPriorityAssertions = strongToWeakObjectsMapTable;

      reasonsToRequiredPriorityAssertions = selfCopy->_reasonsToRequiredPriorityAssertions;
    }

    [(NSMapTable *)reasonsToRequiredPriorityAssertions setObject:v9 forKey:v13, v18, v19, v20, v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(selfCopy);

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