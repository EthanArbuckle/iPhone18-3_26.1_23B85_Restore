@interface SBIconModel
+ (id)migratedIdentifierForLeafIdentifier:(id)identifier;
+ (id)osMigrationHomeScreenLayoutItemForIcon:(id)icon atIconIndex:(unint64_t)index inList:(id)list withIdentifier:(unint64_t)identifier gridCellInfo:(id)info;
+ (id)osMigrationHomeScreenLayoutItemForLeafItem:(id)item withIdentifier:(unint64_t)identifier atIconIndex:(unint64_t)index gridCellInfo:(id)info;
+ (id)osMigrationHomeScreenLeafItemForIcon:(id)icon inList:(id)list;
- (BOOL)importState:(id)state;
- (BOOL)insertOSMigrationHomeScreenLayoutItem:(id)item intoListAtIndex:(unint64_t)index inFolder:(id)folder rootFolder:(id)rootFolder referenceGridSize:(SBHIconGridSize)size subsequentListSlide:(unint64_t *)slide;
- (BOOL)isIconVisible:(id)visible;
- (BOOL)shouldAvoidCreatingIconForApplication:(id)application;
- (BOOL)shouldAvoidPlacingIconOnFirstPage:(id)page;
- (id)applicationIconForBundleIdentifier:(id)identifier;
- (id)bookmarkIconForWebClipIdentifier:(id)identifier;
- (id)exportFlattenedState:(BOOL)state includeMissingIcons:(BOOL)icons;
- (id)exportPendingState:(BOOL)state includeMissingIcons:(BOOL)icons;
- (id)exportState:(BOOL)state;
- (id)exportedOSMigrationDefaultHomeScreenLayout;
- (id)exportedOSMigrationHomeScreenLayout;
- (id)iconForOSMigrationHomeScreenLeafItem:(id)item;
- (id)osMigrationHomeScreenLayoutForRootFolder:(id)folder;
- (void)clearDesiredIconStateWithOptions:(unint64_t)options;
- (void)importOSMigrationHomeScreenLayout:(id)layout;
- (void)insertOSMigrationHomeScreenLayoutItems:(id)items intoListAtIndex:(unint64_t)index inFolder:(id)folder rootFolder:(id)rootFolder referenceGridSize:(SBHIconGridSize)size;
- (void)loadAllIcons;
@end

@implementation SBIconModel

- (BOOL)isIconVisible:(id)visible
{
  v13 = *MEMORY[0x277D85DE8];
  visibleCopy = visible;
  if (visibleCopy)
  {
    v10.receiver = self;
    v10.super_class = SBIconModel;
    if ([(SBHIconModel *)&v10 isIconVisible:visibleCopy])
    {
      if (![visibleCopy isBookmarkIcon] || (-[SBHIconModel hiddenIconTags](self, "hiddenIconTags"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", @"com.apple.webapp"), v5, !v6))
      {
        v8 = 1;
        goto LABEL_10;
      }

      v7 = SBLogIcon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v12 = visibleCopy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Icon is not visible: %{public}@ / WebAppBundle", buf, 0xCu);
      }
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)bookmarkIconForWebClipIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = SBIconModel;
  v3 = [(SBHIconModel *)&v5 bookmarkIconForWebClipIdentifier:identifier];

  return v3;
}

- (BOOL)shouldAvoidCreatingIconForApplication:(id)application
{
  applicationCopy = application;
  v10.receiver = self;
  v10.super_class = SBIconModel;
  v5 = [(SBHIconModel *)&v10 shouldAvoidCreatingIconForApplication:applicationCopy];
  v6 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    info = [applicationCopy info];
  }

  else
  {
    info = 0;
  }

  if (v5)
  {
    hasHiddenTag = 1;
  }

  else
  {
    hasHiddenTag = [info hasHiddenTag];
  }

  return hasHiddenTag;
}

- (void)loadAllIcons
{
  v3.receiver = self;
  v3.super_class = SBIconModel;
  [(SBHIconModel *)&v3 loadAllIcons];
  self->_iconsHaveBeenLoadedOnce = 1;
}

- (id)applicationIconForBundleIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = SBIconModel;
  v3 = [(SBHIconModel *)&v5 applicationIconForBundleIdentifier:identifier];

  return v3;
}

- (BOOL)shouldAvoidPlacingIconOnFirstPage:(id)page
{
  pageCopy = page;
  if ([pageCopy isApplicationIcon])
  {
    application = [pageCopy application];
  }

  else
  {
    application = 0;
  }

  if ([application isRestoringIcon])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBIconModel;
    v6 = [(SBHIconModel *)&v8 shouldAvoidPlacingIconOnFirstPage:pageCopy];
  }

  return v6;
}

