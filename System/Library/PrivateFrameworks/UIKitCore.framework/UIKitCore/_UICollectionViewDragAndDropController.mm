@interface _UICollectionViewDragAndDropController
- (BOOL)_deleteShadowUpdateWithIdentifier:(id)identifier;
- (BOOL)_removeMoveShadowUpdateMatchingReorderedItem:(id)item;
- (BOOL)hasShadowUpdates;
- (BOOL)isCellInvolvedInDragOrDropAnimation:(uint64_t)animation atIndexPath:;
- (BOOL)placeholderContext:(id)context didCommitInsertionWithDataSourceUpdates:(id)updates;
- (BOOL)rebaseForUpdates:(id)updates;
- (BOOL)updateWillCauseInternalInconsistency:(uint64_t)inconsistency;
- (NSArray)items;
- (NSIndexPath)destinationIndexPath;
- (NSString)description;
- (_UICollectionViewDragAndDropController)initWithCollectionView:(id)view;
- (id)_cellAppearanceStateForIndexPath:(id)path;
- (id)_cellForDropCoordinatorItem:(id)item;
- (id)_dropCoordinatorItemForDragItem:(id)item;
- (id)_dropCoordinatorItemForIndexPath:(id)path;
- (id)_handleForcedDruidSessionEnd;
- (id)_presentationIndexPathForIndexPath:(id)path allowingAppendingInserts:(BOOL)inserts;
- (id)_shadowUpdateReuseIdentifierForItemItemAtIndexPath:(id)path;
- (id)cancelReorderingForced:(_BYTE *)forced shouldCancelUsingBatchUpdate:;
- (id)dropItem:(id)item intoItemAtIndexPath:(id)path rect:(CGRect)rect;
- (id)dropItem:(id)item toItemAtIndexPath:(id)path;
- (id)dropItem:(id)item toPlaceholder:(id)placeholder;
- (id)dropItem:(id)item toPlaceholderInsertedAtIndexPath:(id)path withReuseIdentifier:(id)identifier cellUpdateHandler:(id)handler;
- (id)dropItem:(id)item toTarget:(id)target;
- (id)dropToPlaceholderCellAtIndexPath:(id)path reuseIdentifier:(id)identifier forDragItem:(id)item cellUpdateHandler:(id)handler;
- (id)endReordering;
- (id)indexPathForDragAndDropInsertion;
- (id)indexPathForOriginalReorderedItem;
- (id)insertPlaceholderForItemAtIndexPath:(id)path forDragItem:(id)item reuseIdentifier:(id)identifier cellUpdateHandler:(id)handler;
- (id)placeholderContextDidDismiss:(id)dismiss;
- (id)reorderedItems;
- (id)sourceIndexPaths;
- (id)updateReorderingForTargetPosition:(double)position;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (uint64_t)canBeginReorderingSession;
- (uint64_t)effectiveDragDestinationVisualStyle;
- (uint64_t)isCellPerformingLegacyReorderingAtIndexPath:(uint64_t)path;
- (void)_addAnimationHandlers:(id)handlers toAnimator:(id)animator;
- (void)_addDropCoordinatorItem:(id)item;
- (void)_cleanupAfterOutstandingSessionCompletion;
- (void)_decrementSessionRefCount;
- (void)_incrementSessionRefCount;
- (void)_invokeAllCompletionHandlers;
- (void)_performCancelDropToIndexPath:(void *)path forDragItem:;
- (void)_removeAnyDeferredReuseCells;
- (void)_resetAllAnimationHandlers;
- (void)_resetReorderedItems;
- (void)_rollbackCurrentDropInsertion;
- (void)_updateCellAppearancesForItemsAtIndexPaths:(id)paths;
- (void)_updateCellIfNeeded:(id)needed atIndexPath:(id)path;
- (void)_updatePreferredDraggedCellAppearanceForSessionUpdate;
- (void)beginReorderingForItemAtIndexPath:(void *)path cell:;
- (void)commitReorderedItems;
- (void)defaultAnimationHandlers;
- (void)didUpdateDataSource;
- (void)didUpdateDragDelegate;
- (void)didUpdateDropDelegate;
- (void)dragDestinationController:(void *)controller didCompleteDropAnimationForDragItem:;
- (void)dragDestinationController:(void *)controller willBeginDropAnimationForDragItem:(void *)item animator:;
- (void)dragDestinationControllerSessionDidEnter:(int)enter isNewSession:(int)session isResuming:;
- (void)dragSourceController:(id *)controller didEndForItemsAtIndexPaths:;
- (void)dragSourceController:(void *)controller didCancelLiftForItemsAtIndexPaths:;
- (void)dragSourceController:(void *)controller didCompleteLiftForItemsAtIndexPaths:;
- (void)dragSourceController:(void *)controller didSupplyCancellationPreviewForItemAtIndexPath:;
- (void)dragSourceController:(void *)controller didUpdateItemsAtIndexPaths:;
- (void)dragSourceController:(void *)controller willBeginAnimatingCancelForItemsAtIndexPaths:(void *)paths withAnimator:;
- (void)dragSourceController:(void *)controller willBeginLiftForItemsAtIndexPaths:;
- (void)dropToLocation:(CGPoint)location inContainerView:(id)view withTransform:(CGAffineTransform *)transform forDragItem:(id)item;
- (void)placeholderContextNeedsCellUpdate:(id)update;
- (void)placeholderContextsByIndexPath;
- (void)rebaseCellAppearanceStatesForUpdates:(uint64_t)updates;
- (void)reset;
- (void)setCurrentDropInsertionShadowUpdateIdentifier:(uint64_t)identifier;
- (void)setCurrentlyInsertingPlaceholderContext:(uint64_t)context;
- (void)setDragInteractionEnabled:(uint64_t)enabled;
- (void)setDropCoordinatorItemsMap:(uint64_t)map;
- (void)setPlaceholderContextsByIndexPath:(uint64_t)path;
- (void)updateAppearanceForCell:(void *)cell atIndexPath:;
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

        cell = [*(*(&v10 + 1) + 8 * i) cell];
        [cell _setReordering:0];
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
  if (self)
  {
    collectionView = [self collectionView];
    v3 = self[7];
    v4 = v3;
    if (v3)
    {
      if ([(_UICollectionViewDragSourceController *)v3 isActive])
      {
        v5 = *(__UILogGetCategoryCachedImpl("UICollectionView", &didUpdateDragDelegate___s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = collectionView;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Warning: Changing the dragDelegate while a drag session is active will lead to undefined behavior. %@", &v10, 0xCu);
        }
      }

      [(_UICollectionViewDragSourceController *)v4 deactivate];
      v6 = self[7];
      self[7] = 0;
    }

    dragDelegate = [collectionView dragDelegate];
    if (dragDelegate || ([collectionView dragSourceDelegate], (dragDelegate = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (([collectionView _dragAndDropNeededForReordering] & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = [(_UICollectionViewDragDestinationController *)_UICollectionViewDragSourceController controllerForCollectionView:collectionView delegate:self];
    v9 = self[7];
    self[7] = v8;

    -[_UICollectionViewDragSourceController setDragInteractionEnabled:](self[7], [collectionView dragInteractionEnabled]);
LABEL_11:
  }
}

- (void)didUpdateDropDelegate
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    collectionView = [self collectionView];
    v3 = self[6];
    v4 = v3;
    if (v3)
    {
      if ([(_UICollectionViewDragDestinationController *)v3 isActive])
      {
        v5 = *(__UILogGetCategoryCachedImpl("UICollectionView", &didUpdateDropDelegate___s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = collectionView;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Warning: Changing the dropDelegate while a drag session is active will lead to undefined behavior. %@", &v10, 0xCu);
        }
      }

      [(_UICollectionViewDragDestinationController *)v4 deactivate];
      v6 = self[6];
      self[6] = 0;
    }

    dropDelegate = [collectionView dropDelegate];
    if (dropDelegate || ([collectionView dragDestinationDelegate], (dropDelegate = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (([collectionView _dragAndDropNeededForReordering] & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = [_UICollectionViewDragDestinationController controllerForCollectionView:collectionView delegate:self];
    v9 = self[6];
    self[6] = v8;

LABEL_11:
  }
}

- (void)didUpdateDataSource
{
  if (self)
  {
    if (!*(self + 56))
    {
      [(_UICollectionViewDragAndDropController *)self didUpdateDragDelegate];
    }

    if (!*(self + 48))
    {

      [(_UICollectionViewDragAndDropController *)self didUpdateDropDelegate];
    }
  }
}

- (BOOL)hasShadowUpdates
{
  if (!self)
  {
    return 0;
  }

  _shadowUpdates = [self _shadowUpdates];
  v2 = [_shadowUpdates count] != 0;

  return v2;
}

- (void)commitReorderedItems
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(self + 168);
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
  if (self)
  {
    self = [self[21] copy];
    v1 = vars8;
  }

  return self;
}

- (id)indexPathForOriginalReorderedItem
{
  if (self && *(self + 64) != 3)
  {
    firstObject = [*(self + 168) firstObject];
    v3 = firstObject;
    if (firstObject)
    {
      originalIndexPath = [firstObject originalIndexPath];
    }

    else
    {
      originalIndexPath = 0;
    }
  }

  else
  {
    originalIndexPath = 0;
  }

  return originalIndexPath;
}

- (_UICollectionViewDragAndDropController)initWithCollectionView:(id)view
{
  v17.receiver = self;
  v17.super_class = _UICollectionViewDragAndDropController;
  v3 = [(_UICollectionViewShadowUpdatesController *)&v17 initWithCollectionView:view];
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
  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  [v6 appendFormat:@" shadowUpdates=%@;", _shadowUpdates];

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

      collectionView = [v1 collectionView];
      v5 = 138412290;
      v6 = collectionView;
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
      collectionView = [v1 collectionView];
      v5 = 138412290;
      v6 = collectionView;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: unable to begin reordering session due to the presence of placeholder contexts. Collection view: %@", &v5, 0xCu);
      goto LABEL_9;
    }
  }

  return result;
}

- (void)beginReorderingForItemAtIndexPath:(void *)path cell:
{
  v5 = a2;
  pathCopy = path;
  v7 = pathCopy;
  if (self)
  {
    if (v5)
    {
      if (pathCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_beginReorderingForItemAtIndexPath_cell_ object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

      if (v7)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel_beginReorderingForItemAtIndexPath_cell_ object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"cell != nil"}];

LABEL_4:
    collectionView = [self collectionView];
    v9 = collectionView;
    v10 = *(self + 64);
    if (v10 == 3)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __81___UICollectionViewDragAndDropController_beginReorderingForItemAtIndexPath_cell___block_invoke;
      v27[3] = &unk_1E70F35B8;
      v14 = collectionView;
      v28 = v14;
      v15 = v5;
      v29 = v15;
      v16 = [v14 _performShadowUpdates:v27];
      firstObject = [v16 firstObject];
      v18 = firstObject;
      if (firstObject)
      {
        v19 = *(firstObject + 88);
      }

      else
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:sel_beginReorderingForItemAtIndexPath_cell_ object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:216 description:{@"UICollectionView internal consistency: shadow insert for placeholder cell is nil. Collection view: %@", v14}];

        v19 = 0;
      }

      objc_storeStrong((self + 160), v19);
      v20 = [v14 _cellForItemAtIndexPath:v15];
      if (!v20)
      {
        [MEMORY[0x1E696AAA8] currentHandler];
        v25 = v26 = v14;
        [v25 handleFailureInMethod:sel_beginReorderingForItemAtIndexPath_cell_ object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:220 description:{@"UICollectionView internal consistency: unable to retrieve placeholder cell for reordering. Collection view: %@", v26}];
      }

      v21 = [[UICollectionViewReorderedItem alloc] initWithCell:v20 indexPath:v15];
      [*(self + 168) addObject:v21];

      goto LABEL_17;
    }

    if (v10 != 1)
    {
      if (v10)
      {
LABEL_9:
        v11 = [[UICollectionViewReorderedItem alloc] initWithCell:v7 indexPath:v5];
        [*(self + 168) addObject:v11];
        _diffableDataSourceImpl = [v9 _diffableDataSourceImpl];
        v13 = _diffableDataSourceImpl;
        if (_diffableDataSourceImpl)
        {
          [_diffableDataSourceImpl _willBeginReorderingForItemAtIndexPath:v5];
        }

LABEL_17:
        goto LABEL_18;
      }

      *(self + 64) = 1;
    }

    [v7 _setReordering:1];
    goto LABEL_9;
  }

LABEL_18:
}

- (void)setCurrentDropInsertionShadowUpdateIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    objc_storeStrong((identifier + 160), 0);
  }
}

- (id)updateReorderingForTargetPosition:(double)position
{
  v49 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v37 = 0;
    goto LABEL_41;
  }

  v6 = *(self + 168);
  v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  if (!*(self + 64) || [(_UICollectionViewDragAndDropController *)self effectiveDragDestinationVisualStyle]== 2)
  {
    goto LABEL_40;
  }

  v7 = *(self + 43);
  collectionView = [self collectionView];
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
      originalIndexPath = [v14 originalIndexPath];
      targetIndexPath = [v14 targetIndexPath];
      if (os_variant_has_internal_diagnostics())
      {
        if (!targetIndexPath)
        {
          v26 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            v30 = __UICVIndexPathDescription(originalIndexPath);
            *buf = v34;
            v45 = collectionView;
            v46 = 2112;
            v47 = v30;
            _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "UIKit internal inconsistency: expected reordered item to have a previous index path. Please file a bug against UICollectionView with reproduction steps. Collection view: %@; Original index path: %@", buf, 0x16u);
          }
        }
      }

      else if (!targetIndexPath)
      {
        v27 = *(__UILogGetCategoryCachedImpl("Assert", &updateReorderingForTargetPosition____s_category) + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = v27;
          v29 = __UICVIndexPathDescription(originalIndexPath);
          *buf = v34;
          v45 = collectionView;
          v46 = 2112;
          v47 = v29;
          _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "UIKit internal inconsistency: expected reordered item to have a previous index path. Please file a bug against UICollectionView with reproduction steps. Collection view: %@; Original index path: %@", buf, 0x16u);
        }
      }

      if (*(self + 64) != 2)
      {
        collectionViewLayout = [collectionView collectionViewLayout];
        [collectionViewLayout _targetPositionForInteractiveMovementOfItemAtIndexPath:originalIndexPath withProposedTargetPosition:{a2, position}];
        v20 = v19;
        v22 = v21;

        collectionViewLayout2 = [collectionView collectionViewLayout];
        v24 = [collectionViewLayout2 _reorderingTargetItemIndexPathForPosition:targetIndexPath withPreviousIndexPath:{v20, v22}];

        if (!v24)
        {
          destinationIndexPath = 0;
          goto LABEL_26;
        }

        destinationIndexPath = [collectionView _targetIndexPathForMoveOfItemFromOriginalIndexPath:originalIndexPath atCurrentIndexPath:targetIndexPath toProposedIndexPath:v24];

        if (!targetIndexPath)
        {
          goto LABEL_26;
        }

LABEL_17:
        if (destinationIndexPath && targetIndexPath != destinationIndexPath && ([targetIndexPath isEqual:destinationIndexPath] & 1) == 0)
        {
          [v37 setObject:destinationIndexPath forKeyedSubscript:targetIndexPath];
          [v14 setTargetIndexPath:destinationIndexPath];
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

      if (![(_UICollectionViewDragDestinationController *)*(self + 48) shouldPerformMovementForCurrentProposal])
      {
        destinationIndexPath = 0;
        goto LABEL_26;
      }

      destinationIndexPath = [self destinationIndexPath];
      if (targetIndexPath)
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
    *(self + 43) = v32;
    [self _updatePreferredDraggedCellAppearanceForSessionUpdate];
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
    collectionView = [result collectionView];
    traitCollection = [collectionView traitCollection];
    v4 = traitCollection;
    if (traitCollection)
    {
      _UIRecordTraitUsage(traitCollection, 0x13uLL);
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

- (id)cancelReorderingForced:(_BYTE *)forced shouldCancelUsingBatchUpdate:
{
  if (self)
  {
    if (!forced)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_cancelReorderingForced_shouldCancelUsingBatchUpdate_ object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"cancelUsingBatchUpdate != NULL"}];
    }

    *forced = 1;
    v6 = self[8];
    switch(v6)
    {
      case 1:
        [self reset];
        self[8] = 0;
        break;
      case 3:
        if (a2)
        {
          *forced = 0;
          _handleForcedDruidSessionEnd = [self _handleForcedDruidSessionEnd];
          goto LABEL_15;
        }

        [self _rollbackCurrentDropInsertion];
        break;
      case 2:
        if (a2)
        {
          _handleForcedDruidSessionEnd2 = [self _handleForcedDruidSessionEnd];
          *forced = 0;
LABEL_16:
          v9 = _Block_copy(_handleForcedDruidSessionEnd2);

          goto LABEL_17;
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __94___UICollectionViewDragAndDropController_cancelReorderingForced_shouldCancelUsingBatchUpdate___block_invoke_2;
        aBlock[3] = &unk_1E70F3590;
        aBlock[4] = self;
        _handleForcedDruidSessionEnd = _Block_copy(aBlock);
LABEL_15:
        _handleForcedDruidSessionEnd2 = _handleForcedDruidSessionEnd;
        goto LABEL_16;
    }

    _handleForcedDruidSessionEnd2 = &__block_literal_global_123;
    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)_handleForcedDruidSessionEnd
{
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
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
  if (self)
  {
    v2 = self[8];
    switch(v2)
    {
      case 1:
        [self reset];
        self[8] = 0;
        break;
      case 3:
        [self _rollbackCurrentDropInsertion];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __55___UICollectionViewDragAndDropController_endReordering__block_invoke_2;
        aBlock[3] = &unk_1E70F3590;
        aBlock[4] = self;
        v3 = _Block_copy(aBlock);
LABEL_9:
        v4 = _Block_copy(v3);

        goto LABEL_10;
      case 2:
        [self reset];
        break;
    }

    v3 = &__block_literal_global_63;
    goto LABEL_9;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (void)updateAppearanceForCell:(void *)cell atIndexPath:
{
  v14 = a2;
  cellCopy = cell;
  if (self && v14 && cellCopy)
  {
    v6 = [(_UICollectionViewSubviewCollection *)*(self + 104) cellAtIndexPath:cellCopy];
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
      v8 = *(self + 104);
      if (v8)
      {
        [*(v8 + 8) removeObjectForKey:cellCopy];
      }
    }

    v9 = [*(self + 112) objectForKeyedSubscript:cellCopy];
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

      [(_UICollectionViewSubviewCollection *)*(self + 104) setCell:v12 atIndexPath:cellCopy];
      [v14 _setDragAppearance:v13];
    }
  }
}

- (BOOL)isCellInvolvedInDragOrDropAnimation:(uint64_t)animation atIndexPath:
{
  v5 = a2;
  if (self)
  {
    v6 = [self _dropCoordinatorItemForIndexPath:animation];
    v7 = v6;
    if (v6 && [v6 shouldRemainInHierarchy])
    {
      v8 = [self _cellForDropCoordinatorItem:v7];
      self = v8 == v5;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (void)setDragInteractionEnabled:(uint64_t)enabled
{
  if (enabled)
  {
    if (*(enabled + 40) != a2)
    {
      *(enabled + 40) = a2;
      [(_UICollectionViewDragSourceController *)*(enabled + 56) setDragInteractionEnabled:a2];
    }
  }
}

- (uint64_t)isCellPerformingLegacyReorderingAtIndexPath:(uint64_t)path
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (path && v3)
  {
    if (*(path + 64) == 1)
    {
      indexPathForDragAndDropInsertion = [(_UICollectionViewDragAndDropController *)path indexPathForDragAndDropInsertion];
      v7 = v4;
      v8 = indexPathForDragAndDropInsertion;
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

        indexPathForOriginalReorderedItem = [(_UICollectionViewDragAndDropController *)path indexPathForOriginalReorderedItem];
        v11 = v7;
        v13 = indexPathForOriginalReorderedItem;
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

- (void)setPlaceholderContextsByIndexPath:(uint64_t)path
{
  if (path)
  {
    objc_storeStrong((path + 88), 0);
  }
}

- (id)indexPathForDragAndDropInsertion
{
  if (self)
  {
    firstObject = [*(self + 168) firstObject];
    v2 = firstObject;
    if (firstObject)
    {
      targetIndexPath = [firstObject targetIndexPath];
    }

    else
    {
      targetIndexPath = 0;
    }
  }

  else
  {
    targetIndexPath = 0;
  }

  return targetIndexPath;
}

- (BOOL)updateWillCauseInternalInconsistency:(uint64_t)inconsistency
{
  v3 = a2;
  v4 = v3;
  if (inconsistency && [v3 updateAction] == 1)
  {
    indexPathForOriginalReorderedItem = [(_UICollectionViewDragAndDropController *)inconsistency indexPathForOriginalReorderedItem];
    if (indexPathForOriginalReorderedItem)
    {
      _indexPath = [(UICollectionViewUpdateItem *)v4 _indexPath];
      v7 = 1;
      if (([_indexPath isEqual:indexPathForOriginalReorderedItem] & 1) == 0)
      {
        if (!v4 || v4[6] != 0x7FFFFFFFFFFFFFFFLL || (v8 = [_indexPath section], v8 != objc_msgSend(indexPathForOriginalReorderedItem, "section")))
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

- (id)_dropCoordinatorItemForDragItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
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
        dragItem = [v10 dragItem];

        if (dragItem == itemCopy)
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

- (id)_dropCoordinatorItemForIndexPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  if (path)
  {
    pathCopy = path;
    if (self)
    {
      dropCoordinatorItemsMap = self->_dropCoordinatorItemsMap;
      if (!dropCoordinatorItemsMap)
      {
        strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
        v7 = self->_dropCoordinatorItemsMap;
        self->_dropCoordinatorItemsMap = strongToWeakObjectsMapTable;

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
              destinationIndexPath = [v13 destinationIndexPath];
              if (destinationIndexPath)
              {
                [(NSMapTable *)self->_dropCoordinatorItemsMap setObject:v13 forKey:destinationIndexPath];
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

    v16 = [(NSMapTable *)v15 objectForKey:pathCopy, v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_cellForDropCoordinatorItem:(id)item
{
  itemCopy = item;
  destinationIndexPath = [itemCopy destinationIndexPath];

  if (destinationIndexPath)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    destinationIndexPath2 = [itemCopy destinationIndexPath];
    v8 = [collectionView _cellForItemAtIndexPath:destinationIndexPath2];
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
    hasShadowUpdates = [(_UICollectionViewDragAndDropController *)self hasShadowUpdates];
    if (self)
    {
      if (self->_sessionKind == 3 && hasShadowUpdates)
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

- (void)setDropCoordinatorItemsMap:(uint64_t)map
{
  if (map)
  {
    objc_storeStrong((map + 128), 0);
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
        collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
        visibleCells = [collectionView visibleCells];
        v12 = [visibleCells containsObject:v9];

        if ((v12 & 1) == 0)
        {
          collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
          [collectionView2 _reuseCell:v9 notifyDidEndDisplaying:0];
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

- (void)rebaseCellAppearanceStatesForUpdates:(uint64_t)updates
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (updates)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    allKeys = [*(updates + 112) allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [*(updates + 112) objectForKeyedSubscript:v10];
          v12 = v3[2](v3, v10);
          if (v12)
          {
            [v4 setObject:v11 forKeyedSubscript:v12];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v13 = *(updates + 112);
    *(updates + 112) = v4;
    v14 = v4;

    v15 = objc_alloc_init(_UICollectionViewSubviewCollection);
    v16 = *(updates + 104);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79___UICollectionViewDragAndDropController_rebaseCellAppearanceStatesForUpdates___block_invoke;
    v20[3] = &unk_1E7100360;
    v22 = v3;
    v17 = v15;
    v21 = v17;
    [(_UICollectionViewSubviewCollection *)v16 enumerateAllViewsWithEnumerator:v20];
    v18 = *(updates + 104);
    *(updates + 104) = v17;
    v19 = v17;
  }
}

- (void)_updatePreferredDraggedCellAppearanceForSessionUpdate
{
  v30 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = !self->_hasReorderedItemInSession;
    currentSessionItemCount = [(_UICollectionViewDragSourceController *)&self->_sourceController->super.isa currentSessionItemCount];
    destinationController = self->_destinationController;
  }

  else
  {
    currentSessionItemCount = [(_UICollectionViewDragSourceController *)0 currentSessionItemCount];
    destinationController = 0;
    v3 = 1;
  }

  supportsLocalSessionReordering = [(_UICollectionViewDragDestinationController *)&destinationController->super.isa supportsLocalSessionReordering];
  effectiveDragDestinationVisualStyle = [(_UICollectionViewDragAndDropController *)self effectiveDragDestinationVisualStyle];
  v8 = supportsLocalSessionReordering ^ 1;
  if (effectiveDragDestinationVisualStyle == 2)
  {
    v8 = 1;
  }

  if (currentSessionItemCount > 1)
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

  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
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

        v22 = [collectionView cellForItemAtIndexPath:v17];
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
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  if (self)
  {
    currentDropInsertionShadowUpdateIdentifier = self->_currentDropInsertionShadowUpdateIdentifier;
    if (currentDropInsertionShadowUpdateIdentifier)
    {
      v5 = currentDropInsertionShadowUpdateIdentifier;
      _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
      v7 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v5 inShadowUpdates:_shadowUpdates];

      if (v7)
      {
        updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
        v9 = 64;
        if (!*(v7 + 80))
        {
          v9 = 72;
        }

        v10 = *(v7 + v9);
        v11 = *(v7 + 88);
        v12 = [updateMap finalIndexPathForIndexPath:v10 startingAtUpdateWithIdentifier:v11];

        [(_UICollectionViewDragAndDropController *)self _resetReorderedItems];
        [(_UICollectionViewDragDestinationController *)self->_destinationController dropInsertionRolledBack];
        v16 = MEMORY[0x1E69E9820];
        v17 = 3221225472;
        v18 = __71___UICollectionViewDragAndDropController__rollbackCurrentDropInsertion__block_invoke;
        v19 = &unk_1E70F35B8;
        v20 = collectionView;
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

- (BOOL)rebaseForUpdates:(id)updates
{
  v49 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if ([updatesCopy count])
  {
    v5 = [(_UICollectionViewShadowUpdatesController *)self _rebasedUpdateMapForUpdates:updatesCopy];
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
        v33 = updatesCopy;
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
        selfCopy = self;
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
              originalIndexPath = [v14 originalIndexPath];
              v16 = v8[2](v8, originalIndexPath);

              if (!v16)
              {
                goto LABEL_40;
              }

              targetIndexPath = [v14 targetIndexPath];
              v18 = v8[2](v8, targetIndexPath);

              [v14 setOriginalIndexPath:v16];
              if (!v18)
              {
                finalSnapshot = [v35 finalSnapshot];
                targetIndexPath2 = [v14 targetIndexPath];
                v21 = [finalSnapshot indexPathIsSectionAppendingInsert:targetIndexPath2];

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
            self = selfCopy;
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
              destinationIndexPath = [v29 destinationIndexPath];
              if (destinationIndexPath)
              {
                v31 = v8[2](v8, destinationIndexPath);
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

        [_UICollectionViewDragAndDropController setPlaceholderContextsByIndexPath:selfCopy];
        [(_UICollectionViewDragSourceController *)&selfCopy->_sourceController->super.isa rebaseForUpdates:v8];
        [(_UICollectionViewDragDestinationController *)&selfCopy->_destinationController->super.isa rebaseForUpdates:v8];
        v6 = 1;
LABEL_41:

        updatesCopy = v33;
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
  if (self)
  {
    selfCopy = self;
    v2 = self[11];
    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4 = selfCopy[11];
      selfCopy[11] = v3;

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = selfCopy[12];
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
            _shadowUpdates = [selfCopy _shadowUpdates];
            v13 = [selfCopy _findShadowUpdateForIdentifier:v11 inShadowUpdates:_shadowUpdates];

            if (v13)
            {
              v14 = v13[10] ? 64 : 72;
              v15 = *(v13 + v14);

              if (v15)
              {
                v16 = selfCopy[11];
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

      v2 = selfCopy[11];
    }

    self = v2;
  }

  return self;
}

- (void)defaultAnimationHandlers
{
  if (self)
  {
    selfCopy = self;
    v3 = self[19];
    if (!v3)
    {
      v4 = objc_alloc_init(_UIDropAnimationHandlers);
      v5 = selfCopy[19];
      selfCopy[19] = v4;

      v3 = selfCopy[19];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_updateCellAppearancesForItemsAtIndexPaths:(id)paths
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(pathsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
        v11 = [collectionView cellForItemAtIndexPath:v9];

        if (v11)
        {
          [(_UICollectionViewDragAndDropController *)self updateAppearanceForCell:v11 atIndexPath:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (BOOL)_removeMoveShadowUpdateMatchingReorderedItem:(id)item
{
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  v6 = [_shadowUpdates countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
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
          objc_enumerationMutation(_shadowUpdates);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        if ([v11 updateAction] == 3)
        {
          indexPathBeforeUpdate = [v11 indexPathBeforeUpdate];
          originalIndexPath = [itemCopy originalIndexPath];
          if ([indexPathBeforeUpdate isEqual:originalIndexPath])
          {
            indexPathAfterUpdate = [v11 indexPathAfterUpdate];
            [itemCopy targetIndexPath];
            v15 = v9;
            v16 = itemCopy;
            v18 = v17 = _shadowUpdates;
            v24 = [indexPathAfterUpdate isEqual:v18];

            _shadowUpdates = v17;
            itemCopy = v16;
            v9 = v15;

            if (v24)
            {
              _shadowUpdates2 = [(_UICollectionViewShadowUpdatesController *)selfCopy _shadowUpdates];
              [_shadowUpdates2 removeObjectAtIndex:v8];

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
      v7 = [_shadowUpdates countByEnumeratingWithState:&v25 objects:v29 count:16];
      v8 = v23;
    }

    while (v7);
  }

  v20 = 0;
LABEL_14:

  return v20;
}

- (id)_shadowUpdateReuseIdentifierForItemItemAtIndexPath:(id)path
{
  pathCopy = path;
  placeholderContextsByIndexPath = [(_UICollectionViewDragAndDropController *)self placeholderContextsByIndexPath];
  v6 = [placeholderContextsByIndexPath objectForKeyedSubscript:pathCopy];

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
      v14 = [(NSIndexPath *)v12 isEqual:pathCopy];

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
  v8 = [(_UICollectionViewShadowUpdatesController *)&v17 _shadowUpdateReuseIdentifierForItemItemAtIndexPath:pathCopy];
LABEL_12:
  v15 = v8;

  return v15;
}

- (void)_updateCellIfNeeded:(id)needed atIndexPath:(id)path
{
  neededCopy = needed;
  pathCopy = path;
  if (neededCopy && pathCopy)
  {
    if (self && (currentlyInsertingPlaceholderContext = self->_currentlyInsertingPlaceholderContext) != 0 && (v8 = currentlyInsertingPlaceholderContext, v9 = [v8[3] isEqual:pathCopy], v8, v9) && (v10 = self->_currentlyInsertingPlaceholderContext) != 0)
    {
      p_isa = &v10->super.isa;
    }

    else
    {
      placeholderContextsByIndexPath = [(_UICollectionViewDragAndDropController *)self placeholderContextsByIndexPath];
      p_isa = [placeholderContextsByIndexPath objectForKeyedSubscript:pathCopy];

      if (!p_isa)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = p_isa[4];
    if (v13)
    {
      (*(v13 + 16))(v13, neededCopy);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (BOOL)_deleteShadowUpdateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  v6 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:identifierCopy inShadowUpdates:_shadowUpdates];

  if (v6 && (-[_UICollectionViewShadowUpdatesController _shadowUpdates](self, "_shadowUpdates"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 indexOfObjectIdenticalTo:v6], v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    _shadowUpdates2 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    [_shadowUpdates2 removeObjectAtIndex:v8];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_cellAppearanceStateForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
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

    v7 = [(NSMutableDictionary *)cellAppearanceStatesByIndexPaths objectForKeyedSubscript:pathCopy];
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

      [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:pathCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addDropCoordinatorItem:(id)item
{
  selfCopy = self;
  if (self)
  {
    self = self->_dropCoordinatorItems;
  }

  [(_UICollectionViewDragAndDropController *)self addObject:item];

  [_UICollectionViewDragAndDropController setDropCoordinatorItemsMap:selfCopy];
}

- (id)_presentationIndexPathForIndexPath:(id)path allowingAppendingInserts:(BOOL)inserts
{
  insertsCopy = inserts;
  pathCopy = path;
  if (!pathCopy)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathAfterShadowUpdates:pathCopy];
  if (!v7 && insertsCopy)
  {
    updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    initialSnapshot = [updateMap initialSnapshot];
    v10 = [initialSnapshot indexPathIsSectionAppendingInsert:pathCopy];

    if (v10)
    {
      updateMap2 = [(_UICollectionViewShadowUpdatesController *)self updateMap];
      finalSnapshot = [updateMap2 finalSnapshot];
      v7 = [finalSnapshot indexPathForAppendingInsertInSection:{objc_msgSend(pathCopy, "section")}];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (void)_addAnimationHandlers:(id)handlers toAnimator:(id)animator
{
  v27 = *MEMORY[0x1E69E9840];
  handlersCopy = handlers;
  animatorCopy = animator;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  alongsideAnimationHandlers = [handlersCopy alongsideAnimationHandlers];
  v8 = [alongsideAnimationHandlers countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(alongsideAnimationHandlers);
        }

        [animatorCopy addAnimations:*(*(&v21 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [alongsideAnimationHandlers countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  completionHandlers = [handlersCopy completionHandlers];
  v13 = [completionHandlers countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(completionHandlers);
        }

        [animatorCopy addCompletion:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [completionHandlers countByEnumeratingWithState:&v17 objects:v25 count:16];
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

        animationHandlers = [*(*(&v24 + 1) + 8 * i) animationHandlers];
        [animationHandlers invokeAllCompletionHandlers];
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

  defaultAnimationHandlers = [(_UICollectionViewDragAndDropController *)self defaultAnimationHandlers];
  [defaultAnimationHandlers invokeAllCompletionHandlers];
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

        animationHandlers = [*(*(&v24 + 1) + 8 * i) animationHandlers];
        [animationHandlers resetAllAnimationHandlers];
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

  defaultAnimationHandlers = [(_UICollectionViewDragAndDropController *)self defaultAnimationHandlers];
  [defaultAnimationHandlers resetAllAnimationHandlers];
}

- (void)dragSourceController:(void *)controller willBeginLiftForItemsAtIndexPaths:
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self)
  {
    [self _incrementSessionRefCount];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = controllerCopy;
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
          v12 = [self _cellAppearanceStateForIndexPath:{v11, v14}];
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

    [self _updateCellAppearancesForItemsAtIndexPaths:v5];
  }
}

- (void)dragSourceController:(void *)controller didCompleteLiftForItemsAtIndexPaths:
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = controllerCopy;
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
          v12 = [self _cellAppearanceStateForIndexPath:{v11, v14}];
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

    [self _updateCellAppearancesForItemsAtIndexPaths:v5];
    [self _decrementSessionRefCount];
  }
}

- (void)dragSourceController:(void *)controller didCancelLiftForItemsAtIndexPaths:
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = controllerCopy;
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
          v12 = [self _cellAppearanceStateForIndexPath:{v11, v14}];
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

    [self _updateCellAppearancesForItemsAtIndexPaths:v5];
    [self _decrementSessionRefCount];
  }
}

- (void)dragSourceController:(void *)controller didUpdateItemsAtIndexPaths:
{
  controllerCopy = controller;
  if (self)
  {
    v6 = controllerCopy;
    if ([self isDragDestinationInteractivelyReordering])
    {
      v5 = [v6 count];
      if (v5 >= 2)
      {
        [(_UICollectionViewDragDestinationController *)self[6] dragSourceSelectedItemCountDidChangeWithCount:v5];
      }
    }

    [self _updateCellAppearancesForItemsAtIndexPaths:v6];
    controllerCopy = v6;
  }
}

- (void)dragSourceController:(id *)controller didEndForItemsAtIndexPaths:
{
  v16 = *MEMORY[0x1E69E9840];
  if (!controller)
  {
    return;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  keyEnumerator = [controller[14] keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(keyEnumerator);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      v9 = [controller[14] objectForKeyedSubscript:v8];
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

    v5 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);
LABEL_17:

  if ([v2 count])
  {
    [controller _updateCellAppearancesForItemsAtIndexPaths:v2];
  }

  [controller _decrementSessionRefCount];
}

- (void)dragSourceController:(void *)controller didSupplyCancellationPreviewForItemAtIndexPath:
{
  if (controller)
  {
    v1 = [controller _cellAppearanceStateForIndexPath:?];
    if (v1)
    {
      v2 = v1;
      [v1 setHasBeganCancelling:1];
      v1 = v2;
    }
  }
}

- (void)dragSourceController:(void *)controller willBeginAnimatingCancelForItemsAtIndexPaths:(void *)paths withAnimator:
{
  v42 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  pathsCopy = paths;
  if (!self)
  {
    goto LABEL_25;
  }

  [self _incrementSessionRefCount];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  keyEnumerator = [self[14] keyEnumerator];
  v9 = [keyEnumerator countByEnumeratingWithState:&v36 objects:v41 count:16];
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
        objc_enumerationMutation(keyEnumerator);
      }

      v13 = *(*(&v36 + 1) + 8 * i);
      v14 = [self[14] objectForKeyedSubscript:v13];
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

    v10 = [keyEnumerator countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v10);
LABEL_13:

  if ([v7 count])
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __121___UICollectionViewDragAndDropController_dragSourceController_willBeginAnimatingCancelForItemsAtIndexPaths_withAnimator___block_invoke;
    v34[3] = &unk_1E70F35B8;
    v34[4] = self;
    v35 = v7;
    [pathsCopy addAnimations:v34];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = controllerCopy;
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

        v21 = [self _cellAppearanceStateForIndexPath:*(*(&v30 + 1) + 8 * j)];
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
  v28[4] = self;
  v23 = v16;
  v29 = v23;
  [pathsCopy addAnimations:v28];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __121___UICollectionViewDragAndDropController_dragSourceController_willBeginAnimatingCancelForItemsAtIndexPaths_withAnimator___block_invoke_3;
  v25[3] = &unk_1E71003B0;
  v26 = v23;
  selfCopy = self;
  [pathsCopy addCompletion:v25];

LABEL_25:
}

- (void)dragDestinationController:(void *)controller willBeginDropAnimationForDragItem:(void *)item animator:
{
  v34 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  itemCopy = item;
  if (self)
  {
    [self _incrementSessionRefCount];
    v8 = [self _dropCoordinatorItemForDragItem:controllerCopy];
    v9 = v8;
    if (!v8)
    {
LABEL_27:

      goto LABEL_28;
    }

    destinationIndexPath = [v8 destinationIndexPath];
    if (!destinationIndexPath)
    {
LABEL_13:
      animationHandlers = [v9 animationHandlers];
      [self _addAnimationHandlers:animationHandlers toAnimator:itemCopy];

      animationHandlers2 = [v9 animationHandlers];
      [animationHandlers2 resetAllAnimationHandlers];

      v19 = controllerCopy;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = self[12];
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v21)
      {
        v26 = destinationIndexPath;
        v27 = itemCopy;
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
            dragItem = [v24 dragItem];

            if (dragItem == v19)
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
        destinationIndexPath = v26;
        itemCopy = v27;
      }

      if (v21)
      {
        [self _addAnimationHandlers:v21[5] toAnimator:itemCopy];
        [v21[5] resetAllAnimationHandlers];
      }

      goto LABEL_27;
    }

    v11 = [self indexPathBeforeShadowUpdates:destinationIndexPath];
    if (v11)
    {
      v12 = [self _cellAppearanceStateForIndexPath:destinationIndexPath];
      v13 = v12;
      if (!v12 || [v12 dragState] == 5)
      {
        goto LABEL_12;
      }

      [v13 setDragState:4];
      v32 = destinationIndexPath;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      [self _updateCellAppearancesForItemsAtIndexPaths:v14];
    }

    else
    {
      collectionView = [self collectionView];
      v13 = [collectionView _cellForItemAtIndexPath:destinationIndexPath];

      v16 = [self _cellAppearanceStateForIndexPath:destinationIndexPath];
      v14 = v16;
      if (v16)
      {
        [v16 setDragState:4];
      }

      [(_UICollectionViewDragAndDropController *)self updateAppearanceForCell:v13 atIndexPath:destinationIndexPath];
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_28:
}

- (void)dragDestinationController:(void *)controller didCompleteDropAnimationForDragItem:
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (controller)
  {
    v2 = [controller _dropCoordinatorItemForDragItem:?];
    v3 = v2;
    if (v2)
    {
      destinationIndexPath = [v2 destinationIndexPath];
      if (destinationIndexPath)
      {
        v5 = [controller indexPathBeforeShadowUpdates:destinationIndexPath];
        if (v5)
        {
          v6 = [controller _cellAppearanceStateForIndexPath:destinationIndexPath];
          v7 = v6;
          if (v6)
          {
            [v6 setDragState:7];
          }

          v12[0] = destinationIndexPath;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
          [controller _updateCellAppearancesForItemsAtIndexPaths:v8];
        }

        else
        {
          collectionView = [controller collectionView];
          v8 = [collectionView _cellForItemAtIndexPath:destinationIndexPath];

          v10 = [controller _cellAppearanceStateForIndexPath:destinationIndexPath];
          v11 = v10;
          if (v10)
          {
            [v10 setDragState:7];
          }

          [(_UICollectionViewDragAndDropController *)controller updateAppearanceForCell:v8 atIndexPath:destinationIndexPath];
        }
      }
    }

    [controller _decrementSessionRefCount];
  }
}

- (void)dragDestinationControllerSessionDidEnter:(int)enter isNewSession:(int)session isResuming:
{
  v12 = a2;
  if (self)
  {
    if ((enter & 1) != 0 || session)
    {
      v7 = &OBJC_IVAR____UIKeyboardStateManager_m_shouldEnableCapsLockLanguageSwitchByDefault;
      if ((session & 1) == 0 && self[8])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        collectionView = [self collectionView];
        [currentHandler handleFailureInMethod:sel_dragDestinationControllerSessionDidEnter_isNewSession_isResuming_ object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1272 description:{@"UICollectionView internal inconsistency: attempted to enter new reordering session whilst an existing session was active. Collection view: %@", collectionView}];

        v7 = &OBJC_IVAR____UIKeyboardStateManager_m_shouldEnableCapsLockLanguageSwitchByDefault;
      }

      supportsLocalSessionReordering = [(_UICollectionViewDragDestinationController *)v12 supportsLocalSessionReordering];
      v9 = 2;
      if (!supportsLocalSessionReordering)
      {
        v9 = 3;
      }

      *(self + v7[597]) = v9;
      if (enter)
      {
        [self _incrementSessionRefCount];
      }
    }

    [self _updatePreferredDraggedCellAppearanceForSessionUpdate];
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
  if (self)
  {
    v1 = *(self + 56);
    v2 = MEMORY[0x1E695E0F0];
    if (v1)
    {
      dragFromIndexPaths = [(_UICollectionViewDragSourceController *)v1 dragFromIndexPaths];
      v4 = [dragFromIndexPaths copy];
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
  updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
  finalSnapshot = [updateMap finalSnapshot];
  numberOfSections = [finalSnapshot numberOfSections];

  return numberOfSections;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
  finalSnapshot = [updateMap finalSnapshot];
  v6 = [finalSnapshot numberOfItemsInSection:section];

  return v6;
}

- (id)insertPlaceholderForItemAtIndexPath:(id)path forDragItem:(id)item reuseIdentifier:(id)identifier cellUpdateHandler:(id)handler
{
  pathCopy = path;
  itemCopy = item;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (pathCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1331 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1332 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

LABEL_3:
  v16 = [_UICollectionViewPlaceholderContext alloc];
  v17 = pathCopy;
  v18 = itemCopy;
  v19 = identifierCopy;
  selfCopy = self;
  v21 = handlerCopy;
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

      objc_storeStrong(&v22->super._updateMap, path);
      objc_storeStrong(&v22->_sourceController, item);
      objc_storeStrong(&v22->super._initialSnapshot, identifier);
      objc_storeWeak(&v22->_destinationController, selfCopy);
      v25 = objc_alloc_init(_UIDropAnimationHandlers);
      v26 = *&v22->_dragInteractionEnabled;
      *&v22->_dragInteractionEnabled = v25;
    }
  }

  else
  {
    v22 = 0;
  }

  if (selfCopy)
  {
    placeholderContexts = selfCopy->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  [(NSMutableSet *)placeholderContexts addObject:v22];
  collectionView = [(_UICollectionViewShadowUpdatesController *)selfCopy collectionView];
  [(_UICollectionViewDragAndDropController *)selfCopy setCurrentlyInsertingPlaceholderContext:v22];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __124___UICollectionViewDragAndDropController_insertPlaceholderForItemAtIndexPath_forDragItem_reuseIdentifier_cellUpdateHandler___block_invoke;
  v39[3] = &unk_1E70F35B8;
  v40 = collectionView;
  v41 = v17;
  v29 = v17;
  v30 = collectionView;
  v31 = [v30 _performShadowUpdates:v39];
  [(_UICollectionViewDragAndDropController *)selfCopy setCurrentlyInsertingPlaceholderContext:?];
  [_UICollectionViewDragAndDropController setPlaceholderContextsByIndexPath:selfCopy];
  firstObject = [v31 firstObject];
  v33 = firstObject;
  if (firstObject)
  {
    v34 = *(firstObject + 88);
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

- (void)setCurrentlyInsertingPlaceholderContext:(uint64_t)context
{
  if (context)
  {
    objc_storeStrong((context + 80), a2);
  }
}

- (id)placeholderContextDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (self)
  {
    if (![(NSMutableSet *)self->_placeholderContexts containsObject:dismissCopy])
    {
      v16 = 0;
      goto LABEL_15;
    }

    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    v25 = [0 containsObject:dismissCopy];
    placeholderContexts = 0;
    v16 = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  [(NSMutableSet *)placeholderContexts removeObject:dismissCopy];
  [_UICollectionViewDragAndDropController setPlaceholderContextsByIndexPath:?];
  if (dismissCopy)
  {
    v6 = dismissCopy[1];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  v9 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v7 inShadowUpdates:_shadowUpdates];

  if (v9)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    v12 = 64;
    if (!*(v9 + 80))
    {
      v12 = 72;
    }

    v13 = *(v9 + v12);
    v14 = *(v9 + 88);
    v15 = [updateMap finalIndexPathForIndexPath:v13 startingAtUpdateWithIdentifier:v14];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __71___UICollectionViewDragAndDropController_placeholderContextDidDismiss___block_invoke;
    v29 = &unk_1E70F35B8;
    v30 = collectionView;
    v16 = v15;
    v31 = v16;
    v17 = collectionView;
    v18 = [v17 _performShadowUpdates:&v26];
    firstObject = [v18 firstObject];
    v20 = firstObject;
    if (firstObject)
    {
      v21 = *(firstObject + 88);
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

- (void)placeholderContextNeedsCellUpdate:(id)update
{
  v35 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (self)
  {
    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  if ([(NSMutableSet *)placeholderContexts containsObject:updateCopy])
  {
    if (updateCopy)
    {
      v7 = updateCopy[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    v10 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v8 inShadowUpdates:_shadowUpdates];

    if (!v10)
    {
      goto LABEL_25;
    }

    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = 8;
    if (!v10[10])
    {
      v12 = 9;
    }

    v13 = v10[v12];
    v14 = [collectionView _cellForItemAtIndexPath:v13];

    if (v14)
    {
      v15 = dyld_program_sdk_at_least();
      reuseIdentifier = [v14 reuseIdentifier];
      v17 = reuseIdentifier;
      if (v15)
      {
        if (updateCopy)
        {
          v18 = updateCopy[2];
        }

        else
        {
          v18 = 0;
        }

        v19 = [reuseIdentifier isEqualToString:v18];

        if ((v19 & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          reuseIdentifier2 = [v14 reuseIdentifier];
          v22 = reuseIdentifier2;
          if (updateCopy)
          {
            v23 = updateCopy[2];
          }

          else
          {
            v23 = 0;
          }

          [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1402 description:{@"Error: cell reuseIdentifier (%@) does not match expected placeholder context reuseIdentifier (%@). Please file a bug against UICollectionView.", reuseIdentifier2, v23}];

          if (!updateCopy)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (updateCopy)
        {
          v24 = updateCopy[2];
        }

        else
        {
          v24 = 0;
        }

        v25 = [reuseIdentifier isEqualToString:v24];

        if ((v25 & 1) == 0)
        {
          v27 = *(__UILogGetCategoryCachedImpl("Assert", &placeholderContextNeedsCellUpdate____s_category) + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            reuseIdentifier3 = [v14 reuseIdentifier];
            v29 = reuseIdentifier3;
            if (updateCopy)
            {
              v30 = updateCopy[2];
            }

            else
            {
              v30 = 0;
            }

            *buf = 138412546;
            v32 = reuseIdentifier3;
            v33 = 2112;
            v34 = v30;
            _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Error: cell reuseIdentifier (%@) does not match expected placeholder context reuseIdentifier (%@). Please file a bug against UICollectionView.", buf, 0x16u);
          }

          if (!updateCopy)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }
      }

      if (updateCopy)
      {
LABEL_22:
        v26 = updateCopy[4];
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

- (BOOL)placeholderContext:(id)context didCommitInsertionWithDataSourceUpdates:(id)updates
{
  contextCopy = context;
  updatesCopy = updates;
  if (self)
  {
    placeholderContexts = self->_placeholderContexts;
  }

  else
  {
    placeholderContexts = 0;
  }

  v10 = [(NSMutableSet *)placeholderContexts containsObject:contextCopy];
  if (v10)
  {
    [(_UICollectionViewDragAndDropController *)self placeholderContextNeedsCellUpdate:contextCopy];
    if (contextCopy)
    {
      v11 = contextCopy[1];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    v14 = [(_UICollectionViewShadowUpdatesController *)self _findShadowUpdateForIdentifier:v12 inShadowUpdates:_shadowUpdates];

    updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    _indexPath = [(UICollectionViewUpdateItem *)v14 _indexPath];
    if (v14)
    {
      v17 = v14[11];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = [updateMap initialIndexPathForIndexPath:_indexPath beforeUpdateWithIdentifier:v18];

    if (!v19)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1419 description:@"UICollectionView internal inconsistency exception: could not locate placeholder insertion location; this should never be nil."];
    }

    v20 = [(_UICollectionViewDragAndDropController *)self placeholderContextDidDismiss:contextCopy];
    v21 = [[UICollectionViewUpdateItem alloc] initWithAction:0 forIndexPath:v20];
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v23 = collectionView;
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
    v31 = collectionView;
    v32 = v19;
    v33 = v21;
    v34 = updatesCopy;
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

- (void)_performCancelDropToIndexPath:(void *)path forDragItem:
{
  if (self)
  {
    pathCopy = path;
    v6 = a2;
    v7 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDestinationIndexPath:v6 dragItem:pathCopy];

    [(_UICollectionViewDropCoordinatorItem *)v7 setShouldRemainInHierarchy:1];
    [self _addDropCoordinatorItem:v7];
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
  currentDropSession = [(_UICollectionViewDragDestinationController *)&self->_destinationController->super.isa currentDropSession];
  items = [currentDropSession items];

  obj = items;
  v6 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)dropItem:(id)item toPlaceholderInsertedAtIndexPath:(id)path withReuseIdentifier:(id)identifier cellUpdateHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  identifierCopy = identifier;
  pathCopy = path;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1475 description:@"Please pass an object of type UIDragItem."];
  }

  v15 = [(UICollectionViewPlaceholder *)[UICollectionViewDropPlaceholder alloc] initWithInsertionIndexPath:pathCopy reuseIdentifier:identifierCopy];

  [(UICollectionViewPlaceholder *)v15 setCellUpdateHandler:handlerCopy];
  v16 = [(_UICollectionViewDragAndDropController *)self dropItem:itemCopy toPlaceholder:v15];

  return v16;
}

- (id)dropItem:(id)item toPlaceholder:(id)placeholder
{
  itemCopy = item;
  placeholderCopy = placeholder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1483 description:@"Please pass an object of type UIDragItem."];
  }

  insertionIndexPath = [placeholderCopy insertionIndexPath];
  v10 = [(_UICollectionViewDragAndDropController *)self _presentationIndexPathForIndexPath:insertionIndexPath allowingAppendingInserts:1];

  v11 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDestinationIndexPath:v10 dragItem:itemCopy placeholderConfiguration:placeholderCopy];
  [(_UICollectionViewDragAndDropController *)self _addDropCoordinatorItem:v11];
  cellReuseIdentifier = [placeholderCopy cellReuseIdentifier];
  cellUpdateHandler = [placeholderCopy cellUpdateHandler];

  v14 = [(_UICollectionViewDragAndDropController *)self insertPlaceholderForItemAtIndexPath:v10 forDragItem:itemCopy reuseIdentifier:cellReuseIdentifier cellUpdateHandler:cellUpdateHandler];

  return v14;
}

- (id)dropItem:(id)item toItemAtIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1495 description:@"Please pass an object of type UIDragItem."];
  }

  v9 = [(_UICollectionViewDragAndDropController *)self _presentationIndexPathForIndexPath:pathCopy allowingAppendingInserts:1];
  v10 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDestinationIndexPath:v9 dragItem:itemCopy];
  [(_UICollectionViewDragAndDropController *)self _addDropCoordinatorItem:v10];

  return v10;
}

- (id)dropItem:(id)item intoItemAtIndexPath:(id)path rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1504 description:@"Please pass an object of type UIDragItem."];
  }

  v14 = [(_UICollectionViewDragAndDropController *)self _presentationIndexPathForIndexPath:pathCopy allowingAppendingInserts:1];
  defaultAnimationHandlers = [(_UICollectionViewDragAndDropController *)self defaultAnimationHandlers];
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v17 = [collectionView _cellForItemAtIndexPath:v14];

  if (v17)
  {
    [itemCopy _visibleDropItemSize];
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
    v32 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDragItem:itemCopy target:v31];
    [(_UICollectionViewDropCoordinatorItem *)v32 setDestinationIndexPath:v14];
    [(_UICollectionViewDropCoordinatorItem *)v32 setShouldRemainInHierarchy:1];
    [(_UICollectionViewDragAndDropController *)self _addDropCoordinatorItem:v32];

    v33 = [(_UICollectionViewDragAndDropController *)self _cellAppearanceStateForIndexPath:v14];
    v34 = v33;
    if (v33)
    {
      [v33 setDragState:5];
    }

    defaultAnimationHandlers = v32;
  }

  return defaultAnimationHandlers;
}

- (id)dropItem:(id)item toTarget:(id)target
{
  itemCopy = item;
  targetCopy = target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1537 description:@"Please pass an object of type UIDragItem."];
  }

  v9 = [[_UICollectionViewDropCoordinatorItem alloc] initWithDragItem:itemCopy target:targetCopy];

  [(_UICollectionViewDragAndDropController *)self _addDropCoordinatorItem:v9];

  return v9;
}

- (id)dropToPlaceholderCellAtIndexPath:(id)path reuseIdentifier:(id)identifier forDragItem:(id)item cellUpdateHandler:(id)handler
{
  pathCopy = path;
  identifierCopy = identifier;
  itemCopy = item;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1550 description:@"Please pass an object of type UIDragItem."];
  }

  v15 = [(_UICollectionViewDragAndDropController *)self dropItem:itemCopy toPlaceholderInsertedAtIndexPath:pathCopy withReuseIdentifier:identifierCopy cellUpdateHandler:handlerCopy];

  return v15;
}

- (void)dropToLocation:(CGPoint)location inContainerView:(id)view withTransform:(CGAffineTransform *)transform forDragItem:(id)item
{
  y = location.y;
  x = location.x;
  itemCopy = item;
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewDragAndDropController.m" lineNumber:1563 description:@"Please pass an object of type UIDragItem."];
  }

  v14 = [UIDragPreviewTarget alloc];
  v15 = *&transform->c;
  v19[0] = *&transform->a;
  v19[1] = v15;
  v19[2] = *&transform->tx;
  v16 = [(UIPreviewTarget *)v14 initWithContainer:viewCopy center:v19 transform:x, y];

  v17 = [(_UICollectionViewDragAndDropController *)self dropItem:itemCopy toTarget:v16];
}

@end