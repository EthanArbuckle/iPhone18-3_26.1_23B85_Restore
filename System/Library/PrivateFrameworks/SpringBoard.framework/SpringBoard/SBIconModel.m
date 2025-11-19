@interface SBIconModel
+ (id)migratedIdentifierForLeafIdentifier:(id)a3;
+ (id)osMigrationHomeScreenLayoutItemForIcon:(id)a3 atIconIndex:(unint64_t)a4 inList:(id)a5 withIdentifier:(unint64_t)a6 gridCellInfo:(id)a7;
+ (id)osMigrationHomeScreenLayoutItemForLeafItem:(id)a3 withIdentifier:(unint64_t)a4 atIconIndex:(unint64_t)a5 gridCellInfo:(id)a6;
+ (id)osMigrationHomeScreenLeafItemForIcon:(id)a3 inList:(id)a4;
- (BOOL)importState:(id)a3;
- (BOOL)insertOSMigrationHomeScreenLayoutItem:(id)a3 intoListAtIndex:(unint64_t)a4 inFolder:(id)a5 rootFolder:(id)a6 referenceGridSize:(SBHIconGridSize)a7 subsequentListSlide:(unint64_t *)a8;
- (BOOL)isIconVisible:(id)a3;
- (BOOL)shouldAvoidCreatingIconForApplication:(id)a3;
- (BOOL)shouldAvoidPlacingIconOnFirstPage:(id)a3;
- (id)applicationIconForBundleIdentifier:(id)a3;
- (id)bookmarkIconForWebClipIdentifier:(id)a3;
- (id)exportFlattenedState:(BOOL)a3 includeMissingIcons:(BOOL)a4;
- (id)exportPendingState:(BOOL)a3 includeMissingIcons:(BOOL)a4;
- (id)exportState:(BOOL)a3;
- (id)exportedOSMigrationDefaultHomeScreenLayout;
- (id)exportedOSMigrationHomeScreenLayout;
- (id)iconForOSMigrationHomeScreenLeafItem:(id)a3;
- (id)osMigrationHomeScreenLayoutForRootFolder:(id)a3;
- (void)clearDesiredIconStateWithOptions:(unint64_t)a3;
- (void)importOSMigrationHomeScreenLayout:(id)a3;
- (void)insertOSMigrationHomeScreenLayoutItems:(id)a3 intoListAtIndex:(unint64_t)a4 inFolder:(id)a5 rootFolder:(id)a6 referenceGridSize:(SBHIconGridSize)a7;
- (void)loadAllIcons;
@end

@implementation SBIconModel

- (BOOL)isIconVisible:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = SBIconModel;
    if ([(SBHIconModel *)&v10 isIconVisible:v4])
    {
      if (![v4 isBookmarkIcon] || (-[SBHIconModel hiddenIconTags](self, "hiddenIconTags"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", @"com.apple.webapp"), v5, !v6))
      {
        v8 = 1;
        goto LABEL_10;
      }

      v7 = SBLogIcon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v12 = v4;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Icon is not visible: %{public}@ / WebAppBundle", buf, 0xCu);
      }
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)bookmarkIconForWebClipIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBIconModel;
  v3 = [(SBHIconModel *)&v5 bookmarkIconForWebClipIdentifier:a3];

  return v3;
}

- (BOOL)shouldAvoidCreatingIconForApplication:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBIconModel;
  v5 = [(SBHIconModel *)&v10 shouldAvoidCreatingIconForApplication:v4];
  v6 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 info];
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 hasHiddenTag];
  }

  return v8;
}

- (void)loadAllIcons
{
  v3.receiver = self;
  v3.super_class = SBIconModel;
  [(SBHIconModel *)&v3 loadAllIcons];
  self->_iconsHaveBeenLoadedOnce = 1;
}

- (id)applicationIconForBundleIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBIconModel;
  v3 = [(SBHIconModel *)&v5 applicationIconForBundleIdentifier:a3];

  return v3;
}

