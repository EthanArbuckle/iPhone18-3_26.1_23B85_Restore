@interface SBHHomeScreenUsageMonitor
- (SBHHomeScreenUsageMonitor)initWithIconManager:(id)manager;
- (SBHIconManager)iconManager;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)listModelIndexForRootFolderController:(id)controller;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons;
- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)iconManagerDidChangeIconModel:(id)model;
- (void)iconManagerDidChangeRootViewController:(id)controller;
- (void)iconManagerEditingDidChange:(id)change;
- (void)iconModelDidLayOut:(id)out;
- (void)leafIcon:(id)icon didAddIconDataSource:(id)source;
- (void)leafIcon:(id)icon didChangeActiveDataSource:(id)source;
- (void)leafIcon:(id)icon didRemoveIconDataSource:(id)source;
- (void)noteAddWidgetSheetWillPresent;
- (void)noteCurrentPageIndexChanged:(unint64_t)changed;
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
- (void)noteIconManagerTodayViewAtLocation:(int64_t)location didScrollToRevealIcons:(id)icons;
- (void)noteIconStylePickerDidDismiss;
- (void)noteLayoutChanged;
- (void)noteUserAddedWidgetIconStackSuggestion:(id)suggestion;
- (void)noteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion;
- (void)noteUserDislikedWidgetIconStackSuggestion:(id)suggestion;
- (void)noteUserTappedWidgetIcon:(id)icon withURL:(id)l;
- (void)noteWidgetDiscoverabilityDidAcceptSuggestion:(id)suggestion;
- (void)noteWidgetDiscoverabilityDidEnterEditingMode;
- (void)noteWidgetDiscoverabilityDidRejectSuggestion:(id)suggestion;
- (void)noteWidgetDiscoverabilityStarted;
- (void)noteWidgetIconAdded:(id)added;
- (void)noteWidgetIconRemoved:(id)removed;
- (void)noteWidgetIconStack:(id)stack changedActiveWidget:(id)widget;
- (void)notifyForEveryHomeScreenWidgetVisibility;
- (void)notifyForEveryTodayViewWidgetVisibilityOnCoverSheet:(BOOL)sheet;
- (void)notifyRootFolderControllerViewWillAppear;
- (void)resetIconModel;
- (void)resetRootFolderController;
- (void)rootFolderControllerCurrentPageIndexDidChange:(id)change;
- (void)rootFolderControllerDidEndScrolling:(id)scrolling;
- (void)setHomeScreenDisappearanceReasons:(unint64_t)reasons;
- (void)setIconModel:(id)model;
- (void)setRootFolder:(id)folder;
- (void)setRootFolderController:(id)controller;
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
  iconManager = [(SBHHomeScreenUsageMonitor *)self iconManager];
  if (!SBHContentVisibilityIsVisible([iconManager contentVisibility]) || (objc_msgSend(iconManager, "isOverlayTodayViewVisible") & 1) != 0 || objc_msgSend(iconManager, "isMainDisplayLibraryViewVisible"))
  {
    v3 = iconManager;
    v4 = 2;
  }

  else
  {
    v3 = iconManager;
    v4 = 0;
  }

  rootViewController = [v3 rootViewController];
  _appearState = [rootViewController _appearState];

  if (_appearState)
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
  isContentVisible = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v4 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (isContentVisible)
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
        activeDataSource = [v8 activeDataSource];
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
                if (isContentVisible)
                {
                  [v15 homeScreenUsageAggregator:self didNoteDataSourceDidAppear:activeDataSource forWidgetIcon:v8];
                }

                else
                {
                  [v15 homeScreenUsageAggregator:self didNoteDataSourceDidDisappear:activeDataSource forWidgetIcon:v8];
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
  rootFolderController = [(SBHHomeScreenUsageMonitor *)self rootFolderController];
  v4 = [(SBHHomeScreenUsageMonitor *)self listModelIndexForRootFolderController:rootFolderController];

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
  iconManager = [(SBHHomeScreenUsageMonitor *)self iconManager];
  isEditing = [iconManager isEditing];

  if (isEditing)
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
  rootFolderController = [(SBHHomeScreenUsageMonitor *)self rootFolderController];
  currentIconListModel = [rootFolderController currentIconListModel];
  isContentVisible = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __53__SBHHomeScreenUsageMonitor_updateVisibleWidgetIcons__block_invoke;
  v58[3] = &unk_1E808CBC0;
  v58[4] = self;
  v41 = v6;
  v59 = v41;
  [currentIconListModel enumerateIconsUsingBlock:v58];
  v7 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    visibleHomeScreenWidgetIcons = self->_visibleHomeScreenWidgetIcons;
    *buf = 138412802;
    v65 = visibleHomeScreenWidgetIcons;
    v66 = 2112;
    v67 = v41;
    v68 = 1024;
    v69 = isContentVisible;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "update visible widget icons. old set: %@, new set: %@ (content visible: %{BOOL}u)", buf, 0x1Cu);
  }

  if (isContentVisible)
  {
    v33 = currentIconListModel;
    v34 = rootFolderController;
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
            activeDataSource = [v13 activeDataSource];
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
                    [v20 homeScreenUsageAggregator:self didNoteDataSourceDidDisappear:activeDataSource forWidgetIcon:v13];
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
            activeDataSource2 = [v25 activeDataSource];
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
                    [v32 homeScreenUsageAggregator:self didNoteDataSourceDidAppear:activeDataSource2 forWidgetIcon:v25];
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

    currentIconListModel = v33;
    rootFolderController = v34;
  }

  [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons setSet:v41, v33, v34];
}

