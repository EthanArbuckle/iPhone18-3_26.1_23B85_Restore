@interface SBHIconStateArchiver
+ (BOOL)_iconContainsMultipleRepresentations:(id)representations;
+ (BOOL)_isCustomIconElementBuiltIn:(id)in;
+ (BOOL)_widgetDataSourceIsSuggestion:(id)suggestion;
+ (id)_builtInCustomIconElementTypeForCustomIconElement:(id)element;
+ (id)_folderTypeForFolder:(id)folder;
+ (id)_nodeAtPath:(id)path inNode:(id)node;
+ (id)_pathForNode:(id)node toIdentifier:(id)identifier;
+ (id)archiveRootFolderInModel:(id)model metadata:(id)metadata;
+ (id)folderPathForLeafIdentifier:(id)identifier inArchive:(id)archive iconSource:(id)source;
+ (id)iconStateRepresentationForFolder:(id)folder inModel:(id)model;
+ (id)indexPathForLeafIdentifier:(id)identifier inArchive:(id)archive;
+ (id)leafIdentifiersFromArchive:(id)archive;
+ (id)leafIdentifiersInListAtIndexPath:(id)path inArchive:(id)archive;
+ (id)unarchiveRootFolderFromArchive:(id)archive withIconSource:(id)source;
+ (void)_addLeafNodesForNode:(id)node toSet:(id)set;
- (SBHIconStateArchiver)initWithRootNode:(id)node;
- (SBHIconStateArchiverDelegate)delegate;
- (id)_metadataForList:(id)list;
- (id)_representationForApplicationIcon:(id)icon;
- (id)_representationForCustomIcon:(id)icon;
- (id)_representationForCustomIconElement:(id)element;
- (id)_representationForFileStackIcon:(id)icon;
- (id)_representationForFolder:(id)folder;
- (id)_representationForIcon:(id)icon;
- (id)_representationForList:(id)list;
- (id)_representationForNode:(id)node;
- (id)_representationsForIcon:(id)icon;
- (id)archiveStringForGridSizeClass:(id)class;
- (id)archiveWithError:(id *)error;
- (id)customGridSizeClassDomain;
- (id)effectiveDelegate;
- (id)effectiveGridSizeClassDomain;
- (void)_addValuesForCustomIconElement:(id)element toRepresentation:(id)representation;
@end

@implementation SBHIconStateArchiver

+ (id)archiveRootFolderInModel:(id)model metadata:(id)metadata
{
  metadataCopy = metadata;
  modelCopy = model;
  rootFolder = [modelCopy rootFolder];
  v9 = [[self alloc] initWithRootNode:rootFolder];
  [v9 setIconModel:modelCopy];

  [v9 setMetadata:metadataCopy];
  v10 = [v9 archiveWithError:0];

  return v10;
}

+ (id)unarchiveRootFolderFromArchive:(id)archive withIconSource:(id)source
{
  sourceCopy = source;
  archiveCopy = archive;
  v7 = [[SBHIconStateUnarchiver alloc] initWithArchive:archiveCopy iconModel:sourceCopy];

  unarchive = [(SBHIconStateUnarchiver *)v7 unarchive];

  return unarchive;
}

+ (id)leafIdentifiersFromArchive:(id)archive
{
  archiveCopy = archive;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v6 = objc_autoreleasePoolPush();
  [self _addLeafNodesForNode:archiveCopy toSet:v5];
  objc_autoreleasePoolPop(v6);

  return v5;
}

+ (id)indexPathForLeafIdentifier:(id)identifier inArchive:(id)archive
{
  identifierCopy = identifier;
  archiveCopy = archive;
  v8 = objc_autoreleasePoolPush();
  v9 = [self _pathForNode:archiveCopy toIdentifier:identifierCopy];
  objc_autoreleasePoolPop(v8);

  return v9;
}

