@interface SearchUICollectionViewDataSource
- (BOOL)deviceIsAuthenticated;
- (NSDirectionalEdgeInsets)sectionsInsetsForSection:(id)a3 sectionIndex:(unint64_t)a4 totalNumberOfSections:(int64_t)a5 attributes:(id)a6;
- (SearchUICollectionViewController)controller;
- (SearchUICollectionViewDataSource)initWithController:(id)a3;
- (id)cellForRowModel:(id)a3 atIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)currentSnapshotLayoutConfiguration;
- (id)layoutSectionForSectionModel:(id)a3 layoutEnvironment:(id)a4 attributes:(id)a5;
- (id)rebuildAsyncLoaderResult:(id)a3 forCardSections:(id)a4;
- (id)rebuildSnapshot:(id)a3 replacingSectionModel:(id)a4 newSectionModel:(id)a5;
- (id)registerFooterView:(id)a3;
- (id)reuseIdentifierForFooterView:(id)a3;
- (id)reuseIdentifierForRowModel:(id)a3;
- (void)applySnapshot:(id)a3 animated:(BOOL)a4 skipsDiffing:(BOOL)a5 completion:(id)a6;
- (void)rebuildSnapshotForAsyncLoaders:(id)a3;
- (void)registerAllViewsForSnapshot:(id)a3;
- (void)registerCellForRowModel:(id)a3;
- (void)registerSupplementaryViews;
- (void)reloadModel;
- (void)reloadSection:(id)a3 animated:(BOOL)a4 reconfigureExisting:(BOOL)a5;
- (void)reloadSectionWithIdentifier:(id)a3 animated:(BOOL)a4 reconfigureExisting:(BOOL)a5;
- (void)removeRowModel:(id)a3 completion:(id)a4;
- (void)removeSectionContaining:(id)a3 completion:(id)a4;
- (void)removeSectionModel:(id)a3 completion:(id)a4;
- (void)setUpdateCompletionBlock:(id)a3;
- (void)updateWithSnapshot:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation SearchUICollectionViewDataSource

- (id)currentSnapshotLayoutConfiguration
{
  v3 = [SearchUICollectionViewLayoutConfiguration alloc];
  v4 = [(SearchUICollectionViewDataSource *)self snapshot];
  v5 = [(SearchUICollectionViewLayoutConfiguration *)v3 initWithSnapshot:v4];

  return v5;
}

- (void)registerSupplementaryViews
{
  v2 = [(SearchUICollectionViewDataSource *)self controller];
  v6 = [v2 collectionView];

  v3 = objc_opt_class();
  v4 = +[SearchUILayoutFooterView reuseIdentifier];
  v5 = +[SearchUILayoutFooterView reuseIdentifier];
  [v6 registerClass:v3 forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];

  [v6 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"SearchUIBackgroundReuseIdentifer" withReuseIdentifier:@"SearchUIBackgroundReuseIdentifer"];
  [SearchUISupplementaryProvider registerSupplementariesForCollectionView:v6];
}

- (SearchUICollectionViewController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (SearchUICollectionViewDataSource)initWithController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v5 = [v4 collectionView];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__SearchUICollectionViewDataSource_initWithController___block_invoke;
  v20[3] = &unk_1E85B3650;
  objc_copyWeak(&v21, &location);
  v19.receiver = self;
  v19.super_class = SearchUICollectionViewDataSource;
  v6 = [(SearchUICollectionViewDataSource *)&v19 initWithCollectionView:v5 cellProvider:v20];

  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.searchui.datasource", v7);
    applyQueue = v6->_applyQueue;
    v6->_applyQueue = v8;

    atomic_store(0, &v6->_numberOfUpdatesInProgress);
    objc_storeWeak(&v6->_controller, v4);
    v10 = objc_opt_new();
    registeredCellIdentifiers = v6->_registeredCellIdentifiers;
    v6->_registeredCellIdentifiers = v10;

    objc_initWeak(&from, v6);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __55__SearchUICollectionViewDataSource_initWithController___block_invoke_2;
    v16 = &unk_1E85B3678;
    objc_copyWeak(&v17, &from);
    [(SearchUICollectionViewDataSource *)v6 setSupplementaryViewProvider:&v13];
    [(SearchUICollectionViewDataSource *)v6 registerSupplementaryViews:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v6;
}

id __55__SearchUICollectionViewDataSource_initWithController___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained cellForRowModel:v6 atIndexPath:v7];

  return v9;
}

id __55__SearchUICollectionViewDataSource_initWithController___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionView:v9 viewForSupplementaryElementOfKind:v8 atIndexPath:v7];

  return v11;
}

