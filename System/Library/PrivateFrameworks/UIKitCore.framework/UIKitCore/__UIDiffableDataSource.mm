@interface __UIDiffableDataSource
+ (void)initialize;
- (BOOL)_canApplySnapshotUpdateWithoutDiffing:(id)a3;
- (BOOL)canMoveItemAtIndexPath:(id)a3;
- (BOOL)sectionController:(id)a3 shouldCollapseItem:(id)a4;
- (BOOL)sectionController:(id)a3 shouldExpandItem:(id)a4;
- (BOOL)sectionController:(id)a3 shouldQueryForSnapshotForExpandingParentItem:(id)a4;
- (NSArray)sectionControllers;
- (NSString)description;
- (UICollectionView)_collectionView;
- (UICollectionView)collectionView;
- (UICollectionViewDiffableDataSourceReorderingHandlers)reorderingHandlers;
- (UICollectionViewDiffableDataSourceSectionSnapshotHandlers)sectionSnapshotHandlers;
- (UITableView)tableView;
- (_UICollectionViewUpdateItemApplying)viewUpdatesSink;
- (__UIDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4;
- (__UIDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4 dataSource:(id)a5;
- (__UIDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4 reuseIdentifierProvider:(id)a5 cellConfigurationHandler:(id)a6 state:(id)a7 dataSource:(id)a8;
- (__UIDiffableDataSource)initWithCollectionView:(id)a3 itemRenderers:(id)a4 rendererIdentifierProvider:(id)a5;
- (__UIDiffableDataSource)initWithCollectionView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5;
- (__UIDiffableDataSource)initWithCollectionView:(id)a3 sectionControllers:(id)a4 rendererIdentifierProvider:(id)a5;
- (__UIDiffableDataSource)initWithState:(id)a3;
- (__UIDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4;
- (__UIDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4 reuseIdentifierProvider:(id)a5 cellConfigurationHandler:(id)a6 state:(id)a7 dataSource:(id)a8;
- (__UIDiffableDataSource)initWithTableView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5;
- (__UIDiffableDataSource)initWithViewUpdatesSink:(id)a3;
- (id)_reorderingTransactionForReorderingUpdate:(id)a3;
- (id)_snapshotForSection:(id)a3;
- (id)_snapshotWithHandlerAtomic:(id)a3;
- (id)_transactionForFinalSnapshot:(id)a3 dataSourceDiffer:(id)a4 shouldSkipRebasingSectionSnapshots:(BOOL)a5;
- (id)_transactionForReloadUpdatesWithSnapshot:(id)a3;
- (id)_validReloadOrReconfigureViewUpdatesInSnapshot:(id)a3;
- (id)associatedSectionControllerForItemIdentifier:(id)a3;
- (id)associatedSectionControllerForSectionIdentifier:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)emptySnapshot;
- (id)sectionController:(id)a3 snapshotForExpandingParentItem:(id)a4 currentSectionSnapshot:(id)a5;
- (id)snapshot;
- (id)snapshotForSection:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_commitNewDataSource:(id)a3 withViewUpdates:(id)a4 viewPropertyAnimator:(id)a5 customAnimationsProvider:(id)a6 animated:(BOOL)a7 commitAlongsideHandler:(id)a8 completion:(id)a9;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableViewDefaultRowAnimation;
- (void)_applyDifferencesFromSnapshot:(id)a3 animatingDifferences:(BOOL)a4 completion:(id)a5 isOnApplyQueue:(BOOL)a6;
- (void)_applyDifferencesFromSnapshot:(id)a3 customAnimationsProvider:(id)a4;
- (void)_applyDifferencesFromSnapshot:(id)a3 toSection:(id)a4 animatingDifferences:(BOOL)a5 completion:(id)a6;
- (void)_applyDifferencesFromSnapshot:(id)a3 viewPropertyAnimator:(id)a4 customAnimationsProvider:(id)a5;
- (void)_commitRebasedSectionSnapshotsFromCurrentTransactionIfNeeded;
- (void)_commitReorderingForItemAtIndexPath:(id)a3 toDestinationIndexPath:(id)a4 shouldPerformViewAnimations:(BOOL)a5;
- (void)_commitStateAtomically:(id)a3;
- (void)_commitUpdate:(id)a3 snapshot:(id)a4 animated:(BOOL)a5 animator:(id)a6 customAnimationsProvider:(id)a7 completion:(id)a8;
- (void)_computeCurrentTransactionForFinalSnapshot:(id)a3 withDataSourceDiffer:(id)a4;
- (void)_notifyDidApplyForCurrentTransactionIfNeeded;
- (void)_notifyWillApplyForCurrentTransactionIfNeeded;
- (void)_onApplyQueue_applyDifferencesFromSnapshot:(id)a3 viewPropertyAnimator:(id)a4 customAnimationsProvider:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)_onApplyQueue_reloadFromSnapshot:(id)a3 completion:(id)a4;
- (void)_performApplyWithoutRebasingSectionSnapshots:(id)a3;
- (void)_performBatchApplyUsingReloadData:(id)a3;
- (void)_performOnApplyQueue:(atomic_ullong *)a1;
- (void)_performReloadOrReconfigureUpdateWithItems:(id)a3 dataSourceSnapshot:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_registerItemRenderers:(id)a3 rendererIdentifierProvider:(id)a4;
- (void)_resetCurrentTransaction;
- (void)_storeState:(id)a3;
- (void)_willBeginReorderingForItemAtIndexPath:(id)a3;
- (void)addAssociatedSectionControllerIfNeeded:(id)a3;
- (void)appendItemsWithIdentifiers:(id)a3 intoSectionWithIdentifier:(id)a4;
- (void)appendSectionWithIdentifier:(id)a3;
- (void)appendSectionsWithIdentifiers:(id)a3;
- (void)applyDifferencesFromSnapshot:(id)a3;
- (void)applyDifferencesFromSnapshot:(id)a3 completion:(id)a4;
- (void)deleteAllItems;
- (void)deleteItemsWithIdentifiers:(id)a3;
- (void)deleteSectionsWithIdentifiers:(id)a3;
- (void)insertItemsWithIdentifiers:(id)a3 afterItemWithIdentifier:(id)a4;
- (void)insertItemsWithIdentifiers:(id)a3 beforeItemWithIdentifier:(id)a4;
- (void)insertSectionWithIdentifier:(id)a3 afterSectionWithIdentifier:(id)a4;
- (void)insertSectionWithIdentifier:(id)a3 beforeSectionWithIdentifier:(id)a4;
- (void)insertSectionsWithIdentifiers:(id)a3 afterSectionWithIdentifier:(id)a4;
- (void)insertSectionsWithIdentifiers:(id)a3 beforeSectionWithIdentifier:(id)a4;
- (void)moveItemWithIdentifier:(id)a3 afterItemWithIdentifier:(id)a4;
- (void)moveItemWithIdentifier:(id)a3 beforeItemWithIdentifier:(id)a4;
- (void)moveSectionWithIdentifier:(id)a3 afterSectionWithIdentifier:(id)a4;
- (void)moveSectionWithIdentifier:(id)a3 beforeSectionWithIdentifier:(id)a4;
- (void)reconfigureItemsWithIdentifiers:(id)a3;
- (void)reloadFromSnapshot:(id)a3;
- (void)reloadFromSnapshot:(id)a3 completion:(id)a4;
- (void)reloadItemsWithIdentifiers:(id)a3;
- (void)reloadSectionsWithIdentifiers:(id)a3;
- (void)sectionController:(id)a3 willCollapseItem:(id)a4;
- (void)sectionController:(id)a3 willExpandItem:(id)a4;
- (void)setTableViewDefaultRowAnimation:(int64_t)a3;
- (void)validateIdentifiers;
@end

@implementation __UIDiffableDataSource

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_109);
  }
}