+ (id)folderPathForLeafIdentifier:(id)identifier inArchive:(id)archive iconSource:(id)source
{
  v39 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  sourceCopy = source;
  v27 = [self indexPathForLeafIdentifier:identifier inArchive:archiveCopy];
  sb_indexPathByRemovingLastIconPathComponent = [v27 sb_indexPathByRemovingLastIconPathComponent];
  v29 = objc_alloc_init(SBIconStateFolderPath);
  v26 = sb_indexPathByRemovingLastIconPathComponent;
  sb_iconRelativePathComponents = [sb_indexPathByRemovingLastIconPathComponent sb_iconRelativePathComponents];
  v11 = objc_alloc_init(MEMORY[0x1E696AC88]);
  v12 = archiveCopy;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = sb_iconRelativePathComponents;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  v25 = v12;
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    v16 = v12;
    do
    {
      v17 = 0;
      v18 = v16;
      v19 = v11;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v34 + 1) + 8 * v17);
        v11 = [v20 bs_indexPathByAddingPrefix:v19];

        v16 = [self _nodeAtPath:v20 inNode:v18];
        v32 = 0;
        v33 = 0;
        v31 = 0;
        [SBHIconStateUnarchiver _getFolderDisplayName:&v33 defaultDisplayName:&v32 uniqueIdentifier:&v31 forRepresentation:v16 iconSource:sourceCopy];
        v21 = v33;
        v22 = v32;
        v23 = v31;
        [(SBIconStateFolderPath *)v29 addFolderWithName:v21 defaultName:v22 uniqueIdentifier:v23 indexPath:v11];

        ++v17;
        v18 = v16;
        v19 = v11;
      }

      while (v14 != v17);
      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = v12;
  }

  return v29;
}

+ (id)leafIdentifiersInListAtIndexPath:(id)path inArchive:(id)archive
{
  pathCopy = path;
  archiveCopy = archive;
  v7 = [pathCopy length];
  v8 = archiveCopy;
  if (!v7)
  {
LABEL_20:
    v23 = MEMORY[0x1E695E0F0];
    v20 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v24 = v8;
    }

    else
    {
      v24 = v23;
    }

    v25 = v24;
    v11 = v8;
    goto LABEL_24;
  }

  v9 = v7;
  v10 = 0;
  v11 = archiveCopy;
  while (1)
  {
    v12 = [pathCopy indexAtPosition:v10];
    v13 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      break;
    }

    v15 = [v11 objectAtIndex:v12];
LABEL_15:
    v8 = v15;
LABEL_16:

    ++v10;
    v11 = v8;
    if (v9 == v10)
    {
      goto LABEL_20;
    }
  }

  v16 = objc_opt_self();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0)
  {
    v25 = MEMORY[0x1E695E0F0];
    goto LABEL_26;
  }

  switch(v12)
  {
    case 10000:
      v18 = v11;
      v19 = @"buttonBar";
LABEL_14:
      v15 = [v18 objectForKey:v19];
      goto LABEL_15;
    case 20000:
      v18 = v11;
      v19 = @"today";
      goto LABEL_14;
    case 30000:
      v18 = v11;
      v19 = @"ignored";
      goto LABEL_14;
    case 40000:
      v18 = v11;
      v19 = @"dockUtilities";
      goto LABEL_14;
  }

  v27 = archiveCopy;
  v20 = [v11 objectForKey:@"iconLists"];
  v21 = objc_opt_self();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v8 = [v20 objectAtIndex:v12];

    v11 = v20;
    archiveCopy = v27;
    goto LABEL_16;
  }

  archiveCopy = v27;
  v25 = MEMORY[0x1E695E0F0];
LABEL_24:

LABEL_26:

  return v25;
}

- (SBHIconStateArchiver)initWithRootNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = SBHIconStateArchiver;
  v6 = [(SBHIconStateArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNode, node);
  }

  return v7;
}

