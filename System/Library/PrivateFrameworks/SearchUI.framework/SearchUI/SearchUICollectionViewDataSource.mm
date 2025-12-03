@interface SearchUICollectionViewDataSource
- (BOOL)deviceIsAuthenticated;
- (NSDirectionalEdgeInsets)sectionsInsetsForSection:(id)section sectionIndex:(unint64_t)index totalNumberOfSections:(int64_t)sections attributes:(id)attributes;
- (SearchUICollectionViewController)controller;
- (SearchUICollectionViewDataSource)initWithController:(id)controller;
- (id)cellForRowModel:(id)model atIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)currentSnapshotLayoutConfiguration;
- (id)layoutSectionForSectionModel:(id)model layoutEnvironment:(id)environment attributes:(id)attributes;
- (id)rebuildAsyncLoaderResult:(id)result forCardSections:(id)sections;
- (id)rebuildSnapshot:(id)snapshot replacingSectionModel:(id)model newSectionModel:(id)sectionModel;
- (id)registerFooterView:(id)view;
- (id)reuseIdentifierForFooterView:(id)view;
- (id)reuseIdentifierForRowModel:(id)model;
- (void)applySnapshot:(id)snapshot animated:(BOOL)animated skipsDiffing:(BOOL)diffing completion:(id)completion;
- (void)rebuildSnapshotForAsyncLoaders:(id)loaders;
- (void)registerAllViewsForSnapshot:(id)snapshot;
- (void)registerCellForRowModel:(id)model;
- (void)registerSupplementaryViews;
- (void)reloadModel;
- (void)reloadSection:(id)section animated:(BOOL)animated reconfigureExisting:(BOOL)existing;
- (void)reloadSectionWithIdentifier:(id)identifier animated:(BOOL)animated reconfigureExisting:(BOOL)existing;
- (void)removeRowModel:(id)model completion:(id)completion;
- (void)removeSectionContaining:(id)containing completion:(id)completion;
- (void)removeSectionModel:(id)model completion:(id)completion;
- (void)setUpdateCompletionBlock:(id)block;
- (void)updateWithSnapshot:(id)snapshot animated:(BOOL)animated completion:(id)completion;
@end

@implementation SearchUICollectionViewDataSource

- (id)currentSnapshotLayoutConfiguration
{
  v3 = [SearchUICollectionViewLayoutConfiguration alloc];
  snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
  v5 = [(SearchUICollectionViewLayoutConfiguration *)v3 initWithSnapshot:snapshot];

  return v5;
}

- (void)registerSupplementaryViews
{
  controller = [(SearchUICollectionViewDataSource *)self controller];
  collectionView = [controller collectionView];

  v3 = objc_opt_class();
  v4 = +[SearchUILayoutFooterView reuseIdentifier];
  v5 = +[SearchUILayoutFooterView reuseIdentifier];
  [collectionView registerClass:v3 forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];

  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"SearchUIBackgroundReuseIdentifer" withReuseIdentifier:@"SearchUIBackgroundReuseIdentifer"];
  [SearchUISupplementaryProvider registerSupplementariesForCollectionView:collectionView];
}

- (SearchUICollectionViewController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (SearchUICollectionViewDataSource)initWithController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, controllerCopy);
  collectionView = [controllerCopy collectionView];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__SearchUICollectionViewDataSource_initWithController___block_invoke;
  v20[3] = &unk_1E85B3650;
  objc_copyWeak(&v21, &location);
  v19.receiver = self;
  v19.super_class = SearchUICollectionViewDataSource;
  v6 = [(SearchUICollectionViewDataSource *)&v19 initWithCollectionView:collectionView cellProvider:v20];

  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.searchui.datasource", v7);
    applyQueue = v6->_applyQueue;
    v6->_applyQueue = v8;

    atomic_store(0, &v6->_numberOfUpdatesInProgress);
    objc_storeWeak(&v6->_controller, controllerCopy);
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

