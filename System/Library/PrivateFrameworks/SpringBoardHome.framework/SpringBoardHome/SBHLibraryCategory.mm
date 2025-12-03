@interface SBHLibraryCategory
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCategory:(id)category;
- (BOOL)updateCategoryIdentifier:(id)identifier;
- (BOOL)updateCategoryWithIcons:(id)icons;
- (NSString)description;
- (NSString)leafIdentifier;
- (SBHLibraryAdditionalItemsIndicatorIcon)additionalItemsIndicatorIcon;
- (SBHLibraryCategory)init;
- (SBHLibraryCategoryFolder)compactPodAdditionalItemsFolder;
- (SBHLibraryCategoryFolder)compactPodFolder;
- (SBHLibraryCategoryFolder)expandedPodFolder;
- (SBIconDelegate)iconDelegate;
- (id)_buildDisplayedIconsForFolder:(id)folder icons:(id)icons;
- (id)icon:(id)icon displayNameForLocation:(id)location;
- (id)supportedGridSizeClassesForIcon:(id)icon;
- (void)_localizedDisplayNameChangedTo:(id)to;
- (void)_noteCategoryDidUpdate;
- (void)_noteCategoryWillUpdate;
- (void)_noteFolderDidUpdateIcons:(id)icons;
- (void)_noteFolderWillUpdateIcons:(id)icons;
- (void)_refreshAggregateIconLabelAccessoryType;
- (void)addObserver:(id)observer;
- (void)setCategoryIdentifier:(id)identifier;
@end

@implementation SBHLibraryCategory

- (void)_refreshAggregateIconLabelAccessoryType
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_icons;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        labelAccessoryType = [*(*(&v12 + 1) + 8 * i) labelAccessoryType];
        if (labelAccessoryType == 1)
        {

          v10 = 1;
          goto LABEL_14;
        }

        v6 |= labelAccessoryType != 4;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    if (v6)
    {
      v10 = 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v10 = 4 * ([(NSArray *)self->_icons count]!= 0);
LABEL_14:
  if (self->_aggregrateIconLabelAccessoryType != v10)
  {
    self->_aggregrateIconLabelAccessoryType = v10;
    sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
  }
}

- (SBHLibraryCategory)init
{
  v6.receiver = self;
  v6.super_class = SBHLibraryCategory;
  v2 = [(SBHLibraryCategory *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  icons = [(SBHLibraryCategory *)self icons];
  v5 = [v3 appendObject:icons withName:@"icons"];

  categoryIdentifier = [(SBHLibraryCategory *)self categoryIdentifier];
  v7 = [v3 appendObject:categoryIdentifier withName:@"categoryIdentifier"];

  additionalItemsIndicatorIcon = self->_additionalItemsIndicatorIcon;
  if (additionalItemsIndicatorIcon)
  {
    v9 = [v3 appendPointer:additionalItemsIndicatorIcon withName:@"additionalItemsIndicatorIcon"];
  }

  build = [v3 build];

  return build;
}

- (BOOL)isEqualToCategory:(id)category
{
  categoryCopy = category;
  v5 = categoryCopy;
  if (categoryCopy == self)
  {
    v9 = 1;
  }

  else
  {
    categoryIdentifier = [(SBHLibraryCategory *)categoryCopy categoryIdentifier];
    categoryIdentifier2 = [(SBHLibraryCategory *)self categoryIdentifier];
    v8 = [categoryIdentifier isEqual:categoryIdentifier2];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      icons = [(SBHLibraryCategory *)v5 icons];
      icons2 = [(SBHLibraryCategory *)self icons];
      v9 = BSEqualObjects();
    }
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHLibraryCategory *)self isEqualToCategory:equalCopy];
  }

  return v5;
}

