@interface SBHIconStateUnarchiver
+ (void)_getFolderDisplayName:(id *)a3 defaultDisplayName:(id *)a4 uniqueIdentifier:(id *)a5 forRepresentation:(id)a6 iconSource:(id)a7;
- (BOOL)_canAddIconDataSource:(id)a3 toIcon:(id)a4 withGridSizeClass:(id)a5;
- (BOOL)_listsAllowRotatedLayoutForFolderClass:(Class)a3;
- (BOOL)shouldLeaveGapForMissingIconWithIdentifier:(id)a3;
- (Class)_folderClassForFolderType:(id)a3 context:(id)a4;
- (SBHIconGridSize)_listGridSizeForFolderClass:(Class)a3;
- (SBHIconGridSize)_listGridSizeForTodayList;
- (SBHIconGridSize)_listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)a3;
- (SBHIconStateUnarchiver)initWithArchive:(id)a3;
- (SBHIconStateUnarchiver)initWithArchive:(id)a3 iconModel:(id)a4;
- (double)ignoredListProperties;
- (id)_allowedGridSizeClassesForDock;
- (id)_allowedGridSizeClassesForFolderClass:(Class)a3;
- (id)_allowedGridSizeClassesForTodayList;
- (id)_applicationIconFromRepresentation:(id)a3 context:(id)a4;
- (id)_batteryElementWithIdentifier:(id)a3;
- (id)_customIconElementFromRepresentation:(id)a3 context:(id)a4;
- (id)_fileStackIconFromRepresentation:(id)a3 context:(id)a4;
- (id)_folderFromRepresentation:(id)a3 withContext:(id)a4;
- (id)_gridSizeClassSizes;
- (id)_iconFromRepresentation:(id)a3 withContext:(id)a4;
- (id)_listFromRepresentation:(id)a3 properties:(id)a4 identifier:(id)a5 context:(id)a6 overflow:(id)a7;
- (id)_listRotatedLayoutClusterGridSizeClass;
- (id)_listWithIcons:(id)a3 properties:(id)a4 identifier:(id)a5 folder:(id)a6 overflow:(id)a7;
- (id)_newFolderIconForFolder:(id)a3;
- (id)_nodeFromRepresentation:(id)a3 context:(id)a4;
- (id)_rotatedGridSizeClassSizes;
- (id)_sanitizedFixedIconLocationsFromDictionary:(id)a3 iconIdentifiers:(id)a4;
- (id)_widgetIconFromRepresentation:(id)a3 context:(id)a4;
- (id)customGridSizeClassDomain;
- (id)dockListProperties;
- (id)dockUtilitiesListProperties;
- (id)effectiveDelegate;
- (id)effectiveGridSizeClassDomain;
- (id)gridSizeClassForString:(id)a3;
- (id)ignoredListProperties;
- (id)propertiesForFolderClass:(Class)a3;
- (id)supportedGridSizeClassesForWidgetWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5;
- (id)todayListProperties;
- (id)unarchive;
- (int64_t)_listsFixedIconLocationBehaviorForFolderClass:(Class)a3;
- (int64_t)_listsIconDisplacementBehaviorForFolderClass:(Class)a3;
- (int64_t)_suggestionSourceFromRepresentation:(id)a3;
- (unint64_t)_listsIconLayoutBehaviorForFolderClass:(Class)a3;
- (unint64_t)_maxIconCountForDock;
- (unint64_t)_maxIconCountForDockUtilities;
- (unint64_t)_maxListCountForFolders;
- (void)_getFolderDisplayName:(id *)a3 defaultDisplayName:(id *)a4 uniqueIdentifier:(id *)a5 forRepresentation:(id)a6;
- (void)applyProperties:(id)a3 asDefaultPropertiesToFolder:(id)a4;
- (void)dockListProperties;
- (void)todayListProperties;
@end

@implementation SBHIconStateUnarchiver

- (SBHIconStateUnarchiver)initWithArchive:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHIconStateUnarchiver;
  v6 = [(SBHIconStateUnarchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archive, a3);
    v7->_removesEmptyFolders = 1;
  }

  return v7;
}

- (SBHIconStateUnarchiver)initWithArchive:(id)a3 iconModel:(id)a4
{
  v7 = a4;
  v8 = [(SBHIconStateUnarchiver *)self initWithArchive:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_iconModel, a4);
    objc_storeStrong(&v9->_iconSource, a4);
  }

  return v9;
}

- (id)effectiveDelegate
{
  v3 = [(SBHIconStateUnarchiver *)self delegate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBHIconStateUnarchiver *)self iconModel];
  }

  v6 = v5;

  return v6;
}

- (id)unarchive
{
  v3 = objc_alloc_init(SBIconStateUnarchiveResult);
  v4 = [(SBHIconStateUnarchiver *)self archive];
  v5 = [(SBHIconStateUnarchiver *)self iconModel];
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 objectForKeyedSubscript:@"metadata"];
    [(SBIconStateUnarchiveResult *)v3 _setMetadata:v7];

    v8 = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SBIconStateUnarchiveResult *)v3 metadata];
      [v8 willUnarchiveIconModel:v5 withMetadata:v9];
    }
  }

  v10 = [(SBHIconStateUnarchiver *)self _nodeFromRepresentation:v4 context:v3];
  [(SBIconStateUnarchiveResult *)v3 setRootNode:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBIconStateUnarchiveResult *)v3 _setRootFolder:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
    [v10 setGridSizeClassDomain:v11];
  }

  objc_autoreleasePoolPop(v6);

  return v3;
}

- (id)_nodeFromRepresentation:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 objectForKeyedSubscript:@"widgetVersion"];
    self->_postNewsWidgetMigration = [v8 unsignedIntegerValue] != 0;

    v9 = [(SBHIconStateUnarchiver *)self _folderFromRepresentation:v6 withContext:v7];
LABEL_3:
    v10 = v9;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 _currentFolder];
    v12 = objc_opt_class();

    v13 = [(SBHIconStateUnarchiver *)self propertiesForFolderClass:v12];
    v10 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v6 properties:v13 identifier:0 context:v7 overflow:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(SBHIconStateUnarchiver *)self _iconFromRepresentation:v6 withContext:v7];
      goto LABEL_3;
    }

    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _nodeFromRepresentation:context:];
    }

    [v7 _noteRepresentationIsCorrupted];
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)_newFolderIconForFolder:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [[SBFolderIcon alloc] initWithFolder:v3];

  return v4;
}