- (void)registerAllViewsForSnapshot:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUICollectionViewDataSource *)self registeredCellIdentifiers];
  [v5 removeAllObjects];

  [(SearchUICollectionViewDataSource *)self registerSupplementaryViews];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v4 itemIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SearchUICollectionViewDataSource *)self registerCellForRowModel:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)registerCellForRowModel:(id)a3
{
  v10 = a3;
  v4 = [(SearchUICollectionViewDataSource *)self reuseIdentifierForRowModel:?];
  if (v4)
  {
    v5 = [(SearchUICollectionViewDataSource *)self registeredCellIdentifiers];
    v6 = [v5 containsObject:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [(SearchUICollectionViewDataSource *)self registeredCellIdentifiers];
      [v7 addObject:v4];

      v8 = [(SearchUICollectionViewDataSource *)self controller];
      v9 = [v8 collectionView];
      [v9 registerClass:objc_msgSend(v10 forCellWithReuseIdentifier:{"collectionViewCellClass"), v4}];
    }
  }
}

- (id)reuseIdentifierForRowModel:(id)a3
{
  v4 = a3;
  v5 = [v4 reuseIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SearchUICollectionViewDataSource *)self pointerStringFrom:v4];
  }

  v8 = v7;

  return v8;
}

- (void)reloadModel
{
  v3 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA169000, v3, OS_LOG_TYPE_DEFAULT, "Reloading with current snapshot.", v5, 2u);
  }

  v4 = [(SearchUICollectionViewDataSource *)self snapshot];
  [(SearchUICollectionViewDataSource *)self applySnapshot:v4 animated:0 skipsDiffing:1 completion:0];
}

- (void)reloadSection:(id)a3 animated:(BOOL)a4 reconfigureExisting:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(SearchUICollectionViewDataSource *)self snapshot];
  v10 = v9;
  if (v8 && [v9 indexOfSectionIdentifier:v8] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [v8 asyncLoader];

    if (v18)
    {
      v19 = [v8 asyncLoader];
      v20 = [v8 asyncLoader];
      v21 = [v20 cardSections];

      if (v21)
      {
        v46 = v6;
        v22 = SearchUIDataSourceLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138412546;
          v49 = v8;
          v50 = 2112;
          v51 = v24;
          _os_log_impl(&dword_1DA169000, v22, OS_LOG_TYPE_DEFAULT, "Rebuilding section %@ because of asyncLoader (%@).", buf, 0x16u);
        }

        v25 = [v10 itemIdentifiersInSectionWithIdentifier:v8];
        [v10 deleteItemsWithIdentifiers:v25];

        v26 = [[SearchUIDataSourceSnapshotBuilder alloc] initWithSnapshot:v10];
        v27 = [v19 searchResult];
        v28 = [(SearchUICollectionViewDataSource *)self rebuildAsyncLoaderResult:v27 forCardSections:v21];
        v29 = -[SearchUIDataSourceSnapshotBuilder buildRowModelsFromCardSections:result:isInline:queryId:](v26, "buildRowModelsFromCardSections:result:isInline:queryId:", v21, v28, 0, [v19 queryId]);

        v30 = [v8 copyWithRowModels:v29];
        v31 = [(SearchUICollectionViewDataSource *)self rebuildSnapshot:v10 replacingSectionModel:v8 newSectionModel:v30];

        v10 = v31;
        v8 = v30;
        v6 = v46;
      }
    }

    v32 = [v8 rowModels];
    v33 = [v32 count];

    if (v33)
    {
      v34 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v10, "indexOfSectionIdentifier:", v8)}];
      v35 = [(SearchUICollectionViewDataSource *)self controller];
      v36 = [v35 collectionView];
      v37 = [v36 supplementaryViewForElementKind:@"SearchUIBackgroundReuseIdentifer" atIndexPath:v34];

      if (v37)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
          v39 = [v8 backgroundColor];
          v40 = [v38 colorView];

          [v40 setColor:v39];
        }
      }

      v41 = [v10 itemIdentifiersInSectionWithIdentifier:v8];
      [v10 deleteItemsWithIdentifiers:v41];

      v42 = [v8 rowModels];
      [v10 appendItemsWithIdentifiers:v42 intoSectionWithIdentifier:v8];

      if (v5)
      {
        v43 = [v8 rowModels];
        [v10 reconfigureItemsWithIdentifiers:v43];
      }

      v44 = SearchUIDataSourceLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v8;
        _os_log_impl(&dword_1DA169000, v44, OS_LOG_TYPE_DEFAULT, "Reloading section %@.", buf, 0xCu);
      }
    }

    else
    {
      v47 = v8;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      [v10 deleteSectionsWithIdentifiers:v45];

      v34 = SearchUIDataSourceLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v8;
        _os_log_impl(&dword_1DA169000, v34, OS_LOG_TYPE_DEFAULT, "Reloading section %@. Removing because section is empty!", buf, 0xCu);
      }
    }

    [(SearchUICollectionViewDataSource *)self applySnapshot:v10 animated:v6 skipsDiffing:0 completion:0];
  }

  else
  {
    v11 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SearchUICollectionViewDataSource *)v8 reloadSection:v11 animated:v12 reconfigureExisting:v13, v14, v15, v16, v17];
    }
  }
}