- (void)registerAllViewsForSnapshot:(id)snapshot
{
  v16 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  registeredCellIdentifiers = [(SearchUICollectionViewDataSource *)self registeredCellIdentifiers];
  [registeredCellIdentifiers removeAllObjects];

  [(SearchUICollectionViewDataSource *)self registerSupplementaryViews];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  itemIdentifiers = [snapshotCopy itemIdentifiers];
  v7 = [itemIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(itemIdentifiers);
        }

        [(SearchUICollectionViewDataSource *)self registerCellForRowModel:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [itemIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)registerCellForRowModel:(id)model
{
  modelCopy = model;
  v4 = [(SearchUICollectionViewDataSource *)self reuseIdentifierForRowModel:?];
  if (v4)
  {
    registeredCellIdentifiers = [(SearchUICollectionViewDataSource *)self registeredCellIdentifiers];
    v6 = [registeredCellIdentifiers containsObject:v4];

    if ((v6 & 1) == 0)
    {
      registeredCellIdentifiers2 = [(SearchUICollectionViewDataSource *)self registeredCellIdentifiers];
      [registeredCellIdentifiers2 addObject:v4];

      controller = [(SearchUICollectionViewDataSource *)self controller];
      collectionView = [controller collectionView];
      [collectionView registerClass:objc_msgSend(modelCopy forCellWithReuseIdentifier:{"collectionViewCellClass"), v4}];
    }
  }
}

- (id)reuseIdentifierForRowModel:(id)model
{
  modelCopy = model;
  reuseIdentifier = [modelCopy reuseIdentifier];
  v6 = reuseIdentifier;
  if (reuseIdentifier)
  {
    v7 = reuseIdentifier;
  }

  else
  {
    v7 = [(SearchUICollectionViewDataSource *)self pointerStringFrom:modelCopy];
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

  snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
  [(SearchUICollectionViewDataSource *)self applySnapshot:snapshot animated:0 skipsDiffing:1 completion:0];
}

- (void)reloadSection:(id)section animated:(BOOL)animated reconfigureExisting:(BOOL)existing
{
  existingCopy = existing;
  animatedCopy = animated;
  v52 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
  v10 = snapshot;
  if (sectionCopy && [snapshot indexOfSectionIdentifier:sectionCopy] != 0x7FFFFFFFFFFFFFFFLL)
  {
    asyncLoader = [sectionCopy asyncLoader];

    if (asyncLoader)
    {
      asyncLoader2 = [sectionCopy asyncLoader];
      asyncLoader3 = [sectionCopy asyncLoader];
      cardSections = [asyncLoader3 cardSections];

      if (cardSections)
      {
        v46 = animatedCopy;
        v22 = SearchUIDataSourceLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138412546;
          v49 = sectionCopy;
          v50 = 2112;
          v51 = v24;
          _os_log_impl(&dword_1DA169000, v22, OS_LOG_TYPE_DEFAULT, "Rebuilding section %@ because of asyncLoader (%@).", buf, 0x16u);
        }

        v25 = [v10 itemIdentifiersInSectionWithIdentifier:sectionCopy];
        [v10 deleteItemsWithIdentifiers:v25];

        v26 = [[SearchUIDataSourceSnapshotBuilder alloc] initWithSnapshot:v10];
        searchResult = [asyncLoader2 searchResult];
        v28 = [(SearchUICollectionViewDataSource *)self rebuildAsyncLoaderResult:searchResult forCardSections:cardSections];
        v29 = -[SearchUIDataSourceSnapshotBuilder buildRowModelsFromCardSections:result:isInline:queryId:](v26, "buildRowModelsFromCardSections:result:isInline:queryId:", cardSections, v28, 0, [asyncLoader2 queryId]);

        v30 = [sectionCopy copyWithRowModels:v29];
        v31 = [(SearchUICollectionViewDataSource *)self rebuildSnapshot:v10 replacingSectionModel:sectionCopy newSectionModel:v30];

        v10 = v31;
        sectionCopy = v30;
        animatedCopy = v46;
      }
    }

    rowModels = [sectionCopy rowModels];
    v33 = [rowModels count];

    if (v33)
    {
      v34 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v10, "indexOfSectionIdentifier:", sectionCopy)}];
      controller = [(SearchUICollectionViewDataSource *)self controller];
      collectionView = [controller collectionView];
      v37 = [collectionView supplementaryViewForElementKind:@"SearchUIBackgroundReuseIdentifer" atIndexPath:v34];

      if (v37)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
          backgroundColor = [sectionCopy backgroundColor];
          colorView = [v38 colorView];

          [colorView setColor:backgroundColor];
        }
      }

      v41 = [v10 itemIdentifiersInSectionWithIdentifier:sectionCopy];
      [v10 deleteItemsWithIdentifiers:v41];

      rowModels2 = [sectionCopy rowModels];
      [v10 appendItemsWithIdentifiers:rowModels2 intoSectionWithIdentifier:sectionCopy];

      if (existingCopy)
      {
        rowModels3 = [sectionCopy rowModels];
        [v10 reconfigureItemsWithIdentifiers:rowModels3];
      }

      v44 = SearchUIDataSourceLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = sectionCopy;
        _os_log_impl(&dword_1DA169000, v44, OS_LOG_TYPE_DEFAULT, "Reloading section %@.", buf, 0xCu);
      }
    }

    else
    {
      v47 = sectionCopy;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      [v10 deleteSectionsWithIdentifiers:v45];

      v34 = SearchUIDataSourceLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = sectionCopy;
        _os_log_impl(&dword_1DA169000, v34, OS_LOG_TYPE_DEFAULT, "Reloading section %@. Removing because section is empty!", buf, 0xCu);
      }
    }

    [(SearchUICollectionViewDataSource *)self applySnapshot:v10 animated:animatedCopy skipsDiffing:0 completion:0];
  }

  else
  {
    v11 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SearchUICollectionViewDataSource *)sectionCopy reloadSection:v11 animated:v12 reconfigureExisting:v13, v14, v15, v16, v17];
    }
  }
}

