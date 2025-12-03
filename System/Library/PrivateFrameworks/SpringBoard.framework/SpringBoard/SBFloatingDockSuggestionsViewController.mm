@interface SBFloatingDockSuggestionsViewController
- (BOOL)_shouldDeferUpdateInvolvingContinuity:(BOOL)continuity;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)isIconViewRecycled:(id)recycled;
- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider;
- (SBFloatingDockSuggestionsModel)suggestionsModel;
- (SBFloatingDockSuggestionsViewController)initWithNumberOfRecents:(unint64_t)recents homeScreenContextProvider:(id)provider applicationController:(id)controller layoutStateTransitionCoordinator:(id)coordinator suggestionsModel:(id)model iconViewProvider:(id)viewProvider;
- (SBFloatingDockSuggestionsViewControllerDelegate)delegate;
- (SBFloatingDockViewController)floatingDockViewController;
- (SBIconViewProviding)iconViewProvider;
- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator;
- (id)_iconForDisplayItem:(id)item;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)iconViewForIcon:(id)icon location:(id)location;
- (void)_didChangeNumberOfIcons;
- (void)_emitPresentedEventInvolvingContinuity:(BOOL)continuity fromModel:(id)model atIndex:(unint64_t)index;
- (void)_fadeInIcon:(id)icon isReplacing:(BOOL)replacing completion:(id)completion;
- (void)_fadeOutIcon:(id)icon atIndex:(unint64_t)index isReplacing:(BOOL)replacing completion:(id)completion;
- (void)_iconModelDidChange:(id)change;
- (void)_listLayoutDidChange:(id)change;
- (void)_loadAndPlaceIconsInViewForDisplayItems:(id)items;
- (void)_performDeferredIconUpdates;
- (void)_performOrDefer:(BOOL)defer iconUpdate:(id)update;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)dealloc;
- (void)dockFolderDidEndTransitioning;
- (void)dockFolderWillBeginTransitioning;
- (void)dockSuggestionsModel:(id)model didInsertItem:(id)item atIndex:(unint64_t)index involvesContinuity:(BOOL)continuity;
- (void)dockSuggestionsModel:(id)model didReloadItems:(id)items withItems:(id)withItems;
- (void)dockSuggestionsModel:(id)model didRemoveItem:(id)item atIndex:(unint64_t)index involvesContinuity:(BOOL)continuity;
- (void)dockSuggestionsModel:(id)model didReplaceItem:(id)item atIndex:(unint64_t)index withItem:(id)withItem atIndex:(unint64_t)atIndex involvesContinuity:(BOOL)continuity;
- (void)dockViewDidBecomeVisible;
- (void)dockViewDidResignVisible;
- (void)dockViewWillBecomeVisible;
- (void)dockViewWillResignVisible;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)loadView;
- (void)recycleIconView:(id)view;
@end

@implementation SBFloatingDockSuggestionsViewController

- (SBFloatingDockSuggestionsViewController)initWithNumberOfRecents:(unint64_t)recents homeScreenContextProvider:(id)provider applicationController:(id)controller layoutStateTransitionCoordinator:(id)coordinator suggestionsModel:(id)model iconViewProvider:(id)viewProvider
{
  providerCopy = provider;
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  modelCopy = model;
  viewProviderCopy = viewProvider;
  v28.receiver = self;
  v28.super_class = SBFloatingDockSuggestionsViewController;
  v19 = [(SBFloatingDockSuggestionsViewController *)&v28 initWithNibName:0 bundle:0];
  v20 = v19;
  if (v19)
  {
    v19->_numberOfRecents = recents;
    v21 = [objc_alloc(MEMORY[0x277D663C0]) initWithFolder:0 maxIconCount:recents];
    suggestionsIconListModel = v20->_suggestionsIconListModel;
    v20->_suggestionsIconListModel = v21;

    objc_storeWeak(&v20->_homeScreenContextProvider, providerCopy);
    objc_storeStrong(&v20->_applicationController, controller);
    objc_storeWeak(&v20->_suggestionsModel, modelCopy);
    [modelCopy setDelegate:v20];
    array = [MEMORY[0x277CBEB18] array];
    deferredIconUpdates = v20->_deferredIconUpdates;
    v20->_deferredIconUpdates = array;

    [coordinatorCopy addObserver:v20];
    objc_storeWeak(&v20->_layoutStateTransitionCoordinator, coordinatorCopy);
    v20->_effectiveEnvironmentMode = 0;
    objc_storeWeak(&v20->_iconViewProvider, viewProviderCopy);
    iconManager = [providerCopy iconManager];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v20 selector:sel__iconModelDidChange_ name:*MEMORY[0x277D66568] object:iconManager];
    [defaultCenter addObserver:v20 selector:sel__listLayoutDidChange_ name:*MEMORY[0x277D66570] object:iconManager];
  }

  return v20;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);
  [WeakRetained removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = SBFloatingDockSuggestionsViewController;
  [(SBFloatingDockSuggestionsViewController *)&v5 dealloc];
}

