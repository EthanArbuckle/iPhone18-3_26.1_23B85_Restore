@interface SBProactiveHomeScreenUsageObserver
- (SBHIconManager)iconManager;
- (SBProactiveHomeScreenUsageObserver)initWithIconManager:(id)manager;
- (SBProactiveHomeScreenUsageObserverDelegate)delegate;
- (id)iconModel;
- (id)proactiveStackForWidgetIcon:(id)icon atIndex:(unint64_t)index gridCellInfo:(id)info;
- (id)proactiveWidgetForIconDataSource:(id)source ofIcon:(id)icon;
- (id)proactiveWidgetForWidget:(id)widget ofIcon:(id)icon;
- (id)rootFolder;
- (id)widgetIdentifiablesDictionaryForIconListModel:(id)model;
- (void)deviceLockStateDidChange:(id)change;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteDataSourceDidAppear:(id)appear forWidgetIcon:(id)icon;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteDataSourceDidDisappear:(id)disappear forWidgetIcon:(id)icon;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteTodayViewAtLocation:(int64_t)location scrolledWithIconVisibility:(id)visibility;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserAddedWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget;
- (void)homeScreenUsageAggregator:(id)aggregator widgetDiscoverabilityDidAcceptSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator widgetDiscoverabilityDidRejectSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregatorDidStartDiscoveringWidgets:(id)widgets;
- (void)homeScreenUsageAggregatorWidgetDiscoverabilityDidEnterEditingMode:(id)mode;
- (void)logHomeScreenPageDidAppearWithPageIndex:(unint64_t)index;
- (void)logTodayViewDidAppear;
- (void)pushCurrentDockConfiguration;
- (void)pushCurrentHomeScreenConfiguration;
- (void)pushCurrentHomeScreenPagesConfiguration;
- (void)pushCurrentTodayConfiguration;
- (void)setDelegate:(id)delegate;
@end

@implementation SBProactiveHomeScreenUsageObserver

void __67__SBProactiveHomeScreenUsageObserver_pushCurrentTodayConfiguration__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SBLogProactiveHome();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__SBProactiveHomeScreenUsageObserver_pushCurrentDockConfiguration__block_invoke_28_cold_1(v2, v3);
    }
  }
}

void __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_25(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogProactiveHome();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_25_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pushed home screen configuration successfully!", &v7, 0xCu);
  }
}

void __66__SBProactiveHomeScreenUsageObserver_pushCurrentDockConfiguration__block_invoke_28(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SBLogProactiveHome();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__SBProactiveHomeScreenUsageObserver_pushCurrentDockConfiguration__block_invoke_28_cold_1(v2, v3);
    }
  }
}

- (id)iconModel
{
  iconManager = [(SBProactiveHomeScreenUsageObserver *)self iconManager];
  iconModel = [iconManager iconModel];

  return iconModel;
}

- (id)rootFolder
{
  iconModel = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  rootFolder = [iconModel rootFolder];

  return rootFolder;
}

- (SBProactiveHomeScreenUsageObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

- (void)logTodayViewDidAppear
{
  rootFolder = [(SBProactiveHomeScreenUsageObserver *)self rootFolder];
  todayList = [rootFolder todayList];

  v4 = [(SBProactiveHomeScreenUsageObserver *)self widgetIdentifiablesDictionaryForIconListModel:todayList];
  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [mEMORY[0x277CEB5A0] logSpecialPageDidAppear:2 widgetsByStackId:v4 prediction:currentPrediction];
}

- (void)pushCurrentHomeScreenConfiguration
{
  v3 = SBLogProactiveHome();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Gathering new home screen configuration", buf, 2u);
  }

  iconModel = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  rootFolder = [iconModel rootFolder];
  if (rootFolder)
  {
    [(SBProactiveHomeScreenUsageObserver *)self pushCurrentHomeScreenPagesConfiguration];
    [(SBProactiveHomeScreenUsageObserver *)self pushCurrentDockConfiguration];
    [(SBProactiveHomeScreenUsageObserver *)self pushCurrentTodayConfiguration];
  }

  else
  {
    v6 = SBLogProactiveHome();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Skipping pushing new home screen configuration because no root folder has loaded", v7, 2u);
    }
  }
}

