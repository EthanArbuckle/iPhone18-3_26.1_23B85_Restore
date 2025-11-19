@interface _UIDiffableDataSourceSectionController
- (BOOL)_performDisclosureAction:(unint64_t)a3 forItem:(id)a4;
- (BOOL)_queryClientShouldCollapseItem:(id)a3;
- (BOOL)_queryClientShouldExpandItem:(id)a3;
- (BOOL)_queryClientShouldQueryForSnapshotForExpandingParentItem:(id)a3;
- (BOOL)_shouldPerformCustomCollapseExpandAnimationsForInitialSnapshot:(id)a3 finalSnapshot:(id)a4;
- (BOOL)_snapshotHasExpandOrCollapseUpdates:(id)a3;
- (_UIDiffableDataSourceSectionController)initWithDiffableDataSource:(id)a3;
- (_UIDiffableDataSourceSectionController)initWithDiffableDataSourceImpl:(id)a3;
- (_UIDiffableDataSourceSectionController)initWithItemRenderers:(id)a3;
- (_UIDiffableDataSourceSectionController)initWithItemRenderers:(id)a3 associatedSectionIdentifiers:(id)a4 snapshotsMap:(id)a5 dataSource:(id)a6;
- (_UIDiffableDataSourceSectionControllerDelegate)delegate;
- (id)_collectionView;
- (id)_extantMutableSnapshotForItem:(id)a3;
- (id)_queryClientSnapshotForExpandingParentItemForItem:(id)a3 currentSectionSnapshot:(id)a4;
- (id)_sectionIdentifierForItem:(id)a3;
- (id)_snapshotForSectionContainingItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataSource;
- (id)snapshotForItem:(id)a3;
- (id)snapshotForSection:(id)a3;
- (void)__applySnapshot:(id)a3 toSection:(id)a4 animatingDifferences:(BOOL)a5 viewPropertyAnimator:(id)a6 animationsProvider:(id)a7 isOnDiffableApplyQueue:(BOOL)a8 completion:(id)a9;
- (void)_applySnapshot:(id)a3 toSection:(id)a4 animatingDifferences:(BOOL)a5 viewPropertyAnimator:(id)a6 animationsProvider:(id)a7 isOnDiffableApplyQueue:(BOOL)a8 completion:(id)a9;
- (void)_configureCell:(id)a3 forItem:(id)a4 inSnapshot:(id)a5;
- (void)_configureForItemRenderersIfNeeded:(id)a3;
- (void)_queryClientWillCollapseItem:(id)a3;
- (void)_queryClientWillExpandItem:(id)a3;
- (void)_updatePreparedCellsForExpansionStateWithSnapshot:(id)a3;
- (void)_updateSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)setDataSource:(id)a3;
@end

@implementation _UIDiffableDataSourceSectionController

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (_UIDiffableDataSourceSectionController)initWithDiffableDataSourceImpl:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(_UIDiffableDataSourceSectionController *)self initWithItemRenderers:MEMORY[0x1E695E0F0] associatedSectionIdentifiers:v6 snapshotsMap:0 dataSource:v5];

  return v7;
}

- (_UIDiffableDataSourceSectionController)initWithDiffableDataSource:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 set];
  v7 = [v5 _diffableDataSourceImpl];

  v8 = [(_UIDiffableDataSourceSectionController *)self initWithItemRenderers:MEMORY[0x1E695E0F0] associatedSectionIdentifiers:v6 snapshotsMap:0 dataSource:v7];
  return v8;
}

- (_UIDiffableDataSourceSectionController)initWithItemRenderers:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(_UIDiffableDataSourceSectionController *)self initWithItemRenderers:v5 associatedSectionIdentifiers:v6 snapshotsMap:0 dataSource:0];

  return v7;
}

