@interface SBHMultiplexingManager
- (BOOL)_cacheLastDiscardedViewController:(id)controller forIdentifier:(id)identifier;
- (BOOL)hasViewControllerForIdentifier:(id)identifier;
- (SBHMultiplexingManager)initWithDelegate:(id)delegate;
- (SBHMultiplexingManagerDelegate)delegate;
- (id)_activeMultiplexingViewControllerForIdentifier:(id)identifier;
- (id)activeMultiplexingViewControllerForViewController:(id)controller;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)newMultiplexingViewControllerForIdentifier:(id)identifier atLevel:(double)level;
- (id)succinctDescription;
- (id)viewControllerForIdentifier:(id)identifier;
- (void)_modifyViewControllersForIdentifier:(id)identifier reusingCacheViewControllersIfNecessary:(BOOL)necessary withBlock:(id)block;
- (void)_trimCachedRecentViewControllers;
- (void)discardCachedRecentViewControllers;
- (void)discardCachedRecentViewControllersForIdentifier:(id)identifier;
- (void)discardMultiplexingViewController:(id)controller;
- (void)enumerateAllViewControllersUsingBlock:(id)block;
- (void)setCachedRecentViewControllerCountLimit:(unint64_t)limit;
- (void)setViewController:(id)controller forIdentifier:(id)identifier;
@end

@implementation SBHMultiplexingManager

- (SBHMultiplexingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_trimCachedRecentViewControllers
{
  v22 = *MEMORY[0x1E69E9840];
  cachedRecentViewControllerCountLimit = [(SBHMultiplexingManager *)self cachedRecentViewControllerCountLimit];
  v4 = [(NSMutableOrderedSet *)self->_cachedRecentViewControllerIdentifiers count];
  if (v4 >= cachedRecentViewControllerCountLimit)
  {
    v6 = v4 - cachedRecentViewControllerCountLimit;
  }

  else
  {
    v6 = 0;
  }

  if (v4 > cachedRecentViewControllerCountLimit)
  {
    v7 = 0;
    *&v5 = 138543874;
    v15 = v5;
    do
    {
      lastObject = [(NSMutableOrderedSet *)self->_cachedRecentViewControllerIdentifiers lastObject];
      if (!lastObject)
      {
        break;
      }

      v9 = lastObject;
      v10 = SBLogWidgetMultiplexing();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = v15;
        v17 = v12;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = v9;
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Discarding oldest view controller for identifier: %{public}@", buf, 0x20u);
      }

      v13 = [(NSMutableDictionary *)self->_cachedRecentViewControllersForIdentifier objectForKey:v9];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained multiplexingManager:self willRemoveViewController:v13 forIdentifier:v9];

      [(NSMutableDictionary *)self->_cachedRecentViewControllersForIdentifier removeObjectForKey:v9];
      [(NSMutableOrderedSet *)self->_cachedRecentViewControllerIdentifiers removeObject:v9];

      ++v7;
    }

    while (v7 < v6);
  }
}

- (SBHMultiplexingManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SBHMultiplexingManager;
  v5 = [(SBHMultiplexingManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)setViewController:(id)controller forIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  identifierCopy = identifier;
  if (self->_viewControllersForIdentifier)
  {
    if (controllerCopy)
    {
LABEL_3:
      v8 = SBLogWidgetMultiplexing();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v22 = 138544386;
        v23 = v10;
        v24 = 2048;
        selfCopy2 = self;
        v26 = 2114;
        v27 = v12;
        v28 = 2048;
        v29 = controllerCopy;
        v30 = 2114;
        v31 = identifierCopy;
        _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> set view controller controller <%{public}@:%p> for %{public}@", &v22, 0x34u);
      }

      [(NSMutableDictionary *)self->_viewControllersForIdentifier setObject:controllerCopy forKey:identifierCopy];
      goto LABEL_12;
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    viewControllersForIdentifier = self->_viewControllersForIdentifier;
    self->_viewControllersForIdentifier = dictionary;

    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  v15 = [(NSMutableDictionary *)self->_viewControllersForIdentifier objectForKey:identifierCopy];
  [v15 bs_endAppearanceTransition:0];
  if (![(SBHMultiplexingManager *)self _cacheLastDiscardedViewController:v15 forIdentifier:identifierCopy])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained multiplexingManager:self willRemoveViewController:v15 forIdentifier:identifierCopy];
  }

  [(NSMutableDictionary *)self->_viewControllersForIdentifier removeObjectForKey:identifierCopy];
  v17 = SBLogWidgetMultiplexing();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = 138544386;
    v23 = v19;
    v24 = 2048;
    selfCopy2 = self;
    v26 = 2114;
    v27 = v21;
    v28 = 2048;
    v29 = v15;
    v30 = 2114;
    v31 = identifierCopy;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> removed view controller controller <%{public}@:%p> for %{public}@", &v22, 0x34u);
  }