- (void)loadView
{
  homeScreenContextProvider = [(SBFloatingDockSuggestionsViewController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  v4 = [SBDockSuggestionsIconListView alloc];
  suggestionsIconListModel = self->_suggestionsIconListModel;
  listLayoutProvider = [iconManager listLayoutProvider];
  v7 = [(SBDockIconListView *)v4 initWithModel:suggestionsIconListModel layoutProvider:listLayoutProvider iconLocation:@"SBIconLocationFloatingDockSuggestions" orientation:1 iconViewProvider:self];

  [(SBIconListView *)v7 setIconViewConfigurationOptions:2];
  iconImageCache = [iconManager iconImageCache];
  [(SBIconListView *)v7 setIconImageCache:iconImageCache];

  folderIconImageCache = [iconManager folderIconImageCache];
  [(SBIconListView *)v7 setFolderIconImageCache:folderIconImageCache];

  [(SBIconListView *)v7 setAutomaticallyAdjustsLayoutMetricsToFit:0];
  [(SBFloatingDockSuggestionsViewController *)self setView:v7];
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  currentDisplayItems = [WeakRetained currentDisplayItems];
  [(SBFloatingDockSuggestionsViewController *)self _loadAndPlaceIconsInViewForDisplayItems:currentDisplayItems];
}

- (void)dockViewWillBecomeVisible
{
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  [listView enumerateIconViewsUsingBlock:&__block_literal_global_122];
}

- (void)dockViewWillResignVisible
{
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  [listView enumerateIconViewsUsingBlock:&__block_literal_global_30];
}

- (void)dockViewDidResignVisible
{
  [(SBFloatingDockSuggestionsViewController *)self setVisible:0];
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  [WeakRetained dockViewDidResignVisible];

  [(SBFloatingDockSuggestionsViewController *)self _performDeferredIconUpdates];
}

- (void)dockViewDidBecomeVisible
{
  [(SBFloatingDockSuggestionsViewController *)self setVisible:1];
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  [WeakRetained dockViewDidBecomeVisible];
}

- (void)dockFolderWillBeginTransitioning
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  [WeakRetained beginPendingUpdatesForReason:@"Dock"];
}

- (void)dockFolderDidEndTransitioning
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  [WeakRetained endPendingUpdatesForReason:@"Dock"];
}

- (void)_performDeferredIconUpdates
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_deferredIconUpdates;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_deferredIconUpdates removeAllObjects];
}