- (_UIDiffableDataSourceSectionController)initWithItemRenderers:(id)a3 associatedSectionIdentifiers:(id)a4 snapshotsMap:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = _UIDiffableDataSourceSectionController;
  v15 = [(_UIDiffableDataSourceSectionController *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemRenderers, a3);
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = [MEMORY[0x1E695DFD8] set];
    }

    associatedSectionIdentifiers = v16->_associatedSectionIdentifiers;
    v16->_associatedSectionIdentifiers = v17;

    if (v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    }

    snapshotsMap = v16->_snapshotsMap;
    v16->_snapshotsMap = v19;

    objc_storeWeak(&v16->_dataSource, v14);
  }

  if (v14)
  {
    [(_UIDiffableDataSourceSectionController *)v16 _configureForDataSource:v14];
  }

  else if ([v11 count])
  {
    [(_UIDiffableDataSourceSectionController *)v16 _configureForItemRenderersIfNeeded:v11];
  }

  return v16;
}

- (id)snapshotForSection:(id)a3
{
  v3 = [(_UIDiffableDataSourceSectionController *)self _extantMutableSnapshotForSection:a3];
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

- (id)snapshotForItem:(id)a3
{
  v3 = [(_UIDiffableDataSourceSectionController *)self _extantMutableSnapshotForItem:a3];
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

- (void)_applySnapshot:(id)a3 toSection:(id)a4 animatingDifferences:(BOOL)a5 viewPropertyAnimator:(id)a6 animationsProvider:(id)a7 isOnDiffableApplyQueue:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v12 = a5;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  [v16 _prepareForApplyToDataSource];
  if (!v12)
  {
    [(_UIDiffableDataSourceSectionController *)self _updatePreparedCellsForExpansionStateWithSnapshot:v16];
    v21 = [v16 copy];
    [(_UIDiffableDataSourceSectionController *)self __applySnapshot:v21 toSection:v17 animatingDifferences:0 viewPropertyAnimator:0 animationsProvider:0 isOnDiffableApplyQueue:v9 completion:v20];
    goto LABEL_24;
  }

  v21 = _Block_copy(v19);
  if ([(_UIDiffableDataSourceSectionController *)self _snapshotHasExpandOrCollapseUpdates:v16])
  {
    v66 = v9;
    v67 = [(_UIDiffableDataSourceSectionController *)self dataSource];
    v22 = [v67 snapshot];
    v23 = [v22 indexOfSectionIdentifier:v17];

    v65 = v23;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_16:

      v9 = v66;
      goto LABEL_17;
    }

    v24 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:v17];
    if (![(_UIDiffableDataSourceSectionController *)self _shouldPerformCustomCollapseExpandAnimationsForInitialSnapshot:v24 finalSnapshot:v16])
    {
LABEL_15:

      goto LABEL_16;
    }

    v61 = v21;
    v25 = [_UIDiffableDataSourceExpandCollapseAnimationContext alloc];
    obj = [v67 snapshot];
    v26 = obj;
    v64 = v24;
    v60 = v24;
    v27 = v16;
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
      v54 = [MEMORY[0x1E696AAA8] currentHandler];
      [v54 handleFailureInMethod:sel_initWithSectionIndex_snapshotBeforeApplication_initialSectionSnapshot_finalSectionSnapshot_ object:v53 file:@"UIDiffableDataSourceSectionController.m" lineNumber:657 description:{@"Invalid parameter not satisfying: %@", @"initialSnapshot != nil"}];

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
      v55 = [MEMORY[0x1E696AAA8] currentHandler];
      [v55 handleFailureInMethod:sel_initWithSectionIndex_snapshotBeforeApplication_initialSectionSnapshot_finalSectionSnapshot_ object:v57 file:@"UIDiffableDataSourceSectionController.m" lineNumber:658 description:{@"Invalid parameter not satisfying: %@", @"initialSectionSnapshot != nil"}];

      v25 = v57;
      if (v63)
      {
        goto LABEL_10;
      }
    }

    v58 = v25;
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:sel_initWithSectionIndex_snapshotBeforeApplication_initialSectionSnapshot_finalSectionSnapshot_ object:v58 file:@"UIDiffableDataSourceSectionController.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"finalSectionSnapshot != nil"}];

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
      objc_storeStrong(&v30->_finalSectionSnapshot, a3);
      v31 = [v60 _itemsOrderedSet];
      initialIdentifiers = v30->_initialIdentifiers;
      v30->_initialIdentifiers = v31;

      v33 = v63;
      v34 = [v63 _itemsOrderedSet];
      finalIdentifiers = v30->_finalIdentifiers;
      v30->_finalIdentifiers = v34;

      v36 = [v60 _visibleItemsOrderedSet];
      initialVisibleIdentifiers = v30->_initialVisibleIdentifiers;
      v30->_initialVisibleIdentifiers = v36;

      v38 = [v63 _visibleItemsOrderedSet];
      finalVisibleIdentifiers = v30->_finalVisibleIdentifiers;
      v30->_finalVisibleIdentifiers = v38;

      v40 = [v63 expandedItemsUpdates];
      identifiersOfExpandedItems = v30->_identifiersOfExpandedItems;
      v30->_identifiersOfExpandedItems = v40;

      v42 = [v63 collapsedItemsUpdates];
      identifiersOfCollapsedItems = v30->_identifiersOfCollapsedItems;
      v30->_identifiersOfCollapsedItems = v42;
    }

    else
    {
      v33 = v63;
    }

    goto LABEL_14;
  }

