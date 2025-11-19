@interface PBFRuntimeAssertionManager
- (NSString)debugDescription;
- (NSString)description;
- (PBFRuntimeAssertionManager)init;
- (id)_buildRBSAssertionForTarget:(id)a3 assertionIdentifier:(id)a4 explanation:(id)a5 invalidationHandler:(id)a6;
- (id)_stateQueue_debugDescription;
- (id)_stateQueue_debugDescriptionForPosterBoardProcessAssertions;
- (id)_stateQueue_debugDescriptionForPosterExtensionProcessAssertions;
- (id)_stateQueue_debugDescriptionForTarget:(id)a3;
- (id)acquireAssertion:(id)a3 reason:(id)a4 target:(id)a5 invalidationHandler:(id)a6;
- (id)acquirePosterUpdateMemoryAssertionForReason:(id)a3 target:(id)a4 auditToken:(id)a5 posterProviderBundleIdentifier:(id)a6;
- (void)_runningBoardAssertionStateDidUpdate:(id)a3 assertionIdentifier:(id)a4 error:(id)a5;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PBFRuntimeAssertionManager

- (PBFRuntimeAssertionManager)init
{
  v18.receiver = self;
  v18.super_class = PBFRuntimeAssertionManager;
  v2 = [(PBFRuntimeAssertionManager *)&v18 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = Serial;

    v5 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v2->_invalidationFlag;
    v2->_invalidationFlag = v5;

    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateQueue_knownAssertions = v2->_stateQueue_knownAssertions;
    v2->_stateQueue_knownAssertions = v7;

    v9 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    stateQueue_acquistionDateForAssertion = v2->_stateQueue_acquistionDateForAssertion;
    v2->_stateQueue_acquistionDateForAssertion = v9;

    objc_initWeak(&location, v2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    objc_copyWeak(&v16, &location);
    v13 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureSentinel = v2->_stateCaptureSentinel;
    v2->_stateCaptureSentinel = v13;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __34__PBFRuntimeAssertionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateQueue_debugDescription];

  return v2;
}

- (void)dealloc
{
  [(PBFRuntimeAssertionManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBFRuntimeAssertionManager;
  [(PBFRuntimeAssertionManager *)&v3 dealloc];
}

- (id)acquirePosterUpdateMemoryAssertionForReason:(id)a3 target:(id)a4 auditToken:(id)a5 posterProviderBundleIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([a5 hasEntitlement:@"com.apple.posterkit.enhanced-memory-limits"])
  {
    v13 = PFBundleIdentifierRequiresMemoryHogAssertion();
    v14 = MEMORY[0x277D3EBD8];
    if (!v13)
    {
      v14 = MEMORY[0x277D3EBD0];
    }

    v15 = [(PBFRuntimeAssertionManager *)self acquireAssertion:*v14 reason:v10 target:v11 invalidationHandler:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)acquireAssertion:(id)a3 reason:(id)a4 target:(id)a5 invalidationHandler:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v11;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [PBFRuntimeAssertionManager acquireAssertion:a2 reason:? target:? invalidationHandler:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFRuntimeAssertionManager acquireAssertion:a2 reason:? target:? invalidationHandler:?];
  }

  v16 = v12;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [PBFRuntimeAssertionManager acquireAssertion:a2 reason:? target:? invalidationHandler:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFRuntimeAssertionManager acquireAssertion:a2 reason:? target:? invalidationHandler:?];
  }

  v17 = v13;
  NSClassFromString(&cfstr_Rbstarget.isa);
  if (!v17)
  {
    [PBFRuntimeAssertionManager acquireAssertion:a2 reason:? target:? invalidationHandler:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFRuntimeAssertionManager acquireAssertion:a2 reason:? target:? invalidationHandler:?];
  }

  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v18 = 0;
  }

  else
  {
    v19 = PBFLogRuntime();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v35 = v15;
      v36 = 2114;
      v37 = v16;
      v38 = 2114;
      v39 = v17;
      _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "acquireAssertion:'%{public}@' reason:'%{public}@' target:'%{public}@'", buf, 0x20u);
    }

    v20 = [(PBFRuntimeAssertionManager *)self _buildRBSAssertionForTarget:v17 assertionIdentifier:v15 explanation:v16 invalidationHandler:v14];
    v33 = 0;
    v21 = [v20 acquireWithError:&v33];
    v22 = v33;
    v23 = PBFLogRuntime();
    v24 = v23;
    if (v21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v35 = v15;
        v36 = 2114;
        v37 = v16;
        v38 = 2114;
        v39 = v17;
        v40 = 2114;
        v41 = v22;
        _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "SUCCESS acquireAssertion:'%{public}@' reason:'%{public}@' target:'%{public}@': %{public}@", buf, 0x2Au);
      }

      stateQueue = self->_stateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__PBFRuntimeAssertionManager_acquireAssertion_reason_target_invalidationHandler___block_invoke;
      block[3] = &unk_2782C58B0;
      block[4] = self;
      v18 = v20;
      v32 = v18;
      dispatch_async(stateQueue, block);
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v35 = v15;
        v36 = 2114;
        v37 = v16;
        v38 = 2114;
        v39 = v17;
        v40 = 2114;
        v41 = v22;
        _os_log_error_impl(&dword_21B526000, v24, OS_LOG_TYPE_ERROR, "FAILED acquireAssertion:'%{public}@' reason:'%{public}@' target:'%{public}@': %{public}@", buf, 0x2Au);
      }

      if (v14)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFRuntimeAssertionManager acquireAssertion:reason:target:invalidationHandler:]"];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __81__PBFRuntimeAssertionManager_acquireAssertion_reason_target_invalidationHandler___block_invoke_33;
        v28[3] = &unk_2782C6310;
        v30 = v14;
        v29 = v22;
        PBFDispatchAsyncWithString(v26, QOS_CLASS_USER_INTERACTIVE, v28);
      }

      v18 = 0;
    }
  }

  return v18;
}

