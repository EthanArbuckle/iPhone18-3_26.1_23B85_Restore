@interface _UICollectionViewDragAndDropController
- (BOOL)_deleteShadowUpdateWithIdentifier:(id)a3;
- (BOOL)_removeMoveShadowUpdateMatchingReorderedItem:(id)a3;
- (BOOL)hasShadowUpdates;
- (BOOL)isCellInvolvedInDragOrDropAnimation:(uint64_t)a3 atIndexPath:;
- (BOOL)placeholderContext:(id)a3 didCommitInsertionWithDataSourceUpdates:(id)a4;
- (BOOL)rebaseForUpdates:(id)a3;
- (BOOL)updateWillCauseInternalInconsistency:(uint64_t)a1;
- (NSArray)items;
- (NSIndexPath)destinationIndexPath;
- (NSString)description;
- (_UICollectionViewDragAndDropController)initWithCollectionView:(id)a3;
- (id)_cellAppearanceStateForIndexPath:(id)a3;
- (id)_cellForDropCoordinatorItem:(id)a3;
- (id)_dropCoordinatorItemForDragItem:(id)a3;
- (id)_dropCoordinatorItemForIndexPath:(id)a3;
- (id)_handleForcedDruidSessionEnd;
- (id)_presentationIndexPathForIndexPath:(id)a3 allowingAppendingInserts:(BOOL)a4;
- (id)_shadowUpdateReuseIdentifierForItemItemAtIndexPath:(id)a3;
- (id)cancelReorderingForced:(_BYTE *)a3 shouldCancelUsingBatchUpdate:;
- (id)dropItem:(id)a3 intoItemAtIndexPath:(id)a4 rect:(CGRect)a5;
- (id)dropItem:(id)a3 toItemAtIndexPath:(id)a4;
- (id)dropItem:(id)a3 toPlaceholder:(id)a4;
- (id)dropItem:(id)a3 toPlaceholderInsertedAtIndexPath:(id)a4 withReuseIdentifier:(id)a5 cellUpdateHandler:(id)a6;
- (id)dropItem:(id)a3 toTarget:(id)a4;
- (id)dropToPlaceholderCellAtIndexPath:(id)a3 reuseIdentifier:(id)a4 forDragItem:(id)a5 cellUpdateHandler:(id)a6;
- (id)endReordering;
- (id)indexPathForDragAndDropInsertion;
- (id)indexPathForOriginalReorderedItem;
- (id)insertPlaceholderForItemAtIndexPath:(id)a3 forDragItem:(id)a4 reuseIdentifier:(id)a5 cellUpdateHandler:(id)a6;
- (id)placeholderContextDidDismiss:(id)a3;
- (id)reorderedItems;
- (id)sourceIndexPaths;
- (id)updateReorderingForTargetPosition:(double)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (uint64_t)canBeginReorderingSession;
- (uint64_t)effectiveDragDestinationVisualStyle;
- (uint64_t)isCellPerformingLegacyReorderingAtIndexPath:(uint64_t)a1;
- (void)_addAnimationHandlers:(id)a3 toAnimator:(id)a4;
- (void)_addDropCoordinatorItem:(id)a3;
- (void)_cleanupAfterOutstandingSessionCompletion;
- (void)_decrementSessionRefCount;
- (void)_incrementSessionRefCount;
- (void)_invokeAllCompletionHandlers;
- (void)_performCancelDropToIndexPath:(void *)a3 forDragItem:;
- (void)_removeAnyDeferredReuseCells;
- (void)_resetAllAnimationHandlers;
- (void)_resetReorderedItems;
- (void)_rollbackCurrentDropInsertion;
- (void)_updateCellAppearancesForItemsAtIndexPaths:(id)a3;
- (void)_updateCellIfNeeded:(id)a3 atIndexPath:(id)a4;
- (void)_updatePreferredDraggedCellAppearanceForSessionUpdate;
- (void)beginReorderingForItemAtIndexPath:(void *)a3 cell:;
- (void)commitReorderedItems;
- (void)defaultAnimationHandlers;
- (void)didUpdateDataSource;
- (void)didUpdateDragDelegate;
- (void)didUpdateDropDelegate;
- (void)dragDestinationController:(void *)a1 didCompleteDropAnimationForDragItem:;
- (void)dragDestinationController:(void *)a3 willBeginDropAnimationForDragItem:(void *)a4 animator:;
- (void)dragDestinationControllerSessionDidEnter:(int)a3 isNewSession:(int)a4 isResuming:;
- (void)dragSourceController:(id *)a1 didEndForItemsAtIndexPaths:;
- (void)dragSourceController:(void *)a1 didSupplyCancellationPreviewForItemAtIndexPath:;
- (void)dragSourceController:(void *)a3 didCancelLiftForItemsAtIndexPaths:;
- (void)dragSourceController:(void *)a3 didCompleteLiftForItemsAtIndexPaths:;
- (void)dragSourceController:(void *)a3 didUpdateItemsAtIndexPaths:;
- (void)dragSourceController:(void *)a3 willBeginAnimatingCancelForItemsAtIndexPaths:(void *)a4 withAnimator:;
- (void)dragSourceController:(void *)a3 willBeginLiftForItemsAtIndexPaths:;
- (void)dropToLocation:(CGPoint)a3 inContainerView:(id)a4 withTransform:(CGAffineTransform *)a5 forDragItem:(id)a6;
- (void)placeholderContextNeedsCellUpdate:(id)a3;
- (void)placeholderContextsByIndexPath;
- (void)rebaseCellAppearanceStatesForUpdates:(uint64_t)a1;
- (void)reset;
- (void)setCurrentDropInsertionShadowUpdateIdentifier:(uint64_t)a1;
- (void)setCurrentlyInsertingPlaceholderContext:(uint64_t)a1;
- (void)setDragInteractionEnabled:(uint64_t)a1;
- (void)setDropCoordinatorItemsMap:(uint64_t)a1;
- (void)setPlaceholderContextsByIndexPath:(uint64_t)a1;
- (void)updateAppearanceForCell:(void *)a3 atIndexPath:;
@end

@implementation _UICollectionViewDragAndDropController

- (void)reset
{
  v4.receiver = self;
  v4.super_class = _UICollectionViewDragAndDropController;
  [(_UICollectionViewShadowUpdatesController *)&v4 reset];
  [(_UICollectionViewDragAndDropController *)self _resetReorderedItems];
  if (self)
  {
    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  [(NSMutableSet *)placeholderContexts removeAllObjects];
  [_UICollectionViewDragAndDropController setPlaceholderContextsByIndexPath:?];
  [_UICollectionViewDragAndDropController setCurrentDropInsertionShadowUpdateIdentifier:?];
}

- (void)_resetReorderedItems
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (self)
  {
    reorderedItems = self->__reorderedItems;
  }

  else
  {
    reorderedItems = 0;
  }

  v4 = reorderedItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * i) cell];
        [v9 _setReordering:0];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if (self)
  {
    [(NSMutableArray *)self->__reorderedItems removeAllObjects];
    self->_hasReorderedItemInSession = 0;
  }

  else
  {
    [0 removeAllObjects];
  }
}

- (void)didUpdateDragDelegate
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 collectionView];
    v3 = a1[7];
    v4 = v3;
    if (v3)
    {
      if ([(_UICollectionViewDragSourceController *)v3 isActive])
      {
        v5 = *(__UILogGetCategoryCachedImpl("UICollectionView", &didUpdateDragDelegate___s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v2;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Warning: Changing the dragDelegate while a drag session is active will lead to undefined behavior. %@", &v10, 0xCu);
        }
      }

      [(_UICollectionViewDragSourceController *)v4 deactivate];
      v6 = a1[7];
      a1[7] = 0;
    }

    v7 = [v2 dragDelegate];
    if (v7 || ([v2 dragSourceDelegate], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (([v2 _dragAndDropNeededForReordering] & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = [(_UICollectionViewDragDestinationController *)_UICollectionViewDragSourceController controllerForCollectionView:v2 delegate:a1];
    v9 = a1[7];
    a1[7] = v8;

    -[_UICollectionViewDragSourceController setDragInteractionEnabled:](a1[7], [v2 dragInteractionEnabled]);
LABEL_11:
  }
}

- (void)didUpdateDropDelegate
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 collectionView];
    v3 = a1[6];
    v4 = v3;
    if (v3)
    {
      if ([(_UICollectionViewDragDestinationController *)v3 isActive])
      {
        v5 = *(__UILogGetCategoryCachedImpl("UICollectionView", &didUpdateDropDelegate___s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v2;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Warning: Changing the dropDelegate while a drag session is active will lead to undefined behavior. %@", &v10, 0xCu);
        }
      }

      [(_UICollectionViewDragDestinationController *)v4 deactivate];
      v6 = a1[6];
      a1[6] = 0;
    }

    v7 = [v2 dropDelegate];
    if (v7 || ([v2 dragDestinationDelegate], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (([v2 _dragAndDropNeededForReordering] & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = [_UICollectionViewDragDestinationController controllerForCollectionView:v2 delegate:a1];
    v9 = a1[6];
    a1[6] = v8;

LABEL_11:
  }
}

- (void)didUpdateDataSource
{
  if (a1)
  {
    if (!*(a1 + 56))
    {
      [(_UICollectionViewDragAndDropController *)a1 didUpdateDragDelegate];
    }

    if (!*(a1 + 48))
    {

      [(_UICollectionViewDragAndDropController *)a1 didUpdateDropDelegate];
    }
  }
}

- (BOOL)hasShadowUpdates
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _shadowUpdates];
  v2 = [v1 count] != 0;

  return v2;
}

- (void)commitReorderedItems
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(a1 + 168);
    v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v1);
          }

          [*(*(&v6 + 1) + 8 * v5++) commitTargetIndexPath];
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }
}

