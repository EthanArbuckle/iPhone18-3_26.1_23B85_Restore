@interface _UIDiffableDataSourceSectionController
- (BOOL)_performDisclosureAction:(unint64_t)action forItem:(id)item;
- (BOOL)_queryClientShouldCollapseItem:(id)item;
- (BOOL)_queryClientShouldExpandItem:(id)item;
- (BOOL)_queryClientShouldQueryForSnapshotForExpandingParentItem:(id)item;
- (BOOL)_shouldPerformCustomCollapseExpandAnimationsForInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot;
- (BOOL)_snapshotHasExpandOrCollapseUpdates:(id)updates;
- (_UIDiffableDataSourceSectionController)initWithDiffableDataSource:(id)source;
- (_UIDiffableDataSourceSectionController)initWithDiffableDataSourceImpl:(id)impl;
- (_UIDiffableDataSourceSectionController)initWithItemRenderers:(id)renderers;
- (_UIDiffableDataSourceSectionController)initWithItemRenderers:(id)renderers associatedSectionIdentifiers:(id)identifiers snapshotsMap:(id)map dataSource:(id)source;
- (_UIDiffableDataSourceSectionControllerDelegate)delegate;
- (id)_collectionView;
- (id)_extantMutableSnapshotForItem:(id)item;
- (id)_queryClientSnapshotForExpandingParentItemForItem:(id)item currentSectionSnapshot:(id)snapshot;
- (id)_sectionIdentifierForItem:(id)item;
- (id)_snapshotForSectionContainingItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataSource;
- (id)snapshotForItem:(id)item;
- (id)snapshotForSection:(id)section;
- (void)__applySnapshot:(id)snapshot toSection:(id)section animatingDifferences:(BOOL)differences viewPropertyAnimator:(id)animator animationsProvider:(id)provider isOnDiffableApplyQueue:(BOOL)queue completion:(id)completion;
- (void)_applySnapshot:(id)snapshot toSection:(id)section animatingDifferences:(BOOL)differences viewPropertyAnimator:(id)animator animationsProvider:(id)provider isOnDiffableApplyQueue:(BOOL)queue completion:(id)completion;
- (void)_configureCell:(id)cell forItem:(id)item inSnapshot:(id)snapshot;
- (void)_configureForItemRenderersIfNeeded:(id)needed;
- (void)_queryClientWillCollapseItem:(id)item;
- (void)_queryClientWillExpandItem:(id)item;
- (void)_updatePreparedCellsForExpansionStateWithSnapshot:(id)snapshot;
- (void)_updateSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)setDataSource:(id)source;
@end

@implementation _UIDiffableDataSourceSectionController

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (_UIDiffableDataSourceSectionController)initWithDiffableDataSourceImpl:(id)impl
{
  v4 = MEMORY[0x1E695DFD8];
  implCopy = impl;
  v6 = [v4 set];
  v7 = [(_UIDiffableDataSourceSectionController *)self initWithItemRenderers:MEMORY[0x1E695E0F0] associatedSectionIdentifiers:v6 snapshotsMap:0 dataSource:implCopy];

  return v7;
}

- (_UIDiffableDataSourceSectionController)initWithDiffableDataSource:(id)source
{
  v4 = MEMORY[0x1E695DFD8];
  sourceCopy = source;
  v6 = [v4 set];
  _diffableDataSourceImpl = [sourceCopy _diffableDataSourceImpl];

  v8 = [(_UIDiffableDataSourceSectionController *)self initWithItemRenderers:MEMORY[0x1E695E0F0] associatedSectionIdentifiers:v6 snapshotsMap:0 dataSource:_diffableDataSourceImpl];
  return v8;
}

- (_UIDiffableDataSourceSectionController)initWithItemRenderers:(id)renderers
{
  v4 = MEMORY[0x1E695DFD8];
  renderersCopy = renderers;
  v6 = [v4 set];
  v7 = [(_UIDiffableDataSourceSectionController *)self initWithItemRenderers:renderersCopy associatedSectionIdentifiers:v6 snapshotsMap:0 dataSource:0];

  return v7;
}

