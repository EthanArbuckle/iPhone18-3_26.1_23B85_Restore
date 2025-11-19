@interface SBProactiveHomeScreenUsageObserver
- (SBHIconManager)iconManager;
- (SBProactiveHomeScreenUsageObserver)initWithIconManager:(id)a3;
- (SBProactiveHomeScreenUsageObserverDelegate)delegate;
- (id)iconModel;
- (id)proactiveStackForWidgetIcon:(id)a3 atIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (id)proactiveWidgetForIconDataSource:(id)a3 ofIcon:(id)a4;
- (id)proactiveWidgetForWidget:(id)a3 ofIcon:(id)a4;
- (id)rootFolder;
- (id)widgetIdentifiablesDictionaryForIconListModel:(id)a3;
- (void)deviceLockStateDidChange:(id)a3;
- (void)homeScreenUsageAggregator:(id)a3 didNoteDataSourceDidAppear:(id)a4 forWidgetIcon:(id)a5;
- (void)homeScreenUsageAggregator:(id)a3 didNoteDataSourceDidDisappear:(id)a4 forWidgetIcon:(id)a5;
- (void)homeScreenUsageAggregator:(id)a3 didNoteTodayViewAtLocation:(int64_t)a4 scrolledWithIconVisibility:(id)a5;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserAddedWidgetIconStackSuggestion:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserDislikedWidgetIconStackSuggestion:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserTappedWidgetIcon:(id)a4 withURL:(id)a5;
- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconStackChangedActiveWidget:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 widgetDiscoverabilityDidAcceptSuggestion:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 widgetDiscoverabilityDidRejectSuggestion:(id)a4;
- (void)homeScreenUsageAggregatorDidStartDiscoveringWidgets:(id)a3;
- (void)homeScreenUsageAggregatorWidgetDiscoverabilityDidEnterEditingMode:(id)a3;
- (void)logHomeScreenPageDidAppearWithPageIndex:(unint64_t)a3;
- (void)logTodayViewDidAppear;
- (void)pushCurrentDockConfiguration;
- (void)pushCurrentHomeScreenConfiguration;
- (void)pushCurrentHomeScreenPagesConfiguration;
- (void)pushCurrentTodayConfiguration;
- (void)setDelegate:(id)a3;
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
  v2 = [(SBProactiveHomeScreenUsageObserver *)self iconManager];
  v3 = [v2 iconModel];

  return v3;
}

- (id)rootFolder
{
  v2 = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  v3 = [v2 rootFolder];

  return v3;
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
  v3 = [(SBProactiveHomeScreenUsageObserver *)self rootFolder];
  v7 = [v3 todayList];

  v4 = [(SBProactiveHomeScreenUsageObserver *)self widgetIdentifiablesDictionaryForIconListModel:v7];
  v5 = [MEMORY[0x277CEB5A0] sharedInstance];
  v6 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [v5 logSpecialPageDidAppear:2 widgetsByStackId:v4 prediction:v6];
}

- (void)pushCurrentHomeScreenConfiguration
{
  v3 = SBLogProactiveHome();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Gathering new home screen configuration", buf, 2u);
  }

  v4 = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  v5 = [v4 rootFolder];
  if (v5)
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
  v3 = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  v4 = [v3 rootFolder];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = SBLogProactiveHome();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "(%{public}@) Preparing to push current home screen configuration", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  v9 = [v3 maxRowCountForListInRootFolderWithInterfaceOrientation:1];
  v10 = [v3 maxColumnCountForListInRootFolderWithInterfaceOrientation:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke;
  v18[3] = &unk_2783B6A20;
  v22 = v9;
  v23 = v10;
  v24 = v8;
  v11 = v5;
  v19 = v11;
  v20 = self;
  v12 = v7;
  v21 = v12;
  [v4 enumerateListsWithOptions:4 usingBlock:v18];
  v13 = SBLogProactiveHome();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pushing home screen configuration: %@", buf, 0x16u);
  }

  v14 = [MEMORY[0x277CEB5A0] sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SBProactiveHomeScreenUsageObserver_pushCurrentHomeScreenPagesConfiguration__block_invoke_25;
  v16[3] = &unk_2783B0F28;
  v17 = v11;
  v15 = v11;
  [v14 writeHomeScreenPageConfigurations:v12 completionHandler:v16];
}