- (id)_iconFromRepresentation:(id)a3 withContext:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconStateUnarchiver *)self iconSource];
  v9 = [(SBHIconStateUnarchiver *)self iconModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = v10;
    if (v9)
    {
      v12 = [objc_opt_class() migratedIdentifierForLeafIdentifier:v10];
    }

    else
    {
      v12 = v10;
    }

    v16 = v12;
    if (([v12 isEqualToString:v11] & 1) == 0)
    {
      v17 = SBLogIcon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v29 = 138412546;
        v30 = v11;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_INFO, "Migrated identifier for %@ to %@", &v29, 0x16u);
      }

      [v7 _noteSignificantDeviation];
    }

    v18 = [v8 leafIconForIdentifier:v16];
    v19 = v18;
    if (v9 && v18)
    {
      if (([v9 isIconVisible:v18] & 1) == 0)
      {

LABEL_22:
        v20 = SBLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 138412290;
          v30 = v11;
          _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "could not find icon for representation -> %@", &v29, 0xCu);
        }

        if ([(SBHIconStateUnarchiver *)self shouldLeaveGapForMissingIconWithIdentifier:v16])
        {
          v19 = [(SBLeafIcon *)[SBHIconStateUnarchivingSlugIcon alloc] initWithLeafIdentifier:v16 applicationBundleID:0];
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else if (!v18)
    {
      goto LABEL_22;
    }

LABEL_32:

    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
    }

    goto LABEL_42;
  }

  v11 = [v6 objectForKey:@"iconType"];
  if (![v11 isEqual:@"custom"])
  {
    if ([v11 isEqual:@"app"])
    {
      v13 = [(SBHIconStateUnarchiver *)self _applicationIconFromRepresentation:v6 context:v7];
      if (!v13)
      {
        v14 = SBLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
        }

        goto LABEL_30;
      }

LABEL_35:
      v19 = v13;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"fileStack"])
    {
      v13 = [(SBHIconStateUnarchiver *)self _fileStackIconFromRepresentation:v6 context:v7];
      goto LABEL_35;
    }

    if (v11)
    {
      goto LABEL_37;
    }

    v16 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
    v25 = [v6 objectForKey:@"iconLists"];
    if (v25)
    {
    }

    else if (objc_opt_respondsToSelector())
    {
      v19 = [v16 iconStateUnarchiver:self iconForRepresentation:v6];
      if (v19)
      {
        goto LABEL_32;
      }
    }

    [v7 _noteEnteredNode];
    v26 = [(SBHIconStateUnarchiver *)self _folderFromRepresentation:v6 withContext:v7];
    v27 = v26;
    if (!v26 || [v26 isEmpty] && -[SBHIconStateUnarchiver removesEmptyFolders](self, "removesEmptyFolders") && objc_msgSend(v27, "shouldRemoveWhenEmpty"))
    {
      [v7 _noteExitedNode];
    }

    else
    {
      v19 = [(SBHIconStateUnarchiver *)self _newFolderIconForFolder:v27];
      [v7 _noteExitedNode];
      if (v19)
      {
LABEL_68:

        goto LABEL_32;
      }
    }

    v28 = SBLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
    }

    v19 = 0;
    goto LABEL_68;
  }

  v13 = [(SBHIconStateUnarchiver *)self _widgetIconFromRepresentation:v6 context:v7];
  if (v13)
  {
    goto LABEL_35;
  }

  v14 = SBLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
  }

LABEL_30:

  [v7 _noteSignificantDeviation];
LABEL_37:
  v19 = 0;
LABEL_38:

  if (v19)
  {
    v21 = [(SBLeafIcon *)v19 nodeIdentifier];
    if ([v7 _isNodeIdentifierAlreadyUnarchived:v21])
    {
      v22 = SBLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
      }
    }

    else
    {
      if (!v9 || [v9 isIconVisible:v19])
      {
        [v7 _noteNodeIdentifierWasUnarchived:v21];
LABEL_51:

        goto LABEL_52;
      }

      v22 = SBLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
      }
    }

    [v7 _noteSignificantDeviation];
    v19 = 0;
    goto LABEL_51;
  }

LABEL_42:
  v23 = SBLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v29 = 138412290;
    v30 = v6;
    _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_INFO, "could not find icon for representation=%@", &v29, 0xCu);
  }

  [v7 _noteSignificantDeviation];
  v19 = 0;
LABEL_52:

  return v19;
}

- (Class)_folderClassForFolderType:(id)a3 context:(id)a4
{
  v5 = a4;
  if (([a3 isEqualToString:@"folder"] & 1) == 0)
  {
    [v5 _currentParseDepth];
  }

  v6 = objc_opt_class();

  return v6;
}

+ (void)_getFolderDisplayName:(id *)a3 defaultDisplayName:(id *)a4 uniqueIdentifier:(id *)a5 forRepresentation:(id)a6 iconSource:(id)a7
{
  v21 = a6;
  v11 = a7;
  v12 = [v21 objectForKey:@"defaultDisplayName"];
  if ([v12 isEqualToString:&stru_1F3D472A8])
  {

    goto LABEL_6;
  }

  if (!v12)
  {
LABEL_6:
    v13 = [v21 objectForKey:@"displayName"];
    v12 = 0;
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = [v11 localizedFolderNameForDefaultDisplayName:v12];
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_7:
  v13 = [v11 localizedDefaultFolderName];
  v14 = [v11 unlocalizedDefaultFolderName];

  v12 = v14;
LABEL_8:
  if (a3)
  {
    v15 = v13;
    *a3 = v13;
  }

  if (a4)
  {
    v16 = v12;
    *a4 = v12;
  }

  if (a5)
  {
    v17 = [v21 objectForKey:@"uniqueIdentifier"];
    v18 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      v17 = 0;
    }

    v20 = v17;
    *a5 = v17;
  }
}

- (void)_getFolderDisplayName:(id *)a3 defaultDisplayName:(id *)a4 uniqueIdentifier:(id *)a5 forRepresentation:(id)a6
{
  v10 = a6;
  v11 = objc_opt_class();
  v12 = [(SBHIconStateUnarchiver *)self iconModel];
  [v11 _getFolderDisplayName:a3 defaultDisplayName:a4 uniqueIdentifier:a5 forRepresentation:v10 iconSource:v12];
}

- (SBHIconGridSize)_listGridSizeForFolderClass:(Class)a3
{
  v5 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconStateUnarchiver:self listGridSizeForFolderClass:a3];
    v7 = v6 & 0xFFFF0000;
    v8 = v6;
  }

  else
  {
    v7 = 196608;
    v8 = 3;
  }

  return (v7 | v8);
}

- (SBHIconGridSize)_listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)a3
{
  v5 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconStateUnarchiver:self listWithNonDefaultSizedIconsGridSizeForFolderClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBHIconGridSize)_listGridSizeForTodayList
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = ([v3 maxColumnCountForTodayListForIconStateUnarchiver:self] | 0xFFFF0000);
  }

  else
  {
    v4 = -65532;
  }

  return v4;
}

- (unint64_t)_maxListCountForFolders
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 maxListCountForFoldersForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (unint64_t)_maxIconCountForDock
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 maxIconCountForDockForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (unint64_t)_maxIconCountForDockUtilities
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 maxIconCountForDockUtilitiesForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)_gridSizeClassSizes
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 gridSizeClassSizesForIconStateUnarchiver:self];
  }

  else
  {
    v4 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  }

  v5 = v4;

  return v5;
}

- (id)_rotatedGridSizeClassSizes
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 rotatedGridSizeClassSizesForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_listRotatedLayoutClusterGridSizeClass
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 listRotatedLayoutClusterGridSizeClassForIconStateUnarchiver:self];
  }

  else
  {
    v4 = @"SBHIconGridSizeClassDefault";
  }

  v5 = v4;

  return v5;
}