- (id)archiveWithError:(id *)error
{
  rootNode = [(SBHIconStateArchiver *)self rootNode];
  v5 = objc_autoreleasePoolPush();
  v6 = [(SBHIconStateArchiver *)self _representationForNode:rootNode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    metadata = [(SBHIconStateArchiver *)self metadata];
    if ([metadata count])
    {
      [v7 setObject:metadata forKeyedSubscript:@"metadata"];
    }

    effectiveDelegate = [(SBHIconStateArchiver *)self effectiveDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [effectiveDelegate versionForIconStateArchiver:self];
      if (v10)
      {
        [v7 setObject:v10 forKeyedSubscript:@"widgetVersion"];
      }
    }

    else
    {
      [v7 setObject:&unk_1F3DB2468 forKeyedSubscript:@"widgetVersion"];
    }

    v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];

    v6 = v11;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

+ (void)_addLeafNodesForNode:(id)node toSet:(id)set
{
  v28 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  setCopy = set;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = objc_opt_self();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = nodeCopy;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [self _addLeafNodesForNode:*(*(&v23 + 1) + 8 * i) toSet:{setCopy, v23}];
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v17 = objc_opt_self();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      v12 = [nodeCopy objectForKey:@"buttonBar"];
      if (v12)
      {
        [self _addLeafNodesForNode:v12 toSet:setCopy];
      }

      v19 = [nodeCopy objectForKey:@"dockUtilities"];
      if (v19)
      {
        [self _addLeafNodesForNode:v19 toSet:setCopy];
      }

      v20 = [nodeCopy objectForKey:@"today"];
      if (v20)
      {
        [self _addLeafNodesForNode:v20 toSet:setCopy];
      }

      v21 = [nodeCopy objectForKey:@"iconLists"];
      if (v21)
      {
        [self _addLeafNodesForNode:v21 toSet:setCopy];
      }

      v22 = [nodeCopy objectForKey:@"ignored"];
      if (v22)
      {
        [self _addLeafNodesForNode:v22 toSet:setCopy];
      }
    }

    goto LABEL_25;
  }

  [setCopy addObject:nodeCopy];
LABEL_25:
}

