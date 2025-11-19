@interface SBHIconStateArchiver
+ (BOOL)_iconContainsMultipleRepresentations:(id)a3;
+ (BOOL)_isCustomIconElementBuiltIn:(id)a3;
+ (BOOL)_widgetDataSourceIsSuggestion:(id)a3;
+ (id)_builtInCustomIconElementTypeForCustomIconElement:(id)a3;
+ (id)_folderTypeForFolder:(id)a3;
+ (id)_nodeAtPath:(id)a3 inNode:(id)a4;
+ (id)_pathForNode:(id)a3 toIdentifier:(id)a4;
+ (id)archiveRootFolderInModel:(id)a3 metadata:(id)a4;
+ (id)folderPathForLeafIdentifier:(id)a3 inArchive:(id)a4 iconSource:(id)a5;
+ (id)iconStateRepresentationForFolder:(id)a3 inModel:(id)a4;
+ (id)indexPathForLeafIdentifier:(id)a3 inArchive:(id)a4;
+ (id)leafIdentifiersFromArchive:(id)a3;
+ (id)leafIdentifiersInListAtIndexPath:(id)a3 inArchive:(id)a4;
+ (id)unarchiveRootFolderFromArchive:(id)a3 withIconSource:(id)a4;
+ (void)_addLeafNodesForNode:(id)a3 toSet:(id)a4;
- (SBHIconStateArchiver)initWithRootNode:(id)a3;
- (SBHIconStateArchiverDelegate)delegate;
- (id)_metadataForList:(id)a3;
- (id)_representationForApplicationIcon:(id)a3;
- (id)_representationForCustomIcon:(id)a3;
- (id)_representationForCustomIconElement:(id)a3;
- (id)_representationForFileStackIcon:(id)a3;
- (id)_representationForFolder:(id)a3;
- (id)_representationForIcon:(id)a3;
- (id)_representationForList:(id)a3;
- (id)_representationForNode:(id)a3;
- (id)_representationsForIcon:(id)a3;
- (id)archiveStringForGridSizeClass:(id)a3;
- (id)archiveWithError:(id *)a3;
- (id)customGridSizeClassDomain;
- (id)effectiveDelegate;
- (id)effectiveGridSizeClassDomain;
- (void)_addValuesForCustomIconElement:(id)a3 toRepresentation:(id)a4;
@end

@implementation SBHIconStateArchiver

+ (id)archiveRootFolderInModel:(id)a3 metadata:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 rootFolder];
  v9 = [[a1 alloc] initWithRootNode:v8];
  [v9 setIconModel:v7];

  [v9 setMetadata:v6];
  v10 = [v9 archiveWithError:0];

  return v10;
}

+ (id)unarchiveRootFolderFromArchive:(id)a3 withIconSource:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SBHIconStateUnarchiver alloc] initWithArchive:v6 iconModel:v5];

  v8 = [(SBHIconStateUnarchiver *)v7 unarchive];

  return v8;
}

+ (id)leafIdentifiersFromArchive:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v6 = objc_autoreleasePoolPush();
  [a1 _addLeafNodesForNode:v4 toSet:v5];
  objc_autoreleasePoolPop(v6);

  return v5;
}

+ (id)indexPathForLeafIdentifier:(id)a3 inArchive:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 _pathForNode:v7 toIdentifier:v6];
  objc_autoreleasePoolPop(v8);

  return v9;
}

+ (id)folderPathForLeafIdentifier:(id)a3 inArchive:(id)a4 iconSource:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v30 = a5;
  v27 = [a1 indexPathForLeafIdentifier:a3 inArchive:v8];
  v9 = [v27 sb_indexPathByRemovingLastIconPathComponent];
  v29 = objc_alloc_init(SBIconStateFolderPath);
  v26 = v9;
  v10 = [v9 sb_iconRelativePathComponents];
  v11 = objc_alloc_init(MEMORY[0x1E696AC88]);
  v12 = v8;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v10;
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

        v16 = [a1 _nodeAtPath:v20 inNode:v18];
        v32 = 0;
        v33 = 0;
        v31 = 0;
        [SBHIconStateUnarchiver _getFolderDisplayName:&v33 defaultDisplayName:&v32 uniqueIdentifier:&v31 forRepresentation:v16 iconSource:v30];
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

