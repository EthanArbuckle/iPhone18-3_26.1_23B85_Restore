@interface _UICollectionViewDragSourceController
- (BOOL)_delegateImplementsSelector:(SEL)a3;
- (BOOL)dragInteraction:(id)a3 prefersFullSizePreviewsForSession:(id)a4;
- (BOOL)dragInteraction:(id)a3 sessionAllowsMoveOperation:(id)a4;
- (BOOL)dragInteraction:(id)a3 sessionIsRestrictedToDraggingApplication:(id)a4;
- (BOOL)isActive;
- (NSString)description;
- (_UICollectionViewDragSourceController)initWithCollectionView:(id)a3 delegate:(id)a4;
- (id)_dragDelegateActual;
- (id)_dragDelegateProxy;
- (id)_dragInteraction:(id)a3 sessionPropertiesForSession:(id)a4;
- (id)_dragSourceDelegateActual;
- (id)_dragSourceDelegateProxy;
- (id)_filterCandidateIndexPaths:(id)a3 forUserSelectedIndexPath:(id)a4 session:(id)a5;
- (id)_previewParametersForItemAtIndexPath:(id)a3;
- (id)_queryForItemsFromClientForSession:(id)a3 dataSourceIndexPath:(id)a4 location:(CGPoint)a5 isInitialQuery:(BOOL)a6;
- (id)dragFromIndexPath;
- (id)dragFromIndexPaths;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragSession;
- (id)indexPathForDragItem:(id *)a1;
- (int64_t)_dataOwnerForDragSession:(id)a3 atIndexPath:(id)a4;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (uint64_t)currentSessionItemCount;
- (uint64_t)dragItemsCreatedForReordering;
- (void)_addDragItemsToExistingSession:(id)a3 forDataSourceIndexPath:(id)a4;
- (void)_configureInteraction;
- (void)_sessionWillBegin:(id)a3 forDragInteraction:(id)a4;
- (void)attemptToBeginDragImmediatelyWithTouch:(uint64_t)a1;
- (void)deactivate;
- (void)dealloc;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 willAddItems:(id)a5 forInteraction:(id)a6;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)dragState;
- (void)rebaseForUpdates:(void *)a1;
- (void)sessionState;
- (void)setDragInteractionEnabled:(uint64_t)a1;
- (void)setDragState:(uint64_t)a1;
- (void)setSessionState:(uint64_t)a1;
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
  if (!a1)
  {
    return 0;
  }

  v1 = [(_UICollectionViewDragSourceController *)a1 sessionState];
  if (v1)
  {
    v2 = v1[1] != 0;
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
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      v4 = objc_alloc_init(_UICollectionViewDragSourceControllerSessionState);
      v5 = v2[4];
      v2[4] = v4;

      v3 = v2[4];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)deactivate
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));

    if (WeakRetained)
    {
      v3 = objc_loadWeakRetained((a1 + 8));
      v4 = objc_loadWeakRetained((a1 + 16));
      [v3 removeInteraction:v4];

      objc_storeWeak((a1 + 16), 0);
    }
  }
}

- (_UICollectionViewDragSourceController)initWithCollectionView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UICollectionViewDragSourceController;
  v8 = [(_UICollectionViewDragSourceController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_collectionView, v6);
    objc_storeWeak(&v9->_delegate, v7);
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

  v7 = [(_UICollectionViewDragSourceController *)self sessionState];
  v8 = [(_UICollectionViewDragSourceController *)self dragState];
  v9 = [v3 stringWithFormat:@"<%@:%p cv = %p; sessionState = %@; dragState = %@>", v5, self, WeakRetained, v7, v8];;

  return v9;
}