LABEL_17:
  v45 = v18;
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
  v50 = v16;
  v71 = v50;
  [(UIViewPropertyAnimator *)v45 addAnimations:v70];
  if (v20)
  {
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __162___UIDiffableDataSourceSectionController__applySnapshot_toSection_animatingDifferences_viewPropertyAnimator_animationsProvider_isOnDiffableApplyQueue_completion___block_invoke_3;
    v68[3] = &unk_1E70FFB68;
    v69 = v20;
    [(UIViewPropertyAnimator *)v45 addCompletion:v68];
  }

  v51 = [v50 copy];
  [(_UIDiffableDataSourceSectionController *)self __applySnapshot:v51 toSection:v17 animatingDifferences:1 viewPropertyAnimator:v45 animationsProvider:v21 isOnDiffableApplyQueue:v9 completion:0];

  v52 = self->_expandCollapseAnimationContext;
  self->_expandCollapseAnimationContext = 0;

LABEL_24:
}

- (void)__applySnapshot:(id)a3 toSection:(id)a4 animatingDifferences:(BOOL)a5 viewPropertyAnimator:(id)a6 animationsProvider:(id)a7 isOnDiffableApplyQueue:(BOOL)a8 completion:(id)a9
{
  v49[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained)
  {
    if (!v17)
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      [v38 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceSectionController.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"section"}];
    }

    v40 = a8;
    if (!v18 && v19)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      [v37 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceSectionController.m" lineNumber:171 description:@"An non-nil animator is required to use a custom animations provider"];
    }

    v22 = objc_loadWeakRetained(&self->_dataSource);
    [v22 addAssociatedSectionControllerIfNeeded:self];

    v23 = [(_UIDiffableDataSourceSectionController *)self associatedSectionIdentifiers];
    v24 = [v23 setByAddingObject:v17];
    associatedSectionIdentifiers = self->_associatedSectionIdentifiers;
    self->_associatedSectionIdentifiers = v24;

    v39 = [v16 copy];
    [NSMapTable setObject:"setObject:forKey:" forKey:?];
    v26 = objc_loadWeakRetained(&self->_dataSource);
    v27 = [v26 snapshot];

    v28 = v20;
    if ([v27 indexOfSectionIdentifier:v17] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = a5;
      v49[0] = v17;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
      [v27 appendSectionsWithIdentifiers:v30];
    }

    else
    {
      v30 = [v27 itemIdentifiersInSectionWithIdentifier:v17];
      if ([v30 count])
      {
        [v27 deleteItemsWithIdentifiers:v30];
      }

      v29 = a5;
    }

    v31 = [v16 visibleItems];
    [v27 appendItemsWithIdentifiers:v31 intoSectionWithIdentifier:v17];

    expandCollapseAnimationContext = self->_expandCollapseAnimationContext;
    v33 = objc_loadWeakRetained(&self->_dataSource);
    [v33 setExpandCollapseAnimationContext:expandCollapseAnimationContext];

    v34 = objc_loadWeakRetained(&self->_dataSource);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __163___UIDiffableDataSourceSectionController___applySnapshot_toSection_animatingDifferences_viewPropertyAnimator_animationsProvider_isOnDiffableApplyQueue_completion___block_invoke;
    v41[3] = &unk_1E710AE98;
    v47 = v40;
    v42 = v18;
    v43 = self;
    v44 = v27;
    v45 = v19;
    v48 = v29;
    v20 = v28;
    v46 = v28;
    v35 = v27;
    [v34 _performApplyWithoutRebasingSectionSnapshots:v41];

    v36 = objc_loadWeakRetained(&self->_dataSource);
    [v36 setExpandCollapseAnimationContext:0];
  }
}