- (void)_didChangeNumberOfIcons
{
  delegate = [(SBFloatingDockSuggestionsViewController *)self delegate];
  [delegate floatingDockSuggestionsViewControllerDidChangeNumberOfVisibleSuggestions:self];

  floatingDockViewController = [(SBFloatingDockSuggestionsViewController *)self floatingDockViewController];
  [floatingDockViewController floatingDockSuggestionsViewControllerDidChangeNumberOfVisibleSuggestions:self];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  toLayoutState = [context toLayoutState];
  self->_effectiveEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  if ([(SBFloatingDockSuggestionsViewController *)self _onHomescreen])
  {
    [(SBFloatingDockSuggestionsViewController *)self _performDeferredIconUpdates];
  }

  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  [WeakRetained beginPendingUpdatesForReason:@"Transitioning"];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  if (([context isInterrupted] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
    [WeakRetained endPendingUpdatesForReason:@"Transitioning"];
  }
}

- (void)_emitPresentedEventInvolvingContinuity:(BOOL)continuity fromModel:(id)model atIndex:(unint64_t)index
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (continuity)
  {
    currentAppSuggestion = [model currentAppSuggestion];
    if (currentAppSuggestion)
    {
      v7 = [MEMORY[0x277D66378] itemForContinuityInfo:currentAppSuggestion];
      if (v7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v15[0] = *MEMORY[0x277D674B8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v8, model}];
  v16[0] = v9;
  v15[1] = *MEMORY[0x277D674B0];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = MEMORY[0x277D65DD0];
  v13 = v11;
  sharedInstance = [v12 sharedInstance];
  [sharedInstance emitEvent:17 withPayload:v13];
}

- (void)_performOrDefer:(BOOL)defer iconUpdate:(id)update
{
  if (defer)
  {
    deferredIconUpdates = self->_deferredIconUpdates;
    v7 = [update copy];
    [(NSMutableArray *)deferredIconUpdates addObject:v7];
  }

  else
  {
    v6 = *(update + 2);

    v6(update);
  }
}

- (void)dockSuggestionsModel:(id)model didInsertItem:(id)item atIndex:(unint64_t)index involvesContinuity:(BOOL)continuity
{
  continuityCopy = continuity;
  v27 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  itemCopy = item;
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v22 = modelCopy;
    v23 = 2112;
    v24 = itemCopy;
    v25 = 2048;
    indexCopy = index;
    _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "floating dock suggestions model: %@ did insert item: %@ at index: %lu", buf, 0x20u);
  }

  v13 = [(SBFloatingDockSuggestionsViewController *)self _shouldDeferUpdateInvolvingContinuity:continuityCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didInsertItem_atIndex_involvesContinuity___block_invoke;
  v16[3] = &unk_2783AB438;
  v20 = continuityCopy;
  v16[4] = self;
  v17 = modelCopy;
  v18 = itemCopy;
  indexCopy2 = index;
  v14 = itemCopy;
  v15 = modelCopy;
  [(SBFloatingDockSuggestionsViewController *)self _performOrDefer:v13 iconUpdate:v16];
}

void __105__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didInsertItem_atIndex_involvesContinuity___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _emitPresentedEventInvolvingContinuity:*(a1 + 64) fromModel:*(a1 + 40) atIndex:*(a1 + 56)];
  v11 = [*(a1 + 32) listView];
  v2 = [*(a1 + 32) _iconForDisplayItem:*(a1 + 48)];
  if (v2)
  {
    v3 = [v11 model];
    [v3 removeIcon:v2];
    v4 = *(a1 + 56);
    if (v4 >= [v3 numberOfIcons])
    {
      v6 = [v3 addIcon:v2];
    }

    else
    {
      v5 = [v3 insertIcon:v2 atIndex:v4];
    }

    v7 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v11 iconViewForIcon:v2];
      v10 = [*(a1 + 48) appSuggestion];
      [v9 setContinuityInfo:v10];
    }

    if ([*(a1 + 32) isVisible])
    {
      [*(a1 + 32) _fadeInIcon:v2 isReplacing:0 completion:0];
    }

    else
    {
      [v11 layoutIconsNow];
      [*(a1 + 32) _didChangeNumberOfIcons];
    }
  }
}

- (void)dockSuggestionsModel:(id)model didRemoveItem:(id)item atIndex:(unint64_t)index involvesContinuity:(BOOL)continuity
{
  continuityCopy = continuity;
  v32 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  itemCopy = item;
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v27 = modelCopy;
    v28 = 2112;
    v29 = itemCopy;
    v30 = 2048;
    indexCopy = index;
    _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "floating dock suggestions model: %@ did remove old item: %@ at index: %lu", buf, 0x20u);
  }

  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  if ([(NSMutableArray *)self->_deferredIconUpdates count])
  {
    [(SBFloatingDockSuggestionsViewController *)self _performDeferredIconUpdates];
  }

  model = [listView model];
  if ([model numberOfIcons] <= index)
  {
    v15 = 0;
  }

  else
  {
    v15 = [model iconAtIndex:index];
    if (v15)
    {
      [model removeIcon:v15];
      if ([(SBFloatingDockSuggestionsViewController *)self isVisible])
      {
        v16 = [listView displayedIconViewForIcon:v15];
        v17 = [listView displayedIconViewForIcon:v15];
        [v17 continuityInfo];
        v18 = v21 = continuityCopy;

        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __105__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didRemoveItem_atIndex_involvesContinuity___block_invoke;
        v22[3] = &unk_2783B1948;
        v25 = v21;
        v23 = v16;
        v24 = v18;
        v19 = v18;
        v20 = v16;
        [(SBFloatingDockSuggestionsViewController *)self _fadeOutIcon:v15 atIndex:index isReplacing:0 completion:v22];

LABEL_12:
        goto LABEL_13;
      }

      [listView layoutIconsNow];
      [(SBFloatingDockSuggestionsViewController *)self _didChangeNumberOfIcons];
      if (continuityCopy)
      {
        v20 = [listView displayedIconViewForIcon:v15];
        [v20 setContinuityInfo:0];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

void __105__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didRemoveItem_atIndex_involvesContinuity___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) continuityInfo];
    v3 = *(a1 + 40);

    if (v2 == v3)
    {
      v4 = *(a1 + 32);

      [v4 setContinuityInfo:0];
    }
  }
}