- (void)dragState
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      v4 = objc_alloc_init(_UICollectionViewDragSourceControllerDragState);
      v5 = v2[5];
      v2[5] = v4;

      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)dragSession
{
  if (a1)
  {
    v1 = [(_UICollectionViewDragSourceController *)a1 sessionState];
    v2 = v1;
    if (v1)
    {
      v3 = *(v1 + 8);
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
  if (!a1)
  {
    return 0;
  }

  v2 = [(_UICollectionViewDragSourceController *)a1 sessionState];
  if (!v2)
  {
    v5 = 0;
    v3 = 0;
LABEL_7:

    return v3;
  }

  v3 = v2[1];

  if (v3)
  {
    v4 = [(_UICollectionViewDragSourceController *)a1 sessionState];
    v5 = v4;
    if (v4)
    {
      v4 = v4[1];
    }

    v6 = [v4 items];
    v3 = [v6 count];

    goto LABEL_7;
  }

  return v3;
}

- (id)dragFromIndexPaths
{
  if (a1)
  {
    v1 = [(_UICollectionViewDragSourceController *)a1 dragState];
    v2 = [(_UICollectionViewDragSourceControllerDragState *)v1 draggingDataSourceIndexPaths];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)dragFromIndexPath
{
  if (a1)
  {
    v1 = [(_UICollectionViewDragSourceController *)a1 dragState];
    v2 = [(_UICollectionViewDragSourceControllerDragState *)v1 dragFromDataSourceIndexPath];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)dragItemsCreatedForReordering
{
  if (a1)
  {
    v1 = [(_UICollectionViewDragSourceController *)a1 dragState];
    if (v1)
    {
      v2 = v1[8];
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

- (id)indexPathForDragItem:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [(_UICollectionViewDragSourceController *)v2 dragState];
    WeakRetained = objc_loadWeakRetained(v2 + 1);
    v2 = [(_UICollectionViewDragSourceControllerDragState *)v4 dataSourceIndexPathForDragItem:v3 forCollectionView:WeakRetained];
  }

  return v2;
}

- (void)setDragInteractionEnabled:(uint64_t)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained setEnabled:a2];
  }
}

- (void)attemptToBeginDragImmediatelyWithTouch:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained _immediatelyBeginDragWithTouch:v3 completion:0];
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v6 = a4;
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
    [v6 locationInView:WeakRetained];
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
        v12 = [(_UICollectionViewDragSourceController *)self _filterCandidateIndexPaths:v51[5] forUserSelectedIndexPath:v34 session:v6];
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
            v19 = [(_UICollectionViewDragSourceController *)self _queryForItemsFromClientForSession:v6 dataSourceIndexPath:v18 location:1 isInitialQuery:v15, v16];
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
          v27 = [(_UICollectionViewDragSourceController *)self dragState];
          if (v27)
          {
            v27[8] = 1;
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

      v29 = [(_UICollectionViewDragSourceController *)self dragState];
      v30 = [(_UICollectionViewDragSourceControllerDragState *)v29 draggingDataSourceIndexPaths];
      [(_UICollectionViewDragAndDropController *)v28 dragSourceController:v30 didUpdateItemsAtIndexPaths:?];

      _Block_object_dispose(&v50, 8);
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)setSessionState:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), 0);
  }
}

- (void)setDragState:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), 0);
  }
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v6 = a4;
  v7 = [(_UICollectionViewDragSourceController *)self dragState];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [(_UICollectionViewDragSourceControllerDragState *)v7 dataSourceIndexPathForDragItem:v6 forCollectionView:WeakRetained];

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

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UICollectionViewDragSourceController *)self dragState];
  v12 = [(_UICollectionViewDragSourceControllerDragState *)v11 draggingDataSourceIndexPaths];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93___UICollectionViewDragSourceController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v18[3] = &unk_1E70F2F80;
  objc_copyWeak(&v20, &location);
  v13 = v12;
  v19 = v13;
  [v9 addAnimations:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93___UICollectionViewDragSourceController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v15[3] = &unk_1E71004B8;
  objc_copyWeak(&v17, &location);
  v14 = v13;
  v16 = v14;
  [v9 addCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (BOOL)dragInteraction:(id)a3 prefersFullSizePreviewsForSession:(id)a4
{
  v5 = a4;
  v6 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [v8 _collectionView:WeakRetained prefersFullSizePreviewsForDragSession:v5];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  v6 = self;
  v7 = [(_UICollectionViewDragSourceController *)self dragState];
  v9 = [(_UICollectionViewDragSourceControllerDragState *)v7 draggingDataSourceIndexPaths];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&v6->_delegate);
    v6 = WeakRetained;
    if (a5 <= 1)
    {
      if (WeakRetained)
      {
        [(_UICollectionViewDragDestinationController *)*(WeakRetained + 6) dropWasCancelled];
      }
    }
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v15 = a4;
  v6 = [(_UICollectionViewDragSourceController *)self dragState];
  v7 = [(_UICollectionViewDragSourceControllerDragState *)v6 draggingDataSourceIndexPaths];

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

  v9 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
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

    v12 = [v11 _dragDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    [v12 collectionView:self dragSessionDidEnd:v15];
  }

  else
  {
    v13 = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateActual];
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

    v12 = [v11 _dragSourceDelegateProxy];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_collectionView);
    }

    [v12 _collectionView:self dragSessionDidEnd:v15];
  }

