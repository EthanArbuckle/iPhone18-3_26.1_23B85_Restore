@interface SBHLibraryCategoriesFolderDataSource
- (BOOL)containsIcon:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDataSource:(id)a3;
- (NSArray)categoryIdentifiers;
- (SBHLibraryCategoriesFolderDataSource)initWithCategoriesFolder:(id)a3;
- (id)categoryForIdentifier:(id)a3;
- (id)reloadData;
- (id)reloadDataSourceUsingIcons:(id)a3 categoryMap:(id)a4;
- (id)reloadDataWithCategoryMap:(id)a3;
- (unint64_t)categoryIdentifiersCount;
- (void)_noteDidAddIcon:(id)a3;
- (void)_noteDidReplaceIcon:(id)a3;
- (void)_noteIconVisibilityDidChange:(id)a3;
- (void)_noteWillLayoutIconState:(id)a3;
- (void)_noteWillRemoveIcon:(id)a3;
- (void)_regenerateCategoriesFolder;
- (void)setMaximumNumberOfDisplayedCategories:(int64_t)a3;
@end

@implementation SBHLibraryCategoriesFolderDataSource

- (SBHLibraryCategoriesFolderDataSource)initWithCategoriesFolder:(id)a3
{
  v5 = a3;
  v6 = [v5 model];
  v13.receiver = self;
  v13.super_class = SBHLibraryCategoriesFolderDataSource;
  v7 = [(SBHLibraryCategoriesFolderDataSource *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_iconModel, v6);
    objc_storeStrong(&v8->_categoriesFolder, a3);
    v8->_maximumNumberOfDisplayedCategories = -1;
    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v8 selector:sel__noteDidAddIcon_ name:@"SBIconModelDidAddIconNotification" object:v8->_iconModel];
    [v11 addObserver:v8 selector:sel__noteDidReplaceIcon_ name:@"SBIconModelDidReplaceIconNotification" object:v8->_iconModel];
    [v11 addObserver:v8 selector:sel__noteWillRemoveIcon_ name:@"SBIconModelWillRemoveIconNotification" object:v8->_iconModel];
    [v11 addObserver:v8 selector:sel__noteIconVisibilityDidChange_ name:@"SBIconModelVisibilityDidChangeNotification" object:v8->_iconModel];
    [v11 addObserver:v8 selector:sel__noteWillLayoutIconState_ name:@"SBIconModelWillLayoutIconStateNotification" object:v8->_iconModel];
  }

  return v8;
}

- (BOOL)isEqualToDataSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v15 = 1;
    }

    else
    {
      v6 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
      mappedIcons = self->_mappedIcons;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60__SBHLibraryCategoriesFolderDataSource_isEqualToDataSource___block_invoke;
      v21[3] = &unk_1E808CAD8;
      v8 = v5;
      v22 = v8;
      v9 = [v6 appendObject:mappedIcons counterpart:v21];
      iconModel = self->_iconModel;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60__SBHLibraryCategoriesFolderDataSource_isEqualToDataSource___block_invoke_2;
      v19[3] = &unk_1E808CAD8;
      v11 = v8;
      v20 = v11;
      v12 = [v6 appendObject:iconModel counterpart:v19];
      categoriesFolder = self->_categoriesFolder;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __60__SBHLibraryCategoriesFolderDataSource_isEqualToDataSource___block_invoke_3;
      v17[3] = &unk_1E808CAD8;
      v18 = v11;
      v14 = [v6 appendObject:categoriesFolder counterpart:v17];
      v15 = [v6 isEqual];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHLibraryCategoriesFolderDataSource *)self isEqualToDataSource:v4];

  return v5;
}

- (id)reloadData
{
  v3 = [(SBHLibraryCategoriesFolderDataSource *)self iconModel];
  v4 = [v3 leafIcons];
  v5 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataSourceUsingIcons:v4 categoryMap:self->_categoryMap];

  return v5;
}

- (id)reloadDataWithCategoryMap:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryCategoriesFolderDataSource *)self iconModel];
  v6 = [v5 leafIcons];

  v7 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataSourceUsingIcons:v6 categoryMap:v4];

  return v7;
}

- (id)reloadDataSourceUsingIcons:(id)a3 categoryMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isEqual:self->_mappedIcons] || (objc_msgSend(v7, "isEqualToCategoryMap:", self->_categoryMap) & 1) == 0)
  {
    v8 = [v6 copy];
    mappedIcons = self->_mappedIcons;
    self->_mappedIcons = v8;

    objc_storeStrong(&self->_categoryMap, a4);
    [(SBHLibraryCategoriesFolderDataSource *)self _regenerateCategoriesFolder];
    objc_storeStrong(&self->_categoryMap, a4);
  }

  categoriesFolder = self->_categoriesFolder;
  v11 = categoriesFolder;

  return categoriesFolder;
}