- (void)clearDesiredIconStateWithOptions:(unint64_t)options
{
  v4.receiver = self;
  v4.super_class = SBIconModel;
  [(SBHIconModel *)&v4 clearDesiredIconStateWithOptions:options];
  [(SBIconModel *)self setCachedFlattenedForecastedDesiredIconState:0];
}

- (id)exportState:(BOOL)state
{
  stateCopy = state;
  v14 = *MEMORY[0x277D85DE8];
  iconModelMetadata = [(SBHIconModel *)self iconModelMetadata];
  v6 = [(SBHIconStateArchiver *)SBIconStateArchiver archiveRootFolderInModel:self metadata:iconModelMetadata];
  v7 = [SBIconStateArchiver iTunesRepresentationFromRootArchive:v6 preApex:!stateCopy pending:0 iconSource:self];

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%@: exported state: %@", &v10, 0x16u);
  }

  return v7;
}

- (id)exportPendingState:(BOOL)state includeMissingIcons:(BOOL)icons
{
  stateCopy = state;
  v15 = *MEMORY[0x277D85DE8];
  v6 = [(SBHIconModel *)self iconModelMetadata:state];
  v7 = [(SBHIconStateArchiver *)SBIconStateArchiver archiveRootFolderInModel:self metadata:v6];

  v8 = [SBIconStateArchiver iTunesRepresentationFromRootArchive:v7 preApex:!stateCopy pending:0 iconSource:self];
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "%@: exported pending state: %@", &v11, 0x16u);
  }

  return v8;
}

- (id)exportFlattenedState:(BOOL)state includeMissingIcons:(BOOL)icons
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(SBHIconModel *)self iconModelMetadata:state];
  v6 = [(SBHIconStateArchiver *)SBIconStateArchiver archiveRootFolderInModel:self metadata:v5];
  v7 = [(SBHIconStateArchiver *)SBIconStateArchiver leafIdentifiersFromArchive:v6];

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%@: exported flattened icon state: %@", &v11, 0x16u);
  }

  array = [v7 array];

  return array;
}

- (BOOL)importState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [SBIconStateArchiver rootArchiveFromITunesRepresentation:stateCopy];
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

    v6 = stateCopy;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  iconState = [(SBHIconModel *)self iconState];
  v10 = [MEMORY[0x277D66208] iconStateByReplacingTodayListsInIconState:v6 withTodayListsFromIconState:iconState];
  [(SBHIconModel *)self importIconState:v10];
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    desiredIconState = [(SBHIconModel *)self desiredIconState];
    v15 = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = desiredIconState;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "%@: icon state imported: %@", &v15, 0x16u);
  }

  v13 = 1;
LABEL_10:

  return v13;
}

+ (id)migratedIdentifierForLeafIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = migratedIdentifierForLeafIdentifier____bundleIDChanges;
  if (!migratedIdentifierForLeafIdentifier____bundleIDChanges)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"com.apple.camera", @"com.apple.mobileslideshow-Camera", @"com.apple.mobileslideshow", @"com.apple.mobileslideshow-Photos", @"com.apple.tv", @"com.apple.mobileipod-VideoPlayer", @"com.apple.Music", @"com.apple.mobileipod-MediaPlayer", @"com.apple.Music", @"com.apple.mobileipod-AudioPlayer", @"com.apple.Music", @"com.apple.mobileipod", @"com.apple.Passbook", @"com.apple.Shoebox", @"com.apple.tv", @"com.apple.videos", @"com.apple.shortcuts", @"is.workflow.my.app", @"com.apple.findmy", @"com.apple.mobileme.fmip1", 0}];
    v6 = migratedIdentifierForLeafIdentifier____bundleIDChanges;
    migratedIdentifierForLeafIdentifier____bundleIDChanges = v5;

    v4 = migratedIdentifierForLeafIdentifier____bundleIDChanges;
  }

  v7 = [v4 objectForKey:identifierCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:identifierCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = identifierCopy;
    }

    v9 = v12;
  }

  return v9;
}

- (id)exportedOSMigrationHomeScreenLayout
{
  rootFolder = [(SBHIconModel *)self rootFolder];
  v4 = [(SBIconModel *)self osMigrationHomeScreenLayoutForRootFolder:rootFolder];

  return v4;
}

- (id)exportedOSMigrationDefaultHomeScreenLayout
{
  defaultIconState = [(SBHIconModel *)self defaultIconState];
  v4 = [MEMORY[0x277D66200] unarchiveRootFolderFromArchive:defaultIconState withIconSource:self];
  rootFolder = [v4 rootFolder];
  v6 = [(SBIconModel *)self osMigrationHomeScreenLayoutForRootFolder:rootFolder];

  return v6;
}