- (BOOL)shouldAvoidPlacingIconOnFirstPage:(id)a3
{
  v4 = a3;
  if ([v4 isApplicationIcon])
  {
    v5 = [v4 application];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isRestoringIcon])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBIconModel;
    v6 = [(SBHIconModel *)&v8 shouldAvoidPlacingIconOnFirstPage:v4];
  }

  return v6;
}

- (void)clearDesiredIconStateWithOptions:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBIconModel;
  [(SBHIconModel *)&v4 clearDesiredIconStateWithOptions:a3];
  [(SBIconModel *)self setCachedFlattenedForecastedDesiredIconState:0];
}

- (id)exportState:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(SBHIconModel *)self iconModelMetadata];
  v6 = [(SBHIconStateArchiver *)SBIconStateArchiver archiveRootFolderInModel:self metadata:v5];
  v7 = [SBIconStateArchiver iTunesRepresentationFromRootArchive:v6 preApex:!v3 pending:0 iconSource:self];

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%@: exported state: %@", &v10, 0x16u);
  }

  return v7;
}

- (id)exportPendingState:(BOOL)a3 includeMissingIcons:(BOOL)a4
{
  v4 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v6 = [(SBHIconModel *)self iconModelMetadata:a3];
  v7 = [(SBHIconStateArchiver *)SBIconStateArchiver archiveRootFolderInModel:self metadata:v6];

  v8 = [SBIconStateArchiver iTunesRepresentationFromRootArchive:v7 preApex:!v4 pending:0 iconSource:self];
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "%@: exported pending state: %@", &v11, 0x16u);
  }

  return v8;
}

- (id)exportFlattenedState:(BOOL)a3 includeMissingIcons:(BOOL)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(SBHIconModel *)self iconModelMetadata:a3];
  v6 = [(SBHIconStateArchiver *)SBIconStateArchiver archiveRootFolderInModel:self metadata:v5];
  v7 = [(SBHIconStateArchiver *)SBIconStateArchiver leafIdentifiersFromArchive:v6];

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%@: exported flattened icon state: %@", &v11, 0x16u);
  }

  v9 = [v7 array];

  return v9;
}

- (BOOL)importState:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [SBIconStateArchiver rootArchiveFromITunesRepresentation:v4];
    v6 = [SBIconStateArchiver modernizeRootArchive:v5];

    if (!v6)
    {
LABEL_9:
      v13 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = v4;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v9 = [(SBHIconModel *)self iconState];
  v10 = [MEMORY[0x277D66208] iconStateByReplacingTodayListsInIconState:v6 withTodayListsFromIconState:v9];
  [(SBHIconModel *)self importIconState:v10];
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(SBHIconModel *)self desiredIconState];
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "%@: icon state imported: %@", &v15, 0x16u);
  }

  v13 = 1;
LABEL_10:

  return v13;
}

+ (id)migratedIdentifierForLeafIdentifier:(id)a3
{
  v3 = a3;
  v4 = migratedIdentifierForLeafIdentifier____bundleIDChanges;
  if (!migratedIdentifierForLeafIdentifier____bundleIDChanges)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"com.apple.camera", @"com.apple.mobileslideshow-Camera", @"com.apple.mobileslideshow", @"com.apple.mobileslideshow-Photos", @"com.apple.tv", @"com.apple.mobileipod-VideoPlayer", @"com.apple.Music", @"com.apple.mobileipod-MediaPlayer", @"com.apple.Music", @"com.apple.mobileipod-AudioPlayer", @"com.apple.Music", @"com.apple.mobileipod", @"com.apple.Passbook", @"com.apple.Shoebox", @"com.apple.tv", @"com.apple.videos", @"com.apple.shortcuts", @"is.workflow.my.app", @"com.apple.findmy", @"com.apple.mobileme.fmip1", 0}];
    v6 = migratedIdentifierForLeafIdentifier____bundleIDChanges;
    migratedIdentifierForLeafIdentifier____bundleIDChanges = v5;

    v4 = migratedIdentifierForLeafIdentifier____bundleIDChanges;
  }

  v7 = [v4 objectForKey:v3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v3];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v3;
    }

    v9 = v12;
  }

  return v9;
}

