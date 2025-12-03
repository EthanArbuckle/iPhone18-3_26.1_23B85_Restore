@interface PKDynamicCollectionViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (PKDynamicCollectionViewController)init;
- (id)_cellRegistrationForSection:(id)section itemIdentifier:(id)identifier item:(id)item;
- (id)_indexPathForItem:(id)item;
- (id)_indexPathForItemIdentifier:(id)identifier;
- (id)_sectionAtIndex:(int64_t)index;
- (id)_sectionAtIndexPath:(id)path;
- (id)_sectionForIdentifier:(id)identifier;
- (id)_supplementaryRegistrationForSection:(id)section sectionIdentifier:(id)identifier elementKind:(id)kind;
- (id)cellForItem:(id)item;
- (id)cellLayoutAttributesForItem:(id)item;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)layout;
- (id)sectionIdentifierForIndex:(int64_t)index;
- (void)_deselectCellsForce:(BOOL)force;
- (void)_reloadDataForSections:(id)sections recreateSnapshot:(BOOL)snapshot animated:(BOOL)animated;
- (void)_reloadSectionMapForSections:(id)sections animated:(BOOL)animated;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)loadView;
- (void)reconfigureHeaderAndFooterForSectionIdentifier:(id)identifier;
- (void)reloadDataForSection:(id)section animated:(BOOL)animated;
- (void)reloadDataForSectionIdentifier:(id)identifier animated:(BOOL)animated;
- (void)reloadDataWithoutRebuildingDataStores;
- (void)reloadItem:(id)item animated:(BOOL)animated;
- (void)scrollToItem:(id)item atScrollPosition:(unint64_t)position animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKDynamicCollectionViewController

- (PKDynamicCollectionViewController)init
{
  v13.receiver = self;
  v13.super_class = PKDynamicCollectionViewController;
  v2 = [(PKDynamicCollectionViewController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_deselectSelectedCellsOnViewWillAppear = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cellRegistrations = v3->_cellRegistrations;
    v3->_cellRegistrations = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    supplementaryViewRegistrations = v3->_supplementaryViewRegistrations;
    v3->_supplementaryViewRegistrations = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemsPendingDeletion = v3->_itemsPendingDeletion;
    v3->_itemsPendingDeletion = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemsMap = v3->_itemsMap;
    v3->_itemsMap = v10;
  }

  return v3;
}

- (void)loadView
{
  v26.receiver = self;
  v26.super_class = PKDynamicCollectionViewController;
  [(PKDynamicCollectionViewController *)&v26 loadView];
  view = [(PKDynamicCollectionViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layout = [(PKDynamicCollectionViewController *)self layout];
  v14 = [v4 initWithFrame:layout collectionViewLayout:{v6, v8, v10, v12}];
  collectionView = self->_collectionView;
  self->_collectionView = v14;

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [view addSubview:self->_collectionView];
  objc_initWeak(&location, self);
  v16 = objc_alloc(MEMORY[0x1E69DC820]);
  v17 = self->_collectionView;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __45__PKDynamicCollectionViewController_loadView__block_invoke;
  v23[3] = &unk_1E8013048;
  objc_copyWeak(&v24, &location);
  v18 = [v16 initWithCollectionView:v17 cellProvider:v23];
  dataSource = self->_dataSource;
  self->_dataSource = v18;

  v20 = self->_dataSource;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__PKDynamicCollectionViewController_loadView__block_invoke_2;
  v21[3] = &unk_1E8013070;
  objc_copyWeak(&v22, &location);
  [(UICollectionViewDiffableDataSource *)v20 setSupplementaryViewProvider:v21];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

id __45__PKDynamicCollectionViewController_loadView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained _sectionAtIndexPath:v8];
    if (v12)
    {
      v13 = [v11 _cellRegistrationForSection:v12 itemIdentifier:v9 item:0];
      v14 = [v7 dequeueConfiguredReusableCellWithRegistration:v13 forIndexPath:v8 item:v9];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __45__PKDynamicCollectionViewController_loadView__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = [WeakRetained sectionIdentifierForIndex:{objc_msgSend(v9, "section")}];
    v12 = [WeakRetained _sectionForIdentifier:v11];
    v13 = [WeakRetained _supplementaryRegistrationForSection:v12 sectionIdentifier:v11 elementKind:v8];
    v14 = [v7 dequeueConfiguredReusableSupplementaryViewWithRegistration:v13 forIndexPath:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKDynamicCollectionViewController;
  [(PKDynamicCollectionViewController *)&v3 viewDidLoad];
  [(PKDynamicCollectionViewController *)self reloadDataAnimated:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKDynamicCollectionViewController;
  [(PKDynamicCollectionViewController *)&v4 viewWillAppear:appear];
  self->_isViewControllerActive = 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKDynamicCollectionViewController;
  [(PKDynamicCollectionViewController *)&v4 viewDidAppear:appear];
  [(PKDynamicCollectionViewController *)self _deselectCellsForce:0];
  self->_viewDidAppear = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKDynamicCollectionViewController;
  [(PKDynamicCollectionViewController *)&v4 viewWillDisappear:disappear];
  self->_isViewControllerActive = 0;
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKDynamicCollectionViewController;
  [(PKDynamicCollectionViewController *)&v4 viewWillLayoutSubviews];
  view = [(PKDynamicCollectionViewController *)self view];
  [view bounds];
  [(UICollectionView *)self->_collectionView setFrame:?];
}

- (void)_reloadSectionMapForSections:(id)sections animated:(BOOL)animated
{
  animatedCopy = animated;
  v51 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = sectionsCopy;
  v34 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v34)
  {
    v33 = *v42;
    do
    {
      v7 = 0;
      do
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v7;
        v8 = *(*(&v41 + 1) + 8 * v7);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        identifiers = [v8 identifiers];
        v10 = [identifiers countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v38;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v38 != v12)
              {
                objc_enumerationMutation(identifiers);
              }

              v14 = *(*(&v37 + 1) + 8 * i);
              v15 = [v6 objectForKey:v14];

              if (v15)
              {
                v16 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = objc_opt_class();
                  *buf = 138412546;
                  v46 = v17;
                  v47 = 2112;
                  v48 = v14;
                  v18 = v17;
                  _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "PKDynamicCollectionViewController (%@) attempting to set sections with duplicate section ids. Discarding duplicate %@ section id.", buf, 0x16u);
                }
              }

              else
              {
                [v36 addObject:v14];
                [v6 setObject:v8 forKey:v14];
              }
            }

            v11 = [identifiers countByEnumeratingWithState:&v37 objects:v49 count:16];
          }

          while (v11);
        }

        v7 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v34);
  }

  v19 = [MEMORY[0x1E695DFD8] setWithArray:v36];
  v20 = [MEMORY[0x1E695DFA8] setWithArray:self->_sectionIdentifiers];
  [v20 minusSet:v19];
  if ([v20 count])
  {
    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    allObjects = [v20 allObjects];
    [snapshot deleteSectionsWithIdentifiers:allObjects];

    v23 = animatedCopy && self->_isViewControllerActive;
    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:v23];
  }

  sections = self->_sections;
  self->_sections = obj;
  v25 = obj;

  v26 = [v36 copy];
  sectionIdentifiers = self->_sectionIdentifiers;
  self->_sectionIdentifiers = v26;

  v28 = [v6 copy];
  sectionMap = self->_sectionMap;
  self->_sectionMap = v28;

  [(PKDynamicCollectionViewController *)self _reloadDataForSections:self->_sectionIdentifiers recreateSnapshot:1 animated:animatedCopy];
  view = [(PKDynamicCollectionViewController *)self view];
  [view setNeedsLayout];
}