- (id)reorderedItems
{
  if (a1)
  {
    a1 = [a1[21] copy];
    v1 = vars8;
  }

  return a1;
}

- (id)indexPathForOriginalReorderedItem
{
  if (a1 && *(a1 + 64) != 3)
  {
    v2 = [*(a1 + 168) firstObject];
    v3 = v2;
    if (v2)
    {
      v1 = [v2 originalIndexPath];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (_UICollectionViewDragAndDropController)initWithCollectionView:(id)a3
{
  v17.receiver = self;
  v17.super_class = _UICollectionViewDragAndDropController;
  v3 = [(_UICollectionViewShadowUpdatesController *)&v17 initWithCollectionView:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    reorderedItems = v3->__reorderedItems;
    v3->__reorderedItems = v4;

    v6 = objc_alloc_init(_UICollectionViewSubviewCollection);
    viewsWithAppearanceUpdates = v3->_viewsWithAppearanceUpdates;
    v3->_viewsWithAppearanceUpdates = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cellAppearanceStatesByIndexPaths = v3->_cellAppearanceStatesByIndexPaths;
    v3->_cellAppearanceStatesByIndexPaths = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    placeholderContexts = v3->_placeholderContexts;
    v3->_placeholderContexts = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dropCoordinatorItems = v3->_dropCoordinatorItems;
    v3->_dropCoordinatorItems = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cellsDeferredForReuse = v3->_cellsDeferredForReuse;
    v3->_cellsDeferredForReuse = v14;

    v3->_dragInteractionEnabled = 1;
    v3->_flockSelectedItemsOnDrag = 1;
    [(_UICollectionViewDragAndDropController *)v3 reset];
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@:%p -", v5, self];

  if (self)
  {
    [v6 appendFormat:@"sessionKind = %ld;", self->_sessionKind];
    reorderedItems = self->__reorderedItems;
  }

  else
  {
    [v6 appendFormat:@"sessionKind = %ld;", 0];
    reorderedItems = 0;
  }

  [v6 appendFormat:@" reorderedItems = %@;", reorderedItems];
  v8 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  [v6 appendFormat:@" shadowUpdates=%@;", v8];

  if (self)
  {
    [v6 appendFormat:@" cellAppearanceStatesByIndexPaths=%@; ", self->_cellAppearanceStatesByIndexPaths];
    [v6 appendFormat:@" placeholderContexts = %@;", self->_placeholderContexts];
    [v6 appendFormat:@" source=%@;", self->_sourceController];
    destinationController = self->_destinationController;
  }

  else
  {
    [v6 appendFormat:@" cellAppearanceStatesByIndexPaths=%@; ", 0];
    [v6 appendFormat:@" placeholderContexts = %@;", 0];
    [v6 appendFormat:@" source=%@;", 0];
    destinationController = 0;
  }

  [v6 appendFormat:@" destination=%@", destinationController];
  [v6 appendString:@">"];

  return v6;
}

- (uint64_t)canBeginReorderingSession
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 64))
    {
      return 0;
    }

    if (![*(result + 96) count])
    {
      return 1;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v3 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      v4 = [v1 collectionView];
      v5 = 138412290;
      v6 = v4;
      _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: unable to begin reordering session due to the presence of placeholder contexts. Collection view: %@", &v5, 0xCu);
LABEL_9:

LABEL_10:
      return 0;
    }

    v2 = *(__UILogGetCategoryCachedImpl("Assert", &canBeginReorderingSession___s_category) + 8);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v3 = v2;
      v4 = [v1 collectionView];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: unable to begin reordering session due to the presence of placeholder contexts. Collection view: %@", &v5, 0xCu);
      goto LABEL_9;
    }
  }

  return result;
}

- (void)beginReorderingForItemAtIndexPath:(void *)a3 cell:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:sel_beginReorderingForItemAtIndexPath_cell_ object:a1 file:@"_UICollectionViewDragAndDropController.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

      if (v7)
      {
        goto LABEL_4;
      }
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:sel_beginReorderingForItemAtIndexPath_cell_ object:a1 file:@"_UICollectionViewDragAndDropController.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"cell != nil"}];

LABEL_4:
    v8 = [a1 collectionView];
    v9 = v8;
    v10 = *(a1 + 64);
    if (v10 == 3)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __81___UICollectionViewDragAndDropController_beginReorderingForItemAtIndexPath_cell___block_invoke;
      v27[3] = &unk_1E70F35B8;
      v14 = v8;
      v28 = v14;
      v15 = v5;
      v29 = v15;
      v16 = [v14 _performShadowUpdates:v27];
      v17 = [v16 firstObject];
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 88);
      }

      else
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        [v24 handleFailureInMethod:sel_beginReorderingForItemAtIndexPath_cell_ object:a1 file:@"_UICollectionViewDragAndDropController.m" lineNumber:216 description:{@"UICollectionView internal consistency: shadow insert for placeholder cell is nil. Collection view: %@", v14}];

        v19 = 0;
      }

      objc_storeStrong((a1 + 160), v19);
      v20 = [v14 _cellForItemAtIndexPath:v15];
      if (!v20)
      {
        [MEMORY[0x1E696AAA8] currentHandler];
        v25 = v26 = v14;
        [v25 handleFailureInMethod:sel_beginReorderingForItemAtIndexPath_cell_ object:a1 file:@"_UICollectionViewDragAndDropController.m" lineNumber:220 description:{@"UICollectionView internal consistency: unable to retrieve placeholder cell for reordering. Collection view: %@", v26}];
      }

      v21 = [[UICollectionViewReorderedItem alloc] initWithCell:v20 indexPath:v15];
      [*(a1 + 168) addObject:v21];

      goto LABEL_17;
    }

    if (v10 != 1)
    {
      if (v10)
      {
LABEL_9:
        v11 = [[UICollectionViewReorderedItem alloc] initWithCell:v7 indexPath:v5];
        [*(a1 + 168) addObject:v11];
        v12 = [v9 _diffableDataSourceImpl];
        v13 = v12;
        if (v12)
        {
          [v12 _willBeginReorderingForItemAtIndexPath:v5];
        }

LABEL_17:
        goto LABEL_18;
      }

      *(a1 + 64) = 1;
    }

    [v7 _setReordering:1];
    goto LABEL_9;
  }

LABEL_18:
}

- (void)setCurrentDropInsertionShadowUpdateIdentifier:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), 0);
  }
}

