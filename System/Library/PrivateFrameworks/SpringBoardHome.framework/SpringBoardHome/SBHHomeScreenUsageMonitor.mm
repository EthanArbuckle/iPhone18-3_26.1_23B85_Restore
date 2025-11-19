@interface SBHHomeScreenUsageMonitor
- (SBHHomeScreenUsageMonitor)initWithIconManager:(id)a3;
- (SBHIconManager)iconManager;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)listModelIndexForRootFolderController:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5;
- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)iconManagerDidChangeIconModel:(id)a3;
- (void)iconManagerDidChangeRootViewController:(id)a3;
- (void)iconManagerEditingDidChange:(id)a3;
- (void)iconModelDidLayOut:(id)a3;
- (void)leafIcon:(id)a3 didAddIconDataSource:(id)a4;
- (void)leafIcon:(id)a3 didChangeActiveDataSource:(id)a4;
- (void)leafIcon:(id)a3 didRemoveIconDataSource:(id)a4;
- (void)noteAddWidgetSheetWillPresent;
- (void)noteCurrentPageIndexChanged:(unint64_t)a3;
- (void)noteEditingModeEnded;
- (void)noteEditingModeEntered;
- (void)noteIconManagerContentOccludedChanged;
- (void)noteIconManagerCoverSheetTodayViewDidAppear;
- (void)noteIconManagerCoverSheetTodayViewDidDisappear;
- (void)noteIconManagerListLayoutProviderChanged;
- (void)noteIconManagerOverlayTodayViewDidAppear;
- (void)noteIconManagerOverlayTodayViewDidDisappear;
- (void)noteIconManagerRootFolderControllerViewDidDisappear;
- (void)noteIconManagerRootFolderControllerViewWillAppear;
- (void)noteIconManagerTodayViewAtLocation:(int64_t)a3 didScrollToRevealIcons:(id)a4;
- (void)noteIconStylePickerDidDismiss;
- (void)noteLayoutChanged;
- (void)noteUserAddedWidgetIconStackSuggestion:(id)a3;
- (void)noteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)a3;
- (void)noteUserDislikedWidgetIconStackSuggestion:(id)a3;
- (void)noteUserTappedWidgetIcon:(id)a3 withURL:(id)a4;
- (void)noteWidgetDiscoverabilityDidAcceptSuggestion:(id)a3;
- (void)noteWidgetDiscoverabilityDidEnterEditingMode;
- (void)noteWidgetDiscoverabilityDidRejectSuggestion:(id)a3;
- (void)noteWidgetDiscoverabilityStarted;
- (void)noteWidgetIconAdded:(id)a3;
- (void)noteWidgetIconRemoved:(id)a3;
- (void)noteWidgetIconStack:(id)a3 changedActiveWidget:(id)a4;
- (void)notifyForEveryHomeScreenWidgetVisibility;
- (void)notifyForEveryTodayViewWidgetVisibilityOnCoverSheet:(BOOL)a3;
- (void)notifyRootFolderControllerViewWillAppear;
- (void)resetIconModel;
- (void)resetRootFolderController;
- (void)rootFolderControllerCurrentPageIndexDidChange:(id)a3;
- (void)rootFolderControllerDidEndScrolling:(id)a3;
- (void)setHomeScreenDisappearanceReasons:(unint64_t)a3;
- (void)setIconModel:(id)a3;
- (void)setRootFolder:(id)a3;
- (void)setRootFolderController:(id)a3;
- (void)updateVisibilityReasons;
- (void)updateVisibleWidgetIcons;
@end

@implementation SBHHomeScreenUsageMonitor

- (void)noteIconManagerContentOccludedChanged
{
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Icon manager content occluded changed", v4, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self updateVisibilityReasons];
}