LABEL_16:
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = [WeakRetained indexPathForItemAtPoint:{x, y}];

  if (!v12 || (-[_UICollectionViewDragSourceController dragState](self), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, v15 = v12, [v14 dataSourceIndexPathsOfDraggingItems], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v15), v15, v16, v14, (v17 & 1) != 0) || _UIShouldEnforceOpenInRulesInAccountBasedApp() && (v18 = objc_msgSend(v10, "_dataOwner"), v18 != -[_UICollectionViewDragSourceController _dataOwnerForDragSession:atIndexPath:](self, "_dataOwnerForDragSession:atIndexPath:", v10, v12)))
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v19 = [(_UICollectionViewDragSourceController *)self _queryForItemsFromClientForSession:v10 dataSourceIndexPath:v12 location:0 isInitialQuery:x, y];
    [(_UICollectionViewDragSourceController *)self _addDragItemsToExistingSession:v19 forDataSourceIndexPath:v12];
    v20 = [(_UICollectionViewDragSourceController *)self sessionState];
    v21 = v20;
    if (v20 && (v22 = *(v20 + 8)) != 0)
    {
    }

    else
    {
      v24 = [v19 count];

      if (v24)
      {
        [(_UICollectionViewDragSourceController *)self _sessionWillBegin:v10 forDragInteraction:v9];
      }
    }
  }

  return v19;
}

- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  v6 = a4;
  v7 = [(_UICollectionViewDragSourceController *)self sessionState];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 containsObject:v9];

  if (v10)
  {
    v11 = [(_UICollectionViewDragSourceController *)self sessionState];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 8);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else if ([v6 count] == 1)
  {
    v14 = [v6 firstObject];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)dragInteraction:(id)a3 session:(id)a4 willAddItems:(id)a5 forInteraction:(id)a6
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(_UICollectionViewDragSourceController *)self dragFromIndexPaths];
  v8 = [v7 count];
  if (WeakRetained)
  {
    [(_UICollectionViewDragDestinationController *)WeakRetained[6] dragSourceSelectedItemCountDidChangeWithCount:v8];
    [WeakRetained _updatePreferredDraggedCellAppearanceForSessionUpdate];
  }
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v6 = a4;
  v7 = [(_UICollectionViewDragSourceController *)self dragState];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [(_UICollectionViewDragSourceControllerDragState *)v7 dataSourceIndexPathForDragItem:v6 forCollectionView:WeakRetained];

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
      v12 = [v11 window];

      if (v12)
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

        v12 = v15;
      }
    }

    else
    {
      v12 = 0;
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
    v12 = 0;
  }

  return v12;
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(_UICollectionViewDragSourceController *)self dragState];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [(_UICollectionViewDragSourceControllerDragState *)v9 dataSourceIndexPathForDragItem:v7 forCollectionView:WeakRetained];

  if (v11)
  {
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      v18[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [(_UICollectionViewDragAndDropController *)v12 dragSourceController:v13 willBeginAnimatingCancelForItemsAtIndexPaths:v8 withAnimator:?];

      v14 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v18[0] = v11;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [(_UICollectionViewDragAndDropController *)0 dragSourceController:v15 willBeginAnimatingCancelForItemsAtIndexPaths:v8 withAnimator:?];

      v14 = 0;
    }

    [(_UICollectionViewDragAndDropController *)v14 _performCancelDropToIndexPath:v11 forDragItem:v7];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92___UICollectionViewDragSourceController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
    v16[3] = &unk_1E71003B0;
    v16[4] = self;
    v17 = v11;
    [v8 addCompletion:v16];
  }
}

