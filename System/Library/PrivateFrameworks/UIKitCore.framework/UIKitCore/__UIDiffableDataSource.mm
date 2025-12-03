@interface __UIDiffableDataSource
+ (void)initialize;
- (BOOL)_canApplySnapshotUpdateWithoutDiffing:(id)diffing;
- (BOOL)canMoveItemAtIndexPath:(id)path;
- (BOOL)sectionController:(id)controller shouldCollapseItem:(id)item;
- (BOOL)sectionController:(id)controller shouldExpandItem:(id)item;
- (BOOL)sectionController:(id)controller shouldQueryForSnapshotForExpandingParentItem:(id)item;
- (NSArray)sectionControllers;
- (NSString)description;
- (UICollectionView)_collectionView;
- (UICollectionView)collectionView;
- (UICollectionViewDiffableDataSourceReorderingHandlers)reorderingHandlers;
- (UICollectionViewDiffableDataSourceSectionSnapshotHandlers)sectionSnapshotHandlers;
- (UITableView)tableView;
- (_UICollectionViewUpdateItemApplying)viewUpdatesSink;
- (__UIDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider;
- (__UIDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider dataSource:(id)source;
- (__UIDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider reuseIdentifierProvider:(id)identifierProvider cellConfigurationHandler:(id)handler state:(id)state dataSource:(id)source;
- (__UIDiffableDataSource)initWithCollectionView:(id)view itemRenderers:(id)renderers rendererIdentifierProvider:(id)provider;
- (__UIDiffableDataSource)initWithCollectionView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler;
- (__UIDiffableDataSource)initWithCollectionView:(id)view sectionControllers:(id)controllers rendererIdentifierProvider:(id)provider;
- (__UIDiffableDataSource)initWithState:(id)state;
- (__UIDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider;
- (__UIDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider reuseIdentifierProvider:(id)identifierProvider cellConfigurationHandler:(id)handler state:(id)state dataSource:(id)source;
- (__UIDiffableDataSource)initWithTableView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler;
- (__UIDiffableDataSource)initWithViewUpdatesSink:(id)sink;
- (id)_reorderingTransactionForReorderingUpdate:(id)update;
- (id)_snapshotForSection:(id)section;
- (id)_snapshotWithHandlerAtomic:(id)atomic;
- (id)_transactionForFinalSnapshot:(id)snapshot dataSourceDiffer:(id)differ shouldSkipRebasingSectionSnapshots:(BOOL)snapshots;
- (id)_transactionForReloadUpdatesWithSnapshot:(id)snapshot;
- (id)_validReloadOrReconfigureViewUpdatesInSnapshot:(id)snapshot;
- (id)associatedSectionControllerForItemIdentifier:(id)identifier;
- (id)associatedSectionControllerForSectionIdentifier:(id)identifier;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)emptySnapshot;
- (id)sectionController:(id)controller snapshotForExpandingParentItem:(id)item currentSectionSnapshot:(id)snapshot;
- (id)snapshot;
- (id)snapshotForSection:(id)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_commitNewDataSource:(id)source withViewUpdates:(id)updates viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider animated:(BOOL)animated commitAlongsideHandler:(id)handler completion:(id)completion;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableViewDefaultRowAnimation;
- (void)_applyDifferencesFromSnapshot:(id)snapshot animatingDifferences:(BOOL)differences completion:(id)completion isOnApplyQueue:(BOOL)queue;
- (void)_applyDifferencesFromSnapshot:(id)snapshot customAnimationsProvider:(id)provider;
- (void)_applyDifferencesFromSnapshot:(id)snapshot toSection:(id)section animatingDifferences:(BOOL)differences completion:(id)completion;
- (void)_applyDifferencesFromSnapshot:(id)snapshot viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider;
- (void)_commitRebasedSectionSnapshotsFromCurrentTransactionIfNeeded;
- (void)_commitReorderingForItemAtIndexPath:(id)path toDestinationIndexPath:(id)indexPath shouldPerformViewAnimations:(BOOL)animations;
- (void)_commitStateAtomically:(id)atomically;
- (void)_commitUpdate:(id)update snapshot:(id)snapshot animated:(BOOL)animated animator:(id)animator customAnimationsProvider:(id)provider completion:(id)completion;
- (void)_computeCurrentTransactionForFinalSnapshot:(id)snapshot withDataSourceDiffer:(id)differ;
- (void)_notifyDidApplyForCurrentTransactionIfNeeded;
- (void)_notifyWillApplyForCurrentTransactionIfNeeded;
- (void)_onApplyQueue_applyDifferencesFromSnapshot:(id)snapshot viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider animated:(BOOL)animated completion:(id)completion;
- (void)_onApplyQueue_reloadFromSnapshot:(id)snapshot completion:(id)completion;
- (void)_performApplyWithoutRebasingSectionSnapshots:(id)snapshots;
- (void)_performBatchApplyUsingReloadData:(id)data;
- (void)_performOnApplyQueue:(atomic_ullong *)queue;
- (void)_performReloadOrReconfigureUpdateWithItems:(id)items dataSourceSnapshot:(id)snapshot animated:(BOOL)animated completion:(id)completion;
- (void)_registerItemRenderers:(id)renderers rendererIdentifierProvider:(id)provider;
- (void)_resetCurrentTransaction;
- (void)_storeState:(id)state;
- (void)_willBeginReorderingForItemAtIndexPath:(id)path;
- (void)addAssociatedSectionControllerIfNeeded:(id)needed;
- (void)appendItemsWithIdentifiers:(id)identifiers intoSectionWithIdentifier:(id)identifier;
- (void)appendSectionWithIdentifier:(id)identifier;
- (void)appendSectionsWithIdentifiers:(id)identifiers;
- (void)applyDifferencesFromSnapshot:(id)snapshot;
- (void)applyDifferencesFromSnapshot:(id)snapshot completion:(id)completion;
- (void)deleteAllItems;
- (void)deleteItemsWithIdentifiers:(id)identifiers;
- (void)deleteSectionsWithIdentifiers:(id)identifiers;
- (void)insertItemsWithIdentifiers:(id)identifiers afterItemWithIdentifier:(id)identifier;
- (void)insertItemsWithIdentifiers:(id)identifiers beforeItemWithIdentifier:(id)identifier;
- (void)insertSectionWithIdentifier:(id)identifier afterSectionWithIdentifier:(id)withIdentifier;
- (void)insertSectionWithIdentifier:(id)identifier beforeSectionWithIdentifier:(id)withIdentifier;
- (void)insertSectionsWithIdentifiers:(id)identifiers afterSectionWithIdentifier:(id)identifier;
- (void)insertSectionsWithIdentifiers:(id)identifiers beforeSectionWithIdentifier:(id)identifier;
- (void)moveItemWithIdentifier:(id)identifier afterItemWithIdentifier:(id)withIdentifier;
- (void)moveItemWithIdentifier:(id)identifier beforeItemWithIdentifier:(id)withIdentifier;
- (void)moveSectionWithIdentifier:(id)identifier afterSectionWithIdentifier:(id)withIdentifier;
- (void)moveSectionWithIdentifier:(id)identifier beforeSectionWithIdentifier:(id)withIdentifier;
- (void)reconfigureItemsWithIdentifiers:(id)identifiers;
- (void)reloadFromSnapshot:(id)snapshot;
- (void)reloadFromSnapshot:(id)snapshot completion:(id)completion;
- (void)reloadItemsWithIdentifiers:(id)identifiers;
- (void)reloadSectionsWithIdentifiers:(id)identifiers;
- (void)sectionController:(id)controller willCollapseItem:(id)item;
- (void)sectionController:(id)controller willExpandItem:(id)item;
- (void)setTableViewDefaultRowAnimation:(int64_t)animation;
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
    didApplySnapshotHandler = [(__UIDiffableDataSource *)self didApplySnapshotHandler];

    if (didApplySnapshotHandler)
    {
      didApplySnapshotHandler2 = [(__UIDiffableDataSource *)self didApplySnapshotHandler];
      _spiCopy = [(NSDiffableDataSourceTransaction *)self->_currentTransaction _spiCopy];
      (didApplySnapshotHandler2)[2](didApplySnapshotHandler2, _spiCopy);
    }

    if ([(__UIDiffableDataSource *)self _isApplyingReorderingTransaction])
    {
      reorderingHandlers = [(__UIDiffableDataSource *)self reorderingHandlers];
      didReorderHandler = [reorderingHandlers didReorderHandler];

      if (didReorderHandler)
      {
        reorderingHandlers2 = [(__UIDiffableDataSource *)self reorderingHandlers];
        didReorderHandler2 = [reorderingHandlers2 didReorderHandler];
        (didReorderHandler2)[2](didReorderHandler2, self->_currentTransaction);
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
    willApplySnapshotHandler = [(__UIDiffableDataSource *)self willApplySnapshotHandler];

    if (willApplySnapshotHandler)
    {
      willApplySnapshotHandler2 = [(__UIDiffableDataSource *)self willApplySnapshotHandler];
      _spiCopy = [(NSDiffableDataSourceTransaction *)self->_currentTransaction _spiCopy];
      (willApplySnapshotHandler2)[2](willApplySnapshotHandler2, _spiCopy);
    }

    if ([(__UIDiffableDataSource *)self _isApplyingReorderingTransaction])
    {
      reorderingHandlers = [(__UIDiffableDataSource *)self reorderingHandlers];
      willReorderHandler = [reorderingHandlers willReorderHandler];

      if (willReorderHandler)
      {
        reorderingHandlers2 = [(__UIDiffableDataSource *)self reorderingHandlers];
        willReorderHandler2 = [reorderingHandlers2 willReorderHandler];
        (willReorderHandler2)[2](willReorderHandler2, self->_currentTransaction);
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
    sectionTransactions = [(NSDiffableDataSourceTransaction *)self->_currentTransaction sectionTransactions];
    v4 = [sectionTransactions countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(sectionTransactions);
          }

          v8 = *(*(&v31 + 1) + 8 * i);
          sectionIdentifier = [v8 sectionIdentifier];
          v10 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:sectionIdentifier];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 _extantMutableSnapshotForSection:sectionIdentifier];
            if (v12)
            {
              finalSnapshot = [v8 finalSnapshot];
              [v11 _updateSnapshot:finalSnapshot forSectionIdentifier:sectionIdentifier];
            }
          }
        }

        v5 = [sectionTransactions countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v5);
    }

    initialSnapshot = [(NSDiffableDataSourceTransaction *)self->_currentTransaction initialSnapshot];
    finalSnapshot2 = [(NSDiffableDataSourceTransaction *)self->_currentTransaction finalSnapshot];
    sectionIdentifiers = [finalSnapshot2 sectionIdentifiers];
    sectionIdentifiers2 = [initialSnapshot sectionIdentifiers];
    v18 = [sectionIdentifiers differenceFromArray:sectionIdentifiers2];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    removals = [v18 removals];
    v20 = [removals countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(removals);
          }

          object = [*(*(&v27 + 1) + 8 * j) object];
          v25 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:object];
          v26 = v25;
          if (v25)
          {
            [v25 _updateSnapshot:0 forSectionIdentifier:object];
          }
        }

        v21 = [removals countByEnumeratingWithState:&v27 objects:v35 count:16];
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

- (__UIDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider reuseIdentifierProvider:(id)identifierProvider cellConfigurationHandler:(id)handler state:(id)state dataSource:(id)source
{
  viewCopy = view;
  providerCopy = provider;
  identifierProviderCopy = identifierProvider;
  handlerCopy = handler;
  stateCopy = state;
  sourceCopy = source;
  v32.receiver = self;
  v32.super_class = __UIDiffableDataSource;
  v20 = [(__UIDiffableDataSource *)&v32 init];
  if (v20)
  {
    v21 = [[_UIDiffableDataSourceViewUpdater alloc] initWithCollectionView:viewCopy];
    viewUpdater = v20->_viewUpdater;
    v20->_viewUpdater = v21;

    v23 = [providerCopy copy];
    collectionViewCellProvider = v20->_collectionViewCellProvider;
    v20->_collectionViewCellProvider = v23;

    v25 = [identifierProviderCopy copy];
    reuseIdentifierProvider = v20->_reuseIdentifierProvider;
    v20->_reuseIdentifierProvider = v25;

    v27 = [handlerCopy copy];
    collectionViewCellConfigurationHandler = v20->_collectionViewCellConfigurationHandler;
    v20->_collectionViewCellConfigurationHandler = v27;

    v29 = [[off_1E70ECC68 alloc] initWithState:stateCopy];
    [(__UIDiffableDataSource *)v20 _storeState:v29];

    objc_storeWeak(&v20->_collectionView, viewCopy);
    _UIDiffableDataSourceCommonInit(v20);
    if (sourceCopy)
    {
      v30 = sourceCopy;
    }

    else
    {
      v30 = v20;
    }

    [viewCopy setDataSource:v30];
  }

  return v20;
}

- (__UIDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider reuseIdentifierProvider:(id)identifierProvider cellConfigurationHandler:(id)handler state:(id)state dataSource:(id)source
{
  viewCopy = view;
  providerCopy = provider;
  identifierProviderCopy = identifierProvider;
  handlerCopy = handler;
  stateCopy = state;
  sourceCopy = source;
  v32.receiver = self;
  v32.super_class = __UIDiffableDataSource;
  v20 = [(__UIDiffableDataSource *)&v32 init];
  if (v20)
  {
    v21 = [[_UIDiffableDataSourceViewUpdater alloc] initWithTableView:viewCopy];
    viewUpdater = v20->_viewUpdater;
    v20->_viewUpdater = v21;

    v23 = [providerCopy copy];
    tableViewCellProvider = v20->_tableViewCellProvider;
    v20->_tableViewCellProvider = v23;

    v25 = [identifierProviderCopy copy];
    reuseIdentifierProvider = v20->_reuseIdentifierProvider;
    v20->_reuseIdentifierProvider = v25;

    v27 = [handlerCopy copy];
    tableViewCellConfigurationHandler = v20->_tableViewCellConfigurationHandler;
    v20->_tableViewCellConfigurationHandler = v27;

    v29 = [[off_1E70ECC68 alloc] initWithState:stateCopy];
    [(__UIDiffableDataSource *)v20 _storeState:v29];

    objc_storeWeak(&v20->_tableView, viewCopy);
    _UIDiffableDataSourceCommonInit(v20);
    if (sourceCopy)
    {
      v30 = sourceCopy;
    }

    else
    {
      v30 = v20;
    }

    [viewCopy setDataSource:v30];
  }

  return v20;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  dataSource = [WeakRetained dataSource];

  if (dataSource == self)
  {
    v5 = objc_loadWeakRetained(&self->_tableView);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__UIDiffableDataSource)initWithState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = __UIDiffableDataSource;
  v5 = [(__UIDiffableDataSource *)&v8 init];
  if (v5)
  {
    v6 = [[off_1E70ECC68 alloc] initWithState:stateCopy];
    [(__UIDiffableDataSource *)v5 _storeState:v6];

    _UIDiffableDataSourceCommonInit(v5);
  }

  return v5;
}

- (__UIDiffableDataSource)initWithViewUpdatesSink:(id)sink
{
  sinkCopy = sink;
  v10.receiver = self;
  v10.super_class = __UIDiffableDataSource;
  v5 = [(__UIDiffableDataSource *)&v10 init];
  if (v5)
  {
    v6 = [[_UIDiffableDataSourceViewUpdater alloc] initWithCollectionViewUpdatesSink:sinkCopy];
    viewUpdater = v5->_viewUpdater;
    v5->_viewUpdater = v6;

    v8 = objc_alloc_init(off_1E70ECC68);
    [(__UIDiffableDataSource *)v5 _storeState:v8];

    _UIDiffableDataSourceCommonInit(v5);
  }

  return v5;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider
{
  providerCopy = provider;
  viewCopy = view;
  v8 = objc_alloc_init(off_1E70ECC68);
  v9 = [(__UIDiffableDataSource *)self initWithCollectionView:viewCopy cellProvider:providerCopy reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v8 dataSource:0];

  return v9;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)view sectionControllers:(id)controllers rendererIdentifierProvider:(id)provider
{
  v28 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  controllersCopy = controllers;
  providerCopy = provider;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithCollectionView:viewCopy cellProvider:0 reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v11 dataSource:0];

  v13 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:{objc_msgSend(controllersCopy, "count")}];
  sectionControllers = v12->_sectionControllers;
  v12->_sectionControllers = v13;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = controllersCopy;
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
        itemRenderers = [v20 itemRenderers];
        [(__UIDiffableDataSource *)v12 _registerItemRenderers:itemRenderers rendererIdentifierProvider:providerCopy];

        [(NSHashTable *)v12->_sectionControllers addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  return v12;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)view itemRenderers:(id)renderers rendererIdentifierProvider:(id)provider
{
  providerCopy = provider;
  renderersCopy = renderers;
  viewCopy = view;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithCollectionView:viewCopy cellProvider:0 reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v11 dataSource:0];

  [(__UIDiffableDataSource *)v12 _registerItemRenderers:renderersCopy rendererIdentifierProvider:providerCopy];
  return v12;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider dataSource:(id)source
{
  sourceCopy = source;
  providerCopy = provider;
  viewCopy = view;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithCollectionView:viewCopy cellProvider:providerCopy reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v11 dataSource:sourceCopy];

  return v12;
}

- (__UIDiffableDataSource)initWithCollectionView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  viewCopy = view;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithCollectionView:viewCopy cellProvider:0 reuseIdentifierProvider:providerCopy cellConfigurationHandler:handlerCopy state:v11 dataSource:0];

  return v12;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  dataSource = [WeakRetained dataSource];

  if (dataSource == self)
  {
    v5 = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__UIDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider
{
  providerCopy = provider;
  viewCopy = view;
  v8 = objc_alloc_init(off_1E70ECC68);
  v9 = [(__UIDiffableDataSource *)self initWithTableView:viewCopy cellProvider:providerCopy reuseIdentifierProvider:0 cellConfigurationHandler:0 state:v8 dataSource:0];

  return v9;
}

- (__UIDiffableDataSource)initWithTableView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  viewCopy = view;
  v11 = objc_alloc_init(off_1E70ECC68);
  v12 = [(__UIDiffableDataSource *)self initWithTableView:viewCopy cellProvider:0 reuseIdentifierProvider:providerCopy cellConfigurationHandler:handlerCopy state:v11 dataSource:0];

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  sections = [(_UIDiffableDataSourceState *)self->_state sections];
  identifiers = [(_UIDiffableDataSourceState *)self->_state identifiers];
  v9 = [v3 stringWithFormat:@"<%@ %p: sectionCounts=%@ sections=[%p]; identifiers=[%p]>", v5, self, dataSourceSnapshot, sections, identifiers];;

  return v9;
}

- (void)appendItemsWithIdentifiers:(id)identifiers intoSectionWithIdentifier:(id)identifier
{
  state = self->_state;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)state dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];

  if (numberOfSections <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:390 description:@"There are currently no sections in the data source. Please add a section first."];
  }

  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot appendItemsWithIdentifiers:identifiersCopy intoSectionWithIdentifier:identifierCopy];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)insertItemsWithIdentifiers:(id)identifiers beforeItemWithIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (identifiersCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:398 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:399 description:{@"Invalid parameter not satisfying: %@", @"destinationIdentifier"}];

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot insertItemsWithIdentifiers:identifiersCopy beforeItemWithIdentifier:identifierCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)insertItemsWithIdentifiers:(id)identifiers afterItemWithIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (identifiersCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:408 description:{@"Invalid parameter not satisfying: %@", @"destinationIdentifier"}];

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot insertItemsWithIdentifiers:identifiersCopy afterItemWithIdentifier:identifierCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)deleteItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot deleteItemsWithIdentifiers:identifiersCopy];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)deleteAllItems
{
  emptySnapshot = [(__UIDiffableDataSource *)self emptySnapshot];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:emptySnapshot];
}