- (void)setMaximumNumberOfDisplayedCategories:(int64_t)a3
{
  if (self->_maximumNumberOfDisplayedCategories != a3)
  {
    self->_maximumNumberOfDisplayedCategories = a3;
    [(SBHLibraryCategoriesFolderDataSource *)self _regenerateCategoriesFolder];
  }
}

- (BOOL)containsIcon:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SBHLibraryCategoriesFolderDataSource *)self categoriesFolder];
  v6 = [v5 icons];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) category];
        v11 = [v10 icons];
        v12 = [v11 containsObject:v4];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)categoryForIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(SBHLibraryCategoriesFolderDataSource *)self categoriesFolder];
  v6 = [v5 icons];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 category];
        v12 = [v11 categoryIdentifier];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v7 = [v10 category];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (NSArray)categoryIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SBHLibraryCategoriesFolderDataSource *)self categoriesFolder];
  v5 = [v4 icons];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) category];
        v11 = [v10 categoryIdentifier];
        [v3 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (unint64_t)categoryIdentifiersCount
{
  v2 = [(SBHLibraryCategoriesFolderDataSource *)self categoriesFolder];
  v3 = [v2 icons];
  v4 = [v3 count];

  return v4;
}

- (void)_regenerateCategoriesFolder
{
  v184 = *MEMORY[0x1E69E9840];
  v3 = [(SBHLibraryCategoriesFolderDataSource *)self iconModel];
  v4 = objc_opt_new();
  mappedIcons = self->_mappedIcons;
  v170[0] = MEMORY[0x1E69E9820];
  v170[1] = 3221225472;
  v170[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke;
  v170[3] = &unk_1E808CB00;
  v104 = v3;
  v171 = v104;
  v6 = v4;
  v172 = v6;
  [(NSSet *)mappedIcons enumerateObjectsUsingBlock:v170];
  v7 = MEMORY[0x1E695DFD8];
  v118 = v6;
  v8 = [v6 allKeys];
  v114 = [v7 setWithArray:v8];

  v110 = objc_opt_new();
  v9 = objc_opt_new();
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v120 = self;
  v10 = [(SBRootFolder *)self->_categoriesFolder icons];
  v11 = [v10 countByEnumeratingWithState:&v166 objects:v183 count:16];
  v121 = v9;
  if (v11)
  {
    v12 = v11;
    v13 = *v167;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v167 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v166 + 1) + 8 * i);
        v16 = [v15 category];
        v17 = [v15 category];
        v18 = [v17 categoryIdentifier];

        v19 = [v9 objectForKey:v18];

        if (v19)
        {
          v20 = SBLogProactiveAppLibrary();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [v9 objectForKey:v18];
            *buf = 138412546;
            v180 = v16;
            v181 = 2112;
            v182 = v21;
            _os_log_error_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_ERROR, "Error; duplicate category: %@ / %@", buf, 0x16u);

            v9 = v121;
          }
        }

        else
        {
          [v9 bs_setSafeObject:v16 forKey:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v166 objects:v183 count:16];
    }

    while (v12);
  }

  v22 = [(SBFolder *)v120->_categoriesFolder firstList];
  v23 = [(SBHLibraryCategoryMap *)v120->_categoryMap categoryIdentifiers];
  v24 = [v23 count];
  maximumNumberOfDisplayedCategories = v120->_maximumNumberOfDisplayedCategories;
  if (v24 >= maximumNumberOfDisplayedCategories)
  {
    v26 = v120->_maximumNumberOfDisplayedCategories;
  }

  else
  {
    v26 = v24;
  }

  if (maximumNumberOfDisplayedCategories >= 0)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  v28 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v23 range:0 copyItems:{v27, 0}];

  v29 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_2;
  aBlock[3] = &unk_1E808CB70;
  v107 = v29;
  v162 = v107;
  v163 = v120;
  v103 = v114;
  v164 = v103;
  v165 = &__block_literal_global_47;
  v30 = _Block_copy(aBlock);
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v108 = v22;
  obj = [v22 icons];
  v31 = [obj countByEnumeratingWithState:&v157 objects:v178 count:16];
  v119 = v30;
  if (v31)
  {
    v32 = v31;
    v111 = 0;
    v115 = *v158;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v158 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v157 + 1) + 8 * j);
        v35 = [v34 category];
        v36 = [v35 categoryIdentifier];
        v155[0] = MEMORY[0x1E69E9820];
        v155[1] = 3221225472;
        v155[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_4;
        v155[3] = &unk_1E808CB98;
        v37 = v36;
        v156 = v37;
        v38 = [v28 bs_firstObjectPassingTest:v155];
        v39 = v38;
        if (v38 && v37 && ([v38 isEqualToCategoryIdentifier:v37] & 1) == 0 && objc_msgSend(v35, "updateCategoryIdentifier:", v39))
        {
          v40 = v39;

          v111 = 1;
          v37 = v40;
        }

        v41 = [v37 predictionCategoryID];
        v42 = v30[2](v30, v37);
        if (v41 != 7)
        {
          if (![v28 containsObject:v37] || !objc_msgSend(v42, "count") || (objc_msgSend(v35, "icons"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "count"), v43, !v44))
          {
            v45 = [v34 category];
            [v45 updateCategoryWithIcons:MEMORY[0x1E695E0F0]];

            [v108 removeIcon:v34];
            [v121 removeObjectForKey:v37];
            v46 = [v28 mutableCopy];
            [v46 removeObject:v37];
            v47 = [v46 copy];

            v111 = 1;
            v28 = v47;
          }

          v30 = v119;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v157 objects:v178 count:16];
    }

    while (v32);
  }

  else
  {
    v111 = 0;
  }

  v48 = objc_opt_new();
  v49 = objc_opt_new();
  v152[0] = MEMORY[0x1E69E9820];
  v152[1] = 3221225472;
  v152[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_5;
  v152[3] = &unk_1E808CBC0;
  v106 = v49;
  v153 = v106;
  v50 = v48;
  v154 = v50;
  [v108 enumerateIconsUsingBlock:v152];
  v150[0] = MEMORY[0x1E69E9820];
  v150[1] = 3221225472;
  v150[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_39;
  v150[3] = &unk_1E808CBE8;
  obja = v108;
  v151 = obja;
  v102 = v50;
  [v50 enumerateObjectsUsingBlock:v150];
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v116 = [v28 copy];
  v51 = [v116 countByEnumeratingWithState:&v146 objects:v177 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v147;
    v54 = v121;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v147 != v53)
        {
          objc_enumerationMutation(v116);
        }

        v56 = *(*(&v146 + 1) + 8 * k);
        if ([v56 predictionCategoryID] != 7)
        {
          v57 = [v54 objectForKey:v56];
          v58 = [v57 leafIdentifier];
          v59 = [v106 objectForKey:v58];

          v60 = v119[2](v119, v56);
          v143[0] = MEMORY[0x1E69E9820];
          v143[1] = 3221225472;
          v143[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_2_41;
          v143[3] = &unk_1E808CC10;
          v144 = v118;
          v145 = &__block_literal_global_47;
          v61 = [v60 bs_mapNoNulls:v143];
          if (![v61 count])
          {
            if (v59)
            {
              [obja removeIcon:v59];
            }

            if (v57)
            {
              [v57 updateCategoryWithIcons:v61];
              [v121 removeObjectForKey:v56];
              v62 = [v28 mutableCopy];
              [v62 removeObject:v56];
              v63 = [v62 copy];

              v28 = v63;
            }
          }

          v54 = v121;
        }
      }

      v52 = [v116 countByEnumeratingWithState:&v146 objects:v177 count:16];
    }

    while (v52);
  }

  v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v65 = [obja icons];
  v66 = [v65 countByEnumeratingWithState:&v139 objects:v176 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v140;
    do
    {
      for (m = 0; m != v67; ++m)
      {
        if (*v140 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v139 + 1) + 8 * m);
        v71 = [v70 leafIdentifier];
        [v64 setObject:v70 forKey:v71];
      }

      v67 = [v65 countByEnumeratingWithState:&v139 objects:v176 count:16];
    }

    while (v67);
  }

  v105 = v64;

  [obja removeAllIcons];
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v109 = v28;
  v72 = [v109 countByEnumeratingWithState:&v135 objects:v175 count:16];
  if (!v72)
  {
    v74 = v119;
    goto LABEL_91;
  }

  v73 = v72;
  v74 = v119;
  v117 = *v136;
  do
  {
    v75 = 0;
    do
    {
      if (*v136 != v117)
      {
        objc_enumerationMutation(v109);
      }

      v76 = *(*(&v135 + 1) + 8 * v75);
      v77 = objc_autoreleasePoolPush();
      v78 = [v121 objectForKey:v76];
      v79 = [(SBHLibraryCategory *)v78 leafIdentifier];
      if (v79)
      {
        v80 = [(SBFolder *)v120->_categoriesFolder iconWithIdentifier:v79];
        if (!v80)
        {
          v80 = [v105 objectForKey:v79];
          [v105 removeObjectForKey:v79];
        }
      }

      else
      {
        v80 = 0;
      }

      v81 = v74[2](v74, v76);
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_3_43;
      v132[3] = &unk_1E808CC10;
      v133 = v118;
      v134 = &__block_literal_global_47;
      v82 = [v81 bs_mapNoNulls:v132];
      v83 = [v76 predictionCategoryID];
      if ([v82 count])
      {
        v84 = 1;
      }

      else
      {
        v84 = v83 == 7;
      }

      if (!v84)
      {
        if (v80)
        {
          [obja removeIcon:v80];
        }

        v74 = v119;
        if (v78)
        {
          [(SBHLibraryCategory *)v78 updateCategoryWithIcons:v82];
          [v121 removeObjectForKey:v76];
        }

        [v107 removeObjectForKey:v76];
        goto LABEL_84;
      }

      if (v78)
      {
        if (!v80)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v78 = objc_alloc_init(SBHLibraryCategory);
        [(SBHLibraryCategory *)v78 setCategoryIdentifier:v76];
        v89 = [(SBHLibraryCategoriesFolderDataSource *)v120 iconModel];
        [(SBHLibraryCategory *)v78 setIconDelegate:v89];

        [v121 setObject:v78 forKey:v76];
        v111 = 1;
        if (!v80)
        {
LABEL_87:
          v80 = [[SBHLibraryPodCategoryIcon alloc] initWithCategory:v78];
          v111 = 1;
        }
      }

      v85 = [obja addIcon:v80];
      if ([(SBHLibraryCategory *)v78 updateCategoryWithIcons:v82])
      {
        [v110 addObject:v76];
      }

      v86 = [(SBHLibraryCategory *)v78 compactPodAdditionalItemsFolder];
      SBTreeNodeSetParent(v86, v120->_categoriesFolder);

      v87 = [(SBHLibraryCategory *)v78 compactPodFolder];
      SBTreeNodeSetParent(v87, v120->_categoriesFolder);

      v88 = [(SBHLibraryCategory *)v78 expandedPodFolder];
      SBTreeNodeSetParent(v88, v120->_categoriesFolder);

      v74 = v119;
LABEL_84:

      objc_autoreleasePoolPop(v77);
      ++v75;
    }

    while (v73 != v75);
    v90 = [v109 countByEnumeratingWithState:&v135 objects:v175 count:16];
    v73 = v90;
  }

  while (v90);