- (BOOL)dragInteraction:(id)a3 sessionAllowsMoveOperation:(id)a4
{
  v5 = a4;
  v6 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [v8 collectionView:WeakRetained dragSessionAllowsMoveOperation:v5];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)dragInteraction:(id)a3 sessionIsRestrictedToDraggingApplication:(id)a4
{
  v5 = a4;
  v6 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [v8 collectionView:WeakRetained dragSessionIsRestrictedToDraggingApplication:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  [v7 locationInView:WeakRetained];
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

  v15 = [(_UICollectionViewDragSourceController *)self _dataOwnerForDragSession:v7 atIndexPath:v14];
  return v15;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v10 = [WeakRetained indexPathForItemAtPoint:{x, y}];

  v11 = [(_UICollectionViewDragSourceController *)self _dataOwnerForDragSession:v8 atIndexPath:v10];
  return v11;
}

- (id)_dragInteraction:(id)a3 sessionPropertiesForSession:(id)a4
{
  v5 = a4;
  v6 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || ((-[_UICollectionViewDragSourceController _dragDelegateProxy](self, "_dragDelegateProxy"), v8 = objc_claimAutoreleasedReturnValue(), !self) ? (WeakRetained = 0) : (WeakRetained = objc_loadWeakRetained(&self->_collectionView)), [v8 _collectionView:WeakRetained dragSessionPropertiesForSession:v5], v10 = objc_claimAutoreleasedReturnValue(), WeakRetained, v8, !v10))
  {
    v11 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v10 = objc_opt_new();
      v13 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
      if (self)
      {
        self = objc_loadWeakRetained(&self->_collectionView);
      }

      [v10 set_supportsSystemDrag:{objc_msgSend(v13, "_collectionView:dragSessionSupportsSystemDrag:", self, v5)}];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (int64_t)_dataOwnerForDragSession:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && ([(_UICollectionViewDragSourceController *)self _dragDelegateActual], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    v10 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v12 = [v10 _collectionView:WeakRetained dataOwnerForDragSession:v6 atIndexPath:v7];
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

  v3 = [WeakRetained _dragDelegateActual];

  return v3;
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

  v3 = [WeakRetained _dragDelegateProxy];

  return v3;
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

  v3 = [WeakRetained _dragSourceDelegateActual];

  return v3;
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

  v3 = [WeakRetained _dragSourceDelegateProxy];

  return v3;
}

- (BOOL)_delegateImplementsSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v5 = [WeakRetained _dragSourceDelegateActual];
  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_collectionView);
    v7 = [v6 _dragSourceDelegateActual];
    v8 = objc_opt_respondsToSelector();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)_addDragItemsToExistingSession:(id)a3 forDataSourceIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __95___UICollectionViewDragSourceController__addDragItemsToExistingSession_forDataSourceIndexPath___block_invoke;
    v14 = &unk_1E71004E0;
    v15 = self;
    v8 = v7;
    v16 = v8;
    [v6 enumerateObjectsUsingBlock:&v11];
    v9 = [(_UICollectionViewDragSourceController *)self dragState];
    v10 = v9;
    if (v8 && v9)
    {
      [*(v9 + 16) addObject:{v8, v11, v12, v13, v14, v15}];
    }
  }
}