void __81__PBFRuntimeAssertionManager_acquireAssertion_reason_target_invalidationHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    [(BSInvalidatable *)self->_stateCaptureSentinel invalidate];
    stateCaptureSentinel = self->_stateCaptureSentinel;
    self->_stateCaptureSentinel = 0;

    v4 = self->_stateQueue_knownAssertions;
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PBFRuntimeAssertionManager_invalidate__block_invoke;
    block[3] = &unk_2782C5888;
    v8 = v4;
    v6 = v4;
    dispatch_async(stateQueue, block);
  }
}

void __40__PBFRuntimeAssertionManager_invalidate__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) copy];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)_buildRBSAssertionForTarget:(id)a3 assertionIdentifier:(id)a4 explanation:(id)a5 invalidationHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v11;
  NSClassFromString(&cfstr_Rbstarget.isa);
  if (!v15)
  {
    [PBFRuntimeAssertionManager _buildRBSAssertionForTarget:a2 assertionIdentifier:? explanation:? invalidationHandler:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFRuntimeAssertionManager _buildRBSAssertionForTarget:a2 assertionIdentifier:? explanation:? invalidationHandler:?];
  }

  v16 = v12;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [PBFRuntimeAssertionManager _buildRBSAssertionForTarget:a2 assertionIdentifier:? explanation:? invalidationHandler:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFRuntimeAssertionManager _buildRBSAssertionForTarget:a2 assertionIdentifier:? explanation:? invalidationHandler:?];
  }

  objc_initWeak(&location, self);
  v17 = [MEMORY[0x277D46DB8] pf_assertionForTarget:v15 assertionIdentifier:v16 explanation:v13 invalidationHandler:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __110__PBFRuntimeAssertionManager__buildRBSAssertionForTarget_assertionIdentifier_explanation_invalidationHandler___block_invoke;
  v21[3] = &unk_2782C8E60;
  objc_copyWeak(&v24, &location);
  v18 = v16;
  v22 = v18;
  v19 = v14;
  v23 = v19;
  [v17 setInvalidationHandler:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v17;
}

void __110__PBFRuntimeAssertionManager__buildRBSAssertionForTarget_assertionIdentifier_explanation_invalidationHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _runningBoardAssertionStateDidUpdate:v9 assertionIdentifier:*(a1 + 32) error:v5];
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v5);
    }
  }
}

- (void)_runningBoardAssertionStateDidUpdate:(id)a3 assertionIdentifier:(id)a4 error:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PBFLogRuntime();
  v12 = v11;
  if (v10)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = [v8 target];
    *buf = 138544130;
    v18 = v9;
    v19 = 2114;
    v20 = v13;
    v21 = 1024;
    v22 = [v8 isValid];
    v23 = 2114;
    v24 = v10;
    _os_log_error_impl(&dword_21B526000, v12, OS_LOG_TYPE_ERROR, "_runningBoardAssertionStateDidUpdate:'%{public}@' target:'%{public}@' isActive:%{BOOL}u error: %{public}@", buf, 0x26u);
  }

  else
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = [v8 target];
    *buf = 138544130;
    v18 = v9;
    v19 = 2114;
    v20 = v13;
    v21 = 1024;
    v22 = [v8 isValid];
    v23 = 2114;
    v24 = 0;
    _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "_runningBoardAssertionStateDidUpdate:'%{public}@' target:'%{public}@' isActive:%{BOOL}u error: %{public}@", buf, 0x26u);
  }