- (void)updateVisibilityReasons
{
  v8 = [(SBHHomeScreenUsageMonitor *)self iconManager];
  if (!SBHContentVisibilityIsVisible([v8 contentVisibility]) || (objc_msgSend(v8, "isOverlayTodayViewVisible") & 1) != 0 || objc_msgSend(v8, "isMainDisplayLibraryViewVisible"))
  {
    v3 = v8;
    v4 = 2;
  }

  else
  {
    v3 = v8;
    v4 = 0;
  }

  v5 = [v3 rootViewController];
  v6 = [v5 _appearState];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  [(SBHHomeScreenUsageMonitor *)self setHomeScreenDisappearanceReasons:v7];
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

- (void)notifyForEveryHomeScreenWidgetVisibility
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v4 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (v3)
    {
      v5 = @"visible";
    }

    else
    {
      v5 = @"gone";
    }

    v6 = [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons count];
    *buf = 138543618;
    v31 = v5;
    v32 = 2048;
    v33 = v6;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "notifying that all home screen widgets are %{public}@: (%lu widgets)", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_visibleHomeScreenWidgetIcons;
  v18 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v18)
  {
    v17 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v7;
        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [v8 activeDataSource];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = self->_observers;
        v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                if (v3)
                {
                  [v15 homeScreenUsageAggregator:self didNoteDataSourceDidAppear:v9 forWidgetIcon:v8];
                }

                else
                {
                  [v15 homeScreenUsageAggregator:self didNoteDataSourceDidDisappear:v9 forWidgetIcon:v8];
                }
              }
            }

            v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }

        v7 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }
}

- (void)noteIconManagerRootFolderControllerViewDidDisappear
{
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Root folder controller view did disappear", v4, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self updateVisibilityReasons];
}

- (void)noteIconManagerRootFolderControllerViewWillAppear
{
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Root folder controller view will appear", v4, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self updateVisibilityReasons];
  [(SBHHomeScreenUsageMonitor *)self notifyRootFolderControllerViewWillAppear];
}

- (void)notifyRootFolderControllerViewWillAppear
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(SBHHomeScreenUsageMonitor *)self rootFolderController];
  v4 = [(SBHHomeScreenUsageMonitor *)self listModelIndexForRootFolderController:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 homeScreenUsageAggregator:self didNoteRootControllerWillAppearWithPageIndex:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)noteIconManagerOverlayTodayViewDidDisappear
{
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Overlay today view did disappear", v4, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self updateVisibilityReasons];
  [(SBHHomeScreenUsageMonitor *)self notifyForEveryTodayViewWidgetVisibilityOnCoverSheet:0];
}

- (void)noteIconManagerCoverSheetTodayViewDidAppear
{
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Cover sheet today view did appear", v4, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self notifyForEveryTodayViewWidgetVisibilityOnCoverSheet:1];
}