- (_UIDiffableDataSourceSectionController)initWithItemRenderers:(id)renderers associatedSectionIdentifiers:(id)identifiers snapshotsMap:(id)map dataSource:(id)source
{
  renderersCopy = renderers;
  identifiersCopy = identifiers;
  mapCopy = map;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = _UIDiffableDataSourceSectionController;
  v15 = [(_UIDiffableDataSourceSectionController *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemRenderers, renderers);
    if (identifiersCopy)
    {
      v17 = identifiersCopy;
    }

    else
    {
      v17 = [MEMORY[0x1E695DFD8] set];
    }

    associatedSectionIdentifiers = v16->_associatedSectionIdentifiers;
    v16->_associatedSectionIdentifiers = v17;

    if (mapCopy)
    {
      strongToStrongObjectsMapTable = mapCopy;
    }

    else
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    }

    snapshotsMap = v16->_snapshotsMap;
    v16->_snapshotsMap = strongToStrongObjectsMapTable;

    objc_storeWeak(&v16->_dataSource, sourceCopy);
  }

  if (sourceCopy)
  {
    [(_UIDiffableDataSourceSectionController *)v16 _configureForDataSource:sourceCopy];
  }

  else if ([renderersCopy count])
  {
    [(_UIDiffableDataSourceSectionController *)v16 _configureForItemRenderersIfNeeded:renderersCopy];
  }

  return v16;
}

- (id)snapshotForSection:(id)section
{
  v3 = [(_UIDiffableDataSourceSectionController *)self _extantMutableSnapshotForSection:section];
  v4 = [v3 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  }

  v7 = v6;

  return v7;
}

- (id)snapshotForItem:(id)item
{
  v3 = [(_UIDiffableDataSourceSectionController *)self _extantMutableSnapshotForItem:item];
  v4 = [v3 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  }

  v7 = v6;

  return v7;
}

- (void)_applySnapshot:(id)snapshot toSection:(id)section animatingDifferences:(BOOL)differences viewPropertyAnimator:(id)animator animationsProvider:(id)provider isOnDiffableApplyQueue:(BOOL)queue completion:(id)completion
{
  queueCopy = queue;
  differencesCopy = differences;
  snapshotCopy = snapshot;
  sectionCopy = section;
  animatorCopy = animator;
  providerCopy = provider;
  completionCopy = completion;
  [snapshotCopy _prepareForApplyToDataSource];
  if (!differencesCopy)
  {
    [(_UIDiffableDataSourceSectionController *)self _updatePreparedCellsForExpansionStateWithSnapshot:snapshotCopy];
    v21 = [snapshotCopy copy];
    [(_UIDiffableDataSourceSectionController *)self __applySnapshot:v21 toSection:sectionCopy animatingDifferences:0 viewPropertyAnimator:0 animationsProvider:0 isOnDiffableApplyQueue:queueCopy completion:completionCopy];
    goto LABEL_24;
  }

  v21 = _Block_copy(providerCopy);
  if ([(_UIDiffableDataSourceSectionController *)self _snapshotHasExpandOrCollapseUpdates:snapshotCopy])
  {
    v66 = queueCopy;
    dataSource = [(_UIDiffableDataSourceSectionController *)self dataSource];
    snapshot = [dataSource snapshot];
    v23 = [snapshot indexOfSectionIdentifier:sectionCopy];

    v65 = v23;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_16:

      queueCopy = v66;
      goto LABEL_17;
    }

    v24 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:sectionCopy];
    if (![(_UIDiffableDataSourceSectionController *)self _shouldPerformCustomCollapseExpandAnimationsForInitialSnapshot:v24 finalSnapshot:snapshotCopy])
    {
LABEL_15:

      goto LABEL_16;
    }

    v61 = v21;
    v25 = [_UIDiffableDataSourceExpandCollapseAnimationContext alloc];
    obj = [dataSource snapshot];
    v26 = obj;
    v64 = v24;
    v60 = v24;
    v27 = snapshotCopy;
    v62 = v26;
    if (!v25)
    {
      v30 = 0;
      v28 = v60;
      v33 = v27;
LABEL_14:

      expandCollapseAnimationContext = self->_expandCollapseAnimationContext;
      self->_expandCollapseAnimationContext = v30;

      v24 = v64;
      v21 = v61;
      goto LABEL_15;
    }

    v63 = v27;
    if (!v26)
    {
      v53 = v25;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithSectionIndex_snapshotBeforeApplication_initialSectionSnapshot_finalSectionSnapshot_ object:v53 file:@"UIDiffableDataSourceSectionController.m" lineNumber:657 description:{@"Invalid parameter not satisfying: %@", @"initialSnapshot != nil"}];

      v25 = v53;
      v27 = v63;
    }

    v28 = v60;
    if (v60)
    {
      if (v27)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v57 = v25;
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_initWithSectionIndex_snapshotBeforeApplication_initialSectionSnapshot_finalSectionSnapshot_ object:v57 file:@"UIDiffableDataSourceSectionController.m" lineNumber:658 description:{@"Invalid parameter not satisfying: %@", @"initialSectionSnapshot != nil"}];

      v25 = v57;
      if (v63)
      {
        goto LABEL_10;
      }
    }

    v58 = v25;
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel_initWithSectionIndex_snapshotBeforeApplication_initialSectionSnapshot_finalSectionSnapshot_ object:v58 file:@"UIDiffableDataSourceSectionController.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"finalSectionSnapshot != nil"}];

    v25 = v58;