- (void)moveItemWithIdentifier:(id)identifier beforeItemWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  if (identifierCopy)
  {
    if (withIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"fromIdentifier"}];

    if (withIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"toIdentifier"}];

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot moveItemWithIdentifier:identifierCopy beforeItemWithIdentifier:withIdentifierCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)moveItemWithIdentifier:(id)identifier afterItemWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  if (identifierCopy)
  {
    if (withIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"fromIdentifier"}];

    if (withIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:437 description:{@"Invalid parameter not satisfying: %@", @"toIdentifier"}];

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot moveItemWithIdentifier:identifierCopy afterItemWithIdentifier:withIdentifierCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)reloadItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot reloadItemsWithIdentifiers:identifiersCopy];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)reconfigureItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot reconfigureItemsWithIdentifiers:identifiersCopy];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)appendSectionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot appendSectionsWithIdentifiers:identifiersCopy];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)insertSectionsWithIdentifiers:(id)identifiers beforeSectionWithIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (identifiersCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot insertSectionsWithIdentifiers:identifiersCopy beforeSectionWithIdentifier:identifierCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)insertSectionsWithIdentifiers:(id)identifiers afterSectionWithIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (identifiersCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot insertSectionsWithIdentifiers:identifiersCopy afterSectionWithIdentifier:identifierCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)deleteSectionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot deleteSectionsWithIdentifiers:identifiersCopy];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)moveSectionWithIdentifier:(id)identifier beforeSectionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  if (identifierCopy)
  {
    if (withIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

    if (withIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot moveSectionWithIdentifier:identifierCopy beforeSectionWithIdentifier:withIdentifierCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)moveSectionWithIdentifier:(id)identifier afterSectionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  if (identifierCopy)
  {
    if (withIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

    if (withIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:499 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot moveSectionWithIdentifier:identifierCopy afterSectionWithIdentifier:withIdentifierCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)reloadSectionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:507 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  snapshot = [(__UIDiffableDataSource *)self snapshot];
  [snapshot reloadSectionsWithIdentifiers:identifiersCopy];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)appendSectionWithIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  snapshot = [(__UIDiffableDataSource *)self snapshot];
  v9[0] = identifierCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [snapshot appendSectionsWithIdentifiers:v7];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)insertSectionWithIdentifier:(id)identifier beforeSectionWithIdentifier:(id)withIdentifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v9 = withIdentifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!withIdentifierCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  v14[0] = identifierCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [snapshot insertSectionsWithIdentifiers:v11 beforeSectionWithIdentifier:v9];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (void)insertSectionWithIdentifier:(id)identifier afterSectionWithIdentifier:(id)withIdentifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v9 = withIdentifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:535 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!withIdentifierCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  snapshot = [(__UIDiffableDataSource *)self snapshot];
  v14[0] = identifierCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [snapshot insertSectionsWithIdentifiers:v11 afterSectionWithIdentifier:v9];

  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:snapshot];
}

