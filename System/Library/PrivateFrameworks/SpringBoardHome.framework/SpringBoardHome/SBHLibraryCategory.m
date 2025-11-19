@interface SBHLibraryCategory
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCategory:(id)a3;
- (BOOL)updateCategoryIdentifier:(id)a3;
- (BOOL)updateCategoryWithIcons:(id)a3;
- (NSString)description;
- (NSString)leafIdentifier;
- (SBHLibraryAdditionalItemsIndicatorIcon)additionalItemsIndicatorIcon;
- (SBHLibraryCategory)init;
- (SBHLibraryCategoryFolder)compactPodAdditionalItemsFolder;
- (SBHLibraryCategoryFolder)compactPodFolder;
- (SBHLibraryCategoryFolder)expandedPodFolder;
- (SBIconDelegate)iconDelegate;
- (id)_buildDisplayedIconsForFolder:(id)a3 icons:(id)a4;
- (id)icon:(id)a3 displayNameForLocation:(id)a4;
- (id)supportedGridSizeClassesForIcon:(id)a3;
- (void)_localizedDisplayNameChangedTo:(id)a3;
- (void)_noteCategoryDidUpdate;
- (void)_noteCategoryWillUpdate;
- (void)_noteFolderDidUpdateIcons:(id)a3;
- (void)_noteFolderWillUpdateIcons:(id)a3;
- (void)_refreshAggregateIconLabelAccessoryType;
- (void)addObserver:(id)a3;
- (void)setCategoryIdentifier:(id)a3;
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

        v9 = [*(*(&v12 + 1) + 8 * i) labelAccessoryType];
        if (v9 == 1)
        {

          v10 = 1;
          goto LABEL_14;
        }

        v6 |= v9 != 4;
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
    v11 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [v11 postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
  }
}

- (SBHLibraryCategory)init
{
  v6.receiver = self;
  v6.super_class = SBHLibraryCategory;
  v2 = [(SBHLibraryCategory *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBHLibraryCategory *)self icons];
  v5 = [v3 appendObject:v4 withName:@"icons"];

  v6 = [(SBHLibraryCategory *)self categoryIdentifier];
  v7 = [v3 appendObject:v6 withName:@"categoryIdentifier"];

  additionalItemsIndicatorIcon = self->_additionalItemsIndicatorIcon;
  if (additionalItemsIndicatorIcon)
  {
    v9 = [v3 appendPointer:additionalItemsIndicatorIcon withName:@"additionalItemsIndicatorIcon"];
  }

  v10 = [v3 build];

  return v10;
}

- (BOOL)isEqualToCategory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = [(SBHLibraryCategory *)v4 categoryIdentifier];
    v7 = [(SBHLibraryCategory *)self categoryIdentifier];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [(SBHLibraryCategory *)v5 icons];
      v11 = [(SBHLibraryCategory *)self icons];
      v9 = BSEqualObjects();
    }
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHLibraryCategory *)self isEqualToCategory:v4];
  }

  return v5;
}

- (void)_localizedDisplayNameChangedTo:(id)a3
{
  v10 = a3;
  v4 = [(SBFolder *)self->_compactPodFolder displayName];
  v5 = [v4 isEqualToString:v10];

  if ((v5 & 1) == 0)
  {
    [(SBFolder *)self->_compactPodFolder setDisplayName:v10];
  }

  v6 = [(SBFolder *)self->_compactPodAdditionalItemsFolder displayName];
  v7 = [v6 isEqualToString:v10];

  if ((v7 & 1) == 0)
  {
    [(SBFolder *)self->_compactPodAdditionalItemsFolder setDisplayName:v10];
  }

  v8 = [(SBFolder *)self->_expandedPodFolder displayName];
  v9 = [v8 isEqualToString:v10];

  if ((v9 & 1) == 0)
  {
    [(SBFolder *)self->_expandedPodFolder setDisplayName:v10];
  }
}

- (void)setCategoryIdentifier:(id)a3
{
  v6 = a3;
  if (![(SBHLibraryCategoryIdentifier *)self->_categoryIdentifier isEqual:?])
  {
    objc_storeStrong(&self->_categoryIdentifier, a3);
    v5 = [v6 localizedDisplayName];
    [(SBHLibraryCategory *)self _localizedDisplayNameChangedTo:v5];

    self->_overflowBehavior = [v6 predictionCategoryID] == 3;
  }
}

- (BOOL)updateCategoryIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryCategoryIdentifier *)self->_categoryIdentifier isEqual:v4];
  if (!v5)
  {
    [(SBHLibraryCategory *)self _noteCategoryWillUpdate];
    [(SBHLibraryCategory *)self setCategoryIdentifier:v4];
    [(SBHLibraryCategory *)self _noteCategoryDidUpdate];
  }

  return !v5;
}

