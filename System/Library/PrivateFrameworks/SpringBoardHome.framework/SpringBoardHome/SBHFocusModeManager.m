@interface SBHFocusModeManager
- (SBHFocusModeManager)initWithIconManager:(id)a3;
- (SBHIconManager)iconManager;
- (id)_focusModesRequiringIntroduction;
- (id)computeCurrentFocusMode;
- (void)_iconEditingDidChange:(id)a3;
- (void)_iconModelDidChange:(id)a3;
- (void)_notifyObserversOfActiveFocusModeChange;
- (void)_updateDockWithActiveFocusMode:(id)a3 rootFolder:(id)a4;
- (void)addFocusModeRequiringIntroduction:(id)a3;
- (void)addObserver:(id)a3;
- (void)applyFocusMode:(id)a3;
- (void)dealloc;
- (void)dismissAllFocusModePopovers;
- (void)donateFocusMode:(id)a3 fromSource:(int64_t)a4;
- (void)folder:(id)a3 didAddList:(id)a4;
- (void)removeFocusModeRequiringIntroduction:(id)a3;
- (void)removeObserver:(id)a3;
- (void)updateFocusModePopoverVisibility;
@end

@implementation SBHFocusModeManager

- (void)updateFocusModePopoverVisibility
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(SBHFocusModeManager *)self activeFocusMode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifier];
    v6 = [(SBHFocusModeManager *)self _focusModesRequiringIntroduction];
    if ([v6 containsObject:v5])
    {
      v7 = [(SBHFocusModeManager *)self focusModeFeatureIntroductionItem];
      if (v7)
      {
        [(SBHFocusModeManager *)self dismissAllFocusModePopovers];
      }

      v8 = SBLogFocusModes();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "[%@] Creating feature introduction item for Focus", &v15, 0xCu);
      }

      v11 = [(SBHFocusModeManager *)self iconManager];
      v12 = [[SBHFocusModeFeatureIntroductionItem alloc] initWithIconManager:v11];

      [(SBHFocusModeManager *)self setFocusModeFeatureIntroductionItem:v12];
      [v11 displayFeatureIntroductionItemIfUnlocked:v12];
    }

    else
    {
      v12 = SBLogFocusModes();
      if (os_log_type_enabled(&v12->super.super, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&dword_1BEB18000, &v12->super.super, OS_LOG_TYPE_DEFAULT, "[%@] Focus does not require feature introduction", &v15, 0xCu);
      }
    }
  }

  else
  {
    [(SBHFocusModeManager *)self dismissAllFocusModePopovers];
  }
}

- (void)dismissAllFocusModePopovers
{
  v3 = [(SBHFocusModeManager *)self focusModeFeatureIntroductionItem];
  if (v3)
  {
    v6 = v3;
    [v3 tearDown];
    v4 = [(SBHFocusModeManager *)self iconManager];
    v5 = [v4 featureIntroductionManager];
    [v5 removeFeatureIntroductionAtAllLocationsWithItem:v6];
    [(SBHFocusModeManager *)self setFocusModeFeatureIntroductionItem:0];

    v3 = v6;
  }
}

- (SBHFocusModeManager)initWithIconManager:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBHFocusModeManager;
  v5 = [(SBHFocusModeManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, v4);
    v7 = objc_opt_new();
    focusModesBySourceNumber = v6->_focusModesBySourceNumber;
    v6->_focusModesBySourceNumber = v7;

    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v9;

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v6 selector:sel__iconEditingDidChange_ name:@"SBHIconManagerEditingStateChanged" object:v4];
    [v11 addObserver:v6 selector:sel__iconModelDidChange_ name:@"SBHIconManagerIconModelDidChange" object:v4];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHFocusModeManager;
  [(SBHFocusModeManager *)&v4 dealloc];
}

- (void)donateFocusMode:(id)a3 fromSource:(int64_t)a4
{
  v6 = a3;
  BSDispatchQueueAssertMain();
  [v6 setSource:a4];
  v7 = [(SBHFocusModeManager *)self focusModesBySourceNumber];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v9 = [(SBHFocusModeManager *)self computeCurrentFocusMode];
  v10 = [(SBHFocusModeManager *)self iconManager];
  v11 = [v10 rootFolderController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__SBHFocusModeManager_donateFocusMode_fromSource___block_invoke;
  v13[3] = &unk_1E8088F18;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 performWhenScrollingEndsUsingBlock:v13];
}

void __50__SBHFocusModeManager_donateFocusMode_fromSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) computeCurrentFocusMode];
  if (BSEqualObjects())
  {
    [*(a1 + 32) applyFocusMode:*(a1 + 40)];
  }
}

- (id)computeCurrentFocusMode
{
  BSDispatchQueueAssertMain();
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = -1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  v3 = [(SBHFocusModeManager *)self focusModesBySourceNumber];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SBHFocusModeManager_computeCurrentFocusMode__block_invoke;
  v6[3] = &unk_1E808D760;
  v6[4] = v13;
  v6[5] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(v13, 8);

  return v4;
}