- (id)snapshot
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34____UIDiffableDataSource_snapshot__block_invoke;
  aBlock[3] = &unk_1E70FCE00;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(__UIDiffableDataSource *)self _snapshotWithHandlerAtomic:v3];

  return v4;
}

- (void)_notifyDidApplyForCurrentTransactionIfNeeded
{
  if (self->_currentTransaction)
  {
    v3 = [(__UIDiffableDataSource *)self didApplySnapshotHandler];

    if (v3)
    {
      v4 = [(__UIDiffableDataSource *)self didApplySnapshotHandler];
      v5 = [(NSDiffableDataSourceTransaction *)self->_currentTransaction _spiCopy];
      (v4)[2](v4, v5);
    }

    if ([(__UIDiffableDataSource *)self _isApplyingReorderingTransaction])
    {
      v6 = [(__UIDiffableDataSource *)self reorderingHandlers];
      v7 = [v6 didReorderHandler];

      if (v7)
      {
        v9 = [(__UIDiffableDataSource *)self reorderingHandlers];
        v8 = [v9 didReorderHandler];
        (v8)[2](v8, self->_currentTransaction);
      }
    }
  }
}

- (void)_resetCurrentTransaction
{
  pendingReorderingTransaction = self->_pendingReorderingTransaction;
  self->_pendingReorderingTransaction = 0;

  currentTransaction = self->_currentTransaction;
  self->_currentTransaction = 0;
}

- (void)_notifyWillApplyForCurrentTransactionIfNeeded
{
  if (self->_currentTransaction)
  {
    v3 = [(__UIDiffableDataSource *)self willApplySnapshotHandler];

    if (v3)
    {
      v4 = [(__UIDiffableDataSource *)self willApplySnapshotHandler];
      v5 = [(NSDiffableDataSourceTransaction *)self->_currentTransaction _spiCopy];
      (v4)[2](v4, v5);
    }

    if ([(__UIDiffableDataSource *)self _isApplyingReorderingTransaction])
    {
      v6 = [(__UIDiffableDataSource *)self reorderingHandlers];
      v7 = [v6 willReorderHandler];

      if (v7)
      {
        v9 = [(__UIDiffableDataSource *)self reorderingHandlers];
        v8 = [v9 willReorderHandler];
        (v8)[2](v8, self->_currentTransaction);
      }
    }
  }
}

- (void)_commitRebasedSectionSnapshotsFromCurrentTransactionIfNeeded
{
  v37 = *MEMORY[0x1E69E9840];
  if (self->_currentTransaction)
  {
    os_unfair_recursive_lock_lock_with_options();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v3 = [(NSDiffableDataSourceTransaction *)self->_currentTransaction sectionTransactions];
    v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v32;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v32 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v31 + 1) + 8 * i);
          v9 = [v8 sectionIdentifier];
          v10 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:v9];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 _extantMutableSnapshotForSection:v9];
            if (v12)
            {
              v13 = [v8 finalSnapshot];
              [v11 _updateSnapshot:v13 forSectionIdentifier:v9];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v5);
    }

    v14 = [(NSDiffableDataSourceTransaction *)self->_currentTransaction initialSnapshot];
    v15 = [(NSDiffableDataSourceTransaction *)self->_currentTransaction finalSnapshot];
    v16 = [v15 sectionIdentifiers];
    v17 = [v14 sectionIdentifiers];
    v18 = [v16 differenceFromArray:v17];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [v18 removals];
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v27 + 1) + 8 * j) object];
          v25 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:v24];
          v26 = v25;
          if (v25)
          {
            [v25 _updateSnapshot:0 forSectionIdentifier:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    os_unfair_recursive_lock_unlock();
  }
}

- (UICollectionViewDiffableDataSourceReorderingHandlers)reorderingHandlers
{
  reorderingHandlers = self->_reorderingHandlers;
  if (!reorderingHandlers)
  {
    v4 = objc_alloc_init(UICollectionViewDiffableDataSourceReorderingHandlers);
    v5 = self->_reorderingHandlers;
    self->_reorderingHandlers = v4;

    reorderingHandlers = self->_reorderingHandlers;
  }

  return reorderingHandlers;
}

- (UICollectionViewDiffableDataSourceSectionSnapshotHandlers)sectionSnapshotHandlers
{
  sectionSnapshotHandlers = self->_sectionSnapshotHandlers;
  if (!sectionSnapshotHandlers)
  {
    v4 = objc_alloc_init(UICollectionViewDiffableDataSourceSectionSnapshotHandlers);
    v5 = self->_sectionSnapshotHandlers;
    self->_sectionSnapshotHandlers = v4;

    sectionSnapshotHandlers = self->_sectionSnapshotHandlers;
  }

  return sectionSnapshotHandlers;
}

- (UICollectionView)_collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4 reuseIdentifierProvider:(id)a5 cellConfigurationHandler:(id)a6 state:(id)a7 dataSource:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v32.receiver = self;
  v32.super_class = __UIDiffableDataSource;
  v20 = [(__UIDiffableDataSource *)&v32 init];
  if (v20)
  {
    v21 = [[_UIDiffableDataSourceViewUpdater alloc] initWithCollectionView:v14];
    viewUpdater = v20->_viewUpdater;
    v20->_viewUpdater = v21;

    v23 = [v15 copy];
    collectionViewCellProvider = v20->_collectionViewCellProvider;
    v20->_collectionViewCellProvider = v23;

    v25 = [v16 copy];
    reuseIdentifierProvider = v20->_reuseIdentifierProvider;
    v20->_reuseIdentifierProvider = v25;

    v27 = [v17 copy];
    collectionViewCellConfigurationHandler = v20->_collectionViewCellConfigurationHandler;
    v20->_collectionViewCellConfigurationHandler = v27;

    v29 = [[off_1E70ECC68 alloc] initWithState:v18];
    [(__UIDiffableDataSource *)v20 _storeState:v29];

    objc_storeWeak(&v20->_collectionView, v14);
    _UIDiffableDataSourceCommonInit(v20);
    if (v19)
    {
      v30 = v19;
    }

    else
    {
      v30 = v20;
    }

    [v14 setDataSource:v30];
  }

  return v20;
}

- (__UIDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4 reuseIdentifierProvider:(id)a5 cellConfigurationHandler:(id)a6 state:(id)a7 dataSource:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v32.receiver = self;
  v32.super_class = __UIDiffableDataSource;
  v20 = [(__UIDiffableDataSource *)&v32 init];
  if (v20)
  {
    v21 = [[_UIDiffableDataSourceViewUpdater alloc] initWithTableView:v14];
    viewUpdater = v20->_viewUpdater;
    v20->_viewUpdater = v21;

    v23 = [v15 copy];
    tableViewCellProvider = v20->_tableViewCellProvider;
    v20->_tableViewCellProvider = v23;

    v25 = [v16 copy];
    reuseIdentifierProvider = v20->_reuseIdentifierProvider;
    v20->_reuseIdentifierProvider = v25;

    v27 = [v17 copy];
    tableViewCellConfigurationHandler = v20->_tableViewCellConfigurationHandler;
    v20->_tableViewCellConfigurationHandler = v27;

    v29 = [[off_1E70ECC68 alloc] initWithState:v18];
    [(__UIDiffableDataSource *)v20 _storeState:v29];

    objc_storeWeak(&v20->_tableView, v14);
    _UIDiffableDataSourceCommonInit(v20);
    if (v19)
    {
      v30 = v19;
    }

    else
    {
      v30 = v20;
    }

    [v14 setDataSource:v30];
  }

  return v20;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v4 = [WeakRetained dataSource];

  if (v4 == self)
  {
    v5 = objc_loadWeakRetained(&self->_tableView);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__UIDiffableDataSource)initWithState:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = __UIDiffableDataSource;
  v5 = [(__UIDiffableDataSource *)&v8 init];
  if (v5)
  {
    v6 = [[off_1E70ECC68 alloc] initWithState:v4];
    [(__UIDiffableDataSource *)v5 _storeState:v6];

    _UIDiffableDataSourceCommonInit(v5);
  }

  return v5;
}