+ (id)_pathForNode:(id)node toIdentifier:(id)identifier
{
  v44 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  identifierCopy = identifier;
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([nodeCopy isEqualToString:identifierCopy])
    {
      bs_emptyPath = [MEMORY[0x1E696AC88] bs_emptyPath];
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v11 = objc_opt_self();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = nodeCopy;
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v40;
      while (2)
      {
        v18 = 0;
        v19 = v16;
        v16 += v15;
        do
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = [self _pathForNode:*(*(&v39 + 1) + 8 * v18) toIdentifier:{identifierCopy, v39}];
          if (v20)
          {
            v24 = v20;
            v25 = [MEMORY[0x1E696AC88] indexPathWithIndex:v19];
            bs_emptyPath = [v24 bs_indexPathByAddingPrefix:v25];

            goto LABEL_19;
          }

          ++v19;
          ++v18;
        }

        while (v15 != v18);
        v15 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_37;
  }

  v21 = objc_opt_self();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v13 = [nodeCopy objectForKey:@"iconLists"];
    if (v13)
    {
      v23 = [self _pathForNode:v13 toIdentifier:identifierCopy];
      if (v23)
      {
        bs_emptyPath = v23;
LABEL_19:

        goto LABEL_38;
      }
    }

    v26 = [nodeCopy objectForKey:@"buttonBar"];
    if (v26)
    {
      v27 = [self _pathForNode:v26 toIdentifier:identifierCopy];
      if (v27)
      {
        v28 = v27;
        v29 = [MEMORY[0x1E696AC88] indexPathWithIndex:10000];
        bs_emptyPath = [v28 bs_indexPathByAddingPrefix:v29];

        goto LABEL_19;
      }
    }

    v30 = [nodeCopy objectForKey:@"dockUtilities"];
    if (v30)
    {
      v31 = [self _pathForNode:v30 toIdentifier:identifierCopy];
      if (v31)
      {
        v32 = v31;
        v33 = [MEMORY[0x1E696AC88] indexPathWithIndex:40000];
        bs_emptyPath = [v32 bs_indexPathByAddingPrefix:v33];
        v34 = 0;
        goto LABEL_36;
      }
    }

    v33 = [nodeCopy objectForKey:@"today"];
    if (v33)
    {
      v35 = [self _pathForNode:v33 toIdentifier:identifierCopy];
      if (v35)
      {
        v32 = v35;
        v36 = [MEMORY[0x1E696AC88] indexPathWithIndex:20000];
        bs_emptyPath = [v32 bs_indexPathByAddingPrefix:v36];
LABEL_32:
        v34 = 0;
LABEL_35:

LABEL_36:
        if (!v34)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v36 = [nodeCopy objectForKey:@"ignored"];
    if (v36)
    {
      v32 = [self _pathForNode:v36 toIdentifier:identifierCopy];
      if (v32)
      {
        v37 = [MEMORY[0x1E696AC88] indexPathWithIndex:30000];
        bs_emptyPath = [v32 bs_indexPathByAddingPrefix:v37];

        goto LABEL_32;
      }
    }

    else
    {
      v32 = 0;
    }

    v34 = 1;
    goto LABEL_35;
  }

LABEL_37:
  bs_emptyPath = 0;
LABEL_38:

  return bs_emptyPath;
}

+ (id)_nodeAtPath:(id)path inNode:(id)node
{
  pathCopy = path;
  nodeCopy = node;
  v8 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {

LABEL_6:
    v13 = nodeCopy;
    goto LABEL_20;
  }

  v9 = [pathCopy length];

  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [nodeCopy objectAtIndex:{objc_msgSend(pathCopy, "indexAtPosition:", 0)}];
  }

  else
  {
    v14 = objc_opt_self();
    v15 = objc_opt_isKindOfClass();

    if ((v15 & 1) == 0)
    {
      v13 = 0;
      goto LABEL_20;
    }

    v16 = [pathCopy indexAtPosition:0];
    switch(v16)
    {
      case 10000:
        v17 = @"buttonBar";
        break;
      case 20000:
        v17 = @"today";
        break;
      case 30000:
        v17 = @"ignored";
        break;
      case 40000:
        v17 = @"dockUtilities";
        break;
      default:
        v18 = [nodeCopy objectForKey:@"iconLists"];
        v13 = [self _nodeAtPath:pathCopy inNode:v18];
        goto LABEL_19;
    }

    v12 = [nodeCopy objectForKey:v17];
  }

  v18 = v12;
  bs_indexPathByRemovingFirstIndex = [pathCopy bs_indexPathByRemovingFirstIndex];
  v13 = [self _nodeAtPath:bs_indexPathByRemovingFirstIndex inNode:v18];

LABEL_19:
LABEL_20:

  return v13;
}

