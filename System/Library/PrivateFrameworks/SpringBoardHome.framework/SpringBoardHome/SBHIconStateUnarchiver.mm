@interface SBHIconStateUnarchiver
+ (void)_getFolderDisplayName:(id *)name defaultDisplayName:(id *)displayName uniqueIdentifier:(id *)identifier forRepresentation:(id)representation iconSource:(id)source;
- (BOOL)_canAddIconDataSource:(id)source toIcon:(id)icon withGridSizeClass:(id)class;
- (BOOL)_listsAllowRotatedLayoutForFolderClass:(Class)class;
- (BOOL)shouldLeaveGapForMissingIconWithIdentifier:(id)identifier;
- (Class)_folderClassForFolderType:(id)type context:(id)context;
- (SBHIconGridSize)_listGridSizeForFolderClass:(Class)class;
- (SBHIconGridSize)_listGridSizeForTodayList;
- (SBHIconGridSize)_listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)class;
- (SBHIconStateUnarchiver)initWithArchive:(id)archive;
- (SBHIconStateUnarchiver)initWithArchive:(id)archive iconModel:(id)model;
- (double)ignoredListProperties;
- (id)_allowedGridSizeClassesForDock;
- (id)_allowedGridSizeClassesForFolderClass:(Class)class;
- (id)_allowedGridSizeClassesForTodayList;
- (id)_applicationIconFromRepresentation:(id)representation context:(id)context;
- (id)_batteryElementWithIdentifier:(id)identifier;
- (id)_customIconElementFromRepresentation:(id)representation context:(id)context;
- (id)_fileStackIconFromRepresentation:(id)representation context:(id)context;
- (id)_folderFromRepresentation:(id)representation withContext:(id)context;
- (id)_gridSizeClassSizes;
- (id)_iconFromRepresentation:(id)representation withContext:(id)context;
- (id)_listFromRepresentation:(id)representation properties:(id)properties identifier:(id)identifier context:(id)context overflow:(id)overflow;
- (id)_listRotatedLayoutClusterGridSizeClass;
- (id)_listWithIcons:(id)icons properties:(id)properties identifier:(id)identifier folder:(id)folder overflow:(id)overflow;
- (id)_newFolderIconForFolder:(id)folder;
- (id)_nodeFromRepresentation:(id)representation context:(id)context;
- (id)_rotatedGridSizeClassSizes;
- (id)_sanitizedFixedIconLocationsFromDictionary:(id)dictionary iconIdentifiers:(id)identifiers;
- (id)_widgetIconFromRepresentation:(id)representation context:(id)context;
- (id)customGridSizeClassDomain;
- (id)dockListProperties;
- (id)dockUtilitiesListProperties;
- (id)effectiveDelegate;
- (id)effectiveGridSizeClassDomain;
- (id)gridSizeClassForString:(id)string;
- (id)ignoredListProperties;
- (id)propertiesForFolderClass:(Class)class;
- (id)supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier;
- (id)todayListProperties;
- (id)unarchive;
- (int64_t)_listsFixedIconLocationBehaviorForFolderClass:(Class)class;
- (int64_t)_listsIconDisplacementBehaviorForFolderClass:(Class)class;
- (int64_t)_suggestionSourceFromRepresentation:(id)representation;
- (unint64_t)_listsIconLayoutBehaviorForFolderClass:(Class)class;
- (unint64_t)_maxIconCountForDock;
- (unint64_t)_maxIconCountForDockUtilities;
- (unint64_t)_maxListCountForFolders;
- (void)_getFolderDisplayName:(id *)name defaultDisplayName:(id *)displayName uniqueIdentifier:(id *)identifier forRepresentation:(id)representation;
- (void)applyProperties:(id)properties asDefaultPropertiesToFolder:(id)folder;
- (void)dockListProperties;
- (void)todayListProperties;
@end

@implementation SBHIconStateUnarchiver

- (SBHIconStateUnarchiver)initWithArchive:(id)archive
{
  archiveCopy = archive;
  v9.receiver = self;
  v9.super_class = SBHIconStateUnarchiver;
  v6 = [(SBHIconStateUnarchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archive, archive);
    v7->_removesEmptyFolders = 1;
  }

  return v7;
}

- (SBHIconStateUnarchiver)initWithArchive:(id)archive iconModel:(id)model
{
  modelCopy = model;
  v8 = [(SBHIconStateUnarchiver *)self initWithArchive:archive];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_iconModel, model);
    objc_storeStrong(&v9->_iconSource, model);
  }

  return v9;
}

- (id)effectiveDelegate
{
  delegate = [(SBHIconStateUnarchiver *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    iconModel = delegate;
  }

  else
  {
    iconModel = [(SBHIconStateUnarchiver *)self iconModel];
  }

  v6 = iconModel;

  return v6;
}

- (id)unarchive
{
  v3 = objc_alloc_init(SBIconStateUnarchiveResult);
  archive = [(SBHIconStateUnarchiver *)self archive];
  iconModel = [(SBHIconStateUnarchiver *)self iconModel];
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [archive objectForKeyedSubscript:@"metadata"];
    [(SBIconStateUnarchiveResult *)v3 _setMetadata:v7];

    delegate = [iconModel delegate];
    if (objc_opt_respondsToSelector())
    {
      metadata = [(SBIconStateUnarchiveResult *)v3 metadata];
      [delegate willUnarchiveIconModel:iconModel withMetadata:metadata];
    }
  }

  v10 = [(SBHIconStateUnarchiver *)self _nodeFromRepresentation:archive context:v3];
  [(SBIconStateUnarchiveResult *)v3 setRootNode:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBIconStateUnarchiveResult *)v3 _setRootFolder:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    customGridSizeClassDomain = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
    [v10 setGridSizeClassDomain:customGridSizeClassDomain];
  }

  objc_autoreleasePoolPop(v6);

  return v3;
}