- (__UIDiffableDataSource)initWithViewUpdatesSink:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = __UIDiffableDataSource;
  v5 = [(__UIDiffableDataSource *)&v10 init];
  if (v5)
  {
    v6 = [[_UIDiffableDataSourceViewUpdater alloc] initWithCollectionViewUpdatesSink:v4];
    viewUpdater = v5->_viewUpdater;
    v5->_viewUpdater = v6;

    v8 = objc_alloc_init(off_1E70ECC68);
    [(__UIDiffableDataSource *)v5 _storeState:v8];

    _UIDiffableDataSourceCommonInit(v5);
  }

  return v5;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(off_1E70ECC68);
  v9 = [(__UIDiffableDataSource *)self initWithCollectionView:v7 cellProvider:v6 reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v8 dataSource:0];

  return v9;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)a3 sectionControllers:(id)a4 rendererIdentifierProvider:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithCollectionView:v8 cellProvider:0 reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v11 dataSource:0];

  v13 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:{objc_msgSend(v9, "count")}];
  sectionControllers = v12->_sectionControllers;
  v12->_sectionControllers = v13;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        [v20 setDataSource:{v12, v23}];
        v21 = [v20 itemRenderers];
        [(__UIDiffableDataSource *)v12 _registerItemRenderers:v21 rendererIdentifierProvider:v10];

        [(NSHashTable *)v12->_sectionControllers addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  return v12;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)a3 itemRenderers:(id)a4 rendererIdentifierProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithCollectionView:v10 cellProvider:0 reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v11 dataSource:0];

  [(__UIDiffableDataSource *)v12 _registerItemRenderers:v9 rendererIdentifierProvider:v8];
  return v12;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4 dataSource:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithCollectionView:v10 cellProvider:v9 reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v11 dataSource:v8];

  return v12;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithCollectionView:v10 cellProvider:0 reuseIdentifierProvider:v9 cellConfigurationHandler:v8 state:v11 dataSource:0];

  return v12;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v4 = [WeakRetained dataSource];

  if (v4 == self)
  {
    v5 = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__UIDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(off_1E70ECC68);
  v9 = [(__UIDiffableDataSource *)self initWithTableView:v7 cellProvider:v6 reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v8 dataSource:0];

  return v9;
}

- (__UIDiffableDataSource)initWithTableView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithTableView:v10 cellProvider:0 reuseIdentifierProvider:v9 cellConfigurationHandler:v8 state:v11 dataSource:0];

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v7 = [(_UIDiffableDataSourceState *)self->_state sections];
  v8 = [(_UIDiffableDataSourceState *)self->_state identifiers];
  v9 = [v3 stringWithFormat:@"<%@ %p: sectionCounts=%@ sections=[%p]; identifiers=[%p]>", v5, self, v6, v7, v8];;

  return v9;
}

- (void)appendItemsWithIdentifiers:(id)a3 intoSectionWithIdentifier:(id)a4
{
  state = self->_state;
  v8 = a4;
  v9 = a3;
  v10 = [(_UIDiffableDataSourceState *)state dataSourceSnapshot];
  v11 = [v10 numberOfSections];

  if (v11 <= 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:390 description:@"There are currently no sections in the data source. Please add a section first."];
  }

  v13 = [(__UIDiffableDataSource *)self snapshot];
  [v13 appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:v8];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v13];
}

- (void)insertItemsWithIdentifiers:(id)a3 beforeItemWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:398 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:399 description:{@"Invalid parameter not satisfying: %@", @"destinationIdentifier"}];

LABEL_3:
  v8 = [(__UIDiffableDataSource *)self snapshot];
  [v8 insertItemsWithIdentifiers:v11 beforeItemWithIdentifier:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v8];
}

- (void)insertItemsWithIdentifiers:(id)a3 afterItemWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:408 description:{@"Invalid parameter not satisfying: %@", @"destinationIdentifier"}];

LABEL_3:
  v8 = [(__UIDiffableDataSource *)self snapshot];
  [v8 insertItemsWithIdentifiers:v11 afterItemWithIdentifier:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v8];
}

- (void)deleteItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(__UIDiffableDataSource *)self snapshot];
  [v5 deleteItemsWithIdentifiers:v4];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v5];
}

- (void)deleteAllItems
{
  v3 = [(__UIDiffableDataSource *)self emptySnapshot];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v3];
}

- (void)moveItemWithIdentifier:(id)a3 beforeItemWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"fromIdentifier"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"toIdentifier"}];

LABEL_3:
  v8 = [(__UIDiffableDataSource *)self snapshot];
  [v8 moveItemWithIdentifier:v11 beforeItemWithIdentifier:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v8];
}

- (void)moveItemWithIdentifier:(id)a3 afterItemWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"fromIdentifier"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:437 description:{@"Invalid parameter not satisfying: %@", @"toIdentifier"}];

LABEL_3:
  v8 = [(__UIDiffableDataSource *)self snapshot];
  [v8 moveItemWithIdentifier:v11 afterItemWithIdentifier:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v8];
}

- (void)reloadItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(__UIDiffableDataSource *)self snapshot];
  [v5 reloadItemsWithIdentifiers:v4];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v5];
}

- (void)reconfigureItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(__UIDiffableDataSource *)self snapshot];
  [v5 reconfigureItemsWithIdentifiers:v4];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v5];
}

- (void)appendSectionsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(__UIDiffableDataSource *)self snapshot];
  [v5 appendSectionsWithIdentifiers:v4];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v5];
}

- (void)insertSectionsWithIdentifiers:(id)a3 beforeSectionWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_3:
  v8 = [(__UIDiffableDataSource *)self snapshot];
  [v8 insertSectionsWithIdentifiers:v11 beforeSectionWithIdentifier:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v8];
}

- (void)insertSectionsWithIdentifiers:(id)a3 afterSectionWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_3:
  v8 = [(__UIDiffableDataSource *)self snapshot];
  [v8 insertSectionsWithIdentifiers:v11 afterSectionWithIdentifier:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v8];
}

- (void)deleteSectionsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(__UIDiffableDataSource *)self snapshot];
  [v5 deleteSectionsWithIdentifiers:v4];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v5];
}

- (void)moveSectionWithIdentifier:(id)a3 beforeSectionWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_3:
  v8 = [(__UIDiffableDataSource *)self snapshot];
  [v8 moveSectionWithIdentifier:v11 beforeSectionWithIdentifier:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v8];
}