- (id)cellForItem:(id)item
{
  v4 = [(PKDynamicCollectionViewController *)self _indexPathForItem:item];
  if (v4)
  {
    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    v6 = [collectionView cellForItemAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cellLayoutAttributesForItem:(id)item
{
  v4 = [(PKDynamicCollectionViewController *)self _indexPathForItem:item];
  if (v4)
  {
    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    v6 = [collectionView layoutAttributesForItemAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_indexPathForItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    useItemIdentityWhenUpdating = self->_useItemIdentityWhenUpdating;
    v7 = itemCopy;
    identifier = v7;
    if (useItemIdentityWhenUpdating)
    {
      if ([v7 conformsToProtocol:&unk_1F3D1E168])
      {
        v9 = identifier;
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKDynamicCollectionViewController: useItemIdentityWhenUpdating was set to true but item %@ does not conform to PKIdentifiable", identifier}];
        v9 = 0;
      }

      identifier = [v9 identifier];
    }

    v10 = [(PKDynamicCollectionViewController *)self _indexPathForItemIdentifier:identifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_indexPathForItemIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(UICollectionViewDiffableDataSource *)self->_dataSource indexPathForItemIdentifier:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v6.receiver = self;
  v6.super_class = PKDynamicCollectionViewController;
  [(PKDynamicCollectionViewController *)&v6 setEditing:editing animated:animated];
  [(UICollectionView *)self->_collectionView setEditing:editingCopy];
}

- (void)reloadItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v24[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v8 = itemCopy;
  v9 = v8;
  identifier = v8;
  if (self->_useItemIdentityWhenUpdating)
  {
    v11 = v8;
    if ([v11 conformsToProtocol:&unk_1F3D1E168])
    {
      v12 = v11;
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKDynamicCollectionViewController: useItemIdentityWhenUpdating was set to true but item %@ does not conform to PKIdentifiable", v11}];
      v12 = 0;
    }

    identifier = [v12 identifier];

    if (identifier)
    {
      [(NSMutableDictionary *)self->_itemsPendingDeletion removeObjectForKey:identifier];
    }
  }

  v13 = [(UICollectionViewDiffableDataSource *)self->_dataSource indexPathForItemIdentifier:identifier];
  if (v13)
  {
    if (self->_useItemIdentityWhenUpdating)
    {
      [(NSMutableDictionary *)self->_itemsMap setObject:v9 forKey:identifier];
      collectionView = [(PKDynamicCollectionViewController *)self collectionView];
      v15 = [collectionView cellForItemAtIndexPath:v13];

      v16 = [(PKDynamicCollectionViewController *)self _sectionAtIndexPath:v13];
      v17 = v16;
      if (v15)
      {
        v18 = v16 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v23 = animatedCopy;
        v19 = [(PKDynamicCollectionViewController *)self _cellRegistrationForSection:v16 itemIdentifier:0 item:v9];
        cellClass = [v19 cellClass];
        if (cellClass == objc_opt_class())
        {
          configurationHandler = [v19 configurationHandler];
          (configurationHandler)[2](configurationHandler, v15, v13, identifier);

          goto LABEL_17;
        }

        animatedCopy = v23;
      }
    }

    v24[0] = identifier;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [snapshot reloadItemsWithIdentifiers:v21];

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:animatedCopy];
  }

LABEL_17:
}

- (void)scrollToItem:(id)item atScrollPosition:(unint64_t)position animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = [(PKDynamicCollectionViewController *)self _indexPathForItem:item];
  if (v8)
  {
    v10 = v8;
    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    [collectionView scrollToItemAtIndexPath:v10 atScrollPosition:position animated:animatedCopy];

    v8 = v10;
  }
}

- (void)reloadDataWithoutRebuildingDataStores
{
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)reconfigureHeaderAndFooterForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(PKDynamicCollectionViewController *)self _sectionForIdentifier:?];
  if (v4)
  {
    v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource indexForSectionIdentifier:identifierCopy];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v5];
      v7 = *MEMORY[0x1E69DDC08];
      v8 = [(UICollectionView *)self->_collectionView supplementaryViewForElementKind:*MEMORY[0x1E69DDC08] atIndexPath:v6];
      if (v8)
      {
        [v4 configureSupplementaryRegistration:v8 elementKind:v7 sectionIdentifier:identifierCopy];
      }

      collectionView = self->_collectionView;
      v10 = *MEMORY[0x1E69DDC00];
      v11 = [(UICollectionView *)collectionView supplementaryViewForElementKind:*MEMORY[0x1E69DDC00] atIndexPath:v6];
      if (v11)
      {
        [v4 configureSupplementaryRegistration:v11 elementKind:v10 sectionIdentifier:identifierCopy];
      }
    }
  }
}