- (id)emptySnapshot
{
  v2 = objc_alloc_init(off_1E70ECC70);

  return v2;
}

- (void)_performOnApplyQueue:(atomic_ullong *)queue
{
  v3 = a2;
  if (queue)
  {
    if (pthread_main_np() == 1 && [(atomic_ullong *)queue outstandingApplyCount]>= 1)
    {
      viewUpdater = [(atomic_ullong *)queue viewUpdater];
      targetView = [viewUpdater targetView];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__APPLYING_SNAPSHOTS_REENTRANTLY_OR_ON_MAIN_AND_BACKGROUND_THREADS(targetView);
    }

    applyQueue = [(atomic_ullong *)queue applyQueue];

    if (!applyQueue)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__performOnApplyQueue_ object:queue file:@"_UIDiffableDataSourceImpl.m" lineNumber:583 description:{@"Invalid parameter not satisfying: %@", @"self.applyQueue != nil"}];
    }

    atomic_fetch_add_explicit(queue + 29, 1uLL, memory_order_relaxed);
    applyQueue2 = [(atomic_ullong *)queue applyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47____UIDiffableDataSource__performOnApplyQueue___block_invoke;
    block[3] = &unk_1E70F4A50;
    block[4] = queue;
    v10 = v3;
    dispatch_sync(applyQueue2, block);
  }
}

