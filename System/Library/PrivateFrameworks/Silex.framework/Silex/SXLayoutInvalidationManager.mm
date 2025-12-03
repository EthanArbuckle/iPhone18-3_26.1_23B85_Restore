@interface SXLayoutInvalidationManager
- (SXLayoutInvalidationManager)initWithBlueprintProvider:(id)provider;
- (SXLayoutInvalidationManagerDelegate)delegate;
- (id)invalidateComponent:(id)component;
- (id)invalidateComponent:(id)component invalidation:(id)invalidation priority:(unint64_t)priority;
- (id)invalidateComponent:(id)component state:(id)state;
- (id)invalidateComponent:(id)component state:(id)state priority:(unint64_t)priority;
- (id)invalidateComponent:(id)component state:(id)state suggestedSize:(CGSize)size;
- (id)invalidateComponent:(id)component state:(id)state suggestedSize:(CGSize)size priority:(unint64_t)priority;
- (id)invalidateComponent:(id)component suggestedSize:(CGSize)size;
- (id)invalidateComponent:(id)component suggestedSize:(CGSize)size priority:(unint64_t)priority;
- (void)cancelPendingInvalidationForComponent:(id)component;
- (void)invalidateQueuedComponents;
- (void)mightInvalidateComponent:(id)component;
@end

@implementation SXLayoutInvalidationManager

- (SXLayoutInvalidationManager)initWithBlueprintProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = SXLayoutInvalidationManager;
  v6 = [(SXLayoutInvalidationManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutBlueprintProvider, provider);
    array = [MEMORY[0x1E695DF70] array];
    possibleInvalidations = v7->_possibleInvalidations;
    v7->_possibleInvalidations = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pendingInvalidations = v7->_pendingInvalidations;
    v7->_pendingInvalidations = dictionary;
  }

  return v7;
}

- (void)mightInvalidateComponent:(id)component
{
  v12 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  v5 = SXInvalidationLog;
  if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [componentCopy identifier];
    v10 = 138543362;
    v11 = identifier;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Might invalidate component, identifier=%{public}@", &v10, 0xCu);
  }

  possibleInvalidations = [(SXLayoutInvalidationManager *)self possibleInvalidations];
  identifier2 = [componentCopy identifier];
  [possibleInvalidations addObject:identifier2];
}

- (void)cancelPendingInvalidationForComponent:(id)component
{
  v25 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  v5 = SXInvalidationLog;
  if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [componentCopy identifier];
    v23 = 138543362;
    v24 = identifier;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Cancel possible invalidation for component, identifier=%{public}@", &v23, 0xCu);
  }

  possibleInvalidations = [(SXLayoutInvalidationManager *)self possibleInvalidations];
  identifier2 = [componentCopy identifier];
  [possibleInvalidations removeObject:identifier2];

  pendingInvalidations = [(SXLayoutInvalidationManager *)self pendingInvalidations];
  identifier3 = [componentCopy identifier];
  v12 = [pendingInvalidations objectForKey:identifier3];

  if (v12)
  {
    v13 = SXInvalidationLog;
    if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      identifier4 = [componentCopy identifier];
      v23 = 138543362;
      v24 = identifier4;
      _os_log_impl(&dword_1D825C000, v14, OS_LOG_TYPE_DEFAULT, "Cancel pending invalidation for component, identifier=%{public}@", &v23, 0xCu);
    }

    pendingPromise = [v12 pendingPromise];
    reject = [pendingPromise reject];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SXLayoutInvalidatorErrorDomain" code:1 userInfo:0];
    (reject)[2](reject, v18);

    pendingInvalidations2 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
    identifier5 = [componentCopy identifier];
    [pendingInvalidations2 removeObjectForKey:identifier5];
  }

  possibleInvalidations2 = [(SXLayoutInvalidationManager *)self possibleInvalidations];
  v22 = [possibleInvalidations2 count];

  if (!v22)
  {
    [(SXLayoutInvalidationManager *)self invalidateQueuedComponents];
  }
}

- (id)invalidateComponent:(id)component
{
  componentCopy = component;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SXLayoutInvalidationManager_invalidateComponent___block_invoke;
  v8[3] = &unk_1E8501D88;
  v9 = componentCopy;
  v5 = componentCopy;
  v6 = [(SXLayoutInvalidationManager *)self invalidateComponent:v5 invalidation:v8 priority:0];

  return v6;
}

void __51__SXLayoutInvalidationManager_invalidateComponent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  [v3 invalidateSizeForComponentWithIdentifier:v4 suggestedSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
}

- (id)invalidateComponent:(id)component state:(id)state
{
  componentCopy = component;
  stateCopy = state;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__SXLayoutInvalidationManager_invalidateComponent_state___block_invoke;
  v12[3] = &unk_1E8501DB0;
  v13 = stateCopy;
  v14 = componentCopy;
  v8 = componentCopy;
  v9 = stateCopy;
  v10 = [(SXLayoutInvalidationManager *)self invalidateComponent:v8 invalidation:v12 priority:0];

  return v10;
}