- (void)reloadSectionWithIdentifier:(id)a3 animated:(BOOL)a4 reconfigureExisting:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 length])
  {
    v27 = v6;
    v28 = v5;
    v26 = self;
    v9 = [(SearchUICollectionViewDataSource *)self snapshot];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [v9 sectionIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = [v15 section];
        v17 = [v16 sectionIdentifier];
        v18 = [v17 isEqualToString:v8];

        if (v18)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v19 = v15;

      if (!v19)
      {
        goto LABEL_13;
      }

      [(SearchUICollectionViewDataSource *)v26 reloadSection:v19 animated:v27 reconfigureExisting:v28];
    }

    else
    {
LABEL_10:

LABEL_13:
      v19 = SearchUIDataSourceLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(SearchUICollectionViewDataSource *)v8 reloadSectionWithIdentifier:v19 animated:v20 reconfigureExisting:v21, v22, v23, v24, v25];
      }
    }
  }

  else
  {
    v9 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SearchUICollectionViewDataSource reloadSectionWithIdentifier:v9 animated:? reconfigureExisting:?];
    }
  }
}

- (BOOL)deviceIsAuthenticated
{
  v2 = [(SearchUICollectionViewDataSource *)self controller];
  v3 = [v2 view];
  v4 = [SearchUIUtilities deviceIsAuthenticatedForView:v3];

  return v4;
}

- (void)updateWithSnapshot:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(SearchUICollectionViewDataSource *)self rebuildSnapshotForAsyncLoaders:v8];
  v10 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "Updating with snapshot.", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__SearchUICollectionViewDataSource_updateWithSnapshot_animated_completion___block_invoke;
  v13[3] = &unk_1E85B2720;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(SearchUICollectionViewDataSource *)self applySnapshot:v12 animated:v6 skipsDiffing:v6 ^ 1 completion:v13];
}

uint64_t __75__SearchUICollectionViewDataSource_updateWithSnapshot_animated_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) sectionIdentifiers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) asyncLoader];
        [v7 start];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)rebuildSnapshotForAsyncLoaders:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Reloading snapshot for SectionAsyncLoaders", buf, 2u);
  }

  [v4 sectionIdentifiers];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v41;
    *&v7 = 138412546;
    v34 = v7;
    v35 = *v41;
    v36 = self;
    do
    {
      v10 = 0;
      v37 = v8;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = [v11 asyncLoader];

        if (v12)
        {
          v13 = [v11 asyncLoader];
          [v13 setDelegate:self];
          v14 = [v11 asyncLoader];
          v15 = [v14 cardSections];

          if (v15)
          {
            v16 = SearchUIDataSourceLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              *buf = v34;
              v46 = v11;
              v47 = 2112;
              v48 = v18;
              _os_log_impl(&dword_1DA169000, v16, OS_LOG_TYPE_DEFAULT, "Rebuilding section %@ because of asyncLoader (%@).", buf, 0x16u);
            }

            v19 = [v4 itemIdentifiersInSectionWithIdentifier:v11];
            [v4 deleteItemsWithIdentifiers:v19];

            v20 = [[SearchUIDataSourceSnapshotBuilder alloc] initWithSnapshot:v4];
            v21 = [v13 searchResult];
            v22 = [(SearchUICollectionViewDataSource *)self rebuildAsyncLoaderResult:v21 forCardSections:v15];
            v39 = v20;
            v23 = -[SearchUIDataSourceSnapshotBuilder buildRowModelsFromCardSections:result:isInline:queryId:](v20, "buildRowModelsFromCardSections:result:isInline:queryId:", v15, v22, 0, [v13 queryId]);

            v24 = [v11 copyWithRowModels:v23];
            v25 = [v24 rowModels];
            v26 = [v25 count];

            if (v26)
            {
              v27 = [(SearchUICollectionViewDataSource *)self rebuildSnapshot:v4 replacingSectionModel:v11 newSectionModel:v24];

              v28 = SearchUIDataSourceLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = objc_opt_class();
                v30 = NSStringFromClass(v29);
                *buf = v34;
                v46 = v11;
                v47 = 2112;
                v48 = v30;
                _os_log_impl(&dword_1DA169000, v28, OS_LOG_TYPE_DEFAULT, "Reloading section %@ because of asyncLoader (%@).", buf, 0x16u);
              }

              v4 = v27;
            }

            else
            {
              v44 = v11;
              v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
              [v4 deleteSectionsWithIdentifiers:v31];

              v28 = SearchUIDataSourceLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v32 = objc_opt_class();
                v33 = NSStringFromClass(v32);
                *buf = v34;
                v46 = v11;
                v47 = 2112;
                v48 = v33;
                _os_log_impl(&dword_1DA169000, v28, OS_LOG_TYPE_DEFAULT, "Removing section %@ because of asyncLoader (%@).", buf, 0x16u);
              }
            }

            v9 = v35;

            self = v36;
            v8 = v37;
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v8);
  }
}