- (void)reloadDataForSectionIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v8[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(UICollectionViewDiffableDataSource *)self->_dataSource indexForSectionIdentifier:identifierCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    sections = [(PKDynamicCollectionViewController *)self sections];
    [(PKDynamicCollectionViewController *)self _reloadSectionMapForSections:sections animated:animatedCopy];
  }

  else
  {
    v8[0] = identifierCopy;
    sections = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(PKDynamicCollectionViewController *)self _reloadDataForSections:sections recreateSnapshot:0 animated:animatedCopy];
  }
}

- (void)reloadDataForSection:(id)section animated:(BOOL)animated
{
  animatedCopy = animated;
  identifiers = [section identifiers];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PKDynamicCollectionViewController_reloadDataForSection_animated___block_invoke;
  v8[3] = &unk_1E8013098;
  v8[4] = self;
  if ([identifiers pk_containsObjectPassingTest:v8])
  {
    sections = [(PKDynamicCollectionViewController *)self sections];
    [(PKDynamicCollectionViewController *)self _reloadSectionMapForSections:sections animated:animatedCopy];
  }

  else
  {
    [(PKDynamicCollectionViewController *)self _reloadDataForSections:identifiers recreateSnapshot:0 animated:animatedCopy];
  }
}

- (void)_reloadDataForSections:(id)sections recreateSnapshot:(BOOL)snapshot animated:(BOOL)animated
{
  animatedCopy = animated;
  snapshotCopy = snapshot;
  v115 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  if (!self->_sections)
  {
    goto LABEL_73;
  }

  if (!self->_dataSource)
  {
    goto LABEL_73;
  }

  v64 = sectionsCopy;
  isViewLoaded = [(PKDynamicCollectionViewController *)self isViewLoaded];
  sectionsCopy = v64;
  if (!isViewLoaded)
  {
    goto LABEL_73;
  }

  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v11 = !self->_retainCellSelectionCellOnReload || !snapshotCopy;
  v65 = snapshot;
  if (v11)
  {
    if (!self->_retainCellSelectionCellOnReload)
    {
LABEL_12:
      indexPathsForSelectedItems = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v12 = snapshot;
    v13 = [v64 count];
    sectionIdentifiers = [v12 sectionIdentifiers];
    v15 = [sectionIdentifiers count];

    if (v13 != v15)
    {
      goto LABEL_12;
    }
  }

  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
LABEL_13:
  v63 = animatedCopy;
  if (snapshotCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69955A0]);
    v17 = v64;
    [v16 appendSectionsWithIdentifiers:v64];
  }

  else
  {
    v16 = v65;
    v17 = v64;
  }

  v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sectionIdentifiers2 = [v65 sectionIdentifiers];
  v81 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v17;
  v72 = [obj countByEnumeratingWithState:&v99 objects:v114 count:16];
  if (v72)
  {
    v70 = *v100;
    v79 = *MEMORY[0x1E695D930];
    v67 = *MEMORY[0x1E69DDC08];
    v68 = *MEMORY[0x1E69DDC00];
    v69 = v16;
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v100 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v99 + 1) + 8 * i);
        if ([sectionIdentifiers2 containsObject:v19])
        {
          v20 = [v65 itemIdentifiersInSectionWithIdentifier:v19];
        }

        else
        {
          v20 = 0;
        }

        if (self->_useItemIdentityWhenUpdating)
        {
          [v81 addObjectsFromArray:v20];
        }

        v21 = [(PKDynamicCollectionViewController *)self _sectionForIdentifier:v19];
        v22 = [v16 itemIdentifiersInSectionWithIdentifier:v19];
        [v16 deleteItemsWithIdentifiers:v22];

        v23 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshotForSection:v19];
        v24 = [v21 snapshotWithPreviousSnapshot:v23 forSectionIdentifier:v19];
        items = [v24 items];

        if ([items count])
        {
          v74 = v23;
          v75 = v20;
          v76 = i;
          v77 = v19;
          v73 = items;
          if (self->_useItemIdentityWhenUpdating)
          {
            v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v27 = items;
            v28 = [v27 countByEnumeratingWithState:&v95 objects:v106 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v96;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v96 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v95 + 1) + 8 * j);
                  if ([v32 conformsToProtocol:&unk_1F3D1E168])
                  {
                    v33 = v32;
                  }

                  else
                  {
                    [MEMORY[0x1E695DF30] raise:v79 format:{@"PKDynamicCollectionViewController: useItemIdentityWhenUpdating was set to true but item %@ does not conform to PKIdentifiable", v32, indexPathsForSelectedItems}];
                    v33 = 0;
                  }

                  identifier = [v33 identifier];

                  v35 = [(NSMutableDictionary *)self->_itemsMap objectForKey:identifier];
                  if (v35 && (PKEqualObjects() & 1) == 0)
                  {
                    [v78 addObject:identifier];
                  }

                  [(NSMutableDictionary *)self->_itemsPendingDeletion removeObjectForKey:identifier];
                  [v81 removeObject:identifier];
                  [v80 setObject:v32 forKey:identifier];
                  [v26 addObject:identifier];
                }

                v29 = [v27 countByEnumeratingWithState:&v95 objects:v106 count:16];
              }

              while (v29);
            }

            [v69 appendItemsWithIdentifiers:v26 intoSectionWithIdentifier:v77];
            [v69 reloadItemsWithIdentifiers:v78];
          }

          else
          {
            [v16 appendItemsWithIdentifiers:items intoSectionWithIdentifier:v19];
          }

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v38 = v81;
          v39 = [v38 countByEnumeratingWithState:&v91 objects:v105 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v92;
            do
            {
              for (k = 0; k != v40; ++k)
              {
                if (*v92 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v91 + 1) + 8 * k);
                v44 = [(NSMutableDictionary *)self->_itemsPendingDeletion objectForKeyedSubscript:v43];
                integerValue = [v44 integerValue];

                v46 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
                [(NSMutableDictionary *)self->_itemsPendingDeletion setObject:v46 forKeyedSubscript:v43];
              }

              v40 = [v38 countByEnumeratingWithState:&v91 objects:v105 count:16];
            }

            while (v40);
          }

          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          items = v73;
          v47 = v73;
          v48 = [v47 countByEnumeratingWithState:&v87 objects:v104 count:16];
          v16 = v69;
          i = v76;
          if (v48)
          {
            v49 = v48;
            v50 = *v88;
            do
            {
              for (m = 0; m != v49; ++m)
              {
                if (*v88 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = [(PKDynamicCollectionViewController *)self _cellRegistrationForSection:v21 itemIdentifier:0 item:*(*(&v87 + 1) + 8 * m)];
              }

              v49 = [v47 countByEnumeratingWithState:&v87 objects:v104 count:16];
            }

            while (v49);
          }

          v53 = [(PKDynamicCollectionViewController *)self _supplementaryRegistrationForSection:v21 sectionIdentifier:v77 elementKind:v68];
          v54 = [(PKDynamicCollectionViewController *)self _supplementaryRegistrationForSection:v21 sectionIdentifier:v77 elementKind:v67];
          v23 = v74;
          v20 = v75;
        }

        else
        {
          v36 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            selfCopy = self;
            v110 = 2112;
            v111 = v19;
            v112 = 2112;
            v113 = v21;
            _os_log_impl(&dword_1BD026000, v36, OS_LOG_TYPE_DEFAULT, "PKDynamicCollectionViewController (%@) attempting to render section %@-%@ with no items..", buf, 0x20u);
          }

          v107 = v19;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
          [v16 deleteSectionsWithIdentifiers:v37];
        }
      }

      v72 = [obj countByEnumeratingWithState:&v99 objects:v114 count:16];
    }

    while (v72);
  }

  [(NSMutableDictionary *)self->_itemsMap addEntriesFromDictionary:v80];
  dataSource = self->_dataSource;
  isViewControllerActive = v63;
  if (v63)
  {
    isViewControllerActive = self->_isViewControllerActive;
  }

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __86__PKDynamicCollectionViewController__reloadDataForSections_recreateSnapshot_animated___block_invoke;
  v86[3] = &unk_1E8010970;
  v86[4] = self;
  [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v16 animatingDifferences:isViewControllerActive completion:v86];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v57 = indexPathsForSelectedItems;
  v58 = [v57 countByEnumeratingWithState:&v82 objects:v103 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v83;
    do
    {
      for (n = 0; n != v59; ++n)
      {
        if (*v83 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [(UICollectionView *)self->_collectionView selectItemAtIndexPath:*(*(&v82 + 1) + 8 * n) animated:0 scrollPosition:0];
      }

      v59 = [v57 countByEnumeratingWithState:&v82 objects:v103 count:16];
    }

    while (v59);
  }

  sectionsCopy = v64;
LABEL_73:
}