- (void)noteLayoutChanged
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(SBHHomeScreenUsageMonitor *)self iconManager];
  v4 = [v3 isEditing];

  if (v4)
  {

    [(SBHHomeScreenUsageMonitor *)self setDelayedLayoutDidChangeNotification:1];
  }

  else
  {
    v5 = SBLogHomeScreenUsageMonitor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "notifying for home screen layout change", buf, 2u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 homeScreenUsageAggregatorDidNoteHomeScreenLayoutChanged:{self, v12}];
          }
        }

        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)updateVisibleWidgetIcons
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = [(SBHHomeScreenUsageMonitor *)self rootFolderController];
  v4 = [v3 currentIconListModel];
  v5 = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __53__SBHHomeScreenUsageMonitor_updateVisibleWidgetIcons__block_invoke;
  v58[3] = &unk_1E808CBC0;
  v58[4] = self;
  v41 = v6;
  v59 = v41;
  [v4 enumerateIconsUsingBlock:v58];
  v7 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    visibleHomeScreenWidgetIcons = self->_visibleHomeScreenWidgetIcons;
    *buf = 138412802;
    v65 = visibleHomeScreenWidgetIcons;
    v66 = 2112;
    v67 = v41;
    v68 = 1024;
    v69 = v5;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "update visible widget icons. old set: %@, new set: %@ (content visible: %{BOOL}u)", buf, 0x1Cu);
  }

  if (v5)
  {
    v33 = v4;
    v34 = v3;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = self->_visibleHomeScreenWidgetIcons;
    v9 = [(NSMutableSet *)obj countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      v35 = *v55;
      do
      {
        v12 = 0;
        v37 = v10;
        do
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v54 + 1) + 8 * v12);
          if (([v41 containsObject:{v13, v33, v34}] & 1) == 0)
          {
            v14 = [v13 activeDataSource];
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v15 = self->_observers;
            v16 = [(NSHashTable *)v15 countByEnumeratingWithState:&v50 objects:v62 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v51;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v51 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v50 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    [v20 homeScreenUsageAggregator:self didNoteDataSourceDidDisappear:v14 forWidgetIcon:v13];
                  }
                }

                v17 = [(NSHashTable *)v15 countByEnumeratingWithState:&v50 objects:v62 count:16];
              }

              while (v17);
            }

            v11 = v35;
            v10 = v37;
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v10);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obja = v41;
    v21 = [obja countByEnumeratingWithState:&v46 objects:v61 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v47;
      v36 = *v47;
      do
      {
        v24 = 0;
        v38 = v22;
        do
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v46 + 1) + 8 * v24);
          if (([(NSMutableSet *)self->_visibleHomeScreenWidgetIcons containsObject:v25, v33, v34]& 1) == 0)
          {
            v26 = [v25 activeDataSource];
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v27 = self->_observers;
            v28 = [(NSHashTable *)v27 countByEnumeratingWithState:&v42 objects:v60 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v43;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v43 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v42 + 1) + 8 * j);
                  if (objc_opt_respondsToSelector())
                  {
                    [v32 homeScreenUsageAggregator:self didNoteDataSourceDidAppear:v26 forWidgetIcon:v25];
                  }
                }

                v29 = [(NSHashTable *)v27 countByEnumeratingWithState:&v42 objects:v60 count:16];
              }

              while (v29);
            }

            v23 = v36;
            v22 = v38;
          }

          ++v24;
        }

        while (v24 != v22);
        v22 = [obja countByEnumeratingWithState:&v46 objects:v61 count:16];
      }

      while (v22);
    }

    v4 = v33;
    v3 = v34;
  }

  [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons setSet:v41, v33, v34];
}

- (SBHHomeScreenUsageMonitor)initWithIconManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBHHomeScreenUsageMonitor;
  v5 = [(SBHHomeScreenUsageMonitor *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, v4);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel_iconManagerDidChangeIconModel_ name:@"SBHIconManagerIconModelDidChange" object:v4];
    [v7 addObserver:v6 selector:sel_iconManagerDidChangeRootViewController_ name:@"SBHIconManagerRootViewControllerDidChange" object:v4];
    [v7 addObserver:v6 selector:sel_iconManagerEditingDidChange_ name:@"SBHIconManagerEditingStateChanged" object:v4];
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    visibleHomeScreenWidgetIcons = v6->_visibleHomeScreenWidgetIcons;
    v6->_visibleHomeScreenWidgetIcons = v8;

    v6->_homeScreenDisappearanceReasons = 1;
    [(SBHHomeScreenUsageMonitor *)v6 resetIconModel];
    [(SBHHomeScreenUsageMonitor *)v6 resetRootFolderController];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHHomeScreenUsageMonitor;
  [(SBHHomeScreenUsageMonitor *)&v4 dealloc];
}

- (void)resetIconModel
{
  v4 = [(SBHHomeScreenUsageMonitor *)self iconManager];
  v3 = [v4 iconModel];
  [(SBHHomeScreenUsageMonitor *)self setIconModel:v3];
}