- (id)_nodeFromRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [representationCopy objectForKeyedSubscript:@"widgetVersion"];
    self->_postNewsWidgetMigration = [v8 unsignedIntegerValue] != 0;

    v9 = [(SBHIconStateUnarchiver *)self _folderFromRepresentation:representationCopy withContext:contextCopy];
LABEL_3:
    v10 = v9;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _currentFolder = [contextCopy _currentFolder];
    v12 = objc_opt_class();

    v13 = [(SBHIconStateUnarchiver *)self propertiesForFolderClass:v12];
    v10 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:representationCopy properties:v13 identifier:0 context:contextCopy overflow:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(SBHIconStateUnarchiver *)self _iconFromRepresentation:representationCopy withContext:contextCopy];
      goto LABEL_3;
    }

    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _nodeFromRepresentation:context:];
    }

    [contextCopy _noteRepresentationIsCorrupted];
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)_newFolderIconForFolder:(id)folder
{
  if (!folder)
  {
    return 0;
  }

  folderCopy = folder;
  v4 = [[SBFolderIcon alloc] initWithFolder:folderCopy];

  return v4;
}

- (id)_iconFromRepresentation:(id)representation withContext:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  iconSource = [(SBHIconStateUnarchiver *)self iconSource];
  iconModel = [(SBHIconStateUnarchiver *)self iconModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = representationCopy;
    v11 = v10;
    if (iconModel)
    {
      v12 = [objc_opt_class() migratedIdentifierForLeafIdentifier:v10];
    }

    else
    {
      v12 = v10;
    }

    effectiveDelegate = v12;
    if (([v12 isEqualToString:v11] & 1) == 0)
    {
      v17 = SBLogIcon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v29 = 138412546;
        v30 = v11;
        v31 = 2112;
        v32 = effectiveDelegate;
        _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_INFO, "Migrated identifier for %@ to %@", &v29, 0x16u);
      }

      [contextCopy _noteSignificantDeviation];
    }

    v18 = [iconSource leafIconForIdentifier:effectiveDelegate];
    v19 = v18;
    if (iconModel && v18)
    {
      if (([iconModel isIconVisible:v18] & 1) == 0)
      {

LABEL_22:
        v20 = SBLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 138412290;
          v30 = v11;
          _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "could not find icon for representation -> %@", &v29, 0xCu);
        }

        if ([(SBHIconStateUnarchiver *)self shouldLeaveGapForMissingIconWithIdentifier:effectiveDelegate])
        {
          v19 = [(SBLeafIcon *)[SBHIconStateUnarchivingSlugIcon alloc] initWithLeafIdentifier:effectiveDelegate applicationBundleID:0];
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

  v11 = [representationCopy objectForKey:@"iconType"];
  if (![v11 isEqual:@"custom"])
  {
    if ([v11 isEqual:@"app"])
    {
      v13 = [(SBHIconStateUnarchiver *)self _applicationIconFromRepresentation:representationCopy context:contextCopy];
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
      v13 = [(SBHIconStateUnarchiver *)self _fileStackIconFromRepresentation:representationCopy context:contextCopy];
      goto LABEL_35;
    }

    if (v11)
    {
      goto LABEL_37;
    }

    effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
    v25 = [representationCopy objectForKey:@"iconLists"];
    if (v25)
    {
    }

    else if (objc_opt_respondsToSelector())
    {
      v19 = [effectiveDelegate iconStateUnarchiver:self iconForRepresentation:representationCopy];
      if (v19)
      {
        goto LABEL_32;
      }
    }

    [contextCopy _noteEnteredNode];
    v26 = [(SBHIconStateUnarchiver *)self _folderFromRepresentation:representationCopy withContext:contextCopy];
    v27 = v26;
    if (!v26 || [v26 isEmpty] && -[SBHIconStateUnarchiver removesEmptyFolders](self, "removesEmptyFolders") && objc_msgSend(v27, "shouldRemoveWhenEmpty"))
    {
      [contextCopy _noteExitedNode];
    }

    else
    {
      v19 = [(SBHIconStateUnarchiver *)self _newFolderIconForFolder:v27];
      [contextCopy _noteExitedNode];
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

  v13 = [(SBHIconStateUnarchiver *)self _widgetIconFromRepresentation:representationCopy context:contextCopy];
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

  [contextCopy _noteSignificantDeviation];
LABEL_37:
  v19 = 0;
LABEL_38:

  if (v19)
  {
    nodeIdentifier = [(SBLeafIcon *)v19 nodeIdentifier];
    if ([contextCopy _isNodeIdentifierAlreadyUnarchived:nodeIdentifier])
    {
      v22 = SBLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
      }
    }

    else
    {
      if (!iconModel || [iconModel isIconVisible:v19])
      {
        [contextCopy _noteNodeIdentifierWasUnarchived:nodeIdentifier];
LABEL_51:

        goto LABEL_52;
      }

      v22 = SBLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
      }
    }

    [contextCopy _noteSignificantDeviation];
    v19 = 0;
    goto LABEL_51;
  }

LABEL_42:
  v23 = SBLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v29 = 138412290;
    v30 = representationCopy;
    _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_INFO, "could not find icon for representation=%@", &v29, 0xCu);
  }

  [contextCopy _noteSignificantDeviation];
  v19 = 0;