void __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CEB588];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  v8 = [v6 uniqueIdentifier];
  [v7 setUniqueIdentifier:v8];

  [v7 setPageIndex:a3];
  [v7 setHidden:{objc_msgSend(v6, "isHidden")}];
  [v7 setMaxPortraitRows:*(a1 + 56)];
  [v7 setMaxPortraitColumns:*(a1 + 64)];
  v9 = [v6 gridCellInfoWithOptions:*(a1 + 72)];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_2;
  v20[3] = &unk_2783B69F8;
  v21 = v10;
  v22 = *(a1 + 32);
  v23 = v11;
  v24 = *(a1 + 40);
  v25 = v9;
  v26 = v13;
  v27 = v12;
  v14 = v12;
  v15 = v13;
  v16 = v9;
  v17 = v11;
  v18 = v10;
  [v6 enumerateIconsUsingBlock:v20];
  [v7 setStacks:v14];
  [v7 setPanels:v15];
  [v7 setAppLocations:v18];
  [v7 setWebClipLocations:v17];
  v19 = [v6 focusModeIdentifiers];

  [v7 setAssociatedModeUUIDs:v19];
  [*(a1 + 48) addObject:v7];
}

void __67__SBProactiveHomeScreenUsageObserver_pushCurrentTodayConfiguration__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isWidgetIcon])
  {
    v6 = [*(a1 + 32) proactiveStackForWidgetIcon:v5 atIndex:a3 gridCellInfo:*(a1 + 40)];
    v7 = SBLogProactiveHome();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Stack configuration for today: %@", &v10, 0xCu);
    }

    v8 = [v6 sb_isAppPredictionStack];
    v9 = 56;
    if (v8)
    {
      v9 = 48;
    }

    [*(a1 + v9) addObject:v6];
  }
}

- (void)pushCurrentHomeScreenPagesConfiguration
{
  v29 = *MEMORY[0x277D85DE8];
  iconModel = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  rootFolder = [iconModel rootFolder];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = SBLogProactiveHome();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v26 = uUID;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "(%{public}@) Preparing to push current home screen configuration", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  v9 = [iconModel maxRowCountForListInRootFolderWithInterfaceOrientation:1];
  v10 = [iconModel maxColumnCountForListInRootFolderWithInterfaceOrientation:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke;
  v18[3] = &unk_2783B6A20;
  v22 = v9;
  v23 = v10;
  v24 = v8;
  v11 = uUID;
  v19 = v11;
  selfCopy = self;
  v12 = v7;
  v21 = v12;
  [rootFolder enumerateListsWithOptions:4 usingBlock:v18];
  v13 = SBLogProactiveHome();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pushing home screen configuration: %@", buf, 0x16u);
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_25;
  v16[3] = &unk_2783B0F28;
  v17 = v11;
  v15 = v11;
  [mEMORY[0x277CEB5A0] writeHomeScreenPageConfigurations:v12 completionHandler:v16];
}

- (void)pushCurrentTodayConfiguration
{
  v33[1] = *MEMORY[0x277D85DE8];
  iconModel = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  rootFolder = [iconModel rootFolder];
  todayList = [rootFolder todayList];
  v16 = todayList;
  if (todayList)
  {
    v33[0] = todayList;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:{1, todayList}];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 gridCellInfoWithOptions:{objc_msgSend(*MEMORY[0x277D76620], "userInterfaceLayoutDirection", v16) == 1}];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __67__SBProactiveHomeScreenUsageObserver_pushCurrentTodayConfiguration__block_invoke;
        v20[3] = &unk_2783B6A70;
        v20[4] = self;
        v21 = v12;
        v22 = v6;
        v23 = v5;
        v13 = v12;
        [v11 enumerateIconsUsingBlock:v20];
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  v14 = SBLogProactiveHome();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Pushing today list stacks: %@, app prediction stacks: %@", buf, 0x16u);
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  [mEMORY[0x277CEB5A0] writeTodayPageStacks:v5 appPredictionPanels:v6 completionHandler:&__block_literal_global_32_1];
}