- (void)_updatePreparedCellsForExpansionStateWithSnapshot:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIDiffableDataSourceSectionController *)self dataSource];
  v6 = v5;
  if (v5 && ([v5 isSuppressingViewUpdates] & 1) == 0)
  {
    v7 = [v6 _collectionView];
    if (v7)
    {
      v15 = v7;
      v8 = [v7 preparedCells];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 _itemIdentifier];
              if (v14)
              {
                [(_UIDiffableDataSourceSectionController *)self _configureCell:v13 forItem:v14 inSnapshot:v4];
              }
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      v7 = v15;
    }
  }
}

- (BOOL)_snapshotHasExpandOrCollapseUpdates:(id)a3
{
  v3 = a3;
  v4 = [v3 expandedItemsUpdates];
  v5 = [v4 count];

  v6 = [v3 collapsedItemsUpdates];

  v7 = [v6 count];
  return v5 > 0 || v7 > 0;
}

- (BOOL)_shouldPerformCustomCollapseExpandAnimationsForInitialSnapshot:(id)a3 finalSnapshot:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 collapsedItemsUpdates];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      if ([v5 containsItem:v12])
      {
        if ([v5 isExpanded:v12])
        {
          goto LABEL_20;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v7 = [v6 expandedItemsUpdates];
  v13 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = *v19;
LABEL_12:
    v15 = 0;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v18 + 1) + 8 * v15);
      if ([v5 containsItem:v16])
      {
        if (![v5 isExpanded:v16])
        {
          break;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
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

- (id)_snapshotForSectionContainingItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIDiffableDataSourceSectionController *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 snapshot];
    v8 = [v7 sectionIdentifierForSectionContainingItemIdentifier:v4];
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
  v2 = [(_UIDiffableDataSourceSectionController *)self dataSource];
  v3 = [v2 _collectionView];

  return v3;
}

- (_UIDiffableDataSourceSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_dataSource, v4);
  [(_UIDiffableDataSourceSectionController *)self _configureForDataSource:v4];
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIDiffableDataSourceSectionController *)self _snapshotForSectionContainingItem:v6];
  [(_UIDiffableDataSourceSectionController *)self _configureCell:v7 forItem:v6 inSnapshot:v8];
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inSnapshot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    [v11 _setItemIdentifier:v9];
    if ([v10 containsItem:v9])
    {
      v12 = [v10 levelForItem:v9];
      v13 = [v11 _layoutAttributes];
      v14 = [(UICollectionViewLayoutAttributes *)v13 _existingListAttributes];

      if (v14)
      {
        v15 = v12 <= 1 ? 1 : v12;
        v16 = v15 - 1;
        if (v14[8])
        {
          v12 = v16;
        }
      }

      [v11 _setDefaultIndentationLevel:v12];
      [v11 _setExpanded:{objc_msgSend(v10, "isExpanded:", v9)}];
      v17 = [v10 parentOfChildItem:v9];
      if (v17)
      {
        v18 = [(_UIDiffableDataSourceSectionController *)self dataSource];
        v19 = [v18 indexPathForItemIdentifier:v17];
        if (v19)
        {
          [v18 _collectionView];
          v20 = v22 = v14;
          v21 = [v20 cellForItemAtIndexPath:v19];

          v14 = v22;
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

- (void)_configureForItemRenderersIfNeeded:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v12 = v4;
    v13 = [v4 firstObject];
    objc_opt_class();
    v5 = v13;
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

      v5 = v13;
    }

    v4 = v12;
  }
}