- (BOOL)_listsAllowRotatedLayoutForFolderClass:(Class)a3
{
  v5 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconStateUnarchiver:self listsAllowRotatedLayoutForFolderClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_allowedGridSizeClassesForFolderClass:(Class)a3
{
  v5 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconStateUnarchiver:self allowedGridSizeClassesForFolderClass:a3];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
  }
  v6 = ;

  return v6;
}

- (id)_allowedGridSizeClassesForDock
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 allowedGridSizeClassesForDockForIconStateUnarchiver:self];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
  }
  v4 = ;

  return v4;
}

- (id)_allowedGridSizeClassesForTodayList
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 allowedGridSizeClassesForTodayListForIconStateUnarchiver:self];
  }

  else
  {
    v5 = [SBHIconGridSizeClassSet alloc];
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassSmall", @"SBHIconGridSizeClassMedium", @"SBHIconGridSizeClassLarge", 0}];
    v4 = [(SBHIconGridSizeClassSet *)v5 initWithGridSizeClasses:v6];
  }

  return v4;
}

- (int64_t)_listsFixedIconLocationBehaviorForFolderClass:(Class)a3
{
  v5 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconStateUnarchiver:self listsFixedIconLocationBehaviorForFolderClass:a3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)_listsIconDisplacementBehaviorForFolderClass:(Class)a3
{
  v5 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconStateUnarchiver:self listsIconDisplacementBehaviorForFolderClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_listsIconLayoutBehaviorForFolderClass:(Class)a3
{
  v5 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconStateUnarchiver:self listsIconLayoutBehaviorForFolderClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)customGridSizeClassDomain
{
  v3 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 iconGridSizeClassDomainForIconStateUnarchiver:self];
  }

  else
  {
    +[SBHIconGridSizeClassDomain globalDomain];
  }
  v4 = ;

  return v4;
}

- (id)effectiveGridSizeClassDomain
{
  v2 = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
  if (!v2)
  {
    v2 = +[SBHIconGridSizeClassDomain globalDomain];
  }

  return v2;
}

- (BOOL)shouldLeaveGapForMissingIconWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(SBHIconStateUnarchiver *)self leavesGapsForMissingIcons])
  {
    v5 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
    v6 = (objc_opt_respondsToSelector() & 1) == 0 || [v5 iconStateUnarchiver:self shouldLeaveGapForMissingIconWithIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyProperties:(id)a3 asDefaultPropertiesToFolder:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = v5;
  if (v9)
  {
    [v5 setListRotatedLayoutClusterGridSizeClass:*(v9 + 7)];
    v7 = *(v9 + 5);
  }

  else
  {
    [SBHIconStateUnarchiver applyProperties:v5 asDefaultPropertiesToFolder:0];
    v7 = 0;
  }

  [v6 setListAllowedGridSizeClasses:v7];
  if (v9)
  {
    [v6 setGridSizeClassDomain:*(v9 + 6)];
    [v6 setListsAllowRotatedLayout:v9[8]];
    [v6 setListWithNonDefaultSizedIconsGridSize:*(v9 + 14)];
    [v6 setListsFixedIconLocationBehavior:*(v9 + 8)];
    [v6 setListsIconDisplacementBehavior:*(v9 + 9)];
    [v6 setListsIconLayoutBehavior:*(v9 + 10)];
    v8 = *(v9 + 4);
  }

  else
  {
    [SBHIconStateUnarchiver applyProperties:v6 asDefaultPropertiesToFolder:?];
    v8 = 0;
  }

  [v6 setRotatedIconGridSizeClassSizes:v8];
}

- (id)dockListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  v4 = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = v4;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, v4, 24);

    v3->_listGridSize = ([(SBHIconStateUnarchiver *)self _maxIconCountForDock]| 0x10000);
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    v7 = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, v7, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _maxIconCountForDock];
    v7 = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  v9 = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForDock];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 dockListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)v9 dockListProperties];
  }

  return v3;
}

- (id)dockUtilitiesListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  v4 = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = v4;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, v4, 24);

    v3->_listGridSize = ([(SBHIconStateUnarchiver *)self _maxIconCountForDockUtilities]| 0x10000);
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    v7 = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, v7, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _maxIconCountForDockUtilities];
    v7 = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  v9 = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForDock];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 dockListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)v9 dockListProperties];
  }

  return v3;
}

- (id)todayListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  v4 = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = v4;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, v4, 24);

    v3->_listGridSize = [(SBHIconStateUnarchiver *)self _listGridSizeForTodayList];
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    v7 = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, v7, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _listGridSizeForTodayList];
    v7 = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  v9 = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForTodayList];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 todayListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)v9 dockListProperties];
  }

  return v3;
}

- (id)ignoredListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  v4 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v6 = v4;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, v4, 24);

    v3->_listGridSize = -65535;
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    objc_setProperty_nonatomic_copy(v3, v7, @"SBHIconGridSizeClassDefault", 56);
  }

  else
  {
  }

  v8 = +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 ignoredListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)v8 dockListProperties];
  }

  return v3;
}