LABEL_12:
}

- (id)viewControllerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_viewControllersForIdentifier objectForKey:identifierCopy];
  if (!v5)
  {
    v5 = [(NSMutableDictionary *)self->_cachedRecentViewControllersForIdentifier objectForKey:identifierCopy];
  }

  return v5;
}

- (BOOL)hasViewControllerForIdentifier:(id)identifier
{
  v3 = [(SBHMultiplexingManager *)self viewControllerForIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)activeMultiplexingViewControllerForViewController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_viewControllersForIdentifier;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_viewControllersForIdentifier objectForKey:v10, v16];
      v12 = v11;
      if (v11 == controllerCopy)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (v14)
    {
      v13 = [(SBHMultiplexingManager *)self activeMultiplexingViewControllerForIdentifier:v14];
      v5 = v14;
      goto LABEL_12;
    }

    v13 = 0;
  }

  else
  {
LABEL_9:
    v13 = 0;
LABEL_12:
  }

  return v13;
}

- (id)newMultiplexingViewControllerForIdentifier:(id)identifier atLevel:(double)level
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![(SBHMultiplexingManager *)self hasViewControllerForIdentifier:identifierCopy])
  {
    [SBHMultiplexingManager newMultiplexingViewControllerForIdentifier:a2 atLevel:self];
  }

  if (!self->_multiplexingViewControllersForIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    multiplexingViewControllersForIdentifier = self->_multiplexingViewControllersForIdentifier;
    self->_multiplexingViewControllersForIdentifier = dictionary;
  }

  v10 = [[SBHMultiplexingViewController alloc] initWithLevel:identifierCopy identifier:level];
  [(SBHMultiplexingViewController *)v10 setMultiplexingManager:self];
  v11 = SBLogWidgetMultiplexing();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138544642;
    v25 = v13;
    v26 = 2048;
    selfCopy = self;
    v28 = 2114;
    v29 = v15;
    v30 = 2048;
    v31 = v10;
    v32 = 2114;
    v33 = identifierCopy;
    v34 = 2048;
    levelCopy = level;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> creating new multiplexing view controller controller <%{public}@:%p> for %{public}@ at level: %.f", buf, 0x3Eu);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__SBHMultiplexingManager_newMultiplexingViewControllerForIdentifier_atLevel___block_invoke;
  v21[3] = &unk_1E8088F88;
  v21[4] = self;
  v22 = identifierCopy;
  v16 = v10;
  v23 = v16;
  v17 = identifierCopy;
  [(SBHMultiplexingManager *)self _modifyViewControllersForIdentifier:v17 reusingCacheViewControllersIfNecessary:1 withBlock:v21];
  v18 = v23;
  v19 = v16;

  return v19;
}

void __77__SBHMultiplexingManager_newMultiplexingViewControllerForIdentifier_atLevel___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [*(a1[4] + 32) setObject:v3 forKey:a1[5]];
    v2 = v3;
  }

  v4 = v2;
  [v2 addPointer:a1[6]];
  [v4 compact];
}

- (void)discardMultiplexingViewController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_opt_class();
  v6 = controllerCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    identifier = [v8 identifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SBHMultiplexingManager_discardMultiplexingViewController___block_invoke;
    v11[3] = &unk_1E8088F88;
    v11[4] = self;
    v12 = identifier;
    v13 = v8;
    v10 = identifier;
    [(SBHMultiplexingManager *)self _modifyViewControllersForIdentifier:v10 reusingCacheViewControllersIfNecessary:0 withBlock:v11];
  }
}

void __60__SBHMultiplexingManager_discardMultiplexingViewController___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) multiplexingViewControllersForIdentifier];
  v3 = [v2 objectForKey:*(a1 + 40)];

  [v3 sbh_removePointer:*(a1 + 48)];
  [v3 compact];
  v4 = SBLogWidgetMultiplexing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13 = 138544386;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> removing multiplexing view controller controller <%{public}@:%p> for %{public}@", &v13, 0x34u);
  }

  if (![v3 count])
  {
    v12 = [*(a1 + 32) multiplexingViewControllersForIdentifier];
    [v12 removeObjectForKey:*(a1 + 40)];

    [*(a1 + 32) setViewController:0 forIdentifier:*(a1 + 40)];
  }
}