- (SBHHomeScreenUsageMonitor)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = SBHHomeScreenUsageMonitor;
  v5 = [(SBHHomeScreenUsageMonitor *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_iconManagerDidChangeIconModel_ name:@"SBHIconManagerIconModelDidChange" object:managerCopy];
    [defaultCenter addObserver:v6 selector:sel_iconManagerDidChangeRootViewController_ name:@"SBHIconManagerRootViewControllerDidChange" object:managerCopy];
    [defaultCenter addObserver:v6 selector:sel_iconManagerEditingDidChange_ name:@"SBHIconManagerEditingStateChanged" object:managerCopy];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHHomeScreenUsageMonitor;
  [(SBHHomeScreenUsageMonitor *)&v4 dealloc];
}

- (void)resetIconModel
{
  iconManager = [(SBHHomeScreenUsageMonitor *)self iconManager];
  iconModel = [iconManager iconModel];
  [(SBHHomeScreenUsageMonitor *)self setIconModel:iconModel];
}

- (void)setIconModel:(id)model
{
  v35 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v6 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = modelCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Set icon model: %@", buf, 0xCu);
  }

  if (self->_iconModel != modelCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = defaultCenter;
    if (self->_iconModel)
    {
      [defaultCenter removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:?];
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

    objc_storeStrong(&self->_iconModel, model);
    [(SBHHomeScreenUsageMonitor *)self updateVisibleWidgetIcons];
    if (modelCopy)
    {
      [v8 addObserver:self selector:sel_iconModelDidLayOut_ name:@"SBIconModelDidLayoutIconStateNotification" object:modelCopy];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = objc_opt_self();
      v17 = [(SBHIconModel *)modelCopy iconsOfClass:v16, 0];

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

  rootFolder = [(SBHIconModel *)modelCopy rootFolder];
  [(SBHHomeScreenUsageMonitor *)self setRootFolder:rootFolder];
}

- (void)setRootFolder:(id)folder
{
  v10 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  v6 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = folderCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Set root folder: %@", &v8, 0xCu);
  }

  rootFolder = self->_rootFolder;
  if (rootFolder != folderCopy)
  {
    [(SBFolder *)rootFolder removeFolderObserver:self];
    objc_storeStrong(&self->_rootFolder, folder);
    [(SBFolder *)self->_rootFolder addFolderObserver:self];
    [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
  }
}

- (void)resetRootFolderController
{
  iconManager = [(SBHHomeScreenUsageMonitor *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  [(SBHHomeScreenUsageMonitor *)self setRootFolderController:rootFolderController];
}

- (void)setRootFolderController:(id)controller
{
  v10 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v6 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = controllerCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Set root folder controller: %@", &v8, 0xCu);
  }

  if (self->_rootFolderController != controllerCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"SBFolderControllerCurrentPageIndexDidChangeNotification" object:self->_rootFolderController];
    [defaultCenter removeObserver:self name:@"SBFolderControllerDidEndScrollingNotification" object:self->_rootFolderController];
    objc_storeStrong(&self->_rootFolderController, controller);
    [(SBHHomeScreenUsageMonitor *)self updateVisibleWidgetIcons];
    if (controllerCopy)
    {
      [defaultCenter addObserver:self selector:sel_rootFolderControllerCurrentPageIndexDidChange_ name:@"SBFolderControllerCurrentPageIndexDidChangeNotification" object:controllerCopy];
      [defaultCenter addObserver:self selector:sel_rootFolderControllerDidEndScrolling_ name:@"SBFolderControllerDidEndScrollingNotification" object:controllerCopy];
    }
  }
}

- (void)setHomeScreenDisappearanceReasons:(unint64_t)reasons
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    reasonsCopy = reasons;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Set widget disappearance reasons: %lx", &v7, 0xCu);
  }

  homeScreenDisappearanceReasons = self->_homeScreenDisappearanceReasons;
  if (homeScreenDisappearanceReasons != reasons)
  {
    self->_homeScreenDisappearanceReasons = reasons;
    if ((reasons != 0) == (homeScreenDisappearanceReasons == 0))
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

- (void)noteIconManagerTodayViewAtLocation:(int64_t)location didScrollToRevealIcons:(id)icons
{
  v20 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
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
          [v13 homeScreenUsageAggregator:self didNoteTodayViewAtLocation:location scrolledWithIconVisibility:{iconsCopy, v14}];
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

- (void)noteWidgetDiscoverabilityDidAcceptSuggestion:(id)suggestion
{
  v18 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
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
          [v11 homeScreenUsageAggregator:self widgetDiscoverabilityDidAcceptSuggestion:{suggestionCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)noteWidgetDiscoverabilityDidRejectSuggestion:(id)suggestion
{
  v18 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
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
          [v11 homeScreenUsageAggregator:self widgetDiscoverabilityDidRejectSuggestion:{suggestionCopy, v12}];
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

- (void)iconManagerDidChangeIconModel:(id)model
{
  v4 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "icon manager did change icon model", v5, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self resetIconModel];
}

- (void)iconManagerDidChangeRootViewController:(id)controller
{
  v4 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "icon manager did change root view controller", v5, 2u);
  }

  [(SBHHomeScreenUsageMonitor *)self resetRootFolderController];
}

- (void)iconManagerEditingDidChange:(id)change
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

  iconManager = [(SBHHomeScreenUsageMonitor *)self iconManager];
  if ([iconManager isEditing])
  {
    [(SBHHomeScreenUsageMonitor *)self noteEditingModeEntered];
  }

  else
  {
    [(SBHHomeScreenUsageMonitor *)self noteEditingModeEnded];
  }
}

- (void)iconModelDidLayOut:(id)out
{
  outCopy = out;
  v5 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "icon model did lay out", v8, 2u);
  }

  object = [outCopy object];

  rootFolder = [object rootFolder];
  [(SBHHomeScreenUsageMonitor *)self setRootFolder:rootFolder];
}