- (void)setIconModel:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Set icon model: %@", buf, 0xCu);
  }

  if (self->_iconModel != v5)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = v7;
    if (self->_iconModel)
    {
      [v7 removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:?];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      iconModel = self->_iconModel;
      v10 = objc_opt_self();
      v11 = [(SBHIconModel *)iconModel iconsOfClass:v10];

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v27 + 1) + 8 * i) removeObserver:self];
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v13);
      }
    }

    objc_storeStrong(&self->_iconModel, a3);
    [(SBHHomeScreenUsageMonitor *)self updateVisibleWidgetIcons];
    if (v5)
    {
      [v8 addObserver:self selector:sel_iconModelDidLayOut_ name:@"SBIconModelDidLayoutIconStateNotification" object:v5];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = objc_opt_self();
      v17 = [(SBHIconModel *)v5 iconsOfClass:v16, 0];

      v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v23 + 1) + 8 * j) addObserver:self];
          }

          v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v19);
      }
    }
  }

  v22 = [(SBHIconModel *)v5 rootFolder];
  [(SBHHomeScreenUsageMonitor *)self setRootFolder:v22];
}

- (void)setRootFolder:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Set root folder: %@", &v8, 0xCu);
  }

  rootFolder = self->_rootFolder;
  if (rootFolder != v5)
  {
    [(SBFolder *)rootFolder removeFolderObserver:self];
    objc_storeStrong(&self->_rootFolder, a3);
    [(SBFolder *)self->_rootFolder addFolderObserver:self];
    [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
  }
}

- (void)resetRootFolderController
{
  v4 = [(SBHHomeScreenUsageMonitor *)self iconManager];
  v3 = [v4 rootFolderController];
  [(SBHHomeScreenUsageMonitor *)self setRootFolderController:v3];
}

- (void)setRootFolderController:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Set root folder controller: %@", &v8, 0xCu);
  }

  if (self->_rootFolderController != v5)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:self name:@"SBFolderControllerCurrentPageIndexDidChangeNotification" object:self->_rootFolderController];
    [v7 removeObserver:self name:@"SBFolderControllerDidEndScrollingNotification" object:self->_rootFolderController];
    objc_storeStrong(&self->_rootFolderController, a3);
    [(SBHHomeScreenUsageMonitor *)self updateVisibleWidgetIcons];
    if (v5)
    {
      [v7 addObserver:self selector:sel_rootFolderControllerCurrentPageIndexDidChange_ name:@"SBFolderControllerCurrentPageIndexDidChangeNotification" object:v5];
      [v7 addObserver:self selector:sel_rootFolderControllerDidEndScrolling_ name:@"SBFolderControllerDidEndScrollingNotification" object:v5];
    }
  }
}

- (void)setHomeScreenDisappearanceReasons:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Set widget disappearance reasons: %lx", &v7, 0xCu);
  }

  homeScreenDisappearanceReasons = self->_homeScreenDisappearanceReasons;
  if (homeScreenDisappearanceReasons != a3)
  {
    self->_homeScreenDisappearanceReasons = a3;
    if ((a3 != 0) == (homeScreenDisappearanceReasons == 0))
    {
      [(SBHHomeScreenUsageMonitor *)self notifyForEveryHomeScreenWidgetVisibility];
    }
  }
}

- (void)noteIconManagerListLayoutProviderChanged
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Icon manager list layout provider changed", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 homeScreenUsageAggregatorDidNoteListLayoutProviderChanged:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)noteIconManagerCoverSheetTodayViewDidDisappear
{
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Cover sheet today view did disappear", v4, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self notifyForEveryTodayViewWidgetVisibilityOnCoverSheet:1];
}

- (void)noteIconManagerOverlayTodayViewDidAppear
{
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Overlay today view did appear", v4, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self updateVisibilityReasons];
  [(SBHHomeScreenUsageMonitor *)self notifyForEveryTodayViewWidgetVisibilityOnCoverSheet:0];
}

