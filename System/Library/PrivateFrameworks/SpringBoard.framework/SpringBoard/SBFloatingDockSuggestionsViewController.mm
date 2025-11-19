@interface SBFloatingDockSuggestionsViewController
- (BOOL)_shouldDeferUpdateInvolvingContinuity:(BOOL)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isIconViewRecycled:(id)a3;
- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider;
- (SBFloatingDockSuggestionsModel)suggestionsModel;
- (SBFloatingDockSuggestionsViewController)initWithNumberOfRecents:(unint64_t)a3 homeScreenContextProvider:(id)a4 applicationController:(id)a5 layoutStateTransitionCoordinator:(id)a6 suggestionsModel:(id)a7 iconViewProvider:(id)a8;
- (SBFloatingDockSuggestionsViewControllerDelegate)delegate;
- (SBFloatingDockViewController)floatingDockViewController;
- (SBIconViewProviding)iconViewProvider;
- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator;
- (id)_iconForDisplayItem:(id)a3;
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)iconViewForIcon:(id)a3 location:(id)a4;
- (void)_didChangeNumberOfIcons;
- (void)_emitPresentedEventInvolvingContinuity:(BOOL)a3 fromModel:(id)a4 atIndex:(unint64_t)a5;
- (void)_fadeInIcon:(id)a3 isReplacing:(BOOL)a4 completion:(id)a5;
- (void)_fadeOutIcon:(id)a3 atIndex:(unint64_t)a4 isReplacing:(BOOL)a5 completion:(id)a6;
- (void)_iconModelDidChange:(id)a3;
- (void)_listLayoutDidChange:(id)a3;
- (void)_loadAndPlaceIconsInViewForDisplayItems:(id)a3;
- (void)_performDeferredIconUpdates;
- (void)_performOrDefer:(BOOL)a3 iconUpdate:(id)a4;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)dealloc;
- (void)dockFolderDidEndTransitioning;
- (void)dockFolderWillBeginTransitioning;
- (void)dockSuggestionsModel:(id)a3 didInsertItem:(id)a4 atIndex:(unint64_t)a5 involvesContinuity:(BOOL)a6;
- (void)dockSuggestionsModel:(id)a3 didReloadItems:(id)a4 withItems:(id)a5;
- (void)dockSuggestionsModel:(id)a3 didRemoveItem:(id)a4 atIndex:(unint64_t)a5 involvesContinuity:(BOOL)a6;
- (void)dockSuggestionsModel:(id)a3 didReplaceItem:(id)a4 atIndex:(unint64_t)a5 withItem:(id)a6 atIndex:(unint64_t)a7 involvesContinuity:(BOOL)a8;
- (void)dockViewDidBecomeVisible;
- (void)dockViewDidResignVisible;
- (void)dockViewWillBecomeVisible;
- (void)dockViewWillResignVisible;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)loadView;
- (void)recycleIconView:(id)a3;
@end

@implementation SBFloatingDockSuggestionsViewController

- (SBFloatingDockSuggestionsViewController)initWithNumberOfRecents:(unint64_t)a3 homeScreenContextProvider:(id)a4 applicationController:(id)a5 layoutStateTransitionCoordinator:(id)a6 suggestionsModel:(id)a7 iconViewProvider:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = SBFloatingDockSuggestionsViewController;
  v19 = [(SBFloatingDockSuggestionsViewController *)&v28 initWithNibName:0 bundle:0];
  v20 = v19;
  if (v19)
  {
    v19->_numberOfRecents = a3;
    v21 = [objc_alloc(MEMORY[0x277D663C0]) initWithFolder:0 maxIconCount:a3];
    suggestionsIconListModel = v20->_suggestionsIconListModel;
    v20->_suggestionsIconListModel = v21;

    objc_storeWeak(&v20->_homeScreenContextProvider, v14);
    objc_storeStrong(&v20->_applicationController, a5);
    objc_storeWeak(&v20->_suggestionsModel, v17);
    [v17 setDelegate:v20];
    v23 = [MEMORY[0x277CBEB18] array];
    deferredIconUpdates = v20->_deferredIconUpdates;
    v20->_deferredIconUpdates = v23;

    [v16 addObserver:v20];
    objc_storeWeak(&v20->_layoutStateTransitionCoordinator, v16);
    v20->_effectiveEnvironmentMode = 0;
    objc_storeWeak(&v20->_iconViewProvider, v18);
    v25 = [v14 iconManager];
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v20 selector:sel__iconModelDidChange_ name:*MEMORY[0x277D66568] object:v25];
    [v26 addObserver:v20 selector:sel__listLayoutDidChange_ name:*MEMORY[0x277D66570] object:v25];
  }

  return v20;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);
  [WeakRetained removeObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SBFloatingDockSuggestionsViewController;
  [(SBFloatingDockSuggestionsViewController *)&v5 dealloc];
}