- (BOOL)updateCategoryWithIcons:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSArray *)self->_icons isEqualToArray:v4])
  {
    v5 = 0;
  }

  else
  {
    [(SBHLibraryCategory *)self _noteCategoryWillUpdate];
    v6 = [(SBHLibraryCategory *)self categoryIdentifier];
    v7 = [v6 localizedDisplayName];

    v69 = objc_opt_new();
    v8 = [(SBHLibraryCategory *)self compactPodFolder];
    v9 = [(SBHLibraryCategory *)self compactPodAdditionalItemsFolder];
    v10 = [(SBHLibraryCategory *)self expandedPodFolder];
    [v8 setDisplayName:v7];
    [v9 setDisplayName:v7];
    v59 = v7;
    [v10 setDisplayName:v7];
    v11 = objc_opt_new();
    v58 = v8;
    [v11 bs_safeAddObject:v8];
    v57 = v9;
    [v11 bs_safeAddObject:v9];
    v56 = v10;
    [v11 bs_safeAddObject:v10];
    [(NSArray *)self->_icons makeObjectsPerformSelector:sel_removeObserver_ withObject:self];
    [v4 makeObjectsPerformSelector:sel_addObserver_ withObject:self];
    v12 = [(SBHLibraryCategory *)self additionalItemsIndicatorIcon];
    v13 = MEMORY[0x1E696AE18];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __46__SBHLibraryCategory_updateCategoryWithIcons___block_invoke;
    v94[3] = &unk_1E8089628;
    v55 = v12;
    v95 = v55;
    v14 = [v13 predicateWithBlock:v94];
    v60 = v4;
    v63 = [v4 filteredArrayUsingPredicate:v14];

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
      v70 = self;
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
          v18 = [v16 icons];
          v19 = [(SBHLibraryCategory *)self _buildDisplayedIconsForFolder:v16 icons:v63];
          if ([v18 count] || !objc_msgSend(v19, "count"))
          {
            v66 = v18;
            v67 = v17;
            v68 = i;
            v65 = v19;
            v20 = [v19 mutableCopy];
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v71 = v16;
            v75 = [v16 lists];
            v21 = [v75 countByEnumeratingWithState:&v86 objects:v98 count:16];
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
                    objc_enumerationMutation(v75);
                  }

                  v25 = *(*(&v86 + 1) + 8 * v24);
                  v26 = [v25 icons];
                  v27 = [v20 count];
                  v28 = [v25 maxNumberOfIcons];
                  if (v27 >= v28)
                  {
                    v29 = v28;
                  }

                  else
                  {
                    v29 = v27;
                  }

                  v30 = [v20 subarrayWithRange:{0, v29}];
                  v31 = [v30 differenceFromArray:v26];
                  if ([v31 hasChanges])
                  {
                    v76 = v30;
                    v77 = v26;
                    if ((v5 & 1) == 0)
                    {
                      [(SBHLibraryCategory *)v70 _noteFolderWillUpdateIcons:v71];
                      [v69 addObject:v71];
                    }

                    v84 = 0u;
                    v85 = 0u;
                    v82 = 0u;
                    v83 = 0u;
                    v32 = [v31 removals];
                    v33 = [v32 countByEnumeratingWithState:&v82 objects:v97 count:16];
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
                            objc_enumerationMutation(v32);
                          }

                          v37 = [*(*(&v82 + 1) + 8 * j) object];
                          [v25 removeIcon:v37];
                        }

                        v34 = [v32 countByEnumeratingWithState:&v82 objects:v97 count:16];
                      }

                      while (v34);
                    }

                    v80 = 0u;
                    v81 = 0u;
                    v78 = 0u;
                    v79 = 0u;
                    v38 = [v31 insertions];
                    v39 = [v38 countByEnumeratingWithState:&v78 objects:v96 count:16];
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
                            objc_enumerationMutation(v38);
                          }

                          v43 = *(*(&v78 + 1) + 8 * k);
                          v44 = [v43 object];
                          v45 = [v25 insertIcon:v44 atIndex:{objc_msgSend(v43, "index")}];
                        }

                        v40 = [v38 countByEnumeratingWithState:&v78 objects:v96 count:16];
                      }

                      while (v40);
                    }

                    v5 = 1;
                    v23 = v72;
                    v20 = v73;
                    v22 = v74;
                    v30 = v76;
                    v26 = v77;
                  }

                  [v20 removeObjectsInRange:{0, v29}];

                  ++v24;
                }

                while (v24 != v22);
                v22 = [v75 countByEnumeratingWithState:&v86 objects:v98 count:16];
              }

              while (v22);
            }

            while ([v20 count])
            {
              v46 = [v71 addEmptyList];
              v47 = [v20 count];
              v48 = [v46 maxNumberOfIcons];
              if (v47 >= v48)
              {
                v47 = v48;
              }

              v49 = [v20 subarrayWithRange:{0, v47}];
              v50 = [v71 addListWithIcons:v49];

              [v20 removeObjectsInRange:{0, v47}];
            }

            self = v70;
            v17 = v67;
            i = v68;
            v19 = v65;
            v18 = v66;
            if (v5)
            {
              [(SBHLibraryCategory *)v70 _noteFolderDidUpdateIcons:v71];
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

    v4 = v60;
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

- (void)_noteFolderWillUpdateIcons:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
          [v10 category:self willUpdateIconsWithinFolder:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_noteFolderDidUpdateIcons:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
          [v10 category:self didUpdateIconsWithinFolder:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_buildDisplayedIconsForFolder:(id)a3 icons:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHLibraryCategory *)self compactPodFolder];

  if (v8 != v6)
  {
    v9 = [(SBHLibraryCategory *)self compactPodAdditionalItemsFolder];
    v10 = v9;
    if (v9 != v6)
    {

LABEL_10:
      v16 = [(SBHLibraryCategory *)self expandedPodFolder];

      if (v16 != v6)
      {
        v17 = MEMORY[0x1E695E0F0];
        goto LABEL_15;
      }

      v15 = [v7 sortedArrayUsingSelector:sel_localizedCompareDisplayNames_];
      goto LABEL_14;
    }

    v14 = [v7 count];

    if (v14 < 5)
    {
      goto LABEL_10;
    }

    v13 = [v7 count] - 3;
    v11 = v7;
    v12 = 3;
    goto LABEL_9;
  }

  if ([v7 count] < 5)
  {
    v15 = [v7 copy];
    goto LABEL_14;
  }

  if ([(SBHLibraryCategory *)self overflowBehavior])
  {
    v11 = v7;
    v12 = 0;
    v13 = 4;
LABEL_9:
    v15 = [v11 subarrayWithRange:{v12, v13}];
LABEL_14:
    v17 = v15;
    goto LABEL_15;
  }

  v19 = [v7 subarrayWithRange:{0, 3}];
  v20 = [(SBHLibraryCategory *)self additionalItemsIndicatorIcon];
  v17 = [v19 arrayByAddingObject:v20];

LABEL_15:

  return v17;
}