- (void)dockSuggestionsModel:(id)model didReplaceItem:(id)item atIndex:(unint64_t)index withItem:(id)withItem atIndex:(unint64_t)atIndex involvesContinuity:(BOOL)continuity
{
  continuityCopy = continuity;
  v37 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  itemCopy = item;
  withItemCopy = withItem;
  v17 = SBLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v30 = modelCopy;
    v31 = 2112;
    v32 = itemCopy;
    v33 = 2112;
    v34 = withItemCopy;
    v35 = 2048;
    atIndexCopy = atIndex;
    _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "floating dock suggestions model: %@ did replace old item: %@ with new item: %@ at index: %lu", buf, 0x2Au);
  }

  v18 = [(SBFloatingDockSuggestionsViewController *)self _shouldDeferUpdateInvolvingContinuity:continuityCopy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __123__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didReplaceItem_atIndex_withItem_atIndex_involvesContinuity___block_invoke;
  v22[3] = &unk_2783B3B00;
  v28 = continuityCopy;
  v22[4] = self;
  v23 = modelCopy;
  v24 = itemCopy;
  v25 = withItemCopy;
  atIndexCopy2 = atIndex;
  indexCopy = index;
  v19 = withItemCopy;
  v20 = itemCopy;
  v21 = modelCopy;
  [(SBFloatingDockSuggestionsViewController *)self _performOrDefer:v18 iconUpdate:v22];
}

void __123__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didReplaceItem_atIndex_withItem_atIndex_involvesContinuity___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _emitPresentedEventInvolvingContinuity:*(a1 + 80) fromModel:*(a1 + 40) atIndex:*(a1 + 64)];
  v2 = [*(a1 + 32) listView];
  v3 = [*(a1 + 32) _iconForDisplayItem:*(a1 + 48)];
  v4 = [*(a1 + 32) _iconForDisplayItem:*(a1 + 56)];
  v5 = v4;
  if (!v3)
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [v2 displayedIconViewForIcon:v3];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = [v2 displayedIconViewForIcon:v5];
  if (*(a1 + 80) != 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  [v6 setContinuityInfo:0];
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [*(a1 + 56) appSuggestion];
    [v7 setContinuityInfo:v10];
  }

  if ([v3 isEqual:v5] && *(a1 + 72) == *(a1 + 64))
  {
    [v7 setAllowsCloseBox:0];
  }

  else
  {
LABEL_12:
    v11 = [v2 model];
    v12 = v11;
    if (v5 && [v11 directlyContainsIcon:v5])
    {
      [v12 removeIcon:v5];
      if ([*(a1 + 32) isVisible])
      {
        [*(a1 + 32) _fadeOutIcon:v5 atIndex:*(a1 + 72) isReplacing:1 completion:0];
      }

      v13 = *(a1 + 64);
      if (v13 <= [v12 numberOfIcons])
      {
        v21 = [v12 insertIcon:v5 atIndex:*(a1 + 64)];
      }

      else
      {
        v14 = [v12 addIcon:v5];
      }

      if ([*(a1 + 32) isVisible])
      {
        [*(a1 + 32) _fadeInIcon:v5 isReplacing:1 completion:0];
      }

      v22 = [*(a1 + 40) currentDisplayItems];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __123__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didReplaceItem_atIndex_withItem_atIndex_involvesContinuity___block_invoke_2;
      v27 = &unk_2783B3AD8;
      v23 = *(a1 + 32);
      v31 = *(a1 + 64);
      v28 = v23;
      v29 = v12;
      v30 = v2;
      [v22 enumerateObjectsUsingBlock:&v24];
    }

    else
    {
      v15 = [*(a1 + 32) isVisible];
      if (v3)
      {
        if (v15)
        {
          [*(a1 + 32) _fadeOutIcon:v3 atIndex:*(a1 + 72) isReplacing:1 completion:0];
          v16 = *(a1 + 64);
          if (v16 != *(a1 + 72) && v16 < [v12 numberOfIcons])
          {
            v17 = [v12 iconAtIndex:*(a1 + 64)];
            [*(a1 + 32) _fadeOutIcon:v17 atIndex:*(a1 + 64) isReplacing:1 completion:0];
          }
        }
      }

      if (v5)
      {
        v18 = *(a1 + 64);
        if (v18 >= [v12 numberOfIcons])
        {
          v20 = [v12 addIcon:v5];
        }

        else
        {
          v19 = [v12 replaceIconAtIndex:v18 withIcon:v5 options:0];
        }

        [v2 layoutAndCreateIcon:v5 atIndex:v18];
        if ([*(a1 + 32) isVisible])
        {
          [*(a1 + 32) _fadeInIcon:v5 isReplacing:1 completion:0];
        }
      }
    }

    [v2 layoutIconsNow];
    [*(a1 + 32) _didChangeNumberOfIcons];
  }
}