- (void)_modifyViewControllersForIdentifier:(id)identifier reusingCacheViewControllersIfNecessary:(BOOL)necessary withBlock:(id)block
{
  necessaryCopy = necessary;
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  v10 = [(SBHMultiplexingManager *)self _activeMultiplexingViewControllerForIdentifier:identifierCopy];
  blockCopy[2](blockCopy);

  v11 = [(SBHMultiplexingManager *)self _activeMultiplexingViewControllerForIdentifier:identifierCopy];
  v12 = v11;
  if (v10 == v11)
  {
    if (!v10)
    {
      goto LABEL_26;
    }

    multiplexedViewController = [v11 multiplexedViewController];

    if (multiplexedViewController)
    {
      goto LABEL_26;
    }

    v13 = SBLogWidgetMultiplexing();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v21 = objc_opt_class();
    v15 = NSStringFromClass(v21);
    v22 = objc_opt_class();
    v17 = NSStringFromClass(v22);
    *v32 = 138544386;
    *&v32[4] = v15;
    *&v32[12] = 2048;
    *&v32[14] = self;
    *&v32[22] = 2114;
    v33 = v17;
    *v34 = 2048;
    *&v34[2] = v10;
    *&v34[10] = 2114;
    *&v34[12] = identifierCopy;
    v23 = "<%{public}@:%p> active view controller did not change but does not have the active multiplexed view controller: <%{public}@:%p> for %{public}@";
    goto LABEL_16;
  }

  if (!v10 || !v11)
  {
    if (v10)
    {
      v13 = SBLogWidgetMultiplexing();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v24 = objc_opt_class();
      v15 = NSStringFromClass(v24);
      v25 = objc_opt_class();
      v17 = NSStringFromClass(v25);
      *v32 = 138544386;
      *&v32[4] = v15;
      *&v32[12] = 2048;
      *&v32[14] = self;
      *&v32[22] = 2114;
      v33 = v17;
      *v34 = 2048;
      *&v34[2] = v10;
      *&v34[10] = 2114;
      *&v34[12] = identifierCopy;
      v23 = "<%{public}@:%p> active view controller changed from <%{public}@:%p> to NONE for %{public}@";
    }

    else
    {
      if (!v11)
      {
        goto LABEL_19;
      }

      v13 = SBLogWidgetMultiplexing();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v26 = objc_opt_class();
      v15 = NSStringFromClass(v26);
      v27 = objc_opt_class();
      v17 = NSStringFromClass(v27);
      *v32 = 138544386;
      *&v32[4] = v15;
      *&v32[12] = 2048;
      *&v32[14] = self;
      *&v32[22] = 2114;
      v33 = v17;
      *v34 = 2048;
      *&v34[2] = v12;
      *&v34[10] = 2114;
      *&v34[12] = identifierCopy;
      v23 = "<%{public}@:%p> active view controller changed NONE to <%{public}@:%p> for %{public}@";
    }

LABEL_16:
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, v23, v32, 0x34u);
    goto LABEL_17;
  }

  v13 = SBLogWidgetMultiplexing();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *v32 = 138544898;
    *&v32[4] = v15;
    *&v32[12] = 2048;
    *&v32[14] = self;
    *&v32[22] = 2114;
    v33 = v17;
    *v34 = 2048;
    *&v34[2] = v10;
    *&v34[10] = 2114;
    *&v34[12] = v19;
    *&v34[20] = 2048;
    *&v34[22] = v12;
    v35 = 2114;
    v36 = identifierCopy;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> active view controller changed from <%{public}@:%p> to <%{public}@:%p> for %{public}@", v32, 0x48u);

LABEL_17:
  }

LABEL_18:

LABEL_19:
  v28 = [(NSMutableDictionary *)self->_viewControllersForIdentifier objectForKey:identifierCopy, *v32, *&v32[16], v33, *v34, *&v34[16]];
  if (!v28 && necessaryCopy)
  {
    v28 = [(NSMutableDictionary *)self->_cachedRecentViewControllersForIdentifier objectForKey:identifierCopy];
    if (v28)
    {
      v29 = SBLogWidgetMultiplexing();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *v32 = 138543874;
        *&v32[4] = v31;
        *&v32[12] = 2048;
        *&v32[14] = self;
        *&v32[22] = 2114;
        v33 = identifierCopy;
        _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Reusing recent view controller for identifier: %{public}@", v32, 0x20u);
      }

      [(NSMutableDictionary *)self->_viewControllersForIdentifier setObject:v28 forKey:identifierCopy];
      [(NSMutableDictionary *)self->_cachedRecentViewControllersForIdentifier removeObjectForKey:identifierCopy];
      [(NSMutableOrderedSet *)self->_cachedRecentViewControllerIdentifiers removeObject:identifierCopy];
    }
  }

  [v12 activateWithViewController:v28];
  [v10 deactivate];

LABEL_26:
}

- (id)_activeMultiplexingViewControllerForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_multiplexingViewControllersForIdentifier objectForKey:identifier];
  allObjects = [v3 allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_13_0];
  lastObject = [v5 lastObject];

  return lastObject;
}