- (id)exportedOSMigrationHomeScreenLayout
{
  v3 = [(SBHIconModel *)self rootFolder];
  v4 = [(SBIconModel *)self osMigrationHomeScreenLayoutForRootFolder:v3];

  return v4;
}

- (id)exportedOSMigrationDefaultHomeScreenLayout
{
  v3 = [(SBHIconModel *)self defaultIconState];
  v4 = [MEMORY[0x277D66200] unarchiveRootFolderFromArchive:v3 withIconSource:self];
  v5 = [v4 rootFolder];
  v6 = [(SBIconModel *)self osMigrationHomeScreenLayoutForRootFolder:v5];

  return v6;
}

- (id)osMigrationHomeScreenLayoutForRootFolder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 1;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __56__SBIconModel_osMigrationHomeScreenLayoutForRootFolder___block_invoke;
  v25[3] = &unk_2783B0628;
  v25[4] = self;
  v27 = v28;
  v6 = v5;
  v26 = v6;
  [v4 enumerateListsWithOptions:6 usingBlock:v25];
  v7 = [v4 dock];
  v8 = [v7 gridCellInfoWithOptions:0];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __56__SBIconModel_osMigrationHomeScreenLayoutForRootFolder___block_invoke_3;
  v19 = &unk_2783B0600;
  v20 = self;
  v10 = v7;
  v21 = v10;
  v24 = v28;
  v11 = v8;
  v22 = v11;
  v12 = v9;
  v23 = v12;
  [v10 enumerateIconsUsingBlock:&v16];
  v13 = objc_alloc(MEMORY[0x277D66B70]);
  v14 = [v13 initWithPages:v6 bottomBarItems:{v12, v16, v17, v18, v19, v20}];

  _Block_object_dispose(v28, 8);

  return v14;
}

void __56__SBIconModel_osMigrationHomeScreenLayoutForRootFolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 gridCellInfoWithOptions:0];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SBIconModel_osMigrationHomeScreenLayoutForRootFolder___block_invoke_2;
  v12[3] = &unk_2783B0600;
  v12[4] = *(a1 + 32);
  v13 = v3;
  v6 = *(a1 + 48);
  v15 = v5;
  v16 = v6;
  v14 = v4;
  v7 = v5;
  v8 = v4;
  v9 = v3;
  [v9 enumerateIconsUsingBlock:v12];
  [v8 gridSize];
  v10 = objc_alloc(MEMORY[0x277D66B80]);
  ++*(*(*(a1 + 48) + 8) + 24);
  v11 = [v10 initWithIdentifier:? numberOfRows:? numberOfColumns:? layoutItems:?];
  [*(a1 + 40) addObject:v11];
}

void __56__SBIconModel_osMigrationHomeScreenLayoutForRootFolder___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  ++*(*(*(a1 + 64) + 8) + 24);
  v9 = [v6 osMigrationHomeScreenLayoutItemForIcon:v5 atIconIndex:a3 inList:v7 withIdentifier:? gridCellInfo:?];

  v8 = v9;
  if (v9)
  {
    [*(a1 + 56) addObject:v9];
    v8 = v9;
  }
}

void __56__SBIconModel_osMigrationHomeScreenLayoutForRootFolder___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  ++*(*(*(a1 + 64) + 8) + 24);
  v9 = [v6 osMigrationHomeScreenLayoutItemForIcon:v5 atIconIndex:a3 inList:v7 withIdentifier:? gridCellInfo:?];

  v8 = v9;
  if (v9)
  {
    [*(a1 + 56) addObject:v9];
    v8 = v9;
  }
}