- (void)applyDifferencesFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55____UIDiffableDataSource_applyDifferencesFromSnapshot___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = snapshotCopy;
  v5 = snapshotCopy;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v6];
}

- (void)applyDifferencesFromSnapshot:(id)snapshot completion:(id)completion
{
  snapshotCopy = snapshot;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66____UIDiffableDataSource_applyDifferencesFromSnapshot_completion___block_invoke;
  v10[3] = &unk_1E70FCE28;
  v10[4] = self;
  v11 = snapshotCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = snapshotCopy;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v10];
}

- (void)reloadFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45____UIDiffableDataSource_reloadFromSnapshot___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = snapshotCopy;
  v5 = snapshotCopy;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v6];
}

- (void)reloadFromSnapshot:(id)snapshot completion:(id)completion
{
  snapshotCopy = snapshot;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56____UIDiffableDataSource_reloadFromSnapshot_completion___block_invoke;
  v10[3] = &unk_1E70FCE28;
  v10[4] = self;
  v11 = snapshotCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = snapshotCopy;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v10];
}

- (void)_onApplyQueue_reloadFromSnapshot:(id)snapshot completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  completionCopy = completion;
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
      viewUpdater = [(__UIDiffableDataSource *)self viewUpdater];
      targetView = [viewUpdater targetView];
      *buf = 138412290;
      v21 = targetView;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Warning: applying updates in a non-thread confined manner is dangerous and can lead to deadlocks. Please always submit updates either always on the main queue or always off the main queue - view=%@", buf, 0xCu);
    }
  }

  [snapshotCopy _prepareForApplyToDataSource];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70____UIDiffableDataSource__onApplyQueue_reloadFromSnapshot_completion___block_invoke;
  aBlock[3] = &unk_1E70FCE28;
  aBlock[4] = self;
  v18 = snapshotCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = snapshotCopy;
  v15 = _Block_copy(aBlock);
  applyQueue = [(__UIDiffableDataSource *)self applyQueue];
  dispatch_assert_queue_V2(applyQueue);

  if (pthread_main_np() == 1)
  {
    v15[2](v15);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v15);
  }
}

- (void)_applyDifferencesFromSnapshot:(id)snapshot animatingDifferences:(BOOL)differences completion:(id)completion isOnApplyQueue:(BOOL)queue
{
  queueCopy = queue;
  snapshotCopy = snapshot;
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103____UIDiffableDataSource__applyDifferencesFromSnapshot_animatingDifferences_completion_isOnApplyQueue___block_invoke;
  v16[3] = &unk_1E70F3798;
  v16[4] = self;
  v17 = snapshotCopy;
  differencesCopy = differences;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = snapshotCopy;
  v14 = _Block_copy(v16);
  v15 = v14;
  if (queueCopy)
  {
    v14[2](v14);
  }

  else
  {
    [(__UIDiffableDataSource *)self _performOnApplyQueue:v14];
  }
}

- (void)setTableViewDefaultRowAnimation:(int64_t)animation
{
  viewUpdater = [(__UIDiffableDataSource *)self viewUpdater];
  [viewUpdater setTableViewRowAnimation:animation];
}

- (int64_t)tableViewDefaultRowAnimation
{
  viewUpdater = [(__UIDiffableDataSource *)self viewUpdater];
  tableViewRowAnimation = [viewUpdater tableViewRowAnimation];

  return tableViewRowAnimation;
}

- (void)_applyDifferencesFromSnapshot:(id)snapshot customAnimationsProvider:(id)provider
{
  snapshotCopy = snapshot;
  providerCopy = provider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81____UIDiffableDataSource__applyDifferencesFromSnapshot_customAnimationsProvider___block_invoke;
  v10[3] = &unk_1E70FCE28;
  v10[4] = self;
  v11 = snapshotCopy;
  v12 = providerCopy;
  v8 = providerCopy;
  v9 = snapshotCopy;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v10];
}

- (void)_applyDifferencesFromSnapshot:(id)snapshot viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider
{
  snapshotCopy = snapshot;
  animatorCopy = animator;
  providerCopy = provider;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102____UIDiffableDataSource__applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider___block_invoke;
  v14[3] = &unk_1E70F5F08;
  v14[4] = self;
  v15 = snapshotCopy;
  v16 = animatorCopy;
  v17 = providerCopy;
  v11 = providerCopy;
  v12 = animatorCopy;
  v13 = snapshotCopy;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v14];
}

- (void)_applyDifferencesFromSnapshot:(id)snapshot toSection:(id)section animatingDifferences:(BOOL)differences completion:(id)completion
{
  snapshotCopy = snapshot;
  sectionCopy = section;
  completionCopy = completion;
  os_unfair_recursive_lock_lock_with_options();
  v13 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:sectionCopy];
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
  v20 = snapshotCopy;
  v21 = sectionCopy;
  differencesCopy = differences;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = sectionCopy;
  v16 = snapshotCopy;
  v17 = v13;
  [(__UIDiffableDataSource *)self _performOnApplyQueue:v18];
}