LABEL_52:

  return v19;
}

- (Class)_folderClassForFolderType:(id)type context:(id)context
{
  contextCopy = context;
  if (([type isEqualToString:@"folder"] & 1) == 0)
  {
    [contextCopy _currentParseDepth];
  }

  v6 = objc_opt_class();

  return v6;
}

+ (void)_getFolderDisplayName:(id *)name defaultDisplayName:(id *)displayName uniqueIdentifier:(id *)identifier forRepresentation:(id)representation iconSource:(id)source
{
  representationCopy = representation;
  sourceCopy = source;
  v12 = [representationCopy objectForKey:@"defaultDisplayName"];
  if ([v12 isEqualToString:&stru_1F3D472A8])
  {

    goto LABEL_6;
  }

  if (!v12)
  {
LABEL_6:
    localizedDefaultFolderName = [representationCopy objectForKey:@"displayName"];
    v12 = 0;
    if (localizedDefaultFolderName)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  localizedDefaultFolderName = [sourceCopy localizedFolderNameForDefaultDisplayName:v12];
  if (localizedDefaultFolderName)
  {
    goto LABEL_8;
  }

LABEL_7:
  localizedDefaultFolderName = [sourceCopy localizedDefaultFolderName];
  unlocalizedDefaultFolderName = [sourceCopy unlocalizedDefaultFolderName];

  v12 = unlocalizedDefaultFolderName;
LABEL_8:
  if (name)
  {
    v15 = localizedDefaultFolderName;
    *name = localizedDefaultFolderName;
  }

  if (displayName)
  {
    v16 = v12;
    *displayName = v12;
  }

  if (identifier)
  {
    v17 = [representationCopy objectForKey:@"uniqueIdentifier"];
    v18 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      v17 = 0;
    }

    v20 = v17;
    *identifier = v17;
  }
}

- (void)_getFolderDisplayName:(id *)name defaultDisplayName:(id *)displayName uniqueIdentifier:(id *)identifier forRepresentation:(id)representation
{
  representationCopy = representation;
  v11 = objc_opt_class();
  iconModel = [(SBHIconStateUnarchiver *)self iconModel];
  [v11 _getFolderDisplayName:name defaultDisplayName:displayName uniqueIdentifier:identifier forRepresentation:representationCopy iconSource:iconModel];
}

- (SBHIconGridSize)_listGridSizeForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listGridSizeForFolderClass:class];
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

- (SBHIconGridSize)_listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listWithNonDefaultSizedIconsGridSizeForFolderClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBHIconGridSize)_listGridSizeForTodayList
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = ([effectiveDelegate maxColumnCountForTodayListForIconStateUnarchiver:self] | 0xFFFF0000);
  }

  else
  {
    v4 = -65532;
  }

  return v4;
}

- (unint64_t)_maxListCountForFolders
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate maxListCountForFoldersForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (unint64_t)_maxIconCountForDock
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate maxIconCountForDockForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (unint64_t)_maxIconCountForDockUtilities
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate maxIconCountForDockUtilitiesForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)_gridSizeClassSizes
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate gridSizeClassSizesForIconStateUnarchiver:self];
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
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate rotatedGridSizeClassSizesForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_listRotatedLayoutClusterGridSizeClass
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate listRotatedLayoutClusterGridSizeClassForIconStateUnarchiver:self];
  }

  else
  {
    v4 = @"SBHIconGridSizeClassDefault";
  }

  v5 = v4;

  return v5;
}

- (BOOL)_listsAllowRotatedLayoutForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listsAllowRotatedLayoutForFolderClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_allowedGridSizeClassesForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [effectiveDelegate iconStateUnarchiver:self allowedGridSizeClassesForFolderClass:class];
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
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [effectiveDelegate allowedGridSizeClassesForDockForIconStateUnarchiver:self];
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
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate allowedGridSizeClassesForTodayListForIconStateUnarchiver:self];
  }

  else
  {
    v5 = [SBHIconGridSizeClassSet alloc];
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassSmall", @"SBHIconGridSizeClassMedium", @"SBHIconGridSizeClassLarge", 0}];
    v4 = [(SBHIconGridSizeClassSet *)v5 initWithGridSizeClasses:v6];
  }

  return v4;
}

- (int64_t)_listsFixedIconLocationBehaviorForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listsFixedIconLocationBehaviorForFolderClass:class];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)_listsIconDisplacementBehaviorForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listsIconDisplacementBehaviorForFolderClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_listsIconLayoutBehaviorForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listsIconLayoutBehaviorForFolderClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)customGridSizeClassDomain
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [effectiveDelegate iconGridSizeClassDomainForIconStateUnarchiver:self];
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
  customGridSizeClassDomain = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
  if (!customGridSizeClassDomain)
  {
    customGridSizeClassDomain = +[SBHIconGridSizeClassDomain globalDomain];
  }

  return customGridSizeClassDomain;
}