- (id)_sectionIdentifierForItem:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(_UIDiffableDataSourceSectionController *)self dataSource];
    if (!v6)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceSectionController.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
    }

    v7 = [v6 snapshot];
    v8 = [v7 sectionIdentifierForSectionContainingItemIdentifier:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_performDisclosureAction:(unint64_t)a3 forItem:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!a3 || ([(_UIDiffableDataSourceSectionController *)self _sectionIdentifierForItem:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = 0;
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:v7];
  if (![v9 containsItem:v6])
  {
    goto LABEL_7;
  }

  v10 = [v9 isExpanded:v6];
  v11 = 2;
  if (!v10)
  {
    v11 = 3;
  }

  if (v11 == a3)
  {
    goto LABEL_7;
  }

  if (v10)
  {
    if ([(_UIDiffableDataSourceSectionController *)self _queryClientShouldCollapseItem:v6])
    {
      [(_UIDiffableDataSourceSectionController *)self _queryClientWillCollapseItem:v6];
      v14 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:v8];

      v20[0] = v6;
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

  else if ([(_UIDiffableDataSourceSectionController *)self _queryClientShouldExpandItem:v6])
  {
    [(_UIDiffableDataSourceSectionController *)self _queryClientWillExpandItem:v6];
    v14 = [(_UIDiffableDataSourceSectionController *)self snapshotForSection:v8];

    if ([(_UIDiffableDataSourceSectionController *)self _queryClientShouldQueryForSnapshotForExpandingParentItem:v6])
    {
      v16 = [v14 childSnapshotOfParent:v6];
      v17 = [(_UIDiffableDataSourceSectionController *)self _queryClientSnapshotForExpandingParentItemForItem:v6 currentSectionSnapshot:v16];
      if (v17)
      {
        [v14 setChildrenWithSnapshot:v17 forParent:v6];
      }
    }

    v19 = v6;
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

- (id)_extantMutableSnapshotForItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIDiffableDataSourceSectionController *)self dataSource];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v5 sectionIdentifierForSectionContainingItemIdentifier:v4];
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

- (void)_updateSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceSectionController.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  snapshotsMap = self->_snapshotsMap;
  if (v10)
  {
    [(NSMapTable *)snapshotsMap setObject:v10 forKey:v7];
  }

  else
  {
    [(NSMapTable *)snapshotsMap removeObjectForKey:v7];
  }
}

- (BOOL)_queryClientShouldExpandItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIDiffableDataSourceSectionController *)self handlers];
  v6 = [v5 shouldExpandItemHandler];

  if (v6)
  {
    v7 = [(_UIDiffableDataSourceSectionController *)self handlers];
    v8 = [v7 shouldExpandItemHandler];
    v9 = (v8)[2](v8, v4);
  }

  else
  {
    v10 = [(_UIDiffableDataSourceSectionController *)self delegate];

    if (!v10)
    {
      v9 = 1;
      goto LABEL_6;
    }

    v7 = [(_UIDiffableDataSourceSectionController *)self delegate];
    v9 = [v7 sectionController:self shouldExpandItem:v4];
  }

LABEL_6:
  return v9;
}

- (void)_queryClientWillExpandItem:(id)a3
{
  v10 = a3;
  v4 = [(_UIDiffableDataSourceSectionController *)self handlers];
  v5 = [v4 willExpandItemHandler];

  if (v5)
  {
    v6 = [(_UIDiffableDataSourceSectionController *)self handlers];
    v7 = [v6 willExpandItemHandler];
    (v7)[2](v7, v10);
  }

  v8 = [(_UIDiffableDataSourceSectionController *)self delegate];

  if (v8)
  {
    v9 = [(_UIDiffableDataSourceSectionController *)self delegate];
    [v9 sectionController:self willExpandItem:v10];
  }
}