void __86__PKDynamicCollectionViewController__reloadDataForSections_recreateSnapshot_animated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 1052) == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [*(v1 + 1032) allKeys];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [*(*(a1 + 32) + 1032) objectForKeyedSubscript:v8];
          v10 = [v9 integerValue];

          if (v10 == 1)
          {
            [*(*(a1 + 32) + 1032) removeObjectForKey:v8];
            [*(*(a1 + 32) + 1024) removeObjectForKey:v8];
          }

          else
          {
            v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10 - 1];
            [*(*(a1 + 32) + 1032) setObject:v11 forKeyedSubscript:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (id)layout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E69DC808]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PKDynamicCollectionViewController_layout__block_invoke;
  v5[3] = &unk_1E80130C0;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __43__PKDynamicCollectionViewController_layout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained sectionIdentifierForIndex:a2];
  v8 = [WeakRetained _sectionForIdentifier:v7];
  v9 = [v8 layoutWithLayoutEnvironment:v5 sectionIdentifier:v7];

  if (v9)
  {
    if ([WeakRetained pkui_userInterfaceIdiomSupportsLargeLayouts] && !objc_msgSend(v9, "contentInsetsReference"))
    {
      [v9 setContentInsetsReference:4];
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = WeakRetained[126];
      v14 = 134218754;
      v15 = a2;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v13;
      _os_log_fault_impl(&dword_1BD026000, v10, OS_LOG_TYPE_FAULT, "PKDynamicCollectionViewController: Failed to find layout. Something has gone horribly wrong. sectionIndex %li; sectionIdentifier: %@; section: %@; sectionMap: %@.", &v14, 0x2Au);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = WeakRetained[126];
      v14 = 134218754;
      v15 = a2;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKDynamicCollectionViewController: Failed to find layout. Something has gone horribly wrong. sectionIndex %li; sectionIdentifier: %@; section: %@; sectionMap: %@.", &v14, 0x2Au);
    }
  }

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:?];
  if (self->_useItemIdentityWhenUpdating)
  {
    v6 = [(NSMutableDictionary *)self->_itemsMap objectForKey:v5];

    v5 = v6;
  }

  v7 = [(PKDynamicCollectionViewController *)self _sectionAtIndexPath:pathCopy];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 didSelectItem:v5];
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  if (self->_useItemIdentityWhenUpdating)
  {
    v7 = [(NSMutableDictionary *)self->_itemsMap objectForKey:v6];

    v6 = v7;
  }

  v8 = [(PKDynamicCollectionViewController *)self _sectionAtIndexPath:pathCopy];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [v8 shouldHighlightItem:v6];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:?];
  if (self->_useItemIdentityWhenUpdating)
  {
    v7 = [(NSMutableDictionary *)self->_itemsMap objectForKey:v6];

    v6 = v7;
  }

  v8 = [(PKDynamicCollectionViewController *)self _sectionAtIndexPath:pathCopy];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 willDisplayItem:v6];
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  firstObject = [paths firstObject];
  if (firstObject)
  {
    v7 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:firstObject];
    if (self->_useItemIdentityWhenUpdating)
    {
      v8 = [(NSMutableDictionary *)self->_itemsMap objectForKey:v7];

      v7 = v8;
    }

    v9 = [(PKDynamicCollectionViewController *)self _sectionAtIndexPath:firstObject];
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = [v9 contextMenuConfigurationForItem:v7];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)sectionIdentifierForIndex:(int64_t)index
{
  if (index < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSArray *)self->_sectionIdentifiers count]<= index)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:index];
    }
  }

  return v6;
}