- (id)rebuildSnapshot:(id)a3 replacingSectionModel:(id)a4 newSectionModel:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 indexOfSectionIdentifier:v8];
  v19[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v7 deleteSectionsWithIdentifiers:v11];

  if (v10 == [v7 numberOfSections])
  {
    v18 = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v7 appendSectionsWithIdentifiers:v12];
  }

  else
  {
    v13 = [v7 sectionIdentifiers];
    v12 = [v13 objectAtIndexedSubscript:v10];

    v17 = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [v7 insertSectionsWithIdentifiers:v14 beforeSectionWithIdentifier:v12];
  }

  v15 = [v9 rowModels];
  [v7 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v9];

  return v7;
}

- (id)rebuildAsyncLoaderResult:(id)a3 forCardSections:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithSearchResult:v6];
  v8 = [SearchUIUtilities cardForRenderingResult:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [v7 card];
  }

  v10 = v9;

  v11 = [v10 cardSections];
  if ([v11 count] == 1)
  {
    v12 = [v10 cardSections];
    v13 = [v12 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v10 cardSections];
      v16 = [v15 firstObject];
      v17 = [v16 copy];

      [v17 setCardSections:v5];
      v20[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v10 setCardSections:v18];
    }
  }

  else
  {
  }

  return v7;
}

- (id)registerFooterView:(id)a3
{
  v4 = [(SearchUICollectionViewDataSource *)self reuseIdentifierForFooterView:a3];
  v5 = [(SearchUICollectionViewDataSource *)self controller];
  v6 = [v5 collectionView];
  [v6 registerClass:objc_opt_class() forSupplementaryViewOfKind:v4 withReuseIdentifier:v4];

  return v4;
}

- (void)removeRowModel:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SearchUICollectionViewDataSource *)self snapshot];
  v9 = [v8 sectionIdentifierForSectionContainingItemIdentifier:v6];
  if (v9)
  {
    v23[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v8 deleteItemsWithIdentifiers:v10];

    if (![v8 numberOfItemsInSection:v9])
    {
      v22 = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      [v8 deleteSectionsWithIdentifiers:v11];
    }

    v12 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = [v6 itemIdentifier];
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1DA169000, v12, OS_LOG_TYPE_DEFAULT, "Removing rowModel %@ (%@).", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__SearchUICollectionViewDataSource_removeRowModel_completion___block_invoke;
    v16[3] = &unk_1E85B2680;
    v17 = v7;
    [(SearchUICollectionViewDataSource *)self applySnapshot:v8 animated:1 skipsDiffing:0 completion:v16];
  }

  else
  {
    v15 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SearchUICollectionViewDataSource removeRowModel:v6 completion:v15];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

uint64_t __62__SearchUICollectionViewDataSource_removeRowModel_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)removeSectionContaining:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SearchUICollectionViewDataSource *)self snapshot];
  v9 = [v8 sectionIdentifierForSectionContainingItemIdentifier:v6];
  v10 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = [v6 itemIdentifier];
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "Trying to remove section %@ containing rowModel %@ (%@).", &v13, 0x20u);
  }

  [(SearchUICollectionViewDataSource *)self removeSectionModel:v9 completion:v7];
}