LABEL_91:

  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_4_46;
  v130[3] = &unk_1E808CC38;
  v91 = v109;
  v131 = v91;
  [obja sortUsingComparator:v130];
  [MEMORY[0x1E6979518] begin];
  if (v111)
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v92 = [(NSHashTable *)v120->_observers copy];
    v93 = [v92 countByEnumeratingWithState:&v126 objects:v174 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v127;
      do
      {
        for (n = 0; n != v94; ++n)
        {
          if (*v127 != v95)
          {
            objc_enumerationMutation(v92);
          }

          [*(*(&v126 + 1) + 8 * n) categoriesDataSourceNeedsAnimatedReload:v120];
        }

        v94 = [v92 countByEnumeratingWithState:&v126 objects:v174 count:16];
      }

      while (v94);
    }

    v74 = v119;
  }

  if ([v110 count])
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v97 = [(NSHashTable *)v120->_observers copy];
    v98 = [v97 countByEnumeratingWithState:&v122 objects:v173 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v123;
      do
      {
        for (ii = 0; ii != v99; ++ii)
        {
          if (*v123 != v100)
          {
            objc_enumerationMutation(v97);
          }

          [*(*(&v122 + 1) + 8 * ii) categoriesDataSource:v120 shouldAnimateLayoutForCategories:v110];
        }

        v99 = [v97 countByEnumeratingWithState:&v122 objects:v173 count:16];
      }

      while (v99);
    }

    v74 = v119;
  }

  [MEMORY[0x1E6979518] commit];
}

