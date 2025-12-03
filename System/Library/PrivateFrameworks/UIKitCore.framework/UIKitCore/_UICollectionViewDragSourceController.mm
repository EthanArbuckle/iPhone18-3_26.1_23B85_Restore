@interface _UICollectionViewDragSourceController
- (BOOL)_delegateImplementsSelector:(SEL)selector;
- (BOOL)dragInteraction:(id)interaction prefersFullSizePreviewsForSession:(id)session;
- (BOOL)dragInteraction:(id)interaction sessionAllowsMoveOperation:(id)operation;
- (BOOL)dragInteraction:(id)interaction sessionIsRestrictedToDraggingApplication:(id)application;
- (BOOL)isActive;
- (NSString)description;
- (_UICollectionViewDragSourceController)initWithCollectionView:(id)view delegate:(id)delegate;
- (id)_dragDelegateActual;
- (id)_dragDelegateProxy;
- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session;
- (id)_dragSourceDelegateActual;
- (id)_dragSourceDelegateProxy;
- (id)_filterCandidateIndexPaths:(id)paths forUserSelectedIndexPath:(id)path session:(id)session;
- (id)_previewParametersForItemAtIndexPath:(id)path;
- (id)_queryForItemsFromClientForSession:(id)session dataSourceIndexPath:(id)path location:(CGPoint)location isInitialQuery:(BOOL)query;
- (id)dragFromIndexPath;
- (id)dragFromIndexPaths;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point;
- (id)dragSession;
- (id)indexPathForDragItem:(id *)item;
- (int64_t)_dataOwnerForDragSession:(id)session atIndexPath:(id)path;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (uint64_t)currentSessionItemCount;
- (uint64_t)dragItemsCreatedForReordering;
- (void)_addDragItemsToExistingSession:(id)session forDataSourceIndexPath:(id)path;
- (void)_configureInteraction;
- (void)_sessionWillBegin:(id)begin forDragInteraction:(id)interaction;
- (void)attemptToBeginDragImmediatelyWithTouch:(uint64_t)touch;
- (void)deactivate;
- (void)dealloc;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)dragState;
- (void)rebaseForUpdates:(void *)updates;
- (void)sessionState;
- (void)setDragInteractionEnabled:(uint64_t)enabled;
- (void)setDragState:(uint64_t)state;
- (void)setSessionState:(uint64_t)state;
@end

@implementation _UICollectionViewDragSourceController

- (void)_configureInteraction
{
  obj = [[UIDragInteraction alloc] initWithDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  [WeakRetained addInteraction:obj];

  if (self)
  {
    objc_storeWeak(&self->_dragInteraction, obj);
  }
}

- (BOOL)isActive
{
  if (!self)
  {
    return 0;
  }

  sessionState = [(_UICollectionViewDragSourceController *)self sessionState];
  if (sessionState)
  {
    v2 = sessionState[1] != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(_UICollectionViewDragSourceController *)self deactivate];
  v3.receiver = self;
  v3.super_class = _UICollectionViewDragSourceController;
  [(_UICollectionViewDragSourceController *)&v3 dealloc];
}

- (void)sessionState
{
  if (self)
  {
    selfCopy = self;
    v3 = self[4];
    if (!v3)
    {
      v4 = objc_alloc_init(_UICollectionViewDragSourceControllerSessionState);
      v5 = selfCopy[4];
      selfCopy[4] = v4;

      v3 = selfCopy[4];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)deactivate
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));

    if (WeakRetained)
    {
      v3 = objc_loadWeakRetained((self + 8));
      v4 = objc_loadWeakRetained((self + 16));
      [v3 removeInteraction:v4];

      objc_storeWeak((self + 16), 0);
    }
  }
}