- (void)removeSectionModel:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SearchUICollectionViewDataSource *)self snapshot];
  if (v6)
  {
    v23[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v8 deleteSectionsWithIdentifiers:v9];

    v10 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "Removing section %@", buf, 0xCu);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__SearchUICollectionViewDataSource_removeSectionModel_completion___block_invoke;
    v19[3] = &unk_1E85B2680;
    v20 = v7;
    [(SearchUICollectionViewDataSource *)self applySnapshot:v8 animated:1 skipsDiffing:0 completion:v19];
  }

  else
  {
    v11 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SearchUICollectionViewDataSource *)v11 removeSectionModel:v12 completion:v13, v14, v15, v16, v17, v18];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

uint64_t __66__SearchUICollectionViewDataSource_removeSectionModel_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)applySnapshot:(id)a3 animated:(BOOL)a4 skipsDiffing:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v14 = MEMORY[0x1E69DCA38];
  v15 = [(SearchUICollectionViewDataSource *)self controller];
  v16 = [v14 focusSystemForEnvironment:v15];

  if (v16)
  {
    v17 = [(SearchUICollectionViewDataSource *)self controller];
    v16 = [v17 focusableIndexPath];

    v18 = [(SearchUICollectionViewDataSource *)self controller];
    [v18 setFocusableIndexPath:0];
  }

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke;
  aBlock[3] = &unk_1E85B36C8;
  v34 = a5;
  objc_copyWeak(&v33, location);
  v19 = v11;
  v32 = v19;
  v20 = v16;
  v31 = v20;
  v21 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke_2;
  v24[3] = &unk_1E85B3718;
  objc_copyWeak(&v27, location);
  v28 = a5;
  v22 = v13;
  v25 = v22;
  v23 = v21;
  v26 = v23;
  v29 = a4;
  [SearchUIUtilities dispatchMainIfNecessary:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

void __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_1DA169000, v2, OS_LOG_TYPE_DEFAULT, "Applied snapshot, skisDiffing %d", buf, 8u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke_27;
  v4[3] = &unk_1E85B36A0;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  [SearchUIUtilities dispatchMainIfNecessary:v4];

  objc_destroyWeak(&v7);
}

void __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    atomic_fetch_add_explicit(WeakRetained + 6, 0xFFFFFFFF, memory_order_relaxed);
  }

  v4 = *(a1 + 40);
  v9 = v3;
  if (v4)
  {
    (*(v4 + 16))();
    v3 = v9;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [(atomic_uint *)v3 controller];
    [v6 setFocusableIndexPath:v5];

    v3 = v9;
  }

  v7 = [(atomic_uint *)v3 updateCompletionBlock];

  if (v7)
  {
    v8 = [(atomic_uint *)v9 updateCompletionBlock];
    (v8)[2](v8, v9);
  }
}

void __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = atomic_load(WeakRetained + 6);
  atomic_fetch_add_explicit(WeakRetained + 6, 1u, memory_order_relaxed);
  v4 = *(a1 + 56);
  v5 = SearchUIDataSourceLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1 && v3 < 1)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Applying snapshot synchronously", buf, 2u);
    }

    v10 = [WeakRetained applyQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke_29;
    v13[3] = &unk_1E85B3488;
    v13[4] = WeakRetained;
    v11 = &v14;
    v14 = *(a1 + 32);
    v12 = &v15;
    v15 = *(a1 + 40);
    dispatch_sync(v10, v13);
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 56);
      v9 = atomic_load(WeakRetained + 6);
      *buf = 67109376;
      v22 = v8;
      v23 = 1024;
      v24 = v9;
      _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Applying snapshot asynchronously, skipsDiffing:%d, updatesInProgress:%d", buf, 0xEu);
    }

    v10 = [WeakRetained applyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke_28;
    block[3] = &unk_1E85B36F0;
    v19 = *(a1 + 56);
    block[4] = WeakRetained;
    v11 = &v17;
    v17 = *(a1 + 32);
    v12 = &v18;
    v18 = *(a1 + 40);
    v20 = *(a1 + 57);
    dispatch_async(v10, block);
  }
}

uint64_t __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke_28(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 applySnapshotUsingReloadData:v4 completion:*(a1 + 48)];
  }

  else
  {
    return [v3 applySnapshot:v4 animatingDifferences:*(a1 + 57) completion:*(a1 + 48)];
  }
}