- (id)updateReorderingForTargetPosition:(double)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v37 = 0;
    goto LABEL_41;
  }

  v6 = *(a1 + 168);
  v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  if (!*(a1 + 64) || [(_UICollectionViewDragAndDropController *)a1 effectiveDragDestinationVisualStyle]== 2)
  {
    goto LABEL_40;
  }

  v7 = *(a1 + 43);
  v8 = [a1 collectionView];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v6;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  v35 = v7;
  if (!v9)
  {
    v38 = v7;
    goto LABEL_37;
  }

  v11 = v9;
  v12 = *v41;
  *&v10 = 138412546;
  v34 = v10;
  v38 = v7;
  do
  {
    v13 = 0;
    do
    {
      if (*v41 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v40 + 1) + 8 * v13);
      v15 = [v14 originalIndexPath];
      v16 = [v14 targetIndexPath];
      if (os_variant_has_internal_diagnostics())
      {
        if (!v16)
        {
          v26 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            v30 = __UICVIndexPathDescription(v15);
            *buf = v34;
            v45 = v8;
            v46 = 2112;
            v47 = v30;
            _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "UIKit internal inconsistency: expected reordered item to have a previous index path. Please file a bug against UICollectionView with reproduction steps. Collection view: %@; Original index path: %@", buf, 0x16u);
          }
        }
      }

      else if (!v16)
      {
        v27 = *(__UILogGetCategoryCachedImpl("Assert", &updateReorderingForTargetPosition____s_category) + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = v27;
          v29 = __UICVIndexPathDescription(v15);
          *buf = v34;
          v45 = v8;
          v46 = 2112;
          v47 = v29;
          _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "UIKit internal inconsistency: expected reordered item to have a previous index path. Please file a bug against UICollectionView with reproduction steps. Collection view: %@; Original index path: %@", buf, 0x16u);
        }
      }

      if (*(a1 + 64) != 2)
      {
        v18 = [v8 collectionViewLayout];
        [v18 _targetPositionForInteractiveMovementOfItemAtIndexPath:v15 withProposedTargetPosition:{a2, a3}];
        v20 = v19;
        v22 = v21;

        v23 = [v8 collectionViewLayout];
        v24 = [v23 _reorderingTargetItemIndexPathForPosition:v16 withPreviousIndexPath:{v20, v22}];

        if (!v24)
        {
          v17 = 0;
          goto LABEL_26;
        }

        v17 = [v8 _targetIndexPathForMoveOfItemFromOriginalIndexPath:v15 atCurrentIndexPath:v16 toProposedIndexPath:v24];

        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_17:
        if (v17 && v16 != v17 && ([v16 isEqual:v17] & 1) == 0)
        {
          [v37 setObject:v17 forKeyedSubscript:v16];
          [v14 setTargetIndexPath:v17];
          if (v38)
          {
            LOBYTE(v25) = 1;
          }

          else
          {
            v25 = [v14 isNOOP] ^ 1;
          }

          v38 = v25;
        }

        goto LABEL_26;
      }

      if (![(_UICollectionViewDragDestinationController *)*(a1 + 48) shouldPerformMovementForCurrentProposal])
      {
        v17 = 0;
        goto LABEL_26;
      }

      v17 = [a1 destinationIndexPath];
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_26:

      ++v13;
    }

    while (v11 != v13);
    v31 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    v11 = v31;
  }

  while (v31);
LABEL_37:

  v32 = v38 & 1;
  if (v32 != v35)
  {
    *(a1 + 43) = v32;
    [a1 _updatePreferredDraggedCellAppearanceForSessionUpdate];
  }

  v6 = v36;
LABEL_40:

LABEL_41:

  return v37;
}

- (uint64_t)effectiveDragDestinationVisualStyle
{
  if (result)
  {
    v1 = result;
    v2 = [result collectionView];
    v3 = [v2 traitCollection];
    v4 = v3;
    if (v3)
    {
      _UIRecordTraitUsage(v3, 0x13uLL);
    }

    if (*(v1 + 72) == 2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)cancelReorderingForced:(_BYTE *)a3 shouldCancelUsingBatchUpdate:
{
  if (a1)
  {
    if (!a3)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel_cancelReorderingForced_shouldCancelUsingBatchUpdate_ object:a1 file:@"_UICollectionViewDragAndDropController.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"cancelUsingBatchUpdate != NULL"}];
    }

    *a3 = 1;
    v6 = a1[8];
    switch(v6)
    {
      case 1:
        [a1 reset];
        a1[8] = 0;
        break;
      case 3:
        if (a2)
        {
          *a3 = 0;
          v8 = [a1 _handleForcedDruidSessionEnd];
          goto LABEL_15;
        }

        [a1 _rollbackCurrentDropInsertion];
        break;
      case 2:
        if (a2)
        {
          v7 = [a1 _handleForcedDruidSessionEnd];
          *a3 = 0;
LABEL_16:
          v9 = _Block_copy(v7);

          goto LABEL_17;
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __94___UICollectionViewDragAndDropController_cancelReorderingForced_shouldCancelUsingBatchUpdate___block_invoke_2;
        aBlock[3] = &unk_1E70F3590;
        aBlock[4] = a1;
        v8 = _Block_copy(aBlock);
LABEL_15:
        v7 = v8;
        goto LABEL_16;
    }

    v7 = &__block_literal_global_123;
    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)_handleForcedDruidSessionEnd
{
  v3 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [(_UICollectionViewDragAndDropController *)self reset];
  [(_UICollectionViewDragDestinationController *)self->_destinationController suspendDrops];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70___UICollectionViewDragAndDropController__handleForcedDruidSessionEnd__block_invoke_2;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = _Block_copy(v4);

  return v5;
}

- (id)endReordering
{
  if (a1)
  {
    v2 = a1[8];
    switch(v2)
    {
      case 1:
        [a1 reset];
        a1[8] = 0;
        break;
      case 3:
        [a1 _rollbackCurrentDropInsertion];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __55___UICollectionViewDragAndDropController_endReordering__block_invoke_2;
        aBlock[3] = &unk_1E70F3590;
        aBlock[4] = a1;
        v3 = _Block_copy(aBlock);
LABEL_9:
        v4 = _Block_copy(v3);

        goto LABEL_10;
      case 2:
        [a1 reset];
        break;
    }

    v3 = &__block_literal_global_63;
    goto LABEL_9;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (void)updateAppearanceForCell:(void *)a3 atIndexPath:
{
  v14 = a2;
  v5 = a3;
  if (a1 && v14 && v5)
  {
    v6 = [(_UICollectionViewSubviewCollection *)*(a1 + 104) cellAtIndexPath:v5];
    if (v6)
    {
      v7 = v6 == v14;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      [v6 _setDragAppearance:0];
      v8 = *(a1 + 104);
      if (v8)
      {
        [*(v8 + 8) removeObjectForKey:v5];
      }
    }

    v9 = [*(a1 + 112) objectForKeyedSubscript:v5];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 12);
      if (v11 == 6)
      {
        if (*(v9 + 10))
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
        }

        v12 = v14;
      }

      else
      {
        v12 = v14;
        if (v11 == 3)
        {
          if (*(v9 + 10))
          {
            v13 = 2;
          }

          else
          {
            v13 = 3;
          }
        }

        else
        {
          v13 = v11 == 1;
        }
      }

      [(_UICollectionViewSubviewCollection *)*(a1 + 104) setCell:v12 atIndexPath:v5];
      [v14 _setDragAppearance:v13];
    }
  }
}

- (BOOL)isCellInvolvedInDragOrDropAnimation:(uint64_t)a3 atIndexPath:
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 _dropCoordinatorItemForIndexPath:a3];
    v7 = v6;
    if (v6 && [v6 shouldRemainInHierarchy])
    {
      v8 = [a1 _cellForDropCoordinatorItem:v7];
      a1 = v8 == v5;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)setDragInteractionEnabled:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 40) != a2)
    {
      *(a1 + 40) = a2;
      [(_UICollectionViewDragSourceController *)*(a1 + 56) setDragInteractionEnabled:a2];
    }
  }
}

- (uint64_t)isCellPerformingLegacyReorderingAtIndexPath:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if (*(a1 + 64) == 1)
    {
      v6 = [(_UICollectionViewDragAndDropController *)a1 indexPathForDragAndDropInsertion];
      v7 = v4;
      v8 = v6;
      v9 = v8;
      if (v8 == v7)
      {
        v5 = 1;
        v11 = v8;
      }

      else
      {
        if (v8)
        {
          v10 = [v7 isEqual:v8];

          if (v10)
          {
            v5 = 1;
LABEL_18:

            goto LABEL_19;
          }
        }

        else
        {
        }

        v12 = [(_UICollectionViewDragAndDropController *)a1 indexPathForOriginalReorderedItem];
        v11 = v7;
        v13 = v12;
        v7 = v13;
        if (v13 == v11)
        {
          v5 = 1;
        }

        else if (v13)
        {
          v5 = [v11 isEqual:v13];
        }

        else
        {
          v5 = 0;
        }
      }

      goto LABEL_18;
    }

    v5 = 0;
  }

LABEL_19:

  return v5;
}

- (void)setPlaceholderContextsByIndexPath:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), 0);
  }
}

