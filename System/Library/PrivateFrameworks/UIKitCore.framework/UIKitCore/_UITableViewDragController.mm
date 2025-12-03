@interface _UITableViewDragController
- (BOOL)canProvideItemsForDragAtPoint:(CGPoint)point;
- (BOOL)dragInteraction:(id)interaction prefersFullSizePreviewsForSession:(id)session;
- (BOOL)dragInteraction:(id)interaction sessionAllowsMoveOperation:(id)operation;
- (BOOL)dragInteraction:(id)interaction sessionIsRestrictedToDraggingApplication:(id)application;
- (BOOL)isActive;
- (NSIndexPath)draggedIndexPath;
- (UITableViewCell)draggedCell;
- (_UITableViewDragController)initWithTableView:(id)view;
- (_UITableViewDragControllerDelegate)tableView;
- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)beginDragForTentativeRows;
- (void)beginDragOfRowsForSession:(id)session notifyDelegate:(BOOL)delegate;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)forceReset;
- (void)immediatelyBeginDragWithTouch:(id)touch;
- (void)resetDragState;
- (void)setupDragInteraction;
- (void)uninstallFromTableView;
- (void)updateDragInteractionEnabledState;
@end

@implementation _UITableViewDragController

- (_UITableViewDragController)initWithTableView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"tableView != nil"}];
  }

  v16.receiver = self;
  v16.super_class = _UITableViewDragController;
  v6 = [(_UITableViewDragController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_tableView, viewCopy);
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    indexPaths = v7->_indexPaths;
    v7->_indexPaths = orderedSet;

    orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
    tentativeIndexPaths = v7->_tentativeIndexPaths;
    v7->_tentativeIndexPaths = orderedSet2;

    v7->_clientEnabledState = 0;
    v7->_forceEnabledForReordering = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    cellsAnimatingCancel = v7->_cellsAnimatingCancel;
    v7->_cellsAnimatingCancel = strongToStrongObjectsMapTable;

    [(_UITableViewDragController *)v7 resetDragState];
    [(_UITableViewDragController *)v7 setupDragInteraction];
  }

  return v7;
}

- (void)setupDragInteraction
{
  v4 = [[UIDragInteraction alloc] initWithDelegate:self];
  [(_UITableViewDragController *)self setDragInteraction:v4];
  tableView = [(_UITableViewDragController *)self tableView];
  [tableView addInteraction:v4];
}

- (void)updateDragInteractionEnabledState
{
  v3 = +[UIDragInteraction isEnabledByDefault];
  if ([(_UITableViewDragController *)self forceEnabledForReordering])
  {
    v4 = 1;
  }

  else
  {
    clientEnabledState = [(_UITableViewDragController *)self clientEnabledState];
    v6 = clientEnabledState == 1 || v3;
    if (clientEnabledState == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v6;
    }
  }

  dragInteraction = [(_UITableViewDragController *)self dragInteraction];
  [dragInteraction setEnabled:v4];
}

- (void)uninstallFromTableView
{
  [(_UITableViewDragController *)self forceReset];
  tableView = [(_UITableViewDragController *)self tableView];
  dragInteraction = [(_UITableViewDragController *)self dragInteraction];
  [tableView removeInteraction:dragInteraction];
}

- (BOOL)isActive
{
  indexPaths = [(_UITableViewDragController *)self indexPaths];
  if ([indexPaths count])
  {
    v4 = 1;
  }

  else
  {
    dragSession = [(_UITableViewDragController *)self dragSession];
    v4 = dragSession != 0;
  }

  return v4;
}

- (UITableViewCell)draggedCell
{
  indexPaths = [(_UITableViewDragController *)self indexPaths];
  v4 = [indexPaths count];

  if (v4 == 1)
  {
    initiatingCell = [(_UITableViewDragController *)self initiatingCell];
  }

  else
  {
    initiatingCell = 0;
  }

  return initiatingCell;
}