- (void)noteIconManagerTodayViewAtLocation:(int64_t)a3 didScrollToRevealIcons:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "Overlay today view did scroll to reveal icons", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 homeScreenUsageAggregator:self didNoteTodayViewAtLocation:a3 scrolledWithIconVisibility:{v6, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)noteWidgetDiscoverabilityStarted
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Widget discoverability started", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 homeScreenUsageAggregatorDidStartDiscoveringWidgets:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)noteWidgetDiscoverabilityDidAcceptSuggestion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Widget discoverability suggestions accepted", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 homeScreenUsageAggregator:self widgetDiscoverabilityDidAcceptSuggestion:{v4, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)noteWidgetDiscoverabilityDidRejectSuggestion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Widget discoverability suggestions rejected", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 homeScreenUsageAggregator:self widgetDiscoverabilityDidRejectSuggestion:{v4, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)noteWidgetDiscoverabilityDidEnterEditingMode
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Widget discoverability entering editing mode", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 homeScreenUsageAggregatorWidgetDiscoverabilityDidEnterEditingMode:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)noteAddWidgetSheetWillPresent
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Add Widget sheet will present", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 homeScreenUsageAggregatorAddWidgetSheetWillPresent:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)noteIconStylePickerDidDismiss
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Icon Style Picker did dismiss", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 homeScreenUsageAggregatorDidNoteIconStylePickerDidDismiss:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)iconManagerDidChangeIconModel:(id)a3
{
  v4 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "icon manager did change icon model", v5, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self resetIconModel];
}

- (void)iconManagerDidChangeRootViewController:(id)a3
{
  v4 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "icon manager did change root view controller", v5, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self resetRootFolderController];
}

- (void)iconManagerEditingDidChange:(id)a3
{
  v4 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "icon manager editing did change", v6, 2u);
  }

  if ([(SBHHomeScreenUsageMonitor *)self delayedLayoutDidChangeNotification])
  {
    [(SBHHomeScreenUsageMonitor *)self setDelayedLayoutDidChangeNotification:0];
    [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
  }

  v5 = [(SBHHomeScreenUsageMonitor *)self iconManager];
  if ([v5 isEditing])
  {
    [(SBHHomeScreenUsageMonitor *)self noteEditingModeEntered];
  }

  else
  {
    [(SBHHomeScreenUsageMonitor *)self noteEditingModeEnded];
  }
}

- (void)iconModelDidLayOut:(id)a3
{
  v4 = a3;
  v5 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "icon model did lay out", v8, 2u);
  }

  v6 = [v4 object];

  v7 = [v6 rootFolder];
  [(SBHHomeScreenUsageMonitor *)self setRootFolder:v7];
}

- (void)rootFolderControllerCurrentPageIndexDidChange:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = [(SBFolderController *)self->_rootFolderController isScrolling];
  v6 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "root folder controller current page index did change (scrolling: %{BOOL}u)", v7, 8u);
  }

  if (v5)
  {
    [(SBHHomeScreenUsageMonitor *)self setCurrentPageIndexDidChangeWhileScrolling:1];
  }

  else
  {
    [(SBHHomeScreenUsageMonitor *)self noteCurrentPageIndexChanged:[(SBHHomeScreenUsageMonitor *)self listModelIndexForRootFolderController:v4]];
  }
}

- (unint64_t)listModelIndexForRootFolderController:(id)a3
{
  v3 = a3;
  v4 = [v3 iconListModelIndexForPageIndex:{objc_msgSend(v3, "currentPageIndex")}];

  return v4;
}

- (void)rootFolderControllerDidEndScrolling:(id)a3
{
  v4 = a3;
  v5 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "root folder controller did end scrolling", v7, 2u);
  }

  if ([(SBHHomeScreenUsageMonitor *)self currentPageIndexDidChangeWhileScrolling])
  {
    v6 = [v4 object];
    [(SBHHomeScreenUsageMonitor *)self noteCurrentPageIndexChanged:[(SBHHomeScreenUsageMonitor *)self listModelIndexForRootFolderController:v6]];
    [(SBHHomeScreenUsageMonitor *)self setCurrentPageIndexDidChangeWhileScrolling:0];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)noteCurrentPageIndexChanged:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 homeScreenUsageAggregator:self didNoteCurrentPageIndexChanged:{a3, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SBHHomeScreenUsageMonitor *)self updateVisibleWidgetIcons];
}