- (BOOL)shouldLeaveGapForMissingIconWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(SBHIconStateUnarchiver *)self leavesGapsForMissingIcons])
  {
    effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
    v6 = (objc_opt_respondsToSelector() & 1) == 0 || [effectiveDelegate iconStateUnarchiver:self shouldLeaveGapForMissingIconWithIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyProperties:(id)properties asDefaultPropertiesToFolder:(id)folder
{
  propertiesCopy = properties;
  folderCopy = folder;
  v6 = folderCopy;
  if (propertiesCopy)
  {
    [folderCopy setListRotatedLayoutClusterGridSizeClass:*(propertiesCopy + 7)];
    v7 = *(propertiesCopy + 5);
  }

  else
  {
    [SBHIconStateUnarchiver applyProperties:folderCopy asDefaultPropertiesToFolder:0];
    v7 = 0;
  }

  [v6 setListAllowedGridSizeClasses:v7];
  if (propertiesCopy)
  {
    [v6 setGridSizeClassDomain:*(propertiesCopy + 6)];
    [v6 setListsAllowRotatedLayout:propertiesCopy[8]];
    [v6 setListWithNonDefaultSizedIconsGridSize:*(propertiesCopy + 14)];
    [v6 setListsFixedIconLocationBehavior:*(propertiesCopy + 8)];
    [v6 setListsIconDisplacementBehavior:*(propertiesCopy + 9)];
    [v6 setListsIconLayoutBehavior:*(propertiesCopy + 10)];
    v8 = *(propertiesCopy + 4);
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
  _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = _gridSizeClassSizes;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, _gridSizeClassSizes, 24);

    v3->_listGridSize = ([(SBHIconStateUnarchiver *)self _maxIconCountForDock]| 0x10000);
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, _listRotatedLayoutClusterGridSizeClass, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _maxIconCountForDock];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  _allowedGridSizeClassesForDock = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForDock];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 dockListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)_allowedGridSizeClassesForDock dockListProperties];
  }

  return v3;
}

- (id)dockUtilitiesListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = _gridSizeClassSizes;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, _gridSizeClassSizes, 24);

    v3->_listGridSize = ([(SBHIconStateUnarchiver *)self _maxIconCountForDockUtilities]| 0x10000);
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, _listRotatedLayoutClusterGridSizeClass, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _maxIconCountForDockUtilities];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  _allowedGridSizeClassesForDock = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForDock];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 dockListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)_allowedGridSizeClassesForDock dockListProperties];
  }

  return v3;
}

- (id)todayListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = _gridSizeClassSizes;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, _gridSizeClassSizes, 24);

    v3->_listGridSize = [(SBHIconStateUnarchiver *)self _listGridSizeForTodayList];
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, _listRotatedLayoutClusterGridSizeClass, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _listGridSizeForTodayList];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  _allowedGridSizeClassesForTodayList = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForTodayList];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 todayListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)_allowedGridSizeClassesForTodayList dockListProperties];
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

- (id)_folderFromRepresentation:(id)representation withContext:(id)context
{
  v91 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy objectForKey:@"listType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SBHIconStateUnarchiver *)self _folderClassForFolderType:v9 context:contextCopy];
  if (v10)
  {
    v11 = v10;
    v76 = contextCopy;
    v12 = v8;
    v13 = [(SBHIconStateUnarchiver *)self _listGridSizeForFolderClass:v10];
    _maxListCountForFolders = [(SBHIconStateUnarchiver *)self _maxListCountForFolders];
    _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v16 = representationCopy;
    [(SBHIconStateUnarchiver *)self _getFolderDisplayName:&v88 defaultDisplayName:&v87 uniqueIdentifier:&v86 forRepresentation:representationCopy];
    v17 = v88;
    v18 = v87;
    v19 = v86;
    v20 = [v11 alloc];
    v72 = v19;
    v73 = v17;
    v21 = _maxListCountForFolders;
    v22 = v18;
    v74 = _gridSizeClassSizes;
    v23 = [v20 initWithUniqueIdentifier:v19 displayName:v17 maxListCount:v21 listGridSize:*&v13 iconGridSizeClassSizes:_gridSizeClassSizes];
    v24 = v23;
    if (v18)
    {
      [v23 setDefaultDisplayName:v18];
    }

    v75 = [(SBHIconStateUnarchiver *)self propertiesForFolderClass:v11];
    [SBHIconStateUnarchiver applyProperties:"applyProperties:asDefaultPropertiesToFolder:" asDefaultPropertiesToFolder:?];
    v71 = [v24 startCoalescingContentChangesForReason:@"folderFromRepresentation"];
    [v76 _pushFolder:v24];
    representationCopy = v16;
    v25 = [v16 objectForKey:@"iconLists"];
    v8 = v12;
    if (v25)
    {
      v69 = v22;
      v26 = [representationCopy objectForKey:@"listUniqueIdentifiers"];
      v27 = [representationCopy objectForKey:@"listMetadata"];
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
        selfCopy = self;
        v83 = v75;
        contextCopy = v76;
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
        contextCopy = v76;
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

      contextCopy = v76;
      [v76 _noteRepresentationIsCorrupted];
    }

    v38 = objc_opt_self();
    v39 = objc_opt_isKindOfClass();

    if (v39)
    {
      v40 = v24;
      v41 = [representationCopy objectForKey:@"buttonBar"];
      v67 = v41;
      if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v44 = SBLogCommon();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [contextCopy _noteRepresentationIsCorrupted];
      }

      else
      {
        dockListProperties = [(SBHIconStateUnarchiver *)self dockListProperties];
        v43 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v41 properties:dockListProperties identifier:0 context:contextCopy overflow:0];
        [v40 _setDock:v43];
      }

      v77 = v40;
      effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [effectiveDelegate isDockUtilitiesSupportedForIconStateUnarchiver:self])
      {
        v45 = [representationCopy objectForKey:@"dockUtilities"];
        if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v66 = objc_alloc_init(MEMORY[0x1E695DEC8]);
          [(SBHIconStateUnarchiver *)self dockListProperties];
          v49 = v47 = v45;
          dockUtilitiesListProperties = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v66 properties:v49 identifier:0 context:contextCopy overflow:0];

          [v77 _setDockUtilities:dockUtilitiesListProperties];
        }

        else
        {
          dockUtilitiesListProperties = [(SBHIconStateUnarchiver *)self dockUtilitiesListProperties];
          [(SBHIconStateUnarchiver *)self _listFromRepresentation:v45 properties:dockUtilitiesListProperties identifier:0 context:contextCopy overflow:0];
          v48 = v47 = v45;
          [v77 _setDockUtilities:v48];
        }
      }

      v50 = [representationCopy objectForKey:@"today"];
      v68 = v25;
      if (v50 && (objc_opt_self(), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_opt_isKindOfClass(), v51, (v52 & 1) == 0))
      {
        v55 = SBLogCommon();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [contextCopy _noteRepresentationIsCorrupted];
      }

      else
      {
        todayListProperties = [(SBHIconStateUnarchiver *)self todayListProperties];
        v54 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v50 properties:todayListProperties identifier:0 context:contextCopy overflow:0];
        [v77 _setTodayList:v54];
      }

      v56 = [representationCopy objectForKey:@"ignored"];
      if (v56 && (objc_opt_self(), v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_opt_isKindOfClass(), v57, (v58 & 1) == 0))
      {
        v62 = SBLogCommon();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [contextCopy _noteRepresentationIsCorrupted];
        v25 = v68;
        v61 = v77;
      }

      else
      {
        ignoredListProperties = [(SBHIconStateUnarchiver *)self ignoredListProperties];
        v60 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v56 properties:ignoredListProperties identifier:0 context:contextCopy overflow:0];
        [v77 _setIgnoredList:v60];

        v61 = v77;
        v25 = v68;
      }
    }

    [v24 compactLists];
    if (![v24 visibleListCount])
    {
      firstList = [v24 firstList];
      [firstList setHidden:0];
    }

    _popFolder = [contextCopy _popFolder];
    [v71 invalidate];
    [v24 markIconStateClean];
  }

  else
  {
    v35 = SBLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v90 = representationCopy;
      _os_log_impl(&dword_1BEB18000, v35, OS_LOG_TYPE_INFO, "could not construct folder for representation=%@", buf, 0xCu);
    }

    [contextCopy _noteSignificantDeviation];
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