- (void)rootFolderControllerCurrentPageIndexDidChange:(id)change
{
  v8 = *MEMORY[0x1E69E9840];
  object = [change object];
  isScrolling = [(SBFolderController *)self->_rootFolderController isScrolling];
  v6 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = isScrolling;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "root folder controller current page index did change (scrolling: %{BOOL}u)", v7, 8u);
  }

  if (isScrolling)
  {
    [(SBHHomeScreenUsageMonitor *)self setCurrentPageIndexDidChangeWhileScrolling:1];
  }

  else
  {
    [(SBHHomeScreenUsageMonitor *)self noteCurrentPageIndexChanged:[(SBHHomeScreenUsageMonitor *)self listModelIndexForRootFolderController:object]];
  }
}

- (unint64_t)listModelIndexForRootFolderController:(id)controller
{
  controllerCopy = controller;
  v4 = [controllerCopy iconListModelIndexForPageIndex:{objc_msgSend(controllerCopy, "currentPageIndex")}];

  return v4;
}

- (void)rootFolderControllerDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  v5 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "root folder controller did end scrolling", v7, 2u);
  }

  if ([(SBHHomeScreenUsageMonitor *)self currentPageIndexDidChangeWhileScrolling])
  {
    object = [scrollingCopy object];
    [(SBHHomeScreenUsageMonitor *)self noteCurrentPageIndexChanged:[(SBHHomeScreenUsageMonitor *)self listModelIndexForRootFolderController:object]];
    [(SBHHomeScreenUsageMonitor *)self setCurrentPageIndexDidChangeWhileScrolling:0];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)noteCurrentPageIndexChanged:(unint64_t)changed
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
          [v10 homeScreenUsageAggregator:self didNoteCurrentPageIndexChanged:{changed, v11}];
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