+ (id)leafIdentifiersInListAtIndexPath:(id)a3 inArchive:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  v8 = v6;
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
  v11 = v6;
  while (1)
  {
    v12 = [v5 indexAtPosition:v10];
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

  v27 = v6;
  v20 = [v11 objectForKey:@"iconLists"];
  v21 = objc_opt_self();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v8 = [v20 objectAtIndex:v12];

    v11 = v20;
    v6 = v27;
    goto LABEL_16;
  }

  v6 = v27;
  v25 = MEMORY[0x1E695E0F0];
LABEL_24:

LABEL_26:

  return v25;
}

- (SBHIconStateArchiver)initWithRootNode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHIconStateArchiver;
  v6 = [(SBHIconStateArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNode, a3);
  }

  return v7;
}

- (id)archiveWithError:(id *)a3
{
  v4 = [(SBHIconStateArchiver *)self rootNode];
  v5 = objc_autoreleasePoolPush();
  v6 = [(SBHIconStateArchiver *)self _representationForNode:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    v8 = [(SBHIconStateArchiver *)self metadata];
    if ([v8 count])
    {
      [v7 setObject:v8 forKeyedSubscript:@"metadata"];
    }

    v9 = [(SBHIconStateArchiver *)self effectiveDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 versionForIconStateArchiver:self];
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

+ (void)_addLeafNodesForNode:(id)a3 toSet:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      v12 = v6;
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

            [a1 _addLeafNodesForNode:*(*(&v23 + 1) + 8 * i) toSet:{v7, v23}];
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

      v12 = [v6 objectForKey:@"buttonBar"];
      if (v12)
      {
        [a1 _addLeafNodesForNode:v12 toSet:v7];
      }

      v19 = [v6 objectForKey:@"dockUtilities"];
      if (v19)
      {
        [a1 _addLeafNodesForNode:v19 toSet:v7];
      }

      v20 = [v6 objectForKey:@"today"];
      if (v20)
      {
        [a1 _addLeafNodesForNode:v20 toSet:v7];
      }

      v21 = [v6 objectForKey:@"iconLists"];
      if (v21)
      {
        [a1 _addLeafNodesForNode:v21 toSet:v7];
      }

      v22 = [v6 objectForKey:@"ignored"];
      if (v22)
      {
        [a1 _addLeafNodesForNode:v22 toSet:v7];
      }
    }

    goto LABEL_25;
  }

  [v7 addObject:v6];
LABEL_25:
}

