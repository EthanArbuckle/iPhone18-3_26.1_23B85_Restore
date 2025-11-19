@interface SXLayoutInvalidationManager
- (SXLayoutInvalidationManager)initWithBlueprintProvider:(id)a3;
- (SXLayoutInvalidationManagerDelegate)delegate;
- (id)invalidateComponent:(id)a3;
- (id)invalidateComponent:(id)a3 invalidation:(id)a4 priority:(unint64_t)a5;
- (id)invalidateComponent:(id)a3 state:(id)a4;
- (id)invalidateComponent:(id)a3 state:(id)a4 priority:(unint64_t)a5;
- (id)invalidateComponent:(id)a3 state:(id)a4 suggestedSize:(CGSize)a5;
- (id)invalidateComponent:(id)a3 state:(id)a4 suggestedSize:(CGSize)a5 priority:(unint64_t)a6;
- (id)invalidateComponent:(id)a3 suggestedSize:(CGSize)a4;
- (id)invalidateComponent:(id)a3 suggestedSize:(CGSize)a4 priority:(unint64_t)a5;
- (void)cancelPendingInvalidationForComponent:(id)a3;
- (void)invalidateQueuedComponents;
- (void)mightInvalidateComponent:(id)a3;
@end

@implementation SXLayoutInvalidationManager

- (SXLayoutInvalidationManager)initWithBlueprintProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SXLayoutInvalidationManager;
  v6 = [(SXLayoutInvalidationManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutBlueprintProvider, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    possibleInvalidations = v7->_possibleInvalidations;
    v7->_possibleInvalidations = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    pendingInvalidations = v7->_pendingInvalidations;
    v7->_pendingInvalidations = v10;
  }

  return v7;
}

- (void)mightInvalidateComponent:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SXInvalidationLog;
  if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 identifier];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Might invalidate component, identifier=%{public}@", &v10, 0xCu);
  }

  v8 = [(SXLayoutInvalidationManager *)self possibleInvalidations];
  v9 = [v4 identifier];
  [v8 addObject:v9];
}

- (void)cancelPendingInvalidationForComponent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SXInvalidationLog;
  if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 identifier];
    v23 = 138543362;
    v24 = v7;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Cancel possible invalidation for component, identifier=%{public}@", &v23, 0xCu);
  }

  v8 = [(SXLayoutInvalidationManager *)self possibleInvalidations];
  v9 = [v4 identifier];
  [v8 removeObject:v9];

  v10 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
  v11 = [v4 identifier];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    v13 = SXInvalidationLog;
    if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v4 identifier];
      v23 = 138543362;
      v24 = v15;
      _os_log_impl(&dword_1D825C000, v14, OS_LOG_TYPE_DEFAULT, "Cancel pending invalidation for component, identifier=%{public}@", &v23, 0xCu);
    }

    v16 = [v12 pendingPromise];
    v17 = [v16 reject];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SXLayoutInvalidatorErrorDomain" code:1 userInfo:0];
    (v17)[2](v17, v18);

    v19 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
    v20 = [v4 identifier];
    [v19 removeObjectForKey:v20];
  }

  v21 = [(SXLayoutInvalidationManager *)self possibleInvalidations];
  v22 = [v21 count];

  if (!v22)
  {
    [(SXLayoutInvalidationManager *)self invalidateQueuedComponents];
  }
}

- (id)invalidateComponent:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SXLayoutInvalidationManager_invalidateComponent___block_invoke;
  v8[3] = &unk_1E8501D88;
  v9 = v4;
  v5 = v4;
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

- (id)invalidateComponent:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__SXLayoutInvalidationManager_invalidateComponent_state___block_invoke;
  v12[3] = &unk_1E8501DB0;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
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

- (id)invalidateComponent:(id)a3 state:(id)a4 priority:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__SXLayoutInvalidationManager_invalidateComponent_state_priority___block_invoke;
  v14[3] = &unk_1E8501DB0;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  v11 = v9;
  v12 = [(SXLayoutInvalidationManager *)self invalidateComponent:v10 invalidation:v14 priority:a5];

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

- (id)invalidateComponent:(id)a3 suggestedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__SXLayoutInvalidationManager_invalidateComponent_suggestedSize___block_invoke;
  v11[3] = &unk_1E8501DD8;
  v12 = v7;
  v13 = width;
  v14 = height;
  v8 = v7;
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