- (void)noteWidgetIconAdded:(id)added
{
  v27 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  [addedCopy addObserver:self];
  activeDataSource = [addedCopy activeDataSource];
  isContentVisible = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  iconManager = [(SBHHomeScreenUsageMonitor *)self iconManager];
  v7 = [iconManager isDisplayingIcon:addedCopy];

  if (v7)
  {
    [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons addObject:addedCopy];
  }

  v8 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v22 = addedCopy;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = isContentVisible;
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
          [v14 homeScreenUsageAggregator:self didNoteWidgetIconAdded:addedCopy];
        }

        if (isContentVisible & v7) != 0 && (objc_opt_respondsToSelector())
        {
          [v14 homeScreenUsageAggregator:self didNoteDataSourceDidAppear:activeDataSource forWidgetIcon:addedCopy];
        }
      }

      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)noteWidgetIconRemoved:(id)removed
{
  v26 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  [removedCopy removeObserver:self];
  activeDataSource = [removedCopy activeDataSource];
  isContentVisible = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v6 = [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons containsObject:removedCopy];
  [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons removeObject:removedCopy];
  v7 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v21 = removedCopy;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = isContentVisible;
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
          [v13 homeScreenUsageAggregator:self didNoteWidgetIconRemoved:removedCopy];
        }

        if (isContentVisible & v6) != 0 && (objc_opt_respondsToSelector())
        {
          [v13 homeScreenUsageAggregator:self didNoteDataSourceDidDisappear:activeDataSource forWidgetIcon:removedCopy];
        }
      }

      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)noteWidgetIconStack:(id)stack changedActiveWidget:(id)widget
{
  v44 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  widgetCopy = widget;
  activeDataSource = [stackCopy activeDataSource];
  isContentVisible = [(SBHHomeScreenUsageMonitor *)self isContentVisible];
  v28 = stackCopy;
  v8 = isContentVisible & [(NSMutableSet *)self->_visibleHomeScreenWidgetIcons containsObject:stackCopy];
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);
  v24 = WeakRetained;
  if ([WeakRetained isOverlayCoverSheetTodayViewVisible])
  {
    isOverlayTodayViewVisible = 1;
  }

  else
  {
    isOverlayTodayViewVisible = [WeakRetained isOverlayTodayViewVisible];
  }

  rootFolder = [(SBHHomeScreenUsageMonitor *)self rootFolder];
  todayList = [rootFolder todayList];
  v13 = [todayList directlyContainsIcon:v28];

  v14 = v8 | isOverlayTodayViewVisible & v13;
  v15 = SBLogHomeScreenUsageMonitor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NSHashTable *)self->_observers count];
    *buf = 138413314;
    v35 = v28;
    v36 = 1024;
    v37 = v8 | isOverlayTodayViewVisible & v13;
    v38 = 1024;
    v39 = isContentVisible;
    v40 = 1024;
    v41 = isOverlayTodayViewVisible;
    v42 = 2048;
    v43 = v16;
    _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "notifying for widget icon active data source change %@ (icon visible: %{BOOL}u, content visible: %{BOOL}u, today view visible: %{BOOL}u, number of observers: %ld)", buf, 0x28u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
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
          [v23 homeScreenUsageAggregator:selfCopy didNoteWidgetIconStackChangedActiveWidget:v28];
        }

        if (v14)
        {
          if (widgetCopy && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v23 homeScreenUsageAggregator:selfCopy didNoteDataSourceDidDisappear:widgetCopy forWidgetIcon:v28];
          }

          if (activeDataSource && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v23 homeScreenUsageAggregator:selfCopy didNoteDataSourceDidAppear:activeDataSource forWidgetIcon:v28];
          }
        }
      }

      v20 = [(NSHashTable *)v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }
}