+ (id)_pathForNode:(id)a3 toIdentifier:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([v7 isEqualToString:v8])
    {
      v4 = [MEMORY[0x1E696AC88] bs_emptyPath];
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
    v13 = v7;
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

          v20 = [a1 _pathForNode:*(*(&v39 + 1) + 8 * v18) toIdentifier:{v8, v39}];
          if (v20)
          {
            v24 = v20;
            v25 = [MEMORY[0x1E696AC88] indexPathWithIndex:v19];
            v4 = [v24 bs_indexPathByAddingPrefix:v25];

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
    v13 = [v7 objectForKey:@"iconLists"];
    if (v13)
    {
      v23 = [a1 _pathForNode:v13 toIdentifier:v8];
      if (v23)
      {
        v4 = v23;
LABEL_19:

        goto LABEL_38;
      }
    }

    v26 = [v7 objectForKey:@"buttonBar"];
    if (v26)
    {
      v27 = [a1 _pathForNode:v26 toIdentifier:v8];
      if (v27)
      {
        v28 = v27;
        v29 = [MEMORY[0x1E696AC88] indexPathWithIndex:10000];
        v4 = [v28 bs_indexPathByAddingPrefix:v29];

        goto LABEL_19;
      }
    }

    v30 = [v7 objectForKey:@"dockUtilities"];
    if (v30)
    {
      v31 = [a1 _pathForNode:v30 toIdentifier:v8];
      if (v31)
      {
        v32 = v31;
        v33 = [MEMORY[0x1E696AC88] indexPathWithIndex:40000];
        v4 = [v32 bs_indexPathByAddingPrefix:v33];
        v34 = 0;
        goto LABEL_36;
      }
    }

    v33 = [v7 objectForKey:@"today"];
    if (v33)
    {
      v35 = [a1 _pathForNode:v33 toIdentifier:v8];
      if (v35)
      {
        v32 = v35;
        v36 = [MEMORY[0x1E696AC88] indexPathWithIndex:20000];
        v4 = [v32 bs_indexPathByAddingPrefix:v36];
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

    v36 = [v7 objectForKey:@"ignored"];
    if (v36)
    {
      v32 = [a1 _pathForNode:v36 toIdentifier:v8];
      if (v32)
      {
        v37 = [MEMORY[0x1E696AC88] indexPathWithIndex:30000];
        v4 = [v32 bs_indexPathByAddingPrefix:v37];

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
  v4 = 0;
LABEL_38:

  return v4;
}

+ (id)_nodeAtPath:(id)a3 inNode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {

LABEL_6:
    v13 = v7;
    goto LABEL_20;
  }

  v9 = [v6 length];

  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v7 objectAtIndex:{objc_msgSend(v6, "indexAtPosition:", 0)}];
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

    v16 = [v6 indexAtPosition:0];
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
        v18 = [v7 objectForKey:@"iconLists"];
        v13 = [a1 _nodeAtPath:v6 inNode:v18];
        goto LABEL_19;
    }

    v12 = [v7 objectForKey:v17];
  }

  v18 = v12;
  v19 = [v6 bs_indexPathByRemovingFirstIndex];
  v13 = [a1 _nodeAtPath:v19 inNode:v18];

LABEL_19:
LABEL_20:

  return v13;
}

- (id)effectiveDelegate
{
  v3 = [(SBHIconStateArchiver *)self delegate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBHIconStateArchiver *)self iconModel];
  }

  v6 = v5;

  return v6;
}

- (id)customGridSizeClassDomain
{
  v3 = [(SBHIconStateArchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconGridSizeClassDomainForIconStateArchiver:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)effectiveGridSizeClassDomain
{
  v3 = [(SBHIconStateArchiver *)self customGridSizeClassDomain];
  if (!v3)
  {
    v4 = [(SBHIconStateArchiver *)self rootNode];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 gridSizeClassDomain];

      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v3 = +[SBHIconGridSizeClassDomain globalDomain];
  }

  v5 = v3;
LABEL_8:

  return v5;
}

- (id)_representationForIcon:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_16;
  }

  if ([v4 isFolderIcon])
  {
    v6 = [v5 folder];
    v7 = [(SBHIconStateArchiver *)self _representationForFolder:v6];
LABEL_4:
    v8 = v7;
LABEL_8:

    goto LABEL_16;
  }

  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v5 referencedIcon];
    v11 = [v5 referencedIcon];
    v8 = [(SBHIconStateArchiver *)self _representationForIcon:v11];

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
      v6 = [(SBHIconStateArchiver *)self effectiveDelegate];
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 archiver:self representationForIcon:v5], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
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

+ (BOOL)_iconContainsMultipleRepresentations:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_representationsForIcon:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      v8 = [v4 referencedIcons];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [v4 referencedIcon];
          v13 = [(SBHIconStateArchiver *)self _representationForIcon:v12];

          if (v13)
          {
            [v5 addObject:v13];
          }

          if (!--v10)
          {
            v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
      v14 = [(SBHIconStateArchiver *)self _representationForIcon:v4];
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

- (id)_representationForList:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v4 icons];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
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

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_metadataForList:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hiddenDate];
    v6 = [v4 _rotatedIconsIfApplicable];
    v7 = [v4 focusModeIdentifiers];
    v8 = [v7 allObjects];

    v9 = [v4 fixedIconLocations];
    v10 = [v4 rotatedFixedIconLocations];
    v11 = [v4 overflowSlotCount];
    v12 = v11;
    if (v5 || v6 || v8 || v9 || v10 || v11)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = v14;
      if (v5)
      {
        [v14 setObject:v5 forKey:@"hiddenDate"];
      }

      if (v8)
      {
        [v13 setObject:v8 forKey:@"focusModeIdentifiers"];
      }

      if (v12)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
        [v13 setObject:v15 forKey:@"overflowSlotCount"];
      }

      if (v6)
      {
        v29 = v8;
        v31 = v5;
        v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v30 = v6;
        v17 = v6;
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

              v22 = [*(*(&v32 + 1) + 8 * i) uniqueIdentifier];
              [v16 addObject:v22];
            }

            v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v19);
        }

        [v13 setObject:v16 forKey:@"rotatedOrder"];
        v6 = v30;
        v5 = v31;
        v8 = v29;
      }

      if (v9 | v10)
      {
        v23 = v9 ? v9 : MEMORY[0x1E695E0F8];
        [v13 setObject:v23 forKey:@"fixedLocations"];
        v24 = [v4 gridSize];
        v25 = v24;
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:HIWORD(v24)];
        [v13 setObject:v26 forKey:@"fixedLocationsGridRows"];

        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v25];
        [v13 setObject:v27 forKey:@"fixedLocationsGridColumns"];

        if (v10)
        {
          [v13 setObject:v10 forKey:@"rotatedFixedLocations"];
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

+ (id)_folderTypeForFolder:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isRootFolder])
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