- (id)osMigrationHomeScreenLayoutForRootFolder:(id)folder
{
  folderCopy = folder;
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
  [folderCopy enumerateListsWithOptions:6 usingBlock:v25];
  dock = [folderCopy dock];
  v8 = [dock gridCellInfoWithOptions:0];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __56__SBIconModel_osMigrationHomeScreenLayoutForRootFolder___block_invoke_3;
  v19 = &unk_2783B0600;
  selfCopy = self;
  v10 = dock;
  v21 = v10;
  v24 = v28;
  v11 = v8;
  v22 = v11;
  v12 = v9;
  v23 = v12;
  [v10 enumerateIconsUsingBlock:&v16];
  v13 = objc_alloc(MEMORY[0x277D66B70]);
  v14 = [v13 initWithPages:v6 bottomBarItems:{v12, v16, v17, v18, v19, selfCopy}];

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

+ (id)osMigrationHomeScreenLeafItemForIcon:(id)icon inList:(id)list
{
  iconCopy = icon;
  listCopy = list;
  if ([iconCopy isApplicationIcon])
  {
    v7 = objc_alloc(MEMORY[0x277D66B60]);
    applicationBundleID = [iconCopy applicationBundleID];
    v9 = [v7 initWithBundleIdentifier:applicationBundleID];
    goto LABEL_14;
  }

  if ([iconCopy isWidgetIcon])
  {
    applicationBundleID = iconCopy;
    activeDataSource = [applicationBundleID activeDataSource];
    gridSizeClass = [applicationBundleID gridSizeClass];
    v12 = [listCopy gridSizeForGridSizeClass:gridSizeClass];
    v13 = v12;
    v14 = HIWORD(v12);

    v15 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = MEMORY[0x277D66B88];
      v39 = activeDataSource;
      v18 = activeDataSource;
      v37 = [v17 alloc];
      extensionBundleIdentifier = [v18 extensionBundleIdentifier];
      kind = [v18 kind];
      v21 = objc_alloc(MEMORY[0x277D66B60]);
      containerBundleIdentifier = [v18 containerBundleIdentifier];

      v23 = v21;
      v24 = extensionBundleIdentifier;
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
      v39 = activeDataSource;
      v33 = activeDataSource;
      v37 = [v32 alloc];
      extensionBundleIdentifier = [objc_opt_class() elementIdentifier];
      kind = [objc_opt_class() elementKind];
      v34 = objc_alloc(MEMORY[0x277D66B60]);
      containerBundleIdentifier = [v33 containerBundleIdentifier];

      v24 = extensionBundleIdentifier;
      v23 = v34;
    }

    v35 = [v23 initWithBundleIdentifier:{containerBundleIdentifier, v37}];
    v9 = [v38 initWithWidgetIdentifier:extensionBundleIdentifier widgetKind:kind hostApp:v35 numberOfRows:v14 numberOfColumns:v13];

    activeDataSource = v39;
LABEL_13:

    goto LABEL_14;
  }

  if (![iconCopy isFolderIcon])
  {
    v9 = 0;
    goto LABEL_15;
  }

  applicationBundleID = [iconCopy folder];
  icons = [applicationBundleID icons];
  v26 = [icons bs_filter:&__block_literal_global_77];
  v27 = [v26 bs_compactMap:&__block_literal_global_85];

  v28 = objc_alloc(MEMORY[0x277D66B68]);
  displayName = [applicationBundleID displayName];
  v9 = [v28 initWithDisplayName:displayName apps:v27];

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

+ (id)osMigrationHomeScreenLayoutItemForLeafItem:(id)item withIdentifier:(unint64_t)identifier atIconIndex:(unint64_t)index gridCellInfo:(id)info
{
  infoCopy = info;
  itemCopy = item;
  v11 = [infoCopy coordinateForGridCellIndex:{objc_msgSend(infoCopy, "gridCellIndexForIconIndex:", index)}];
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277D66B78]) initWithIdentifier:identifier rowIndex:v13 - 1 columnIndex:v11 - 1 item:itemCopy];

  return v14;
}