void __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isLeafIcon])
  {
    v7 = [v5 applicationBundleID];
    if (v7)
    {
      v15[0] = *(a1 + 48);
      v15[1] = [v6 sbListIndex];
      v8 = [MEMORY[0x277CCAA70] indexPathWithIndexes:v15 length:2];
      v9 = SBLogProactiveHome();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = 138543618;
        v12 = v10;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "(%{public}@: iconLocation: %@", &v11, 0x16u);
      }

      [*(a1 + 40) setObject:v8 forKey:v7];
    }
  }
}

- (void)pushCurrentDockConfiguration
{
  v13 = *MEMORY[0x277D85DE8];
  iconModel = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  rootFolder = [iconModel rootFolder];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  dock = [rootFolder dock];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBProactiveHomeScreenUsageObserver_pushCurrentDockConfiguration__block_invoke;
  v9[3] = &unk_2783B6A48;
  v6 = v4;
  v10 = v6;
  [dock enumerateIconsUsingBlock:v9];

  v7 = SBLogProactiveHome();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Pushing dock app list: %@", buf, 0xCu);
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  [mEMORY[0x277CEB5A0] writeDockAppList:v6 completionHandler:&__block_literal_global_168];
}

void __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isLeafIcon])
  {
    v6 = [v5 applicationBundleID];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAA70] indexPathWithIndex:a3];
      [*(a1 + 32) setObject:v7 forKey:v6];
      v8 = SBLogProactiveHome();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 40);
        *buf = 138543618;
        v25 = v9;
        v26 = 2112;
        v27 = v7;
        v10 = "(%{public}@: iconLocation: %@";
LABEL_10:
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, v10, buf, 0x16u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if ([v5 isBookmarkIcon])
    {
      v7 = [MEMORY[0x277CCAA70] indexPathWithIndex:a3];
      v11 = *(a1 + 48);
      v12 = [v5 uniqueIdentifier];
      [v11 setObject:v7 forKey:v12];

      v8 = SBLogProactiveHome();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 40);
        *buf = 138543618;
        v25 = v13;
        v26 = 2112;
        v27 = v7;
        v10 = "(%{public}@: bookmark iconLocation: %@";
        goto LABEL_10;
      }

LABEL_11:

      goto LABEL_12;
    }

    if (![v5 isWidgetIcon])
    {
      goto LABEL_13;
    }

    v7 = [*(a1 + 56) proactiveStackForWidgetIcon:v5 atIndex:a3 gridCellInfo:*(a1 + 64)];
    v14 = [v7 sb_isAppPredictionStack];
    v15 = SBLogProactiveHome();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = *(a1 + 40);
        *buf = 138543618;
        v25 = v17;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@: Panel configuration: %@", buf, 0x16u);
      }

      v18 = 72;
    }

    else
    {
      if (v16)
      {
        v19 = *(a1 + 40);
        *buf = 138543618;
        v25 = v19;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@: Stack configuration: %@", buf, 0x16u);
      }

      v18 = 80;
    }

    [*(a1 + v18) addObject:v7];
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  if ([v5 isFolderIcon])
  {
    v6 = [v5 folder];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_20;
    v20[3] = &unk_2783B69D0;
    v23 = a3;
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    [v6 enumerateAllIconsUsingBlock:v20];

    v7 = v21;
    goto LABEL_12;
  }

LABEL_14:
}

- (SBProactiveHomeScreenUsageObserver)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = SBProactiveHomeScreenUsageObserver;
  v5 = [(SBProactiveHomeScreenUsageObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
    [managerCopy setUsageMonitoringEnabled:1];
    usageMonitor = [managerCopy usageMonitor];
    [usageMonitor addObserver:v6];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_deviceLockStateDidChange_ name:*MEMORY[0x277D67A48] object:0];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(SBProactiveHomeScreenUsageObserver *)self pushCurrentHomeScreenConfiguration];
    v5 = obj;
  }
}

void __66__SBProactiveHomeScreenUsageObserver_pushCurrentDockConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 isLeafIcon];
  v4 = v6;
  if (v3)
  {
    v5 = [v6 applicationBundleID];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }

    v4 = v6;
  }
}