- (id)indexPathForDragAndDropInsertion
{
  if (a1)
  {
    v1 = [*(a1 + 168) firstObject];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 targetIndexPath];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)updateWillCauseInternalInconsistency:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 updateAction] == 1)
  {
    v5 = [(_UICollectionViewDragAndDropController *)a1 indexPathForOriginalReorderedItem];
    if (v5)
    {
      v6 = [(UICollectionViewUpdateItem *)v4 _indexPath];
      v7 = 1;
      if (([v6 isEqual:v5] & 1) == 0)
      {
        if (!v4 || v4[6] != 0x7FFFFFFFFFFFFFFFLL || (v8 = [v6 section], v8 != objc_msgSend(v5, "section")))
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_dropCoordinatorItemForDragItem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (self)
  {
    dropCoordinatorItems = self->_dropCoordinatorItems;
  }

  else
  {
    dropCoordinatorItems = 0;
  }

  v6 = dropCoordinatorItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 dragItem];

        if (v11 == v4)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (id)_dropCoordinatorItemForIndexPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    if (self)
    {
      dropCoordinatorItemsMap = self->_dropCoordinatorItemsMap;
      if (!dropCoordinatorItemsMap)
      {
        v6 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
        v7 = self->_dropCoordinatorItemsMap;
        self->_dropCoordinatorItemsMap = v6;

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = self->_dropCoordinatorItems;
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v18 + 1) + 8 * i);
              v14 = [v13 destinationIndexPath];
              if (v14)
              {
                [(NSMapTable *)self->_dropCoordinatorItemsMap setObject:v13 forKey:v14];
              }
            }

            v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v10);
        }

        dropCoordinatorItemsMap = self->_dropCoordinatorItemsMap;
      }

      v15 = dropCoordinatorItemsMap;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(NSMapTable *)v15 objectForKey:v4, v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_cellForDropCoordinatorItem:(id)a3
{
  v4 = a3;
  v5 = [v4 destinationIndexPath];

  if (v5)
  {
    v6 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v7 = [v4 destinationIndexPath];
    v8 = [v6 _cellForItemAtIndexPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_incrementSessionRefCount
{
  if (self)
  {
    ++self->_sessionRefCount;
  }
}

- (void)_decrementSessionRefCount
{
  if (!self)
  {
    goto LABEL_5;
  }

  sessionRefCount = self->_sessionRefCount;
  if (sessionRefCount >= 1)
  {
    self->_sessionRefCount = --sessionRefCount;
  }

  if (!sessionRefCount)
  {
LABEL_5:
    [(_UICollectionViewDragAndDropController *)self _cleanupAfterOutstandingSessionCompletion];
  }
}

- (void)_cleanupAfterOutstandingSessionCompletion
{
  if (dyld_program_sdk_at_least())
  {
    v3 = [(_UICollectionViewDragAndDropController *)self hasShadowUpdates];
    if (self)
    {
      if (self->_sessionKind == 3 && v3)
      {
        [(_UICollectionViewDragDestinationController *)self->_destinationController dropWasCancelled];
      }
    }
  }

  [(_UICollectionViewSubviewCollection *)self->_viewsWithAppearanceUpdates enumerateCellsWithEnumerator:?];
  viewsWithAppearanceUpdates = self->_viewsWithAppearanceUpdates;
  if (viewsWithAppearanceUpdates)
  {
    [(NSMutableDictionary *)viewsWithAppearanceUpdates->_cells removeAllObjects];
    [(NSMutableDictionary *)viewsWithAppearanceUpdates->_supplementaries removeAllObjects];
    [(NSMutableDictionary *)viewsWithAppearanceUpdates->_decorations removeAllObjects];
  }

  [(NSMutableDictionary *)self->_cellAppearanceStatesByIndexPaths removeAllObjects];
  [(NSMutableArray *)self->_dropCoordinatorItems removeAllObjects];
  [_UICollectionViewDragAndDropController setDropCoordinatorItemsMap:?];
  objc_storeStrong(&self->_defaultAnimationHandlers, 0);
  [(_UICollectionViewDragAndDropController *)self _removeAnyDeferredReuseCells];
  self->_sessionKind = 0;
}

- (void)setDropCoordinatorItemsMap:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), 0);
  }
}

- (void)_removeAnyDeferredReuseCells
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self)
  {
    cellsDeferredForReuse = self->_cellsDeferredForReuse;
  }

  else
  {
    cellsDeferredForReuse = 0;
  }

  v4 = cellsDeferredForReuse;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
        v11 = [v10 visibleCells];
        v12 = [v11 containsObject:v9];

        if ((v12 & 1) == 0)
        {
          v13 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
          [v13 _reuseCell:v9 notifyDidEndDisplaying:0];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if (self)
  {
    v14 = self->_cellsDeferredForReuse;
  }

  else
  {
    v14 = 0;
  }

  [(NSMutableSet *)v14 removeAllObjects];
}

- (void)rebaseCellAppearanceStatesForUpdates:(uint64_t)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [*(a1 + 112) allKeys];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [*(a1 + 112) objectForKeyedSubscript:v10];
          v12 = v3[2](v3, v10);
          if (v12)
          {
            [v4 setObject:v11 forKeyedSubscript:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v13 = *(a1 + 112);
    *(a1 + 112) = v4;
    v14 = v4;

    v15 = objc_alloc_init(_UICollectionViewSubviewCollection);
    v16 = *(a1 + 104);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79___UICollectionViewDragAndDropController_rebaseCellAppearanceStatesForUpdates___block_invoke;
    v20[3] = &unk_1E7100360;
    v22 = v3;
    v17 = v15;
    v21 = v17;
    [(_UICollectionViewSubviewCollection *)v16 enumerateAllViewsWithEnumerator:v20];
    v18 = *(a1 + 104);
    *(a1 + 104) = v17;
    v19 = v17;
  }
}

- (void)_updatePreferredDraggedCellAppearanceForSessionUpdate
{
  v30 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = !self->_hasReorderedItemInSession;
    v4 = [(_UICollectionViewDragSourceController *)&self->_sourceController->super.isa currentSessionItemCount];
    destinationController = self->_destinationController;
  }

  else
  {
    v4 = [(_UICollectionViewDragSourceController *)0 currentSessionItemCount];
    destinationController = 0;
    v3 = 1;
  }

  v6 = [(_UICollectionViewDragDestinationController *)&destinationController->super.isa supportsLocalSessionReordering];
  v7 = [(_UICollectionViewDragAndDropController *)self effectiveDragDestinationVisualStyle];
  v8 = v6 ^ 1;
  if (v7 == 2)
  {
    v8 = 1;
  }

  if (v4 > 1)
  {
    v8 = 1;
  }

  if (v3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = &OBJC_IVAR____UIKeyboardStateManager_m_shouldEnableCapsLockLanguageSwitchByDefault;
  if (self)
  {
    cellAppearanceStatesByIndexPaths = self->_cellAppearanceStatesByIndexPaths;
  }

  else
  {
    cellAppearanceStatesByIndexPaths = 0;
  }

  obj = [(NSMutableDictionary *)cellAppearanceStatesByIndexPaths keyEnumerator];
  v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        v18 = v11;
        if (self)
        {
          v19 = *(&self->super.super.isa + v11[590]);
        }

        else
        {
          v19 = 0;
        }

        v20 = [v19 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * v16)];
        v21 = v20;
        if (v20)
        {
          *(v20 + 10) = v9;
        }

        v22 = [v10 cellForItemAtIndexPath:v17];
        [(_UICollectionViewDragAndDropController *)self updateAppearanceForCell:v22 atIndexPath:v17];

        ++v16;
        v11 = v18;
      }

      while (v14 != v16);
      v23 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v14 = v23;
    }

    while (v23);
  }
}

- (void)_rollbackCurrentDropInsertion
{
  v3 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  if (self)
  {
    currentDropInsertionShadowUpdateIdentifier = self->_currentDropInsertionShadowUpdateIdentifier;
    if (currentDropInsertionShadowUpdateIdentifier)
    {
      v5 = currentDropInsertionShadowUpdateIdentifier;
      v6 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
      v7 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v5 inShadowUpdates:v6];

      if (v7)
      {
        v8 = [(_UICollectionViewShadowUpdatesController *)self updateMap];
        v9 = 64;
        if (!*(v7 + 80))
        {
          v9 = 72;
        }

        v10 = *(v7 + v9);
        v11 = *(v7 + 88);
        v12 = [v8 finalIndexPathForIndexPath:v10 startingAtUpdateWithIdentifier:v11];

        [(_UICollectionViewDragAndDropController *)self _resetReorderedItems];
        [(_UICollectionViewDragDestinationController *)self->_destinationController dropInsertionRolledBack];
        v16 = MEMORY[0x1E69E9820];
        v17 = 3221225472;
        v18 = __71___UICollectionViewDragAndDropController__rollbackCurrentDropInsertion__block_invoke;
        v19 = &unk_1E70F35B8;
        v20 = v3;
        v21 = v12;
        v13 = v12;
        v14 = [v20 _performShadowUpdates:&v16];
        [_UICollectionViewDragAndDropController setCurrentDropInsertionShadowUpdateIdentifier:?];
        v15 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates:v16];
        [v15 removeAllObjects];

        [(_UICollectionViewShadowUpdatesController *)self _regenerateUpdateMap];
      }
    }
  }
}