- (void)moveSectionWithIdentifier:(id)a3 afterSectionWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:499 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_3:
  v8 = [(__UIDiffableDataSource *)self snapshot];
  [v8 moveSectionWithIdentifier:v11 afterSectionWithIdentifier:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v8];
}

- (void)reloadSectionsWithIdentifiers:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:507 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v5 = [(__UIDiffableDataSource *)self snapshot];
  [v5 reloadSectionsWithIdentifiers:v7];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v5];
}

- (void)appendSectionWithIdentifier:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  v6 = [(__UIDiffableDataSource *)self snapshot];
  v9[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v6 appendSectionsWithIdentifiers:v7];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v6];
}

- (void)insertSectionWithIdentifier:(id)a3 beforeSectionWithIdentifier:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(__UIDiffableDataSource *)self snapshot];
  v14[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v10 insertSectionsWithIdentifiers:v11 beforeSectionWithIdentifier:v9];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v10];
}

- (void)insertSectionWithIdentifier:(id)a3 afterSectionWithIdentifier:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:535 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(__UIDiffableDataSource *)self snapshot];
  v14[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v10 insertSectionsWithIdentifiers:v11 afterSectionWithIdentifier:v9];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v10];
}

- (id)emptySnapshot
{
  v2 = objc_alloc_init(off_1E70ECC70);

  return v2;
}

- (void)_performOnApplyQueue:(atomic_ullong *)a1
{
  v3 = a2;
  if (a1)
  {
    if (pthread_main_np() == 1 && [(atomic_ullong *)a1 outstandingApplyCount]>= 1)
    {
      v4 = [(atomic_ullong *)a1 viewUpdater];
      v5 = [v4 targetView];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__APPLYING_SNAPSHOTS_REENTRANTLY_OR_ON_MAIN_AND_BACKGROUND_THREADS(v5);
    }

    v6 = [(atomic_ullong *)a1 applyQueue];

    if (!v6)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel__performOnApplyQueue_ object:a1 file:@"_UIDiffableDataSourceImpl.m" lineNumber:583 description:{@"Invalid parameter not satisfying: %@", @"self.applyQueue != nil"}];
    }

    atomic_fetch_add_explicit(a1 + 29, 1uLL, memory_order_relaxed);
    v7 = [(atomic_ullong *)a1 applyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47____UIDiffableDataSource__performOnApplyQueue___block_invoke;
    block[3] = &unk_1E70F4A50;
    block[4] = a1;
    v10 = v3;
    dispatch_sync(v7, block);
  }
}

- (void)applyDifferencesFromSnapshot:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55____UIDiffableDataSource_applyDifferencesFromSnapshot___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v6];
}

- (void)applyDifferencesFromSnapshot:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66____UIDiffableDataSource_applyDifferencesFromSnapshot_completion___block_invoke;
  v10[3] = &unk_1E70FCE28;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v10];
}

- (void)reloadFromSnapshot:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45____UIDiffableDataSource_reloadFromSnapshot___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v6];
}

- (void)reloadFromSnapshot:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56____UIDiffableDataSource_reloadFromSnapshot_completion___block_invoke;
  v10[3] = &unk_1E70FCE28;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v10];
}

- (void)_onApplyQueue_reloadFromSnapshot:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (pthread_main_np() == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  [(__UIDiffableDataSource *)self setMutationQueueSource:v8 | [(__UIDiffableDataSource *)self mutationQueueSource]];
  if ([(__UIDiffableDataSource *)self mutationQueueSource]== 6)
  {
    v9 = *(__UILogGetCategoryCachedImpl("UIDiffing", &_onApplyQueue_reloadFromSnapshot_completion____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [(__UIDiffableDataSource *)self viewUpdater];
      v12 = [v11 targetView];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Warning: applying updates in a non-thread confined manner is dangerous and can lead to deadlocks. Please always submit updates either always on the main queue or always off the main queue - view=%@", buf, 0xCu);
    }
  }

  [v6 _prepareForApplyToDataSource];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70____UIDiffableDataSource__onApplyQueue_reloadFromSnapshot_completion___block_invoke;
  aBlock[3] = &unk_1E70FCE28;
  aBlock[4] = self;
  v18 = v6;
  v19 = v7;
  v13 = v7;
  v14 = v6;
  v15 = _Block_copy(aBlock);
  v16 = [(__UIDiffableDataSource *)self applyQueue];
  dispatch_assert_queue_V2(v16);

  if (pthread_main_np() == 1)
  {
    v15[2](v15);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v15);
  }
}

- (void)_applyDifferencesFromSnapshot:(id)a3 animatingDifferences:(BOOL)a4 completion:(id)a5 isOnApplyQueue:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103____UIDiffableDataSource__applyDifferencesFromSnapshot_animatingDifferences_completion_isOnApplyQueue___block_invoke;
  v16[3] = &unk_1E70F3798;
  v16[4] = self;
  v17 = v10;
  v19 = a4;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = _Block_copy(v16);
  v15 = v14;
  if (v6)
  {
    v14[2](v14);
  }

  else
  {
    [(__UIDiffableDataSource *)self _performOnApplyQueue:v14];
  }
}

- (void)setTableViewDefaultRowAnimation:(int64_t)a3
{
  v4 = [(__UIDiffableDataSource *)self viewUpdater];
  [v4 setTableViewRowAnimation:a3];
}

- (int64_t)tableViewDefaultRowAnimation
{
  v2 = [(__UIDiffableDataSource *)self viewUpdater];
  v3 = [v2 tableViewRowAnimation];

  return v3;
}

- (void)_applyDifferencesFromSnapshot:(id)a3 customAnimationsProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81____UIDiffableDataSource__applyDifferencesFromSnapshot_customAnimationsProvider___block_invoke;
  v10[3] = &unk_1E70FCE28;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v10];
}

- (void)_applyDifferencesFromSnapshot:(id)a3 viewPropertyAnimator:(id)a4 customAnimationsProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102____UIDiffableDataSource__applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider___block_invoke;
  v14[3] = &unk_1E70F5F08;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v14];
}

- (void)_applyDifferencesFromSnapshot:(id)a3 toSection:(id)a4 animatingDifferences:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  os_unfair_recursive_lock_lock_with_options();
  v13 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:v11];
  if (!v13)
  {
    v13 = [[_UIDiffableDataSourceSectionControllerInternal alloc] initWithDiffableDataSourceImpl:self];
    [(__UIDiffableDataSource *)self addAssociatedSectionControllerIfNeeded:v13];
  }

  os_unfair_recursive_lock_unlock();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98____UIDiffableDataSource__applyDifferencesFromSnapshot_toSection_animatingDifferences_completion___block_invoke;
  v18[3] = &unk_1E70FCE78;
  v18[4] = self;
  v19 = v13;
  v20 = v10;
  v21 = v11;
  v23 = a5;
  v22 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v13;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v18];
}

- (id)snapshotForSection:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:v4];
  v6 = v5;
  if (v5 && ([v5 _extantMutableSnapshotForSection:v4], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v7 copy];

    os_unfair_recursive_lock_unlock();
    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    os_unfair_recursive_lock_unlock();
  }

  v10 = [(__UIDiffableDataSource *)self snapshot];
  if ([v10 indexOfSectionIdentifier:v4] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v10 itemIdentifiersInSectionWithIdentifier:v4];
    if ([v11 count])
    {
      v9 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
      [(NSDiffableDataSourceSectionSnapshot *)v9 appendItems:v11];

      if (v9)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  v9 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
LABEL_13:

  return v9;
}