- (void)_localizedDisplayNameChangedTo:(id)to
{
  toCopy = to;
  displayName = [(SBFolder *)self->_compactPodFolder displayName];
  v5 = [displayName isEqualToString:toCopy];

  if ((v5 & 1) == 0)
  {
    [(SBFolder *)self->_compactPodFolder setDisplayName:toCopy];
  }

  displayName2 = [(SBFolder *)self->_compactPodAdditionalItemsFolder displayName];
  v7 = [displayName2 isEqualToString:toCopy];

  if ((v7 & 1) == 0)
  {
    [(SBFolder *)self->_compactPodAdditionalItemsFolder setDisplayName:toCopy];
  }

  displayName3 = [(SBFolder *)self->_expandedPodFolder displayName];
  v9 = [displayName3 isEqualToString:toCopy];

  if ((v9 & 1) == 0)
  {
    [(SBFolder *)self->_expandedPodFolder setDisplayName:toCopy];
  }
}

- (void)setCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(SBHLibraryCategoryIdentifier *)self->_categoryIdentifier isEqual:?])
  {
    objc_storeStrong(&self->_categoryIdentifier, identifier);
    localizedDisplayName = [identifierCopy localizedDisplayName];
    [(SBHLibraryCategory *)self _localizedDisplayNameChangedTo:localizedDisplayName];

    self->_overflowBehavior = [identifierCopy predictionCategoryID] == 3;
  }
}

- (BOOL)updateCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SBHLibraryCategoryIdentifier *)self->_categoryIdentifier isEqual:identifierCopy];
  if (!v5)
  {
    [(SBHLibraryCategory *)self _noteCategoryWillUpdate];
    [(SBHLibraryCategory *)self setCategoryIdentifier:identifierCopy];
    [(SBHLibraryCategory *)self _noteCategoryDidUpdate];
  }

  return !v5;
}