- (id)_representationForFolder:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [objc_opt_class() _folderTypeForFolder:v4];
    if (v6)
    {
      [v5 setObject:v6 forKey:@"listType"];
    }

    v7 = [v4 defaultDisplayName];
    if (v7)
    {
      [v5 setObject:v7 forKey:@"defaultDisplayName"];
    }

    v8 = [v4 displayName];
    if (v8)
    {
      [v5 setObject:v8 forKey:@"displayName"];
    }

    v39 = v7;
    v40 = v6;
    v9 = [v4 uniqueIdentifier];
    if (v9)
    {
      [v5 setObject:v9 forKey:@"uniqueIdentifier"];
    }

    v37 = v9;
    v38 = v8;
    v41 = v5;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = v4;
    v12 = [v4 lists];
    v13 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          v19 = [(SBHIconStateArchiver *)self _representationForList:v18];
          [v10 addObject:v19];

          v20 = [v18 uniqueIdentifier];
          [v11 addObject:v20];
          v21 = [(SBHIconStateArchiver *)self _metadataForList:v18];
          if (v21)
          {
            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [v15 setObject:v21 forKey:v20];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
    v4 = v42;
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = v42;
      v26 = [v25 dock];
      v27 = [(SBHIconStateArchiver *)self _representationForList:v26];

      if (v27)
      {
        [v41 setObject:v27 forKey:@"buttonBar"];
      }

      v36 = v27;
      v28 = [(SBHIconStateArchiver *)self effectiveDelegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v28 isDockUtilitiesSupportedForIconStateArchiver:self])
      {
        v29 = [v25 dockUtilities];
        v30 = [(SBHIconStateArchiver *)self _representationForList:v29];

        if (v30)
        {
          [v41 setObject:v30 forKey:@"dockUtilities"];
        }
      }

      v31 = [v25 todayList];
      v32 = [(SBHIconStateArchiver *)self _representationForList:v31];

      if ([v32 count])
      {
        [v41 setObject:v32 forKey:@"today"];
      }

      v33 = [v25 ignoredList];
      v34 = [(SBHIconStateArchiver *)self _representationForList:v33];

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

+ (id)iconStateRepresentationForFolder:(id)a3 inModel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRootNode:v7];

  [v8 setIconModel:v6];
  v9 = [v8 archiveWithError:0];

  return v9;
}