void __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) isIconVisible:?])
  {
    v3 = [v4 leafIdentifier];
    [*(a1 + 40) bs_setSafeObject:v4 forKey:v3];
  }
}

id __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 length];
  v4 = *MEMORY[0x1E69DE790];
  if (v3 > [*MEMORY[0x1E69DE790] length] && objc_msgSend(v2, "hasPrefix:", v4))
  {
    v5 = [v2 substringFromIndex:{objc_msgSend(v4, "length")}];

    v2 = v5;
  }

  return v2;
}

id __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = [*(*(a1 + 40) + 16) sortedApplicationIdentifiersForCategoryIdentifier:v3];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_3;
    v10 = &unk_1E808CB48;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v4 = [v5 bs_filter:&v7];
    [*(a1 + 32) bs_setSafeObject:v4 forKey:{v3, v7, v8, v9, v10}];
  }

  return v4;
}

uint64_t __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 containsObject:v2];

  return v3;
}

BOOL __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 predictionCategoryID];
  if (v4 == [*(a1 + 32) predictionCategoryID])
  {
    v5 = [v3 predictionCategoryIndex];
    v6 = v5 == [*(a1 + 32) predictionCategoryIndex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLeafIcon])
  {
    v4 = [v3 leafIdentifier];
    if (v4)
    {
      v5 = [*(a1 + 32) objectForKey:v4];

      if (v5)
      {
        [*(a1 + 40) addObject:v3];
        v6 = SBLogProactiveAppLibrary();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_5_cold_1(v3, v6);
        }
      }

      else
      {
        [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
      }
    }
  }
}