- (id)_folderFromRepresentation:(id)a3 withContext:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"listType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SBHIconStateUnarchiver *)self _folderClassForFolderType:v9 context:v7];
  if (v10)
  {
    v11 = v10;
    v76 = v7;
    v12 = v8;
    v13 = [(SBHIconStateUnarchiver *)self _listGridSizeForFolderClass:v10];
    v14 = [(SBHIconStateUnarchiver *)self _maxListCountForFolders];
    v15 = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v16 = v6;
    [(SBHIconStateUnarchiver *)self _getFolderDisplayName:&v88 defaultDisplayName:&v87 uniqueIdentifier:&v86 forRepresentation:v6];
    v17 = v88;
    v18 = v87;
    v19 = v86;
    v20 = [v11 alloc];
    v72 = v19;
    v73 = v17;
    v21 = v14;
    v22 = v18;
    v74 = v15;
    v23 = [v20 initWithUniqueIdentifier:v19 displayName:v17 maxListCount:v21 listGridSize:*&v13 iconGridSizeClassSizes:v15];
    v24 = v23;
    if (v18)
    {
      [v23 setDefaultDisplayName:v18];
    }

    v75 = [(SBHIconStateUnarchiver *)self propertiesForFolderClass:v11];
    [SBHIconStateUnarchiver applyProperties:"applyProperties:asDefaultPropertiesToFolder:" asDefaultPropertiesToFolder:?];
    v71 = [v24 startCoalescingContentChangesForReason:@"folderFromRepresentation"];
    [v76 _pushFolder:v24];
    v6 = v16;
    v25 = [v16 objectForKey:@"iconLists"];
    v8 = v12;
    if (v25)
    {
      v69 = v22;
      v26 = [v6 objectForKey:@"listUniqueIdentifiers"];
      v27 = [v6 objectForKey:@"listMetadata"];
      objc_opt_class();
      v28 = v25;
      if (objc_opt_isKindOfClass() & 1) != 0 && (!v26 || (objc_opt_self(), v29 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v29, (isKindOfClass)))
      {
        v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v28, "count")}];
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke;
        v78[3] = &unk_1E808A6A0;
        v79 = v26;
        v80 = v31;
        v32 = v24;
        v81 = v32;
        v82 = self;
        v83 = v75;
        v7 = v76;
        v84 = v76;
        v85 = v27;
        v33 = v31;
        [v28 enumerateObjectsUsingBlock:v78];
        v34 = v32;
        v25 = v28;
        [v34 _setLists:v33];
      }

      else
      {
        v36 = SBLogCommon();
        v7 = v76;
        v25 = v28;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [v76 _noteRepresentationIsCorrupted];
      }

      v22 = v69;
    }

    else
    {
      v37 = SBLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
      }

      v7 = v76;
      [v76 _noteRepresentationIsCorrupted];
    }

    v38 = objc_opt_self();
    v39 = objc_opt_isKindOfClass();

    if (v39)
    {
      v40 = v24;
      v41 = [v6 objectForKey:@"buttonBar"];
      v67 = v41;
      if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v44 = SBLogCommon();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [v7 _noteRepresentationIsCorrupted];
      }

      else
      {
        v42 = [(SBHIconStateUnarchiver *)self dockListProperties];
        v43 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v41 properties:v42 identifier:0 context:v7 overflow:0];
        [v40 _setDock:v43];
      }

      v77 = v40;
      v70 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v70 isDockUtilitiesSupportedForIconStateUnarchiver:self])
      {
        v45 = [v6 objectForKey:@"dockUtilities"];
        if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v66 = objc_alloc_init(MEMORY[0x1E695DEC8]);
          [(SBHIconStateUnarchiver *)self dockListProperties];
          v49 = v47 = v45;
          v46 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v66 properties:v49 identifier:0 context:v7 overflow:0];

          [v77 _setDockUtilities:v46];
        }

        else
        {
          v46 = [(SBHIconStateUnarchiver *)self dockUtilitiesListProperties];
          [(SBHIconStateUnarchiver *)self _listFromRepresentation:v45 properties:v46 identifier:0 context:v7 overflow:0];
          v48 = v47 = v45;
          [v77 _setDockUtilities:v48];
        }
      }

      v50 = [v6 objectForKey:@"today"];
      v68 = v25;
      if (v50 && (objc_opt_self(), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_opt_isKindOfClass(), v51, (v52 & 1) == 0))
      {
        v55 = SBLogCommon();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [v7 _noteRepresentationIsCorrupted];
      }

      else
      {
        v53 = [(SBHIconStateUnarchiver *)self todayListProperties];
        v54 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v50 properties:v53 identifier:0 context:v7 overflow:0];
        [v77 _setTodayList:v54];
      }

      v56 = [v6 objectForKey:@"ignored"];
      if (v56 && (objc_opt_self(), v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_opt_isKindOfClass(), v57, (v58 & 1) == 0))
      {
        v62 = SBLogCommon();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [v7 _noteRepresentationIsCorrupted];
        v25 = v68;
        v61 = v77;
      }

      else
      {
        v59 = [(SBHIconStateUnarchiver *)self ignoredListProperties];
        v60 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v56 properties:v59 identifier:0 context:v7 overflow:0];
        [v77 _setIgnoredList:v60];

        v61 = v77;
        v25 = v68;
      }
    }

    [v24 compactLists];
    if (![v24 visibleListCount])
    {
      v63 = [v24 firstList];
      [v63 setHidden:0];
    }

    v64 = [v7 _popFolder];
    [v71 invalidate];
    [v24 markIconStateClean];
  }

  else
  {
    v35 = SBLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v90 = v6;
      _os_log_impl(&dword_1BEB18000, v35, OS_LOG_TYPE_INFO, "could not construct folder for representation=%@", buf, 0xCu);
    }

    [v7 _noteSignificantDeviation];
    v24 = 0;
  }

  return v24;
}

void __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndex:a3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!v6 || (objc_opt_self(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_isKindOfClass(), v7, (v8)))
  {
    v9 = [*(a1 + 40) count];
    if (v9 < [*(a1 + 48) maxListCount])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = [*(a1 + 56) _listFromRepresentation:v5 properties:*(a1 + 64) identifier:v6 context:*(a1 + 72) overflow:v10];
      if (v11)
      {
        [*(a1 + 40) addObject:v11];
      }

      if (!v6)
      {
        goto LABEL_47;
      }

      v12 = [*(a1 + 80) objectForKey:v6];
      if (!v12)
      {
        goto LABEL_47;
      }

      v13 = v12;
      v14 = [v12 objectForKey:@"hiddenDate"];
      v62 = v14;
      if (v14)
      {
        v15 = v14;
        v16 = v11;
        v17 = 1;
        v18 = v15;
      }

      else
      {
        v16 = v11;
        v17 = 0;
        v18 = 0;
      }

      [v16 setHidden:v17 byUser:1 hiddenDate:v18];
      v61 = [v13 objectForKey:@"focusModeIdentifiers"];
      v60 = [MEMORY[0x1E695DFD8] setWithArray:?];
      [v11 setFocusModeIdentifiers:?];
      v21 = [v13 objectForKey:@"overflowSlotCount"];
      v22 = v13;
      v23 = [v21 unsignedIntegerValue];

      [v11 setOverflowSlotCount:v23];
      v64 = v22;
      v24 = [v22 objectForKey:@"rotatedOrder"];
      v25 = objc_opt_self();
      v63 = v24;
      LOBYTE(v24) = objc_opt_isKindOfClass();

      if (v24)
      {
        v69 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v63, "count")}];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        obj = v63;
        v26 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (v26)
        {
          v27 = v26;
          v67 = *v74;
LABEL_24:
          v28 = 0;
          while (1)
          {
            if (*v74 != v67)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v73 + 1) + 8 * v28);
            v30 = objc_opt_self();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              break;
            }

            v32 = [v11 directlyContainedIconWithIdentifier:v29];
            if (!v32)
            {
              break;
            }

            v33 = v32;
            [v69 addObject:v32];

            if (v27 == ++v28)
            {
              v27 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
              if (v27)
              {
                goto LABEL_24;
              }

              break;
            }
          }
        }

        v34 = [v69 count];
        if (v34 == [v11 numberOfIcons])
        {
          [v11 _setRotatedIcons:v69 clearRotatedFixedIconLocations:1];
        }
      }

      v35 = v64;
      v70 = [v64 objectForKey:@"fixedLocations"];
      v36 = [v64 objectForKey:@"fixedLocationsGridColumns"];
      v37 = [v64 objectForKey:@"fixedLocationsGridRows"];
      v38 = v37;
      v39 = *(a1 + 64);
      if (v39 && *(v39 + 64))
      {
        v68 = v37;
        v40 = objc_opt_self();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_45:

          v35 = v64;
          v38 = v68;
          goto LABEL_46;
        }

        v41 = objc_opt_self();
        v42 = v36;
        v43 = v41;
        obja = v42;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_44:
          v36 = obja;
          goto LABEL_45;
        }

        v44 = objc_opt_self();
        v38 = v68;
        v45 = objc_opt_isKindOfClass();

        v35 = v64;
        v36 = obja;
        if (v45)
        {
          v46 = [obja unsignedIntegerValue];
          v47 = [v68 unsignedIntegerValue];
          v48 = [v11 gridSize];
          if (SBHIconGridSizeEqualToIconGridSize(v46 | (v47 << 16), v48))
          {
            v49 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 3221225472;
            v71[2] = __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_2;
            v71[3] = &unk_1E808A678;
            v40 = v49;
            v72 = v40;
            [v11 enumerateIconsUsingBlock:v71];
            v50 = [*(a1 + 56) _sanitizedFixedIconLocationsFromDictionary:v70 iconIdentifiers:v40];
            [v11 addFixedIconLocations:v50 options:0];
            [v11 removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:0];
            v51 = [v64 objectForKey:@"rotatedFixedLocations"];
            v52 = objc_opt_self();
            v53 = objc_opt_isKindOfClass();

            if (v53)
            {
              v54 = [*(a1 + 56) _sanitizedFixedIconLocationsFromDictionary:v51 iconIdentifiers:v40];
              [v11 setRotatedFixedIconLocations:v54];
              [v11 removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:2];
            }
          }

          else
          {
            v40 = SBLogCommon();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218752;
              v78 = v46;
              v79 = 2048;
              v80 = v47;
              v81 = 2048;
              v82 = v48;
              v83 = 2048;
              v84 = HIWORD(v48);
              _os_log_impl(&dword_1BEB18000, v40, OS_LOG_TYPE_DEFAULT, "Discarding fixed icon positions because archived grid size (%lu×%lu) does not match actual list size (%lu×%lu)", buf, 0x2Au);
            }
          }

          goto LABEL_44;
        }
      }