- (id)_snapshotForSection:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 snapshotForSection:v4];
    os_unfair_recursive_lock_unlock();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    os_unfair_recursive_lock_unlock();
  }

  v7 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
LABEL_6:

  return v7;
}

- (void)_performBatchApplyUsingReloadData:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:806 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];
  }

  if (pthread_main_np() != 1)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = NSStringFromSelector(a2);
    [v17 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:807 description:{@"%@ is only supported on the main queue", v18}];
  }

  if (self->_completionHandlersForBatchApply)
  {
    v5[2](v5);
  }

  else
  {
    v6 = objc_opt_new();
    completionHandlersForBatchApply = self->_completionHandlersForBatchApply;
    self->_completionHandlersForBatchApply = v6;

    v5[2](v5);
    v8 = [(__UIDiffableDataSource *)self viewUpdater];
    [v8 _reloadData];

    v9 = self->_completionHandlersForBatchApply;
    v10 = self->_completionHandlersForBatchApply;
    self->_completionHandlersForBatchApply = 0;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v19 + 1) + 8 * i) + 16))();
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }
}

- (void)_onApplyQueue_applyDifferencesFromSnapshot:(id)a3 viewPropertyAnimator:(id)a4 customAnimationsProvider:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v68 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (!v13)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:837 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];
  }

  if (pthread_main_np() == 1)
  {
    v17 = 2;
  }

  else
  {
    v17 = 4;
  }

  [(__UIDiffableDataSource *)self setMutationQueueSource:v17 | [(__UIDiffableDataSource *)self mutationQueueSource]];
  if ([(__UIDiffableDataSource *)self mutationQueueSource]== 6)
  {
    v18 = *(__UILogGetCategoryCachedImpl("UIDiffing", &_onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      [(__UIDiffableDataSource *)self viewUpdater];
      v21 = v20 = a2;
      v22 = [v21 targetView];
      *buf = 138412290;
      v67 = v22;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Warning: applying updates in a non-thread confined manner is dangerous and can lead to deadlocks. Please always submit updates either always on the main queue or always off the main queue - view=%@", buf, 0xCu);

      a2 = v20;
    }
  }

  if ([(__UIDiffableDataSource *)self isSuppressingViewUpdates])
  {
    [(__UIDiffableDataSource *)self _onApplyQueue_reloadFromSnapshot:v13 completion:v16];
  }

  else
  {
    v42 = v16;
    [v13 _prepareForApplyToDataSource];
    v43 = v15;
    v23 = a2;
    if ([(__UIDiffableDataSource *)self _isApplyingReorderingTransaction])
    {
      pendingReorderingTransactionShouldPerformViewAnimations = self->_pendingReorderingTransactionShouldPerformViewAnimations;
    }

    else
    {
      pendingReorderingTransactionShouldPerformViewAnimations = 1;
    }

    v25 = pendingReorderingTransactionShouldPerformViewAnimations;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke;
    aBlock[3] = &unk_1E70FCEA0;
    aBlock[4] = self;
    v26 = v13;
    v64 = v26;
    v65 = v25;
    v41 = _Block_copy(aBlock);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_2;
    v56[3] = &unk_1E70FCEC8;
    v61 = v25;
    v56[4] = self;
    v27 = v26;
    v57 = v27;
    v28 = v42;
    v59 = v28;
    v40 = v14;
    v29 = v14;
    v58 = v29;
    v30 = v15;
    v60 = v30;
    v62 = a6;
    v31 = _Block_copy(v56);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_5;
    v50[3] = &unk_1E70FCEF0;
    v54 = v23;
    v50[4] = self;
    v55 = a6;
    v51 = v29;
    v52 = v30;
    v53 = v28;
    v32 = _Block_copy(v50);
    v33 = [(__UIDiffableDataSource *)self applyQueue];

    if (!v33)
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      [v39 handleFailureInMethod:v23 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:929 description:{@"Invalid parameter not satisfying: %@", @"self.applyQueue != nil"}];
    }

    v34 = [(__UIDiffableDataSource *)self applyQueue];
    dispatch_assert_queue_V2(v34);

    if ([(__UIDiffableDataSource *)self _canApplySnapshotUpdateWithoutDiffing:v27])
    {
      v14 = v40;
      v35 = v41;
      v16 = v42;
      v36 = v31;
      if (pthread_main_np() == 1)
      {
        v32[2](v32, v27);
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_6;
        block[3] = &unk_1E70F4A50;
        v49 = v32;
        v48 = v27;
        dispatch_sync(MEMORY[0x1E69E96A0], block);
      }

      v15 = v43;
    }

    else
    {
      v35 = v41;
      v37 = (*(v41 + 2))(v41);
      v14 = v40;
      v16 = v42;
      v36 = v31;
      if (pthread_main_np() == 1)
      {
        (*(v31 + 2))(v31, v37);
      }

      else
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_7;
        v44[3] = &unk_1E70F4A50;
        v46 = v31;
        v45 = v37;
        dispatch_sync(MEMORY[0x1E69E96A0], v44);
      }

      v15 = v43;
    }
  }
}

- (void)_performReloadOrReconfigureUpdateWithItems:(id)a3 dataSourceSnapshot:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = [(__UIDiffableDataSource *)self viewUpdater];
  LOBYTE(v13) = a5;
  [v14 _performUpdateWithCollectionViewUpdateItems:v12 dataSourceSnapshot:v11 updateHandler:&__block_literal_global_76 completion:v10 viewPropertyAnimator:0 customAnimationsProvider:0 animated:v13];
}

- (void)_commitUpdate:(id)a3 snapshot:(id)a4 animated:(BOOL)a5 animator:(id)a6 customAnimationsProvider:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v39 = a8;
  v38 = a7;
  v16 = a6;
  if (pthread_main_np() != 1)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:969 description:@"Error: Updates can only be committed on the main thread."];
  }

  v17 = [v14 action];
  v41 = v14;
  if (v17 == 2)
  {
    v18 = [(__UIDiffableDataSource *)self _validReloadOrReconfigureViewUpdatesInSnapshot:v15];
    v19 = v18;
    v20 = MEMORY[0x1E695E0F0];
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = [[off_1E70ECC68 alloc] initWithStateAdvancingGenerationID:self->_state];
  }

  else
  {
    v23 = v17;
    v24 = [(_UIDiffableDataSourceState *)self->_state identifiers];
    v25 = [v24 mutableCopy];

    v26 = [(_UIDiffableDataSourceState *)self->_state sections];
    v27 = [v26 mutableCopy];

    v28 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
    v29 = [off_1E70ECC48 snapshotterForSnapshot:v28];

    switch(v23)
    {
      case 3:
        _UIDiffableDataSourceApplyMoveUpdate();
      case 1:
        _UIDiffableDataSourceApplyDeleteUpdate();
      case 0:
        _UIDiffableDataSourceApplyInsertUpdate();
    }

    v21 = MEMORY[0x1E695E0F0];
    v30 = [off_1E70ECC68 alloc];
    v31 = [MEMORY[0x1E696AFB0] UUID];
    v22 = [v30 initWithGenerationID:v31 identifiers:v25 sections:v27 dataSourceSnapshot:v29];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103____UIDiffableDataSource__commitUpdate_snapshot_animated_animator_customAnimationsProvider_completion___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v43 = v22;
  v32 = v22;
  v33 = _Block_copy(aBlock);
  [(__UIDiffableDataSource *)self _computeCurrentTransactionForFinalSnapshot:v15 withDataSourceDiffer:0];
  [(__UIDiffableDataSource *)self _notifyWillApplyForCurrentTransactionIfNeeded];
  v34 = [(__UIDiffableDataSource *)self viewUpdater];
  v35 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  LOBYTE(v37) = a5;
  [v34 _performUpdateWithCollectionViewUpdateItems:v21 dataSourceSnapshot:v35 updateHandler:v33 completion:v39 viewPropertyAnimator:v16 customAnimationsProvider:v38 animated:v37];

  [(__UIDiffableDataSource *)self _notifyDidApplyForCurrentTransactionIfNeeded];
  [(__UIDiffableDataSource *)self _resetCurrentTransaction];
}