id __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_2_41(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

id __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_3_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

uint64_t __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_4_46(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 category];
  v8 = [v7 categoryIdentifier];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 category];

  v12 = [v11 categoryIdentifier];
  v13 = [v10 indexOfObject:v12];

  v14 = 1;
  if (v9 <= v13)
  {
    v14 = -1;
  }

  if (v9 == v13)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

- (void)_noteDidAddIcon:(id)a3
{
  if (self->_categoryMap)
  {
    v4 = [a3 userInfo];
    v9 = [v4 objectForKey:@"icon"];

    v6 = v9;
    if (v9)
    {
      v5 = [v9 isWidgetIcon];
      v6 = v9;
      if ((v5 & 1) == 0)
      {
        if (![v9 isApplicationIcon] || (v5 = objc_msgSend(v9, "leafIdentifierAndApplicationBundleIDMatches"), v6 = v9, v5))
        {
          v7 = [(NSSet *)self->_mappedIcons mutableCopy];
          [v7 bs_safeAddObject:v9];
          if (([v7 isEqualToSet:self->_mappedIcons] & 1) == 0)
          {
            v8 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataSourceUsingIcons:v7 categoryMap:self->_categoryMap];
          }

          v6 = v9;
        }
      }
    }

    MEMORY[0x1EEE66BB8](v5, v6);
  }
}

- (void)_noteDidReplaceIcon:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_categoryMap)
  {
    v4 = [a3 userInfo];
    v5 = [v4 objectForKey:@"icon"];

    if ([v5 isLeafIcon])
    {
      v6 = [(NSSet *)self->_mappedIcons mutableCopy];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v17 = self;
      v7 = self->_mappedIcons;
      v8 = [(NSSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = [v5 leafIdentifier];
            v14 = [v12 leafIdentifier];
            v15 = [v13 isEqualToString:v14];

            if (v15)
            {
              [v6 removeObject:v12];
            }
          }

          v9 = [(NSSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      if (([v6 isEqualToSet:v17->_mappedIcons] & 1) == 0)
      {
        v16 = [(SBHLibraryCategoriesFolderDataSource *)v17 reloadDataSourceUsingIcons:v6 categoryMap:v17->_categoryMap];
      }
    }
  }
}

- (void)_noteWillRemoveIcon:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_categoryMap)
  {
    v4 = [a3 userInfo];
    v5 = [v4 objectForKey:@"icon"];

    if ([v5 isLeafIcon] && (objc_msgSend(v5, "isWidgetIcon") & 1) == 0)
    {
      v6 = [(NSSet *)self->_mappedIcons mutableCopy];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v17 = self;
      v7 = self->_mappedIcons;
      v8 = [(NSSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = [v5 leafIdentifier];
            v14 = [v12 leafIdentifier];
            v15 = [v13 isEqualToString:v14];

            if (v15)
            {
              [v6 removeObject:v12];
            }
          }

          v9 = [(NSSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      if (([v6 isEqualToSet:v17->_mappedIcons] & 1) == 0)
      {
        v16 = [(SBHLibraryCategoriesFolderDataSource *)v17 reloadDataSourceUsingIcons:v6 categoryMap:v17->_categoryMap];
      }
    }
  }
}

- (void)_noteIconVisibilityDidChange:(id)a3
{
  if (self->_categoryMap)
  {
    v3 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataWithCategoryMap:?];
  }
}

- (void)_noteWillLayoutIconState:(id)a3
{
  if (self->_categoryMap)
  {
    v3 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataWithCategoryMap:?];
  }
}

void __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Found duplicate icon: %{public}@", &v2, 0xCu);
}

@end