LABEL_46:

      do
      {
LABEL_47:
        v55 = v11;
        if (![v10 count])
        {
          break;
        }

        v56 = [*(a1 + 40) count];
        if (v56 >= [*(a1 + 48) maxListCount])
        {
          break;
        }

        v57 = [v10 copy];
        [v10 removeAllObjects];
        v11 = [*(a1 + 56) _listWithIcons:v57 properties:*(a1 + 64) identifier:0 folder:*(a1 + 48) overflow:v10];

        if (v11 && ([v11 isEmpty] & 1) == 0)
        {
          [*(a1 + 40) addObject:v11];
        }

        v58 = [v57 isEqualToArray:v10];
      }

      while (!v58);
      if ([v10 count])
      {
        v59 = SBLogCommon();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_cold_3();
        }
      }

      goto LABEL_58;
    }

    v20 = SBLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_cold_2();
    }
  }

  else
  {
    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_cold_1();
    }

    [*(a1 + 72) _noteRepresentationIsCorrupted];
  }

LABEL_58:
}

uint64_t __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (id)_listFromRepresentation:(id)a3 properties:(id)a4 identifier:(id)a5 context:(id)a6 overflow:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v29 = a4;
  v28 = a5;
  v13 = a6;
  v27 = a7;
  [v13 _noteEnteredNode];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = [(SBHIconStateUnarchiver *)self _iconFromRepresentation:v20 withContext:v13];
        if (v22)
        {
          [v14 addObject:v22];
        }

        else
        {
          v23 = SBLogCommon();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = v15;
            _os_log_error_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_ERROR, "could not make icon from representation: %@", buf, 0xCu);
          }

          [v13 _noteSignificantDeviation];
        }

        objc_autoreleasePoolPop(v21);
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v17);
  }

  v24 = [v13 _currentFolder];
  v25 = [(SBHIconStateUnarchiver *)self _listWithIcons:v14 properties:v29 identifier:v28 folder:v24 overflow:v27];
  if ([v27 count])
  {
    [v13 _noteSignificantDeviation];
  }

  [v13 _noteExitedNode];

  return v25;
}

uint64_t __79__SBHIconStateUnarchiver__listWithIcons_properties_identifier_folder_overflow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_applicationIconFromRepresentation:(id)a3 context:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKey:@"displayIdentifier"];
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 objectForKey:@"bundleIdentifier"];
    v10 = objc_opt_self();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = [(SBHIconStateUnarchiver *)self iconSource];
      v13 = [v12 applicationIconForBundleIdentifier:v9];
      if (v13)
      {
        v14 = [(SBHIconStateUnarchiver *)self iconModel];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 iconClassForApplicationWithBundleIdentifier:v9];
        }

        else
        {
          v16 = objc_opt_self();
        }

        v17 = [[v16 alloc] initWithLeafIdentifier:v6 applicationBundleID:v9];
        v19 = [v13 iconDataSources];
        [(SBLeafIcon *)v17 addIconDataSources:v19];
      }

      else
      {
        v18 = SBLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = v5;
          _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "could not find icon for representation -> %@", &v21, 0xCu);
        }

        if ([(SBHIconStateUnarchiver *)self shouldLeaveGapForMissingIconWithIdentifier:v6])
        {
          v17 = [(SBLeafIcon *)[SBHIconStateUnarchivingSlugIcon alloc] initWithLeafIdentifier:v6 applicationBundleID:0];
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_widgetIconFromRepresentation:(id)a3 context:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"displayIdentifier"];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];

    v8 = v12;
  }

  v13 = [[SBWidgetIcon alloc] initWithLeafIdentifier:v8 applicationBundleID:0];
  v14 = [v6 objectForKey:@"gridSize"];
  v15 = objc_opt_self();
  v16 = objc_opt_isKindOfClass();

  v17 = 0;
  if (v16)
  {
    v17 = [(SBHIconStateUnarchiver *)self gridSizeClassForString:v14];
    v18 = [v6 objectForKey:@"bundleIdentifier"];
    if ([v18 isEqualToString:@"com.apple.news.widget"])
    {
      v19 = [v6 objectForKey:@"widgetIdentifier"];
      v72 = v13;
      v20 = v6;
      v21 = v14;
      v22 = self;
      v23 = v17;
      v24 = [v19 isEqualToString:@"today"];

      v25 = v24 ^ 1;
      v17 = v23;
      self = v22;
      v14 = v21;
      v6 = v20;
      v13 = v72;
    }

    else
    {
      v25 = 1;
    }

    v26 = [(SBHIconStateUnarchiver *)self postNewsWidgetMigration];
    if (v17 == @"SBHIconGridSizeClassExtraLarge")
    {
      if ((v25 | v26))
      {
        goto LABEL_10;
      }
    }

    else if (v25 & 1 | (([(__CFString *)v17 isEqualToString:?]& 1) == 0) | v26)
    {
LABEL_10:
      [(SBIcon *)v13 setGridSizeClass:v17];
      goto LABEL_11;
    }

    v27 = @"SBHIconGridSizeClassNewsLargeTall";

    v17 = v27;
    goto LABEL_10;
  }