- (void)loadView
{
  v12 = [(SBFloatingDockSuggestionsViewController *)self homeScreenContextProvider];
  v3 = [v12 iconManager];
  v4 = [SBDockSuggestionsIconListView alloc];
  suggestionsIconListModel = self->_suggestionsIconListModel;
  v6 = [v3 listLayoutProvider];
  v7 = [(SBDockIconListView *)v4 initWithModel:suggestionsIconListModel layoutProvider:v6 iconLocation:@"SBIconLocationFloatingDockSuggestions" orientation:1 iconViewProvider:self];

  [(SBIconListView *)v7 setIconViewConfigurationOptions:2];
  v8 = [v3 iconImageCache];
  [(SBIconListView *)v7 setIconImageCache:v8];

  v9 = [v3 folderIconImageCache];
  [(SBIconListView *)v7 setFolderIconImageCache:v9];

  [(SBIconListView *)v7 setAutomaticallyAdjustsLayoutMetricsToFit:0];
  [(SBFloatingDockSuggestionsViewController *)self setView:v7];
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  v11 = [WeakRetained currentDisplayItems];
  [(SBFloatingDockSuggestionsViewController *)self _loadAndPlaceIconsInViewForDisplayItems:v11];
}

- (void)dockViewWillBecomeVisible
{
  v2 = [(SBFloatingDockSuggestionsViewController *)self listView];
  [v2 enumerateIconViewsUsingBlock:&__block_literal_global_122];
}

- (void)dockViewWillResignVisible
{
  v2 = [(SBFloatingDockSuggestionsViewController *)self listView];
  [v2 enumerateIconViewsUsingBlock:&__block_literal_global_30];
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
  v3 = [(SBFloatingDockSuggestionsViewController *)self delegate];
  [v3 floatingDockSuggestionsViewControllerDidChangeNumberOfVisibleSuggestions:self];

  v4 = [(SBFloatingDockSuggestionsViewController *)self floatingDockViewController];
  [v4 floatingDockSuggestionsViewControllerDidChangeNumberOfVisibleSuggestions:self];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v6 = [a4 toLayoutState];
  self->_effectiveEnvironmentMode = [v6 unlockedEnvironmentMode];
  if ([(SBFloatingDockSuggestionsViewController *)self _onHomescreen])
  {
    [(SBFloatingDockSuggestionsViewController *)self _performDeferredIconUpdates];
  }

  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  [WeakRetained beginPendingUpdatesForReason:@"Transitioning"];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  if (([a4 isInterrupted] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
    [WeakRetained endPendingUpdatesForReason:@"Transitioning"];
  }
}

- (void)_emitPresentedEventInvolvingContinuity:(BOOL)a3 fromModel:(id)a4 atIndex:(unint64_t)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = [a4 currentAppSuggestion];
    if (v6)
    {
      v7 = [MEMORY[0x277D66378] itemForContinuityInfo:v6];
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
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v8, a4}];
  v16[0] = v9;
  v15[1] = *MEMORY[0x277D674B0];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = MEMORY[0x277D65DD0];
  v13 = v11;
  v14 = [v12 sharedInstance];
  [v14 emitEvent:17 withPayload:v13];
}

- (void)_performOrDefer:(BOOL)a3 iconUpdate:(id)a4
{
  if (a3)
  {
    deferredIconUpdates = self->_deferredIconUpdates;
    v7 = [a4 copy];
    [(NSMutableArray *)deferredIconUpdates addObject:v7];
  }

  else
  {
    v6 = *(a4 + 2);

    v6(a4);
  }
}