- (id)proactiveStackForWidgetIcon:(id)icon atIndex:(unint64_t)index gridCellInfo:(id)info
{
  v29 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  infoCopy = info;
  v10 = objc_alloc_init(MEMORY[0x277CEB598]);
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  [v10 setIdentifier:uniqueIdentifier];

  gridSizeClass = [iconCopy gridSizeClass];
  [v10 setStackLayoutSize:SBHIconGridSizeClassToStackLayoutSize()];

  v13 = [infoCopy coordinateForGridCellIndex:{objc_msgSend(infoCopy, "gridCellIndexForIconIndex:", index)}];
  [v10 setCoordinateRow:v14 - 1];
  [v10 setCoordinateColumn:v13 - 1];
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  iconDataSources = [iconCopy iconDataSources];
  v17 = [iconDataSources countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(iconDataSources);
        }

        v21 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:*(*(&v24 + 1) + 8 * i) ofIcon:iconCopy];
        if (v21)
        {
          [v15 addObject:v21];
        }
      }

      v18 = [iconDataSources countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  [v10 setWidgets:v15];
  if ([v15 count] < 2)
  {
    [v10 setAllowsSmartRotate:0];
    allowsExternalSuggestions = 0;
  }

  else
  {
    [v10 setAllowsSmartRotate:{objc_msgSend(iconCopy, "allowsSuggestions")}];
    allowsExternalSuggestions = [iconCopy allowsExternalSuggestions];
  }

  [v10 setAllowsNewWidget:allowsExternalSuggestions];

  return v10;
}

- (id)proactiveWidgetForIconDataSource:(id)source ofIcon:(id)icon
{
  sourceCopy = source;
  iconCopy = icon;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForWidget:sourceCopy ofIcon:iconCopy];
  }

  else
  {
    v11 = objc_opt_self();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = sourceCopy;
      elementIdentifier = [objc_opt_class() elementIdentifier];
      v10 = objc_alloc_init(MEMORY[0x277CEB5B0]);
      [v10 setExtensionBundleId:elementIdentifier];
      elementKind = [objc_opt_class() elementKind];
      [v10 setWidgetKind:elementKind];
      uniqueIdentifier = [v13 uniqueIdentifier];
      [v10 setWidgetUniqueId:uniqueIdentifier];

      [v10 setSuggestedWidget:{objc_msgSend(v13, "suggestionSource") == 1}];
      suggestionSource = [v13 suggestionSource];

      [v10 setOnboardingWidget:suggestionSource == 2];
    }

    else
    {
      v10 = 0;
    }
  }

  gridSizeClass = [iconCopy gridSizeClass];
  [v10 setSize:SBHIconGridSizeClassToStackLayoutSize()];

  return v10;
}

- (id)proactiveWidgetForWidget:(id)widget ofIcon:(id)icon
{
  v6 = MEMORY[0x277CEB5B0];
  iconCopy = icon;
  widgetCopy = widget;
  v9 = objc_alloc_init(v6);
  extensionBundleIdentifier = [widgetCopy extensionBundleIdentifier];
  [v9 setExtensionBundleId:extensionBundleIdentifier];

  containerBundleIdentifier = [widgetCopy containerBundleIdentifier];
  [v9 setAppBundleId:containerBundleIdentifier];

  uniqueIdentifier = [widgetCopy uniqueIdentifier];
  [v9 setWidgetUniqueId:uniqueIdentifier];

  kind = [widgetCopy kind];
  [v9 setWidgetKind:kind];

  [v9 setSuggestedWidget:{objc_msgSend(widgetCopy, "suggestionSource") == 1}];
  [v9 setOnboardingWidget:{objc_msgSend(widgetCopy, "suggestionSource") == 2}];
  delegate = [(SBProactiveHomeScreenUsageObserver *)self delegate];
  v15 = [delegate proactiveHomeScreenUsageObserver:self intentForWidget:widgetCopy ofIcon:iconCopy];

  [v9 setIntent:v15];

  return v9;
}