LABEL_11:
  v69 = self;
  v28 = [(SBHIconStateUnarchiver *)self _customIconElementFromRepresentation:v6 context:v7];
  v67 = v14;
  v68 = v28;
  if (!v28)
  {
    v71 = v17;
    v33 = [v6 objectForKey:@"elements"];
    v34 = objc_opt_self();
    v35 = objc_opt_isKindOfClass();

    if ((v35 & 1) == 0)
    {

      v64 = 0;
      v17 = v71;
      goto LABEL_73;
    }

    v66 = v8;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v31 = v33;
    v36 = [v31 countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (!v36)
    {

      v17 = v71;
      goto LABEL_56;
    }

    v37 = v36;
    v73 = v13;
    v38 = *v75;
    v70 = v7;
LABEL_20:
    v39 = 0;
    while (1)
    {
      if (*v75 != v38)
      {
        objc_enumerationMutation(v31);
      }

      v40 = *(*(&v74 + 1) + 8 * v39);
      v41 = objc_opt_self();
      v42 = objc_opt_isKindOfClass();

      if ((v42 & 1) == 0)
      {
        goto LABEL_43;
      }

      v43 = [(SBHIconStateUnarchiver *)self _customIconElementFromRepresentation:v40 context:v7];
      if (v43)
      {
        break;
      }

LABEL_42:

LABEL_43:
      if (v37 == ++v39)
      {
        v49 = [v31 countByEnumeratingWithState:&v74 objects:v82 count:16];
        v37 = v49;
        if (!v49)
        {

          v17 = v71;
          v13 = v73;
          goto LABEL_57;
        }

        goto LABEL_20;
      }
    }

    v44 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v45 = [v43 uniqueIdentifier];

      if (v45)
      {
        if ([v7 _isWidgetUniqueIdentifierAlreadyUnarchived:v45])
        {
          v46 = SBLogCommon();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v79 = v43;
            v80 = 2112;
            v81 = v73;
            _os_log_error_impl(&dword_1BEB18000, v46, OS_LOG_TYPE_ERROR, "detected duplicate widget '%@' to icon '%@'", buf, 0x16u);
          }

          goto LABEL_39;
        }

        v47 = 0;
LABEL_33:
        if ([(SBHIconStateUnarchiver *)self _canAddIconDataSource:v43 toIcon:v73 withGridSizeClass:v71])
        {
          [(SBLeafIcon *)v73 addIconDataSource:v43];
          v7 = v70;
          if ((v47 & 1) == 0)
          {
            [v70 _noteWidgetUniqueIdentifierWasUnarchived:v45];
          }

          goto LABEL_41;
        }

        v48 = SBLogCommon();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v79 = v43;
          v80 = 2112;
          v81 = v73;
          _os_log_error_impl(&dword_1BEB18000, v48, OS_LOG_TYPE_ERROR, "can't add widget '%@' to icon '%@'", buf, 0x16u);
        }

        v7 = v70;
LABEL_39:
        [v7 _noteSignificantDeviation];
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {

      v45 = 0;
    }

    v47 = 1;
    goto LABEL_33;
  }

  v29 = v28;
  v66 = v8;
  v30 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v31 = [v29 uniqueIdentifier];

    if (v31)
    {
      if ([v7 _isWidgetUniqueIdentifierAlreadyUnarchived:v31])
      {
        v32 = SBLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _widgetIconFromRepresentation:context:];
        }

LABEL_55:

        [v7 _noteSignificantDeviation];
        goto LABEL_56;
      }

      v50 = 0;
      goto LABEL_50;
    }
  }

  else
  {

    v31 = 0;
  }

  v50 = 1;
LABEL_50:
  if (![(SBHIconStateUnarchiver *)v69 _canAddIconDataSource:v29 toIcon:v13 withGridSizeClass:v17])
  {
    v32 = SBLogCommon();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _widgetIconFromRepresentation:context:];
    }

    goto LABEL_55;
  }

  [(SBLeafIcon *)v13 addIconDataSource:v29];
  if ((v50 & 1) == 0)
  {
    [v7 _noteWidgetUniqueIdentifierWasUnarchived:v31];
  }

LABEL_56:
  self = v69;
LABEL_57:

  v51 = [v6 objectForKey:@"userSelectedElementIdentifier"];
  if (v51)
  {
    v52 = [(SBLeafIcon *)v13 firstIconDataSourceWithUniqueIdentifier:v51];
    v53 = SBLogIcon();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      [(SBIcon *)v13 uniqueIdentifier];
      v55 = v54 = v17;
      *buf = 138412546;
      v79 = v52;
      v80 = 2112;
      v81 = v55;
      _os_log_impl(&dword_1BEB18000, v53, OS_LOG_TYPE_DEFAULT, "Setting last user selected data source after unarchiving: %@ for: %@", buf, 0x16u);

      v17 = v54;
    }

    [(SBWidgetIcon *)v13 setLastUserSelectedDataSource:v52];
    [(SBLeafIcon *)v13 _updateActiveDataSource];
  }

  v56 = [v6 objectForKey:@"allowsSuggestions"];
  if (objc_opt_respondsToSelector())
  {
    -[SBWidgetIcon setAllowsSuggestions:](v13, "setAllowsSuggestions:", [v56 BOOLValue]);
  }

  v57 = [v6 objectForKey:@"allowsExternalSuggestions"];
  if (objc_opt_respondsToSelector())
  {
    -[SBWidgetIcon setAllowsExternalSuggestions:](v13, "setAllowsExternalSuggestions:", [v57 BOOLValue]);
  }

  v58 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v59 = [v58 iconStateUnarchiver:self didUnarchiveWidgetIcon:v13];
    v60 = v59;
    if (v59)
    {
      v61 = v17;
      v62 = v59;

      v13 = v62;
      v17 = v61;
    }
  }

  if ([(SBLeafIcon *)v13 iconDataSourceCount])
  {
    v63 = v13;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;

  v8 = v66;
  v14 = v67;
LABEL_73:

  return v64;
}

- (id)_fileStackIconFromRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [[SBHFileStackIcon alloc] initWithUniqueLeafIdentifier];
  v7 = [v5 objectForKey:@"fileStackIconSortOrderIdentifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 objectForKey:@"fileStackIconSortOrderIdentifier"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E699A420]) initWithSortOrderIdentifier:v9];
  [(SBHFileStackIcon *)v6 setSortOrder:v10];
  v11 = [v5 objectForKey:@"fileStackIconSortOrderAscending"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [v5 objectForKey:@"fileStackIconSortOrderAscending"];
    v14 = [v13 BOOLValue];

    [(SBHFileStackIcon *)v6 setCurrentSortOrderAscending:v14];
  }

  v15 = [v5 objectForKey:@"fileStackIconDisplayModeIdentifier"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [v5 objectForKey:@"fileStackIconDisplayModeIdentifier"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_alloc(MEMORY[0x1E699A410]) initWithDisplayModeIdentifier:v17];
  [(SBHFileStackIcon *)v6 setDisplayMode:v18];
  v19 = [v5 objectForKey:@"fileStackIconDataSourceUniqueIdentifier"];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    v21 = [v5 objectForKey:@"fileStackIconDataSourceUniqueIdentifier"];
    v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];

    if (v22)
    {
      [(SBHFileStackIcon *)v6 setDataSourceUniqueIdentifier:v22];
    }
  }

  v23 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v24 = [v23 iconStateUnarchiver:self didUnarchiveFileStackIcon:v6];

    v6 = v24;
  }

  return v6;
}

- (BOOL)_canAddIconDataSource:(id)a3 toIcon:(id)a4 withGridSizeClass:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v8 gridSizeClass];
  }

  v12 = v11;
  if (objc_opt_respondsToSelector())
  {
    [v7 supportedGridSizeClassesForIcon:v8];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
  }
  v13 = ;
  v14 = [v13 containsGridSizeClass:v12];

  return v14;
}