- (BOOL)rebaseForUpdates:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(_UICollectionViewShadowUpdatesController *)self _rebasedUpdateMapForUpdates:v4];
    if (v5 && [(_UICollectionViewShadowUpdatesController *)self _rebaseForUpdateMap:v5])
    {
      if (self && self->_rebaseShadowUpdatesOnly)
      {
        v6 = 1;
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __59___UICollectionViewDragAndDropController_rebaseForUpdates___block_invoke;
        aBlock[3] = &unk_1E70FFBD8;
        v35 = v5;
        v46 = v35;
        v8 = _Block_copy(aBlock);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v33 = v4;
        v34 = v5;
        if (self)
        {
          reorderedItems = self->__reorderedItems;
        }

        else
        {
          reorderedItems = 0;
        }

        obj = reorderedItems;
        v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v48 count:16];
        v32 = self;
        if (v10)
        {
          v11 = v10;
          v12 = *v42;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v42 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v41 + 1) + 8 * i);
              v15 = [v14 originalIndexPath];
              v16 = v8[2](v8, v15);

              if (!v16)
              {
                goto LABEL_40;
              }

              v17 = [v14 targetIndexPath];
              v18 = v8[2](v8, v17);

              [v14 setOriginalIndexPath:v16];
              if (!v18)
              {
                v19 = [v35 finalSnapshot];
                v20 = [v14 targetIndexPath];
                v21 = [v19 indexPathIsSectionAppendingInsert:v20];

                if (!v21 || ([v14 targetIndexPath], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
                {

LABEL_40:
                  v6 = 0;
                  goto LABEL_41;
                }

                v18 = v22;
              }

              [v14 setTargetIndexPath:v18];
            }

            v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v48 count:16];
            self = v32;
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        [(_UICollectionViewDragAndDropController *)self rebaseCellAppearanceStatesForUpdates:v8];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        if (self)
        {
          dropCoordinatorItems = self->_dropCoordinatorItems;
        }

        else
        {
          dropCoordinatorItems = 0;
        }

        v24 = dropCoordinatorItems;
        v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v38;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v38 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v37 + 1) + 8 * j);
              v30 = [v29 destinationIndexPath];
              if (v30)
              {
                v31 = v8[2](v8, v30);
                if (v31)
                {
                  [v29 setDestinationIndexPath:v31];
                }
              }
            }

            v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v26);
        }

        [_UICollectionViewDragAndDropController setPlaceholderContextsByIndexPath:v32];
        [(_UICollectionViewDragSourceController *)&v32->_sourceController->super.isa rebaseForUpdates:v8];
        [(_UICollectionViewDragDestinationController *)&v32->_destinationController->super.isa rebaseForUpdates:v8];
        v6 = 1;
LABEL_41:

        v4 = v33;
        v5 = v34;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)placeholderContextsByIndexPath
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[11];
    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4 = v1[11];
      v1[11] = v3;

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = v1[12];
      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v23;
        do
        {
          v8 = 0;
          do
          {
            if (*v23 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v22 + 1) + 8 * v8);
            if (v9)
            {
              v10 = *(v9 + 8);
            }

            else
            {
              v10 = 0;
            }

            v11 = v10;
            v12 = [v1 _shadowUpdates];
            v13 = [v1 _findShadowUpdateForIdentifier:v11 inShadowUpdates:v12];

            if (v13)
            {
              v14 = v13[10] ? 64 : 72;
              v15 = *(v13 + v14);

              if (v15)
              {
                v16 = v1[11];
                if (v13[10])
                {
                  v17 = 8;
                }

                else
                {
                  v17 = 9;
                }

                v18 = v13[v17];
                [v16 setObject:v9 forKeyedSubscript:v18];
              }
            }

            ++v8;
          }

          while (v6 != v8);
          v19 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
          v6 = v19;
        }

        while (v19);
      }

      v2 = v1[11];
    }

    a1 = v2;
  }

  return a1;
}

- (void)defaultAnimationHandlers
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[19];
    if (!v3)
    {
      v4 = objc_alloc_init(_UIDropAnimationHandlers);
      v5 = v2[19];
      v2[19] = v4;

      v3 = v2[19];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_updateCellAppearancesForItemsAtIndexPaths:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
        v11 = [v10 cellForItemAtIndexPath:v9];

        if (v11)
        {
          [(_UICollectionViewDragAndDropController *)self updateAppearanceForCell:v11 atIndexPath:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (BOOL)_removeMoveShadowUpdateMatchingReorderedItem:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v22 = self;
    v8 = 0;
    v9 = *v26;
    do
    {
      v10 = 0;
      v23 = v7 + v8;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        if ([v11 updateAction] == 3)
        {
          v12 = [v11 indexPathBeforeUpdate];
          v13 = [v4 originalIndexPath];
          if ([v12 isEqual:v13])
          {
            v14 = [v11 indexPathAfterUpdate];
            [v4 targetIndexPath];
            v15 = v9;
            v16 = v4;
            v18 = v17 = v5;
            v24 = [v14 isEqual:v18];

            v5 = v17;
            v4 = v16;
            v9 = v15;

            if (v24)
            {
              v19 = [(_UICollectionViewShadowUpdatesController *)v22 _shadowUpdates];
              [v19 removeObjectAtIndex:v8];

              v20 = 1;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        ++v8;
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v8 = v23;
    }

    while (v7);
  }

  v20 = 0;
LABEL_14:

  return v20;
}

- (id)_shadowUpdateReuseIdentifierForItemItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UICollectionViewDragAndDropController *)self placeholderContextsByIndexPath];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6[2];
LABEL_3:
    v8 = v7;
    goto LABEL_12;
  }

  if (self)
  {
    v9 = self->_currentlyInsertingPlaceholderContext;
    if (v9)
    {
      v10 = v9;
      currentlyInsertingPlaceholderContext = self->_currentlyInsertingPlaceholderContext;
      v12 = currentlyInsertingPlaceholderContext ? currentlyInsertingPlaceholderContext->_originalInsertionIndexPath : 0;
      v13 = currentlyInsertingPlaceholderContext;
      v14 = [(NSIndexPath *)v12 isEqual:v4];

      if (v14)
      {
        v7 = self->_currentlyInsertingPlaceholderContext;
        if (v7)
        {
          v7 = v7->_reuseIdentifier;
        }

        goto LABEL_3;
      }
    }
  }

  v17.receiver = self;
  v17.super_class = _UICollectionViewDragAndDropController;
  v8 = [(_UICollectionViewShadowUpdatesController *)&v17 _shadowUpdateReuseIdentifierForItemItemAtIndexPath:v4];
LABEL_12:
  v15 = v8;

  return v15;
}

- (void)_updateCellIfNeeded:(id)a3 atIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14 && v6)
  {
    if (self && (currentlyInsertingPlaceholderContext = self->_currentlyInsertingPlaceholderContext) != 0 && (v8 = currentlyInsertingPlaceholderContext, v9 = [v8[3] isEqual:v6], v8, v9) && (v10 = self->_currentlyInsertingPlaceholderContext) != 0)
    {
      p_isa = &v10->super.isa;
    }

    else
    {
      v12 = [(_UICollectionViewDragAndDropController *)self placeholderContextsByIndexPath];
      p_isa = [v12 objectForKeyedSubscript:v6];

      if (!p_isa)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = p_isa[4];
    if (v13)
    {
      (*(v13 + 16))(v13, v14);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (BOOL)_deleteShadowUpdateWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  v6 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v4 inShadowUpdates:v5];

  if (v6 && (-[_UICollectionViewShadowUpdatesController _shadowUpdates](self, "_shadowUpdates"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 indexOfObjectIdenticalTo:v6], v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    [v10 removeObjectAtIndex:v8];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_cellAppearanceStateForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:v4];
  if (v5)
  {
    if (self)
    {
      cellAppearanceStatesByIndexPaths = self->_cellAppearanceStatesByIndexPaths;
    }

    else
    {
      cellAppearanceStatesByIndexPaths = 0;
    }

    v7 = [(NSMutableDictionary *)cellAppearanceStatesByIndexPaths objectForKeyedSubscript:v4];
    if (!v7)
    {
      v7 = objc_alloc_init(_UICollectionViewCellAppearanceState);
      if (self)
      {
        v8 = self->_cellAppearanceStatesByIndexPaths;
      }

      else
      {
        v8 = 0;
      }

      [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addDropCoordinatorItem:(id)a3
{
  v3 = self;
  if (self)
  {
    self = self->_dropCoordinatorItems;
  }

  [(_UICollectionViewDragAndDropController *)self addObject:a3];

  [_UICollectionViewDragAndDropController setDropCoordinatorItemsMap:v3];
}

- (id)_presentationIndexPathForIndexPath:(id)a3 allowingAppendingInserts:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v6];
  if (!v7 && v4)
  {
    v8 = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    v9 = [v8 initialSnapshot];
    v10 = [v9 indexPathIsSectionAppendingInsert:v6];

    if (v10)
    {
      v11 = [(_UICollectionViewShadowUpdatesController *)self updateMap];
      v12 = [v11 finalSnapshot];
      v7 = [v12 indexPathForAppendingInsertInSection:{objc_msgSend(v6, "section")}];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (void)_addAnimationHandlers:(id)a3 toAnimator:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 alongsideAnimationHandlers];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addAnimations:*(*(&v21 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v5 completionHandlers];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v6 addCompletion:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)_invokeAllCompletionHandlers
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (self)
  {
    dropCoordinatorItems = self->_dropCoordinatorItems;
  }

  else
  {
    dropCoordinatorItems = 0;
  }

  v4 = dropCoordinatorItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v24 + 1) + 8 * i) animationHandlers];
        [v9 invokeAllCompletionHandlers];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (self)
  {
    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  v11 = placeholderContexts;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if (v16)
        {
          v17 = *(v16 + 40);
        }

        else
        {
          v17 = 0;
        }

        [v17 invokeAllCompletionHandlers];
        ++v15;
      }

      while (v13 != v15);
      v18 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      v13 = v18;
    }

    while (v18);
  }

  v19 = [(_UICollectionViewDragAndDropController *)self defaultAnimationHandlers];
  [v19 invokeAllCompletionHandlers];
}