- (id)_validReloadOrReconfigureViewUpdatesInSnapshot:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 pendingSnapshotUpdates];
  v28 = v3;
  v5 = [v3 state];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v38;
    v29 = *v38;
    while (1)
    {
      v10 = 0;
      v30 = v7;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        if ([v11 action] == 2)
        {
          v32 = v10;
          v12 = [v11 isSectionOperation];
          v13 = [v11 shouldReconfigure];
          v14 = [v11 identifiers];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (!v15)
          {
            goto LABEL_27;
          }

          v16 = v15;
          v17 = *v34;
          if (v13)
          {
            v18 = 2;
          }

          else
          {
            v18 = 0;
          }

          while (1)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              if (v12)
              {
                v21 = [v5 indexOfSectionIdentifier:v20];
                if (v21 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }

                v22 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:v21];
              }

              else
              {
                v22 = [v5 indexPathForItemIdentifier:v20];
              }

              v23 = v22;
              if (v22)
              {
                v24 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v22 finalIndexPath:0 updateAction:2];
                v25 = v24;
                if (v24)
                {
                  *&v24->_updateItemFlags = *&v24->_updateItemFlags & 0xFD | v18;
                }

                if (v8)
                {
                  [v8 addObject:v24];
                }

                else
                {
                  v8 = [MEMORY[0x1E695DF70] arrayWithObject:v24];
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (!v16)
            {
LABEL_27:

              v9 = v29;
              v7 = v30;
              v10 = v32;
              break;
            }
          }
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (!v7)
      {
        goto LABEL_32;
      }
    }
  }

  v8 = 0;
LABEL_32:

  v26 = v8;
  return v8;
}

- (int64_t)_commitNewDataSource:(id)a3 withViewUpdates:(id)a4 viewPropertyAnimator:(id)a5 customAnimationsProvider:(id)a6 animated:(BOOL)a7 commitAlongsideHandler:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a8;
  v17 = a9;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  if (pthread_main_np() != 1)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1075 description:@"Error: Updates can only be committed on the main thread."];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __152____UIDiffableDataSource__commitNewDataSource_withViewUpdates_viewPropertyAnimator_customAnimationsProvider_animated_commitAlongsideHandler_completion___block_invoke;
  aBlock[3] = &unk_1E70FCE28;
  v33 = v15;
  v34 = self;
  v35 = v16;
  v30 = v16;
  v21 = v15;
  v22 = _Block_copy(aBlock);
  kdebug_trace();
  v23 = [(__UIDiffableDataSource *)self viewUpdater];
  v24 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v25 = [off_1E70ECC48 snapshotterForSnapshot:v24];
  LOBYTE(v29) = a7;
  v26 = [v23 _performUpdateWithCollectionViewUpdateItems:v20 dataSourceSnapshot:v25 updateHandler:v22 completion:v17 viewPropertyAnimator:v19 customAnimationsProvider:v18 animated:v29];

  kdebug_trace();
  return v26;
}

- (BOOL)_canApplySnapshotUpdateWithoutDiffing:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = [v5 generationID];
  v7 = [(_UIDiffableDataSourceState *)self->_state generationID];
  v8 = [v6 isEqual:v7];

  v9 = [v4 pendingSnapshotUpdates];

  v10 = [v9 count];
  LODWORD(v9) = [(NSHashTable *)self->_sectionControllers count]== 0;
  v11 = v9 | [(__UIDiffableDataSource *)self isApplyingWithoutRebasingSectionSnapshots];
  if (v10 == 1)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12 & v11;
}

- (id)_snapshotWithHandlerAtomic:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__34;
  v18 = __Block_byref_object_dispose__34;
  v19 = 0;
  v5 = [(__UIDiffableDataSource *)self snapshotQueue];

  if (v5)
  {
    v6 = [(__UIDiffableDataSource *)self snapshotQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53____UIDiffableDataSource__snapshotWithHandlerAtomic___block_invoke;
    v11[3] = &unk_1E70FCF18;
    v13 = &v14;
    v12 = v4;
    dispatch_sync(v6, v11);

    v7 = v12;
  }

  else
  {
    v8 = v4[2](v4);
    v7 = v15[5];
    v15[5] = v8;
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)_commitStateAtomically:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49____UIDiffableDataSource__commitStateAtomically___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(__UIDiffableDataSource *)self snapshotQueue];

  if (v7)
  {
    v8 = [(__UIDiffableDataSource *)self snapshotQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49____UIDiffableDataSource__commitStateAtomically___block_invoke_2;
    block[3] = &unk_1E70F0F78;
    v10 = v6;
    dispatch_sync(v8, block);
  }

  else
  {
    v6[2](v6);
  }
}

- (void)_storeState:(id)a3
{
  v4 = a3;
  [v4 willBecomeWiredToDataSource];
  state = self->_state;
  self->_state = v4;
}

- (void)_registerItemRenderers:(id)a3 rendererIdentifierProvider:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_rendererIdentifierProvider)
  {
    v9 = [v7 copy];
    rendererIdentifierProvider = self->_rendererIdentifierProvider;
    self->_rendererIdentifierProvider = v9;
  }

  if (!self->_rendererMap)
  {
    v11 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    rendererMap = self->_rendererMap;
    self->_rendererMap = v11;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [v18 rendererIdentifier];
        if (!v19)
        {
          v23 = [MEMORY[0x1E696AAA8] currentHandler];
          [v23 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1162 description:{@"Invalid parameter not satisfying: %@", @"rendererIdentifier"}];
        }

        [(NSMapTable *)self->_rendererMap setObject:v18 forKey:v19];
        WeakRetained = objc_loadWeakRetained(&self->_collectionView);
        v21 = [v18 cellClass];
        v22 = [v18 cellReuseIdentifier];
        [WeakRetained registerClass:v21 forCellWithReuseIdentifier:v22];
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  if (!self->_collectionViewCellProvider)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76____UIDiffableDataSource__registerItemRenderers_rendererIdentifierProvider___block_invoke;
    aBlock[3] = &unk_1E70FCF40;
    objc_copyWeak(&v28, &location);
    v24 = _Block_copy(aBlock);
    collectionViewCellProvider = self->_collectionViewCellProvider;
    self->_collectionViewCellProvider = v24;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

- (void)addAssociatedSectionControllerIfNeeded:(id)a3
{
  v4 = a3;
  sectionControllers = self->_sectionControllers;
  v8 = v4;
  if (!sectionControllers)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:1];
    v7 = self->_sectionControllers;
    self->_sectionControllers = v6;

    v4 = v8;
    sectionControllers = self->_sectionControllers;
  }

  [(NSHashTable *)sectionControllers addObject:v4];
}

- (id)associatedSectionControllerForItemIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(__UIDiffableDataSource *)self sectionIdentifierForSectionContainingItemIdentifier:?];
    if (v4)
    {
      v5 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)associatedSectionControllerForSectionIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (sectionControllers = self->_sectionControllers) != 0)
  {
    if ([(NSHashTable *)sectionControllers count]== 1)
    {
      v6 = [(NSHashTable *)self->_sectionControllers allObjects];
      v7 = [(NSHashTable *)v6 firstObject];
LABEL_16:
      v8 = v7;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = self->_sectionControllers;
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            v12 = [v11 associatedSectionIdentifiers];
            v13 = [v12 containsObject:v4];

            if (v13)
            {
              v7 = v11;
              goto LABEL_16;
            }
          }

          v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_performApplyWithoutRebasingSectionSnapshots:(id)a3
{
  v4 = a3;
  v5 = [(__UIDiffableDataSource *)self isApplyingWithoutRebasingSectionSnapshots];
  [(__UIDiffableDataSource *)self setIsApplyingWithoutRebasingSectionSnapshots:1];
  v4[2](v4);

  [(__UIDiffableDataSource *)self setIsApplyingWithoutRebasingSectionSnapshots:v5];
}

- (void)_computeCurrentTransactionForFinalSnapshot:(id)a3 withDataSourceDiffer:(id)a4
{
  v10 = a3;
  v6 = a4;
  pendingReorderingTransaction = self->_pendingReorderingTransaction;
  if (pendingReorderingTransaction)
  {
    objc_storeStrong(&self->_currentTransaction, pendingReorderingTransaction);
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v8 = [(__UIDiffableDataSource *)self _transactionForFinalSnapshot:v10 dataSourceDiffer:v6 shouldSkipRebasingSectionSnapshots:[(__UIDiffableDataSource *)self isApplyingWithoutRebasingSectionSnapshots]];
    currentTransaction = self->_currentTransaction;
    self->_currentTransaction = v8;

    os_unfair_recursive_lock_unlock();
  }
}

- (BOOL)canMoveItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(__UIDiffableDataSource *)self reorderingHandlers];
  v6 = [v5 canReorderItemHandler];

  if (!v6)
  {
    v11 = [(__UIDiffableDataSource *)self canReorderItemHandler];

    if (!v11)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v7 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:v4];
    if (v7)
    {
      v8 = [(__UIDiffableDataSource *)self canReorderItemHandler];
      v10 = (v8)[2](v8, v7);
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v7 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:v4];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [(__UIDiffableDataSource *)self reorderingHandlers];
  v9 = [v8 canReorderItemHandler];
  v10 = (v9)[2](v9, v7);

LABEL_7:
LABEL_9:

LABEL_10:
  return v10;
}

- (void)_willBeginReorderingForItemAtIndexPath:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:a3];
  if (v4)
  {
    v5 = [(__UIDiffableDataSource *)self sectionIdentifierForSectionContainingItemIdentifier:v4];
    if (v5)
    {
      v6 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 _extantMutableSnapshotForSection:v5];
        v9 = v8;
        if (v8 && [v8 isExpanded:v4])
        {
          v10 = [v7 _extantMutableSnapshotForSection:v5];
          v11 = [v10 copy];

          if (v11)
          {
            v13[0] = v4;
            v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
            [v11 collapseItems:v12];

            [(__UIDiffableDataSource *)self applySnapshot:v11 toSection:v5 animatingDifferences:1 completion:0];
          }
        }
      }
    }
  }
}

- (void)_commitReorderingForItemAtIndexPath:(id)a3 toDestinationIndexPath:(id)a4 shouldPerformViewAnimations:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v14 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v9 finalIndexPath:v8 updateAction:3];

  v10 = [(__UIDiffableDataSource *)self _reorderingTransactionForReorderingUpdate:v14];
  pendingReorderingTransaction = self->_pendingReorderingTransaction;
  self->_pendingReorderingTransaction = v10;

  v12 = [(NSDiffableDataSourceTransaction *)self->_pendingReorderingTransaction finalSnapshot];
  self->_pendingReorderingTransactionShouldPerformViewAnimations = a5;
  v13 = [v12 impl];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:v13 animatingDifferences:1];
}

- (id)_reorderingTransactionForReorderingUpdate:(id)a3
{
  v5 = a3;
  v6 = [[off_1E70ECB58 alloc] initWithState:self->_state];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68____UIDiffableDataSource__reorderingTransactionForReorderingUpdate___block_invoke;
  aBlock[3] = &unk_1E70FCF68;
  v12 = v6;
  v13 = a2;
  aBlock[4] = self;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [NSDiffableDataSourceTransaction _computeReorderingTransactionWithInitialSnapshot:v7 reorderingUpdate:v5 sectionSnapshotProvider:v8];

  return v9;
}

- (id)_transactionForReloadUpdatesWithSnapshot:(id)a3
{
  v3 = MEMORY[0x1E696ADD8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = MEMORY[0x1E695E0F0];
  v7 = [v5 initWithChanges:MEMORY[0x1E695E0F0]];
  v8 = [NSDiffableDataSourceTransaction applyTransactionWithInitialSnapshot:v4 finalSnapshot:v4 difference:v7 sectionTransactions:v6];

  return v8;
}

- (id)_transactionForFinalSnapshot:(id)a3 dataSourceDiffer:(id)a4 shouldSkipRebasingSectionSnapshots:(BOOL)a5
{
  v35 = a5;
  v50 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v36 = a4;
  v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v34 = self;
  obj = self->_sectionControllers;
  v8 = [(NSHashTable *)obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v39 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v44 + 1) + 8 * i) _snapshotsMap];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v12 = [v11 keyEnumerator];
        v13 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v41;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v41 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v40 + 1) + 8 * j);
              v18 = [v11 objectForKey:v17];
              [v7 setObject:v18 forKey:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v14);
        }
      }

      v9 = [(NSHashTable *)obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v9);
  }

  v19 = [[off_1E70ECB58 alloc] initWithState:v34->_state];
  v20 = [off_1E70ECB58 alloc];
  v21 = [v37 state];
  v22 = [v20 initWithState:v21];

  if (v35)
  {
    v23 = v36;
    if (v36)
    {
      v24 = *(v36 + 4);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = [(_UIIdentifierDiffer *)v25 collectionDifference];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x1E696ADD8]);
      v28 = [v31 initWithChanges:MEMORY[0x1E695E0F0]];
    }

    v29 = v28;

    v30 = [[NSDiffableDataSourceTransaction alloc] initWithInitialSnapshot:v19 finalSnapshot:v22 source:0 difference:v29 finalSectionSnapshots:v7];
  }

  else
  {
    v23 = v36;
    v29 = [[_UIDiffableDataSourceSectionSnapshotRebaser alloc] initWithInitialSnapshot:v19 finalSnapshot:v22 initialSectionSnapshots:v7 dataSourceDiffer:v36];
    v30 = [(_UIDiffableDataSourceSectionSnapshotRebaser *)v29 computeApplyTransactionIncludingSectionDifferences:0];
  }

  v32 = v30;

  return v32;
}