- (id)_customIconElementFromRepresentation:(id)a3 context:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"uniqueIdentifier"];
  v9 = [v6 objectForKey:@"elementType"];
  v10 = [v6 objectForKey:@"widgetSuggestionSource"];
  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];

    v8 = v14;
  }

  if (v9)
  {
    v15 = objc_opt_self();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      v26 = 0;
      goto LABEL_37;
    }
  }

  if ([v9 isEqualToString:@"widget"])
  {
    v17 = [v6 objectForKey:@"widgetIdentifier"];
    v18 = objc_opt_self();
    v19 = objc_opt_isKindOfClass();

    v43 = self;
    if ((v19 & 1) == 0)
    {

      v17 = 0;
    }

    v20 = [v6 objectForKey:@"bundleIdentifier"];
    v21 = objc_opt_self();
    v22 = objc_opt_isKindOfClass();

    v44 = v7;
    if ((v22 & 1) == 0)
    {

      v20 = 0;
    }

    v23 = [v6 objectForKey:@"containerBundleIdentifier"];
    v24 = objc_opt_self();
    v25 = objc_opt_isKindOfClass();

    if ((v25 & 1) == 0)
    {
      [v44 _noteSignificantDeviation];

      v23 = 0;
    }

    v26 = 0;
    if (v8 && v17)
    {
      if ([v20 isEqualToString:*MEMORY[0x1E698E870]])
      {
        v26 = [(SBHIconStateUnarchiver *)v43 _batteryElementWithIdentifier:v8];
      }

      else
      {
        v28 = [(SBHIconStateUnarchiver *)v43 supportedGridSizeClassesForWidgetWithKind:v17 extensionBundleIdentifier:v20 containerBundleIdentifier:v23];
        v26 = [[SBHWidget alloc] initWithUniqueIdentifier:v8 kind:v17 extensionBundleIdentifier:v20 containerBundleIdentifier:v23 supportedGridSizeClasses:v28];
        v29 = SBLogWidgets();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [(SBHWidget *)v26 extensionBundleIdentifier];
          v42 = v28;
          [(SBHWidget *)v26 uniqueIdentifier];
          *buf = 138543618;
          v46 = v41;
          v48 = v47 = 2114;
          v30 = v48;
          _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created from arhive.", buf, 0x16u);

          v28 = v42;
        }
      }
    }

    self = v43;
    v7 = v44;
    if (!v10)
    {
      goto LABEL_37;
    }

LABEL_34:
    v32 = [(SBHIconStateUnarchiver *)self _suggestionSourceFromRepresentation:v10];
    v33 = objc_opt_self();
    v34 = objc_opt_isKindOfClass();

    if (v34 & 1) != 0 || (objc_opt_self(), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_opt_isKindOfClass(), v35, (v36))
    {
      v37 = [(SBHWidget *)v26 copyWithSuggestionSource:v32];

      v26 = v37;
    }

    goto LABEL_37;
  }

  if ([v9 isEqualToString:@"siriSuggestions"])
  {
    v27 = SBHSiriSuggestionsElement;
LABEL_32:
    v31 = [[v27 alloc] initWithUniqueIdentifier:v8];
    goto LABEL_33;
  }

  if ([v9 isEqualToString:@"shortcuts"])
  {
    v27 = SBHShortcutsFolderElement;
    goto LABEL_32;
  }

  if ([v9 isEqualToString:@"shortcutsSingle"])
  {
    v27 = SBHShortcutsSingleElement;
    goto LABEL_32;
  }

  if ([v9 isEqualToString:@"files"])
  {
    v27 = SBHFilesElement;
    goto LABEL_32;
  }

  if ([v9 isEqualToString:@"appPredictions"])
  {
    v27 = SBHAppPredictionsElement;
    goto LABEL_32;
  }

  if ([v9 isEqualToString:@"batteries"])
  {
    v31 = [(SBHIconStateUnarchiver *)self _batteryElementWithIdentifier:v8];
LABEL_33:
    v26 = v31;
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v39 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v26 = [v39 iconStateUnarchiver:self iconDataSourceForRepresentation:v6];
  }

  else
  {
    v26 = 0;
  }

  if (v9 && !v26)
  {
    v40 = SBLogCommon();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _customIconElementFromRepresentation:context:];
    }

    [v7 _noteSignificantDeviation];
  }

  if (v10)
  {
    goto LABEL_34;
  }

LABEL_37:

  return v26;
}

- (id)_batteryElementWithIdentifier:(id)a3
{
  v4 = *MEMORY[0x1E698E878];
  v5 = *MEMORY[0x1E698E870];
  v6 = *MEMORY[0x1E698E868];
  v7 = a3;
  v8 = [(SBHIconStateUnarchiver *)self supportedGridSizeClassesForWidgetWithKind:v4 extensionBundleIdentifier:v5 containerBundleIdentifier:v6];
  v9 = [[SBHWidget alloc] initWithUniqueIdentifier:v7 kind:v4 extensionBundleIdentifier:v5 containerBundleIdentifier:v6 supportedGridSizeClasses:v8];

  return v9;
}

- (int64_t)_suggestionSourceFromRepresentation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"onboarding"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NPlus1"];
  }

  return v4;
}

- (id)_sanitizedFixedIconLocationsFromDictionary:(id)a3 iconIdentifiers:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__SBHIconStateUnarchiver__sanitizedFixedIconLocationsFromDictionary_iconIdentifiers___block_invoke;
  v14[3] = &unk_1E808A6E8;
  v15 = v5;
  v9 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __85__SBHIconStateUnarchiver__sanitizedFixedIconLocationsFromDictionary_iconIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v8 = [*(a1 + 32) containsObject:v9];

  if (v8)
  {
    [*(a1 + 40) setObject:v5 forKey:v9];
  }

LABEL_7:
}

- (id)supportedGridSizeClassesForWidgetWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 iconStateUnarchiver:self supportedGridSizeClassesForWidgetWithKind:v8 extensionBundleIdentifier:v9 containerBundleIdentifier:v10];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForAllNonDefaultGridSizeClasses];
  }
  v12 = ;

  return v12;
}

- (id)gridSizeClassForString:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconStateUnarchiver *)self effectiveGridSizeClassDomain];
  v6 = [v5 gridSizeClassForArchiveValue:v4];

  if (!v6)
  {
    v6 = @"SBHIconGridSizeClassSmall";
  }

  return v6;
}