uint64_t __73__SBHMultiplexingManager__activeMultiplexingViewControllerForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 level];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 level];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (BOOL)_cacheLastDiscardedViewController:(id)controller forIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  identifierCopy = identifier;
  cachedRecentViewControllerCountLimit = [(SBHMultiplexingManager *)self cachedRecentViewControllerCountLimit];
  v9 = 0;
  if (controllerCopy && cachedRecentViewControllerCountLimit)
  {
    delegate = [(SBHMultiplexingManager *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate multiplexingManager:self shouldCacheRecentViewController:controllerCopy forIdentifier:identifierCopy])
    {
      v9 = 0;
    }

    else
    {
      v11 = SBLogWidgetMultiplexing();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v21 = 138543874;
        v22 = v13;
        v23 = 2048;
        selfCopy = self;
        v25 = 2114;
        v26 = identifierCopy;
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Caching recent view controller for identifier: %{public}@", &v21, 0x20u);
      }

      cachedRecentViewControllersForIdentifier = self->_cachedRecentViewControllersForIdentifier;
      if (!cachedRecentViewControllersForIdentifier)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v16 = self->_cachedRecentViewControllersForIdentifier;
        self->_cachedRecentViewControllersForIdentifier = v15;

        cachedRecentViewControllersForIdentifier = self->_cachedRecentViewControllersForIdentifier;
      }

      [(NSMutableDictionary *)cachedRecentViewControllersForIdentifier setObject:controllerCopy forKey:identifierCopy];
      cachedRecentViewControllerIdentifiers = self->_cachedRecentViewControllerIdentifiers;
      if (!cachedRecentViewControllerIdentifiers)
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DFA0]);
        v19 = self->_cachedRecentViewControllerIdentifiers;
        self->_cachedRecentViewControllerIdentifiers = v18;

        cachedRecentViewControllerIdentifiers = self->_cachedRecentViewControllerIdentifiers;
      }

      [(NSMutableOrderedSet *)cachedRecentViewControllerIdentifiers removeObject:identifierCopy];
      [(NSMutableOrderedSet *)self->_cachedRecentViewControllerIdentifiers insertObject:identifierCopy atIndex:0];
      [(SBHMultiplexingManager *)self _trimCachedRecentViewControllers];
      if (objc_opt_respondsToSelector())
      {
        [delegate multiplexingManager:self cachedRecentViewController:controllerCopy forIdentifier:identifierCopy];
      }

      v9 = 1;
    }
  }

  return v9;
}

- (void)setCachedRecentViewControllerCountLimit:(unint64_t)limit
{
  if (self->_cachedRecentViewControllerCountLimit != limit)
  {
    self->_cachedRecentViewControllerCountLimit = limit;
    [(SBHMultiplexingManager *)self _trimCachedRecentViewControllers];
  }
}

- (void)discardCachedRecentViewControllersForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_cachedRecentViewControllersForIdentifier objectForKey:?];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained multiplexingManager:self willRemoveViewController:v4 forIdentifier:identifierCopy];

    [(NSMutableDictionary *)self->_cachedRecentViewControllersForIdentifier removeObjectForKey:identifierCopy];
    [(NSMutableOrderedSet *)self->_cachedRecentViewControllerIdentifiers removeObject:identifierCopy];
  }
}

- (void)discardCachedRecentViewControllers
{
  v13 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_cachedRecentViewControllersForIdentifier allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [(SBHMultiplexingManager *)self discardCachedRecentViewControllersForIdentifier:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)enumerateAllViewControllersUsingBlock:(id)block
{
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __64__SBHMultiplexingManager_enumerateAllViewControllersUsingBlock___block_invoke;
  v12 = &unk_1E808F9B0;
  v5 = blockCopy;
  v13 = v5;
  v14 = &v15;
  v6 = _Block_copy(&v9);
  v7 = [(SBHMultiplexingManager *)self viewControllersForIdentifier:v9];
  [v7 enumerateKeysAndObjectsUsingBlock:v6];

  if ((v16[3] & 1) == 0)
  {
    cachedRecentViewControllersForIdentifier = [(SBHMultiplexingManager *)self cachedRecentViewControllersForIdentifier];
    [cachedRecentViewControllersForIdentifier enumerateKeysAndObjectsUsingBlock:v6];
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __64__SBHMultiplexingManager_enumerateAllViewControllersUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v7 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHMultiplexingManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendObject:self->_viewControllersForIdentifier withName:@"viewControllersForIdentifier"];
  v6 = [v4 appendObject:self->_multiplexingViewControllersForIdentifier withName:@"multiplexingViewControllersForIdentifier"];
  v7 = [v4 appendObject:self->_cachedRecentViewControllersForIdentifier withName:@"cachedRecentViewControllersForIdentifier" skipIfNil:1];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHMultiplexingManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)newMultiplexingViewControllerForIdentifier:(const char *)a1 atLevel:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self hasViewControllerForIdentifier:identifier]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBHMultiplexingManager.m";
    v16 = 1024;
    v17 = 95;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end