- (SBHLibraryCategoryFolder)compactPodFolder
{
  compactPodFolder = self->_compactPodFolder;
  if (!compactPodFolder)
  {
    v4 = [SBHLibraryCategoryFolder alloc];
    v5 = [(SBHLibraryCategory *)self categoryIdentifier];
    v6 = [v5 localizedDisplayName];
    v7 = [(SBHLibraryCategory *)self categoryIdentifier];
    v8 = [(SBHLibraryCategoryFolder *)v4 initWithDisplayName:v6 maxListCount:1 listGridSize:131074 libraryCategoryIdentifier:v7];
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
    v5 = [(SBHLibraryCategory *)self categoryIdentifier];
    v6 = [v5 localizedDisplayName];
    v7 = [(SBHLibraryCategory *)self categoryIdentifier];
    v8 = [(SBHLibraryCategoryFolder *)v4 initWithDisplayName:v6 maxListCount:10000 listGridSize:131074 libraryCategoryIdentifier:v7];
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
    v5 = [(SBHLibraryCategory *)self categoryIdentifier];
    v6 = [v5 localizedDisplayName];
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = [(SBHLibraryCategory *)self categoryIdentifier];
    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v10 = 4294901766;
    }

    else
    {
      v10 = 4294901764;
    }

    v11 = [(SBHLibraryCategoryFolder *)v4 initWithDisplayName:v6 maxListCount:1 listGridSize:v10 libraryCategoryIdentifier:v9];
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
    v7 = [(SBHLibraryCategory *)self iconDelegate];
    [(SBIcon *)v6 setDelegate:v7];

    additionalItemsIndicatorIcon = self->_additionalItemsIndicatorIcon;
  }

  v8 = additionalItemsIndicatorIcon;

  return v8;
}

- (NSString)leafIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SBHLibraryCategory *)self categoryIdentifier];
  v5 = [v4 predictionCategoryID];
  v6 = [(SBHLibraryCategory *)self categoryIdentifier];
  v7 = [v6 localizedDisplayName];
  v8 = [v3 stringWithFormat:@"dewey_category-%lu-%@", v5, v7];

  return v8;
}

- (SBIconDelegate)iconDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconDelegate);

  return WeakRetained;
}

- (id)icon:(id)a3 displayNameForLocation:(id)a4
{
  v4 = [(SBHLibraryCategory *)self categoryIdentifier:a3];
  v5 = [v4 localizedDisplayName];

  return v5;
}

- (id)supportedGridSizeClassesForIcon:(id)a3
{
  v3 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:@"SBHIconGridSizeClassSmall"];

  return v3;
}

@end