- (id)propertiesForFolderClass:(Class)a3
{
  v4 = objc_alloc_init(SBHIconStateArchiverListProperties);
  v5 = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v7 = v5;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v6, v5, 24);

    v4->_listGridSize = [OUTLINED_FUNCTION_3_0() _listGridSizeForFolderClass:?];
    v4->_listWithNonDefaultSizedIconsGridSize = [OUTLINED_FUNCTION_3_0() _listWithNonDefaultSizedIconsGridSizeForFolderClass:?];
    v8 = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v4, v9, v8, 56);
  }

  else
  {

    [OUTLINED_FUNCTION_3_0() _listGridSizeForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listWithNonDefaultSizedIconsGridSizeForFolderClass:?];
    v8 = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  v11 = [OUTLINED_FUNCTION_3_0() _allowedGridSizeClassesForFolderClass:?];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v10, v11, 40);
  }

  v12 = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
  [(SBHIconStateArchiverListProperties *)v4 setGridSizeClassDomain:v12];

  v13 = [OUTLINED_FUNCTION_3_0() _listsAllowRotatedLayoutForFolderClass:?];
  if (v4)
  {
    v4->_allowRotatedLayout = v13;
    v4->_fixedIconLocationBehavior = [OUTLINED_FUNCTION_3_0() _listsFixedIconLocationBehaviorForFolderClass:?];
    v4->_iconDisplacementBehavior = [OUTLINED_FUNCTION_3_0() _listsIconDisplacementBehaviorForFolderClass:?];
    v4->_iconLayoutBehavior = [OUTLINED_FUNCTION_3_0() _listsIconLayoutBehaviorForFolderClass:?];
    v14 = [(SBHIconStateUnarchiver *)self _rotatedGridSizeClassSizes];
    objc_setProperty_nonatomic_copy(v4, v15, v14, 32);
  }

  else
  {
    [OUTLINED_FUNCTION_3_0() _listsFixedIconLocationBehaviorForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listsIconDisplacementBehaviorForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listsIconLayoutBehaviorForFolderClass:?];
    v14 = [(SBHIconStateUnarchiver *)self _rotatedGridSizeClassSizes];
  }

  return v4;
}

- (id)_listWithIcons:(id)a3 properties:(id)a4 identifier:(id)a5 folder:(id)a6 overflow:(id)a7
{
  v77 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v66 = a7;
  if (v12)
  {
    v15 = *(v12 + 10);
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc([v14 listModelClass]);
  if (v12)
  {
    v17 = *(v12 + 3);
  }

  else
  {
    v17 = 0;
  }

  v63 = v14;
  v64 = v13;
  v18 = [v16 initWithUniqueIdentifier:v13 folder:v14 gridSize:v15 gridSizeClassSizes:v17];
  v19 = v18;
  if (v12)
  {
    [v18 setAllowedGridSizeClasses:*(v12 + 5)];
    v20 = *(v12 + 6);
  }

  else
  {
    [OUTLINED_FUNCTION_9_0() setAllowedGridSizeClasses:?];
    v20 = 0;
  }

  [v19 setGridSizeClassDomain:v20];
  if (v12)
  {
    [v19 setAllowsRotatedLayout:v12[8]];
    v21 = *(v12 + 7);
  }

  else
  {
    [v19 setAllowsRotatedLayout:0];
    v21 = 0;
  }

  [v19 setRotatedLayoutClusterGridSizeClass:v21];
  if (v12)
  {
    [v19 setFixedIconLocationBehavior:*(v12 + 8)];
    [v19 setIconLayoutBehavior:*(v12 + 10)];
    [v19 setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:*(v12 + 14)];
    v22 = *(v12 + 4);
  }

  else
  {
    [OUTLINED_FUNCTION_9_0() setFixedIconLocationBehavior:?];
    [OUTLINED_FUNCTION_9_0() setIconLayoutBehavior:?];
    [OUTLINED_FUNCTION_9_0() setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:?];
    v22 = 0;
  }

  [v19 setRotatedIconGridSizeClassSizes:v22];
  v65 = v12;
  if (v12)
  {
    v23 = *(v12 + 11);
  }

  else
  {
    v23 = 0;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v24 = v11;
  v25 = [v24 countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v72;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v72 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v71 + 1) + 8 * i);
        v30 = [v19 numberOfIcons];
        if (v30 >= [v19 maxNumberOfIcons])
        {
          v42 = SBLogCommon();
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
          if (v43)
          {
            OUTLINED_FUNCTION_6_0(v43, v44, v45, v46, v47, v48, v49, v50, v62, v63, v64, v65, v51);
            _os_log_impl(&dword_1BEB18000, v42, OS_LOG_TYPE_DEFAULT, "list is too small to add icon -> icon=%@ list=%@", v52, 0x16u);
          }

          [v66 addObject:v29];
        }

        else
        {
          v31 = [v19 addIcon:v29 options:v23];
          if ([v31 containsObject:v29])
          {
            v32 = SBLogCommon();
            v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
            if (v33)
            {
              OUTLINED_FUNCTION_6_0(v33, v34, v35, v36, v37, v38, v39, v40, v62, v63, v64, v65, v41);
              _os_log_error_impl(&dword_1BEB18000, v32, OS_LOG_TYPE_ERROR, "could not add icon to list -> icon=%@ list=%@", v53, 0x16u);
            }
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v26);
  }

  v54 = [v19 directlyContainedIconsPassingTest:&__block_literal_global_16];
  if ([v54 count])
  {
    if ([v19 allowsFixedIconLocations])
    {
      v55 = [OUTLINED_FUNCTION_9_0() gridCellInfoWithOptions:?];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v56 = v54;
      v57 = [v56 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v68;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v68 != v59)
            {
              objc_enumerationMutation(v56);
            }

            [v55 setIconIndex:0x7FFFFFFFFFFFFFFFLL forGridCellIndex:{objc_msgSend(v19, "gridCellIndexForIcon:gridCellInfo:", *(*(&v67 + 1) + 8 * j), v55)}];
          }

          v58 = [v56 countByEnumeratingWithState:&v67 objects:v75 count:16];
        }

        while (v58);
      }

      [v19 addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo:v55];
    }

    [v19 removeIcons:v54 options:0];
  }

  [v19 markIconStateClean];

  return v19;
}

- (uint64_t)applyProperties:(void *)a1 asDefaultPropertiesToFolder:.cold.2(void *a1)
{
  [a1 setGridSizeClassDomain:0];
  [a1 setListsAllowRotatedLayout:0];
  [OUTLINED_FUNCTION_10_0() setListWithNonDefaultSizedIconsGridSize:?];
  [OUTLINED_FUNCTION_10_0() setListsFixedIconLocationBehavior:?];
  [OUTLINED_FUNCTION_10_0() setListsIconDisplacementBehavior:?];
  v2 = OUTLINED_FUNCTION_10_0();

  return [v2 setListsIconLayoutBehavior:?];
}

- (void)dockListProperties
{
  v3 = [a2 customGridSizeClassDomain];
  v4 = OUTLINED_FUNCTION_4_0(v3);
}

- (void)todayListProperties
{
  OUTLINED_FUNCTION_1_0(a1, a2);

  v5 = [v2 customGridSizeClassDomain];
  OUTLINED_FUNCTION_7_0(v5);
  OUTLINED_FUNCTION_11_0();
  *(v4 + 80) = 1;
}

- (double)ignoredListProperties
{
  OUTLINED_FUNCTION_1_0(a1, a2);

  v5 = [v2 customGridSizeClassDomain];
  OUTLINED_FUNCTION_7_0(v5);
  OUTLINED_FUNCTION_11_0();
  *&result = 1;
  *(v4 + 80) = xmmword_1BEE85780;
  return result;
}

@end