- (id)_sectionForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSDictionary *)self->_sectionMap objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sectionAtIndex:(int64_t)index
{
  v4 = [(PKDynamicCollectionViewController *)self sectionIdentifierForIndex:index];
  v5 = [(PKDynamicCollectionViewController *)self _sectionForIdentifier:v4];

  return v5;
}

- (id)_sectionAtIndexPath:(id)path
{
  section = [path section];

  return [(PKDynamicCollectionViewController *)self _sectionAtIndex:section];
}

- (void)_deselectCellsForce:(BOOL)force
{
  forceCopy = force;
  v17 = *MEMORY[0x1E69E9840];
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  v6 = collectionView;
  if (self->_deselectSelectedCellsOnViewWillAppear || forceCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(indexPathsForSelectedItems);
          }

          [v6 deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v11++) animated:1];
        }

        while (v9 != v11);
        v9 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (id)_cellRegistrationForSection:(id)section itemIdentifier:(id)identifier item:(id)item
{
  sectionCopy = section;
  identifierCopy = identifier;
  itemCopy = item;
  v11 = itemCopy;
  if (itemCopy)
  {
    v12 = itemCopy;
    v13 = v12;
  }

  else
  {
    v14 = [(NSMutableDictionary *)self->_itemsMap objectForKey:identifierCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = identifierCopy;
    }

    v13 = v16;
  }

  v17 = __85__PKDynamicCollectionViewController__cellRegistrationForSection_itemIdentifier_item___block_invoke(v12, sectionCopy, v13);
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", objc_msgSend(v17, "cellClass"), objc_opt_class()];
  v19 = [(NSMutableDictionary *)self->_cellRegistrations objectForKey:v18];
  if (!v19)
  {
    objc_initWeak(&location, self);
    v20 = MEMORY[0x1E69DC800];
    cellClass = [v17 cellClass];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __85__PKDynamicCollectionViewController__cellRegistrationForSection_itemIdentifier_item___block_invoke_2;
    v23[3] = &unk_1E8013108;
    objc_copyWeak(&v25, &location);
    v24 = &__block_literal_global_26;
    v19 = [v20 registrationWithCellClass:cellClass configurationHandler:v23];
    [(NSMutableDictionary *)self->_cellRegistrations setObject:v19 forKey:v18];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v19;
}

id __85__PKDynamicCollectionViewController__cellRegistrationForSection_itemIdentifier_item___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 cellRegistrationForItem:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 cellRegistration];
    goto LABEL_5;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKDynamicSectionController (%@) didn't implement required cellRegistration method or property", objc_opt_class()}];
  v7 = 0;