- (NSArray)sectionControllers
{
  sectionControllers = self->_sectionControllers;
  if (sectionControllers)
  {
    v4 = [(NSHashTable *)sectionControllers allObjects];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v7 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v8 = [v7 numberOfSections];

  if (v8 <= a4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1516 description:{@"Invalid parameter not satisfying: %@", @"section < [_state.dataSourceSnapshot numberOfSections]"}];
  }

  v9 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v10 = [v9 numberOfItemsInSection:a4];

  return v10;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:v8];
  v10 = [(__UIDiffableDataSource *)self collectionViewCellProvider];

  if (!v10)
  {
    v15 = [(__UIDiffableDataSource *)self reuseIdentifierProvider];

    if (!v15)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1542 description:{@"Invalid parameter not satisfying: %@", @"self.reuseIdentifierProvider"}];
    }

    v16 = [(__UIDiffableDataSource *)self collectionViewCellConfigurationHandler];

    if (!v16)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1543 description:{@"Invalid parameter not satisfying: %@", @"self.collectionViewCellConfigurationHandler"}];
    }

    v17 = [(__UIDiffableDataSource *)self reuseIdentifierProvider];
    v14 = (v17)[2](v17, v9);

    if (v14)
    {
      if (v9)
      {
LABEL_13:
        v12 = [v7 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v8];
        v18 = [(__UIDiffableDataSource *)self collectionViewCellConfigurationHandler];
        (v18)[2](v18, v12, v9);

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1546 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier"}];

      if (v9)
      {
        goto LABEL_13;
      }
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1547 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];

    goto LABEL_13;
  }

  v11 = [(__UIDiffableDataSource *)self collectionViewCellProvider];
  v12 = (v11)[2](v11, v7, v8, v9);

  if (!v12)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1530 description:{@"UICollectionViewDiffableDataSource cell provider returned nil for index path %@ with item identifier '%@', which is not allowed. You must always return a cell to the collection view: %@", v8, v9, v7}];
  }

  if ([(NSHashTable *)self->_sectionControllers count])
  {
    v13 = [(__UIDiffableDataSource *)self associatedSectionControllerForItemIdentifier:v9];
    v14 = v13;
    if (v13)
    {
      [v13 configureCell:v12 forItem:v9];
    }

    goto LABEL_14;
  }

LABEL_15:

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(__UIDiffableDataSource *)self supplementaryViewProvider];
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = [(__UIDiffableDataSource *)self supplementaryReuseIdentifierProvider];
  if (!v13 || (v14 = v13, [(__UIDiffableDataSource *)self supplementaryViewConfigurationHandler], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1557 description:{@"Invalid parameter not satisfying: %@", @"self.supplementaryViewProvider || (self.supplementaryReuseIdentifierProvider && self.supplementaryViewConfigurationHandler)"}];
LABEL_5:
  }

  v16 = [(__UIDiffableDataSource *)self supplementaryViewProvider];

  if (v16)
  {
    v17 = [(__UIDiffableDataSource *)self supplementaryViewProvider];
    v18 = (v17)[2](v17, v9, v10, v11);

    if (v18)
    {
      goto LABEL_13;
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1562 description:{@"UICollectionViewDiffableDataSource supplementary view provider returned nil for element kind '%@' at index path %@, which is not allowed. You must always return a view to the collection view: %@", v10, v11, v9}];
  }

  else
  {
    v20 = [(__UIDiffableDataSource *)self supplementaryReuseIdentifierProvider];
    v19 = (v20)[2](v20, v10, v11);

    if (!v19)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1565 description:@"Error: reuseIdentifier must not be nil"];
    }

    v18 = [v9 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v19 forIndexPath:v11];
    v21 = [(__UIDiffableDataSource *)self supplementaryViewConfigurationHandler];
    (v21)[2](v21, v18, v10, v11);
  }

LABEL_13:

  return v18;
}

- (BOOL)sectionController:(id)a3 shouldExpandItem:(id)a4
{
  v5 = a4;
  v6 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  v7 = [v6 shouldExpandItemHandler];

  if (v7)
  {
    v8 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    v9 = [v8 shouldExpandItemHandler];
    v10 = (v9)[2](v9, v5);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)sectionController:(id)a3 willExpandItem:(id)a4
{
  v9 = a4;
  v5 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  v6 = [v5 willExpandItemHandler];

  if (v6)
  {
    v7 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    v8 = [v7 willExpandItemHandler];
    (v8)[2](v8, v9);
  }
}

- (BOOL)sectionController:(id)a3 shouldCollapseItem:(id)a4
{
  v5 = a4;
  v6 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  v7 = [v6 shouldCollapseItemHandler];

  if (v7)
  {
    v8 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    v9 = [v8 shouldCollapseItemHandler];
    v10 = (v9)[2](v9, v5);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)sectionController:(id)a3 willCollapseItem:(id)a4
{
  v9 = a4;
  v5 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  v6 = [v5 willCollapseItemHandler];

  if (v6)
  {
    v7 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    v8 = [v7 willCollapseItemHandler];
    (v8)[2](v8, v9);
  }
}

- (BOOL)sectionController:(id)a3 shouldQueryForSnapshotForExpandingParentItem:(id)a4
{
  v4 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers:a3];
  v5 = [v4 snapshotForExpandingParentItemHandler];
  v6 = v5 != 0;

  return v6;
}

- (id)sectionController:(id)a3 snapshotForExpandingParentItem:(id)a4 currentSectionSnapshot:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  v10 = [v9 snapshotForExpandingParentItemHandler];

  v11 = v8;
  if (v10)
  {
    v12 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    v13 = [v12 snapshotForExpandingParentItemHandler];
    v11 = (v13)[2](v13, v7, v8);
  }

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v7 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v8 = [v7 numberOfSections];

  if (v8 <= a4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1646 description:{@"Invalid parameter not satisfying: %@", @"section < [_state.dataSourceSnapshot numberOfSections]"}];
  }

  v9 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v10 = [v9 numberOfItemsInSection:a4];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(__UIDiffableDataSource *)self tableViewCellProvider];
  if (v9)
  {
    goto LABEL_5;
  }

  v10 = [(__UIDiffableDataSource *)self tableViewCellConfigurationHandler];
  if (!v10 || (v11 = v10, [(__UIDiffableDataSource *)self reuseIdentifierProvider], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1652 description:{@"Invalid parameter not satisfying: %@", @"self.tableViewCellProvider || (self.tableViewCellConfigurationHandler && self.reuseIdentifierProvider)"}];
LABEL_5:
  }

  v13 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:v8];
  if (!v13)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1655 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];
  }

  v14 = [(__UIDiffableDataSource *)self tableViewCellProvider];

  if (v14)
  {
    v15 = [(__UIDiffableDataSource *)self tableViewCellProvider];
    v16 = (v15)[2](v15, v7, v8, v13);

    if (v16)
    {
      goto LABEL_15;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1660 description:{@"UITableViewDiffableDataSource cell provider returned nil for index path %@ with item identifier '%@', which is not allowed. You must always return a cell to the table view: %@", v8, v13, v7}];
  }

  else
  {
    v18 = [(__UIDiffableDataSource *)self reuseIdentifierProvider];
    v17 = (v18)[2](v18, v13);

    if (!v17)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1663 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier"}];
    }

    v16 = [v7 dequeueReusableCellWithIdentifier:v17];
    v19 = [(__UIDiffableDataSource *)self tableViewCellConfigurationHandler];
    (v19)[2](v19, v16, v13);
  }

LABEL_15:

  return v16;
}

- (_UICollectionViewUpdateItemApplying)viewUpdatesSink
{
  WeakRetained = objc_loadWeakRetained(&self->_viewUpdatesSink);

  return WeakRetained;
}

- (void)validateIdentifiers
{
  v2 = [(__UIDiffableDataSource *)self state];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [v2 sections];
    objc_claimAutoreleasedReturnValue();
    _UIDiffableDataSourceValidateIdentifiers();
  }

  [v2 validateIdentifiers];
}

@end