+ (id)osMigrationHomeScreenLayoutItemForIcon:(id)icon atIconIndex:(unint64_t)index inList:(id)list withIdentifier:(unint64_t)identifier gridCellInfo:(id)info
{
  infoCopy = info;
  listCopy = list;
  iconCopy = icon;
  v14 = [objc_opt_class() osMigrationHomeScreenLeafItemForIcon:iconCopy inList:listCopy];

  if (v14)
  {
    v15 = [objc_opt_class() osMigrationHomeScreenLayoutItemForLeafItem:v14 withIdentifier:identifier atIconIndex:index gridCellInfo:infoCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)importOSMigrationHomeScreenLayout:(id)layout
{
  v44 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  rootFolder = [(SBHIconModel *)self rootFolder];
  v6 = [rootFolder copyWithOptions:2];
  v31 = layoutCopy;
  [layoutCopy pages];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  selfCopy = self;
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
        addEmptyList = [v6 addEmptyList];
        if (addEmptyList)
        {
          v13 = [v6 indexOfList:addEmptyList];
          numberOfColumns = [v11 numberOfColumns];
          numberOfRows = [v11 numberOfRows];
          layoutItems = [v11 layoutItems];
          v17 = v3 & 0xFFFFFFFF00000000 | numberOfColumns;
          self = selfCopy;
          v3 = v17 & 0xFFFFFFFF0000FFFFLL | (numberOfRows << 16);
          [(SBIconModel *)selfCopy insertOSMigrationHomeScreenLayoutItems:layoutItems intoListAtIndex:v13 inFolder:v6 rootFolder:v6 referenceGridSize:v3];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  bottomBarItems = [v31 bottomBarItems];
  [(SBIconModel *)self insertOSMigrationHomeScreenLayoutItems:bottomBarItems intoListAtIndex:*MEMORY[0x277D66458] inFolder:v6 rootFolder:v6 referenceGridSize:0];
  allIcons = [v6 allIcons];
  ignoredList = [v6 ignoredList];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  visibleLeafIcons = [(SBHIconModel *)self visibleLeafIcons];
  v22 = [visibleLeafIcons countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(visibleLeafIcons);
        }

        v26 = *(*(&v34 + 1) + 8 * j);
        if ([v26 isApplicationIcon] && (objc_msgSend(allIcons, "containsObject:", v26) & 1) == 0)
        {
          v27 = [ignoredList addIcon:v26];
        }
      }

      v23 = [visibleLeafIcons countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v23);
  }

  v28 = [objc_alloc(MEMORY[0x277D66200]) initWithRootNode:v6];
  [v28 setDelegate:selfCopy];
  v29 = [v28 archiveWithError:0];
  if (v29)
  {
    [(SBHIconModel *)selfCopy importIconState:v29];
  }
}

- (id)iconForOSMigrationHomeScreenLeafItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    bundleIdentifier = [itemCopy bundleIdentifier];
    initWithUniqueLeafIdentifier = [(SBIconModel *)self applicationIconForBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v9 = objc_opt_self();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      bundleIdentifier = [itemCopy hostApp];
      widgetKind = [itemCopy widgetKind];
      widgetIdentifier = [itemCopy widgetIdentifier];
      v7BundleIdentifier = [bundleIdentifier bundleIdentifier];
      v14 = [(SBHIconModel *)self supportedGridSizeClassesForWidgetWithKind:widgetKind extensionBundleIdentifier:widgetIdentifier containerBundleIdentifier:v7BundleIdentifier];
      v15 = [MEMORY[0x277D66148] elementClassWithIdentifier:widgetIdentifier];
      if (v15)
      {
        v16 = objc_alloc_init(v15);
        initWithUniqueLeafIdentifier = [objc_alloc(MEMORY[0x277D66450]) initWithUniqueLeafIdentifier];
        [initWithUniqueLeafIdentifier addIconDataSource:v16];
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:widgetKind extensionBundleIdentifier:widgetIdentifier containerBundleIdentifier:v7BundleIdentifier supportedGridSizeClasses:v14];
        initWithUniqueLeafIdentifier = [objc_alloc(MEMORY[0x277D66450]) initWithWidget:v16];
      }

      numberOfColumns = [itemCopy numberOfColumns];
      numberOfRows = [itemCopy numberOfRows];
      gridSizeClassSizes = [(SBHIconModel *)self gridSizeClassSizes];
      v29 = [gridSizeClassSizes bestGridSizeClassForGridSize:numberOfColumns | (numberOfRows << 16)];
      if (v29)
      {
        [initWithUniqueLeafIdentifier setGridSizeClass:v29];
      }
    }

    else
    {
      v17 = objc_opt_self();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        initWithUniqueLeafIdentifier = 0;
        goto LABEL_21;
      }

      displayName = [itemCopy displayName];
      bundleIdentifier = [(SBHIconModel *)self makeFolderWithDisplayName:displayName];

      widgetKind = [itemCopy apps];
      v20 = [widgetKind count];
      if (v20)
      {
        v21 = v20;
        for (i = 0; i != v21; ++i)
        {
          v23 = [widgetKind objectAtIndex:i];
          v24 = [(SBIconModel *)self iconForOSMigrationHomeScreenLeafItem:v23];
          if (v24)
          {
            v25 = [bundleIdentifier addIcon:v24];
          }
        }
      }

      if ([bundleIdentifier isEmpty])
      {
        initWithUniqueLeafIdentifier = 0;
      }

      else
      {
        initWithUniqueLeafIdentifier = [objc_alloc(MEMORY[0x277D660E8]) initWithFolder:bundleIdentifier];
      }
    }
  }