- (void)reloadSectionWithIdentifier:(id)identifier animated:(BOOL)animated reconfigureExisting:(BOOL)existing
{
  existingCopy = existing;
  animatedCopy = animated;
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v27 = animatedCopy;
    v28 = existingCopy;
    selfCopy = self;
    snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    sectionIdentifiers = [snapshot sectionIdentifiers];
    v11 = [sectionIdentifiers countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(sectionIdentifiers);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        section = [v15 section];
        sectionIdentifier = [section sectionIdentifier];
        v18 = [sectionIdentifier isEqualToString:identifierCopy];

        if (v18)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [sectionIdentifiers countByEnumeratingWithState:&v29 objects:v33 count:16];
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

      [(SearchUICollectionViewDataSource *)selfCopy reloadSection:v19 animated:v27 reconfigureExisting:v28];
    }

    else
    {
LABEL_10:

LABEL_13:
      v19 = SearchUIDataSourceLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(SearchUICollectionViewDataSource *)identifierCopy reloadSectionWithIdentifier:v19 animated:v20 reconfigureExisting:v21, v22, v23, v24, v25];
      }
    }
  }

  else
  {
    snapshot = SearchUIDataSourceLog();
    if (os_log_type_enabled(snapshot, OS_LOG_TYPE_ERROR))
    {
      [SearchUICollectionViewDataSource reloadSectionWithIdentifier:snapshot animated:? reconfigureExisting:?];
    }
  }
}

- (BOOL)deviceIsAuthenticated
{
  controller = [(SearchUICollectionViewDataSource *)self controller];
  view = [controller view];
  v4 = [SearchUIUtilities deviceIsAuthenticatedForView:view];

  return v4;
}

- (void)updateWithSnapshot:(id)snapshot animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  snapshotCopy = snapshot;
  completionCopy = completion;
  [(SearchUICollectionViewDataSource *)self rebuildSnapshotForAsyncLoaders:snapshotCopy];
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
  v14 = snapshotCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = snapshotCopy;
  [(SearchUICollectionViewDataSource *)self applySnapshot:v12 animated:animatedCopy skipsDiffing:animatedCopy ^ 1 completion:v13];
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