LABEL_10:
    v72.receiver = v25;
    v72.super_class = _UIDiffableDataSourceExpandCollapseAnimationContext;
    v29 = [(_UIDiffableDataSourceSectionController *)&v72 init];
    v30 = v29;
    if (v29)
    {
      v29->_dataSource = v65;
      objc_storeStrong(&v29->_snapshotsMap, obj);
      objc_storeStrong(&v30->_initialSectionSnapshot, v64);
      objc_storeStrong(&v30->_finalSectionSnapshot, snapshot);
      _itemsOrderedSet = [v60 _itemsOrderedSet];
      initialIdentifiers = v30->_initialIdentifiers;
      v30->_initialIdentifiers = _itemsOrderedSet;

      v33 = v63;
      _itemsOrderedSet2 = [v63 _itemsOrderedSet];
      finalIdentifiers = v30->_finalIdentifiers;
      v30->_finalIdentifiers = _itemsOrderedSet2;

      _visibleItemsOrderedSet = [v60 _visibleItemsOrderedSet];
      initialVisibleIdentifiers = v30->_initialVisibleIdentifiers;
      v30->_initialVisibleIdentifiers = _visibleItemsOrderedSet;

      _visibleItemsOrderedSet2 = [v63 _visibleItemsOrderedSet];
      finalVisibleIdentifiers = v30->_finalVisibleIdentifiers;
      v30->_finalVisibleIdentifiers = _visibleItemsOrderedSet2;

      expandedItemsUpdates = [v63 expandedItemsUpdates];
      identifiersOfExpandedItems = v30->_identifiersOfExpandedItems;
      v30->_identifiersOfExpandedItems = expandedItemsUpdates;

      collapsedItemsUpdates = [v63 collapsedItemsUpdates];
      identifiersOfCollapsedItems = v30->_identifiersOfCollapsedItems;
      v30->_identifiersOfCollapsedItems = collapsedItemsUpdates;
    }

    else
    {
      v33 = v63;
    }

    goto LABEL_14;
  }