- (id)_listFromRepresentation:(id)representation properties:(id)properties identifier:(id)identifier context:(id)context overflow:(id)overflow
{
  v37 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  propertiesCopy = properties;
  identifierCopy = identifier;
  contextCopy = context;
  overflowCopy = overflow;
  [contextCopy _noteEnteredNode];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(representationCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = representationCopy;
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
        v22 = [(SBHIconStateUnarchiver *)self _iconFromRepresentation:v20 withContext:contextCopy];
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

          [contextCopy _noteSignificantDeviation];
        }

        objc_autoreleasePoolPop(v21);
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v17);
  }

  _currentFolder = [contextCopy _currentFolder];
  v25 = [(SBHIconStateUnarchiver *)self _listWithIcons:v14 properties:propertiesCopy identifier:identifierCopy folder:_currentFolder overflow:overflowCopy];
  if ([overflowCopy count])
  {
    [contextCopy _noteSignificantDeviation];
  }

  [contextCopy _noteExitedNode];

  return v25;
}

uint64_t __79__SBHIconStateUnarchiver__listWithIcons_properties_identifier_folder_overflow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_applicationIconFromRepresentation:(id)representation context:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = [representationCopy objectForKey:@"displayIdentifier"];
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [representationCopy objectForKey:@"bundleIdentifier"];
    v10 = objc_opt_self();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      iconSource = [(SBHIconStateUnarchiver *)self iconSource];
      v13 = [iconSource applicationIconForBundleIdentifier:v9];
      if (v13)
      {
        iconModel = [(SBHIconStateUnarchiver *)self iconModel];
        v15 = iconModel;
        if (iconModel)
        {
          v16 = [iconModel iconClassForApplicationWithBundleIdentifier:v9];
        }

        else
        {
          v16 = objc_opt_self();
        }

        v17 = [[v16 alloc] initWithLeafIdentifier:v6 applicationBundleID:v9];
        iconDataSources = [v13 iconDataSources];
        [(SBLeafIcon *)v17 addIconDataSources:iconDataSources];
      }

      else
      {
        v18 = SBLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = representationCopy;
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

- (id)_widgetIconFromRepresentation:(id)representation context:(id)context
{
  v83 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy objectForKey:@"displayIdentifier"];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v8 = uUIDString;
  }

  v13 = [[SBWidgetIcon alloc] initWithLeafIdentifier:v8 applicationBundleID:0];
  v14 = [representationCopy objectForKey:@"gridSize"];
  v15 = objc_opt_self();
  v16 = objc_opt_isKindOfClass();

  v17 = 0;
  if (v16)
  {
    v17 = [(SBHIconStateUnarchiver *)self gridSizeClassForString:v14];
    v18 = [representationCopy objectForKey:@"bundleIdentifier"];
    if ([v18 isEqualToString:@"com.apple.news.widget"])
    {
      v19 = [representationCopy objectForKey:@"widgetIdentifier"];
      v72 = v13;
      v20 = representationCopy;
      v21 = v14;
      selfCopy = self;
      v23 = v17;
      v24 = [v19 isEqualToString:@"today"];

      v25 = v24 ^ 1;
      v17 = v23;
      self = selfCopy;
      v14 = v21;
      representationCopy = v20;
      v13 = v72;
    }

    else
    {
      v25 = 1;
    }

    postNewsWidgetMigration = [(SBHIconStateUnarchiver *)self postNewsWidgetMigration];
    if (v17 == @"SBHIconGridSizeClassExtraLarge")
    {
      if ((v25 | postNewsWidgetMigration))
      {
        goto LABEL_10;
      }
    }

    else if (v25 & 1 | (([(__CFString *)v17 isEqualToString:?]& 1) == 0) | postNewsWidgetMigration)
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
  selfCopy2 = self;
  v28 = [(SBHIconStateUnarchiver *)self _customIconElementFromRepresentation:representationCopy context:contextCopy];
  v67 = v14;
  v68 = v28;
  if (!v28)
  {
    v71 = v17;
    v33 = [representationCopy objectForKey:@"elements"];
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
    uniqueIdentifier2 = v33;
    v36 = [uniqueIdentifier2 countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (!v36)
    {

      v17 = v71;
      goto LABEL_56;
    }

    v37 = v36;
    v73 = v13;
    v38 = *v75;
    v70 = contextCopy;
LABEL_20:
    v39 = 0;
    while (1)
    {
      if (*v75 != v38)
      {
        objc_enumerationMutation(uniqueIdentifier2);
      }

      v40 = *(*(&v74 + 1) + 8 * v39);
      v41 = objc_opt_self();
      v42 = objc_opt_isKindOfClass();

      if ((v42 & 1) == 0)
      {
        goto LABEL_43;
      }

      v43 = [(SBHIconStateUnarchiver *)self _customIconElementFromRepresentation:v40 context:contextCopy];
      if (v43)
      {
        break;
      }

LABEL_42:

LABEL_43:
      if (v37 == ++v39)
      {
        v49 = [uniqueIdentifier2 countByEnumeratingWithState:&v74 objects:v82 count:16];
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
      uniqueIdentifier = [v43 uniqueIdentifier];

      if (uniqueIdentifier)
      {
        if ([contextCopy _isWidgetUniqueIdentifierAlreadyUnarchived:uniqueIdentifier])
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
          contextCopy = v70;
          if ((v47 & 1) == 0)
          {
            [v70 _noteWidgetUniqueIdentifierWasUnarchived:uniqueIdentifier];
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

        contextCopy = v70;
LABEL_39:
        [contextCopy _noteSignificantDeviation];
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {

      uniqueIdentifier = 0;
    }

    v47 = 1;
    goto LABEL_33;
  }

  v29 = v28;
  v66 = v8;
  v30 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    uniqueIdentifier2 = [v29 uniqueIdentifier];

    if (uniqueIdentifier2)
    {
      if ([contextCopy _isWidgetUniqueIdentifierAlreadyUnarchived:uniqueIdentifier2])
      {
        v32 = SBLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _widgetIconFromRepresentation:context:];
        }

LABEL_55:

        [contextCopy _noteSignificantDeviation];
        goto LABEL_56;
      }

      v50 = 0;
      goto LABEL_50;
    }
  }

  else
  {

    uniqueIdentifier2 = 0;
  }

  v50 = 1;
LABEL_50:
  if (![(SBHIconStateUnarchiver *)selfCopy2 _canAddIconDataSource:v29 toIcon:v13 withGridSizeClass:v17])
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
    [contextCopy _noteWidgetUniqueIdentifierWasUnarchived:uniqueIdentifier2];
  }

LABEL_56:
  self = selfCopy2;
LABEL_57:

  v51 = [representationCopy objectForKey:@"userSelectedElementIdentifier"];
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

  v56 = [representationCopy objectForKey:@"allowsSuggestions"];
  if (objc_opt_respondsToSelector())
  {
    -[SBWidgetIcon setAllowsSuggestions:](v13, "setAllowsSuggestions:", [v56 BOOLValue]);
  }

  v57 = [representationCopy objectForKey:@"allowsExternalSuggestions"];
  if (objc_opt_respondsToSelector())
  {
    -[SBWidgetIcon setAllowsExternalSuggestions:](v13, "setAllowsExternalSuggestions:", [v57 BOOLValue]);
  }

  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v59 = [effectiveDelegate iconStateUnarchiver:self didUnarchiveWidgetIcon:v13];
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

- (id)_fileStackIconFromRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  initWithUniqueLeafIdentifier = [[SBHFileStackIcon alloc] initWithUniqueLeafIdentifier];
  v7 = [representationCopy objectForKey:@"fileStackIconSortOrderIdentifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [representationCopy objectForKey:@"fileStackIconSortOrderIdentifier"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E699A420]) initWithSortOrderIdentifier:v9];
  [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setSortOrder:v10];
  v11 = [representationCopy objectForKey:@"fileStackIconSortOrderAscending"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [representationCopy objectForKey:@"fileStackIconSortOrderAscending"];
    bOOLValue = [v13 BOOLValue];

    [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setCurrentSortOrderAscending:bOOLValue];
  }

  v15 = [representationCopy objectForKey:@"fileStackIconDisplayModeIdentifier"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [representationCopy objectForKey:@"fileStackIconDisplayModeIdentifier"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_alloc(MEMORY[0x1E699A410]) initWithDisplayModeIdentifier:v17];
  [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setDisplayMode:v18];
  v19 = [representationCopy objectForKey:@"fileStackIconDataSourceUniqueIdentifier"];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    v21 = [representationCopy objectForKey:@"fileStackIconDataSourceUniqueIdentifier"];
    v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];

    if (v22)
    {
      [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setDataSourceUniqueIdentifier:v22];
    }
  }

  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v24 = [effectiveDelegate iconStateUnarchiver:self didUnarchiveFileStackIcon:initWithUniqueLeafIdentifier];

    initWithUniqueLeafIdentifier = v24;
  }

  return initWithUniqueLeafIdentifier;
}