- (id)snapshotForSection:(id)section
{
  sectionCopy = section;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:sectionCopy];
  v6 = v5;
  if (v5 && ([v5 _extantMutableSnapshotForSection:sectionCopy], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

  snapshot = [(__UIDiffableDataSource *)self snapshot];
  if ([snapshot indexOfSectionIdentifier:sectionCopy] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [snapshot itemIdentifiersInSectionWithIdentifier:sectionCopy];
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

- (id)_snapshotForSection:(id)section
{
  sectionCopy = section;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(__UIDiffableDataSource *)self associatedSectionControllerForSectionIdentifier:sectionCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 snapshotForSection:sectionCopy];
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

- (void)_performBatchApplyUsingReloadData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:806 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];
  }

  if (pthread_main_np() != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:807 description:{@"%@ is only supported on the main queue", v18}];
  }

  if (self->_completionHandlersForBatchApply)
  {
    dataCopy[2](dataCopy);
  }

  else
  {
    v6 = objc_opt_new();
    completionHandlersForBatchApply = self->_completionHandlersForBatchApply;
    self->_completionHandlersForBatchApply = v6;

    dataCopy[2](dataCopy);
    viewUpdater = [(__UIDiffableDataSource *)self viewUpdater];
    [viewUpdater _reloadData];

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

- (void)_onApplyQueue_applyDifferencesFromSnapshot:(id)snapshot viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider animated:(BOOL)animated completion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  animatorCopy = animator;
  providerCopy = provider;
  completionCopy = completion;
  if (!snapshotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:837 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];
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
      targetView = [v21 targetView];
      *buf = 138412290;
      v67 = targetView;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Warning: applying updates in a non-thread confined manner is dangerous and can lead to deadlocks. Please always submit updates either always on the main queue or always off the main queue - view=%@", buf, 0xCu);

      a2 = v20;
    }
  }

  if ([(__UIDiffableDataSource *)self isSuppressingViewUpdates])
  {
    [(__UIDiffableDataSource *)self _onApplyQueue_reloadFromSnapshot:snapshotCopy completion:completionCopy];
  }

  else
  {
    v42 = completionCopy;
    [snapshotCopy _prepareForApplyToDataSource];
    v43 = providerCopy;
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
    v26 = snapshotCopy;
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
    v40 = animatorCopy;
    v29 = animatorCopy;
    v58 = v29;
    v30 = providerCopy;
    v60 = v30;
    animatedCopy = animated;
    v31 = _Block_copy(v56);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_5;
    v50[3] = &unk_1E70FCEF0;
    v54 = v23;
    v50[4] = self;
    animatedCopy2 = animated;
    v51 = v29;
    v52 = v30;
    v53 = v28;
    v32 = _Block_copy(v50);
    applyQueue = [(__UIDiffableDataSource *)self applyQueue];

    if (!applyQueue)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:v23 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:929 description:{@"Invalid parameter not satisfying: %@", @"self.applyQueue != nil"}];
    }

    applyQueue2 = [(__UIDiffableDataSource *)self applyQueue];
    dispatch_assert_queue_V2(applyQueue2);

    if ([(__UIDiffableDataSource *)self _canApplySnapshotUpdateWithoutDiffing:v27])
    {
      animatorCopy = v40;
      v35 = v41;
      completionCopy = v42;
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

      providerCopy = v43;
    }

    else
    {
      v35 = v41;
      v37 = (*(v41 + 2))(v41);
      animatorCopy = v40;
      completionCopy = v42;
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

      providerCopy = v43;
    }
  }
}

- (void)_performReloadOrReconfigureUpdateWithItems:(id)items dataSourceSnapshot:(id)snapshot animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  snapshotCopy = snapshot;
  itemsCopy = items;
  viewUpdater = [(__UIDiffableDataSource *)self viewUpdater];
  LOBYTE(v13) = animated;
  [viewUpdater _performUpdateWithCollectionViewUpdateItems:itemsCopy dataSourceSnapshot:snapshotCopy updateHandler:&__block_literal_global_76 completion:completionCopy viewPropertyAnimator:0 customAnimationsProvider:0 animated:v13];
}

- (void)_commitUpdate:(id)update snapshot:(id)snapshot animated:(BOOL)animated animator:(id)animator customAnimationsProvider:(id)provider completion:(id)completion
{
  updateCopy = update;
  snapshotCopy = snapshot;
  completionCopy = completion;
  providerCopy = provider;
  animatorCopy = animator;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:969 description:@"Error: Updates can only be committed on the main thread."];
  }

  action = [updateCopy action];
  v41 = updateCopy;
  if (action == 2)
  {
    v18 = [(__UIDiffableDataSource *)self _validReloadOrReconfigureViewUpdatesInSnapshot:snapshotCopy];
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
    v23 = action;
    identifiers = [(_UIDiffableDataSourceState *)self->_state identifiers];
    v25 = [identifiers mutableCopy];

    sections = [(_UIDiffableDataSourceState *)self->_state sections];
    v27 = [sections mutableCopy];

    dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
    v29 = [off_1E70ECC48 snapshotterForSnapshot:dataSourceSnapshot];

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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v22 = [v30 initWithGenerationID:uUID identifiers:v25 sections:v27 dataSourceSnapshot:v29];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103____UIDiffableDataSource__commitUpdate_snapshot_animated_animator_customAnimationsProvider_completion___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v43 = v22;
  v32 = v22;
  v33 = _Block_copy(aBlock);
  [(__UIDiffableDataSource *)self _computeCurrentTransactionForFinalSnapshot:snapshotCopy withDataSourceDiffer:0];
  [(__UIDiffableDataSource *)self _notifyWillApplyForCurrentTransactionIfNeeded];
  viewUpdater = [(__UIDiffableDataSource *)self viewUpdater];
  dataSourceSnapshot2 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  LOBYTE(v37) = animated;
  [viewUpdater _performUpdateWithCollectionViewUpdateItems:v21 dataSourceSnapshot:dataSourceSnapshot2 updateHandler:v33 completion:completionCopy viewPropertyAnimator:animatorCopy customAnimationsProvider:providerCopy animated:v37];

  [(__UIDiffableDataSource *)self _notifyDidApplyForCurrentTransactionIfNeeded];
  [(__UIDiffableDataSource *)self _resetCurrentTransaction];
}