+ (id)osMigrationHomeScreenLeafItemForIcon:(id)a3 inList:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isApplicationIcon])
  {
    v7 = objc_alloc(MEMORY[0x277D66B60]);
    v8 = [v5 applicationBundleID];
    v9 = [v7 initWithBundleIdentifier:v8];
    goto LABEL_14;
  }

  if ([v5 isWidgetIcon])
  {
    v8 = v5;
    v10 = [v8 activeDataSource];
    v11 = [v8 gridSizeClass];
    v12 = [v6 gridSizeForGridSizeClass:v11];
    v13 = v12;
    v14 = HIWORD(v12);

    v15 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = MEMORY[0x277D66B88];
      v39 = v10;
      v18 = v10;
      v37 = [v17 alloc];
      v19 = [v18 extensionBundleIdentifier];
      v20 = [v18 kind];
      v21 = objc_alloc(MEMORY[0x277D66B60]);
      v22 = [v18 containerBundleIdentifier];

      v23 = v21;
      v24 = v19;
    }

    else
    {
      v30 = objc_opt_self();
      v31 = objc_opt_isKindOfClass();

      if ((v31 & 1) == 0)
      {
        v9 = 0;
        goto LABEL_13;
      }

      v32 = MEMORY[0x277D66B88];
      v39 = v10;
      v33 = v10;
      v37 = [v32 alloc];
      v19 = [objc_opt_class() elementIdentifier];
      v20 = [objc_opt_class() elementKind];
      v34 = objc_alloc(MEMORY[0x277D66B60]);
      v22 = [v33 containerBundleIdentifier];

      v24 = v19;
      v23 = v34;
    }

    v35 = [v23 initWithBundleIdentifier:{v22, v37}];
    v9 = [v38 initWithWidgetIdentifier:v19 widgetKind:v20 hostApp:v35 numberOfRows:v14 numberOfColumns:v13];

    v10 = v39;
LABEL_13:

    goto LABEL_14;
  }

  if (![v5 isFolderIcon])
  {
    v9 = 0;
    goto LABEL_15;
  }

  v8 = [v5 folder];
  v25 = [v8 icons];
  v26 = [v25 bs_filter:&__block_literal_global_77];
  v27 = [v26 bs_compactMap:&__block_literal_global_85];

  v28 = objc_alloc(MEMORY[0x277D66B68]);
  v29 = [v8 displayName];
  v9 = [v28 initWithDisplayName:v29 apps:v27];

LABEL_14:
LABEL_15:

  return v9;
}

id __59__SBIconModel_osMigrationHomeScreenLeafItemForIcon_inList___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D66B60];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 applicationBundleID];

  v6 = [v4 initWithBundleIdentifier:v5];

  return v6;
}

+ (id)osMigrationHomeScreenLayoutItemForLeafItem:(id)a3 withIdentifier:(unint64_t)a4 atIconIndex:(unint64_t)a5 gridCellInfo:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [v9 coordinateForGridCellIndex:{objc_msgSend(v9, "gridCellIndexForIconIndex:", a5)}];
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277D66B78]) initWithIdentifier:a4 rowIndex:v13 - 1 columnIndex:v11 - 1 item:v10];

  return v14;
}