- (void)_resetAllAnimationHandlers
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (self)
  {
    dropCoordinatorItems = self->_dropCoordinatorItems;
  }

  else
  {
    dropCoordinatorItems = 0;
  }

  v4 = dropCoordinatorItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v24 + 1) + 8 * i) animationHandlers];
        [v9 resetAllAnimationHandlers];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (self)
  {
    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  v11 = placeholderContexts;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if (v16)
        {
          v17 = *(v16 + 40);
        }

        else
        {
          v17 = 0;
        }

        [v17 resetAllAnimationHandlers];
        ++v15;
      }

      while (v13 != v15);
      v18 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      v13 = v18;
    }

    while (v18);
  }

  v19 = [(_UICollectionViewDragAndDropController *)self defaultAnimationHandlers];
  [v19 resetAllAnimationHandlers];
}

- (void)dragSourceController:(void *)a3 willBeginLiftForItemsAtIndexPaths:
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1)
  {
    [a1 _incrementSessionRefCount];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [a1 _cellAppearanceStateForIndexPath:{v11, v14}];
          v13 = v12;
          if (v12 && (v12[8] & 1) == 0)
          {
            [v12 setDragState:1];
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [a1 _updateCellAppearancesForItemsAtIndexPaths:v5];
  }
}

- (void)dragSourceController:(void *)a3 didCompleteLiftForItemsAtIndexPaths:
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [a1 _cellAppearanceStateForIndexPath:{v11, v14}];
          v13 = v12;
          if (v12 && (v12[8] & 1) == 0)
          {
            [v12 setDragState:3];
            [v13 setHasLifted:1];
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [a1 _updateCellAppearancesForItemsAtIndexPaths:v5];
    [a1 _decrementSessionRefCount];
  }
}

- (void)dragSourceController:(void *)a3 didCancelLiftForItemsAtIndexPaths:
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [a1 _cellAppearanceStateForIndexPath:{v11, v14}];
          v13 = v12;
          if (v12)
          {
            [v12 setDragState:8];
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [a1 _updateCellAppearancesForItemsAtIndexPaths:v5];
    [a1 _decrementSessionRefCount];
  }
}

- (void)dragSourceController:(void *)a3 didUpdateItemsAtIndexPaths:
{
  v4 = a3;
  if (a1)
  {
    v6 = v4;
    if ([a1 isDragDestinationInteractivelyReordering])
    {
      v5 = [v6 count];
      if (v5 >= 2)
      {
        [(_UICollectionViewDragDestinationController *)a1[6] dragSourceSelectedItemCountDidChangeWithCount:v5];
      }
    }

    [a1 _updateCellAppearancesForItemsAtIndexPaths:v6];
    v4 = v6;
  }
}

- (void)dragSourceController:(id *)a1 didEndForItemsAtIndexPaths:
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1[14] keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  v6 = *v12;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      v9 = [a1[14] objectForKeyedSubscript:v8];
      v10 = v9;
      if (!v9)
      {
        goto LABEL_14;
      }

      if ([v9 dragState] != 4 && objc_msgSend(v10, "dragState") != 5 && objc_msgSend(v10, "dragState") != 7 && objc_msgSend(v10, "dragState") != 6 && objc_msgSend(v10, "dragState") != 8)
      {
        [v10 setDragState:8];
LABEL_14:
        [v2 addObject:v8];
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);
LABEL_17:

  if ([v2 count])
  {
    [a1 _updateCellAppearancesForItemsAtIndexPaths:v2];
  }

  [a1 _decrementSessionRefCount];
}

- (void)dragSourceController:(void *)a1 didSupplyCancellationPreviewForItemAtIndexPath:
{
  if (a1)
  {
    v1 = [a1 _cellAppearanceStateForIndexPath:?];
    if (v1)
    {
      v2 = v1;
      [v1 setHasBeganCancelling:1];
      v1 = v2;
    }
  }
}

- (void)dragSourceController:(void *)a3 willBeginAnimatingCancelForItemsAtIndexPaths:(void *)a4 withAnimator:
{
  v42 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v6 = a4;
  if (!a1)
  {
    goto LABEL_25;
  }

  [a1 _incrementSessionRefCount];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [a1[14] keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = *v37;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v37 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v36 + 1) + 8 * i);
      v14 = [a1[14] objectForKeyedSubscript:v13];
      v15 = v14;
      if (v14)
      {
        if (v14[9])
        {
          goto LABEL_11;
        }

        [v14 setDragState:7];
      }

      [v7 addObject:v13];
LABEL_11:
    }

    v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v10);
LABEL_13:

  if ([v7 count])
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __121___UICollectionViewDragAndDropController_dragSourceController_willBeginAnimatingCancelForItemsAtIndexPaths_withAnimator___block_invoke;
    v34[3] = &unk_1E70F35B8;
    v34[4] = a1;
    v35 = v7;
    [v6 addAnimations:v34];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v24;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [a1 _cellAppearanceStateForIndexPath:*(*(&v30 + 1) + 8 * j)];
        v22 = v21;
        if (v21)
        {
          [v21 setDragState:6];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v18);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __121___UICollectionViewDragAndDropController_dragSourceController_willBeginAnimatingCancelForItemsAtIndexPaths_withAnimator___block_invoke_2;
  v28[3] = &unk_1E70F35B8;
  v28[4] = a1;
  v23 = v16;
  v29 = v23;
  [v6 addAnimations:v28];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __121___UICollectionViewDragAndDropController_dragSourceController_willBeginAnimatingCancelForItemsAtIndexPaths_withAnimator___block_invoke_3;
  v25[3] = &unk_1E71003B0;
  v26 = v23;
  v27 = a1;
  [v6 addCompletion:v25];

LABEL_25:
}

- (void)dragDestinationController:(void *)a3 willBeginDropAnimationForDragItem:(void *)a4 animator:
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (a1)
  {
    [a1 _incrementSessionRefCount];
    v8 = [a1 _dropCoordinatorItemForDragItem:v6];
    v9 = v8;
    if (!v8)
    {
LABEL_27:

      goto LABEL_28;
    }

    v10 = [v8 destinationIndexPath];
    if (!v10)
    {
LABEL_13:
      v17 = [v9 animationHandlers];
      [a1 _addAnimationHandlers:v17 toAnimator:v7];

      v18 = [v9 animationHandlers];
      [v18 resetAllAnimationHandlers];

      v19 = v6;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = a1[12];
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v21)
      {
        v26 = v10;
        v27 = v7;
        v22 = *v29;
        while (2)
        {
          for (i = 0; i != v21; i = (i + 1))
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v28 + 1) + 8 * i);
            v25 = [v24 dragItem];

            if (v25 == v19)
            {
              v21 = v24;
              goto LABEL_23;
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

LABEL_23:
        v10 = v26;
        v7 = v27;
      }

      if (v21)
      {
        [a1 _addAnimationHandlers:v21[5] toAnimator:v7];
        [v21[5] resetAllAnimationHandlers];
      }

      goto LABEL_27;
    }

    v11 = [a1 indexPathBeforeShadowUpdates:v10];
    if (v11)
    {
      v12 = [a1 _cellAppearanceStateForIndexPath:v10];
      v13 = v12;
      if (!v12 || [v12 dragState] == 5)
      {
        goto LABEL_12;
      }

      [v13 setDragState:4];
      v32 = v10;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      [a1 _updateCellAppearancesForItemsAtIndexPaths:v14];
    }

    else
    {
      v15 = [a1 collectionView];
      v13 = [v15 _cellForItemAtIndexPath:v10];

      v16 = [a1 _cellAppearanceStateForIndexPath:v10];
      v14 = v16;
      if (v16)
      {
        [v16 setDragState:4];
      }

      [(_UICollectionViewDragAndDropController *)a1 updateAppearanceForCell:v13 atIndexPath:v10];
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_28:
}