- (id)_validReloadOrReconfigureViewUpdatesInSnapshot:(id)snapshot
{
  v43 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  pendingSnapshotUpdates = [snapshotCopy pendingSnapshotUpdates];
  v28 = snapshotCopy;
  state = [snapshotCopy state];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = pendingSnapshotUpdates;
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
          isSectionOperation = [v11 isSectionOperation];
          shouldReconfigure = [v11 shouldReconfigure];
          identifiers = [v11 identifiers];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v15 = [identifiers countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (!v15)
          {
            goto LABEL_27;
          }

          v16 = v15;
          v17 = *v34;
          if (shouldReconfigure)
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
                objc_enumerationMutation(identifiers);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              if (isSectionOperation)
              {
                v21 = [state indexOfSectionIdentifier:v20];
                if (v21 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }

                v22 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:v21];
              }

              else
              {
                v22 = [state indexPathForItemIdentifier:v20];
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

            v16 = [identifiers countByEnumeratingWithState:&v33 objects:v41 count:16];
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

- (int64_t)_commitNewDataSource:(id)source withViewUpdates:(id)updates viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider animated:(BOOL)animated commitAlongsideHandler:(id)handler completion:(id)completion
{
  sourceCopy = source;
  handlerCopy = handler;
  completionCopy = completion;
  providerCopy = provider;
  animatorCopy = animator;
  updatesCopy = updates;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1075 description:@"Error: Updates can only be committed on the main thread."];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __152____UIDiffableDataSource__commitNewDataSource_withViewUpdates_viewPropertyAnimator_customAnimationsProvider_animated_commitAlongsideHandler_completion___block_invoke;
  aBlock[3] = &unk_1E70FCE28;
  v33 = sourceCopy;
  selfCopy = self;
  v35 = handlerCopy;
  v30 = handlerCopy;
  v21 = sourceCopy;
  v22 = _Block_copy(aBlock);
  kdebug_trace();
  viewUpdater = [(__UIDiffableDataSource *)self viewUpdater];
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v25 = [off_1E70ECC48 snapshotterForSnapshot:dataSourceSnapshot];
  LOBYTE(v29) = animated;
  v26 = [viewUpdater _performUpdateWithCollectionViewUpdateItems:updatesCopy dataSourceSnapshot:v25 updateHandler:v22 completion:completionCopy viewPropertyAnimator:animatorCopy customAnimationsProvider:providerCopy animated:v29];

  kdebug_trace();
  return v26;
}

- (BOOL)_canApplySnapshotUpdateWithoutDiffing:(id)diffing
{
  diffingCopy = diffing;
  state = [diffingCopy state];
  generationID = [state generationID];
  generationID2 = [(_UIDiffableDataSourceState *)self->_state generationID];
  v8 = [generationID isEqual:generationID2];

  pendingSnapshotUpdates = [diffingCopy pendingSnapshotUpdates];

  v10 = [pendingSnapshotUpdates count];
  LODWORD(pendingSnapshotUpdates) = [(NSHashTable *)self->_sectionControllers count]== 0;
  v11 = pendingSnapshotUpdates | [(__UIDiffableDataSource *)self isApplyingWithoutRebasingSectionSnapshots];
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

- (id)_snapshotWithHandlerAtomic:(id)atomic
{
  atomicCopy = atomic;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__34;
  v18 = __Block_byref_object_dispose__34;
  v19 = 0;
  snapshotQueue = [(__UIDiffableDataSource *)self snapshotQueue];

  if (snapshotQueue)
  {
    snapshotQueue2 = [(__UIDiffableDataSource *)self snapshotQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53____UIDiffableDataSource__snapshotWithHandlerAtomic___block_invoke;
    v11[3] = &unk_1E70FCF18;
    v13 = &v14;
    v12 = atomicCopy;
    dispatch_sync(snapshotQueue2, v11);

    v7 = v12;
  }

  else
  {
    v8 = atomicCopy[2](atomicCopy);
    v7 = v15[5];
    v15[5] = v8;
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)_commitStateAtomically:(id)atomically
{
  atomicallyCopy = atomically;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49____UIDiffableDataSource__commitStateAtomically___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v5 = atomicallyCopy;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  snapshotQueue = [(__UIDiffableDataSource *)self snapshotQueue];

  if (snapshotQueue)
  {
    snapshotQueue2 = [(__UIDiffableDataSource *)self snapshotQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49____UIDiffableDataSource__commitStateAtomically___block_invoke_2;
    block[3] = &unk_1E70F0F78;
    v10 = v6;
    dispatch_sync(snapshotQueue2, block);
  }

  else
  {
    v6[2](v6);
  }
}

- (void)_storeState:(id)state
{
  stateCopy = state;
  [stateCopy willBecomeWiredToDataSource];
  state = self->_state;
  self->_state = stateCopy;
}

- (void)_registerItemRenderers:(id)renderers rendererIdentifierProvider:(id)provider
{
  v35 = *MEMORY[0x1E69E9840];
  renderersCopy = renderers;
  providerCopy = provider;
  v8 = providerCopy;
  if (!self->_rendererIdentifierProvider)
  {
    v9 = [providerCopy copy];
    rendererIdentifierProvider = self->_rendererIdentifierProvider;
    self->_rendererIdentifierProvider = v9;
  }

  if (!self->_rendererMap)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    rendererMap = self->_rendererMap;
    self->_rendererMap = strongToStrongObjectsMapTable;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = renderersCopy;
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
        rendererIdentifier = [v18 rendererIdentifier];
        if (!rendererIdentifier)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1162 description:{@"Invalid parameter not satisfying: %@", @"rendererIdentifier"}];
        }

        [(NSMapTable *)self->_rendererMap setObject:v18 forKey:rendererIdentifier];
        WeakRetained = objc_loadWeakRetained(&self->_collectionView);
        cellClass = [v18 cellClass];
        cellReuseIdentifier = [v18 cellReuseIdentifier];
        [WeakRetained registerClass:cellClass forCellWithReuseIdentifier:cellReuseIdentifier];
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

- (void)addAssociatedSectionControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  sectionControllers = self->_sectionControllers;
  v8 = neededCopy;
  if (!sectionControllers)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:1];
    v7 = self->_sectionControllers;
    self->_sectionControllers = v6;

    neededCopy = v8;
    sectionControllers = self->_sectionControllers;
  }

  [(NSHashTable *)sectionControllers addObject:neededCopy];
}

- (id)associatedSectionControllerForItemIdentifier:(id)identifier
{
  if (identifier)
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

- (id)associatedSectionControllerForSectionIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy && (sectionControllers = self->_sectionControllers) != 0)
  {
    if ([(NSHashTable *)sectionControllers count]== 1)
    {
      allObjects = [(NSHashTable *)self->_sectionControllers allObjects];
      firstObject = [(NSHashTable *)allObjects firstObject];
LABEL_16:
      v8 = firstObject;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      allObjects = self->_sectionControllers;
      v8 = [(NSHashTable *)allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(allObjects);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            associatedSectionIdentifiers = [v11 associatedSectionIdentifiers];
            v13 = [associatedSectionIdentifiers containsObject:identifierCopy];

            if (v13)
            {
              firstObject = v11;
              goto LABEL_16;
            }
          }

          v8 = [(NSHashTable *)allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)_performApplyWithoutRebasingSectionSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  isApplyingWithoutRebasingSectionSnapshots = [(__UIDiffableDataSource *)self isApplyingWithoutRebasingSectionSnapshots];
  [(__UIDiffableDataSource *)self setIsApplyingWithoutRebasingSectionSnapshots:1];
  snapshotsCopy[2](snapshotsCopy);

  [(__UIDiffableDataSource *)self setIsApplyingWithoutRebasingSectionSnapshots:isApplyingWithoutRebasingSectionSnapshots];
}

- (void)_computeCurrentTransactionForFinalSnapshot:(id)snapshot withDataSourceDiffer:(id)differ
{
  snapshotCopy = snapshot;
  differCopy = differ;
  pendingReorderingTransaction = self->_pendingReorderingTransaction;
  if (pendingReorderingTransaction)
  {
    objc_storeStrong(&self->_currentTransaction, pendingReorderingTransaction);
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v8 = [(__UIDiffableDataSource *)self _transactionForFinalSnapshot:snapshotCopy dataSourceDiffer:differCopy shouldSkipRebasingSectionSnapshots:[(__UIDiffableDataSource *)self isApplyingWithoutRebasingSectionSnapshots]];
    currentTransaction = self->_currentTransaction;
    self->_currentTransaction = v8;

    os_unfair_recursive_lock_unlock();
  }
}

- (BOOL)canMoveItemAtIndexPath:(id)path
{
  pathCopy = path;
  reorderingHandlers = [(__UIDiffableDataSource *)self reorderingHandlers];
  canReorderItemHandler = [reorderingHandlers canReorderItemHandler];

  if (!canReorderItemHandler)
  {
    canReorderItemHandler2 = [(__UIDiffableDataSource *)self canReorderItemHandler];

    if (!canReorderItemHandler2)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v7 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:pathCopy];
    if (v7)
    {
      canReorderItemHandler3 = [(__UIDiffableDataSource *)self canReorderItemHandler];
      v10 = (canReorderItemHandler3)[2](canReorderItemHandler3, v7);
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v7 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:pathCopy];
  if (!v7)
  {
    goto LABEL_8;
  }

  canReorderItemHandler3 = [(__UIDiffableDataSource *)self reorderingHandlers];
  v8CanReorderItemHandler = [canReorderItemHandler3 canReorderItemHandler];
  v10 = (v8CanReorderItemHandler)[2](v8CanReorderItemHandler, v7);

LABEL_7:
LABEL_9:

LABEL_10:
  return v10;
}

- (void)_willBeginReorderingForItemAtIndexPath:(id)path
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:path];
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

- (void)_commitReorderingForItemAtIndexPath:(id)path toDestinationIndexPath:(id)indexPath shouldPerformViewAnimations:(BOOL)animations
{
  indexPathCopy = indexPath;
  pathCopy = path;
  v14 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:pathCopy finalIndexPath:indexPathCopy updateAction:3];

  v10 = [(__UIDiffableDataSource *)self _reorderingTransactionForReorderingUpdate:v14];
  pendingReorderingTransaction = self->_pendingReorderingTransaction;
  self->_pendingReorderingTransaction = v10;

  finalSnapshot = [(NSDiffableDataSourceTransaction *)self->_pendingReorderingTransaction finalSnapshot];
  self->_pendingReorderingTransactionShouldPerformViewAnimations = animations;
  impl = [finalSnapshot impl];
  [(__UIDiffableDataSource *)self applyDifferencesFromSnapshot:impl animatingDifferences:1];
}