+ (id)osMigrationHomeScreenLayoutItemForIcon:(id)a3 atIconIndex:(unint64_t)a4 inList:(id)a5 withIdentifier:(unint64_t)a6 gridCellInfo:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a3;
  v14 = [objc_opt_class() osMigrationHomeScreenLeafItemForIcon:v13 inList:v12];

  if (v14)
  {
    v15 = [objc_opt_class() osMigrationHomeScreenLayoutItemForLeafItem:v14 withIdentifier:a6 atIconIndex:a4 gridCellInfo:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)importOSMigrationHomeScreenLayout:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = [(SBHIconModel *)self rootFolder];
  v6 = [v30 copyWithOptions:2];
  v31 = v5;
  [v5 pages];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  v33 = self;
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [v6 addEmptyList];
        if (v12)
        {
          v13 = [v6 indexOfList:v12];
          v14 = [v11 numberOfColumns];
          v15 = [v11 numberOfRows];
          v16 = [v11 layoutItems];
          v17 = v3 & 0xFFFFFFFF00000000 | v14;
          self = v33;
          v3 = v17 & 0xFFFFFFFF0000FFFFLL | (v15 << 16);
          [(SBIconModel *)v33 insertOSMigrationHomeScreenLayoutItems:v16 intoListAtIndex:v13 inFolder:v6 rootFolder:v6 referenceGridSize:v3];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  v18 = [v31 bottomBarItems];
  [(SBIconModel *)self insertOSMigrationHomeScreenLayoutItems:v18 intoListAtIndex:*MEMORY[0x277D66458] inFolder:v6 rootFolder:v6 referenceGridSize:0];
  v19 = [v6 allIcons];
  v20 = [v6 ignoredList];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = [(SBHIconModel *)self visibleLeafIcons];
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v34 + 1) + 8 * j);
        if ([v26 isApplicationIcon] && (objc_msgSend(v19, "containsObject:", v26) & 1) == 0)
        {
          v27 = [v20 addIcon:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v23);
  }

  v28 = [objc_alloc(MEMORY[0x277D66200]) initWithRootNode:v6];
  [v28 setDelegate:v33];
  v29 = [v28 archiveWithError:0];
  if (v29)
  {
    [(SBHIconModel *)v33 importIconState:v29];
  }
}

- (id)iconForOSMigrationHomeScreenLeafItem:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 bundleIdentifier];
    v8 = [(SBIconModel *)self applicationIconForBundleIdentifier:v7];
  }

  else
  {
    v9 = objc_opt_self();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      v7 = [v4 hostApp];
      v11 = [v4 widgetKind];
      v12 = [v4 widgetIdentifier];
      v13 = [v7 bundleIdentifier];
      v14 = [(SBHIconModel *)self supportedGridSizeClassesForWidgetWithKind:v11 extensionBundleIdentifier:v12 containerBundleIdentifier:v13];
      v15 = [MEMORY[0x277D66148] elementClassWithIdentifier:v12];
      if (v15)
      {
        v16 = objc_alloc_init(v15);
        v8 = [objc_alloc(MEMORY[0x277D66450]) initWithUniqueLeafIdentifier];
        [v8 addIconDataSource:v16];
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:v11 extensionBundleIdentifier:v12 containerBundleIdentifier:v13 supportedGridSizeClasses:v14];
        v8 = [objc_alloc(MEMORY[0x277D66450]) initWithWidget:v16];
      }

      v26 = [v4 numberOfColumns];
      v27 = [v4 numberOfRows];
      v28 = [(SBHIconModel *)self gridSizeClassSizes];
      v29 = [v28 bestGridSizeClassForGridSize:v26 | (v27 << 16)];
      if (v29)
      {
        [v8 setGridSizeClass:v29];
      }
    }

    else
    {
      v17 = objc_opt_self();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        v8 = 0;
        goto LABEL_21;
      }

      v19 = [v4 displayName];
      v7 = [(SBHIconModel *)self makeFolderWithDisplayName:v19];

      v11 = [v4 apps];
      v20 = [v11 count];
      if (v20)
      {
        v21 = v20;
        for (i = 0; i != v21; ++i)
        {
          v23 = [v11 objectAtIndex:i];
          v24 = [(SBIconModel *)self iconForOSMigrationHomeScreenLeafItem:v23];
          if (v24)
          {
            v25 = [v7 addIcon:v24];
          }
        }
      }

      if ([v7 isEmpty])
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x277D660E8]) initWithFolder:v7];
      }
    }
  }

LABEL_21:

  return v8;
}