- (BOOL)updateCategoryWithIcons:(id)icons
{
  v100 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  if ([(NSArray *)self->_icons isEqualToArray:iconsCopy])
  {
    v5 = 0;
  }

  else
  {
    [(SBHLibraryCategory *)self _noteCategoryWillUpdate];
    categoryIdentifier = [(SBHLibraryCategory *)self categoryIdentifier];
    localizedDisplayName = [categoryIdentifier localizedDisplayName];

    v69 = objc_opt_new();
    compactPodFolder = [(SBHLibraryCategory *)self compactPodFolder];
    compactPodAdditionalItemsFolder = [(SBHLibraryCategory *)self compactPodAdditionalItemsFolder];
    expandedPodFolder = [(SBHLibraryCategory *)self expandedPodFolder];
    [compactPodFolder setDisplayName:localizedDisplayName];
    [compactPodAdditionalItemsFolder setDisplayName:localizedDisplayName];
    v59 = localizedDisplayName;
    [expandedPodFolder setDisplayName:localizedDisplayName];
    v11 = objc_opt_new();
    v58 = compactPodFolder;
    [v11 bs_safeAddObject:compactPodFolder];
    v57 = compactPodAdditionalItemsFolder;
    [v11 bs_safeAddObject:compactPodAdditionalItemsFolder];
    v56 = expandedPodFolder;
    [v11 bs_safeAddObject:expandedPodFolder];
    [(NSArray *)self->_icons makeObjectsPerformSelector:sel_removeObserver_ withObject:self];
    [iconsCopy makeObjectsPerformSelector:sel_addObserver_ withObject:self];
    additionalItemsIndicatorIcon = [(SBHLibraryCategory *)self additionalItemsIndicatorIcon];
    v13 = MEMORY[0x1E696AE18];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __46__SBHLibraryCategory_updateCategoryWithIcons___block_invoke;
    v94[3] = &unk_1E8089628;
    v55 = additionalItemsIndicatorIcon;
    v95 = v55;
    v14 = [v13 predicateWithBlock:v94];
    v60 = iconsCopy;
    v63 = [iconsCopy filteredArrayUsingPredicate:v14];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v11;
    v64 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
    v5 = 0;
    if (v64)
    {
      v62 = *v91;
      selfCopy = self;
      do
      {
        for (i = 0; i != v64; ++i)
        {
          if (*v91 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v90 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          icons = [v16 icons];
          v19 = [(SBHLibraryCategory *)self _buildDisplayedIconsForFolder:v16 icons:v63];
          if ([icons count] || !objc_msgSend(v19, "count"))
          {
            v66 = icons;
            v67 = v17;
            v68 = i;
            v65 = v19;
            v20 = [v19 mutableCopy];
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v71 = v16;
            lists = [v16 lists];
            v21 = [lists countByEnumeratingWithState:&v86 objects:v98 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v87;
              v72 = *v87;
              v73 = v20;
              do
              {
                v24 = 0;
                v74 = v22;
                do
                {
                  if (*v87 != v23)
                  {
                    objc_enumerationMutation(lists);
                  }

                  v25 = *(*(&v86 + 1) + 8 * v24);
                  icons2 = [v25 icons];
                  v27 = [v20 count];
                  maxNumberOfIcons = [v25 maxNumberOfIcons];
                  if (v27 >= maxNumberOfIcons)
                  {
                    v29 = maxNumberOfIcons;
                  }

                  else
                  {
                    v29 = v27;
                  }

                  v30 = [v20 subarrayWithRange:{0, v29}];
                  v31 = [v30 differenceFromArray:icons2];
                  if ([v31 hasChanges])
                  {
                    v76 = v30;
                    v77 = icons2;
                    if ((v5 & 1) == 0)
                    {
                      [(SBHLibraryCategory *)selfCopy _noteFolderWillUpdateIcons:v71];
                      [v69 addObject:v71];
                    }

                    v84 = 0u;
                    v85 = 0u;
                    v82 = 0u;
                    v83 = 0u;
                    removals = [v31 removals];
                    v33 = [removals countByEnumeratingWithState:&v82 objects:v97 count:16];
                    if (v33)
                    {
                      v34 = v33;
                      v35 = *v83;
                      do
                      {
                        for (j = 0; j != v34; ++j)
                        {
                          if (*v83 != v35)
                          {
                            objc_enumerationMutation(removals);
                          }

                          object = [*(*(&v82 + 1) + 8 * j) object];
                          [v25 removeIcon:object];
                        }

                        v34 = [removals countByEnumeratingWithState:&v82 objects:v97 count:16];
                      }

                      while (v34);
                    }

                    v80 = 0u;
                    v81 = 0u;
                    v78 = 0u;
                    v79 = 0u;
                    insertions = [v31 insertions];
                    v39 = [insertions countByEnumeratingWithState:&v78 objects:v96 count:16];
                    if (v39)
                    {
                      v40 = v39;
                      v41 = *v79;
                      do
                      {
                        for (k = 0; k != v40; ++k)
                        {
                          if (*v79 != v41)
                          {
                            objc_enumerationMutation(insertions);
                          }

                          v43 = *(*(&v78 + 1) + 8 * k);
                          object2 = [v43 object];
                          v45 = [v25 insertIcon:object2 atIndex:{objc_msgSend(v43, "index")}];
                        }

                        v40 = [insertions countByEnumeratingWithState:&v78 objects:v96 count:16];
                      }

                      while (v40);
                    }

                    v5 = 1;
                    v23 = v72;
                    v20 = v73;
                    v22 = v74;
                    v30 = v76;
                    icons2 = v77;
                  }

                  [v20 removeObjectsInRange:{0, v29}];

                  ++v24;
                }

                while (v24 != v22);
                v22 = [lists countByEnumeratingWithState:&v86 objects:v98 count:16];
              }

              while (v22);
            }

            while ([v20 count])
            {
              addEmptyList = [v71 addEmptyList];
              v47 = [v20 count];
              maxNumberOfIcons2 = [addEmptyList maxNumberOfIcons];
              if (v47 >= maxNumberOfIcons2)
              {
                v47 = maxNumberOfIcons2;
              }

              v49 = [v20 subarrayWithRange:{0, v47}];
              v50 = [v71 addListWithIcons:v49];

              [v20 removeObjectsInRange:{0, v47}];
            }

            self = selfCopy;
            v17 = v67;
            i = v68;
            v19 = v65;
            icons = v66;
            if (v5)
            {
              [(SBHLibraryCategory *)selfCopy _noteFolderDidUpdateIcons:v71];
            }
          }

          else
          {
            [(SBHLibraryCategory *)self _noteFolderWillUpdateIcons:v16];
            v51 = [v16 addIcons:v19];
            [(SBHLibraryCategory *)self _noteFolderDidUpdateIcons:v16];
            v5 = 1;
          }

          objc_autoreleasePoolPop(v17);
        }

        v64 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
      }

      while (v64);
    }

    iconsCopy = v60;
    v52 = [v60 copy];
    icons = self->_icons;
    self->_icons = v52;

    [(SBHLibraryCategory *)self _refreshAggregateIconLabelAccessoryType];
    [(SBHLibraryCategory *)self _noteCategoryDidUpdate];
  }

  return v5 & 1;
}

- (void)_noteCategoryWillUpdate
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
          [v8 categoryWillUpdate:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_noteCategoryDidUpdate
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
          [v8 categoryDidUpdate:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_noteFolderWillUpdateIcons:(id)icons
{
  v16 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
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
          [v10 category:self willUpdateIconsWithinFolder:{iconsCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_noteFolderDidUpdateIcons:(id)icons
{
  v16 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
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
          [v10 category:self didUpdateIconsWithinFolder:{iconsCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_buildDisplayedIconsForFolder:(id)folder icons:(id)icons
{
  folderCopy = folder;
  iconsCopy = icons;
  compactPodFolder = [(SBHLibraryCategory *)self compactPodFolder];

  if (compactPodFolder != folderCopy)
  {
    compactPodAdditionalItemsFolder = [(SBHLibraryCategory *)self compactPodAdditionalItemsFolder];
    v10 = compactPodAdditionalItemsFolder;
    if (compactPodAdditionalItemsFolder != folderCopy)
    {

LABEL_10:
      expandedPodFolder = [(SBHLibraryCategory *)self expandedPodFolder];

      if (expandedPodFolder != folderCopy)
      {
        v17 = MEMORY[0x1E695E0F0];
        goto LABEL_15;
      }

      v15 = [iconsCopy sortedArrayUsingSelector:sel_localizedCompareDisplayNames_];
      goto LABEL_14;
    }

    v14 = [iconsCopy count];

    if (v14 < 5)
    {
      goto LABEL_10;
    }

    v13 = [iconsCopy count] - 3;
    v11 = iconsCopy;
    v12 = 3;
    goto LABEL_9;
  }

  if ([iconsCopy count] < 5)
  {
    v15 = [iconsCopy copy];
    goto LABEL_14;
  }

  if ([(SBHLibraryCategory *)self overflowBehavior])
  {
    v11 = iconsCopy;
    v12 = 0;
    v13 = 4;
LABEL_9:
    v15 = [v11 subarrayWithRange:{v12, v13}];
LABEL_14:
    v17 = v15;
    goto LABEL_15;
  }

  v19 = [iconsCopy subarrayWithRange:{0, 3}];
  additionalItemsIndicatorIcon = [(SBHLibraryCategory *)self additionalItemsIndicatorIcon];
  v17 = [v19 arrayByAddingObject:additionalItemsIndicatorIcon];

LABEL_15:

  return v17;
}

- (SBHLibraryCategoryFolder)compactPodFolder
{
  compactPodFolder = self->_compactPodFolder;
  if (!compactPodFolder)
  {
    v4 = [SBHLibraryCategoryFolder alloc];
    categoryIdentifier = [(SBHLibraryCategory *)self categoryIdentifier];
    localizedDisplayName = [categoryIdentifier localizedDisplayName];
    categoryIdentifier2 = [(SBHLibraryCategory *)self categoryIdentifier];
    v8 = [(SBHLibraryCategoryFolder *)v4 initWithDisplayName:localizedDisplayName maxListCount:1 listGridSize:131074 libraryCategoryIdentifier:categoryIdentifier2];
    v9 = self->_compactPodFolder;
    self->_compactPodFolder = v8;

    compactPodFolder = self->_compactPodFolder;
  }

  v10 = compactPodFolder;

  return v10;
}

- (SBHLibraryCategoryFolder)compactPodAdditionalItemsFolder
{
  compactPodAdditionalItemsFolder = self->_compactPodAdditionalItemsFolder;
  if (!compactPodAdditionalItemsFolder)
  {
    v4 = [SBHLibraryCategoryFolder alloc];
    categoryIdentifier = [(SBHLibraryCategory *)self categoryIdentifier];
    localizedDisplayName = [categoryIdentifier localizedDisplayName];
    categoryIdentifier2 = [(SBHLibraryCategory *)self categoryIdentifier];
    v8 = [(SBHLibraryCategoryFolder *)v4 initWithDisplayName:localizedDisplayName maxListCount:10000 listGridSize:131074 libraryCategoryIdentifier:categoryIdentifier2];
    v9 = self->_compactPodAdditionalItemsFolder;
    self->_compactPodAdditionalItemsFolder = v8;

    compactPodAdditionalItemsFolder = self->_compactPodAdditionalItemsFolder;
  }

  v10 = compactPodAdditionalItemsFolder;

  return v10;
}

- (SBHLibraryCategoryFolder)expandedPodFolder
{
  expandedPodFolder = self->_expandedPodFolder;
  if (!expandedPodFolder)
  {
    v4 = [SBHLibraryCategoryFolder alloc];
    categoryIdentifier = [(SBHLibraryCategory *)self categoryIdentifier];
    localizedDisplayName = [categoryIdentifier localizedDisplayName];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    categoryIdentifier2 = [(SBHLibraryCategory *)self categoryIdentifier];
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v10 = 4294901766;
    }

    else
    {
      v10 = 4294901764;
    }

    v11 = [(SBHLibraryCategoryFolder *)v4 initWithDisplayName:localizedDisplayName maxListCount:1 listGridSize:v10 libraryCategoryIdentifier:categoryIdentifier2];
    v12 = self->_expandedPodFolder;
    self->_expandedPodFolder = v11;

    expandedPodFolder = self->_expandedPodFolder;
  }

  v13 = expandedPodFolder;

  return v13;
}

- (SBHLibraryAdditionalItemsIndicatorIcon)additionalItemsIndicatorIcon
{
  additionalItemsIndicatorIcon = self->_additionalItemsIndicatorIcon;
  if (!additionalItemsIndicatorIcon)
  {
    v4 = [[SBHLibraryAdditionalItemsIndicatorIcon alloc] initWithCategory:self];
    v5 = self->_additionalItemsIndicatorIcon;
    self->_additionalItemsIndicatorIcon = v4;

    v6 = self->_additionalItemsIndicatorIcon;
    iconDelegate = [(SBHLibraryCategory *)self iconDelegate];
    [(SBIcon *)v6 setDelegate:iconDelegate];

    additionalItemsIndicatorIcon = self->_additionalItemsIndicatorIcon;
  }

  v8 = additionalItemsIndicatorIcon;

  return v8;
}

- (NSString)leafIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  categoryIdentifier = [(SBHLibraryCategory *)self categoryIdentifier];
  predictionCategoryID = [categoryIdentifier predictionCategoryID];
  categoryIdentifier2 = [(SBHLibraryCategory *)self categoryIdentifier];
  localizedDisplayName = [categoryIdentifier2 localizedDisplayName];
  v8 = [v3 stringWithFormat:@"dewey_category-%lu-%@", predictionCategoryID, localizedDisplayName];

  return v8;
}

- (SBIconDelegate)iconDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconDelegate);

  return WeakRetained;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  v4 = [(SBHLibraryCategory *)self categoryIdentifier:icon];
  localizedDisplayName = [v4 localizedDisplayName];

  return localizedDisplayName;
}

- (id)supportedGridSizeClassesForIcon:(id)icon
{
  v3 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:@"SBHIconGridSizeClassSmall"];

  return v3;
}

@end