void __57__SXLayoutInvalidationManager_invalidateComponent_state___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 invalidateState:v2 forComponentWithIdentifier:v5];
}

- (id)invalidateComponent:(id)component state:(id)state priority:(unint64_t)priority
{
  componentCopy = component;
  stateCopy = state;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__SXLayoutInvalidationManager_invalidateComponent_state_priority___block_invoke;
  v14[3] = &unk_1E8501DB0;
  v15 = stateCopy;
  v16 = componentCopy;
  v10 = componentCopy;
  v11 = stateCopy;
  v12 = [(SXLayoutInvalidationManager *)self invalidateComponent:v10 invalidation:v14 priority:priority];

  return v12;
}

void __66__SXLayoutInvalidationManager_invalidateComponent_state_priority___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 invalidateState:v2 forComponentWithIdentifier:v5];
}

- (id)invalidateComponent:(id)component suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  componentCopy = component;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__SXLayoutInvalidationManager_invalidateComponent_suggestedSize___block_invoke;
  v11[3] = &unk_1E8501DD8;
  v12 = componentCopy;
  v13 = width;
  v14 = height;
  v8 = componentCopy;
  v9 = [(SXLayoutInvalidationManager *)self invalidateComponent:v8 invalidation:v11 priority:0];

  return v9;
}

void __65__SXLayoutInvalidationManager_invalidateComponent_suggestedSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 invalidateSizeForComponentWithIdentifier:v5 suggestedSize:{*(a1 + 40), *(a1 + 48)}];
}

- (id)invalidateComponent:(id)component state:(id)state suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  componentCopy = component;
  stateCopy = state;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__SXLayoutInvalidationManager_invalidateComponent_state_suggestedSize___block_invoke;
  v15[3] = &unk_1E8501E00;
  v16 = stateCopy;
  v17 = componentCopy;
  v18 = width;
  v19 = height;
  v11 = componentCopy;
  v12 = stateCopy;
  v13 = [(SXLayoutInvalidationManager *)self invalidateComponent:v11 invalidation:v15 priority:0];

  return v13;
}

void __71__SXLayoutInvalidationManager_invalidateComponent_state_suggestedSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 identifier];
  [v5 invalidateState:v3 forComponentWithIdentifier:v6];

  v7 = [*(a1 + 40) identifier];
  [v5 invalidateSizeForComponentWithIdentifier:v7 suggestedSize:{*(a1 + 48), *(a1 + 56)}];
}

- (id)invalidateComponent:(id)component suggestedSize:(CGSize)size priority:(unint64_t)priority
{
  height = size.height;
  width = size.width;
  componentCopy = component;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__SXLayoutInvalidationManager_invalidateComponent_suggestedSize_priority___block_invoke;
  v13[3] = &unk_1E8501DD8;
  v14 = componentCopy;
  v15 = width;
  v16 = height;
  v10 = componentCopy;
  v11 = [(SXLayoutInvalidationManager *)self invalidateComponent:v10 invalidation:v13 priority:priority];

  return v11;
}

void __74__SXLayoutInvalidationManager_invalidateComponent_suggestedSize_priority___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 invalidateSizeForComponentWithIdentifier:v5 suggestedSize:{*(a1 + 40), *(a1 + 48)}];
}

- (id)invalidateComponent:(id)component state:(id)state suggestedSize:(CGSize)size priority:(unint64_t)priority
{
  height = size.height;
  width = size.width;
  v35 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  stateCopy = state;
  v13 = SXInvalidationLog;
  if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [componentCopy identifier];
    v37.width = width;
    v37.height = height;
    v16 = NSStringFromCGSize(v37);
    identifier2 = [stateCopy identifier];
    *buf = 138544130;
    v28 = identifier;
    v29 = 2114;
    v30 = v16;
    v31 = 2114;
    v32 = identifier2;
    v33 = 2048;
    priorityCopy = priority;
    _os_log_impl(&dword_1D825C000, v14, OS_LOG_TYPE_DEFAULT, "Queuing invalidation of component, identifier=%{public}@, suggested-size=%{public}@, state=%{public}@ priority=%lu", buf, 0x2Au);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__SXLayoutInvalidationManager_invalidateComponent_state_suggestedSize_priority___block_invoke;
  v22[3] = &unk_1E8501E00;
  v23 = stateCopy;
  v24 = componentCopy;
  v25 = width;
  v26 = height;
  v18 = componentCopy;
  v19 = stateCopy;
  v20 = [(SXLayoutInvalidationManager *)self invalidateComponent:v18 invalidation:v22 priority:priority];

  return v20;
}