- (void)insertOSMigrationHomeScreenLayoutItems:(id)a3 intoListAtIndex:(unint64_t)a4 inFolder:(id)a5 rootFolder:(id)a6 referenceGridSize:(SBHIconGridSize)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        v20 = 0;
        [(SBIconModel *)self insertOSMigrationHomeScreenLayoutItem:v19 intoListAtIndex:a4 inFolder:v13 rootFolder:v14 referenceGridSize:*&a7 subsequentListSlide:&v20];
        a4 += v20;
        ++v18;
      }

      while (v16 != v18);
      v16 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }
}

- (BOOL)insertOSMigrationHomeScreenLayoutItem:(id)a3 intoListAtIndex:(unint64_t)a4 inFolder:(id)a5 rootFolder:(id)a6 referenceGridSize:(SBHIconGridSize)a7 subsequentListSlide:(unint64_t *)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = [v13 item];
  v17 = [(SBIconModel *)self iconForOSMigrationHomeScreenLeafItem:v16];

  if (v17)
  {
    if (![v17 isApplicationIcon] || !objc_msgSend(v15, "containsIcon:", v17) || (-[SBHIconModel addAdditionalIconMatchingIcon:](self, "addAdditionalIconMatchingIcon:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, (v17 = v18) != 0))
    {
      v44 = a8;
      v19 = [v14 listAtIndex:a4];
      v20 = [v19 gridSize];
      v21 = [v13 columnIndex];
      v22 = [v13 rowIndex];
      if (!SBHIconGridSizeEqualToIconGridSize() || v22 > 0x7FFFFFFFFFFFFFFELL || v22 + 1 > HIWORD(v20) || v21 > 0x7FFFFFFFFFFFFFFELL || (v21 + 1) > v20)
      {
        v28 = [v15 addIcon:v17 toList:v19 options:16];
        v31 = 0;
LABEL_23:
        if (v44)
        {
          *v44 = v31;
        }

        LODWORD(v18) = [v28 containsObject:v17] ^ 1;
        goto LABEL_26;
      }

      v41 = a4;
      v23 = [v19 gridCellInfoWithOptions:0];
      GridCellIndex = SBIconCoordinateGetGridCellIndex();
      v25 = [v17 gridSizeClass];
      v26 = [v19 gridSizeForGridSizeClass:v25];

      v27 = v26;
      v28 = [v15 gridPathWithList:v19 gridCellIndex:GridCellIndex listGridCellInfoOptions:0];
      v42 = GridCellIndex;
      v43 = v23;
      v29 = v23;
      v30 = v27;
      if ([v29 indexOfFirstUsedGridCellInGridRange:{GridCellIndex, v27}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = 0;
LABEL_22:
        v38 = [v15 insertIcon:v17 atGridPath:v28 options:1024];

        v28 = v38;
        goto LABEL_23;
      }

      v32 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      v34 = v41;
      if (isKindOfClass)
      {
        v45 = v42;
        v46 = v30;
        if (SBHIconGridRangeOffset() == 1)
        {
          v35 = 2;
          while ([v43 indexOfFirstUsedGridCellInGridRange:{v45, v46}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = v42;
            v46 = v30;
            if (v35++ != SBHIconGridRangeOffset())
            {
              goto LABEL_19;
            }
          }

          v40 = [v15 gridPathWithList:v19 gridCellIndex:v45 listGridCellInfoOptions:0];

          v31 = 0;
          v28 = v40;
          goto LABEL_22;
        }

LABEL_19:
        v34 = v41;
      }

      v18 = [v14 insertEmptyListAtIndex:v34 + 1];

      if (!v18)
      {
        v19 = v43;
LABEL_26:

        goto LABEL_27;
      }

      v37 = [v15 gridPathWithList:v18 gridCellIndex:v42 listGridCellInfoOptions:0];

      v31 = 1;
      v19 = v18;
      v28 = v37;
      goto LABEL_22;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

LABEL_27:

  return v18;
}

@end