- (void)dragDestinationController:(void *)a1 didCompleteDropAnimationForDragItem:
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 _dropCoordinatorItemForDragItem:?];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 destinationIndexPath];
      if (v4)
      {
        v5 = [a1 indexPathBeforeShadowUpdates:v4];
        if (v5)
        {
          v6 = [a1 _cellAppearanceStateForIndexPath:v4];
          v7 = v6;
          if (v6)
          {
            [v6 setDragState:7];
          }

          v12[0] = v4;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
          [a1 _updateCellAppearancesForItemsAtIndexPaths:v8];
        }

        else
        {
          v9 = [a1 collectionView];
          v8 = [v9 _cellForItemAtIndexPath:v4];

          v10 = [a1 _cellAppearanceStateForIndexPath:v4];
          v11 = v10;
          if (v10)
          {
            [v10 setDragState:7];
          }

          [(_UICollectionViewDragAndDropController *)a1 updateAppearanceForCell:v8 atIndexPath:v4];
        }
      }
    }

    [a1 _decrementSessionRefCount];
  }
}

- (void)dragDestinationControllerSessionDidEnter:(int)a3 isNewSession:(int)a4 isResuming:
{
  v12 = a2;
  if (a1)
  {
    if ((a3 & 1) != 0 || a4)
    {
      v7 = &OBJC_IVAR____UIKeyboardStateManager_m_shouldEnableCapsLockLanguageSwitchByDefault;
      if ((a4 & 1) == 0 && a1[8])
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [a1 collectionView];
        [v10 handleFailureInMethod:sel_dragDestinationControllerSessionDidEnter_isNewSession_isResuming_ object:a1 file:@"_UICollectionViewDragAndDropController.m" lineNumber:1272 description:{@"UICollectionView internal inconsistency: attempted to enter new reordering session whilst an existing session was active. Collection view: %@", v11}];

        v7 = &OBJC_IVAR____UIKeyboardStateManager_m_shouldEnableCapsLockLanguageSwitchByDefault;
      }

      v8 = [(_UICollectionViewDragDestinationController *)v12 supportsLocalSessionReordering];
      v9 = 2;
      if (!v8)
      {
        v9 = 3;
      }

      *(a1 + v7[597]) = v9;
      if (a3)
      {
        [a1 _incrementSessionRefCount];
      }
    }

    [a1 _updatePreferredDraggedCellAppearanceForSessionUpdate];
  }
}

- (NSIndexPath)destinationIndexPath
{
  p_isa = &self->_destinationController->super.isa;
  if (p_isa)
  {
    p_isa = [(_UICollectionViewDragDestinationController *)p_isa currentIndexPath];
    v2 = vars8;
  }

  return p_isa;
}

- (id)sourceIndexPaths
{
  if (a1)
  {
    v1 = *(a1 + 56);
    v2 = MEMORY[0x1E695E0F0];
    if (v1)
    {
      v3 = [(_UICollectionViewDragSourceController *)v1 dragFromIndexPaths];
      v4 = [v3 copy];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)numberOfSections
{
  v2 = [(_UICollectionViewShadowUpdatesController *)self updateMap];
  v3 = [v2 finalSnapshot];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(_UICollectionViewShadowUpdatesController *)self updateMap];
  v5 = [v4 finalSnapshot];
  v6 = [v5 numberOfItemsInSection:a3];

  return v6;
}

- (id)insertPlaceholderForItemAtIndexPath:(id)a3 forDragItem:(id)a4 reuseIdentifier:(id)a5 cellUpdateHandler:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1331 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v38 = [MEMORY[0x1E696AAA8] currentHandler];
  [v38 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1332 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

LABEL_3:
  v16 = [_UICollectionViewPlaceholderContext alloc];
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = self;
  v21 = v15;
  if (v16)
  {
    v42.receiver = v16;
    v42.super_class = _UICollectionViewPlaceholderContext;
    v22 = [(_UICollectionViewDragAndDropController *)&v42 init];
    if (v22)
    {
      v23 = [v21 copy];
      shadowUpdates = v22->super.__shadowUpdates;
      v22->super.__shadowUpdates = v23;

      objc_storeStrong(&v22->super._updateMap, a3);
      objc_storeStrong(&v22->_sourceController, a4);
      objc_storeStrong(&v22->super._initialSnapshot, a5);
      objc_storeWeak(&v22->_destinationController, v20);
      v25 = objc_alloc_init(_UIDropAnimationHandlers);
      v26 = *&v22->_dragInteractionEnabled;
      *&v22->_dragInteractionEnabled = v25;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v20)
  {
    placeholderContexts = v20->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  [(NSMutableSet *)placeholderContexts addObject:v22];
  v28 = [(_UICollectionViewShadowUpdatesController *)v20 collectionView];
  [(_UICollectionViewDragAndDropController *)v20 setCurrentlyInsertingPlaceholderContext:v22];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __124___UICollectionViewDragAndDropController_insertPlaceholderForItemAtIndexPath_forDragItem_reuseIdentifier_cellUpdateHandler___block_invoke;
  v39[3] = &unk_1E70F35B8;
  v40 = v28;
  v41 = v17;
  v29 = v17;
  v30 = v28;
  v31 = [v30 _performShadowUpdates:v39];
  [(_UICollectionViewDragAndDropController *)v20 setCurrentlyInsertingPlaceholderContext:?];
  [_UICollectionViewDragAndDropController setPlaceholderContextsByIndexPath:v20];
  v32 = [v31 firstObject];
  v33 = v32;
  if (v32)
  {
    v34 = *(v32 + 88);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  if (v22)
  {
    objc_storeStrong(&v22->super._collectionView, v34);
  }

  return v22;
}

- (void)setCurrentlyInsertingPlaceholderContext:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

- (id)placeholderContextDidDismiss:(id)a3
{
  v4 = a3;
  if (self)
  {
    if (![(NSMutableSet *)self->_placeholderContexts containsObject:v4])
    {
      v16 = 0;
      goto LABEL_15;
    }

    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    v25 = [0 containsObject:v4];
    placeholderContexts = 0;
    v16 = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  [(NSMutableSet *)placeholderContexts removeObject:v4];
  [_UICollectionViewDragAndDropController setPlaceholderContextsByIndexPath:?];
  if (v4)
  {
    v6 = v4[1];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  v9 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v7 inShadowUpdates:v8];

  if (v9)
  {
    v10 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v11 = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    v12 = 64;
    if (!*(v9 + 80))
    {
      v12 = 72;
    }

    v13 = *(v9 + v12);
    v14 = *(v9 + 88);
    v15 = [v11 finalIndexPathForIndexPath:v13 startingAtUpdateWithIdentifier:v14];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __71___UICollectionViewDragAndDropController_placeholderContextDidDismiss___block_invoke;
    v29 = &unk_1E70F35B8;
    v30 = v10;
    v16 = v15;
    v31 = v16;
    v17 = v10;
    v18 = [v17 _performShadowUpdates:&v26];
    v19 = [v18 firstObject];
    v20 = v19;
    if (v19)
    {
      v21 = *(v19 + 88);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    [(_UICollectionViewDragAndDropController *)self _deleteShadowUpdateWithIdentifier:v22];

    [(_UICollectionViewShadowUpdatesController *)self _regenerateUpdateMap];
    v23 = *(v9 + 88);
    [(_UICollectionViewShadowUpdatesController *)self _pruneAndRebaseShadowUpdatesForShadowInsertWithIdentifier:v23];

    [(_UICollectionViewShadowUpdatesController *)self _regenerateUpdateMap];
  }

  else
  {
    v16 = 0;
  }

LABEL_15:

  return v16;
}

- (void)placeholderContextNeedsCellUpdate:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self)
  {
    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  if ([(NSMutableSet *)placeholderContexts containsObject:v5])
  {
    if (v5)
    {
      v7 = v5[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    v10 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v8 inShadowUpdates:v9];

    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = 8;
    if (!v10[10])
    {
      v12 = 9;
    }

    v13 = v10[v12];
    v14 = [v11 _cellForItemAtIndexPath:v13];

    if (v14)
    {
      v15 = dyld_program_sdk_at_least();
      v16 = [v14 reuseIdentifier];
      v17 = v16;
      if (v15)
      {
        if (v5)
        {
          v18 = v5[2];
        }

        else
        {
          v18 = 0;
        }

        v19 = [v16 isEqualToString:v18];

        if ((v19 & 1) == 0)
        {
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = [v14 reuseIdentifier];
          v22 = v21;
          if (v5)
          {
            v23 = v5[2];
          }

          else
          {
            v23 = 0;
          }

          [v20 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1402 description:{@"Error: cell reuseIdentifier (%@) does not match expected placeholder context reuseIdentifier (%@). Please file a bug against UICollectionView.", v21, v23}];

          if (!v5)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (v5)
        {
          v24 = v5[2];
        }

        else
        {
          v24 = 0;
        }

        v25 = [v16 isEqualToString:v24];

        if ((v25 & 1) == 0)
        {
          v27 = *(__UILogGetCategoryCachedImpl("Assert", &placeholderContextNeedsCellUpdate____s_category) + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = [v14 reuseIdentifier];
            v29 = v28;
            if (v5)
            {
              v30 = v5[2];
            }

            else
            {
              v30 = 0;
            }

            *buf = 138412546;
            v32 = v28;
            v33 = 2112;
            v34 = v30;
            _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Error: cell reuseIdentifier (%@) does not match expected placeholder context reuseIdentifier (%@). Please file a bug against UICollectionView.", buf, 0x16u);
          }

          if (!v5)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }
      }

      if (v5)
      {
LABEL_22:
        v26 = v5[4];
        if (v26)
        {
          (*(v26 + 16))(v26, v14);
        }
      }
    }

LABEL_24:

LABEL_25:
  }
}

- (BOOL)placeholderContext:(id)a3 didCommitInsertionWithDataSourceUpdates:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self)
  {
    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  v10 = [(NSMutableSet *)placeholderContexts containsObject:v7];
  if (v10)
  {
    [(_UICollectionViewDragAndDropController *)self placeholderContextNeedsCellUpdate:v7];
    if (v7)
    {
      v11 = v7[1];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    v14 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v12 inShadowUpdates:v13];

    v15 = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    v16 = [(UICollectionViewUpdateItem *)v14 _indexPath];
    if (v14)
    {
      v17 = v14[11];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = [v15 initialIndexPathForIndexPath:v16 beforeUpdateWithIdentifier:v18];

    if (!v19)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1419 description:@"UICollectionView internal inconsistency exception: could not locate placeholder insertion location; this should never be nil."];
    }

    v20 = [(_UICollectionViewDragAndDropController *)self placeholderContextDidDismiss:v7];
    v21 = [[UICollectionViewUpdateItem alloc] initWithAction:0 forIndexPath:v20];
    v22 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v23 = v22;
    if (self)
    {
      rebaseShadowUpdatesOnly = self->_rebaseShadowUpdatesOnly;
      self->_rebaseShadowUpdatesOnly = 1;
    }

    else
    {
      rebaseShadowUpdatesOnly = 0;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __101___UICollectionViewDragAndDropController_placeholderContext_didCommitInsertionWithDataSourceUpdates___block_invoke;
    v30[3] = &unk_1E7100388;
    v31 = v22;
    v32 = v19;
    v33 = v21;
    v34 = v8;
    v25 = v21;
    v26 = v19;
    v27 = v23;
    [v27 _performInternalBatchUpdates:v30];
    if (self)
    {
      self->_rebaseShadowUpdatesOnly = rebaseShadowUpdatesOnly;
    }
  }

  return v10;
}

- (void)_performCancelDropToIndexPath:(void *)a3 forDragItem:
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDestinationIndexPath:v6 dragItem:v5];

    [(_UICollectionViewDropCoordinatorItem *)v7 setShouldRemainInHierarchy:1];
    [a1 _addDropCoordinatorItem:v7];
  }
}

- (NSArray)items
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(_UICollectionViewDragDestinationController *)&self->_destinationController->super.isa currentDropSession];
  v5 = [v4 items];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(_UICollectionViewDragSourceController *)&self->_sourceController->super.isa indexPathForDragItem:v10];
        v12 = [_UICollectionViewDropItem alloc];
        [v10 _visibleDropItemSize];
        v13 = [(_UICollectionViewDropItem *)v12 initWithDragItem:v10 previewSize:v11 sourceIndexPath:?];
        [v3 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)dropItem:(id)a3 toPlaceholderInsertedAtIndexPath:(id)a4 withReuseIdentifier:(id)a5 cellUpdateHandler:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1475 description:@"Please pass an object of type UIDragItem."];
  }

  v15 = [(UICollectionViewPlaceholder *)[UICollectionViewDropPlaceholder alloc] initWithInsertionIndexPath:v14 reuseIdentifier:v13];

  [(UICollectionViewPlaceholder *)v15 setCellUpdateHandler:v12];
  v16 = [(_UICollectionViewDragAndDropController *)self dropItem:v11 toPlaceholder:v15];

  return v16;
}