- (NSIndexPath)draggedIndexPath
{
  indexPaths = [(_UITableViewDragController *)self indexPaths];
  v4 = [indexPaths count];

  if (v4 == 1)
  {
    initiatingIndexPath = [(_UITableViewDragController *)self initiatingIndexPath];
  }

  else
  {
    initiatingIndexPath = 0;
  }

  return initiatingIndexPath;
}

- (void)forceReset
{
  indexPaths = [(_UITableViewDragController *)self indexPaths];
  v4 = [indexPaths count];

  if (v4)
  {

    [(_UITableViewDragController *)self resetDragState];
  }
}

- (void)immediatelyBeginDragWithTouch:(id)touch
{
  touchCopy = touch;
  dragInteraction = [(_UITableViewDragController *)self dragInteraction];
  [dragInteraction _immediatelyBeginDragWithTouch:touchCopy completion:0];
}

- (BOOL)canProvideItemsForDragAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tableView = [(_UITableViewDragController *)self tableView];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__191;
  v35 = __Block_byref_object_dispose__191;
  v36 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60___UITableViewDragController_canProvideItemsForDragAtPoint___block_invoke;
  v26[3] = &unk_1E7108E50;
  v28 = &v31;
  v7 = tableView;
  v27 = v7;
  v29 = x;
  v30 = y;
  [v7 _performUsingPresentationValues:v26];
  if (v32[5] && (-[_UITableViewDragController indexPaths](self, "indexPaths"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v32[5]], v8, (v9 & 1) == 0))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__191;
    v24 = __Block_byref_object_dispose__191;
    v25 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60___UITableViewDragController_canProvideItemsForDragAtPoint___block_invoke_2;
    v16[3] = &unk_1E71053E8;
    v18 = &v20;
    v11 = v7;
    v17 = v11;
    v19 = &v31;
    [v11 _performUsingPresentationValues:v16];
    v12 = v21[5];
    if (v12 && ([v12 isUserInteractionEnabled] & 1) != 0 && (objc_msgSend(v11, "_canBeginDragAtPoint:indexPath:", v32[5], x, y) & 1) != 0)
    {
      [(_UITableViewDragController *)self setTentativeInitiatingCell:v21[5]];
      [(_UITableViewDragController *)self setTentativeInitiatingIndexPath:v32[5]];
      indexPaths = [(_UITableViewDragController *)self indexPaths];
      v14 = [indexPaths count];

      if (!v14)
      {
        [(_UITableViewDragController *)self clearTentativeRows];
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v31, 8);
  return v10;
}

- (void)beginDragForTentativeRows
{
  indexPaths = [(_UITableViewDragController *)self indexPaths];
  v5 = [indexPaths count];

  if (!v5)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    initiatingCell = [(_UITableViewDragController *)self initiatingCell];

    if (has_internal_diagnostics)
    {
      if (initiatingCell)
      {
        v16 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *v27 = 0;
          _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "There should not be a cell stored in the initiatingCell property if there are no index paths in the drag.", v27, 2u);
        }
      }
    }

    else if (initiatingCell)
    {
      v22 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1308) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "There should not be a cell stored in the initiatingCell property if there are no index paths in the drag.", buf, 2u);
      }
    }

    v8 = os_variant_has_internal_diagnostics();
    initiatingIndexPath = [(_UITableViewDragController *)self initiatingIndexPath];

    if (v8)
    {
      if (initiatingIndexPath)
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *v25 = 0;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "There should not be a cell stored in the initiatingIndexPath property if there are no index paths in the drag.", v25, 2u);
        }
      }
    }

    else if (initiatingIndexPath)
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A1088) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "There should not be a cell stored in the initiatingIndexPath property if there are no index paths in the drag.", v24, 2u);
      }
    }

    tentativeInitiatingCell = [(_UITableViewDragController *)self tentativeInitiatingCell];
    tentativeInitiatingIndexPath = [(_UITableViewDragController *)self tentativeInitiatingIndexPath];
    v12 = tentativeInitiatingIndexPath;
    if (tentativeInitiatingCell)
    {
      if (tentativeInitiatingIndexPath)
      {
LABEL_8:
        [(_UITableViewDragController *)self setInitiatingCell:tentativeInitiatingCell];
        [(_UITableViewDragController *)self setInitiatingIndexPath:v12];

        goto LABEL_9;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:235 description:{@"_UITableViewDragController internal inconsistency: initiatingCell cannot be nil in %@", v19}];

      if (v12)
      {
        goto LABEL_8;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:236 description:{@"_UITableViewDragController internal inconsistency: initiatingIndexPath cannot be nil in %@", v21}];

    goto LABEL_8;
  }