- (void)dockSuggestionsModel:(id)a3 didInsertItem:(id)a4 atIndex:(unint64_t)a5 involvesContinuity:(BOOL)a6
{
  v6 = a6;
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2048;
    v26 = a5;
    _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "floating dock suggestions model: %@ did insert item: %@ at index: %lu", buf, 0x20u);
  }

  v13 = [(SBFloatingDockSuggestionsViewController *)self _shouldDeferUpdateInvolvingContinuity:v6];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didInsertItem_atIndex_involvesContinuity___block_invoke;
  v16[3] = &unk_2783AB438;
  v20 = v6;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = a5;
  v14 = v11;
  v15 = v10;
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

- (void)dockSuggestionsModel:(id)a3 didRemoveItem:(id)a4 atIndex:(unint64_t)a5 involvesContinuity:(BOOL)a6
{
  v6 = a6;
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2048;
    v31 = a5;
    _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "floating dock suggestions model: %@ did remove old item: %@ at index: %lu", buf, 0x20u);
  }

  v13 = [(SBFloatingDockSuggestionsViewController *)self listView];
  if ([(NSMutableArray *)self->_deferredIconUpdates count])
  {
    [(SBFloatingDockSuggestionsViewController *)self _performDeferredIconUpdates];
  }

  v14 = [v13 model];
  if ([v14 numberOfIcons] <= a5)
  {
    v15 = 0;
  }

  else
  {
    v15 = [v14 iconAtIndex:a5];
    if (v15)
    {
      [v14 removeIcon:v15];
      if ([(SBFloatingDockSuggestionsViewController *)self isVisible])
      {
        v16 = [v13 displayedIconViewForIcon:v15];
        v17 = [v13 displayedIconViewForIcon:v15];
        [v17 continuityInfo];
        v18 = v21 = v6;

        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __105__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didRemoveItem_atIndex_involvesContinuity___block_invoke;
        v22[3] = &unk_2783B1948;
        v25 = v21;
        v23 = v16;
        v24 = v18;
        v19 = v18;
        v20 = v16;
        [(SBFloatingDockSuggestionsViewController *)self _fadeOutIcon:v15 atIndex:a5 isReplacing:0 completion:v22];

LABEL_12:
        goto LABEL_13;
      }

      [v13 layoutIconsNow];
      [(SBFloatingDockSuggestionsViewController *)self _didChangeNumberOfIcons];
      if (v6)
      {
        v20 = [v13 displayedIconViewForIcon:v15];
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

- (void)dockSuggestionsModel:(id)a3 didReplaceItem:(id)a4 atIndex:(unint64_t)a5 withItem:(id)a6 atIndex:(unint64_t)a7 involvesContinuity:(BOOL)a8
{
  v8 = a8;
  v37 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = SBLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2048;
    v36 = a7;
    _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "floating dock suggestions model: %@ did replace old item: %@ with new item: %@ at index: %lu", buf, 0x2Au);
  }

  v18 = [(SBFloatingDockSuggestionsViewController *)self _shouldDeferUpdateInvolvingContinuity:v8];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __123__SBFloatingDockSuggestionsViewController_dockSuggestionsModel_didReplaceItem_atIndex_withItem_atIndex_involvesContinuity___block_invoke;
  v22[3] = &unk_2783B3B00;
  v28 = v8;
  v22[4] = self;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = a7;
  v27 = a5;
  v19 = v16;
  v20 = v15;
  v21 = v14;
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

- (void)dockSuggestionsModel:(id)a3 didReloadItems:(id)a4 withItems:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "floating dock suggestions model: %@ did reload old items: %@ with new items: %@", buf, 0x20u);
  }

  if (([v9 isEqualToOrderedSet:v10] & 1) == 0)
  {
    v28 = v9;
    [(SBFloatingDockSuggestionsViewController *)self _performDeferredIconUpdates];
    v12 = [(SBFloatingDockSuggestionsViewController *)self listView];
    [v12 removeAllIconViews];
    v30 = v12;
    v31 = [v12 model];
    [v31 removeAllIcons];
    v29 = v8;
    v13 = [v8 currentAppSuggestion];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v10;
    v14 = v10;
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
            v21 = [v31 addIcon:v20];
            v22 = [v13 bundleIdentifier];
            v23 = [v19 bundleIdentifier];
            v24 = [v22 isEqual:v23];

            if (v24)
            {
              v25 = [v30 iconViewForIcon:v20];
              [v25 setContinuityInfo:v13];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    [v30 layoutIconsNow];
    v9 = v28;
    v26 = [v28 count];
    if (v26 != [v14 count])
    {
      [(SBFloatingDockSuggestionsViewController *)self _didChangeNumberOfIcons];
    }

    v8 = v29;
    v10 = v27;
  }
}