- (id)_reorderingTransactionForReorderingUpdate:(id)update
{
  updateCopy = update;
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
  v9 = [NSDiffableDataSourceTransaction _computeReorderingTransactionWithInitialSnapshot:v7 reorderingUpdate:updateCopy sectionSnapshotProvider:v8];

  return v9;
}

- (id)_transactionForReloadUpdatesWithSnapshot:(id)snapshot
{
  v3 = MEMORY[0x1E696ADD8];
  snapshotCopy = snapshot;
  v5 = [v3 alloc];
  v6 = MEMORY[0x1E695E0F0];
  v7 = [v5 initWithChanges:MEMORY[0x1E695E0F0]];
  v8 = [NSDiffableDataSourceTransaction applyTransactionWithInitialSnapshot:snapshotCopy finalSnapshot:snapshotCopy difference:v7 sectionTransactions:v6];

  return v8;
}

- (id)_transactionForFinalSnapshot:(id)snapshot dataSourceDiffer:(id)differ shouldSkipRebasingSectionSnapshots:(BOOL)snapshots
{
  snapshotsCopy = snapshots;
  v50 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  differCopy = differ;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  selfCopy = self;
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

        _snapshotsMap = [*(*(&v44 + 1) + 8 * i) _snapshotsMap];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        keyEnumerator = [_snapshotsMap keyEnumerator];
        v13 = [keyEnumerator countByEnumeratingWithState:&v40 objects:v48 count:16];
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
                objc_enumerationMutation(keyEnumerator);
              }

              v17 = *(*(&v40 + 1) + 8 * j);
              v18 = [_snapshotsMap objectForKey:v17];
              [strongToStrongObjectsMapTable setObject:v18 forKey:v17];
            }

            v14 = [keyEnumerator countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v14);
        }
      }

      v9 = [(NSHashTable *)obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v9);
  }

  v19 = [[off_1E70ECB58 alloc] initWithState:selfCopy->_state];
  v20 = [off_1E70ECB58 alloc];
  state = [snapshotCopy state];
  v22 = [v20 initWithState:state];

  if (snapshotsCopy)
  {
    v23 = differCopy;
    if (differCopy)
    {
      v24 = *(differCopy + 4);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    collectionDifference = [(_UIIdentifierDiffer *)v25 collectionDifference];
    v27 = collectionDifference;
    if (collectionDifference)
    {
      v28 = collectionDifference;
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x1E696ADD8]);
      v28 = [v31 initWithChanges:MEMORY[0x1E695E0F0]];
    }

    v29 = v28;

    v30 = [[NSDiffableDataSourceTransaction alloc] initWithInitialSnapshot:v19 finalSnapshot:v22 source:0 difference:v29 finalSectionSnapshots:strongToStrongObjectsMapTable];
  }

  else
  {
    v23 = differCopy;
    v29 = [[_UIDiffableDataSourceSectionSnapshotRebaser alloc] initWithInitialSnapshot:v19 finalSnapshot:v22 initialSectionSnapshots:strongToStrongObjectsMapTable dataSourceDiffer:differCopy];
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
    allObjects = [(NSHashTable *)sectionControllers allObjects];
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];

  return numberOfSections;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];

  if (numberOfSections <= section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1516 description:{@"Invalid parameter not satisfying: %@", @"section < [_state.dataSourceSnapshot numberOfSections]"}];
  }

  dataSourceSnapshot2 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v10 = [dataSourceSnapshot2 numberOfItemsInSection:section];

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:pathCopy];
  collectionViewCellProvider = [(__UIDiffableDataSource *)self collectionViewCellProvider];

  if (!collectionViewCellProvider)
  {
    reuseIdentifierProvider = [(__UIDiffableDataSource *)self reuseIdentifierProvider];

    if (!reuseIdentifierProvider)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1542 description:{@"Invalid parameter not satisfying: %@", @"self.reuseIdentifierProvider"}];
    }

    collectionViewCellConfigurationHandler = [(__UIDiffableDataSource *)self collectionViewCellConfigurationHandler];

    if (!collectionViewCellConfigurationHandler)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1543 description:{@"Invalid parameter not satisfying: %@", @"self.collectionViewCellConfigurationHandler"}];
    }

    reuseIdentifierProvider2 = [(__UIDiffableDataSource *)self reuseIdentifierProvider];
    v14 = (reuseIdentifierProvider2)[2](reuseIdentifierProvider2, v9);

    if (v14)
    {
      if (v9)
      {
LABEL_13:
        v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:pathCopy];
        collectionViewCellConfigurationHandler2 = [(__UIDiffableDataSource *)self collectionViewCellConfigurationHandler];
        (collectionViewCellConfigurationHandler2)[2](collectionViewCellConfigurationHandler2, v12, v9);

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1546 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier"}];

      if (v9)
      {
        goto LABEL_13;
      }
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1547 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];

    goto LABEL_13;
  }

  collectionViewCellProvider2 = [(__UIDiffableDataSource *)self collectionViewCellProvider];
  v12 = (collectionViewCellProvider2)[2](collectionViewCellProvider2, viewCopy, pathCopy, v9);

  if (!v12)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1530 description:{@"UICollectionViewDiffableDataSource cell provider returned nil for index path %@ with item identifier '%@', which is not allowed. You must always return a cell to the collection view: %@", pathCopy, v9, viewCopy}];
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  supplementaryViewProvider = [(__UIDiffableDataSource *)self supplementaryViewProvider];
  if (supplementaryViewProvider)
  {
    goto LABEL_5;
  }

  supplementaryReuseIdentifierProvider = [(__UIDiffableDataSource *)self supplementaryReuseIdentifierProvider];
  if (!supplementaryReuseIdentifierProvider || (v14 = supplementaryReuseIdentifierProvider, [(__UIDiffableDataSource *)self supplementaryViewConfigurationHandler], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
  {
    supplementaryViewProvider = [MEMORY[0x1E696AAA8] currentHandler];
    [supplementaryViewProvider handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1557 description:{@"Invalid parameter not satisfying: %@", @"self.supplementaryViewProvider || (self.supplementaryReuseIdentifierProvider && self.supplementaryViewConfigurationHandler)"}];
LABEL_5:
  }

  supplementaryViewProvider2 = [(__UIDiffableDataSource *)self supplementaryViewProvider];

  if (supplementaryViewProvider2)
  {
    supplementaryViewProvider3 = [(__UIDiffableDataSource *)self supplementaryViewProvider];
    v18 = (supplementaryViewProvider3)[2](supplementaryViewProvider3, viewCopy, kindCopy, pathCopy);

    if (v18)
    {
      goto LABEL_13;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1562 description:{@"UICollectionViewDiffableDataSource supplementary view provider returned nil for element kind '%@' at index path %@, which is not allowed. You must always return a view to the collection view: %@", kindCopy, pathCopy, viewCopy}];
  }

  else
  {
    supplementaryReuseIdentifierProvider2 = [(__UIDiffableDataSource *)self supplementaryReuseIdentifierProvider];
    currentHandler = (supplementaryReuseIdentifierProvider2)[2](supplementaryReuseIdentifierProvider2, kindCopy, pathCopy);

    if (!currentHandler)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1565 description:@"Error: reuseIdentifier must not be nil"];
    }

    v18 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:currentHandler forIndexPath:pathCopy];
    supplementaryViewConfigurationHandler = [(__UIDiffableDataSource *)self supplementaryViewConfigurationHandler];
    (supplementaryViewConfigurationHandler)[2](supplementaryViewConfigurationHandler, v18, kindCopy, pathCopy);
  }