LABEL_17:
  v45 = animatorCopy;
  if (!v45)
  {
    v46 = _UIShouldCollectionTableAnimationsUseSpringCurve();
    v47 = [UIViewPropertyAnimator alloc];
    v48 = v47;
    if (v46)
    {
      v49 = [[UISpringTimingParameters alloc] initWithDuration:0.25 bounce:0.0];
      v45 = [(UIViewPropertyAnimator *)v48 initWithDuration:v49 timingParameters:0.25];
    }

    else
    {
      v45 = [(UIViewPropertyAnimator *)v47 initWithDuration:0 curve:&__block_literal_global_279 animations:0.25];
    }
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __162___UIDiffableDataSourceSectionController__applySnapshot_toSection_animatingDifferences_viewPropertyAnimator_animationsProvider_isOnDiffableApplyQueue_completion___block_invoke_2;
  v70[3] = &unk_1E70F35B8;
  v70[4] = self;
  v50 = snapshotCopy;
  v71 = v50;
  [(UIViewPropertyAnimator *)v45 addAnimations:v70];
  if (completionCopy)
  {
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __162___UIDiffableDataSourceSectionController__applySnapshot_toSection_animatingDifferences_viewPropertyAnimator_animationsProvider_isOnDiffableApplyQueue_completion___block_invoke_3;
    v68[3] = &unk_1E70FFB68;
    v69 = completionCopy;
    [(UIViewPropertyAnimator *)v45 addCompletion:v68];
  }

  v51 = [v50 copy];
  [(_UIDiffableDataSourceSectionController *)self __applySnapshot:v51 toSection:sectionCopy animatingDifferences:1 viewPropertyAnimator:v45 animationsProvider:v21 isOnDiffableApplyQueue:queueCopy completion:0];

  v52 = self->_expandCollapseAnimationContext;
  self->_expandCollapseAnimationContext = 0;

LABEL_24:
}

- (void)__applySnapshot:(id)snapshot toSection:(id)section animatingDifferences:(BOOL)differences viewPropertyAnimator:(id)animator animationsProvider:(id)provider isOnDiffableApplyQueue:(BOOL)queue completion:(id)completion
{
  v49[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  sectionCopy = section;
  animatorCopy = animator;
  providerCopy = provider;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained)
  {
    if (!sectionCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceSectionController.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"section"}];
    }

    queueCopy = queue;
    if (!animatorCopy && providerCopy)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceSectionController.m" lineNumber:171 description:@"An non-nil animator is required to use a custom animations provider"];
    }

    v22 = objc_loadWeakRetained(&self->_dataSource);
    [v22 addAssociatedSectionControllerIfNeeded:self];

    associatedSectionIdentifiers = [(_UIDiffableDataSourceSectionController *)self associatedSectionIdentifiers];
    v24 = [associatedSectionIdentifiers setByAddingObject:sectionCopy];
    associatedSectionIdentifiers = self->_associatedSectionIdentifiers;
    self->_associatedSectionIdentifiers = v24;

    v39 = [snapshotCopy copy];
    [NSMapTable setObject:"setObject:forKey:" forKey:?];
    v26 = objc_loadWeakRetained(&self->_dataSource);
    snapshot = [v26 snapshot];

    v28 = completionCopy;
    if ([snapshot indexOfSectionIdentifier:sectionCopy] == 0x7FFFFFFFFFFFFFFFLL)
    {
      differencesCopy2 = differences;
      v49[0] = sectionCopy;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
      [snapshot appendSectionsWithIdentifiers:v30];
    }

    else
    {
      v30 = [snapshot itemIdentifiersInSectionWithIdentifier:sectionCopy];
      if ([v30 count])
      {
        [snapshot deleteItemsWithIdentifiers:v30];
      }

      differencesCopy2 = differences;
    }

    visibleItems = [snapshotCopy visibleItems];
    [snapshot appendItemsWithIdentifiers:visibleItems intoSectionWithIdentifier:sectionCopy];

    expandCollapseAnimationContext = self->_expandCollapseAnimationContext;
    v33 = objc_loadWeakRetained(&self->_dataSource);
    [v33 setExpandCollapseAnimationContext:expandCollapseAnimationContext];

    v34 = objc_loadWeakRetained(&self->_dataSource);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __163___UIDiffableDataSourceSectionController___applySnapshot_toSection_animatingDifferences_viewPropertyAnimator_animationsProvider_isOnDiffableApplyQueue_completion___block_invoke;
    v41[3] = &unk_1E710AE98;
    v47 = queueCopy;
    v42 = animatorCopy;
    selfCopy = self;
    v44 = snapshot;
    v45 = providerCopy;
    v48 = differencesCopy2;
    completionCopy = v28;
    v46 = v28;
    v35 = snapshot;
    [v34 _performApplyWithoutRebasingSectionSnapshots:v41];

    v36 = objc_loadWeakRetained(&self->_dataSource);
    [v36 setExpandCollapseAnimationContext:0];
  }
}