- (id)invalidateComponent:(id)a3 state:(id)a4 suggestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__SXLayoutInvalidationManager_invalidateComponent_state_suggestedSize___block_invoke;
  v15[3] = &unk_1E8501E00;
  v16 = v10;
  v17 = v9;
  v18 = width;
  v19 = height;
  v11 = v9;
  v12 = v10;
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

- (id)invalidateComponent:(id)a3 suggestedSize:(CGSize)a4 priority:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__SXLayoutInvalidationManager_invalidateComponent_suggestedSize_priority___block_invoke;
  v13[3] = &unk_1E8501DD8;
  v14 = v9;
  v15 = width;
  v16 = height;
  v10 = v9;
  v11 = [(SXLayoutInvalidationManager *)self invalidateComponent:v10 invalidation:v13 priority:a5];

  return v11;
}

void __74__SXLayoutInvalidationManager_invalidateComponent_suggestedSize_priority___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 invalidateSizeForComponentWithIdentifier:v5 suggestedSize:{*(a1 + 40), *(a1 + 48)}];
}

- (id)invalidateComponent:(id)a3 state:(id)a4 suggestedSize:(CGSize)a5 priority:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = SXInvalidationLog;
  if (os_log_type_enabled(SXInvalidationLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v11 identifier];
    v37.width = width;
    v37.height = height;
    v16 = NSStringFromCGSize(v37);
    v17 = [v12 identifier];
    *buf = 138544130;
    v28 = v15;
    v29 = 2114;
    v30 = v16;
    v31 = 2114;
    v32 = v17;
    v33 = 2048;
    v34 = a6;
    _os_log_impl(&dword_1D825C000, v14, OS_LOG_TYPE_DEFAULT, "Queuing invalidation of component, identifier=%{public}@, suggested-size=%{public}@, state=%{public}@ priority=%lu", buf, 0x2Au);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__SXLayoutInvalidationManager_invalidateComponent_state_suggestedSize_priority___block_invoke;
  v22[3] = &unk_1E8501E00;
  v23 = v12;
  v24 = v11;
  v25 = width;
  v26 = height;
  v18 = v11;
  v19 = v12;
  v20 = [(SXLayoutInvalidationManager *)self invalidateComponent:v18 invalidation:v22 priority:a6];

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

- (id)invalidateComponent:(id)a3 invalidation:(id)a4 priority:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SXLayoutInvalidationManager *)self layoutBlueprintProvider];
  v11 = [v10 blueprint];

  if (v11)
  {
    [(SXLayoutInvalidationManager *)self cancelPendingInvalidationForComponent:v8];
    v12 = objc_alloc_init(MEMORY[0x1E69B68F0]);
    v13 = [SXPendingLayoutInvalidation alloc];
    v14 = [v11 layoutOptions];
    v15 = [(SXPendingLayoutInvalidation *)v13 initWithComponent:v8 pendingPromise:v12 layoutOptions:v14 invalidation:v9];

    v16 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
    v17 = [v8 identifier];
    [v16 setObject:v15 forKey:v17];

    if (a5 == 1 || (-[SXLayoutInvalidationManager possibleInvalidations](self, "possibleInvalidations"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, !v19))
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

    v22 = [v12 promise];
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E69B68F8]);
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SXLayoutInvalidatorErrorDomain" code:2 userInfo:0];
    v22 = [v23 initWithError:v12];
  }

  return v22;
}

uint64_t __73__SXLayoutInvalidationManager_invalidateComponent_invalidation_priority___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInvalidationDispatched:0];
  v2 = *(a1 + 32);

  return [v2 invalidateQueuedComponents];
}

- (void)invalidateQueuedComponents
{
  v3 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SXLayoutInvalidationManager *)self layoutBlueprintProvider];
    v6 = [v5 blueprint];

    v7 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__SXLayoutInvalidationManager_invalidateQueuedComponents__block_invoke;
    v11[3] = &unk_1E8501E28;
    v12 = v6;
    v8 = v6;
    [v7 enumerateKeysAndObjectsUsingBlock:v11];

    v9 = [(SXLayoutInvalidationManager *)self pendingInvalidations];
    [v9 removeAllObjects];

    v10 = [(SXLayoutInvalidationManager *)self delegate];
    [v10 layoutInvalidationManager:self didInvalidateBlueprint:v8];
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