- (id)_queryForItemsFromClientForSession:(id)a3 dataSourceIndexPath:(id)a4 location:(CGPoint)a5 isInitialQuery:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v11 = a3;
  v12 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v14 = [WeakRetained indexPathAfterShadowUpdates:v12];

  if (v14)
  {
    v15 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
    if (v6)
    {
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
        if (self)
        {
          self = objc_loadWeakRetained(&self->_collectionView);
        }

        v18 = [v17 collectionView:self itemsForBeginningDragSession:v11 atIndexPath:v14];
LABEL_21:
        v24 = v18;

        goto LABEL_23;
      }

      v20 = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateActual];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v17 = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateProxy];
        if (self)
        {
          self = objc_loadWeakRetained(&self->_collectionView);
        }

        v18 = [v17 _collectionView:self itemsForBeginningDragSession:v11 atIndexPath:v14];
        goto LABEL_21;
      }
    }

    else
    {
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v17 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
        if (self)
        {
          self = objc_loadWeakRetained(&self->_collectionView);
        }

        v18 = [v17 collectionView:self itemsForAddingToDragSession:v11 atIndexPath:v14 point:{x, y}];
        goto LABEL_21;
      }

      v22 = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateActual];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v17 = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateProxy];
        if (self)
        {
          self = objc_loadWeakRetained(&self->_collectionView);
        }

        v18 = [v17 _collectionView:self itemsForAddingToDragSession:v11 atIndexPath:v14 point:{x, y}];
        goto LABEL_21;
      }
    }
  }

  v24 = MEMORY[0x1E695E0F0];
LABEL_23:

  return v24;
}

- (id)_previewParametersForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained _dragDelegateActual];
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

    v9 = [v8 _dragDelegateProxy];
    if (self)
    {
      v10 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v9 collectionView:v10 dragPreviewParametersForItemAtIndexPath:v4];
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

    v13 = [v12 _dragSourceDelegateActual];
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

    v9 = [v8 _dragSourceDelegateProxy];
    if (self)
    {
      v10 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v9 _collectionView:v10 liftingPreviewParametersForItemAtIndexPath:v4];
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

    v17 = [v16 _cellForItemAtIndexPath:v4];

    v18 = [v17 _visiblePathForBackgroundConfiguration];
    if (v18)
    {
      v15 = objc_alloc_init(UIDragPreviewParameters);
      [(UIPreviewParameters *)v15 setVisiblePath:v18];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (void)_sessionWillBegin:(id)a3 forDragInteraction:(id)a4
{
  v16 = a3;
  v6 = [(_UICollectionViewDragSourceController *)self sessionState];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 8), a3);
  }

  v8 = [(_UICollectionViewDragSourceController *)self _dragDelegateActual];
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

    v11 = [WeakRetained _dragDelegateProxy];
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v12 = 0;
    }

    [v11 collectionView:v12 dragSessionWillBegin:v16];
LABEL_15:

    goto LABEL_16;
  }

  v13 = [(_UICollectionViewDragSourceController *)self _dragSourceDelegateActual];
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

    v11 = [WeakRetained _dragSourceDelegateProxy];
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      v12 = 0;
    }

    [v11 _collectionView:v12 dragSessionWillBegin:v16];
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

- (id)_filterCandidateIndexPaths:(id)a3 forUserSelectedIndexPath:(id)a4 session:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v30 = a5;
  if (_UIShouldEnforceOpenInRulesInAccountBasedApp() & 1) != 0 && v9 && (!self ? (v10 = 0) : (v10 = objc_loadWeakRetained(&self->_collectionView)), [v10 _dragDelegateActual], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, v10, (v12))
  {
    v13 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    }

    else
    {
      WeakRetained = 0;
    }

    v15 = [v13 _collectionView:WeakRetained dataOwnerForDragSession:v30 atIndexPath:{v9, v9}];

    v28 = v8;
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = v8;
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
          v22 = [(_UICollectionViewDragSourceController *)self _dragDelegateProxy];
          if (self)
          {
            v23 = objc_loadWeakRetained(&self->_collectionView);
          }

          else
          {
            v23 = 0;
          }

          v24 = [v22 _collectionView:v23 dataOwnerForDragSession:v30 atIndexPath:v21];

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

    v9 = v27;
    v8 = v28;
  }

  else
  {
    v29 = v8;
  }

  return v29;
}

- (void)rebaseForUpdates:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [(_UICollectionViewDragSourceController *)a1 dragState];
    [(_UICollectionViewDragSourceControllerDragState *)v4 rebaseForUpdates:v3];
  }
}

@end