- (id)iconViewForIcon:(id)a3 location:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationFloatingDockSuggestions"] && -[SBIconListModel directlyContainsIcon:](self->_suggestionsIconListModel, "directlyContainsIcon:", v6))
  {
    v7 = [(SBFloatingDockSuggestionsViewController *)self listView];
    v8 = [v7 displayedIconViewForIcon:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [(SBFloatingDockSuggestionsViewController *)self iconViewForIcon:v6 location:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockSuggestionsViewController *)self presentedIconLocations];
  v6 = [v5 allObjects];
  v7 = [(SBFloatingDockSuggestionsViewController *)self firstIconViewForIcon:v4 inLocations:v6];

  return v7;
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockSuggestionsViewController *)self presentedIconLocations];
  v9 = [v8 mutableCopy];

  [v9 minusSet:v6];
  v10 = [v9 allObjects];
  v11 = [(SBFloatingDockSuggestionsViewController *)self firstIconViewForIcon:v7 inLocations:v10];

  return v11;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    v7 = [(SBFloatingDockSuggestionsViewController *)self listView];
    v8 = [v7 model];
    v9 = [v8 directlyContainsIcon:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([(SBFloatingDockSuggestionsViewController *)self isDisplayingIcon:v6 inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isDisplayingIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockSuggestionsViewController *)self listView];
  v6 = [v5 isDisplayingIconView:v4];

  return v6;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    v7 = [(SBFloatingDockSuggestionsViewController *)self listView];
    v8 = [v7 isDisplayingIconView:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockSuggestionsViewController *)self listView];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__SBFloatingDockSuggestionsViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_2783B3B28;
  v8 = v4;
  v6 = v4;
  [v5 enumerateIconViewsUsingBlock:v7];
}

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(SBFloatingDockSuggestionsViewController *)self listView];
  v8 = [v7 displayedIconViewForIcon:v6];

  if (v8)
  {
    v9[2](v9, v8);
  }
}

- (id)dequeueReusableIconViewOfClass:(Class)a3
{
  v4 = [(SBFloatingDockSuggestionsViewController *)self iconViewProvider];
  v5 = [v4 dequeueReusableIconViewOfClass:a3];

  return v5;
}

- (void)recycleIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockSuggestionsViewController *)self iconViewProvider];
  [v5 recycleIconView:v4];
}

- (BOOL)isIconViewRecycled:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockSuggestionsViewController *)self iconViewProvider];
  v6 = [v5 isIconViewRecycled:v4];

  return v6;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockSuggestionsViewController *)self iconViewProvider];
  [v7 configureIconView:v13 forIcon:v6];

  [v13 setIconContentScalingEnabled:1];
  [v13 setStartsDragMoreQuickly:1];
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsModel);
  v9 = [WeakRetained currentAppSuggestion];

  if ([v6 isApplicationIcon])
  {
    v10 = [v9 bundleIdentifier];
    v11 = [v6 applicationBundleID];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      [v13 setContinuityInfo:v9];
    }
  }
}

- (id)_iconForDisplayItem:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [(SBFloatingDockSuggestionsViewController *)self homeScreenContextProvider];
  v7 = [v6 iconModel];
  if ([v4 type] == 5)
  {
    v8 = [v4 webClipIdentifier];
    v9 = [v7 bookmarkIconForWebClipIdentifier:v8];
  }

  else
  {
    v9 = [v7 applicationIconForBundleIdentifier:v5];
  }

  return v9;
}

- (void)_loadAndPlaceIconsInViewForDisplayItems:(id)a3
{
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFloatingDockSuggestionsViewController *)v4 _loadAndPlaceIconsInViewForDisplayItems:v5];
  }

  v6 = [(SBFloatingDockSuggestionsViewController *)self suggestionsModel];
  v7 = [v6 currentAppSuggestion];

  v8 = [(SBFloatingDockSuggestionsViewController *)self listView];
  v9 = [v8 model];
  [v9 removeAllIcons];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SBFloatingDockSuggestionsViewController__loadAndPlaceIconsInViewForDisplayItems___block_invoke;
  v13[3] = &unk_2783B3B50;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [v4 enumerateObjectsUsingBlock:v13];
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