- (_UICollectionViewDragSourceController)initWithCollectionView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _UICollectionViewDragSourceController;
  v8 = [(_UICollectionViewDragSourceController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_collectionView, viewCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    [(_UICollectionViewDragSourceController *)v9 _configureInteraction];
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  sessionState = [(_UICollectionViewDragSourceController *)self sessionState];
  dragState = [(_UICollectionViewDragSourceController *)self dragState];
  v9 = [v3 stringWithFormat:@"<%@:%p cv = %p; sessionState = %@; dragState = %@>", v5, self, WeakRetained, sessionState, dragState];;

  return v9;
}

- (void)dragState
{
  if (self)
  {
    selfCopy = self;
    v3 = self[5];
    if (!v3)
    {
      v4 = objc_alloc_init(_UICollectionViewDragSourceControllerDragState);
      v5 = selfCopy[5];
      selfCopy[5] = v4;

      v3 = selfCopy[5];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)dragSession
{
  if (self)
  {
    sessionState = [(_UICollectionViewDragSourceController *)self sessionState];
    v2 = sessionState;
    if (sessionState)
    {
      v3 = *(sessionState + 8);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)currentSessionItemCount
{
  if (!self)
  {
    return 0;
  }

  sessionState = [(_UICollectionViewDragSourceController *)self sessionState];
  if (!sessionState)
  {
    v5 = 0;
    v3 = 0;
LABEL_7:

    return v3;
  }

  v3 = sessionState[1];

  if (v3)
  {
    sessionState2 = [(_UICollectionViewDragSourceController *)self sessionState];
    v5 = sessionState2;
    if (sessionState2)
    {
      sessionState2 = sessionState2[1];
    }

    items = [sessionState2 items];
    v3 = [items count];

    goto LABEL_7;
  }

  return v3;
}

- (id)dragFromIndexPaths
{
  if (self)
  {
    dragState = [(_UICollectionViewDragSourceController *)self dragState];
    draggingDataSourceIndexPaths = [(_UICollectionViewDragSourceControllerDragState *)dragState draggingDataSourceIndexPaths];
  }

  else
  {
    draggingDataSourceIndexPaths = 0;
  }

  return draggingDataSourceIndexPaths;
}

- (id)dragFromIndexPath
{
  if (self)
  {
    dragState = [(_UICollectionViewDragSourceController *)self dragState];
    dragFromDataSourceIndexPath = [(_UICollectionViewDragSourceControllerDragState *)dragState dragFromDataSourceIndexPath];
  }

  else
  {
    dragFromDataSourceIndexPath = 0;
  }

  return dragFromDataSourceIndexPath;
}

- (uint64_t)dragItemsCreatedForReordering
{
  if (self)
  {
    dragState = [(_UICollectionViewDragSourceController *)self dragState];
    if (dragState)
    {
      v2 = dragState[8];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)indexPathForDragItem:(id *)item
{
  itemCopy = item;
  if (item)
  {
    v3 = a2;
    dragState = [(_UICollectionViewDragSourceController *)itemCopy dragState];
    WeakRetained = objc_loadWeakRetained(itemCopy + 1);
    itemCopy = [(_UICollectionViewDragSourceControllerDragState *)dragState dataSourceIndexPathForDragItem:v3 forCollectionView:WeakRetained];
  }

  return itemCopy;
}

- (void)setDragInteractionEnabled:(uint64_t)enabled
{
  if (enabled)
  {
    WeakRetained = objc_loadWeakRetained((enabled + 16));
    [WeakRetained setEnabled:a2];
  }
}

- (void)attemptToBeginDragImmediatelyWithTouch:(uint64_t)touch
{
  if (touch)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((touch + 16));
    [WeakRetained _immediatelyBeginDragWithTouch:v3 completion:0];
  }
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v59 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  sessionCopy = session;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v35 = WeakRetained;
  if ([WeakRetained _canBeginReorderingItem])
  {
    [_UICollectionViewDragSourceController setSessionState:?];
    [_UICollectionViewDragSourceController setDragState:?];
    [sessionCopy locationInView:WeakRetained];
    v34 = [WeakRetained indexPathForItemAtPoint:?];
    v8 = MEMORY[0x1E695E0F0];
    if (v34)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v50 = 0;
      v51 = &v50;
      v52 = 0x3032000000;
      v53 = __Block_byref_object_copy__43;
      v54 = __Block_byref_object_dispose__43;
      v55 = v8;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __82___UICollectionViewDragSourceController_dragInteraction_itemsForBeginningSession___block_invoke;
      v47[3] = &unk_1E70FCDA0;
      v49 = &v50;
      v48 = WeakRetained;
      v37 = v48;
      [v48 performUsingPresentationValues:v47];
      if ([v51[5] containsObject:v34] && (v10 = objc_loadWeakRetained(&self->_delegate)) != 0 && (v11 = v10[41], v10, (v11 & 1) != 0))
      {
        v12 = [(_UICollectionViewDragSourceController *)self _filterCandidateIndexPaths:v51[5] forUserSelectedIndexPath:v34 session:sessionCopy];
        [v9 addObjectsFromArray:v12];
      }

      else
      {
        [v9 addObject:v34];
      }

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v9;
      v13 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (v13)
      {
        v14 = *v44;
        v15 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v44 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            v19 = [(_UICollectionViewDragSourceController *)self _queryForItemsFromClientForSession:sessionCopy dataSourceIndexPath:v18 location:1 isInitialQuery:v15, v16];
            [(_UICollectionViewDragSourceController *)self _addDragItemsToExistingSession:v19 forDataSourceIndexPath:v18];
            [v8 addObjectsFromArray:v19];
          }

          v13 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
        }

        while (v13);
      }

      if (![v8 count])
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v36 = obj;
        v20 = [v36 countByEnumeratingWithState:&v39 objects:v57 count:16];
        if (v20)
        {
          v21 = *v40;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v40 != v21)
              {
                objc_enumerationMutation(v36);
              }

              v23 = *(*(&v39 + 1) + 8 * j);
              if ([v37 _canReorderItemAtIndexPath:v23])
              {
                v24 = objc_alloc_init(MEMORY[0x1E696ACA0]);
                v25 = [[UIDragItem alloc] initWithItemProvider:v24];
                v56 = v25;
                v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
                [(_UICollectionViewDragSourceController *)self _addDragItemsToExistingSession:v26 forDataSourceIndexPath:v23];

                [v8 addObject:v25];
              }
            }

            v20 = [v36 countByEnumeratingWithState:&v39 objects:v57 count:16];
          }

          while (v20);
        }

        if ([v8 count])
        {
          dragState = [(_UICollectionViewDragSourceController *)self dragState];
          if (dragState)
          {
            dragState[8] = 1;
          }
        }
      }

      if (self)
      {
        v28 = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        v28 = 0;
      }

      dragState2 = [(_UICollectionViewDragSourceController *)self dragState];
      draggingDataSourceIndexPaths = [(_UICollectionViewDragSourceControllerDragState *)dragState2 draggingDataSourceIndexPaths];
      [(_UICollectionViewDragAndDropController *)v28 dragSourceController:draggingDataSourceIndexPaths didUpdateItemsAtIndexPaths:?];

      _Block_object_dispose(&v50, 8);
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)setSessionState:(uint64_t)state
{
  if (state)
  {
    objc_storeStrong((state + 32), 0);
  }
}

- (void)setDragState:(uint64_t)state
{
  if (state)
  {
    objc_storeStrong((state + 40), 0);
  }
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  itemCopy = item;
  dragState = [(_UICollectionViewDragSourceController *)self dragState];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [(_UICollectionViewDragSourceControllerDragState *)dragState dataSourceIndexPathForDragItem:itemCopy forCollectionView:WeakRetained];

  if (v9)
  {
    if (self)
    {
      v10 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 cellForItemAtIndexPath:v9];

    if (v11 && ([v11 window], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [(_UICollectionViewDragSourceController *)self _previewParametersForItemAtIndexPath:v9];
      v14 = [UITargetedDragPreview alloc];
      if (v13)
      {
        v15 = [(UITargetedPreview *)v14 initWithView:v11 parameters:v13];
      }

      else
      {
        v15 = [(UITargetedDragPreview *)v14 initWithView:v11];
      }

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  interactionCopy = interaction;
  animatorCopy = animator;
  sessionCopy = session;
  dragState = [(_UICollectionViewDragSourceController *)self dragState];
  draggingDataSourceIndexPaths = [(_UICollectionViewDragSourceControllerDragState *)dragState draggingDataSourceIndexPaths];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93___UICollectionViewDragSourceController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v18[3] = &unk_1E70F2F80;
  objc_copyWeak(&v20, &location);
  v13 = draggingDataSourceIndexPaths;
  v19 = v13;
  [animatorCopy addAnimations:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93___UICollectionViewDragSourceController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v15[3] = &unk_1E71004B8;
  objc_copyWeak(&v17, &location);
  v14 = v13;
  v16 = v14;
  [animatorCopy addCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (BOOL)dragInteraction:(id)interaction prefersFullSizePreviewsForSession:(id)session
{
  sessionCopy = session;
  _dragDelegateActual = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [_dragDelegateProxy _collectionView:WeakRetained prefersFullSizePreviewsForDragSession:sessionCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  selfCopy = self;
  dragState = [(_UICollectionViewDragSourceController *)self dragState];
  draggingDataSourceIndexPaths = [(_UICollectionViewDragSourceControllerDragState *)dragState draggingDataSourceIndexPaths];

  if (selfCopy)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    selfCopy = WeakRetained;
    if (operation <= 1)
    {
      if (WeakRetained)
      {
        [(_UICollectionViewDragDestinationController *)*(WeakRetained + 6) dropWasCancelled];
      }
    }
  }
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  sessionCopy = session;
  dragState = [(_UICollectionViewDragSourceController *)self dragState];
  draggingDataSourceIndexPaths = [(_UICollectionViewDragSourceControllerDragState *)dragState draggingDataSourceIndexPaths];

  [_UICollectionViewDragSourceController setSessionState:?];
  [_UICollectionViewDragSourceController setDragState:?];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [_UICollectionViewDragAndDropController dragSourceController:? didEndForItemsAtIndexPaths:?];

  _dragDelegateActual = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    if (self)
    {
      v11 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v11 = 0;
    }

    _dragDelegateProxy = [v11 _dragDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    [_dragDelegateProxy collectionView:self dragSessionDidEnd:sessionCopy];
  }

  else
  {
    _dragSourceDelegateActual = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateActual];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (self)
    {
      v11 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v11 = 0;
    }

    _dragDelegateProxy = [v11 _dragSourceDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    [_dragDelegateProxy _collectionView:self dragSessionDidEnd:sessionCopy];
  }

LABEL_16:
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  sessionCopy = session;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = [WeakRetained indexPathForItemAtPoint:{x, y}];

  if (!v12 || (-[_UICollectionViewDragSourceController dragState](self), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, v15 = v12, [v14 dataSourceIndexPathsOfDraggingItems], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v15), v15, v16, v14, (v17 & 1) != 0) || _UIShouldEnforceOpenInRulesInAccountBasedApp() && (v18 = objc_msgSend(sessionCopy, "_dataOwner"), v18 != -[_UICollectionViewDragSourceController _dataOwnerForDragSession:atIndexPath:](self, "_dataOwnerForDragSession:atIndexPath:", sessionCopy, v12)))
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v19 = [(_UICollectionViewDragSourceController *)self _queryForItemsFromClientForSession:sessionCopy dataSourceIndexPath:v12 location:0 isInitialQuery:x, y];
    [(_UICollectionViewDragSourceController *)self _addDragItemsToExistingSession:v19 forDataSourceIndexPath:v12];
    sessionState = [(_UICollectionViewDragSourceController *)self sessionState];
    v21 = sessionState;
    if (sessionState && (v22 = *(sessionState + 8)) != 0)
    {
    }

    else
    {
      v24 = [v19 count];

      if (v24)
      {
        [(_UICollectionViewDragSourceController *)self _sessionWillBegin:sessionCopy forDragInteraction:interactionCopy];
      }
    }
  }

  return v19;
}

- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point
{
  itemsCopy = items;
  sessionState = [(_UICollectionViewDragSourceController *)self sessionState];
  v8 = sessionState;
  if (sessionState)
  {
    v9 = *(sessionState + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [itemsCopy containsObject:v9];

  if (v10)
  {
    sessionState2 = [(_UICollectionViewDragSourceController *)self sessionState];
    v12 = sessionState2;
    if (sessionState2)
    {
      v13 = *(sessionState2 + 8);
    }

    else
    {
      v13 = 0;
    }

    firstObject = v13;
  }

  else if ([itemsCopy count] == 1)
  {
    firstObject = [itemsCopy firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  dragFromIndexPaths = [(_UICollectionViewDragSourceController *)self dragFromIndexPaths];
  v8 = [dragFromIndexPaths count];
  if (WeakRetained)
  {
    [(_UICollectionViewDragDestinationController *)WeakRetained[6] dragSourceSelectedItemCountDidChangeWithCount:v8];
    [WeakRetained _updatePreferredDraggedCellAppearanceForSessionUpdate];
  }
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  itemCopy = item;
  dragState = [(_UICollectionViewDragSourceController *)self dragState];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [(_UICollectionViewDragSourceControllerDragState *)dragState dataSourceIndexPathForDragItem:itemCopy forCollectionView:WeakRetained];

  if (v9)
  {
    if (self)
    {
      v10 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 cellForItemAtIndexPath:v9];

    if (v11)
    {
      window = [v11 window];

      if (window)
      {
        v13 = [(_UICollectionViewDragSourceController *)self _previewParametersForItemAtIndexPath:v9];
        v14 = [UITargetedDragPreview alloc];
        if (v13)
        {
          v15 = [(UITargetedPreview *)v14 initWithView:v11 parameters:v13];
        }

        else
        {
          v15 = [(UITargetedDragPreview *)v14 initWithView:v11];
        }

        window = v15;
      }
    }

    else
    {
      window = 0;
    }

    if (self)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v16 = 0;
    }

    [_UICollectionViewDragAndDropController dragSourceController:v16 didSupplyCancellationPreviewForItemAtIndexPath:?];
  }

  else
  {
    window = 0;
  }

  return window;
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v18[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  animatorCopy = animator;
  dragState = [(_UICollectionViewDragSourceController *)self dragState];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [(_UICollectionViewDragSourceControllerDragState *)dragState dataSourceIndexPathForDragItem:itemCopy forCollectionView:WeakRetained];

  if (v11)
  {
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      v18[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [(_UICollectionViewDragAndDropController *)v12 dragSourceController:v13 willBeginAnimatingCancelForItemsAtIndexPaths:animatorCopy withAnimator:?];

      v14 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v18[0] = v11;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [(_UICollectionViewDragAndDropController *)0 dragSourceController:v15 willBeginAnimatingCancelForItemsAtIndexPaths:animatorCopy withAnimator:?];

      v14 = 0;
    }

    [(_UICollectionViewDragAndDropController *)v14 _performCancelDropToIndexPath:v11 forDragItem:itemCopy];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92___UICollectionViewDragSourceController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
    v16[3] = &unk_1E71003B0;
    v16[4] = self;
    v17 = v11;
    [animatorCopy addCompletion:v16];
  }
}

- (BOOL)dragInteraction:(id)interaction sessionAllowsMoveOperation:(id)operation
{
  operationCopy = operation;
  _dragDelegateActual = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [_dragDelegateProxy collectionView:WeakRetained dragSessionAllowsMoveOperation:operationCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)dragInteraction:(id)interaction sessionIsRestrictedToDraggingApplication:(id)application
{
  applicationCopy = application;
  _dragDelegateActual = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [_dragDelegateProxy collectionView:WeakRetained dragSessionIsRestrictedToDraggingApplication:applicationCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  [sessionCopy locationInView:WeakRetained];
  v10 = v9;
  v12 = v11;

  if (self)
  {
    v13 = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 indexPathForItemAtPoint:{v10, v12}];

  v15 = [(_UICollectionViewDragSourceController *)self _dataOwnerForDragSession:sessionCopy atIndexPath:v14];
  return v15;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sessionCopy = session;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v10 = [WeakRetained indexPathForItemAtPoint:{x, y}];

  v11 = [(_UICollectionViewDragSourceController *)self _dataOwnerForDragSession:sessionCopy atIndexPath:v10];
  return v11;
}

- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session
{
  sessionCopy = session;
  _dragDelegateActual = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || ((-[_UICollectionViewDragSourceController _dragDelegateProxy](self, "_dragDelegateProxy"), v8 = objc_claimAutoreleasedReturnValue(), !self) ? (WeakRetained = 0) : (WeakRetained = objc_loadWeakRetained(&self->_collectionView)), [v8 _collectionView:WeakRetained dragSessionPropertiesForSession:sessionCopy], v10 = objc_claimAutoreleasedReturnValue(), WeakRetained, v8, !v10))
  {
    _dragDelegateActual2 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v10 = objc_opt_new();
      _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
      if (self)
      {
        self = objc_loadWeakRetained(&self->_collectionView);
      }

      [v10 set_supportsSystemDrag:{objc_msgSend(_dragDelegateProxy, "_collectionView:dragSessionSupportsSystemDrag:", self, sessionCopy)}];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (int64_t)_dataOwnerForDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  pathCopy = path;
  if (pathCopy && ([(_UICollectionViewDragSourceController *)self _dragDelegateActual], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v12 = [_dragDelegateProxy _collectionView:WeakRetained dataOwnerForDragSession:sessionCopy atIndexPath:pathCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_dragDelegateActual
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dragDelegateActual = [WeakRetained _dragDelegateActual];

  return _dragDelegateActual;
}

- (id)_dragDelegateProxy
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dragDelegateProxy = [WeakRetained _dragDelegateProxy];

  return _dragDelegateProxy;
}

- (id)_dragSourceDelegateActual
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dragSourceDelegateActual = [WeakRetained _dragSourceDelegateActual];

  return _dragSourceDelegateActual;
}

- (id)_dragSourceDelegateProxy
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dragSourceDelegateProxy = [WeakRetained _dragSourceDelegateProxy];

  return _dragSourceDelegateProxy;
}

- (BOOL)_delegateImplementsSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  _dragSourceDelegateActual = [WeakRetained _dragSourceDelegateActual];
  if (_dragSourceDelegateActual)
  {
    v6 = objc_loadWeakRetained(&self->_collectionView);
    _dragSourceDelegateActual2 = [v6 _dragSourceDelegateActual];
    v8 = objc_opt_respondsToSelector();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)_addDragItemsToExistingSession:(id)session forDataSourceIndexPath:(id)path
{
  sessionCopy = session;
  pathCopy = path;
  if ([sessionCopy count])
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __95___UICollectionViewDragSourceController__addDragItemsToExistingSession_forDataSourceIndexPath___block_invoke;
    v14 = &unk_1E71004E0;
    selfCopy = self;
    v8 = pathCopy;
    v16 = v8;
    [sessionCopy enumerateObjectsUsingBlock:&v11];
    dragState = [(_UICollectionViewDragSourceController *)self dragState];
    v10 = dragState;
    if (v8 && dragState)
    {
      [*(dragState + 16) addObject:{v8, v11, v12, v13, v14, selfCopy}];
    }
  }
}

- (id)_queryForItemsFromClientForSession:(id)session dataSourceIndexPath:(id)path location:(CGPoint)location isInitialQuery:(BOOL)query
{
  queryCopy = query;
  y = location.y;
  x = location.x;
  sessionCopy = session;
  pathCopy = path;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v14 = [WeakRetained indexPathAfterShadowUpdates:pathCopy];

  if (v14)
  {
    _dragDelegateActual = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
    if (queryCopy)
    {
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
        if (self)
        {
          self = objc_loadWeakRetained(&self->_collectionView);
        }

        v18 = [_dragDelegateProxy collectionView:self itemsForBeginningDragSession:sessionCopy atIndexPath:v14];
LABEL_21:
        v24 = v18;

        goto LABEL_23;
      }

      _dragSourceDelegateActual = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateActual];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateProxy];
        if (self)
        {
          self = objc_loadWeakRetained(&self->_collectionView);
        }

        v18 = [_dragDelegateProxy _collectionView:self itemsForBeginningDragSession:sessionCopy atIndexPath:v14];
        goto LABEL_21;
      }
    }

    else
    {
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
        if (self)
        {
          self = objc_loadWeakRetained(&self->_collectionView);
        }

        v18 = [_dragDelegateProxy collectionView:self itemsForAddingToDragSession:sessionCopy atIndexPath:v14 point:{x, y}];
        goto LABEL_21;
      }

      _dragSourceDelegateActual2 = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateActual];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateProxy];
        if (self)
        {
          self = objc_loadWeakRetained(&self->_collectionView);
        }

        v18 = [_dragDelegateProxy _collectionView:self itemsForAddingToDragSession:sessionCopy atIndexPath:v14 point:{x, y}];
        goto LABEL_21;
      }
    }
  }

  v24 = MEMORY[0x1E695E0F0];
LABEL_23:

  return v24;
}

- (id)_previewParametersForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  _dragDelegateActual = [WeakRetained _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (self)
    {
      v8 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v8 = 0;
    }

    _dragDelegateProxy = [v8 _dragDelegateProxy];
    if (self)
    {
      v10 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v10 = 0;
    }

    v11 = [_dragDelegateProxy collectionView:v10 dragPreviewParametersForItemAtIndexPath:pathCopy];
  }

  else
  {
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v12 = 0;
    }

    _dragSourceDelegateActual = [v12 _dragSourceDelegateActual];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }

    if (self)
    {
      v8 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v8 = 0;
    }

    _dragDelegateProxy = [v8 _dragSourceDelegateProxy];
    if (self)
    {
      v10 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v10 = 0;
    }

    v11 = [_dragDelegateProxy _collectionView:v10 liftingPreviewParametersForItemAtIndexPath:pathCopy];
  }

  v15 = v11;

  if (!v15)
  {
LABEL_18:
    if (self)
    {
      v16 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 _cellForItemAtIndexPath:pathCopy];

    _visiblePathForBackgroundConfiguration = [v17 _visiblePathForBackgroundConfiguration];
    if (_visiblePathForBackgroundConfiguration)
    {
      v15 = objc_alloc_init(UIDragPreviewParameters);
      [(UIPreviewParameters *)v15 setVisiblePath:_visiblePathForBackgroundConfiguration];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (void)_sessionWillBegin:(id)begin forDragInteraction:(id)interaction
{
  beginCopy = begin;
  sessionState = [(_UICollectionViewDragSourceController *)self sessionState];
  v7 = sessionState;
  if (sessionState)
  {
    objc_storeStrong((sessionState + 8), begin);
  }

  _dragDelegateActual = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    _dragDelegateProxy = [WeakRetained _dragDelegateProxy];
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v12 = 0;
    }

    [_dragDelegateProxy collectionView:v12 dragSessionWillBegin:beginCopy];
LABEL_15:

    goto LABEL_16;
  }

  _dragSourceDelegateActual = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateActual];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    _dragDelegateProxy = [WeakRetained _dragSourceDelegateProxy];
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v12 = 0;
    }

    [_dragDelegateProxy _collectionView:v12 dragSessionWillBegin:beginCopy];
    goto LABEL_15;
  }