- (void)noteEditingModeEntered
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 homeScreenUsageAggregatorDidNoteEditingModeEntered:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)noteEditingModeEnded
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 homeScreenUsageAggregatorDidNoteEditingModeEnded:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)noteWidgetIconAdded:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 addObserver:self];
  v15 = [v4 activeDataSource];
  v5 = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v6 = [(SBHHomeScreenUsageMonitor *)self iconManager];
  v7 = [v6 isDisplayingIcon:v4];

  if (v7)
  {
    [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons addObject:v4];
  }

  v8 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v22 = v4;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_INFO, "notifying for added widget icon %@ (icon visible: %{BOOL}u, content visible: %{BOOL}u)", buf, 0x18u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_observers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 homeScreenUsageAggregator:self didNoteWidgetIconAdded:v4];
        }

        if (v5 & v7) != 0 && (objc_opt_respondsToSelector())
        {
          [v14 homeScreenUsageAggregator:self didNoteDataSourceDidAppear:v15 forWidgetIcon:v4];
        }
      }

      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)noteWidgetIconRemoved:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 removeObserver:self];
  v14 = [v4 activeDataSource];
  v5 = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v6 = [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons containsObject:v4];
  [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons removeObject:v4];
  v7 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v21 = v4;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "notifying for removed widget icon %@ (icon visible: %{BOOL}u, content visible: %{BOOL}u)", buf, 0x18u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 homeScreenUsageAggregator:self didNoteWidgetIconRemoved:v4];
        }

        if (v5 & v6) != 0 && (objc_opt_respondsToSelector())
        {
          [v13 homeScreenUsageAggregator:self didNoteDataSourceDidDisappear:v14 forWidgetIcon:v4];
        }
      }

      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)noteWidgetIconStack:(id)a3 changedActiveWidget:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = a4;
  v26 = [v6 activeDataSource];
  v7 = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v28 = v6;
  v8 = v7 & [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons containsObject:v6];
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);
  v24 = WeakRetained;
  if ([WeakRetained isOverlayCoverSheetTodayViewVisible])
  {
    v10 = 1;
  }

  else
  {
    v10 = [WeakRetained isOverlayTodayViewVisible];
  }

  v11 = [(SBHHomeScreenUsageMonitor *)self rootFolder];
  v12 = [v11 todayList];
  v13 = [v12 directlyContainsIcon:v28];

  v14 = v8 | v10 & v13;
  v15 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NSHashTable *)self->_observers count];
    *buf = 138413314;
    v35 = v28;
    v36 = 1024;
    v37 = v8 | v10 & v13;
    v38 = 1024;
    v39 = v7;
    v40 = 1024;
    v41 = v10;
    v42 = 2048;
    v43 = v16;
    _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "notifying for widget icon active data source change %@ (icon visible: %{BOOL}u, content visible: %{BOOL}u, today view visible: %{BOOL}u, number of observers: %ld)", buf, 0x28u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = self;
  v18 = self->_observers;
  v19 = [(NSHashTable *)v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v23 homeScreenUsageAggregator:v17 didNoteWidgetIconStackChangedActiveWidget:v28];
        }

        if (v14)
        {
          if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v23 homeScreenUsageAggregator:v17 didNoteDataSourceDidDisappear:v27 forWidgetIcon:v28];
          }

          if (v26 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v23 homeScreenUsageAggregator:v17 didNoteDataSourceDidAppear:v26 forWidgetIcon:v28];
          }
        }
      }

      v20 = [(NSHashTable *)v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }
}

- (void)noteUserAddedWidgetIconStackSuggestion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 homeScreenUsageAggregator:self didNoteUserAddedWidgetIconStackSuggestion:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)noteUserDislikedWidgetIconStackSuggestion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 homeScreenUsageAggregator:self didNoteUserDislikedWidgetIconStackSuggestion:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)noteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 homeScreenUsageAggregator:self didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)noteUserTappedWidgetIcon:(id)a3 withURL:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 homeScreenUsageAggregator:self didNoteUserTappedWidgetIcon:v6 withURL:{v7, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

void __53__SBHHomeScreenUsageMonitor_updateVisibleWidgetIcons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isWidgetIcon])
  {
    [v3 addObserver:*(a1 + 32)];
    [*(a1 + 40) addObject:v3];
  }
}