LABEL_13:

  return v18;
}

- (BOOL)sectionController:(id)controller shouldExpandItem:(id)item
{
  itemCopy = item;
  sectionSnapshotHandlers = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  shouldExpandItemHandler = [sectionSnapshotHandlers shouldExpandItemHandler];

  if (shouldExpandItemHandler)
  {
    sectionSnapshotHandlers2 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    shouldExpandItemHandler2 = [sectionSnapshotHandlers2 shouldExpandItemHandler];
    v10 = (shouldExpandItemHandler2)[2](shouldExpandItemHandler2, itemCopy);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)sectionController:(id)controller willExpandItem:(id)item
{
  itemCopy = item;
  sectionSnapshotHandlers = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  willExpandItemHandler = [sectionSnapshotHandlers willExpandItemHandler];

  if (willExpandItemHandler)
  {
    sectionSnapshotHandlers2 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    willExpandItemHandler2 = [sectionSnapshotHandlers2 willExpandItemHandler];
    (willExpandItemHandler2)[2](willExpandItemHandler2, itemCopy);
  }
}

- (BOOL)sectionController:(id)controller shouldCollapseItem:(id)item
{
  itemCopy = item;
  sectionSnapshotHandlers = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  shouldCollapseItemHandler = [sectionSnapshotHandlers shouldCollapseItemHandler];

  if (shouldCollapseItemHandler)
  {
    sectionSnapshotHandlers2 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    shouldCollapseItemHandler2 = [sectionSnapshotHandlers2 shouldCollapseItemHandler];
    v10 = (shouldCollapseItemHandler2)[2](shouldCollapseItemHandler2, itemCopy);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)sectionController:(id)controller willCollapseItem:(id)item
{
  itemCopy = item;
  sectionSnapshotHandlers = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  willCollapseItemHandler = [sectionSnapshotHandlers willCollapseItemHandler];

  if (willCollapseItemHandler)
  {
    sectionSnapshotHandlers2 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    willCollapseItemHandler2 = [sectionSnapshotHandlers2 willCollapseItemHandler];
    (willCollapseItemHandler2)[2](willCollapseItemHandler2, itemCopy);
  }
}

- (BOOL)sectionController:(id)controller shouldQueryForSnapshotForExpandingParentItem:(id)item
{
  v4 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers:controller];
  snapshotForExpandingParentItemHandler = [v4 snapshotForExpandingParentItemHandler];
  v6 = snapshotForExpandingParentItemHandler != 0;

  return v6;
}

- (id)sectionController:(id)controller snapshotForExpandingParentItem:(id)item currentSectionSnapshot:(id)snapshot
{
  itemCopy = item;
  snapshotCopy = snapshot;
  sectionSnapshotHandlers = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
  snapshotForExpandingParentItemHandler = [sectionSnapshotHandlers snapshotForExpandingParentItemHandler];

  v11 = snapshotCopy;
  if (snapshotForExpandingParentItemHandler)
  {
    sectionSnapshotHandlers2 = [(__UIDiffableDataSource *)self sectionSnapshotHandlers];
    snapshotForExpandingParentItemHandler2 = [sectionSnapshotHandlers2 snapshotForExpandingParentItemHandler];
    v11 = (snapshotForExpandingParentItemHandler2)[2](snapshotForExpandingParentItemHandler2, itemCopy, snapshotCopy);
  }

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];

  return numberOfSections;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];

  if (numberOfSections <= section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1646 description:{@"Invalid parameter not satisfying: %@", @"section < [_state.dataSourceSnapshot numberOfSections]"}];
  }

  dataSourceSnapshot2 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v10 = [dataSourceSnapshot2 numberOfItemsInSection:section];

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableViewCellProvider = [(__UIDiffableDataSource *)self tableViewCellProvider];
  if (tableViewCellProvider)
  {
    goto LABEL_5;
  }

  tableViewCellConfigurationHandler = [(__UIDiffableDataSource *)self tableViewCellConfigurationHandler];
  if (!tableViewCellConfigurationHandler || (v11 = tableViewCellConfigurationHandler, [(__UIDiffableDataSource *)self reuseIdentifierProvider], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    tableViewCellProvider = [MEMORY[0x1E696AAA8] currentHandler];
    [tableViewCellProvider handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1652 description:{@"Invalid parameter not satisfying: %@", @"self.tableViewCellProvider || (self.tableViewCellConfigurationHandler && self.reuseIdentifierProvider)"}];
LABEL_5:
  }

  v13 = [(__UIDiffableDataSource *)self itemIdentifierForIndexPath:pathCopy];
  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1655 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];
  }

  tableViewCellProvider2 = [(__UIDiffableDataSource *)self tableViewCellProvider];

  if (tableViewCellProvider2)
  {
    tableViewCellProvider3 = [(__UIDiffableDataSource *)self tableViewCellProvider];
    v16 = (tableViewCellProvider3)[2](tableViewCellProvider3, viewCopy, pathCopy, v13);

    if (v16)
    {
      goto LABEL_15;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1660 description:{@"UITableViewDiffableDataSource cell provider returned nil for index path %@ with item identifier '%@', which is not allowed. You must always return a cell to the table view: %@", pathCopy, v13, viewCopy}];
  }

  else
  {
    reuseIdentifierProvider = [(__UIDiffableDataSource *)self reuseIdentifierProvider];
    currentHandler2 = (reuseIdentifierProvider)[2](reuseIdentifierProvider, v13);

    if (!currentHandler2)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceImpl.m" lineNumber:1663 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier"}];
    }

    v16 = [viewCopy dequeueReusableCellWithIdentifier:currentHandler2];
    tableViewCellConfigurationHandler2 = [(__UIDiffableDataSource *)self tableViewCellConfigurationHandler];
    (tableViewCellConfigurationHandler2)[2](tableViewCellConfigurationHandler2, v16, v13);
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
  state = [(__UIDiffableDataSource *)self state];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [state sections];
    objc_claimAutoreleasedReturnValue();
    _UIDiffableDataSourceValidateIdentifiers();
  }

  [state validateIdentifiers];
}

@end