LABEL_16:
  if (self)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    self = v15;
    if (v15)
    {
      [(_UICollectionViewDragSourceController *)v15 _incrementSessionRefCount];
    }
  }
}

- (id)_filterCandidateIndexPaths:(id)paths forUserSelectedIndexPath:(id)path session:(id)session
{
  v36 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  pathCopy = path;
  sessionCopy = session;
  if (_UIShouldEnforceOpenInRulesInAccountBasedApp() & 1) != 0 && pathCopy && (!self ? (v10 = 0) : (v10 = objc_loadWeakRetained(&self->_collectionView)), [v10 _dragDelegateActual], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, v10, (v12))
  {
    _dragDelegateProxy = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v15 = [_dragDelegateProxy _collectionView:WeakRetained dataOwnerForDragSession:sessionCopy atIndexPath:{pathCopy, pathCopy}];

    v28 = pathsCopy;
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = pathsCopy;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        v20 = 0;
        do
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * v20);
          _dragDelegateProxy2 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
          if (self)
          {
            v23 = objc_loadWeakRetained(&self->_collectionView);
          }

          else
          {
            v23 = 0;
          }

          v24 = [_dragDelegateProxy2 _collectionView:v23 dataOwnerForDragSession:sessionCopy atIndexPath:v21];

          if (v24 == v15)
          {
            [v29 addObject:v21];
          }

          ++v20;
        }

        while (v18 != v20);
        v25 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
        v18 = v25;
      }

      while (v25);
    }

    pathCopy = v27;
    pathsCopy = v28;
  }

  else
  {
    v29 = pathsCopy;
  }

  return v29;
}

- (void)rebaseForUpdates:(void *)updates
{
  if (updates)
  {
    v3 = a2;
    dragState = [(_UICollectionViewDragSourceController *)updates dragState];
    [(_UICollectionViewDragSourceControllerDragState *)dragState rebaseForUpdates:v3];
  }
}

@end