LABEL_9:
  tentativeIndexPaths = [(_UITableViewDragController *)self tentativeIndexPaths];
  if (![tentativeIndexPaths count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:241 description:{@"_UITableViewDragController internal inconsistency: tentativeIndexPaths cannot be empty in %@", v15}];
  }

  [(NSMutableOrderedSet *)self->_indexPaths unionOrderedSet:tentativeIndexPaths];
  [(_UITableViewDragController *)self setTentativeInitiatingCell:0];
  [(_UITableViewDragController *)self setTentativeInitiatingIndexPath:0];
  [(_UITableViewDragController *)self clearTentativeRows];
}

- (void)beginDragOfRowsForSession:(id)session notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  sessionCopy = session;
  [(_UITableViewDragController *)self beginDragForTentativeRows];
  tableView = [(_UITableViewDragController *)self tableView];
  v7 = tableView;
  if (delegateCopy)
  {
    [tableView _dragSessionWillBegin:sessionCopy];
  }

  [v7 _updateAppearanceOfVisibleRowsForDragState];
}

- (void)resetDragState
{
  v20 = *MEMORY[0x1E69E9840];
  [(_UITableViewDragController *)self setInitiatingCell:0];
  [(_UITableViewDragController *)self setInitiatingIndexPath:0];
  [(NSMutableOrderedSet *)self->_indexPaths removeAllObjects];
  dragSession = [(_UITableViewDragController *)self dragSession];
  tableView = [(_UITableViewDragController *)self tableView];
  v5 = dragSession;
  v6 = tableView;
  if (v5)
  {
    objc_opt_class();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    items = [v5 items];
    v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(items);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          _privateLocalContext = [v12 _privateLocalContext];
          if (_privateLocalContext)
          {
            if (objc_opt_isKindOfClass())
            {
              tableView2 = [_privateLocalContext tableView];

              if (tableView2 == v6)
              {
                [v12 _setPrivateLocalContext:0];
              }
            }
          }
        }

        v9 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v46 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  tableView = [(_UITableViewDragController *)self tableView];
  v32 = sessionCopy;
  [sessionCopy locationInView:tableView];
  if ([(_UITableViewDragController *)self canProvideItemsForDragAtPoint:?])
  {
    tentativeInitiatingIndexPath = [(_UITableViewDragController *)self tentativeInitiatingIndexPath];
    if (!tentativeInitiatingIndexPath)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:284 description:{@"_UITableViewDragController internal inconsistency: tentativeInitiatingIndexPath cannot be nil in %@", v24}];
    }

    v9 = [tableView _rowsToIncludeInDragSession:sessionCopy atIndexPath:tentativeInitiatingIndexPath withDataOwner:{objc_msgSend(tableView, "_dataOwnerForDragSession:atIndexPath:", sessionCopy, tentativeInitiatingIndexPath)}];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v11 = [v9 containsObject:tentativeInitiatingIndexPath];
    v27 = tentativeInitiatingIndexPath;
    if (has_internal_diagnostics)
    {
      if ((v11 & 1) == 0)
      {
        v25 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "The rows to include in the drag should always contain the index path that initiated the drag.", buf, 2u);
        }
      }
    }

    else if ((v11 & 1) == 0)
    {
      v26 = *(__UILogGetCategoryCachedImpl("Assert", &dragInteraction_itemsForBeginningSession____s_category) + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "The rows to include in the drag should always contain the index path that initiated the drag.", buf, 2u);
      }
    }

    v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v9;
    v33 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v33)
    {
      v31 = *v40;
      selfCopy = self;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [tableView _itemsForBeginningDragSession:v32 atIndexPath:v13];
          if ([v14 count])
          {
            [(_UITableViewDragController *)self addTentativeRowAtIndexPath:v13];
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v34 = v14;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v36;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v36 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v35 + 1) + 8 * j);
                  v21 = [[_UITableViewDragItemContext alloc] initWithIndexPath:v13 forTableView:tableView];
                  [v20 _setPrivateLocalContext:v21];
                }

                v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
              }

              while (v17);
            }

            [v30 addObjectsFromArray:v15];
            self = selfCopy;
            v14 = v34;
          }
        }

        v33 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v33);
    }
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  return v30;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v29 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if ([(_UITableViewDragController *)self canProvideItemsForDragAtPoint:x, y])
  {
    tentativeInitiatingIndexPath = [(_UITableViewDragController *)self tentativeInitiatingIndexPath];
    if (!tentativeInitiatingIndexPath)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:317 description:{@"_UITableViewDragController internal inconsistency: tentativeInitiatingIndexPath cannot be nil in %@", v22}];
    }

    tableView = [(_UITableViewDragController *)self tableView];
    v12 = [tableView _itemsForAddingToDragSession:sessionCopy atIndexPath:tentativeInitiatingIndexPath point:objc_msgSend(sessionCopy withDataOwner:{"_dataOwner"), x, y}];
    if ([v12 count])
    {
      v23 = sessionCopy;
      [(_UITableViewDragController *)self addTentativeRowAtIndexPath:tentativeInitiatingIndexPath];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            v19 = [[_UITableViewDragItemContext alloc] initWithIndexPath:tentativeInitiatingIndexPath forTableView:tableView];
            [v18 _setPrivateLocalContext:v19];
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }

      sessionCopy = v23;
    }
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  sessionCopy = session;
  _privateLocalContext = [itemCopy _privateLocalContext];
  if (_privateLocalContext)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:337 description:{@"UITableView internal inconsistency: %@ should never be called for a drag item that did not come from this table view", v31}];
    }
  }

  indexPath = [_privateLocalContext indexPath];
  if (indexPath)
  {
    tableView = [(_UITableViewDragController *)self tableView];
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__191;
    v40 = __Block_byref_object_dispose__191;
    v41 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __76___UITableViewDragController_dragInteraction_previewForLiftingItem_session___block_invoke;
    v32[3] = &unk_1E70FB728;
    v35 = &v36;
    v15 = tableView;
    v33 = v15;
    v16 = indexPath;
    v34 = v16;
    [v15 _performUsingPresentationValues:v32];
    v17 = v37[5];
    if (v17 && ([v17 window], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
    {
      _dropAnimationContainerView = [v37[5] _dropAnimationContainerView];

      if (_dropAnimationContainerView)
      {
        v20 = [UIDragPreviewTarget alloc];
        superview = [v37[5] superview];
        [v37[5] center];
        [superview convertPoint:v15 toView:?];
        _dropAnimationContainerView = [(UIPreviewTarget *)v20 initWithContainer:v15 center:?];
      }

      v22 = [v15 _dragPreviewParametersForIndexPath:v16];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = objc_opt_new();
      }

      v26 = v24;

      v27 = [UITargetedDragPreview alloc];
      if (_dropAnimationContainerView)
      {
        v28 = [(UITargetedDragPreview *)v27 initWithView:v37[5] parameters:v26 target:_dropAnimationContainerView];
      }

      else
      {
        v28 = [(UITargetedPreview *)v27 initWithView:v37[5] parameters:v26];
      }

      v25 = v28;
    }

    else
    {
      v25 = 0;
    }

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  animatorCopy = animator;
  tentativeIndexPaths = [(_UITableViewDragController *)self tentativeIndexPaths];
  v9 = [tentativeIndexPaths copy];

  if (![v9 count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:377 description:{@"_UITableViewDragController internal inconsistency: tentativeIndexPaths cannot be empty in %@", v15}];
  }

  tableView = [(_UITableViewDragController *)self tableView];
  [tableView _prepareToLiftRowsAtIndexPaths:v9];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82___UITableViewDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v18[3] = &unk_1E70F35B8;
  v11 = tableView;
  v19 = v11;
  v20 = v9;
  v12 = v9;
  [animatorCopy addAnimations:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82___UITableViewDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v16[3] = &unk_1E70F5DB8;
  v17 = v11;
  v13 = v11;
  [animatorCopy addCompletion:v16];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  beginCopy = begin;
  [(_UITableViewDragController *)self setDragSession:beginCopy];
  [(_UITableViewDragController *)self beginDragOfRowsForSession:beginCopy notifyDelegate:1];
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  sessionCopy = session;
  [(_UITableViewDragController *)self resetDragState];
  tableView = [(_UITableViewDragController *)self tableView];
  [(_UITableViewDragController *)self setDragSession:0];
  [tableView _dragSessionDidEnd:sessionCopy];

  [tableView _updateAppearanceOfVisibleRowsForDragState];
}

- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point
{
  itemsCopy = items;
  dragSession = [(_UITableViewDragController *)self dragSession];
  if (dragSession)
  {
    if ([itemsCopy containsObject:dragSession])
    {
      firstObject = dragSession;
LABEL_9:
      v10 = firstObject;
      goto LABEL_11;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "It should not be possible for mySession to not be one of the localDragSessions", buf, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &dragInteraction_sessionForAddingItems_withTouchAtPoint____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "It should not be possible for mySession to not be one of the localDragSessions", v13, 2u);
      }
    }
  }

  if ([itemsCopy count] == 1)
  {
    firstObject = [itemsCopy firstObject];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction
{
  sessionCopy = session;
  if (interaction == forInteraction)
  {
    v11 = sessionCopy;
    dragSession = [(_UITableViewDragController *)self dragSession];

    if (!dragSession)
    {
      [(_UITableViewDragController *)self setDragSession:v11];
    }

    [(_UITableViewDragController *)self beginDragOfRowsForSession:v11 notifyDelegate:dragSession == 0];
    sessionCopy = v11;
  }
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  interactionCopy = interaction;
  itemCopy = item;
  defaultCopy = default;
  _privateLocalContext = [itemCopy _privateLocalContext];
  if (_privateLocalContext)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:456 description:{@"UITableView internal inconsistency: %@ should never be called for a drag item that did not come from this table view", v26}];
    }
  }

  indexPath = [_privateLocalContext indexPath];
  if (indexPath)
  {
    tableView = [(_UITableViewDragController *)self tableView];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__191;
    v35 = __Block_byref_object_dispose__191;
    v36 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __83___UITableViewDragController_dragInteraction_previewForCancellingItem_withDefault___block_invoke;
    v27[3] = &unk_1E70FB728;
    v30 = &v31;
    v15 = tableView;
    v28 = v15;
    v16 = indexPath;
    v29 = v16;
    [v15 _performUsingPresentationValues:v27];
    v17 = v32[5];
    if (v17 && ([v17 window], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
    {
      cellsAnimatingCancel = [(_UITableViewDragController *)self cellsAnimatingCancel];
      [cellsAnimatingCancel setObject:v32[5] forKey:itemCopy];

      v20 = [v15 _beginAnimatingDropOfCell:v32[5] isCanceling:1];
      v21 = [v15 _dragPreviewParametersForIndexPath:v16];
      if (v21)
      {
        v22 = [(UITargetedPreview *)[UITargetedDragPreview alloc] initWithView:v20 parameters:v21];
      }

      else
      {
        v22 = [[UITargetedDragPreview alloc] initWithView:v20];
      }

      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  interactionCopy = interaction;
  itemCopy = item;
  animatorCopy = animator;
  cellsAnimatingCancel = [(_UITableViewDragController *)self cellsAnimatingCancel];
  v12 = [cellsAnimatingCancel objectForKey:itemCopy];

  if (v12)
  {
    tableView = [(_UITableViewDragController *)self tableView];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __81___UITableViewDragController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
    v23[3] = &unk_1E70F35B8;
    v14 = tableView;
    v24 = v14;
    v15 = v12;
    v25 = v15;
    [animatorCopy addAnimations:v23];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81___UITableViewDragController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke_2;
    v17[3] = &unk_1E71232F0;
    objc_copyWeak(&v21, &location);
    v16 = v14;
    v18 = v16;
    v19 = v15;
    v20 = itemCopy;
    [animatorCopy addCompletion:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (BOOL)dragInteraction:(id)interaction sessionAllowsMoveOperation:(id)operation
{
  operationCopy = operation;
  tableView = [(_UITableViewDragController *)self tableView];
  v7 = [tableView _dragSessionAllowsMoveOperation:operationCopy];

  return v7;
}

- (BOOL)dragInteraction:(id)interaction sessionIsRestrictedToDraggingApplication:(id)application
{
  applicationCopy = application;
  tableView = [(_UITableViewDragController *)self tableView];
  v7 = [tableView _dragSessionIsRestrictedToDraggingApplication:applicationCopy];

  return v7;
}

- (BOOL)dragInteraction:(id)interaction prefersFullSizePreviewsForSession:(id)session
{
  sessionCopy = session;
  tableView = [(_UITableViewDragController *)self tableView];
  [tableView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [sessionCopy locationInView:tableView];
  v16 = v15;
  v18 = v17;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v20.x = v16;
  v20.y = v18;
  LOBYTE(sessionCopy) = CGRectContainsPoint(v21, v20);

  return sessionCopy;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  sessionCopy = session;
  if (_UIShouldEnforceOpenInRulesInAccountBasedApp())
  {
    tentativeInitiatingIndexPath = [(_UITableViewDragController *)self tentativeInitiatingIndexPath];
    if (!tentativeInitiatingIndexPath)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:531 description:{@"_UITableViewDragController internal inconsistency: tentativeInitiatingIndexPath cannot be nil in %@", v12}];
    }

    tableView = [(_UITableViewDragController *)self tableView];
    v9 = [tableView _dataOwnerForDragSession:sessionCopy atIndexPath:tentativeInitiatingIndexPath];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sessionCopy = session;
  if (_UIShouldEnforceOpenInRulesInAccountBasedApp() && [(_UITableViewDragController *)self canProvideItemsForDragAtPoint:x, y])
  {
    tentativeInitiatingIndexPath = [(_UITableViewDragController *)self tentativeInitiatingIndexPath];
    if (!tentativeInitiatingIndexPath)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDragController.m" lineNumber:545 description:{@"_UITableViewDragController internal inconsistency: tentativeInitiatingIndexPath cannot be nil in %@", v15}];
    }

    tableView = [(_UITableViewDragController *)self tableView];
    v12 = [tableView _dataOwnerForDragSession:sessionCopy atIndexPath:tentativeInitiatingIndexPath];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session
{
  sessionCopy = session;
  tableView = [(_UITableViewDragController *)self tableView];
  v7 = [tableView _dragSessionPropertiesForSession:sessionCopy];

  return v7;
}

- (_UITableViewDragControllerDelegate)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end