- (void)pushCurrentTodayConfiguration
{
  v33[1] = *MEMORY[0x277D85DE8];
  v18 = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  v17 = [v18 rootFolder];
  v3 = [v17 todayList];
  v16 = v3;
  if (v3)
  {
    v33[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:{1, v3}];
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

  v15 = [MEMORY[0x277CEB5A0] sharedInstance];
  [v15 writeTodayPageStacks:v5 appPredictionPanels:v6 completionHandler:&__block_literal_global_32_1];
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
  v2 = [(SBProactiveHomeScreenUsageObserver *)self iconModel];
  v3 = [v2 rootFolder];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [v3 dock];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBProactiveHomeScreenUsageObserver_pushCurrentDockConfiguration__block_invoke;
  v9[3] = &unk_2783B6A48;
  v6 = v4;
  v10 = v6;
  [v5 enumerateIconsUsingBlock:v9];

  v7 = SBLogProactiveHome();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Pushing dock app list: %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CEB5A0] sharedInstance];
  [v8 writeDockAppList:v6 completionHandler:&__block_literal_global_168];
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

- (SBProactiveHomeScreenUsageObserver)initWithIconManager:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBProactiveHomeScreenUsageObserver;
  v5 = [(SBProactiveHomeScreenUsageObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, v4);
    [v4 setUsageMonitoringEnabled:1];
    v7 = [v4 usageMonitor];
    [v7 addObserver:v6];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v6 selector:sel_deviceLockStateDidChange_ name:*MEMORY[0x277D67A48] object:0];
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (id)proactiveStackForWidgetIcon:(id)a3 atIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CEB598]);
  v11 = [v8 uniqueIdentifier];
  [v10 setIdentifier:v11];

  v12 = [v8 gridSizeClass];
  [v10 setStackLayoutSize:SBHIconGridSizeClassToStackLayoutSize()];

  v13 = [v9 coordinateForGridCellIndex:{objc_msgSend(v9, "gridCellIndexForIconIndex:", a4)}];
  [v10 setCoordinateRow:v14 - 1];
  [v10 setCoordinateColumn:v13 - 1];
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v8 iconDataSources];
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:*(*(&v24 + 1) + 8 * i) ofIcon:v8];
        if (v21)
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  [v10 setWidgets:v15];
  if ([v15 count] < 2)
  {
    [v10 setAllowsSmartRotate:0];
    v22 = 0;
  }

  else
  {
    [v10 setAllowsSmartRotate:{objc_msgSend(v8, "allowsSuggestions")}];
    v22 = [v8 allowsExternalSuggestions];
  }

  [v10 setAllowsNewWidget:v22];

  return v10;
}

- (id)proactiveWidgetForIconDataSource:(id)a3 ofIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForWidget:v6 ofIcon:v7];
  }

  else
  {
    v11 = objc_opt_self();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = v6;
      v14 = [objc_opt_class() elementIdentifier];
      v10 = objc_alloc_init(MEMORY[0x277CEB5B0]);
      [v10 setExtensionBundleId:v14];
      v15 = [objc_opt_class() elementKind];
      [v10 setWidgetKind:v15];
      v16 = [v13 uniqueIdentifier];
      [v10 setWidgetUniqueId:v16];

      [v10 setSuggestedWidget:{objc_msgSend(v13, "suggestionSource") == 1}];
      v17 = [v13 suggestionSource];

      [v10 setOnboardingWidget:v17 == 2];
    }

    else
    {
      v10 = 0;
    }
  }

  v18 = [v7 gridSizeClass];
  [v10 setSize:SBHIconGridSizeClassToStackLayoutSize()];

  return v10;
}