- (void)noteUserAddedWidgetIconStackSuggestion:(id)suggestion
{
  v16 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
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
          [v10 homeScreenUsageAggregator:self didNoteUserAddedWidgetIconStackSuggestion:{suggestionCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)noteUserDislikedWidgetIconStackSuggestion:(id)suggestion
{
  v16 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
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
          [v10 homeScreenUsageAggregator:self didNoteUserDislikedWidgetIconStackSuggestion:{suggestionCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)noteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion
{
  v16 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
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
          [v10 homeScreenUsageAggregator:self didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:{suggestionCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)noteUserTappedWidgetIcon:(id)icon withURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  lCopy = l;
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
          [v13 homeScreenUsageAggregator:self didNoteUserTappedWidgetIcon:iconCopy withURL:{lCopy, v14}];
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

- (void)notifyForEveryTodayViewWidgetVisibilityOnCoverSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  v20 = *MEMORY[0x1E69E9840];
  iconManager = [(SBHHomeScreenUsageMonitor *)self iconManager];
  v6 = iconManager;
  if (sheetCopy)
  {
    isOverlayCoverSheetTodayViewVisible = [iconManager isOverlayCoverSheetTodayViewVisible];
  }

  else
  {
    isOverlayCoverSheetTodayViewVisible = [iconManager isTodayViewEffectivelyVisible];
  }

  v8 = isOverlayCoverSheetTodayViewVisible;
  v9 = sel_homeScreenUsageAggregator_didNoteDataSourceDidAppear_forWidgetIcon_;
  rootFolder = [(SBHHomeScreenUsageMonitor *)self rootFolder];
  todayList = [rootFolder todayList];
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
    numberOfIcons = [todayList numberOfIcons];
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
  [todayList enumerateIconsUsingBlock:v14];
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

- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons
{
  v30 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  removedIconsCopy = removedIcons;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [iconsCopy countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(iconsCopy);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([v13 isWidgetIcon])
        {
          [(SBHHomeScreenUsageMonitor *)self noteWidgetIconAdded:v13];
        }
      }

      v10 = [iconsCopy countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = removedIconsCopy;
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

- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  iconCopy = icon;
  withIconCopy = withIcon;
  if ([withIconCopy isWidgetIcon])
  {
    [(SBHHomeScreenUsageMonitor *)self noteWidgetIconAdded:withIconCopy];
  }

  if ([iconCopy isWidgetIcon])
  {
    [(SBHHomeScreenUsageMonitor *)self noteWidgetIconRemoved:iconCopy];
  }

  [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
}

- (void)leafIcon:(id)icon didChangeActiveDataSource:(id)source
{
  iconCopy = icon;
  sourceCopy = source;
  if ([iconCopy isWidgetIcon])
  {
    [(SBHHomeScreenUsageMonitor *)self noteWidgetIconStack:iconCopy changedActiveWidget:sourceCopy];
  }
}

- (void)leafIcon:(id)icon didAddIconDataSource:(id)source
{
  if ([icon isWidgetIcon])
  {

    [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
  }
}

- (void)leafIcon:(id)icon didRemoveIconDataSource:(id)source
{
  if ([icon isWidgetIcon])
  {

    [(SBHHomeScreenUsageMonitor *)self noteLayoutChanged];
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHHomeScreenUsageMonitor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendBool:-[SBHHomeScreenUsageMonitor isContentVisible](self withName:{"isContentVisible"), @"isContentVisible"}];
  v6 = [v4 appendObject:self->_visibleHomeScreenWidgetIcons withName:@"visibleWidgetIcons"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHHomeScreenUsageMonitor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end