- (id)effectiveDelegate
{
  delegate = [(SBHIconStateArchiver *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    iconModel = delegate;
  }

  else
  {
    iconModel = [(SBHIconStateArchiver *)self iconModel];
  }

  v6 = iconModel;

  return v6;
}

- (id)customGridSizeClassDomain
{
  effectiveDelegate = [(SBHIconStateArchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate iconGridSizeClassDomainForIconStateArchiver:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)effectiveGridSizeClassDomain
{
  customGridSizeClassDomain = [(SBHIconStateArchiver *)self customGridSizeClassDomain];
  if (!customGridSizeClassDomain)
  {
    rootNode = [(SBHIconStateArchiver *)self rootNode];
    if (objc_opt_respondsToSelector())
    {
      gridSizeClassDomain = [rootNode gridSizeClassDomain];

      if (gridSizeClassDomain)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    customGridSizeClassDomain = +[SBHIconGridSizeClassDomain globalDomain];
  }

  gridSizeClassDomain = customGridSizeClassDomain;
LABEL_8:

  return gridSizeClassDomain;
}

- (id)_representationForIcon:(id)icon
{
  iconCopy = icon;
  v5 = iconCopy;
  if (!iconCopy)
  {
    v8 = 0;
    goto LABEL_16;
  }

  if ([iconCopy isFolderIcon])
  {
    folder = [v5 folder];
    v7 = [(SBHIconStateArchiver *)self _representationForFolder:folder];
LABEL_4:
    v8 = v7;
LABEL_8:

    goto LABEL_16;
  }

  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    folder = [v5 referencedIcon];
    referencedIcon = [v5 referencedIcon];
    v8 = [(SBHIconStateArchiver *)self _representationForIcon:referencedIcon];

    goto LABEL_8;
  }

  if ([v5 isWidgetIcon])
  {
    v12 = [(SBHIconStateArchiver *)self _representationForCustomIcon:v5];
  }

  else if ([v5 isApplicationIcon])
  {
    v12 = [(SBHIconStateArchiver *)self _representationForApplicationIcon:v5];
  }

  else
  {
    if (![v5 isFileStackIcon])
    {
      folder = [(SBHIconStateArchiver *)self effectiveDelegate];
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([folder archiver:self representationForIcon:v5], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if (![v5 isLeafIcon] || (objc_msgSend(v5, "leafIdentifier"), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v8 = &stru_1F3D472A8;
          goto LABEL_8;
        }
      }

      goto LABEL_4;
    }

    v12 = [(SBHIconStateArchiver *)self _representationForFileStackIcon:v5];
  }

  v8 = v12;
LABEL_16:

  return v8;
}

+ (BOOL)_iconContainsMultipleRepresentations:(id)representations
{
  representationsCopy = representations;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_representationsForIcon:(id)icon
{
  v21 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  if (iconCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      referencedIcons = [iconCopy referencedIcons];
      v9 = [referencedIcons countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(referencedIcons);
          }

          referencedIcon = [iconCopy referencedIcon];
          v13 = [(SBHIconStateArchiver *)self _representationForIcon:referencedIcon];

          if (v13)
          {
            [v5 addObject:v13];
          }

          if (!--v10)
          {
            v10 = [referencedIcons countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (!v10)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v14 = [(SBHIconStateArchiver *)self _representationForIcon:iconCopy];
      if (v14)
      {
        [v5 addObject:v14];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_representationForList:(id)list
{
  v19 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (listCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    icons = [listCopy icons];
    v7 = [icons countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(icons);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([objc_opt_class() _iconContainsMultipleRepresentations:v11])
          {
            v12 = [(SBHIconStateArchiver *)self _representationsForIcon:v11];
            if (v12)
            {
              [v5 addObjectsFromArray:v12];
            }
          }

          else
          {
            v12 = [(SBHIconStateArchiver *)self _representationForIcon:v11];
            if (v12)
            {
              [v5 addObject:v12];
            }
          }
        }

        v8 = [icons countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_metadataForList:(id)list
{
  v37 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v4 = listCopy;
  if (listCopy)
  {
    hiddenDate = [listCopy hiddenDate];
    _rotatedIconsIfApplicable = [v4 _rotatedIconsIfApplicable];
    focusModeIdentifiers = [v4 focusModeIdentifiers];
    allObjects = [focusModeIdentifiers allObjects];

    fixedIconLocations = [v4 fixedIconLocations];
    rotatedFixedIconLocations = [v4 rotatedFixedIconLocations];
    overflowSlotCount = [v4 overflowSlotCount];
    v12 = overflowSlotCount;
    if (hiddenDate || _rotatedIconsIfApplicable || allObjects || fixedIconLocations || rotatedFixedIconLocations || overflowSlotCount)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = v14;
      if (hiddenDate)
      {
        [v14 setObject:hiddenDate forKey:@"hiddenDate"];
      }

      if (allObjects)
      {
        [v13 setObject:allObjects forKey:@"focusModeIdentifiers"];
      }

      if (v12)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
        [v13 setObject:v15 forKey:@"overflowSlotCount"];
      }

      if (_rotatedIconsIfApplicable)
      {
        v29 = allObjects;
        v31 = hiddenDate;
        v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_rotatedIconsIfApplicable, "count")}];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v30 = _rotatedIconsIfApplicable;
        v17 = _rotatedIconsIfApplicable;
        v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v33;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v33 != v20)
              {
                objc_enumerationMutation(v17);
              }

              uniqueIdentifier = [*(*(&v32 + 1) + 8 * i) uniqueIdentifier];
              [v16 addObject:uniqueIdentifier];
            }

            v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v19);
        }

        [v13 setObject:v16 forKey:@"rotatedOrder"];
        _rotatedIconsIfApplicable = v30;
        hiddenDate = v31;
        allObjects = v29;
      }

      if (fixedIconLocations | rotatedFixedIconLocations)
      {
        v23 = fixedIconLocations ? fixedIconLocations : MEMORY[0x1E695E0F8];
        [v13 setObject:v23 forKey:@"fixedLocations"];
        gridSize = [v4 gridSize];
        v25 = gridSize;
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:HIWORD(gridSize)];
        [v13 setObject:v26 forKey:@"fixedLocationsGridRows"];

        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v25];
        [v13 setObject:v27 forKey:@"fixedLocationsGridColumns"];

        if (rotatedFixedIconLocations)
        {
          [v13 setObject:rotatedFixedIconLocations forKey:@"rotatedFixedLocations"];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_folderTypeForFolder:(id)folder
{
  folderCopy = folder;
  v4 = folderCopy;
  if (folderCopy)
  {
    if ([folderCopy isRootFolder])
    {
      v5 = 0;
    }

    else
    {
      v5 = @"folder";
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_representationForFolder:(id)folder
{
  v48 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  if (folderCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [objc_opt_class() _folderTypeForFolder:folderCopy];
    if (v6)
    {
      [v5 setObject:v6 forKey:@"listType"];
    }

    defaultDisplayName = [folderCopy defaultDisplayName];
    if (defaultDisplayName)
    {
      [v5 setObject:defaultDisplayName forKey:@"defaultDisplayName"];
    }

    displayName = [folderCopy displayName];
    if (displayName)
    {
      [v5 setObject:displayName forKey:@"displayName"];
    }

    v39 = defaultDisplayName;
    v40 = v6;
    uniqueIdentifier = [folderCopy uniqueIdentifier];
    if (uniqueIdentifier)
    {
      [v5 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
    }

    v37 = uniqueIdentifier;
    v38 = displayName;
    v41 = v5;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = folderCopy;
    lists = [folderCopy lists];
    v13 = [lists countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v44;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(lists);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          v19 = [(SBHIconStateArchiver *)self _representationForList:v18];
          [v10 addObject:v19];

          uniqueIdentifier2 = [v18 uniqueIdentifier];
          [v11 addObject:uniqueIdentifier2];
          v21 = [(SBHIconStateArchiver *)self _metadataForList:v18];
          if (v21)
          {
            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [v15 setObject:v21 forKey:uniqueIdentifier2];
          }
        }

        v14 = [lists countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v22 = v41;
    [v41 setObject:v10 forKey:@"iconLists"];
    [v41 setObject:v11 forKey:@"listUniqueIdentifiers"];
    if (v15)
    {
      [v41 setObject:v15 forKey:@"listMetadata"];
    }

    v23 = objc_opt_self();
    folderCopy = v42;
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = v42;
      dock = [v25 dock];
      v27 = [(SBHIconStateArchiver *)self _representationForList:dock];

      if (v27)
      {
        [v41 setObject:v27 forKey:@"buttonBar"];
      }

      v36 = v27;
      effectiveDelegate = [(SBHIconStateArchiver *)self effectiveDelegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [effectiveDelegate isDockUtilitiesSupportedForIconStateArchiver:self])
      {
        dockUtilities = [v25 dockUtilities];
        v30 = [(SBHIconStateArchiver *)self _representationForList:dockUtilities];

        if (v30)
        {
          [v41 setObject:v30 forKey:@"dockUtilities"];
        }
      }

      todayList = [v25 todayList];
      v32 = [(SBHIconStateArchiver *)self _representationForList:todayList];

      if ([v32 count])
      {
        [v41 setObject:v32 forKey:@"today"];
      }

      ignoredList = [v25 ignoredList];
      v34 = [(SBHIconStateArchiver *)self _representationForList:ignoredList];

      if ([v34 count])
      {
        [v41 setObject:v34 forKey:@"ignored"];
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)iconStateRepresentationForFolder:(id)folder inModel:(id)model
{
  modelCopy = model;
  folderCopy = folder;
  v8 = [[self alloc] initWithRootNode:folderCopy];

  [v8 setIconModel:modelCopy];
  v9 = [v8 archiveWithError:0];

  return v9;
}

- (id)_representationForApplicationIcon:(id)icon
{
  iconCopy = icon;
  leafIdentifier = [iconCopy leafIdentifier];
  applicationBundleID = [iconCopy applicationBundleID];

  if (leafIdentifier && applicationBundleID && ([leafIdentifier isEqualToString:applicationBundleID] & 1) == 0)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"app" forKey:@"iconType"];
    [dictionary setObject:leafIdentifier forKey:@"displayIdentifier"];
    [dictionary setObject:applicationBundleID forKey:@"bundleIdentifier"];
  }

  else
  {
    dictionary = leafIdentifier;
  }

  return dictionary;
}

- (id)_representationForCustomIcon:(id)icon
{
  v34 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"custom" forKey:@"iconType"];
  leafIdentifier = [iconCopy leafIdentifier];
  if (leafIdentifier)
  {
    [dictionary setObject:leafIdentifier forKey:@"displayIdentifier"];
  }

  iconDataSources = [iconCopy iconDataSources];
  firstObject = [iconDataSources firstObject];
  v9 = [iconDataSources count];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  if (v9 == 1 && [objc_opt_class() _isCustomIconElementBuiltIn:firstObject])
  {
    if ([objc_opt_class() _widgetDataSourceIsSuggestion:firstObject])
    {
LABEL_7:
      v11 = 0;
      goto LABEL_27;
    }

    [(SBHIconStateArchiver *)self _addValuesForCustomIconElement:firstObject toRepresentation:dictionary];
  }

  else
  {
    v27 = firstObject;
    v28 = leafIdentifier;
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = iconDataSources;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          if (([objc_opt_class() _widgetDataSourceIsSuggestion:v18] & 1) == 0)
          {
            v19 = [(SBHIconStateArchiver *)self _representationForCustomIconElement:v18];
            if (v19)
            {
              [v12 addObject:v19];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"elements"];
    firstObject = v27;
    leafIdentifier = v28;
  }

  lastUserSelectedDataSource = [iconCopy lastUserSelectedDataSource];
  if (objc_opt_respondsToSelector())
  {
    uniqueIdentifier = [lastUserSelectedDataSource uniqueIdentifier];
    if (uniqueIdentifier)
    {
      [dictionary setObject:uniqueIdentifier forKey:@"userSelectedElementIdentifier"];
    }
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(iconCopy, "allowsSuggestions")}];
  [dictionary setObject:v22 forKey:@"allowsSuggestions"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(iconCopy, "allowsExternalSuggestions")}];
  [dictionary setObject:v23 forKey:@"allowsExternalSuggestions"];

  gridSizeClass = [iconCopy gridSizeClass];
  v25 = [(SBHIconStateArchiver *)self archiveStringForGridSizeClass:gridSizeClass];
  if (v25)
  {
    [dictionary setObject:v25 forKey:@"gridSize"];
  }

  v11 = dictionary;

LABEL_27:

  return v11;
}

- (id)archiveStringForGridSizeClass:(id)class
{
  classCopy = class;
  effectiveGridSizeClassDomain = [(SBHIconStateArchiver *)self effectiveGridSizeClassDomain];
  v6 = [effectiveGridSizeClassDomain archiveValueForGridSizeClass:classCopy];

  return v6;
}

+ (BOOL)_widgetDataSourceIsSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_opt_class();
  v4 = ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [suggestionCopy suggestionSource] == 1;

  return v4;
}

- (id)_representationForCustomIconElement:(id)element
{
  elementCopy = element;
  if ([objc_opt_class() _isCustomIconElementBuiltIn:elementCopy])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(SBHIconStateArchiver *)self _addValuesForCustomIconElement:elementCopy toRepresentation:v5];
  }

  else
  {
    effectiveDelegate = [(SBHIconStateArchiver *)self effectiveDelegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [effectiveDelegate archiver:self representationForIconDataSource:elementCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_addValuesForCustomIconElement:(id)element toRepresentation:(id)representation
{
  elementCopy = element;
  representationCopy = representation;
  if (objc_opt_respondsToSelector())
  {
    uniqueIdentifier = [elementCopy uniqueIdentifier];
    if (uniqueIdentifier)
    {
      v8 = uniqueIdentifier;
      [representationCopy setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
    }
  }

  v9 = [objc_opt_class() _builtInCustomIconElementTypeForCustomIconElement:elementCopy];
  if (v9)
  {
    [representationCopy setObject:v9 forKey:@"elementType"];
  }

  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = elementCopy;
    kind = [v12 kind];
    if (kind)
    {
      [representationCopy setObject:kind forKey:@"widgetIdentifier"];
    }

    extensionBundleIdentifier = [v12 extensionBundleIdentifier];
    if (extensionBundleIdentifier)
    {
      [representationCopy setObject:extensionBundleIdentifier forKey:@"bundleIdentifier"];
    }

    containerBundleIdentifier = [v12 containerBundleIdentifier];
    if (containerBundleIdentifier)
    {
      [representationCopy setObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];
    }
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateArchiver _addValuesForCustomIconElement:toRepresentation:];
    }
  }
}

+ (id)_builtInCustomIconElementTypeForCustomIconElement:(id)element
{
  elementCopy = element;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = @"widget";
  }

  else
  {
    v7 = objc_opt_self();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v6 = @"siriSuggestions";
    }

    else
    {
      v9 = objc_opt_self();
      v10 = objc_opt_isKindOfClass();

      if (v10)
      {
        v6 = @"appPredictions";
      }

      else
      {
        v11 = objc_opt_self();
        v12 = objc_opt_isKindOfClass();

        if (v12)
        {
          v6 = @"shortcuts";
        }

        else
        {
          v13 = objc_opt_self();
          v14 = objc_opt_isKindOfClass();

          if (v14)
          {
            v6 = @"shortcutsSingle";
          }

          else
          {
            v15 = objc_opt_self();
            v16 = objc_opt_isKindOfClass();

            if (v16)
            {
              v6 = @"files";
            }

            else
            {
              v6 = 0;
            }
          }
        }
      }
    }
  }

  return v6;
}

+ (BOOL)_isCustomIconElementBuiltIn:(id)in
{
  inCopy = in;
  v4 = [objc_opt_class() _builtInCustomIconElementTypeForCustomIconElement:inCopy];

  return v4 != 0;
}

- (id)_representationForFileStackIcon:(id)icon
{
  iconCopy = icon;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"fileStack" forKey:@"iconType"];
  dataSourceUniqueIdentifier = [iconCopy dataSourceUniqueIdentifier];
  uUIDString = [dataSourceUniqueIdentifier UUIDString];
  [dictionary setObject:uUIDString forKey:@"fileStackIconDataSourceUniqueIdentifier"];

  sortOrder = [iconCopy sortOrder];
  identifier = [sortOrder identifier];

  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"fileStackIconSortOrderIdentifier"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(iconCopy, "isCurrentSortOrderAscending")}];
  [dictionary setObject:v9 forKey:@"fileStackIconSortOrderAscending"];

  displayMode = [iconCopy displayMode];
  identifier2 = [displayMode identifier];

  if (identifier2)
  {
    [dictionary setObject:identifier2 forKey:@"fileStackIconDisplayModeIdentifier"];
  }

  return dictionary;
}

- (id)_representationForNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHIconStateArchiver *)self _representationForFolder:nodeCopy];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHIconStateArchiver *)self _representationForList:nodeCopy];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHIconStateArchiver *)self _representationForIcon:nodeCopy];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (SBHIconStateArchiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end