- (id)proactiveWidgetForWidget:(id)a3 ofIcon:(id)a4
{
  v6 = MEMORY[0x277CEB5B0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [v8 extensionBundleIdentifier];
  [v9 setExtensionBundleId:v10];

  v11 = [v8 containerBundleIdentifier];
  [v9 setAppBundleId:v11];

  v12 = [v8 uniqueIdentifier];
  [v9 setWidgetUniqueId:v12];

  v13 = [v8 kind];
  [v9 setWidgetKind:v13];

  [v9 setSuggestedWidget:{objc_msgSend(v8, "suggestionSource") == 1}];
  [v9 setOnboardingWidget:{objc_msgSend(v8, "suggestionSource") == 2}];
  v14 = [(SBProactiveHomeScreenUsageObserver *)self delegate];
  v15 = [v14 proactiveHomeScreenUsageObserver:self intentForWidget:v8 ofIcon:v7];

  [v9 setIntent:v15];

  return v9;
}

- (id)widgetIdentifiablesDictionaryForIconListModel:(id)a3
{
  v4 = a3;
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
  [v4 enumerateIconsUsingBlock:v7];
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

- (void)logHomeScreenPageDidAppearWithPageIndex:(unint64_t)a3
{
  v9 = [(SBProactiveHomeScreenUsageObserver *)self rootFolder];
  if ([v9 isValidListIndex:a3])
  {
    v5 = [v9 listAtIndex:a3];
    v6 = [(SBProactiveHomeScreenUsageObserver *)self widgetIdentifiablesDictionaryForIconListModel:v5];
    v7 = [MEMORY[0x277CEB5A0] sharedInstance];
    v8 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
    [v7 logHomeScreenPageDidAppear:a3 topWidgetsByStackIdentifier:v6 prediction:v8];
  }
}

- (void)deviceLockStateDidChange:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D67B18]];
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

  v9 = [v8 BOOLValue];
  v10 = [MEMORY[0x277CEB5A0] sharedInstance];
  v11 = v10;
  if (v9)
  {
    [v10 logDeviceLock];
  }

  else
  {
    [v10 logDeviceUnlock];
  }
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconStackChangedActiveWidget:(id)a4
{
  v12 = a4;
  v5 = [v12 activeDataSource];
  v6 = [v12 stackChangeReason] - 1;
  if (v6 > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_21F8A6C10[v6];
  }

  if (v5)
  {
    v8 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:v5 ofIcon:v12];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CEB5A0] sharedInstance];
  v10 = [v12 uniqueIdentifier];
  v11 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [v9 logStackStatusDidChange:v10 widgetOnTop:v8 reason:v7 prediction:v11];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserAddedWidgetIconStackSuggestion:(id)a4
{
  v10 = a4;
  v5 = [v10 firstSuggestedIconDataSource];
  if (v5)
  {
    v6 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:v5 ofIcon:v10];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CEB5A0] sharedInstance];
  v8 = [v10 uniqueIdentifier];
  v9 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [v7 logSupplementaryActionInContextMenu:3 stackId:v8 widgetOnTop:v6 prediction:v9];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserDislikedWidgetIconStackSuggestion:(id)a4
{
  v10 = a4;
  v5 = [v10 firstSuggestedIconDataSource];
  if (v5)
  {
    v6 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:v5 ofIcon:v10];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CEB5A0] sharedInstance];
  v8 = [v10 uniqueIdentifier];
  v9 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [v7 logSupplementaryActionInContextMenu:2 stackId:v8 widgetOnTop:v6 prediction:v9];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)a4
{
  v10 = a4;
  v5 = [v10 firstSuggestedIconDataSource];
  if (v5)
  {
    v6 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:v5 ofIcon:v10];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CEB5A0] sharedInstance];
  v8 = [v10 uniqueIdentifier];
  v9 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [v7 logSupplementaryActionInContextMenu:1 stackId:v8 widgetOnTop:v6 prediction:v9];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserTappedWidgetIcon:(id)a4 withURL:(id)a5
{
  v18 = a4;
  v7 = a5;
  v8 = [v18 activeDataSource];
  if (v8)
  {
    v9 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:v8 ofIcon:v18];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v18 activeWidget];
  v11 = [v10 extensionBundleIdentifier];
  if ([v11 hasPrefix:@"com.apple.news"])
  {

LABEL_7:
    v14 = v7;
    goto LABEL_9;
  }

  v12 = [v10 containerBundleIdentifier];
  v13 = [v12 hasPrefix:@"com.apple.news"];

  if (v13)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:
  v15 = [MEMORY[0x277CEB5A0] sharedInstance];
  v16 = [v18 uniqueIdentifier];
  v17 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [v15 logStackDidTap:v16 engagedUrl:v14 widgetOnTop:v9 prediction:v17];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteDataSourceDidAppear:(id)a4 forWidgetIcon:(id)a5
{
  v11 = a5;
  v6 = [v11 uniqueIdentifier];
  v7 = [v11 activeDataSource];
  if (v7)
  {
    v8 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:v7 ofIcon:v11];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CEB5A0] sharedInstance];
  v10 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [v9 logWidgetDidAppear:v8 stackId:v6 prediction:v10];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteDataSourceDidDisappear:(id)a4 forWidgetIcon:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [v7 uniqueIdentifier];
  if (v12)
  {
    v9 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:v12 ofIcon:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CEB5A0] sharedInstance];
  v11 = [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
  [v10 logWidgetDidDisappear:v9 stackId:v8 prediction:v11];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteTodayViewAtLocation:(int64_t)a4 scrolledWithIconVisibility:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        if ([v11 isWidgetIcon])
        {
          v12 = v11;
          v13 = [v12 uniqueIdentifier];
          v14 = [v12 activeDataSource];
          if (v14)
          {
            v15 = [(SBProactiveHomeScreenUsageObserver *)self proactiveWidgetForIconDataSource:v14 ofIcon:v12];
          }

          else
          {
            v15 = 0;
          }

          v16 = [v6 objectForKey:v12];
          [v16 bs_CGRectValue];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v25 = [MEMORY[0x277CEB5A0] sharedInstance];
          [(SBProactiveHomeScreenUsageObserver *)self currentPrediction];
          v27 = v26 = self;
          [v25 logStackVisibilityChanged:v13 visibleRect:v15 topWidget:v27 prediction:{v18, v20, v22, v24}];

          self = v26;
          v8 = v28;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }
}

- (void)homeScreenUsageAggregatorDidStartDiscoveringWidgets:(id)a3
{
  v3 = [MEMORY[0x277CEB5A0] sharedInstance];
  [v3 logUserDidStartWidgetOnboarding];
}

- (void)homeScreenUsageAggregator:(id)a3 widgetDiscoverabilityDidAcceptSuggestion:(id)a4
{
  v4 = MEMORY[0x277CEB5A0];
  v5 = a4;
  v6 = [v4 sharedInstance];
  [v6 logUserDidAcceptWidgetOnboardingSuggestion:v5];
}

- (void)homeScreenUsageAggregator:(id)a3 widgetDiscoverabilityDidRejectSuggestion:(id)a4
{
  v4 = MEMORY[0x277CEB5A0];
  v5 = a4;
  v6 = [v4 sharedInstance];
  [v6 logUserDidRejectWidgetOnboardingSuggestion:v5];
}

- (void)homeScreenUsageAggregatorWidgetDiscoverabilityDidEnterEditingMode:(id)a3
{
  v3 = [MEMORY[0x277CEB5A0] sharedInstance];
  [v3 logUserDidEnterEditModeForWidgetOnboarding];
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