- (id)dropItem:(id)a3 toPlaceholder:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1483 description:@"Please pass an object of type UIDragItem."];
  }

  v9 = [v8 insertionIndexPath];
  v10 = [(_UICollectionViewDragAndDropController *)self _presentationIndexPathForIndexPath:v9 allowingAppendingInserts:1];

  v11 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDestinationIndexPath:v10 dragItem:v7 placeholderConfiguration:v8];
  [(_UICollectionViewDragAndDropController *)self _addDropCoordinatorItem:v11];
  v12 = [v8 cellReuseIdentifier];
  v13 = [v8 cellUpdateHandler];

  v14 = [(_UICollectionViewDragAndDropController *)self insertPlaceholderForItemAtIndexPath:v10 forDragItem:v7 reuseIdentifier:v12 cellUpdateHandler:v13];

  return v14;
}

- (id)dropItem:(id)a3 toItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1495 description:@"Please pass an object of type UIDragItem."];
  }

  v9 = [(_UICollectionViewDragAndDropController *)self _presentationIndexPathForIndexPath:v8 allowingAppendingInserts:1];
  v10 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDestinationIndexPath:v9 dragItem:v7];
  [(_UICollectionViewDragAndDropController *)self _addDropCoordinatorItem:v10];

  return v10;
}

- (id)dropItem:(id)a3 intoItemAtIndexPath:(id)a4 rect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1504 description:@"Please pass an object of type UIDragItem."];
  }

  v14 = [(_UICollectionViewDragAndDropController *)self _presentationIndexPathForIndexPath:v13 allowingAppendingInserts:1];
  v15 = [(_UICollectionViewDragAndDropController *)self defaultAnimationHandlers];
  v16 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v17 = [v16 _cellForItemAtIndexPath:v14];

  if (v17)
  {
    [v12 _visibleDropItemSize];
    v19 = v18;
    v21 = v20;
    if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&height & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      [v17 bounds];
      x = v22;
      y = v23;
      width = v24;
      height = v25;
    }

    v26 = x + width * 0.5;
    v27 = y + height * 0.5;
    v28 = *(MEMORY[0x1E695EFD0] + 16);
    *&v38.a = *MEMORY[0x1E695EFD0];
    *&v38.c = v28;
    *&v38.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (v19 == *MEMORY[0x1E695F060] && v21 == *(MEMORY[0x1E695F060] + 8))
    {
      CGAffineTransformMakeScale(&v38, 0.01, 0.01);
    }

    else
    {
      _UIScaleTransformForAspectFitOrFillOfSizeInTargetSize(1, &v38, v19, v21, width, height);
    }

    v30 = [UIDragPreviewTarget alloc];
    v37 = v38;
    v31 = [(UIPreviewTarget *)v30 initWithContainer:v17 center:&v37 transform:v26, v27];
    v32 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDragItem:v12 target:v31];
    [(_UICollectionViewDropCoordinatorItem *)v32 setDestinationIndexPath:v14];
    [(_UICollectionViewDropCoordinatorItem *)v32 setShouldRemainInHierarchy:1];
    [(_UICollectionViewDragAndDropController *)self _addDropCoordinatorItem:v32];

    v33 = [(_UICollectionViewDragAndDropController *)self _cellAppearanceStateForIndexPath:v14];
    v34 = v33;
    if (v33)
    {
      [v33 setDragState:5];
    }

    v15 = v32;
  }

  return v15;
}

- (id)dropItem:(id)a3 toTarget:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1537 description:@"Please pass an object of type UIDragItem."];
  }

  v9 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDragItem:v7 target:v8];

  [(_UICollectionViewDragAndDropController *)self _addDropCoordinatorItem:v9];

  return v9;
}

- (id)dropToPlaceholderCellAtIndexPath:(id)a3 reuseIdentifier:(id)a4 forDragItem:(id)a5 cellUpdateHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1550 description:@"Please pass an object of type UIDragItem."];
  }

  v15 = [(_UICollectionViewDragAndDropController *)self dropItem:v13 toPlaceholderInsertedAtIndexPath:v11 withReuseIdentifier:v12 cellUpdateHandler:v14];

  return v15;
}

- (void)dropToLocation:(CGPoint)a3 inContainerView:(id)a4 withTransform:(CGAffineTransform *)a5 forDragItem:(id)a6
{
  y = a3.y;
  x = a3.x;
  v12 = a6;
  v13 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1563 description:@"Please pass an object of type UIDragItem."];
  }

  v14 = [UIDragPreviewTarget alloc];
  v15 = *&a5->c;
  v19[0] = *&a5->a;
  v19[1] = v15;
  v19[2] = *&a5->tx;
  v16 = [(UIPreviewTarget *)v14 initWithContainer:v13 center:v19 transform:x, y];

  v17 = [(_UICollectionViewDragAndDropController *)self dropItem:v12 toTarget:v16];
}

@end