void __80__SXLayoutInvalidationManager_invalidateComponent_state_suggestedSize_priority___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 identifier];
  [v5 invalidateState:v3 forComponentWithIdentifier:v6];

  v7 = [*(a1 + 40) identifier];
  [v5 invalidateSizeForComponentWithIdentifier:v7 suggestedSize:{*(a1 + 48), *(a1 + 56)}];
}

- (id)invalidateComponent:(id)component invalidation:(id)invalidation priority:(unint64_t)priority
{
  componentCopy = component;
  invalidationCopy = invalidation;
  layoutBlueprintProvider = [(SXLayoutInvalidationManager *)self layoutBlueprintProvider];
  blueprint = [layoutBlueprintProvider blueprint];

  if (blueprint)
  {
    [(SXLayoutInvalidationManager *)self cancelPendingInvalidationForComponent:componentCopy];
    v12 = objc_alloc_init(MEMORY[0x1E69B68F0]);
    v13 = [SXPendingLayoutInvalidation alloc];
    layoutOptions = [blueprint layoutOptions];
    v15 = [(SXPendingLayoutInvalidation *)v13 initWithComponent:componentCopy pendingPromise:v12 layoutOptions:layoutOptions invalidation:invalidationCopy];

    pendingInvalidations = [(SXLayoutInvalidationManager *)self pendingInvalidations];
    identifier = [componentCopy identifier];
    [pendingInvalidations setObject:v15 forKey:identifier];

    if (priority == 1 || (-[SXLayoutInvalidationManager possibleInvalidations](self, "possibleInvalidations"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, !v19))
    {
      [(SXLayoutInvalidationManager *)self invalidateQueuedComponents];
    }

    else if (![(SXLayoutInvalidationManager *)self invalidationDispatched])
    {
      v20 = SXInvalidationLog;
      if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D825C000, v20, OS_LOG_TYPE_DEFAULT, "Dispatching invalidation for queued components", buf, 2u);
      }

      [(SXLayoutInvalidationManager *)self setInvalidationDispatched:1];
      v21 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__SXLayoutInvalidationManager_invalidateComponent_invalidation_priority___block_invoke;
      block[3] = &unk_1E84FED18;
      block[4] = self;
      dispatch_after(v21, MEMORY[0x1E69E96A0], block);
    }

    promise = [v12 promise];
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E69B68F8]);
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SXLayoutInvalidatorErrorDomain" code:2 userInfo:0];
    promise = [v23 initWithError:v12];
  }

  return promise;
}

uint64_t __73__SXLayoutInvalidationManager_invalidateComponent_invalidation_priority___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInvalidationDispatched:0];
  v2 = *(a1 + 32);

  return [v2 invalidateQueuedComponents];
}

- (void)invalidateQueuedComponents
{
  pendingInvalidations = [(SXLayoutInvalidationManager *)self pendingInvalidations];
  v4 = [pendingInvalidations count];

  if (v4)
  {
    layoutBlueprintProvider = [(SXLayoutInvalidationManager *)self layoutBlueprintProvider];
    blueprint = [layoutBlueprintProvider blueprint];

    pendingInvalidations2 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__SXLayoutInvalidationManager_invalidateQueuedComponents__block_invoke;
    v11[3] = &unk_1E8501E28;
    v12 = blueprint;
    v8 = blueprint;
    [pendingInvalidations2 enumerateKeysAndObjectsUsingBlock:v11];

    pendingInvalidations3 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
    [pendingInvalidations3 removeAllObjects];

    delegate = [(SXLayoutInvalidationManager *)self delegate];
    [delegate layoutInvalidationManager:self didInvalidateBlueprint:v8];
  }
}

void __57__SXLayoutInvalidationManager_invalidateQueuedComponents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 layoutOptions];
  v8 = [*(a1 + 32) layoutOptions];
  v9 = [v7 isEqual:v8];

  v10 = SXInvalidationLog;
  v11 = os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Invalidate component layout, identifier=%{public}@", &v18, 0xCu);
    }

    v12 = [*(a1 + 32) componentBlueprintForComponentIdentifier:v5 includeChildren:1];
    if (v12)
    {
      v13 = [v6 invalidation];
      v14 = [v12 parentLayoutBlueprint];
      (v13)[2](v13, v14);

      v15 = [v6 pendingPromise];
      v16 = [v15 resolve];
      v17 = objc_alloc_init(MEMORY[0x1E69B6928]);
      v16[2](v16, v17);
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SXLayoutInvalidatorErrorDomain" code:2 userInfo:0];
      v16 = [v6 pendingPromise];
      v17 = [v16 reject];
      v17[2](v17, v15);
    }
  }

  else
  {
    if (v11)
    {
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Rejecting invalidation of component. Layout options do not match. identifier=%{public}@", &v18, 0xCu);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SXLayoutInvalidatorErrorDomain" code:2 userInfo:0];
    v15 = [v6 pendingPromise];
    v16 = [v15 reject];
    (v16)[2](v16, v12);
  }
}

- (SXLayoutInvalidationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end