LABEL_7:

  return v7;
}

void __85__PKDynamicCollectionViewController__cellRegistrationForSection_itemIdentifier_item___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 1052) == 1)
    {
      v11 = [WeakRetained[128] objectForKey:v8];
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
    v13 = [v10 _sectionAtIndexPath:v7];
    v14 = (*(*(a1 + 32) + 16))();
    v15 = [v14 configurationHandler];
    (v15)[2](v15, v16, v7, v12);
  }
}

- (id)_supplementaryRegistrationForSection:(id)section sectionIdentifier:(id)identifier elementKind:(id)kind
{
  sectionCopy = section;
  identifierCopy = identifier;
  kindCopy = kind;
  if (objc_opt_respondsToSelector())
  {
    v11 = [sectionCopy supplementaryRegistrationClassForKind:kindCopy sectionIdentifier:identifierCopy];
  }

  else
  {
    v11 = objc_opt_class();
  }

  v12 = v11;
  kindCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", v11, kindCopy];
  v14 = [(NSMutableDictionary *)self->_supplementaryViewRegistrations objectForKey:kindCopy];
  if (!v14)
  {
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69DC870];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __104__PKDynamicCollectionViewController__supplementaryRegistrationForSection_sectionIdentifier_elementKind___block_invoke;
    v17[3] = &unk_1E8013130;
    objc_copyWeak(&v18, &location);
    v14 = [v15 registrationWithSupplementaryClass:v12 elementKind:kindCopy configurationHandler:v17];
    [(NSMutableDictionary *)self->_supplementaryViewRegistrations setObject:v14 forKey:kindCopy];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __104__PKDynamicCollectionViewController__supplementaryRegistrationForSection_sectionIdentifier_elementKind___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v8 section];

  v11 = [WeakRetained sectionIdentifierForIndex:v10];

  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 _sectionForIdentifier:v11];

  if (objc_opt_respondsToSelector())
  {
    [v13 configureSupplementaryRegistration:v14 elementKind:v7 sectionIdentifier:v11];
  }
}

@end