- (BOOL)_queryClientShouldCollapseItem:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIDiffableDataSourceSectionController *)self handlers];
  v6 = [v5 shouldCollapseItemHandler];

  if (v6)
  {
    v7 = [(_UIDiffableDataSourceSectionController *)self handlers];
    v8 = [v7 shouldCollapseItemHandler];
    v9 = (v8)[2](v8, v4);

    if ((v9 & 1) == 0)
    {
LABEL_21:
      v26 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v10 = [(_UIDiffableDataSourceSectionController *)self delegate];

    if (v10)
    {
      v11 = [(_UIDiffableDataSourceSectionController *)self delegate];
      v12 = [v11 sectionController:self shouldCollapseItem:v4];

      if (!v12)
      {
        goto LABEL_21;
      }
    }
  }

  v13 = [(_UIDiffableDataSourceSectionController *)self _collectionView];
  v14 = v13;
  if (v13 && [v13 _isReordering])
  {
    v15 = [(_UIDiffableDataSourceSectionController *)self snapshotForItem:v4];
    v16 = [v15 childSnapshotOfParent:v4 includingParent:0];
    if (v16)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = [v14 _reorderedItems];
      v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
              objc_enumerationMutation(v17);
            }

            v22 = [*(*(&v30 + 1) + 8 * i) originalIndexPath];
            if (v22)
            {
              v23 = v22;
              WeakRetained = objc_loadWeakRetained(&self->_dataSource);
              v25 = [WeakRetained itemIdentifierForIndexPath:v23];

              if (v25 && ([v16 containsItem:v25] & 1) != 0)
              {

                v26 = 0;
                goto LABEL_25;
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
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

- (void)_queryClientWillCollapseItem:(id)a3
{
  v10 = a3;
  v4 = [(_UIDiffableDataSourceSectionController *)self handlers];
  v5 = [v4 willCollapseItemHandler];

  if (v5)
  {
    v6 = [(_UIDiffableDataSourceSectionController *)self handlers];
    v7 = [v6 willCollapseItemHandler];
    (v7)[2](v7, v10);
  }

  v8 = [(_UIDiffableDataSourceSectionController *)self delegate];

  if (v8)
  {
    v9 = [(_UIDiffableDataSourceSectionController *)self delegate];
    [v9 sectionController:self willCollapseItem:v10];
  }
}

- (BOOL)_queryClientShouldQueryForSnapshotForExpandingParentItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIDiffableDataSourceSectionController *)self handlers];
  v6 = [v5 childSnapshotForExpandingParentHandler];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(_UIDiffableDataSourceSectionController *)self delegate];

    if (v8)
    {
      v9 = [(_UIDiffableDataSourceSectionController *)self delegate];
      v7 = [v9 sectionController:self shouldQueryForSnapshotForExpandingParentItem:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_queryClientSnapshotForExpandingParentItemForItem:(id)a3 currentSectionSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIDiffableDataSourceSectionController *)self handlers];
  v9 = [v8 childSnapshotForExpandingParentHandler];

  if (v9)
  {
    v10 = [(_UIDiffableDataSourceSectionController *)self handlers];
    v11 = [v10 childSnapshotForExpandingParentHandler];
    v12 = (v11)[2](v11, v6, v7);
  }

  else
  {
    v13 = [(_UIDiffableDataSourceSectionController *)self delegate];

    v12 = v7;
    if (!v13)
    {
      goto LABEL_6;
    }

    v10 = [(_UIDiffableDataSourceSectionController *)self delegate];
    v12 = [v10 sectionController:self snapshotForExpandingParentItem:v6 currentSectionSnapshot:v7];
    v11 = v7;
  }

LABEL_6:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_itemRenderers copyItems:1];
  associatedSectionIdentifiers = self->_associatedSectionIdentifiers;
  v7 = [(NSMapTable *)self->_snapshotsMap mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v4 initWithItemRenderers:v5 associatedSectionIdentifiers:associatedSectionIdentifiers snapshotsMap:v7 dataSource:WeakRetained];

  v10 = [(_UIDiffableDataSourceSectionController *)self handlers];
  [v9 setHandlers:v10];

  return v9;
}

@end