- (void)notifyForEveryTodayViewWidgetVisibilityOnCoverSheet:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(SBHHomeScreenUsageMonitor *)self iconManager];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 isOverlayCoverSheetTodayViewVisible];
  }

  else
  {
    v7 = [v5 isTodayViewEffectivelyVisible];
  }

  v8 = v7;
  v9 = sel_homeScreenUsageAggregator_didNoteDataSourceDidAppear_forWidgetIcon_;
  v10 = [(SBHHomeScreenUsageMonitor *)self rootFolder];
  v11 = [v10 todayList];
  v12 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (v8)
    {
      v13 = @"visible";
    }

    else
    {
      v13 = @"gone";
    }

    *buf = 138543618;
    v17 = v13;
    v18 = 2048;
    v19 = [v11 numberOfIcons];
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_INFO, "notifying that all today view widgets are %{public}@ (%lu widgets)", buf, 0x16u);
  }

  if (!v8)
  {
    v9 = sel_homeScreenUsageAggregator_didNoteDataSourceDidDisappear_forWidgetIcon_;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__SBHHomeScreenUsageMonitor_notifyForEveryTodayViewWidgetVisibilityOnCoverSheet___block_invoke;
  v14[3] = &unk_1E808FB68;
  v14[4] = self;
  v14[5] = v9;
  v15 = v8;
  [v11 enumerateIconsUsingBlock:v14];
}

void __81__SBHHomeScreenUsageMonitor_notifyForEveryTodayViewWidgetVisibilityOnCoverSheet___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isWidgetIcon])
  {
    v4 = v3;
    v5 = [v4 activeDataSource];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(*(a1 + 32) + 8);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v12 = *(a1 + 32);
            if (*(a1 + 48) == 1)
            {
              [v11 homeScreenUsageAggregator:v12 didNoteDataSourceDidAppear:v5 forWidgetIcon:v4];
            }

            else
            {
              [v11 homeScreenUsageAggregator:v12 didNoteDataSourceDidDisappear:v5 forWidgetIcon:{v4, v13}];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([v13 isWidgetIcon])
        {
          [(SBHHomeScreenUsageMonitor *)self noteWidgetIconAdded:v13];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * j);
        if ([v19 isWidgetIcon])
        {
          [(SBHHomeScreenUsageMonitor *)self noteWidgetIconRemoved:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
}

- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v8 = a4;
  v7 = a5;
  if ([v7 isWidgetIcon])
  {
    [(SBHHomeScreenUsageMonitor *)self noteWidgetIconAdded:v7];
  }

  if ([v8 isWidgetIcon])
  {
    [(SBHHomeScreenUsageMonitor *)self noteWidgetIconRemoved:v8];
  }

  [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
}

- (void)leafIcon:(id)a3 didChangeActiveDataSource:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 isWidgetIcon])
  {
    [(SBHHomeScreenUsageMonitor *)self noteWidgetIconStack:v7 changedActiveWidget:v6];
  }
}

- (void)leafIcon:(id)a3 didAddIconDataSource:(id)a4
{
  if ([a3 isWidgetIcon])
  {

    [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
  }
}

- (void)leafIcon:(id)a3 didRemoveIconDataSource:(id)a4
{
  if ([a3 isWidgetIcon])
  {

    [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHHomeScreenUsageMonitor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendBool:-[SBHHomeScreenUsageMonitor isContentVisible](self withName:{"isContentVisible"), @"isContentVisible"}];
  v6 = [v4 appendObject:self->_visibleHomeScreenWidgetIcons withName:@"visibleWidgetIcons"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBHHomeScreenUsageMonitor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end