@interface SBHFocusModeManager
- (SBHFocusModeManager)initWithIconManager:(id)manager;
- (SBHIconManager)iconManager;
- (id)_focusModesRequiringIntroduction;
- (id)computeCurrentFocusMode;
- (void)_iconEditingDidChange:(id)change;
- (void)_iconModelDidChange:(id)change;
- (void)_notifyObserversOfActiveFocusModeChange;
- (void)_updateDockWithActiveFocusMode:(id)mode rootFolder:(id)folder;
- (void)addFocusModeRequiringIntroduction:(id)introduction;
- (void)addObserver:(id)observer;
- (void)applyFocusMode:(id)mode;
- (void)dealloc;
- (void)dismissAllFocusModePopovers;
- (void)donateFocusMode:(id)mode fromSource:(int64_t)source;
- (void)folder:(id)folder didAddList:(id)list;
- (void)removeFocusModeRequiringIntroduction:(id)introduction;
- (void)removeObserver:(id)observer;
- (void)updateFocusModePopoverVisibility;
@end

@implementation SBHFocusModeManager

- (void)updateFocusModePopoverVisibility
{
  v17 = *MEMORY[0x1E69E9840];
  activeFocusMode = [(SBHFocusModeManager *)self activeFocusMode];
  v4 = activeFocusMode;
  if (activeFocusMode)
  {
    identifier = [activeFocusMode identifier];
    _focusModesRequiringIntroduction = [(SBHFocusModeManager *)self _focusModesRequiringIntroduction];
    if ([_focusModesRequiringIntroduction containsObject:identifier])
    {
      focusModeFeatureIntroductionItem = [(SBHFocusModeManager *)self focusModeFeatureIntroductionItem];
      if (focusModeFeatureIntroductionItem)
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

      iconManager = [(SBHFocusModeManager *)self iconManager];
      v12 = [[SBHFocusModeFeatureIntroductionItem alloc] initWithIconManager:iconManager];

      [(SBHFocusModeManager *)self setFocusModeFeatureIntroductionItem:v12];
      [iconManager displayFeatureIntroductionItemIfUnlocked:v12];
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
  focusModeFeatureIntroductionItem = [(SBHFocusModeManager *)self focusModeFeatureIntroductionItem];
  if (focusModeFeatureIntroductionItem)
  {
    v6 = focusModeFeatureIntroductionItem;
    [focusModeFeatureIntroductionItem tearDown];
    iconManager = [(SBHFocusModeManager *)self iconManager];
    featureIntroductionManager = [iconManager featureIntroductionManager];
    [featureIntroductionManager removeFeatureIntroductionAtAllLocationsWithItem:v6];
    [(SBHFocusModeManager *)self setFocusModeFeatureIntroductionItem:0];

    focusModeFeatureIntroductionItem = v6;
  }
}

- (SBHFocusModeManager)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = SBHFocusModeManager;
  v5 = [(SBHFocusModeManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
    v7 = objc_opt_new();
    focusModesBySourceNumber = v6->_focusModesBySourceNumber;
    v6->_focusModesBySourceNumber = v7;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__iconEditingDidChange_ name:@"SBHIconManagerEditingStateChanged" object:managerCopy];
    [defaultCenter addObserver:v6 selector:sel__iconModelDidChange_ name:@"SBHIconManagerIconModelDidChange" object:managerCopy];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHFocusModeManager;
  [(SBHFocusModeManager *)&v4 dealloc];
}

- (void)donateFocusMode:(id)mode fromSource:(int64_t)source
{
  modeCopy = mode;
  BSDispatchQueueAssertMain();
  [modeCopy setSource:source];
  focusModesBySourceNumber = [(SBHFocusModeManager *)self focusModesBySourceNumber];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:source];
  [focusModesBySourceNumber setObject:modeCopy forKeyedSubscript:v8];

  computeCurrentFocusMode = [(SBHFocusModeManager *)self computeCurrentFocusMode];
  iconManager = [(SBHFocusModeManager *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__SBHFocusModeManager_donateFocusMode_fromSource___block_invoke;
  v13[3] = &unk_1E8088F18;
  v13[4] = self;
  v14 = computeCurrentFocusMode;
  v12 = computeCurrentFocusMode;
  [rootFolderController performWhenScrollingEndsUsingBlock:v13];
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
  focusModesBySourceNumber = [(SBHFocusModeManager *)self focusModesBySourceNumber];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SBHFocusModeManager_computeCurrentFocusMode__block_invoke;
  v6[3] = &unk_1E808D760;
  v6[4] = v13;
  v6[5] = &v7;
  [focusModesBySourceNumber enumerateKeysAndObjectsUsingBlock:v6];

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

- (void)applyFocusMode:(id)mode
{
  v53 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  v6 = SBLogFocusModes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412546;
    v50 = v8;
    v51 = 2114;
    v52 = modeCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "[%@] applying focus mode: %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_activeFocusMode, mode);
  iconManager = [(SBHFocusModeManager *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  contentView = [rootFolderController contentView];
  v12 = objc_opt_class();
  v13 = contentView;
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
  currentIconListModel = [v15 currentIconListModel];
  currentPageIndex = [rootFolderController currentPageIndex];
  trailingCustomViewPageIndex = [rootFolderController trailingCustomViewPageIndex];
  isMainDisplayLibraryViewVisible = [iconManager isMainDisplayLibraryViewVisible];
  rootFolder = [iconManager rootFolder];
  [(SBHFocusModeManager *)self _updateDockWithActiveFocusMode:modeCopy rootFolder:rootFolder];
  v36 = rootFolder;
  lists = [rootFolder lists];
  if (modeCopy && [modeCopy customizedHomeScreenPagesEnabled])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = lists;
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

          [*(*(&v43 + 1) + 8 * i) updateForFocusModeActivated:1 wantsListVisible:{objc_msgSend(modeCopy, "wantsListVisible:", *(*(&v43 + 1) + 8 * i))}];
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
    v23 = lists;
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

  if (currentPageIndex == trailingCustomViewPageIndex)
  {
    v28 = isMainDisplayLibraryViewVisible;
  }

  else
  {
    v28 = 0;
  }

  if (v28 == 1)
  {
    trailingCustomViewPageIndex2 = [rootFolderController trailingCustomViewPageIndex];
    v31 = currentIconListModel;
    v30 = v38;
    v32 = v36;
LABEL_33:
    [rootFolderController setCurrentPageIndex:trailingCustomViewPageIndex2 animated:0];
    goto LABEL_34;
  }

  v31 = currentIconListModel;
  v30 = v38;
  v32 = v36;
  if (currentIconListModel)
  {
    trailingCustomViewPageIndex2 = [v38 pageIndexForIconListModel:currentIconListModel];
    if (trailingCustomViewPageIndex2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      trailingCustomViewPageIndex2 = [v38 defaultPageIndex];
    }

    goto LABEL_33;
  }

LABEL_34:
  [iconManager updateIconViewAccessoryVisibility];
  [(SBHFocusModeManager *)self updateFocusModePopoverVisibility];
  [(SBHFocusModeManager *)self _notifyObserversOfActiveFocusModeChange];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  observers = [(SBHFocusModeManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  observers = [(SBHFocusModeManager *)self observers];
  [observers removeObject:observerCopy];
}

- (void)addFocusModeRequiringIntroduction:(id)introduction
{
  introductionCopy = introduction;
  iconManager = [(SBHFocusModeManager *)self iconManager];
  homeScreenDefaults = [iconManager homeScreenDefaults];
  focusModesRequiringIntroduction = [homeScreenDefaults focusModesRequiringIntroduction];
  if (!focusModesRequiringIntroduction)
  {
    focusModesRequiringIntroduction = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  if (([focusModesRequiringIntroduction containsObject:introductionCopy] & 1) == 0)
  {
    v7 = [focusModesRequiringIntroduction arrayByAddingObject:introductionCopy];

    [homeScreenDefaults setFocusModesRequiringIntroduction:v7];
    focusModesRequiringIntroduction = v7;
  }
}

- (void)removeFocusModeRequiringIntroduction:(id)introduction
{
  introductionCopy = introduction;
  iconManager = [(SBHFocusModeManager *)self iconManager];
  homeScreenDefaults = [iconManager homeScreenDefaults];
  _focusModesRequiringIntroduction = [(SBHFocusModeManager *)self _focusModesRequiringIntroduction];
  [_focusModesRequiringIntroduction removeObject:introductionCopy];

  allObjects = [_focusModesRequiringIntroduction allObjects];
  [homeScreenDefaults setFocusModesRequiringIntroduction:allObjects];
}

- (void)_notifyObserversOfActiveFocusModeChange
{
  v15 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  observers = [(SBHFocusModeManager *)self observers];
  allObjects = [observers allObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = allObjects;
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
  iconManager = [(SBHFocusModeManager *)self iconManager];
  homeScreenDefaults = [iconManager homeScreenDefaults];
  focusModesRequiringIntroduction = [homeScreenDefaults focusModesRequiringIntroduction];
  if (focusModesRequiringIntroduction)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:focusModesRequiringIntroduction];
    allObjects = [v5 allObjects];
    [homeScreenDefaults setFocusModesRequiringIntroduction:allObjects];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateDockWithActiveFocusMode:(id)mode rootFolder:(id)folder
{
  v26 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  folderCopy = folder;
  if (modeCopy && ([modeCopy dockList], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
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

    dockList = [modeCopy dockList];
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

    dock = [folderCopy dock];
    v17 = [dock copy];
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

    dockList = self->_cachedDock;
    dock = self->_cachedDock;
    self->_cachedDock = 0;
  }

LABEL_14:
  if (dockList)
  {
    dock2 = [folderCopy dock];
    v23 = [dock2 setIconsFromIconListModel:dockList];
  }

LABEL_16:
}

- (void)folder:(id)folder didAddList:(id)list
{
  listCopy = list;
  activeFocusMode = [(SBHFocusModeManager *)self activeFocusMode];
  v6 = activeFocusMode;
  if (activeFocusMode && [activeFocusMode customizedHomeScreenPagesEnabled])
  {
    [v6 addToList:listCopy];
  }
}

- (void)_iconEditingDidChange:(id)change
{
  object = [change object];
  if ([object isEditing])
  {
    [(SBHFocusModeManager *)self dismissAllFocusModePopovers];
  }
}

- (void)_iconModelDidChange:(id)change
{
  object = [change object];
  rootFolder = [object rootFolder];
  [rootFolder addFolderObserver:self];
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

@end