- (BOOL)_canAddIconDataSource:(id)source toIcon:(id)icon withGridSizeClass:(id)class
{
  sourceCopy = source;
  iconCopy = icon;
  classCopy = class;
  v10 = classCopy;
  if (classCopy)
  {
    gridSizeClass = classCopy;
  }

  else
  {
    gridSizeClass = [iconCopy gridSizeClass];
  }

  v12 = gridSizeClass;
  if (objc_opt_respondsToSelector())
  {
    [sourceCopy supportedGridSizeClassesForIcon:iconCopy];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
  }
  v13 = ;
  v14 = [v13 containsGridSizeClass:v12];

  return v14;
}

- (id)_customIconElementFromRepresentation:(id)representation context:(id)context
{
  v49 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy objectForKey:@"uniqueIdentifier"];
  v9 = [representationCopy objectForKey:@"elementType"];
  v10 = [representationCopy objectForKey:@"widgetSuggestionSource"];
  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v8 = uUIDString;
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
    v17 = [representationCopy objectForKey:@"widgetIdentifier"];
    v18 = objc_opt_self();
    v19 = objc_opt_isKindOfClass();

    selfCopy = self;
    if ((v19 & 1) == 0)
    {

      v17 = 0;
    }

    v20 = [representationCopy objectForKey:@"bundleIdentifier"];
    v21 = objc_opt_self();
    v22 = objc_opt_isKindOfClass();

    v44 = contextCopy;
    if ((v22 & 1) == 0)
    {

      v20 = 0;
    }

    v23 = [representationCopy objectForKey:@"containerBundleIdentifier"];
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
        v26 = [(SBHIconStateUnarchiver *)selfCopy _batteryElementWithIdentifier:v8];
      }

      else
      {
        v28 = [(SBHIconStateUnarchiver *)selfCopy supportedGridSizeClassesForWidgetWithKind:v17 extensionBundleIdentifier:v20 containerBundleIdentifier:v23];
        v26 = [[SBHWidget alloc] initWithUniqueIdentifier:v8 kind:v17 extensionBundleIdentifier:v20 containerBundleIdentifier:v23 supportedGridSizeClasses:v28];
        v29 = SBLogWidgets();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          extensionBundleIdentifier = [(SBHWidget *)v26 extensionBundleIdentifier];
          v42 = v28;
          [(SBHWidget *)v26 uniqueIdentifier];
          *buf = 138543618;
          v46 = extensionBundleIdentifier;
          v48 = v47 = 2114;
          v30 = v48;
          _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created from arhive.", buf, 0x16u);

          v28 = v42;
        }
      }
    }

    self = selfCopy;
    contextCopy = v44;
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

  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v26 = [effectiveDelegate iconStateUnarchiver:self iconDataSourceForRepresentation:representationCopy];
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

    [contextCopy _noteSignificantDeviation];
  }

  if (v10)
  {
    goto LABEL_34;
  }