- (id)widgetIdentifiablesDictionaryForIconListModel:(id)model
{
  modelCopy = model;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__60;
  v12 = __Block_byref_object_dispose__60;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__SBProactiveHomeScreenUsageObserver_widgetIdentifiablesDictionaryForIconListModel___block_invoke;
  v7[3] = &unk_2783B6A98;
  v7[4] = self;
  v7[5] = &v8;
  [modelCopy enumerateIconsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __84__SBProactiveHomeScreenUsageObserver_widgetIdentifiablesDictionaryForIconListModel___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 isWidgetIcon];
  v4 = v13;
  if (v3)
  {
    v5 = [v13 activeDataSource];
    if (v5)
    {
      v6 = [*(a1 + 32) proactiveWidgetForIconDataSource:v5 ofIcon:v13];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v13 uniqueIdentifier];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v11 = *(*(a1 + 40) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v9 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v9 setObject:v6 forKey:v8];
    }

    v4 = v13;
  }
}

- (void)logHomeScreenPageDidAppearWithPageIndex:(unint64_t)index
{
  rootFolder = [(SBProactiveHomeScreenUsageObserver *)self rootFolder];
  if ([rootFolder isValidListIndex:index])
  {
    v5 = [rootFolder listAtIndex:index];
    v6 = [(SBProactiveHomeScreenUsageObserver *)self widgetIdentifiablesDictionaryForIconListModel:v5];
    mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
    currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
    [mEMORY[0x277CEB5A0] logHomeScreenPageDidAppear:index topWidgetsByStackIdentifier:v6 prediction:currentPrediction];
  }
}