- (void)_updatePreparedCellsForExpansionStateWithSnapshot:(id)snapshot
{
  v21 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  dataSource = [(_UIDiffableDataSourceSectionController *)self dataSource];
  v6 = dataSource;
  if (dataSource && ([dataSource isSuppressingViewUpdates] & 1) == 0)
  {
    _collectionView = [v6 _collectionView];
    if (_collectionView)
    {
      v15 = _collectionView;
      preparedCells = [_collectionView preparedCells];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [preparedCells countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(preparedCells);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              _itemIdentifier = [v13 _itemIdentifier];
              if (_itemIdentifier)
              {
                [(_UIDiffableDataSourceSectionController *)self _configureCell:v13 forItem:_itemIdentifier inSnapshot:snapshotCopy];
              }
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [preparedCells countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      _collectionView = v15;
    }
  }
}

- (BOOL)_snapshotHasExpandOrCollapseUpdates:(id)updates
{
  updatesCopy = updates;
  expandedItemsUpdates = [updatesCopy expandedItemsUpdates];
  v5 = [expandedItemsUpdates count];

  collapsedItemsUpdates = [updatesCopy collapsedItemsUpdates];

  v7 = [collapsedItemsUpdates count];
  return v5 > 0 || v7 > 0;
}

- (BOOL)_shouldPerformCustomCollapseExpandAnimationsForInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot
{
  v28 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  finalSnapshotCopy = finalSnapshot;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  collapsedItemsUpdates = [finalSnapshotCopy collapsedItemsUpdates];
  v8 = [collapsedItemsUpdates countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(collapsedItemsUpdates);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      if ([snapshotCopy containsItem:v12])
      {
        if ([snapshotCopy isExpanded:v12])
        {
          goto LABEL_20;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [collapsedItemsUpdates countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  collapsedItemsUpdates = [finalSnapshotCopy expandedItemsUpdates];
  v13 = [collapsedItemsUpdates countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = *v19;
LABEL_12:
    v15 = 0;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(collapsedItemsUpdates);
      }

      v16 = *(*(&v18 + 1) + 8 * v15);
      if ([snapshotCopy containsItem:v16])
      {
        if (![snapshotCopy isExpanded:v16])
        {
          break;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [collapsedItemsUpdates countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v13)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    LOBYTE(v13) = 1;
  }

LABEL_21:

  return v13;
}

- (id)_snapshotForSectionContainingItem:(id)item
{
  itemCopy = item;
  dataSource = [(_UIDiffableDataSourceSectionController *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    snapshot = [dataSource snapshot];
    v8 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:itemCopy];
    if (v8)
    {
      v9 = v8;
      v10 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:v8];

      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
LABEL_7:

  return v10;
}

- (id)_collectionView
{
  dataSource = [(_UIDiffableDataSourceSectionController *)self dataSource];
  _collectionView = [dataSource _collectionView];

  return _collectionView;
}

- (_UIDiffableDataSourceSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  objc_storeWeak(&self->_dataSource, sourceCopy);
  [(_UIDiffableDataSourceSectionController *)self _configureForDataSource:sourceCopy];
}

- (void)configureCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  v8 = [(_UIDiffableDataSourceSectionController *)self _snapshotForSectionContainingItem:itemCopy];
  [(_UIDiffableDataSourceSectionController *)self _configureCell:cellCopy forItem:itemCopy inSnapshot:v8];
}

- (void)_configureCell:(id)cell forItem:(id)item inSnapshot:(id)snapshot
{
  cellCopy = cell;
  itemCopy = item;
  snapshotCopy = snapshot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = cellCopy;
    [v11 _setItemIdentifier:itemCopy];
    if ([snapshotCopy containsItem:itemCopy])
    {
      v12 = [snapshotCopy levelForItem:itemCopy];
      _layoutAttributes = [v11 _layoutAttributes];
      _existingListAttributes = [(UICollectionViewLayoutAttributes *)_layoutAttributes _existingListAttributes];

      if (_existingListAttributes)
      {
        v15 = v12 <= 1 ? 1 : v12;
        v16 = v15 - 1;
        if (_existingListAttributes[8])
        {
          v12 = v16;
        }
      }

      [v11 _setDefaultIndentationLevel:v12];
      [v11 _setExpanded:{objc_msgSend(snapshotCopy, "isExpanded:", itemCopy)}];
      v17 = [snapshotCopy parentOfChildItem:itemCopy];
      if (v17)
      {
        dataSource = [(_UIDiffableDataSourceSectionController *)self dataSource];
        v19 = [dataSource indexPathForItemIdentifier:v17];
        if (v19)
        {
          [dataSource _collectionView];
          v20 = v22 = _existingListAttributes;
          v21 = [v20 cellForItemAtIndexPath:v19];

          _existingListAttributes = v22;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      [v11 _setParentFocusItem:v21];
    }

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76___UIDiffableDataSourceSectionController__configureCell_forItem_inSnapshot___block_invoke;
    v23[3] = &unk_1E710AEC0;
    objc_copyWeak(&v24, &location);
    [v11 _setDisclosureActionHandler:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (void)_configureForItemRenderersIfNeeded:(id)needed
{
  v22 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if ([neededCopy count])
  {
    v12 = neededCopy;
    firstObject = [neededCopy firstObject];
    objc_opt_class();
    v5 = firstObject;
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = v12;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = *v18;
        v9 = MEMORY[0x1E69E9820];
        do
        {
          v10 = 0;
          do
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * v10);
            objc_initWeak(&location, self);
            v14[0] = v9;
            v14[1] = 3221225472;
            v14[2] = __77___UIDiffableDataSourceSectionController__configureForItemRenderersIfNeeded___block_invoke;
            v14[3] = &unk_1E710AEE8;
            objc_copyWeak(&v15, &location);
            [v11 setWillUpdateCellHandler:v14];
            objc_destroyWeak(&v15);
            objc_destroyWeak(&location);
            ++v10;
          }

          while (v7 != v10);
          v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v7);
      }

      v5 = firstObject;
    }

    neededCopy = v12;
  }
}

- (id)_sectionIdentifierForItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    dataSource = [(_UIDiffableDataSourceSectionController *)self dataSource];
    if (!dataSource)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceSectionController.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
    }

    snapshot = [dataSource snapshot];
    v8 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:itemCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_performDisclosureAction:(unint64_t)action forItem:(id)item
{
  v20[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!action || ([(_UIDiffableDataSourceSectionController *)self _sectionIdentifierForItem:itemCopy], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = 0;
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:v7];
  if (![v9 containsItem:itemCopy])
  {
    goto LABEL_7;
  }

  v10 = [v9 isExpanded:itemCopy];
  v11 = 2;
  if (!v10)
  {
    v11 = 3;
  }

  if (v11 == action)
  {
    goto LABEL_7;
  }

  if (v10)
  {
    if ([(_UIDiffableDataSourceSectionController *)self _queryClientShouldCollapseItem:itemCopy])
    {
      [(_UIDiffableDataSourceSectionController *)self _queryClientWillCollapseItem:itemCopy];
      v14 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:v8];

      v20[0] = itemCopy;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v14 collapseItems:v15];
LABEL_20:

      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v12 = 1;
      [WeakRetained applySnapshot:v14 toSection:v8 animatingDifferences:1 completion:0];

      v9 = v14;
      goto LABEL_8;
    }
  }

  else if ([(_UIDiffableDataSourceSectionController *)self _queryClientShouldExpandItem:itemCopy])
  {
    [(_UIDiffableDataSourceSectionController *)self _queryClientWillExpandItem:itemCopy];
    v14 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:v8];

    if ([(_UIDiffableDataSourceSectionController *)self _queryClientShouldQueryForSnapshotForExpandingParentItem:itemCopy])
    {
      v16 = [v14 childSnapshotOfParent:itemCopy];
      v17 = [(_UIDiffableDataSourceSectionController *)self _queryClientSnapshotForExpandingParentItemForItem:itemCopy currentSectionSnapshot:v16];
      if (v17)
      {
        [v14 setChildrenWithSnapshot:v17 forParent:itemCopy];
      }
    }

    v19 = itemCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [v14 expandItems:v15];
    goto LABEL_20;
  }

LABEL_7:
  v12 = 0;
LABEL_8:

LABEL_10:
  return v12;
}

- (id)_extantMutableSnapshotForItem:(id)item
{
  itemCopy = item;
  dataSource = [(_UIDiffableDataSourceSectionController *)self dataSource];
  v6 = dataSource;
  v7 = 0;
  if (itemCopy && dataSource)
  {
    v8 = [dataSource sectionIdentifierForSectionContainingItemIdentifier:itemCopy];
    if (v8)
    {
      v7 = [(_UIDiffableDataSourceSectionController *)self _extantMutableSnapshotForSection:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_updateSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  snapshotCopy = snapshot;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceSectionController.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  snapshotsMap = self->_snapshotsMap;
  if (snapshotCopy)
  {
    [(NSMapTable *)snapshotsMap setObject:snapshotCopy forKey:identifierCopy];
  }

  else
  {
    [(NSMapTable *)snapshotsMap removeObjectForKey:identifierCopy];
  }
}

- (BOOL)_queryClientShouldExpandItem:(id)item
{
  itemCopy = item;
  handlers = [(_UIDiffableDataSourceSectionController *)self handlers];
  shouldExpandItemHandler = [handlers shouldExpandItemHandler];

  if (shouldExpandItemHandler)
  {
    handlers2 = [(_UIDiffableDataSourceSectionController *)self handlers];
    shouldExpandItemHandler2 = [handlers2 shouldExpandItemHandler];
    v9 = (shouldExpandItemHandler2)[2](shouldExpandItemHandler2, itemCopy);
  }

  else
  {
    delegate = [(_UIDiffableDataSourceSectionController *)self delegate];

    if (!delegate)
    {
      v9 = 1;
      goto LABEL_6;
    }

    handlers2 = [(_UIDiffableDataSourceSectionController *)self delegate];
    v9 = [handlers2 sectionController:self shouldExpandItem:itemCopy];
  }

LABEL_6:
  return v9;
}

- (void)_queryClientWillExpandItem:(id)item
{
  itemCopy = item;
  handlers = [(_UIDiffableDataSourceSectionController *)self handlers];
  willExpandItemHandler = [handlers willExpandItemHandler];

  if (willExpandItemHandler)
  {
    handlers2 = [(_UIDiffableDataSourceSectionController *)self handlers];
    willExpandItemHandler2 = [handlers2 willExpandItemHandler];
    (willExpandItemHandler2)[2](willExpandItemHandler2, itemCopy);
  }

  delegate = [(_UIDiffableDataSourceSectionController *)self delegate];

  if (delegate)
  {
    delegate2 = [(_UIDiffableDataSourceSectionController *)self delegate];
    [delegate2 sectionController:self willExpandItem:itemCopy];
  }
}

- (BOOL)_queryClientShouldCollapseItem:(id)item
{
  v35 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlers = [(_UIDiffableDataSourceSectionController *)self handlers];
  shouldCollapseItemHandler = [handlers shouldCollapseItemHandler];

  if (shouldCollapseItemHandler)
  {
    handlers2 = [(_UIDiffableDataSourceSectionController *)self handlers];
    shouldCollapseItemHandler2 = [handlers2 shouldCollapseItemHandler];
    v9 = (shouldCollapseItemHandler2)[2](shouldCollapseItemHandler2, itemCopy);

    if ((v9 & 1) == 0)
    {
LABEL_21:
      v26 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    delegate = [(_UIDiffableDataSourceSectionController *)self delegate];

    if (delegate)
    {
      delegate2 = [(_UIDiffableDataSourceSectionController *)self delegate];
      v12 = [delegate2 sectionController:self shouldCollapseItem:itemCopy];

      if (!v12)
      {
        goto LABEL_21;
      }
    }
  }

  _collectionView = [(_UIDiffableDataSourceSectionController *)self _collectionView];
  v14 = _collectionView;
  if (_collectionView && [_collectionView _isReordering])
  {
    v15 = [(_UIDiffableDataSourceSectionController *)self snapshotForItem:itemCopy];
    v16 = [v15 childSnapshotOfParent:itemCopy includingParent:0];
    if (v16)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      _reorderedItems = [v14 _reorderedItems];
      v18 = [_reorderedItems countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v28 = v15;
        v29 = v14;
        v20 = *v31;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(_reorderedItems);
            }

            originalIndexPath = [*(*(&v30 + 1) + 8 * i) originalIndexPath];
            if (originalIndexPath)
            {
              v23 = originalIndexPath;
              WeakRetained = objc_loadWeakRetained(&self->_dataSource);
              v25 = [WeakRetained itemIdentifierForIndexPath:v23];

              if (v25 && ([v16 containsItem:v25] & 1) != 0)
              {

                v26 = 0;
                goto LABEL_25;
              }
            }
          }

          v19 = [_reorderedItems countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

        v26 = 1;
LABEL_25:
        v15 = v28;
        v14 = v29;
      }

      else
      {
        v26 = 1;
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

LABEL_30:
  return v26;
}

- (void)_queryClientWillCollapseItem:(id)item
{
  itemCopy = item;
  handlers = [(_UIDiffableDataSourceSectionController *)self handlers];
  willCollapseItemHandler = [handlers willCollapseItemHandler];

  if (willCollapseItemHandler)
  {
    handlers2 = [(_UIDiffableDataSourceSectionController *)self handlers];
    willCollapseItemHandler2 = [handlers2 willCollapseItemHandler];
    (willCollapseItemHandler2)[2](willCollapseItemHandler2, itemCopy);
  }

  delegate = [(_UIDiffableDataSourceSectionController *)self delegate];

  if (delegate)
  {
    delegate2 = [(_UIDiffableDataSourceSectionController *)self delegate];
    [delegate2 sectionController:self willCollapseItem:itemCopy];
  }
}

- (BOOL)_queryClientShouldQueryForSnapshotForExpandingParentItem:(id)item
{
  itemCopy = item;
  handlers = [(_UIDiffableDataSourceSectionController *)self handlers];
  childSnapshotForExpandingParentHandler = [handlers childSnapshotForExpandingParentHandler];

  if (childSnapshotForExpandingParentHandler)
  {
    v7 = 1;
  }

  else
  {
    delegate = [(_UIDiffableDataSourceSectionController *)self delegate];

    if (delegate)
    {
      delegate2 = [(_UIDiffableDataSourceSectionController *)self delegate];
      v7 = [delegate2 sectionController:self shouldQueryForSnapshotForExpandingParentItem:itemCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_queryClientSnapshotForExpandingParentItemForItem:(id)item currentSectionSnapshot:(id)snapshot
{
  itemCopy = item;
  snapshotCopy = snapshot;
  handlers = [(_UIDiffableDataSourceSectionController *)self handlers];
  childSnapshotForExpandingParentHandler = [handlers childSnapshotForExpandingParentHandler];

  if (childSnapshotForExpandingParentHandler)
  {
    handlers2 = [(_UIDiffableDataSourceSectionController *)self handlers];
    childSnapshotForExpandingParentHandler2 = [handlers2 childSnapshotForExpandingParentHandler];
    v12 = (childSnapshotForExpandingParentHandler2)[2](childSnapshotForExpandingParentHandler2, itemCopy, snapshotCopy);
  }

  else
  {
    delegate = [(_UIDiffableDataSourceSectionController *)self delegate];

    v12 = snapshotCopy;
    if (!delegate)
    {
      goto LABEL_6;
    }

    handlers2 = [(_UIDiffableDataSourceSectionController *)self delegate];
    v12 = [handlers2 sectionController:self snapshotForExpandingParentItem:itemCopy currentSectionSnapshot:snapshotCopy];
    childSnapshotForExpandingParentHandler2 = snapshotCopy;
  }

LABEL_6:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_itemRenderers copyItems:1];
  associatedSectionIdentifiers = self->_associatedSectionIdentifiers;
  v7 = [(NSMapTable *)self->_snapshotsMap mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v4 initWithItemRenderers:v5 associatedSectionIdentifiers:associatedSectionIdentifiers snapshotsMap:v7 dataSource:WeakRetained];

  handlers = [(_UIDiffableDataSourceSectionController *)self handlers];
  [v9 setHandlers:handlers];

  return v9;
}

@end