LABEL_7:
  if (([v8 isValid] & 1) == 0)
  {
    stateQueue = self->_stateQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__PBFRuntimeAssertionManager__runningBoardAssertionStateDidUpdate_assertionIdentifier_error___block_invoke;
    v15[3] = &unk_2782C58B0;
    v15[4] = self;
    v16 = v8;
    dispatch_async(stateQueue, v15);
  }
}

uint64_t __93__PBFRuntimeAssertionManager__runningBoardAssertionStateDidUpdate_assertionIdentifier_error___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);

  return [v3 removeObjectForKey:v2];
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PBFRuntimeAssertionManager_description__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__PBFRuntimeAssertionManager_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateQueue_debugDescription];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)debugDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PBFRuntimeAssertionManager_debugDescription__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__PBFRuntimeAssertionManager_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateQueue_debugDescription];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_stateQueue_debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(PBFRuntimeAssertionManager *)self _stateQueue_debugDescriptionForPosterBoardProcessAssertions];
  [v3 appendDictionarySection:v4 withName:@"PosterBoard Assertions" multilinePrefix:@"\n\t\t" skipIfEmpty:1];

  v5 = [(PBFRuntimeAssertionManager *)self _stateQueue_debugDescriptionForPosterExtensionProcessAssertions];
  [v3 appendDictionarySection:v5 withName:@"Poster Extension Assertions" multilinePrefix:@"\n\t\t" skipIfEmpty:1];

  v6 = [v3 build];

  return v6;
}

- (id)_stateQueue_debugDescriptionForPosterBoardProcessAssertions
{
  v3 = [MEMORY[0x277D47008] currentProcess];
  v4 = [(PBFRuntimeAssertionManager *)self _stateQueue_debugDescriptionForTarget:v3];

  return v4;
}

- (id)_stateQueue_debugDescriptionForPosterExtensionProcessAssertions
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D47008] currentProcess];
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_stateQueue_knownAssertions;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v25 + 1) + 8 * i) target];
        [v4 addObject:v10];
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  [v4 removeObject:v3];
  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        v18 = [(PBFRuntimeAssertionManager *)self _stateQueue_debugDescriptionForTarget:v17, v21];
        v19 = [v17 description];
        [v11 bs_setSafeObject:v18 forKey:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)_stateQueue_debugDescriptionForTarget:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v31 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = self->_stateQueue_knownAssertions;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 target];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v14 = [(NSMapTable *)self->_stateQueue_acquistionDateForAssertion objectForKey:v11];
          if (v14)
          {
            [v5 addObject:v14];
            v15 = [v11 explanation];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = @"@(NULL)";
            }

            [v31 addObject:v17];
          }
        }
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  if ([v5 count] == 1)
  {
    v18 = [v5 anyObject];
  }

  else
  {
    v19 = [v5 allObjects];
    v20 = [v19 sortedArrayUsingSelector:sel_compare_];
    v18 = [v20 firstObject];
  }

  if (v18)
  {
    if ([v31 count] == 1)
    {
      v21 = [v31 anyObject];
    }

    else if ([v31 count])
    {
      v23 = [v31 allObjects];
      v24 = [v23 sortedArrayUsingSelector:sel_compare_];
      v25 = [v24 componentsJoinedByString:{@"', '"}];

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v25];
    }

    else
    {
      v21 = @"(null)";
    }

    if (v21)
    {
      v26 = v21;
    }

    else
    {
      v26 = @"(null)";
    }

    v36[0] = @"explanations";
    v36[1] = @"creationDate";
    v37[0] = v26;
    v37[1] = v18;
    v36[2] = @"elapsedTimeInSeconds";
    v27 = MEMORY[0x277CCABB0];
    v28 = [MEMORY[0x277CBEAA8] date];
    [v28 timeIntervalSinceDate:v18];
    v29 = [v27 numberWithDouble:?];
    v37[2] = v29;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)acquireAssertion:(char *)a1 reason:target:invalidationHandler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireAssertion:(char *)a1 reason:target:invalidationHandler:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireAssertion:(char *)a1 reason:target:invalidationHandler:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:RBSTargetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireAssertion:(char *)a1 reason:target:invalidationHandler:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireAssertion:(char *)a1 reason:target:invalidationHandler:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireAssertion:(char *)a1 reason:target:invalidationHandler:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_buildRBSAssertionForTarget:(char *)a1 assertionIdentifier:explanation:invalidationHandler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:RBSTargetClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_buildRBSAssertionForTarget:(char *)a1 assertionIdentifier:explanation:invalidationHandler:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_buildRBSAssertionForTarget:(char *)a1 assertionIdentifier:explanation:invalidationHandler:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_buildRBSAssertionForTarget:(char *)a1 assertionIdentifier:explanation:invalidationHandler:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end