- (void)rebuildSnapshotForAsyncLoaders:(id)loaders
{
  v50 = *MEMORY[0x1E69E9840];
  loadersCopy = loaders;
  v5 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Reloading snapshot for SectionAsyncLoaders", buf, 2u);
  }

  [loadersCopy sectionIdentifiers];
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
    selfCopy = self;
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
        asyncLoader = [v11 asyncLoader];

        if (asyncLoader)
        {
          asyncLoader2 = [v11 asyncLoader];
          [asyncLoader2 setDelegate:self];
          asyncLoader3 = [v11 asyncLoader];
          cardSections = [asyncLoader3 cardSections];

          if (cardSections)
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

            v19 = [loadersCopy itemIdentifiersInSectionWithIdentifier:v11];
            [loadersCopy deleteItemsWithIdentifiers:v19];

            v20 = [[SearchUIDataSourceSnapshotBuilder alloc] initWithSnapshot:loadersCopy];
            searchResult = [asyncLoader2 searchResult];
            v22 = [(SearchUICollectionViewDataSource *)self rebuildAsyncLoaderResult:searchResult forCardSections:cardSections];
            v39 = v20;
            v23 = -[SearchUIDataSourceSnapshotBuilder buildRowModelsFromCardSections:result:isInline:queryId:](v20, "buildRowModelsFromCardSections:result:isInline:queryId:", cardSections, v22, 0, [asyncLoader2 queryId]);

            v24 = [v11 copyWithRowModels:v23];
            rowModels = [v24 rowModels];
            v26 = [rowModels count];

            if (v26)
            {
              v27 = [(SearchUICollectionViewDataSource *)self rebuildSnapshot:loadersCopy replacingSectionModel:v11 newSectionModel:v24];

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

              loadersCopy = v27;
            }

            else
            {
              v44 = v11;
              v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
              [loadersCopy deleteSectionsWithIdentifiers:v31];

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

            self = selfCopy;
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

- (id)rebuildSnapshot:(id)snapshot replacingSectionModel:(id)model newSectionModel:(id)sectionModel
{
  v19[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  modelCopy = model;
  sectionModelCopy = sectionModel;
  v10 = [snapshotCopy indexOfSectionIdentifier:modelCopy];
  v19[0] = modelCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [snapshotCopy deleteSectionsWithIdentifiers:v11];

  if (v10 == [snapshotCopy numberOfSections])
  {
    v18 = sectionModelCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [snapshotCopy appendSectionsWithIdentifiers:v12];
  }

  else
  {
    sectionIdentifiers = [snapshotCopy sectionIdentifiers];
    v12 = [sectionIdentifiers objectAtIndexedSubscript:v10];

    v17 = sectionModelCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [snapshotCopy insertSectionsWithIdentifiers:v14 beforeSectionWithIdentifier:v12];
  }

  rowModels = [sectionModelCopy rowModels];
  [snapshotCopy appendItemsWithIdentifiers:rowModels intoSectionWithIdentifier:sectionModelCopy];

  return snapshotCopy;
}

- (id)rebuildAsyncLoaderResult:(id)result forCardSections:(id)sections
{
  v20[1] = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  resultCopy = result;
  v7 = [objc_alloc(objc_opt_class()) initWithSearchResult:resultCopy];
  v8 = [SearchUIUtilities cardForRenderingResult:resultCopy];

  if (v8)
  {
    card = v8;
  }

  else
  {
    card = [v7 card];
  }

  v10 = card;

  cardSections = [v10 cardSections];
  if ([cardSections count] == 1)
  {
    cardSections2 = [v10 cardSections];
    firstObject = [cardSections2 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      cardSections3 = [v10 cardSections];
      firstObject2 = [cardSections3 firstObject];
      v17 = [firstObject2 copy];

      [v17 setCardSections:sectionsCopy];
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

- (id)registerFooterView:(id)view
{
  v4 = [(SearchUICollectionViewDataSource *)self reuseIdentifierForFooterView:view];
  controller = [(SearchUICollectionViewDataSource *)self controller];
  collectionView = [controller collectionView];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:v4 withReuseIdentifier:v4];

  return v4;
}

- (void)removeRowModel:(id)model completion:(id)completion
{
  v23[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  completionCopy = completion;
  snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
  v9 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:modelCopy];
  if (v9)
  {
    v23[0] = modelCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [snapshot deleteItemsWithIdentifiers:v10];

    if (![snapshot numberOfItemsInSection:v9])
    {
      v22 = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      [snapshot deleteSectionsWithIdentifiers:v11];
    }

    v12 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      itemIdentifier = [modelCopy itemIdentifier];
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = itemIdentifier;
      _os_log_impl(&dword_1DA169000, v12, OS_LOG_TYPE_DEFAULT, "Removing rowModel %@ (%@).", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__SearchUICollectionViewDataSource_removeRowModel_completion___block_invoke;
    v16[3] = &unk_1E85B2680;
    v17 = completionCopy;
    [(SearchUICollectionViewDataSource *)self applySnapshot:snapshot animated:1 skipsDiffing:0 completion:v16];
  }

  else
  {
    v15 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SearchUICollectionViewDataSource removeRowModel:modelCopy completion:v15];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
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

- (void)removeSectionContaining:(id)containing completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  containingCopy = containing;
  completionCopy = completion;
  snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
  v9 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:containingCopy];
  v10 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    itemIdentifier = [containingCopy itemIdentifier];
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = itemIdentifier;
    _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "Trying to remove section %@ containing rowModel %@ (%@).", &v13, 0x20u);
  }

  [(SearchUICollectionViewDataSource *)self removeSectionModel:v9 completion:completionCopy];
}

- (void)removeSectionModel:(id)model completion:(id)completion
{
  v23[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  completionCopy = completion;
  snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
  if (modelCopy)
  {
    v23[0] = modelCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [snapshot deleteSectionsWithIdentifiers:v9];

    v10 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = modelCopy;
      _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "Removing section %@", buf, 0xCu);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__SearchUICollectionViewDataSource_removeSectionModel_completion___block_invoke;
    v19[3] = &unk_1E85B2680;
    v20 = completionCopy;
    [(SearchUICollectionViewDataSource *)self applySnapshot:snapshot animated:1 skipsDiffing:0 completion:v19];
  }

  else
  {
    v11 = SearchUIDataSourceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SearchUICollectionViewDataSource *)v11 removeSectionModel:v12 completion:v13, v14, v15, v16, v17, v18];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
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

- (void)applySnapshot:(id)snapshot animated:(BOOL)animated skipsDiffing:(BOOL)diffing completion:(id)completion
{
  snapshotCopy = snapshot;
  completionCopy = completion;
  if (snapshotCopy)
  {
    v12 = snapshotCopy;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v14 = MEMORY[0x1E69DCA38];
  controller = [(SearchUICollectionViewDataSource *)self controller];
  focusableIndexPath = [v14 focusSystemForEnvironment:controller];

  if (focusableIndexPath)
  {
    controller2 = [(SearchUICollectionViewDataSource *)self controller];
    focusableIndexPath = [controller2 focusableIndexPath];

    controller3 = [(SearchUICollectionViewDataSource *)self controller];
    [controller3 setFocusableIndexPath:0];
  }

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke;
  aBlock[3] = &unk_1E85B36C8;
  diffingCopy = diffing;
  objc_copyWeak(&v33, location);
  v19 = completionCopy;
  v32 = v19;
  v20 = focusableIndexPath;
  v31 = v20;
  v21 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__SearchUICollectionViewDataSource_applySnapshot_animated_skipsDiffing_completion___block_invoke_2;
  v24[3] = &unk_1E85B3718;
  objc_copyWeak(&v27, location);
  diffingCopy2 = diffing;
  v22 = v13;
  v25 = v22;
  v23 = v21;
  v26 = v23;
  animatedCopy = animated;
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

- (id)reuseIdentifierForFooterView:(id)view
{
  v4 = MEMORY[0x1E696AEC0];
  viewCopy = view;
  v6 = +[SearchUILayoutFooterView reuseIdentifier];
  v7 = [(SearchUICollectionViewDataSource *)self pointerStringFrom:viewCopy];

  v8 = [v4 stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

- (void)setUpdateCompletionBlock:(id)block
{
  self->_updateCompletionBlock = _Block_copy(block);

  MEMORY[0x1EEE66BB8]();
}

- (id)cellForRowModel:(id)model atIndexPath:(id)path
{
  modelCopy = model;
  pathCopy = path;
  v8 = -[SearchUICollectionViewDataSource sectionIdentifierForIndex:](self, "sectionIdentifierForIndex:", [pathCopy section]);
  [(SearchUICollectionViewDataSource *)self registerCellForRowModel:modelCopy];
  v9 = [(SearchUICollectionViewDataSource *)self reuseIdentifierForRowModel:modelCopy];
  overriddenAccessibilityIdentifier = [v8 overriddenAccessibilityIdentifier];
  v11 = overriddenAccessibilityIdentifier;
  if (overriddenAccessibilityIdentifier)
  {
    accessibilityIdentifier = overriddenAccessibilityIdentifier;
  }

  else
  {
    accessibilityIdentifier = [modelCopy accessibilityIdentifier];
  }

  v13 = accessibilityIdentifier;

  controller = [(SearchUICollectionViewDataSource *)self controller];
  searchUIAttributes = [controller searchUIAttributes];

  controller2 = [(SearchUICollectionViewDataSource *)self controller];
  collectionView = [controller2 collectionView];
  v18 = [collectionView dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  controller3 = [(SearchUICollectionViewDataSource *)self controller];
  [v18 setDelegate:controller3];

  if (v13)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Identifier:%@, Section:%ld, Row:%ld", v13, objc_msgSend(pathCopy, "section"), objc_msgSend(pathCopy, "row")];
    [v18 setAccessibilityIdentifier:v20];
  }

  v40 = v13;
  if (_UISolariumEnabled())
  {
    [v8 headerInsetsWithAttributes:searchUIAttributes];
    [v18 setMinimumSeparatorInsets:0.0];
  }

  v39 = searchUIAttributes;
  v21 = v9;
  [modelCopy setSectionType:{objc_msgSend(objc_opt_class(), "sectionType")}];
  controller4 = [(SearchUICollectionViewDataSource *)self controller];
  customViewProvider = [controller4 customViewProvider];
  [v18 setCustomViewProvider:customViewProvider];

  [v18 updateWithRowModel:modelCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v8;
    controller5 = [(SearchUICollectionViewDataSource *)self controller];
    searchUIAttributes2 = [controller5 searchUIAttributes];
    v27 = [v24 sectionBackgroundStyleWithAttributes:searchUIAttributes2 forRowModel:modelCopy];
  }

  else
  {
    controller5 = [(SearchUICollectionViewDataSource *)self controller];
    searchUIAttributes2 = [controller5 searchUIAttributes];
    v27 = [v8 sectionBackgroundStyleWithAttributes:searchUIAttributes2];
  }

  [v18 setSectionBackgroundStyle:v27];

  if ([v8 isMemberOfClass:objc_opt_class()] && objc_msgSend(v18, "sectionBackgroundStyle") == 4 && (objc_msgSend(v8, "rowModels"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29 >= 2))
  {
    if ([pathCopy row])
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
  [v18 setSfSeparatorStyle:{objc_msgSend(v8, "separatorStyleForIndex:", objc_msgSend(pathCopy, "item"))}];

  return v18;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = -[SearchUICollectionViewDataSource sectionIdentifierForIndex:](self, "sectionIdentifierForIndex:", [pathCopy section]);
  controller = [(SearchUICollectionViewDataSource *)self controller];
  footerView = [controller footerView];
  v14 = [(SearchUICollectionViewDataSource *)self reuseIdentifierForFooterView:footerView];

  if ([kindCopy isEqualToString:v14])
  {
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v14 forIndexPath:pathCopy];
    controller2 = [(SearchUICollectionViewDataSource *)self controller];
    footerView2 = [controller2 footerView];
    [v15 setFooterView:footerView2];

    controller3 = [(SearchUICollectionViewDataSource *)self controller];
    footerView3 = [controller3 footerView];
    [v15 setHidden:footerView3 == 0];
LABEL_5:

    goto LABEL_7;
  }

  if ([kindCopy isEqualToString:@"SearchUIBackgroundReuseIdentifer"])
  {
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:@"SearchUIBackgroundReuseIdentifer" withReuseIdentifier:@"SearchUIBackgroundReuseIdentifer" forIndexPath:pathCopy];
    +[SearchUIAutoLayout sectionCornerRadius];
    [v15 tlks_setCornerRadius:*MEMORY[0x1E69796E8] withStyle:?];
    [v15 setHighlighted:0];
    controller3 = [v11 backgroundColor];
    footerView3 = [v15 colorView];
    [footerView3 setColor:controller3];
    goto LABEL_5;
  }

  controller3 = [(SearchUICollectionViewDataSource *)self controller];
  v15 = [SearchUISupplementaryProvider viewForSupplementaryOfKind:kindCopy atIndexPath:pathCopy forSectionModel:v11 controller:controller3];
LABEL_7:

  return v15;
}

- (id)layoutSectionForSectionModel:(id)model layoutEnvironment:(id)environment attributes:(id)attributes
{
  v74[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  attributesCopy = attributes;
  environmentCopy = environment;
  v11 = objc_opt_new();
  v12 = [(SearchUICollectionViewDataSource *)self indexForSectionIdentifier:modelCopy];
  snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
  numberOfSections = [snapshot numberOfSections];

  v15 = [modelCopy layoutSectionForEnvironment:environmentCopy attributes:attributesCopy dataSource:self];

  [(SearchUICollectionViewDataSource *)self sectionsInsetsForSection:modelCopy sectionIndex:v12 totalNumberOfSections:numberOfSections attributes:attributesCopy];
  [v15 setContentInsets:?];
  v16 = MEMORY[0x1E6995588];
  v17 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v18 = [MEMORY[0x1E6995558] absoluteDimension:1.0];
  v19 = [v16 sizeWithWidthDimension:v17 heightDimension:v18];

  if (([modelCopy needsHeader] & 1) != 0 || (objc_msgSend(modelCopy, "section"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isBrowseSection"), v20, v21))
  {
    [modelCopy headerInsetsWithAttributes:attributesCopy];
    v23 = v22;
    v25 = v24;
    if (([MEMORY[0x1E69D9240] isMacOS] & 1) != 0 || (v26 = 0.0, _UISolariumEnabled()))
    {
      v26 = v25;
    }

    needsHeaderSeparator = [modelCopy needsHeaderSeparator];
    if (needsHeaderSeparator)
    {
      [MEMORY[0x1E69D9240] isMacOS];
    }

    v27 = 0.0;
    if ([modelCopy needsHeader])
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
    needsHeaderSeparator = 0;
    v36 = *MEMORY[0x1E69DC5C0];
    v23 = *(MEMORY[0x1E69DC5C0] + 8);
    v27 = *(MEMORY[0x1E69DC5C0] + 16);
    v26 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  section = [modelCopy section];

  if (section)
  {
    v71 = v19;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    shouldUseInsetRoundedSections = [attributesCopy shouldUseInsetRoundedSections];
    v68 = [(SearchUICollectionViewDataSource *)self indexForSectionIdentifier:modelCopy];
    v39 = [(SearchUICollectionViewDataSource *)self sectionIdentifierForIndex:v68 - 1];
    if (isKindOfClass)
    {
      drawPlattersIfNecessary = 0;
    }

    else
    {
      drawPlattersIfNecessary = [modelCopy drawPlattersIfNecessary];
    }

    v72 = v11;
    rowModels = [modelCopy rowModels];
    if ([rowModels count] == 1)
    {
      rowModels2 = [modelCopy rowModels];
      firstObject = [rowModels2 firstObject];
      [firstObject separatorStyle];
    }

    rowModels3 = [modelCopy rowModels];
    firstObject2 = [rowModels3 firstObject];
    cardSection = [firstObject2 cardSection];
    objc_opt_class();
    v46 = objc_opt_isKindOfClass();

    rowModels4 = [modelCopy rowModels];
    firstObject3 = [rowModels4 firstObject];
    cardSection2 = [firstObject3 cardSection];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if ((v46 & 1) != 0 || (v50 & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [modelCopy drawPlattersIfNecessary];
    }

    v11 = v72;
    if ((shouldUseInsetRoundedSections & drawPlattersIfNecessary & 1) == 0)
    {
      snapshot2 = [(SearchUICollectionViewDataSource *)self snapshot];
      if (v68 == [snapshot2 numberOfSections] - 1)
      {
        [modelCopy needsHeader];
      }
    }

    v19 = v71;
  }

  if (needsHeaderSeparator)
  {
    v52 = MEMORY[0x1E6995548];
    v53 = +[SearchUISupplementaryIdentifiers sectionTopSeparatorKind];
    v54 = [v52 boundarySupplementaryItemWithLayoutSize:v19 elementKind:v53 alignment:1];

    [v54 setContentInsets:{v36, v23, v27, v26}];
    [v11 addObject:v54];
  }

  if ([modelCopy sectionBackgroundStyleWithAttributes:attributesCopy] == 4)
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
    boundarySupplementaryItems = [v15 boundarySupplementaryItems];
    v64 = [v62 arrayByAddingObjectsFromArray:boundarySupplementaryItems];
    [v15 setBoundarySupplementaryItems:v64];
  }

  boundarySupplementaryItems2 = [v15 boundarySupplementaryItems];
  v66 = [v11 arrayByAddingObjectsFromArray:boundarySupplementaryItems2];
  [v15 setBoundarySupplementaryItems:v66];

  [v15 setSupplementaryContentInsetsReference:2];
  [v15 setContentInsetsReference:2];

  return v15;
}

- (NSDirectionalEdgeInsets)sectionsInsetsForSection:(id)section sectionIndex:(unint64_t)index totalNumberOfSections:(int64_t)sections attributes:(id)attributes
{
  sectionCopy = section;
  attributesCopy = attributes;
  snapshot = [(SearchUICollectionViewDataSource *)self snapshot];
  numberOfSections = [snapshot numberOfSections];

  v12 = [sectionCopy shouldInsetGroupedCollectionStyleWithAttributes:attributesCopy];
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
    section = [sectionCopy section];
    [section isBrowseSection];
  }

  if ([attributesCopy inPreviewPlatter])
  {
    isSiri = 1;
  }

  else
  {
    isSiri = [MEMORY[0x1E69D9240] isSiri];
  }

  rowModels = [sectionCopy rowModels];
  firstObject = [rowModels firstObject];

  rowModels2 = [sectionCopy rowModels];
  if ([rowModels2 count] == 1 && !objc_msgSend(objc_opt_class(), "sectionType"))
  {
    cardSection = [firstObject cardSection];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v21 = v13 | v12;

  [sectionCopy sectionInsetsWithAttributes:attributesCopy sectionIndex:index];
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

  if (((index == 0) & isSiri) == 1)
  {
    cardSection2 = [firstObject cardSection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v32)
      {
LABEL_28:
        if ([firstObject fillsBackgroundWithContent])
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
      if ((objc_opt_isKindOfClass() & 1) != 0 && !(v32 | (([firstObject fillsBackgroundWithContent] & 1) == 0)))
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
      if (([firstObject fillsBackgroundWithContent] | v21))
      {
        goto LABEL_36;
      }
    }

    v23 = 0.0;
    goto LABEL_36;
  }

LABEL_37:
  if (numberOfSections - 1 == index)
  {
    rowModels3 = [sectionCopy rowModels];
    lastObject = [rowModels3 lastObject];

    cardSection3 = [lastObject cardSection];
    if (isSiri)
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
          if (([lastObject fillsBackgroundWithContent] | v21))
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