LABEL_37:

  return v26;
}

- (id)_batteryElementWithIdentifier:(id)identifier
{
  v4 = *MEMORY[0x1E698E878];
  v5 = *MEMORY[0x1E698E870];
  v6 = *MEMORY[0x1E698E868];
  identifierCopy = identifier;
  v8 = [(SBHIconStateUnarchiver *)self supportedGridSizeClassesForWidgetWithKind:v4 extensionBundleIdentifier:v5 containerBundleIdentifier:v6];
  v9 = [[SBHWidget alloc] initWithUniqueIdentifier:identifierCopy kind:v4 extensionBundleIdentifier:v5 containerBundleIdentifier:v6 supportedGridSizeClasses:v8];

  return v9;
}

- (int64_t)_suggestionSourceFromRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy isEqualToString:@"onboarding"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [representationCopy isEqualToString:@"NPlus1"];
  }

  return v4;
}

- (id)_sanitizedFixedIconLocationsFromDictionary:(id)dictionary iconIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__SBHIconStateUnarchiver__sanitizedFixedIconLocationsFromDictionary_iconIdentifiers___block_invoke;
  v14[3] = &unk_1E808A6E8;
  v15 = identifiersCopy;
  v9 = v8;
  v16 = v9;
  v10 = identifiersCopy;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v14];

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

- (id)supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier
{
  kindCopy = kind;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [effectiveDelegate iconStateUnarchiver:self supportedGridSizeClassesForWidgetWithKind:kindCopy extensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForAllNonDefaultGridSizeClasses];
  }
  v12 = ;

  return v12;
}

- (id)gridSizeClassForString:(id)string
{
  stringCopy = string;
  effectiveGridSizeClassDomain = [(SBHIconStateUnarchiver *)self effectiveGridSizeClassDomain];
  v6 = [effectiveGridSizeClassDomain gridSizeClassForArchiveValue:stringCopy];

  if (!v6)
  {
    v6 = @"SBHIconGridSizeClassSmall";
  }

  return v6;
}