void __46__SBHFocusModeManager_computeCurrentFocusMode__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v6 = [a2 integerValue];
  v7 = *(*(a1 + 32) + 8);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)applyFocusMode:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SBLogFocusModes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412546;
    v50 = v8;
    v51 = 2114;
    v52 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "[%@] applying focus mode: %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_activeFocusMode, a3);
  v9 = [(SBHFocusModeManager *)self iconManager];
  v10 = [v9 rootFolderController];
  v11 = [v10 contentView];
  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v38 = v15;
  v37 = [v15 currentIconListModel];
  v35 = [v10 currentPageIndex];
  v34 = [v10 trailingCustomViewPageIndex];
  v33 = [v9 isMainDisplayLibraryViewVisible];
  v16 = [v9 rootFolder];
  [(SBHFocusModeManager *)self _updateDockWithActiveFocusMode:v5 rootFolder:v16];
  v36 = v16;
  v17 = [v16 lists];
  if (v5 && [v5 customizedHomeScreenPagesEnabled])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v43 + 1) + 8 * i) updateForFocusModeActivated:1 wantsListVisible:{objc_msgSend(v5, "wantsListVisible:", *(*(&v43 + 1) + 8 * i))}];
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = v17;
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v39 + 1) + 8 * j) updateForFocusModeActivated:0 wantsListVisible:0];
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v25);
    }
  }

  if (v35 == v34)
  {
    v28 = v33;
  }

  else
  {
    v28 = 0;
  }

  if (v28 == 1)
  {
    v29 = [v10 trailingCustomViewPageIndex];
    v31 = v37;
    v30 = v38;
    v32 = v36;
LABEL_33:
    [v10 setCurrentPageIndex:v29 animated:0];
    goto LABEL_34;
  }

  v31 = v37;
  v30 = v38;
  v32 = v36;
  if (v37)
  {
    v29 = [v38 pageIndexForIconListModel:v37];
    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [v38 defaultPageIndex];
    }

    goto LABEL_33;
  }

LABEL_34:
  [v9 updateIconViewAccessoryVisibility];
  [(SBHFocusModeManager *)self updateFocusModePopoverVisibility];
  [(SBHFocusModeManager *)self _notifyObserversOfActiveFocusModeChange];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [(SBHFocusModeManager *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [(SBHFocusModeManager *)self observers];
  [v5 removeObject:v4];
}

- (void)addFocusModeRequiringIntroduction:(id)a3
{
  v8 = a3;
  v4 = [(SBHFocusModeManager *)self iconManager];
  v5 = [v4 homeScreenDefaults];
  v6 = [v5 focusModesRequiringIntroduction];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  if (([v6 containsObject:v8] & 1) == 0)
  {
    v7 = [v6 arrayByAddingObject:v8];

    [v5 setFocusModesRequiringIntroduction:v7];
    v6 = v7;
  }
}

- (void)removeFocusModeRequiringIntroduction:(id)a3
{
  v4 = a3;
  v8 = [(SBHFocusModeManager *)self iconManager];
  v5 = [v8 homeScreenDefaults];
  v6 = [(SBHFocusModeManager *)self _focusModesRequiringIntroduction];
  [v6 removeObject:v4];

  v7 = [v6 allObjects];
  [v5 setFocusModesRequiringIntroduction:v7];
}

- (void)_notifyObserversOfActiveFocusModeChange
{
  v15 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  v3 = [(SBHFocusModeManager *)self observers];
  v4 = [v3 allObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) focusModeManagerDidUpdateActiveFocusMode:{self, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_focusModesRequiringIntroduction
{
  v2 = [(SBHFocusModeManager *)self iconManager];
  v3 = [v2 homeScreenDefaults];
  v4 = [v3 focusModesRequiringIntroduction];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v4];
    v6 = [v5 allObjects];
    [v3 setFocusModesRequiringIntroduction:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateDockWithActiveFocusMode:(id)a3 rootFolder:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && ([v6 dockList], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = SBLogFocusModes();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v24 = 138412290;
      v25 = v11;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "[%@] Configuring the dock for the active focus mode", &v24, 0xCu);
    }

    v12 = [v6 dockList];
    if (self->_cachedDock)
    {
      goto LABEL_14;
    }

    v13 = SBLogFocusModes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v24 = 138412290;
      v25 = v15;
      _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, "[%@] Caching original dock configuration", &v24, 0xCu);
    }

    v16 = [v7 dock];
    v17 = [v16 copy];
    cachedDock = self->_cachedDock;
    self->_cachedDock = v17;
  }

  else
  {
    if (!self->_cachedDock)
    {
      goto LABEL_16;
    }

    v19 = SBLogFocusModes();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v24 = 138412290;
      v25 = v21;
      _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_INFO, "[%@] Restoring original dock configuration", &v24, 0xCu);
    }

    v12 = self->_cachedDock;
    v16 = self->_cachedDock;
    self->_cachedDock = 0;
  }

LABEL_14:
  if (v12)
  {
    v22 = [v7 dock];
    v23 = [v22 setIconsFromIconListModel:v12];
  }

LABEL_16:
}

- (void)folder:(id)a3 didAddList:(id)a4
{
  v7 = a4;
  v5 = [(SBHFocusModeManager *)self activeFocusMode];
  v6 = v5;
  if (v5 && [v5 customizedHomeScreenPagesEnabled])
  {
    [v6 addToList:v7];
  }
}

- (void)_iconEditingDidChange:(id)a3
{
  v4 = [a3 object];
  if ([v4 isEditing])
  {
    [(SBHFocusModeManager *)self dismissAllFocusModePopovers];
  }
}

- (void)_iconModelDidChange:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 rootFolder];
  [v4 addFolderObserver:self];
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

@end