void __123__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didReplaceItem_atIndex_withItem_atIndex_involvesContinuity___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 56) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v5 = a3;
    v7 = [*(a1 + 32) _iconForDisplayItem:a2];
    if (v7)
    {
      v14 = v7;
      v8 = [*(a1 + 40) indexForIcon:v7];
      v7 = v14;
      if (v8 != v5)
      {
        [*(a1 + 40) removeIcon:v14];
        v9 = [*(a1 + 40) numberOfIcons];
        v10 = *(a1 + 40);
        if (v9 <= v5)
        {
          v12 = [v10 addIcon:v14];
          v5 = [*(a1 + 40) indexForIcon:v14];
        }

        else
        {
          v11 = [v10 replaceIconAtIndex:v5 withIcon:v14 options:0];
        }

        [*(a1 + 48) layoutAndCreateIcon:v14 atIndex:v5];
        v13 = [*(a1 + 32) isVisible];
        v7 = v14;
        if (v13)
        {
          [*(a1 + 32) _fadeInIcon:v14 isReplacing:1 completion:0];
          v7 = v14;
        }
      }
    }
  }
}

- (void)dockSuggestionsModel:(id)model didReloadItems:(id)items withItems:(id)withItems
{
  v43 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  itemsCopy = items;
  withItemsCopy = withItems;
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v38 = modelCopy;
    v39 = 2112;
    v40 = itemsCopy;
    v41 = 2112;
    v42 = withItemsCopy;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "floating dock suggestions model: %@ did reload old items: %@ with new items: %@", buf, 0x20u);
  }

  if (([itemsCopy isEqualToOrderedSet:withItemsCopy] & 1) == 0)
  {
    v28 = itemsCopy;
    [(SBFloatingDockSuggestionsViewController *)self _performDeferredIconUpdates];
    listView = [(SBFloatingDockSuggestionsViewController *)self listView];
    [listView removeAllIconViews];
    v30 = listView;
    model = [listView model];
    [model removeAllIcons];
    v29 = modelCopy;
    currentAppSuggestion = [modelCopy currentAppSuggestion];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = withItemsCopy;
    v14 = withItemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          v20 = [(SBFloatingDockSuggestionsViewController *)self _iconForDisplayItem:v19];
          if (v20)
          {
            v21 = [model addIcon:v20];
            bundleIdentifier = [currentAppSuggestion bundleIdentifier];
            bundleIdentifier2 = [v19 bundleIdentifier];
            v24 = [bundleIdentifier isEqual:bundleIdentifier2];

            if (v24)
            {
              v25 = [v30 iconViewForIcon:v20];
              [v25 setContinuityInfo:currentAppSuggestion];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    [v30 layoutIconsNow];
    itemsCopy = v28;
    v26 = [v28 count];
    if (v26 != [v14 count])
    {
      [(SBFloatingDockSuggestionsViewController *)self _didChangeNumberOfIcons];
    }

    modelCopy = v29;
    withItemsCopy = v27;
  }
}

- (id)iconViewForIcon:(id)icon location:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationFloatingDockSuggestions"] && -[SBIconListModel directlyContainsIcon:](self->_suggestionsIconListModel, "directlyContainsIcon:", iconCopy))
  {
    listView = [(SBFloatingDockSuggestionsViewController *)self listView];
    v8 = [listView displayedIconViewForIcon:iconCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  v20 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  locationsCopy = locations;
  v8 = [locationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(locationsCopy);
        }

        v12 = [(SBFloatingDockSuggestionsViewController *)self iconViewForIcon:iconCopy location:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [locationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  presentedIconLocations = [(SBFloatingDockSuggestionsViewController *)self presentedIconLocations];
  allObjects = [presentedIconLocations allObjects];
  v7 = [(SBFloatingDockSuggestionsViewController *)self firstIconViewForIcon:iconCopy inLocations:allObjects];

  return v7;
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  locationsCopy = locations;
  iconCopy = icon;
  presentedIconLocations = [(SBFloatingDockSuggestionsViewController *)self presentedIconLocations];
  v9 = [presentedIconLocations mutableCopy];

  [v9 minusSet:locationsCopy];
  allObjects = [v9 allObjects];
  v11 = [(SBFloatingDockSuggestionsViewController *)self firstIconViewForIcon:iconCopy inLocations:allObjects];

  return v11;
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    listView = [(SBFloatingDockSuggestionsViewController *)self listView];
    model = [listView model];
    v9 = [model directlyContainsIcon:iconCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  v19 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  locationsCopy = locations;
  v8 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(locationsCopy);
        }

        if ([(SBFloatingDockSuggestionsViewController *)self isDisplayingIcon:iconCopy inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  v6 = [listView isDisplayingIconView:viewCopy];

  return v6;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  if ([location isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    listView = [(SBFloatingDockSuggestionsViewController *)self listView];
    v8 = [listView isDisplayingIconView:viewCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__SBFloatingDockSuggestionsViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_2783B3B28;
  v8 = blockCopy;
  v6 = blockCopy;
  [listView enumerateIconViewsUsingBlock:v7];
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  blockCopy = block;
  iconCopy = icon;
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  v8 = [listView displayedIconViewForIcon:iconCopy];

  if (v8)
  {
    blockCopy[2](blockCopy, v8);
  }
}

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  iconViewProvider = [(SBFloatingDockSuggestionsViewController *)self iconViewProvider];
  v5 = [iconViewProvider dequeueReusableIconViewOfClass:class];

  return v5;
}

- (void)recycleIconView:(id)view
{
  viewCopy = view;
  iconViewProvider = [(SBFloatingDockSuggestionsViewController *)self iconViewProvider];
  [iconViewProvider recycleIconView:viewCopy];
}

- (BOOL)isIconViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  iconViewProvider = [(SBFloatingDockSuggestionsViewController *)self iconViewProvider];
  v6 = [iconViewProvider isIconViewRecycled:recycledCopy];

  return v6;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;
  iconViewProvider = [(SBFloatingDockSuggestionsViewController *)self iconViewProvider];
  [iconViewProvider configureIconView:viewCopy forIcon:iconCopy];

  [viewCopy setIconContentScalingEnabled:1];
  [viewCopy setStartsDragMoreQuickly:1];
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  currentAppSuggestion = [WeakRetained currentAppSuggestion];

  if ([iconCopy isApplicationIcon])
  {
    bundleIdentifier = [currentAppSuggestion bundleIdentifier];
    applicationBundleID = [iconCopy applicationBundleID];
    v12 = [bundleIdentifier isEqualToString:applicationBundleID];

    if (v12)
    {
      [viewCopy setContinuityInfo:currentAppSuggestion];
    }
  }
}

- (id)_iconForDisplayItem:(id)item
{
  itemCopy = item;
  bundleIdentifier = [itemCopy bundleIdentifier];
  homeScreenContextProvider = [(SBFloatingDockSuggestionsViewController *)self homeScreenContextProvider];
  iconModel = [homeScreenContextProvider iconModel];
  if ([itemCopy type] == 5)
  {
    webClipIdentifier = [itemCopy webClipIdentifier];
    v9 = [iconModel bookmarkIconForWebClipIdentifier:webClipIdentifier];
  }

  else
  {
    v9 = [iconModel applicationIconForBundleIdentifier:bundleIdentifier];
  }

  return v9;
}

- (void)_loadAndPlaceIconsInViewForDisplayItems:(id)items
{
  itemsCopy = items;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFloatingDockSuggestionsViewController *)itemsCopy _loadAndPlaceIconsInViewForDisplayItems:v5];
  }

  suggestionsModel = [(SBFloatingDockSuggestionsViewController *)self suggestionsModel];
  currentAppSuggestion = [suggestionsModel currentAppSuggestion];

  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  model = [listView model];
  [model removeAllIcons];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SBFloatingDockSuggestionsViewController__loadAndPlaceIconsInViewForDisplayItems___block_invoke;
  v13[3] = &unk_2783B3B50;
  v13[4] = self;
  v14 = model;
  v15 = listView;
  v16 = currentAppSuggestion;
  v10 = currentAppSuggestion;
  v11 = listView;
  v12 = model;
  [itemsCopy enumerateObjectsUsingBlock:v13];
}

void __83__SBFloatingDockSuggestionsViewController__loadAndPlaceIconsInViewForDisplayItems___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [a1[4] _iconForDisplayItem:?];
  if (v5)
  {
    v6 = [a1[5] insertIcon:v5 atIndex:a3 options:0];
    [a1[6] layoutAndCreateIcon:v5 atIndex:a3];
    v7 = [a1[7] bundleIdentifier];
    v8 = [v11 bundleIdentifier];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [a1[6] iconViewForIcon:v5];
      [v10 setContinuityInfo:a1[7]];
    }
  }
}

- (BOOL)_shouldDeferUpdateInvolvingContinuity:(BOOL)continuity
{
  isVisible = [(SBFloatingDockSuggestionsViewController *)self isVisible];
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  switcherController = [_sbWindowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((continuity | [(SBFloatingDockSuggestionsViewController *)self _onHomescreen]) ^ 1) & isVisible;
  }

  return v10 & 1;
}

- (void)_iconModelDidChange:(id)change
{
  homeScreenContextProvider = [(SBFloatingDockSuggestionsViewController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  iconImageCache = [iconManager iconImageCache];
  [listView setIconImageCache:iconImageCache];

  folderIconImageCache = [iconManager folderIconImageCache];
  [listView setFolderIconImageCache:folderIconImageCache];
}

- (void)_listLayoutDidChange:(id)change
{
  homeScreenContextProvider = [(SBFloatingDockSuggestionsViewController *)self homeScreenContextProvider];
  iconManager = [homeScreenContextProvider iconManager];
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  listLayoutProvider = [iconManager listLayoutProvider];
  [listView setLayoutProvider:listLayoutProvider];

  iconImageCache = [iconManager iconImageCache];
  [listView setIconImageCache:iconImageCache];

  folderIconImageCache = [iconManager folderIconImageCache];
  [listView setFolderIconImageCache:folderIconImageCache];

  [listView layoutIconsNow];
}

- (void)_fadeOutIcon:(id)icon atIndex:(unint64_t)index isReplacing:(BOOL)replacing completion:(id)completion
{
  completionCopy = completion;
  iconCopy = icon;
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  icons = [listView icons];
  v14 = [listView iconViewForIcon:iconCopy];

  [v14 setIconImageAndAccessoryAlpha:0.0];
  v15 = [v14 matchingIconViewByAddingConfigurationOptions:4 removingConfigurationOptions:0];
  [v14 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v15 setFrame:?];
  [listView addSubview:v15];
  [v15 setIconImageAndAccessoryAlpha:1.0];
  [v14 iconContentScale];
  v25 = v24;
  isShowingContextMenu = [v14 isShowingContextMenu];
  v27 = 1.15;
  if (!isShowingContextMenu)
  {
    v27 = 1.0;
  }

  [v15 setIconContentScale:v25 * v27];
  [v15 layoutIfNeeded];
  v28 = MEMORY[0x277D75D18];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __87__SBFloatingDockSuggestionsViewController__fadeOutIcon_atIndex_isReplacing_completion___block_invoke;
  v38[3] = &unk_2783AECF0;
  replacingCopy = replacing;
  v39 = v15;
  selfCopy = self;
  v42 = listView;
  indexCopy = index;
  v41 = icons;
  v44 = v17;
  v45 = v19;
  v46 = v21;
  v47 = v23;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __87__SBFloatingDockSuggestionsViewController__fadeOutIcon_atIndex_isReplacing_completion___block_invoke_2;
  v34[3] = &unk_2783AE5A0;
  v35 = v39;
  v36 = v14;
  v37 = completionCopy;
  v29 = completionCopy;
  v30 = v14;
  v31 = v39;
  v32 = listView;
  v33 = icons;
  [v28 animateWithDuration:v38 animations:v34 completion:0.5];
}

uint64_t __87__SBFloatingDockSuggestionsViewController__fadeOutIcon_atIndex_isReplacing_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIconContentScale:0.01];
  if ((*(a1 + 104) & 1) == 0)
  {
    [*(a1 + 40) _didChangeNumberOfIcons];
    v2 = *(a1 + 64);
    if (v2 >= [*(a1 + 48) count])
    {
      [*(a1 + 56) bounds];
      MaxX = CGRectGetMaxX(v18);
    }

    else
    {
      v4 = *(a1 + 56);
      v3 = *(a1 + 64);
      if (v3)
      {
        v5 = [*(a1 + 48) objectAtIndex:v3 - 1];
        v6 = [v4 iconViewForIcon:v5];
        [v6 frame];
        v8 = v7;

        v9 = *(a1 + 56);
        v10 = [*(a1 + 48) objectAtIndex:*(a1 + 64)];
        v11 = [v9 iconViewForIcon:v10];
        [v11 frame];
        v13 = v12;

        MaxX = v8 + (v13 - v8) * 0.5;
      }

      else
      {
        [*(a1 + 56) bounds];
        MaxX = CGRectGetMinX(v19);
      }
    }

    [*(a1 + 32) setFrame:{MaxX + *(a1 + 88) * -0.5, *(a1 + 80)}];
  }

  v15 = *(a1 + 32);

  return [v15 setIconImageAndAccessoryAlpha:0.0];
}

uint64_t __87__SBFloatingDockSuggestionsViewController__fadeOutIcon_atIndex_isReplacing_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) setIconImageAndAccessoryAlpha:1.0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_fadeInIcon:(id)icon isReplacing:(BOOL)replacing completion:(id)completion
{
  completionCopy = completion;
  iconCopy = icon;
  listView = [(SBFloatingDockSuggestionsViewController *)self listView];
  icons = [listView icons];
  v12 = [icons indexOfObject:iconCopy];
  [listView layoutAndCreateIcon:iconCopy atIndex:v12];
  v13 = [listView iconViewForIcon:iconCopy];

  if (![icons count] || v12 >= objc_msgSend(icons, "count") - 1)
  {
    [listView bounds];
    MaxX = CGRectGetMaxX(v36);
LABEL_6:
    v22 = MaxX;
    goto LABEL_7;
  }

  if (!v12)
  {
    [listView bounds];
    MaxX = CGRectGetMinX(v37);
    goto LABEL_6;
  }

  v14 = [icons objectAtIndex:v12 - 1];
  v15 = [icons objectAtIndex:v12 + 1];
  v16 = [listView iconViewForIcon:v14];
  [v16 frame];
  v18 = v17;

  v19 = [listView iconViewForIcon:v15];
  [v19 frame];
  v21 = v20;

  v22 = v18 + (v21 - v18) * 0.5;
LABEL_7:
  [v13 frame];
  [v13 setFrame:v22 - v24 * 0.5];
  [v13 setIconImageAndAccessoryAlpha:0.0];
  [v13 setIconContentScale:0.01];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__SBFloatingDockSuggestionsViewController__fadeInIcon_isReplacing_completion___block_invoke;
  v33[3] = &unk_2783B3B78;
  v35 = completionCopy;
  v25 = v13;
  v34 = v25;
  v26 = completionCopy;
  v27 = MEMORY[0x223D6F7F0](v33);
  [v25 setAllowsCursorInteraction:0];
  v28 = MEMORY[0x277D75D18];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __78__SBFloatingDockSuggestionsViewController__fadeInIcon_isReplacing_completion___block_invoke_2;
  v30[3] = &unk_2783A97D8;
  replacingCopy = replacing;
  v30[4] = self;
  v31 = v25;
  v29 = v25;
  [v28 animateWithDuration:v30 animations:v27 completion:0.5];
}

uint64_t __78__SBFloatingDockSuggestionsViewController__fadeInIcon_isReplacing_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setAllowsCursorInteraction:1];
}

uint64_t __78__SBFloatingDockSuggestionsViewController__fadeInIcon_isReplacing_completion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _didChangeNumberOfIcons];
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) listView];
  [v3 iconContentScale];
  [v2 setIconContentScale:?];

  v4 = *(a1 + 40);

  return [v4 setIconImageAndAccessoryAlpha:1.0];
}

- (SBFloatingDockViewController)floatingDockViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_floatingDockViewController);

  return WeakRetained;
}

- (SBFloatingDockSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_homeScreenContextProvider);

  return WeakRetained;
}

- (SBFloatingDockSuggestionsModel)suggestionsModel
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);

  return WeakRetained;
}

- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);

  return WeakRetained;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (void)_loadAndPlaceIconsInViewForDisplayItems:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "floating dock suggestions view load display items: %@", &v2, 0xCu);
}

@end