- (void)deviceLockStateDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D67B18]];
  v5 = objc_opt_class();
  v6 = v4;
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

  bOOLValue = [v8 BOOLValue];
  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  v11 = mEMORY[0x277CEB5A0];
  if (bOOLValue)
  {
    [mEMORY[0x277CEB5A0] logDeviceLock];
  }

  else
  {
    [mEMORY[0x277CEB5A0] logDeviceUnlock];
  }
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget
{
  widgetCopy = widget;
  activeDataSource = [widgetCopy activeDataSource];
  v6 = [widgetCopy stackChangeReason] - 1;
  if (v6 > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_21F8A6C10[v6];
  }

  if (activeDataSource)
  {
    v8 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:activeDataSource ofIcon:widgetCopy];
  }

  else
  {
    v8 = 0;
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  uniqueIdentifier = [widgetCopy uniqueIdentifier];
  currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [mEMORY[0x277CEB5A0] logStackStatusDidChange:uniqueIdentifier widgetOnTop:v8 reason:v7 prediction:currentPrediction];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserAddedWidgetIconStackSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  firstSuggestedIconDataSource = [suggestionCopy firstSuggestedIconDataSource];
  if (firstSuggestedIconDataSource)
  {
    v6 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:firstSuggestedIconDataSource ofIcon:suggestionCopy];
  }

  else
  {
    v6 = 0;
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  uniqueIdentifier = [suggestionCopy uniqueIdentifier];
  currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [mEMORY[0x277CEB5A0] logSupplementaryActionInContextMenu:3 stackId:uniqueIdentifier widgetOnTop:v6 prediction:currentPrediction];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedWidgetIconStackSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  firstSuggestedIconDataSource = [suggestionCopy firstSuggestedIconDataSource];
  if (firstSuggestedIconDataSource)
  {
    v6 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:firstSuggestedIconDataSource ofIcon:suggestionCopy];
  }

  else
  {
    v6 = 0;
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  uniqueIdentifier = [suggestionCopy uniqueIdentifier];
  currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [mEMORY[0x277CEB5A0] logSupplementaryActionInContextMenu:2 stackId:uniqueIdentifier widgetOnTop:v6 prediction:currentPrediction];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  firstSuggestedIconDataSource = [suggestionCopy firstSuggestedIconDataSource];
  if (firstSuggestedIconDataSource)
  {
    v6 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:firstSuggestedIconDataSource ofIcon:suggestionCopy];
  }

  else
  {
    v6 = 0;
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  uniqueIdentifier = [suggestionCopy uniqueIdentifier];
  currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [mEMORY[0x277CEB5A0] logSupplementaryActionInContextMenu:1 stackId:uniqueIdentifier widgetOnTop:v6 prediction:currentPrediction];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l
{
  iconCopy = icon;
  lCopy = l;
  activeDataSource = [iconCopy activeDataSource];
  if (activeDataSource)
  {
    v9 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:activeDataSource ofIcon:iconCopy];
  }

  else
  {
    v9 = 0;
  }

  activeWidget = [iconCopy activeWidget];
  extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
  if ([extensionBundleIdentifier hasPrefix:@"com.apple.news"])
  {

LABEL_7:
    v14 = lCopy;
    goto LABEL_9;
  }

  containerBundleIdentifier = [activeWidget containerBundleIdentifier];
  v13 = [containerBundleIdentifier hasPrefix:@"com.apple.news"];

  if (v13)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:
  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [mEMORY[0x277CEB5A0] logStackDidTap:uniqueIdentifier engagedUrl:v14 widgetOnTop:v9 prediction:currentPrediction];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteDataSourceDidAppear:(id)appear forWidgetIcon:(id)icon
{
  iconCopy = icon;
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  activeDataSource = [iconCopy activeDataSource];
  if (activeDataSource)
  {
    v8 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:activeDataSource ofIcon:iconCopy];
  }

  else
  {
    v8 = 0;
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [mEMORY[0x277CEB5A0] logWidgetDidAppear:v8 stackId:uniqueIdentifier prediction:currentPrediction];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteDataSourceDidDisappear:(id)disappear forWidgetIcon:(id)icon
{
  disappearCopy = disappear;
  iconCopy = icon;
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  if (disappearCopy)
  {
    v9 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:disappearCopy ofIcon:iconCopy];
  }

  else
  {
    v9 = 0;
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  currentPrediction = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [mEMORY[0x277CEB5A0] logWidgetDidDisappear:v9 stackId:uniqueIdentifier prediction:currentPrediction];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteTodayViewAtLocation:(int64_t)location scrolledWithIconVisibility:(id)visibility
{
  v34 = *MEMORY[0x277D85DE8];
  visibilityCopy = visibility;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [visibilityCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      v28 = v8;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(visibilityCopy);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        if ([v11 isWidgetIcon])
        {
          v12 = v11;
          uniqueIdentifier = [v12 uniqueIdentifier];
          activeDataSource = [v12 activeDataSource];
          if (activeDataSource)
          {
            v15 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:activeDataSource ofIcon:v12];
          }

          else
          {
            v15 = 0;
          }

          v16 = [visibilityCopy objectForKey:v12];
          [v16 bs_CGRectValue];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
          [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
          v27 = v26 = self;
          [mEMORY[0x277CEB5A0] logStackVisibilityChanged:uniqueIdentifier visibleRect:v15 topWidget:v27 prediction:{v18, v20, v22, v24}];

          self = v26;
          v8 = v28;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [visibilityCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }
}

- (void)homeScreenUsageAggregatorDidStartDiscoveringWidgets:(id)widgets
{
  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  [mEMORY[0x277CEB5A0] logUserDidStartWidgetOnboarding];
}

- (void)homeScreenUsageAggregator:(id)aggregator widgetDiscoverabilityDidAcceptSuggestion:(id)suggestion
{
  v4 = MEMORY[0x277CEB5A0];
  suggestionCopy = suggestion;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance logUserDidAcceptWidgetOnboardingSuggestion:suggestionCopy];
}

- (void)homeScreenUsageAggregator:(id)aggregator widgetDiscoverabilityDidRejectSuggestion:(id)suggestion
{
  v4 = MEMORY[0x277CEB5A0];
  suggestionCopy = suggestion;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance logUserDidRejectWidgetOnboardingSuggestion:suggestionCopy];
}

- (void)homeScreenUsageAggregatorWidgetDiscoverabilityDidEnterEditingMode:(id)mode
{
  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  [mEMORY[0x277CEB5A0] logUserDidEnterEditModeForWidgetOnboarding];
}

void __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_25_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "(%{public}@) Error pushing home screen configuration: %@", &v4, 0x16u);
}

void __66__SBProactiveHomeScreenUsageObserver_pushCurrentDockConfiguration__block_invoke_28_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error writing dock app list: %@", &v2, 0xCu);
}

@end