LABEL_21:

  return initWithUniqueLeafIdentifier;
}

- (void)insertOSMigrationHomeScreenLayoutItems:(id)items intoListAtIndex:(unint64_t)index inFolder:(id)folder rootFolder:(id)rootFolder referenceGridSize:(SBHIconGridSize)size
{
  v26 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  folderCopy = folder;
  rootFolderCopy = rootFolder;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [itemsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        v20 = 0;
        [(SBIconModel *)self insertOSMigrationHomeScreenLayoutItem:v19 intoListAtIndex:index inFolder:folderCopy rootFolder:rootFolderCopy referenceGridSize:*&size subsequentListSlide:&v20];
        index += v20;
        ++v18;
      }

      while (v16 != v18);
      v16 = [itemsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }
}

- (BOOL)insertOSMigrationHomeScreenLayoutItem:(id)item intoListAtIndex:(unint64_t)index inFolder:(id)folder rootFolder:(id)rootFolder referenceGridSize:(SBHIconGridSize)size subsequentListSlide:(unint64_t *)slide
{
  itemCopy = item;
  folderCopy = folder;
  rootFolderCopy = rootFolder;
  item = [itemCopy item];
  v17 = [(SBIconModel *)self iconForOSMigrationHomeScreenLeafItem:item];

  if (v17)
  {
    if (![v17 isApplicationIcon] || !objc_msgSend(rootFolderCopy, "containsIcon:", v17) || (-[SBHIconModel addAdditionalIconMatchingIcon:](self, "addAdditionalIconMatchingIcon:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, (v17 = v18) != 0))
    {
      slideCopy = slide;
      v19 = [folderCopy listAtIndex:index];
      gridSize = [v19 gridSize];
      columnIndex = [itemCopy columnIndex];
      rowIndex = [itemCopy rowIndex];
      if (!SBHIconGridSizeEqualToIconGridSize() || rowIndex > 0x7FFFFFFFFFFFFFFELL || rowIndex + 1 > HIWORD(gridSize) || columnIndex > 0x7FFFFFFFFFFFFFFELL || (columnIndex + 1) > gridSize)
      {
        v28 = [rootFolderCopy addIcon:v17 toList:v19 options:16];
        v31 = 0;
LABEL_23:
        if (slideCopy)
        {
          *slideCopy = v31;
        }

        LODWORD(v18) = [v28 containsObject:v17] ^ 1;
        goto LABEL_26;
      }

      indexCopy = index;
      v23 = [v19 gridCellInfoWithOptions:0];
      GridCellIndex = SBIconCoordinateGetGridCellIndex();
      gridSizeClass = [v17 gridSizeClass];
      v26 = [v19 gridSizeForGridSizeClass:gridSizeClass];

      v27 = v26;
      v28 = [rootFolderCopy gridPathWithList:v19 gridCellIndex:GridCellIndex listGridCellInfoOptions:0];
      v42 = GridCellIndex;
      v43 = v23;
      v29 = v23;
      v30 = v27;
      if ([v29 indexOfFirstUsedGridCellInGridRange:{GridCellIndex, v27}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = 0;
LABEL_22:
        v38 = [rootFolderCopy insertIcon:v17 atGridPath:v28 options:1024];

        v28 = v38;
        goto LABEL_23;
      }

      v32 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      v34 = indexCopy;
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

          v40 = [rootFolderCopy gridPathWithList:v19 gridCellIndex:v45 listGridCellInfoOptions:0];

          v31 = 0;
          v28 = v40;
          goto LABEL_22;
        }

LABEL_19:
        v34 = indexCopy;
      }

      v18 = [folderCopy insertEmptyListAtIndex:v34 + 1];

      if (!v18)
      {
        v19 = v43;
LABEL_26:

        goto LABEL_27;
      }

      v37 = [rootFolderCopy gridPathWithList:v18 gridCellIndex:v42 listGridCellInfoOptions:0];

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