- (BOOL)_shouldDeferUpdateInvolvingContinuity:(BOOL)a3
{
  v5 = [(SBFloatingDockSuggestionsViewController *)self isVisible];
  v6 = [(UIViewController *)self _sbWindowScene];
  v7 = [v6 switcherController];
  v8 = [v7 windowManagementContext];
  v9 = [v8 isChamoisOrFlexibleWindowing];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 | [(SBFloatingDockSuggestionsViewController *)self _onHomescreen]) ^ 1) & v5;
  }

  return v10 & 1;
}

- (void)_iconModelDidChange:(id)a3
{
  v8 = [(SBFloatingDockSuggestionsViewController *)self homeScreenContextProvider];
  v4 = [v8 iconManager];
  v5 = [(SBFloatingDockSuggestionsViewController *)self listView];
  v6 = [v4 iconImageCache];
  [v5 setIconImageCache:v6];

  v7 = [v4 folderIconImageCache];
  [v5 setFolderIconImageCache:v7];
}

- (void)_listLayoutDidChange:(id)a3
{
  v9 = [(SBFloatingDockSuggestionsViewController *)self homeScreenContextProvider];
  v4 = [v9 iconManager];
  v5 = [(SBFloatingDockSuggestionsViewController *)self listView];
  v6 = [v4 listLayoutProvider];
  [v5 setLayoutProvider:v6];

  v7 = [v4 iconImageCache];
  [v5 setIconImageCache:v7];

  v8 = [v4 folderIconImageCache];
  [v5 setFolderIconImageCache:v8];

  [v5 layoutIconsNow];
}

- (void)_fadeOutIcon:(id)a3 atIndex:(unint64_t)a4 isReplacing:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [(SBFloatingDockSuggestionsViewController *)self listView];
  v13 = [v12 icons];
  v14 = [v12 iconViewForIcon:v11];

  [v14 setIconImageAndAccessoryAlpha:0.0];
  v15 = [v14 matchingIconViewByAddingConfigurationOptions:4 removingConfigurationOptions:0];
  [v14 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v15 setFrame:?];
  [v12 addSubview:v15];
  [v15 setIconImageAndAccessoryAlpha:1.0];
  [v14 iconContentScale];
  v25 = v24;
  v26 = [v14 isShowingContextMenu];
  v27 = 1.15;
  if (!v26)
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
  v48 = a5;
  v39 = v15;
  v40 = self;
  v42 = v12;
  v43 = a4;
  v41 = v13;
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
  v37 = v10;
  v29 = v10;
  v30 = v14;
  v31 = v39;
  v32 = v12;
  v33 = v13;
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

- (void)_fadeInIcon:(id)a3 isReplacing:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SBFloatingDockSuggestionsViewController *)self listView];
  v11 = [v10 icons];
  v12 = [v11 indexOfObject:v9];
  [v10 layoutAndCreateIcon:v9 atIndex:v12];
  v13 = [v10 iconViewForIcon:v9];

  if (![v11 count] || v12 >= objc_msgSend(v11, "count") - 1)
  {
    [v10 bounds];
    MaxX = CGRectGetMaxX(v36);
LABEL_6:
    v22 = MaxX;
    goto LABEL_7;
  }

  if (!v12)
  {
    [v10 bounds];
    MaxX = CGRectGetMinX(v37);
    goto LABEL_6;
  }

  v14 = [v11 objectAtIndex:v12 - 1];
  v15 = [v11 objectAtIndex:v12 + 1];
  v16 = [v10 iconViewForIcon:v14];
  [v16 frame];
  v18 = v17;

  v19 = [v10 iconViewForIcon:v15];
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
  v35 = v8;
  v25 = v13;
  v34 = v25;
  v26 = v8;
  v27 = MEMORY[0x223D6F7F0](v33);
  [v25 setAllowsCursorInteraction:0];
  v28 = MEMORY[0x277D75D18];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __78__SBFloatingDockSuggestionsViewController__fadeInIcon_isReplacing_completion___block_invoke_2;
  v30[3] = &unk_2783A97D8;
  v32 = a4;
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