- (id)reuseIdentifierForFooterView:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = +[SearchUILayoutFooterView reuseIdentifier];
  v7 = [(SearchUICollectionViewDataSource *)self pointerStringFrom:v5];

  v8 = [v4 stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

- (void)setUpdateCompletionBlock:(id)a3
{
  self->_updateCompletionBlock = _Block_copy(a3);

  MEMORY[0x1EEE66BB8]();
}

- (id)cellForRowModel:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[SearchUICollectionViewDataSource sectionIdentifierForIndex:](self, "sectionIdentifierForIndex:", [v7 section]);
  [(SearchUICollectionViewDataSource *)self registerCellForRowModel:v6];
  v9 = [(SearchUICollectionViewDataSource *)self reuseIdentifierForRowModel:v6];
  v10 = [v8 overriddenAccessibilityIdentifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v6 accessibilityIdentifier];
  }

  v13 = v12;

  v14 = [(SearchUICollectionViewDataSource *)self controller];
  v15 = [v14 searchUIAttributes];

  v16 = [(SearchUICollectionViewDataSource *)self controller];
  v17 = [v16 collectionView];
  v18 = [v17 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

  v19 = [(SearchUICollectionViewDataSource *)self controller];
  [v18 setDelegate:v19];

  if (v13)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Identifier:%@, Section:%ld, Row:%ld", v13, objc_msgSend(v7, "section"), objc_msgSend(v7, "row")];
    [v18 setAccessibilityIdentifier:v20];
  }

  v40 = v13;
  if (_UISolariumEnabled())
  {
    [v8 headerInsetsWithAttributes:v15];
    [v18 setMinimumSeparatorInsets:0.0];
  }

  v39 = v15;
  v21 = v9;
  [v6 setSectionType:{objc_msgSend(objc_opt_class(), "sectionType")}];
  v22 = [(SearchUICollectionViewDataSource *)self controller];
  v23 = [v22 customViewProvider];
  [v18 setCustomViewProvider:v23];

  [v18 updateWithRowModel:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v8;
    v25 = [(SearchUICollectionViewDataSource *)self controller];
    v26 = [v25 searchUIAttributes];
    v27 = [v24 sectionBackgroundStyleWithAttributes:v26 forRowModel:v6];
  }

  else
  {
    v25 = [(SearchUICollectionViewDataSource *)self controller];
    v26 = [v25 searchUIAttributes];
    v27 = [v8 sectionBackgroundStyleWithAttributes:v26];
  }

  [v18 setSectionBackgroundStyle:v27];

  if ([v8 isMemberOfClass:objc_opt_class()] && objc_msgSend(v18, "sectionBackgroundStyle") == 4 && (objc_msgSend(v8, "rowModels"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29 >= 2))
  {
    if ([v7 row])
    {
      v30 = 1;
    }

    else
    {
      v30 = 5;
    }

    v31 = v39;
  }

  else
  {
    v31 = v39;
    v30 = 1;
    if (![v8 shouldInsetGroupedCollectionStyle] || (-[SearchUICollectionViewDataSource controller](self, "controller"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "traitCollection"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "userInterfaceIdiom"), v33, v32, v34 == 3))
    {
      if (!_UISolariumEnabled() || (-[SearchUICollectionViewDataSource controller](self, "controller"), v35 = objc_claimAutoreleasedReturnValue(), [v35 traitCollection], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "userInterfaceIdiom"), v36, v35, v37 != 3))
      {
        v30 = 0;
      }
    }
  }

  [v18 setSearchui_focusStyle:v30];
  [v18 updateChevronVisible:0 leaveSpaceForChevron:0];
  [v18 setSfSeparatorStyle:{objc_msgSend(v8, "separatorStyleForIndex:", objc_msgSend(v7, "item"))}];

  return v18;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[SearchUICollectionViewDataSource sectionIdentifierForIndex:](self, "sectionIdentifierForIndex:", [v10 section]);
  v12 = [(SearchUICollectionViewDataSource *)self controller];
  v13 = [v12 footerView];
  v14 = [(SearchUICollectionViewDataSource *)self reuseIdentifierForFooterView:v13];

  if ([v9 isEqualToString:v14])
  {
    v15 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v14 forIndexPath:v10];
    v16 = [(SearchUICollectionViewDataSource *)self controller];
    v17 = [v16 footerView];
    [v15 setFooterView:v17];

    v18 = [(SearchUICollectionViewDataSource *)self controller];
    v19 = [v18 footerView];
    [v15 setHidden:v19 == 0];
LABEL_5:

    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"SearchUIBackgroundReuseIdentifer"])
  {
    v15 = [v8 dequeueReusableSupplementaryViewOfKind:@"SearchUIBackgroundReuseIdentifer" withReuseIdentifier:@"SearchUIBackgroundReuseIdentifer" forIndexPath:v10];
    +[SearchUIAutoLayout sectionCornerRadius];
    [v15 tlks_setCornerRadius:*MEMORY[0x1E69796E8] withStyle:?];
    [v15 setHighlighted:0];
    v18 = [v11 backgroundColor];
    v19 = [v15 colorView];
    [v19 setColor:v18];
    goto LABEL_5;
  }

  v18 = [(SearchUICollectionViewDataSource *)self controller];
  v15 = [SearchUISupplementaryProvider viewForSupplementaryOfKind:v9 atIndexPath:v10 forSectionModel:v11 controller:v18];