- (id)propertiesForFolderClass:(Class)class
{
  v4 = objc_alloc_init(SBHIconStateArchiverListProperties);
  _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v7 = _gridSizeClassSizes;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v6, _gridSizeClassSizes, 24);

    v4->_listGridSize = [OUTLINED_FUNCTION_3_0() _listGridSizeForFolderClass:?];
    v4->_listWithNonDefaultSizedIconsGridSize = [OUTLINED_FUNCTION_3_0() _listWithNonDefaultSizedIconsGridSizeForFolderClass:?];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v4, v9, _listRotatedLayoutClusterGridSizeClass, 56);
  }

  else
  {

    [OUTLINED_FUNCTION_3_0() _listGridSizeForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listWithNonDefaultSizedIconsGridSizeForFolderClass:?];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  v11 = [OUTLINED_FUNCTION_3_0() _allowedGridSizeClassesForFolderClass:?];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v10, v11, 40);
  }

  customGridSizeClassDomain = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
  [(SBHIconStateArchiverListProperties *)v4 setGridSizeClassDomain:customGridSizeClassDomain];

  v13 = [OUTLINED_FUNCTION_3_0() _listsAllowRotatedLayoutForFolderClass:?];
  if (v4)
  {
    v4->_allowRotatedLayout = v13;
    v4->_fixedIconLocationBehavior = [OUTLINED_FUNCTION_3_0() _listsFixedIconLocationBehaviorForFolderClass:?];
    v4->_iconDisplacementBehavior = [OUTLINED_FUNCTION_3_0() _listsIconDisplacementBehaviorForFolderClass:?];
    v4->_iconLayoutBehavior = [OUTLINED_FUNCTION_3_0() _listsIconLayoutBehaviorForFolderClass:?];
    _rotatedGridSizeClassSizes = [(SBHIconStateUnarchiver *)self _rotatedGridSizeClassSizes];
    objc_setProperty_nonatomic_copy(v4, v15, _rotatedGridSizeClassSizes, 32);
  }

  else
  {
    [OUTLINED_FUNCTION_3_0() _listsFixedIconLocationBehaviorForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listsIconDisplacementBehaviorForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listsIconLayoutBehaviorForFolderClass:?];
    _rotatedGridSizeClassSizes = [(SBHIconStateUnarchiver *)self _rotatedGridSizeClassSizes];
  }

  return v4;
}

- (id)_listWithIcons:(id)icons properties:(id)properties identifier:(id)identifier folder:(id)folder overflow:(id)overflow
{
  v77 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  propertiesCopy = properties;
  identifierCopy = identifier;
  folderCopy = folder;
  overflowCopy = overflow;
  if (propertiesCopy)
  {
    v15 = *(propertiesCopy + 10);
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc([folderCopy listModelClass]);
  if (propertiesCopy)
  {
    v17 = *(propertiesCopy + 3);
  }

  else
  {
    v17 = 0;
  }

  v63 = folderCopy;
  v64 = identifierCopy;
  v18 = [v16 initWithUniqueIdentifier:identifierCopy folder:folderCopy gridSize:v15 gridSizeClassSizes:v17];
  v19 = v18;
  if (propertiesCopy)
  {
    [v18 setAllowedGridSizeClasses:*(propertiesCopy + 5)];
    v20 = *(propertiesCopy + 6);
  }

  else
  {
    [OUTLINED_FUNCTION_9_0() setAllowedGridSizeClasses:?];
    v20 = 0;
  }

  [v19 setGridSizeClassDomain:v20];
  if (propertiesCopy)
  {
    [v19 setAllowsRotatedLayout:propertiesCopy[8]];
    v21 = *(propertiesCopy + 7);
  }

  else
  {
    [v19 setAllowsRotatedLayout:0];
    v21 = 0;
  }

  [v19 setRotatedLayoutClusterGridSizeClass:v21];
  if (propertiesCopy)
  {
    [v19 setFixedIconLocationBehavior:*(propertiesCopy + 8)];
    [v19 setIconLayoutBehavior:*(propertiesCopy + 10)];
    [v19 setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:*(propertiesCopy + 14)];
    v22 = *(propertiesCopy + 4);
  }

  else
  {
    [OUTLINED_FUNCTION_9_0() setFixedIconLocationBehavior:?];
    [OUTLINED_FUNCTION_9_0() setIconLayoutBehavior:?];
    [OUTLINED_FUNCTION_9_0() setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:?];
    v22 = 0;
  }

  [v19 setRotatedIconGridSizeClassSizes:v22];
  v65 = propertiesCopy;
  if (propertiesCopy)
  {
    v23 = *(propertiesCopy + 11);
  }

  else
  {
    v23 = 0;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v24 = iconsCopy;
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
        numberOfIcons = [v19 numberOfIcons];
        if (numberOfIcons >= [v19 maxNumberOfIcons])
        {
          v42 = SBLogCommon();
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
          if (v43)
          {
            OUTLINED_FUNCTION_6_0(v43, v44, v45, v46, v47, v48, v49, v50, v62, v63, v64, v65, v51);
            _os_log_impl(&dword_1BEB18000, v42, OS_LOG_TYPE_DEFAULT, "list is too small to add icon -> icon=%@ list=%@", v52, 0x16u);
          }

          [overflowCopy addObject:v29];
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
  customGridSizeClassDomain = [a2 customGridSizeClassDomain];
  v4 = OUTLINED_FUNCTION_4_0(customGridSizeClassDomain);
}

- (void)todayListProperties
{
  OUTLINED_FUNCTION_1_0(self, a2);

  customGridSizeClassDomain = [v2 customGridSizeClassDomain];
  OUTLINED_FUNCTION_7_0(customGridSizeClassDomain);
  OUTLINED_FUNCTION_11_0();
  *(v4 + 80) = 1;
}

- (double)ignoredListProperties
{
  OUTLINED_FUNCTION_1_0(self, a2);

  customGridSizeClassDomain = [v2 customGridSizeClassDomain];
  OUTLINED_FUNCTION_7_0(customGridSizeClassDomain);
  OUTLINED_FUNCTION_11_0();
  *&result = 1;
  *(v4 + 80) = xmmword_1BEE85780;
  return result;
}

@end