- (id)_representationForApplicationIcon:(id)a3
{
  v3 = a3;
  v4 = [v3 leafIdentifier];
  v5 = [v3 applicationBundleID];

  if (v4 && v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    [v6 setObject:@"app" forKey:@"iconType"];
    [v6 setObject:v4 forKey:@"displayIdentifier"];
    [v6 setObject:v5 forKey:@"bundleIdentifier"];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (id)_representationForCustomIcon:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:@"custom" forKey:@"iconType"];
  v6 = [v4 leafIdentifier];
  if (v6)
  {
    [v5 setObject:v6 forKey:@"displayIdentifier"];
  }

  v7 = [v4 iconDataSources];
  v8 = [v7 firstObject];
  v9 = [v7 count];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  if (v9 == 1 && [objc_opt_class() _isCustomIconElementBuiltIn:v8])
  {
    if ([objc_opt_class() _widgetDataSourceIsSuggestion:v8])
    {
LABEL_7:
      v11 = 0;
      goto LABEL_27;
    }

    [(SBHIconStateArchiver *)self _addValuesForCustomIconElement:v8 toRepresentation:v5];
  }

  else
  {
    v27 = v8;
    v28 = v6;
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v7;
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

    [v5 setObject:v12 forKey:@"elements"];
    v8 = v27;
    v6 = v28;
  }

  v20 = [v4 lastUserSelectedDataSource];
  if (objc_opt_respondsToSelector())
  {
    v21 = [v20 uniqueIdentifier];
    if (v21)
    {
      [v5 setObject:v21 forKey:@"userSelectedElementIdentifier"];
    }
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "allowsSuggestions")}];
  [v5 setObject:v22 forKey:@"allowsSuggestions"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "allowsExternalSuggestions")}];
  [v5 setObject:v23 forKey:@"allowsExternalSuggestions"];

  v24 = [v4 gridSizeClass];
  v25 = [(SBHIconStateArchiver *)self archiveStringForGridSizeClass:v24];
  if (v25)
  {
    [v5 setObject:v25 forKey:@"gridSize"];
  }

  v11 = v5;

LABEL_27:

  return v11;
}

- (id)archiveStringForGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconStateArchiver *)self effectiveGridSizeClassDomain];
  v6 = [v5 archiveValueForGridSizeClass:v4];

  return v6;
}

+ (BOOL)_widgetDataSourceIsSuggestion:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [v3 suggestionSource] == 1;

  return v4;
}

- (id)_representationForCustomIconElement:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _isCustomIconElementBuiltIn:v4])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(SBHIconStateArchiver *)self _addValuesForCustomIconElement:v4 toRepresentation:v5];
  }

  else
  {
    v6 = [(SBHIconStateArchiver *)self effectiveDelegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 archiver:self representationForIconDataSource:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_addValuesForCustomIconElement:(id)a3 toRepresentation:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 uniqueIdentifier];
    if (v7)
    {
      v8 = v7;
      [v6 setObject:v7 forKey:@"uniqueIdentifier"];
    }
  }

  v9 = [objc_opt_class() _builtInCustomIconElementTypeForCustomIconElement:v5];
  if (v9)
  {
    [v6 setObject:v9 forKey:@"elementType"];
  }

  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = v5;
    v13 = [v12 kind];
    if (v13)
    {
      [v6 setObject:v13 forKey:@"widgetIdentifier"];
    }

    v14 = [v12 extensionBundleIdentifier];
    if (v14)
    {
      [v6 setObject:v14 forKey:@"bundleIdentifier"];
    }

    v15 = [v12 containerBundleIdentifier];
    if (v15)
    {
      [v6 setObject:v15 forKey:@"containerBundleIdentifier"];
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

+ (id)_builtInCustomIconElementTypeForCustomIconElement:(id)a3
{
  v3 = a3;
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

+ (BOOL)_isCustomIconElementBuiltIn:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _builtInCustomIconElementTypeForCustomIconElement:v3];

  return v4 != 0;
}

- (id)_representationForFileStackIcon:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v4 setObject:@"fileStack" forKey:@"iconType"];
  v5 = [v3 dataSourceUniqueIdentifier];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKey:@"fileStackIconDataSourceUniqueIdentifier"];

  v7 = [v3 sortOrder];
  v8 = [v7 identifier];

  if (v8)
  {
    [v4 setObject:v8 forKey:@"fileStackIconSortOrderIdentifier"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isCurrentSortOrderAscending")}];
  [v4 setObject:v9 forKey:@"fileStackIconSortOrderAscending"];

  v10 = [v3 displayMode];
  v11 = [v10 identifier];

  if (v11)
  {
    [v4 setObject:v11 forKey:@"fileStackIconDisplayModeIdentifier"];
  }

  return v4;
}

- (id)_representationForNode:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHIconStateArchiver *)self _representationForFolder:v4];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHIconStateArchiver *)self _representationForList:v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHIconStateArchiver *)self _representationForIcon:v4];
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