LABEL_7:

  return v15;
}

- (id)layoutSectionForSectionModel:(id)a3 layoutEnvironment:(id)a4 attributes:(id)a5
{
  v74[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = [(SearchUICollectionViewDataSource *)self indexForSectionIdentifier:v8];
  v13 = [(SearchUICollectionViewDataSource *)self snapshot];
  v14 = [v13 numberOfSections];

  v15 = [v8 layoutSectionForEnvironment:v10 attributes:v9 dataSource:self];

  [(SearchUICollectionViewDataSource *)self sectionsInsetsForSection:v8 sectionIndex:v12 totalNumberOfSections:v14 attributes:v9];
  [v15 setContentInsets:?];
  v16 = MEMORY[0x1E6995588];
  v17 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v18 = [MEMORY[0x1E6995558] absoluteDimension:1.0];
  v19 = [v16 sizeWithWidthDimension:v17 heightDimension:v18];

  if (([v8 needsHeader] & 1) != 0 || (objc_msgSend(v8, "section"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isBrowseSection"), v20, v21))
  {
    [v8 headerInsetsWithAttributes:v9];
    v23 = v22;
    v25 = v24;
    if (([MEMORY[0x1E69D9240] isMacOS] & 1) != 0 || (v26 = 0.0, _UISolariumEnabled()))
    {
      v26 = v25;
    }

    v73 = [v8 needsHeaderSeparator];
    if (v73)
    {
      [MEMORY[0x1E69D9240] isMacOS];
    }

    v27 = 0.0;
    if ([v8 needsHeader])
    {
      v28 = MEMORY[0x1E6995588];
      v29 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
      [MEMORY[0x1E6995558] estimatedDimension:1.0];
      v31 = v30 = v19;
      v32 = [v28 sizeWithWidthDimension:v29 heightDimension:v31];

      v19 = v30;
      v33 = MEMORY[0x1E6995548];
      v34 = +[SearchUISupplementaryIdentifiers sectionHeaderKind];
      v35 = [v33 boundarySupplementaryItemWithLayoutSize:v32 elementKind:v34 alignment:1];

      [v35 setContentInsets:{0.0, v23, 0.0, v25}];
      [v11 addObject:v35];
    }

    v36 = 0.0;
  }

  else
  {
    v73 = 0;
    v36 = *MEMORY[0x1E69DC5C0];
    v23 = *(MEMORY[0x1E69DC5C0] + 8);
    v27 = *(MEMORY[0x1E69DC5C0] + 16);
    v26 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  v37 = [v8 section];

  if (v37)
  {
    v71 = v19;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v70 = [v9 shouldUseInsetRoundedSections];
    v68 = [(SearchUICollectionViewDataSource *)self indexForSectionIdentifier:v8];
    v39 = [(SearchUICollectionViewDataSource *)self sectionIdentifierForIndex:v68 - 1];
    if (isKindOfClass)
    {
      v69 = 0;
    }

    else
    {
      v69 = [v8 drawPlattersIfNecessary];
    }

    v72 = v11;
    v40 = [v8 rowModels];
    if ([v40 count] == 1)
    {
      v41 = [v8 rowModels];
      v42 = [v41 firstObject];
      [v42 separatorStyle];
    }

    v43 = [v8 rowModels];
    v44 = [v43 firstObject];
    v45 = [v44 cardSection];
    objc_opt_class();
    v46 = objc_opt_isKindOfClass();

    v47 = [v8 rowModels];
    v48 = [v47 firstObject];
    v49 = [v48 cardSection];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if ((v46 & 1) != 0 || (v50 & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [v8 drawPlattersIfNecessary];
    }

    v11 = v72;
    if ((v70 & v69 & 1) == 0)
    {
      v51 = [(SearchUICollectionViewDataSource *)self snapshot];
      if (v68 == [v51 numberOfSections] - 1)
      {
        [v8 needsHeader];
      }
    }

    v19 = v71;
  }

  if (v73)
  {
    v52 = MEMORY[0x1E6995548];
    v53 = +[SearchUISupplementaryIdentifiers sectionTopSeparatorKind];
    v54 = [v52 boundarySupplementaryItemWithLayoutSize:v19 elementKind:v53 alignment:1];

    [v54 setContentInsets:{v36, v23, v27, v26}];
    [v11 addObject:v54];
  }

  if ([v8 sectionBackgroundStyleWithAttributes:v9] == 4)
  {
    v55 = MEMORY[0x1E6995588];
    v56 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v57 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
    v58 = [v55 sizeWithWidthDimension:v56 heightDimension:v57];

    v59 = MEMORY[0x1E6995548];
    v60 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:15];
    v61 = [v59 supplementaryItemWithLayoutSize:v58 elementKind:@"SearchUIBackgroundReuseIdentifer" containerAnchor:v60];

    [v61 setZIndex:-10];
    v74[0] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
    v63 = [v15 boundarySupplementaryItems];
    v64 = [v62 arrayByAddingObjectsFromArray:v63];
    [v15 setBoundarySupplementaryItems:v64];
  }

  v65 = [v15 boundarySupplementaryItems];
  v66 = [v11 arrayByAddingObjectsFromArray:v65];
  [v15 setBoundarySupplementaryItems:v66];

  [v15 setSupplementaryContentInsetsReference:2];
  [v15 setContentInsetsReference:2];

  return v15;
}

- (NSDirectionalEdgeInsets)sectionsInsetsForSection:(id)a3 sectionIndex:(unint64_t)a4 totalNumberOfSections:(int64_t)a5 attributes:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [(SearchUICollectionViewDataSource *)self snapshot];
  v46 = [v11 numberOfSections];

  v12 = [v9 shouldInsetGroupedCollectionStyleWithAttributes:v10];
  v13 = [objc_opt_class() sectionType] != 0;
  if ([MEMORY[0x1E69D9240] isSiri])
  {
    v14 = [objc_opt_class() sectionType] == 1;
  }

  else
  {
    v14 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v9 section];
    [v15 isBrowseSection];
  }

  if ([v10 inPreviewPlatter])
  {
    v16 = 1;
  }

  else
  {
    v16 = [MEMORY[0x1E69D9240] isSiri];
  }

  v17 = [v9 rowModels];
  v18 = [v17 firstObject];

  v19 = [v9 rowModels];
  if ([v19 count] == 1 && !objc_msgSend(objc_opt_class(), "sectionType"))
  {
    v20 = [v18 cardSection];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v21 = v13 | v12;

  [v9 sectionInsetsWithAttributes:v10 sectionIndex:a4];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (v12)
  {
    +[SearchUIUtilities disambiguationTableCellContentInset];
    v31 = v30;
    v32 = v14;
  }

  else
  {
    v32 = v14;
    if (v14)
    {
      +[SearchUIUtilities imageGridContentInset];
    }

    else
    {
      +[SearchUIUtilities standardTableCellContentInset];
    }

    v31 = v33;
  }

  if (((a4 == 0) & v16) == 1)
  {
    v34 = [v18 cardSection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v32)
      {
LABEL_28:
        if ([v18 fillsBackgroundWithContent])
        {
          v23 = 12.0;
        }

        else
        {
          v23 = 0.0;
        }

        goto LABEL_36;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !(v32 | (([v18 fillsBackgroundWithContent] & 1) == 0)))
      {
        goto LABEL_28;
      }

      if (!v32)
      {
        goto LABEL_31;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      +[SearchUIUtilities imageGridItemContentInset];
      v23 = -v35;
LABEL_36:

      goto LABEL_37;
    }

LABEL_31:
    if (v45 == 1)
    {
      v23 = v31;
      if (v21)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v23 = v31;
      if (([v18 fillsBackgroundWithContent] | v21))
      {
        goto LABEL_36;
      }
    }

    v23 = 0.0;
    goto LABEL_36;
  }

LABEL_37:
  if (v46 - 1 == a4)
  {
    v36 = [v9 rowModels];
    v37 = [v36 lastObject];

    v38 = [v37 cardSection];
    if (v16)
    {
      if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (v45 == 1)
        {
          v27 = v31;
          if (v21)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v27 = v31;
          if (([v37 fillsBackgroundWithContent] | v21))
          {
            goto LABEL_48;
          }
        }

        v27 = 0.0;
        goto LABEL_48;
      }

      +[SearchUIUtilities imageGridItemContentInset];
      v27 = -v39;
    }

LABEL_48:
  }

  v40 = v23;
  v41 = v25;
  v42 = v27;
  v43 = v29;
  result.trailing = v43;
  result.bottom = v42;
  result.leading = v41;
  result.top = v40;
  return result;
}

- (void)removeRowModel:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = [a1 itemIdentifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Attempted to remove rowModel %@ (%@) which is not part of current snapshot!", &v6, 0x16u);
}

@end