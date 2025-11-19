@interface _UITableViewDropController
- (BOOL)commitPlaceholderInsertionWithContext:(id)a3 dataSourceUpdates:(id)a4;
- (BOOL)deletePlaceholder:(id)a3;
- (BOOL)isActive;
- (_UITableViewDropController)initWithTableView:(id)a3;
- (_UITableViewDropControllerDelegate)tableView;
- (id)animateDragItem:(id)a3 intoRowAtIndexPath:(id)a4 rect:(CGRect)a5;
- (id)animateDragItem:(id)a3 toCell:(id)a4 withPreviewParameters:(id)a5;
- (id)animateDragItem:(id)a3 toRowAtIndexPath:(id)a4;
- (id)animateDragItem:(id)a3 toTarget:(id)a4;
- (id)beginIgnoringDrags;
- (id)defaultAnimatorForDragItem:(id)a3;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)endIgnoringDrags;
- (void)insertPlaceholderAtIndexPath:(id)a3 withContext:(id)a4 previewParametersProvider:(id)a5;
- (void)resetAllDragState;
- (void)resetTrackingState;
- (void)setupDragInteraction;
- (void)uninstallFromTableView;
- (void)updateTargetIndexPathAndDropProposalForSession:(id)a3;
@end

@implementation _UITableViewDropController

- (_UITableViewDropController)initWithTableView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UITableViewDropController.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"tableView != nil"}];
  }

  v10.receiver = self;
  v10.super_class = _UITableViewDropController;
  v6 = [(_UITableViewDropController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_tableView, v5);
    [(_UITableViewDropController *)v7 resetAllDragState];
    [(_UITableViewDropController *)v7 setupDragInteraction];
  }

  return v7;
}

- (void)setupDragInteraction
{
  v4 = [[UIDropInteraction alloc] initWithDelegate:self];
  [(_UITableViewDropController *)self setDropInteraction:v4];
  v3 = [(_UITableViewDropController *)self tableView];
  [v3 addInteraction:v4];
}

- (BOOL)isActive
{
  if ([(_UITableViewDropController *)self isTrackingDrag])
  {
    return 1;
  }

  v4 = [(_UITableViewDropController *)self dropSession];
  v3 = v4 != 0;

  return v3;
}

- (void)uninstallFromTableView
{
  if ([(_UITableViewDropController *)self isActive])
  {
    v3 = [(_UITableViewDropController *)self tableView];
    [v3 _removeDropTargetAndResetAppearance];

    [(_UITableViewDropController *)self resetAllDragState];
  }

  v5 = [(_UITableViewDropController *)self tableView];
  v4 = [(_UITableViewDropController *)self dropInteraction];
  [v5 removeInteraction:v4];
}

- (id)beginIgnoringDrags
{
  if (![(_UITableViewDropController *)self shouldIgnoreDrags]&& [(_UITableViewDropController *)self isTrackingDrag])
  {
    v3 = [(_UITableViewDropController *)self tableView];
    [v3 _removeDropTargetAndResetAppearance];

    [(_UITableViewDropController *)self resetTrackingState];
  }

  [(_UITableViewDropController *)self setIgnoringDragsCount:[(_UITableViewDropController *)self ignoringDragsCount]+ 1];
  objc_initWeak(&location, self);
  v4 = [_UITableViewIgnoreDragsTokenImpl alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___UITableViewDropController_beginIgnoringDrags__block_invoke;
  v7[3] = &unk_1E70F5A28;
  objc_copyWeak(&v8, &location);
  v5 = [(_UITableViewIgnoreDragsTokenImpl *)v4 initWithDidEndHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (void)endIgnoringDrags
{
  [(_UITableViewDropController *)self setIgnoringDragsCount:[(_UITableViewDropController *)self ignoringDragsCount]- 1];
  if ([(_UITableViewDropController *)self ignoringDragsCount]< 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UITableViewDropController.m" lineNumber:137 description:@"UITableView internal inconsistency: attempted to end ignoring drags more times than begin ignoring drags."];
  }

  if (![(_UITableViewDropController *)self shouldIgnoreDrags]&& [(_UITableViewDropController *)self isTrackingDrag])
  {
    v5 = [(_UITableViewDropController *)self dropSession];
    [(_UITableViewDropController *)self updateTargetIndexPathAndDropProposalForSession:v5];
  }
}

- (void)resetTrackingState
{
  [(_UITableViewDropController *)self setTargetIndexPath:0];

  [(_UITableViewDropController *)self setDropProposal:0];
}

- (void)resetAllDragState
{
  [(_UITableViewDropController *)self resetTrackingState];
  [(_UITableViewDropController *)self setDefaultDropOperation:0];
  [(_UITableViewDropController *)self setCanOnlyHandleReordering:0];
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  [(_UITableViewDropController *)self setDragItemDropAnimations:v3];
}

- (void)updateTargetIndexPathAndDropProposalForSession:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v4)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Cannot update the target index path and drop proposal without a dropSession", buf, 2u);
      }

      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &updateTargetIndexPathAndDropProposalForSession____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Cannot update the target index path and drop proposal without a dropSession", v14, 2u);
    }

    goto LABEL_12;
  }

  if (![(_UITableViewDropController *)self shouldIgnoreDrags])
  {
    v5 = [(_UITableViewDropController *)self tableView];
    v6 = [v5 _targetIndexPathForDrop:v4];
    v7 = [[UITableViewDropProposal alloc] initWithDropOperation:[(_UITableViewDropController *)self defaultDropOperation]];
    v8 = [v5 _updatedDropProposalForIndexPath:v6 dropSession:v4 withDefaultProposal:v7];
    v9 = [v8 operation];
    if (v9 == 3)
    {
      if (([v4 allowsMoveOperation] & 1) == 0)
      {
        v10 = 0;
LABEL_8:
        v11 = [[UITableViewDropProposal alloc] initWithDropOperation:v10];
        [(_UITableViewDropController *)self setDropProposal:v11];

        [(_UITableViewDropController *)self setTargetIndexPath:0];
        [v5 _removeDropTargetAndResetAppearance];
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }
    }

    else
    {
      v10 = v9;
      if (v9 <= 1)
      {
        goto LABEL_8;
      }
    }

    [(_UITableViewDropController *)self setDropProposal:v8];
    v12 = [v8 _adjustedTargetIndexPath];
    [(_UITableViewDropController *)self setTargetIndexPath:v12];
    [v5 _updateDropTargetAppearanceWithTargetIndexPath:v12 dropProposal:v8 dropSession:v4];

    goto LABEL_10;
  }

LABEL_12:
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v11 = a4;
  v5 = [(_UITableViewDropController *)self tableView];
  if (shouldAllowDrop(v5, v11) && [v5 _canHandleDropSession:v11])
  {
    v6 = v11;
    v7 = [v5 _activeSourceDragSession];
    if (v7 && ([v6 localDragSession], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [v6 localDragSession];

      if (v7 == v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {

      v10 = 2;
    }

    [(_UITableViewDropController *)self setDefaultDropOperation:v10];
    [(_UITableViewDropController *)self setDropSession:v6];
    [v5 _dropEntered:v6];
    [(_UITableViewDropController *)self updateTargetIndexPathAndDropProposalForSession:v6];
  }

  else
  {
    [(_UITableViewDropController *)self setDefaultDropOperation:0];
  }
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UITableViewDropController *)self defaultDropOperation])
  {
    v9 = [[UIDropProposal alloc] initWithDropOperation:0];
    goto LABEL_9;
  }

  v8 = [(_UITableViewDropController *)self tableView];
  if ((shouldAllowDrop(v8, v7) & 1) == 0)
  {
    [(_UITableViewDropController *)self dropInteraction:v6 sessionDidExit:v7];
    v10 = off_1E70E98B0;
    goto LABEL_7;
  }

  [(_UITableViewDropController *)self setDropSession:v7];
  [(_UITableViewDropController *)self updateTargetIndexPathAndDropProposalForSession:v7];
  v9 = [(_UITableViewDropController *)self dropProposal];
  if (!v9)
  {
    v10 = off_1E70EA960;
LABEL_7:
    v9 = [objc_alloc(*v10) initWithDropOperation:0];
  }

LABEL_9:

  return v9;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v6 = a4;
  if ([(_UITableViewDropController *)self defaultDropOperation])
  {
    [(_UITableViewDropController *)self resetAllDragState];
    v5 = [(_UITableViewDropController *)self tableView];
    if (![(_UITableViewDropController *)self shouldIgnoreDrags])
    {
      [v5 _removeDropTargetAndResetAppearance];
    }

    [v5 _dropExited:v6];
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v8 = a4;
  v5 = [(_UITableViewDropController *)self defaultDropOperation];
  v6 = [(_UITableViewDropController *)self dropSession];

  if (v5 || v6)
  {
    [(_UITableViewDropController *)self resetAllDragState];
    v7 = [(_UITableViewDropController *)self tableView];
    if (![(_UITableViewDropController *)self shouldIgnoreDrags])
    {
      [v7 _removeDropTargetAndResetAppearance];
    }

    [(_UITableViewDropController *)self setDropSession:0];
    [v7 _dropEnded:v8];
  }
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v12 = a4;
  v5 = [(_UITableViewDropController *)self dropProposal];
  v6 = [(_UITableViewDropController *)self targetIndexPath];
  v7 = [(_UITableViewDropController *)self canOnlyHandleReordering];
  v8 = [v5 operation];
  if (!v6 && [v5 intent])
  {
    v9 = [[UITableViewDropProposal alloc] initWithDropOperation:v8 intent:0];

    v5 = v9;
  }

  [(_UITableViewDropController *)self resetAllDragState];
  v10 = [(_UITableViewDropController *)self tableView];
  if (![(_UITableViewDropController *)self shouldIgnoreDrags])
  {
    [v10 _removeDropTargetAndResetAppearance];
  }

  if (v8 >= 2)
  {
    v11 = [[_UITableViewDropCoordinatorImpl alloc] initWithDelegate:self destinationIndexPath:v6 dropProposal:v5 session:v12];
    [v10 _performDrop:v12 withDropCoordinator:v11 forceHandleAsReorder:v7];
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(_UITableViewDropController *)self tableView];
  v10 = [(_UITableViewDropController *)self dragItemDropAnimations];
  v11 = [v10 objectForKey:v8];

  if (!v11)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v11;
      v14 = [v19 cellForTargetContainerInTableView:v9];
      if (v14)
      {
        [v9 _beginAnimatingDropIntoCell:v14];
        [v19 _setDidBeginAnimation:1];
      }

      v15 = [v19 target];
      v20 = [v7 retargetedPreviewWithTarget:v15];
      goto LABEL_14;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [v12 cell];
  if (v13)
  {
    v14 = v13;
    v15 = [v9 _beginAnimatingDropOfCell:v13 isCanceling:0];
    [v12 _setDidBeginAnimation:1];
    v16 = [v12 previewParameters];
    v17 = [UITargetedDragPreview alloc];
    if (v16)
    {
      v18 = [(UITargetedPreview *)v17 initWithView:v15 parameters:v16];
    }

    else
    {
      v18 = [(UITargetedDragPreview *)v17 initWithView:v15];
    }

    v20 = v18;

LABEL_14:
    goto LABEL_15;
  }

  v20 = 0;
LABEL_15:

LABEL_16:

  return v20;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UITableViewDropController *)self dragItemDropAnimations];
  v12 = [v11 objectForKey:v9];

  if (v12)
  {
    [v12 _addClientBlocksToAnimator:v10];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79___UITableViewDropController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
    v13[3] = &unk_1E7103A08;
    objc_copyWeak(&v16, &location);
    v14 = v12;
    v15 = v9;
    [v10 addCompletion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(_UITableViewDropController *)self dragItemDropAnimations:a3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _executeCompletionBlocks];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v5 = a4;
  v6 = [(_UITableViewDropController *)self targetIndexPath];
  v7 = [(_UITableViewDropController *)self tableView];
  v8 = [v7 _dataOwnerForDropSession:v5 atIndexPath:v6];

  return v8;
}

- (id)defaultAnimatorForDragItem:(id)a3
{
  v4 = a3;
  v5 = [[_UITableViewDropAnimation alloc] initWithDragItem:v4];
  v6 = [(_UITableViewDropController *)self dragItemDropAnimations];
  [v6 setObject:v5 forKey:v4];

  return v5;
}

- (id)animateDragItem:(id)a3 intoRowAtIndexPath:(id)a4 rect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [(_UITableViewDropController *)self tableView];
  v14 = [v13 cellForRowAtIndexPath:v12];

  if (v14)
  {
    [v11 _visibleDropItemSize];
    v16 = v15;
    v18 = v17;
    Center = UIRectGetCenter(x, y, width);
    v21 = v20;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    _UIScaleTransformForAspectFitOrFillOfSizeInTargetSize(1, &v27, v16, v18, width, height);
    v22 = [UIDragPreviewTarget alloc];
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    v23 = [(UIPreviewTarget *)v22 initWithContainer:v14 center:v26 transform:Center, v21];
    v24 = [(_UITableViewDropController *)self animateDragItem:v11 toTarget:v23];
  }

  else
  {
    v24 = [(_UITableViewDropController *)self defaultAnimatorForDragItem:v11];
  }

  return v24;
}

- (id)animateDragItem:(id)a3 toRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UITableViewDropController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v7];
  if (v9)
  {
    v10 = [v8 _dropPreviewParametersForIndexPath:v7];
    if (!v10)
    {
      v10 = objc_alloc_init(UIDragPreviewParameters);
      v11 = [v9 _visiblePathForBackgroundConfiguration];
      [(UIPreviewParameters *)v10 setVisiblePath:v11];
    }

    v12 = [(_UITableViewDropController *)self animateDragItem:v6 toCell:v9 withPreviewParameters:v10];
  }

  else
  {
    v12 = [(_UITableViewDropController *)self defaultAnimatorForDragItem:v6];
  }

  return v12;
}

- (id)animateDragItem:(id)a3 toCell:(id)a4 withPreviewParameters:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_UITableViewDropAnimationToCell alloc] initWithDragItem:v10 cell:v9 previewParameters:v8];

  v12 = [(_UITableViewDropController *)self dragItemDropAnimations];
  [v12 setObject:v11 forKey:v10];

  return v11;
}

- (id)animateDragItem:(id)a3 toTarget:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_UITableViewDropAnimationToTarget alloc] initWithDragItem:v7 target:v6];

  v9 = [(_UITableViewDropController *)self dragItemDropAnimations];
  [v9 setObject:v8 forKey:v7];

  return v8;
}

- (void)insertPlaceholderAtIndexPath:(id)a3 withContext:(id)a4 previewParametersProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UITableViewDropController *)self tableView];
  v12 = [v9 dragItem];
  v13 = [v11 _insertPlaceholderAtIndexPath:v8 withContext:v9];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__192;
  v27 = __Block_byref_object_dispose__192;
  v28 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97___UITableViewDropController_insertPlaceholderAtIndexPath_withContext_previewParametersProvider___block_invoke;
  v19[3] = &unk_1E70FB728;
  v22 = &v23;
  v14 = v11;
  v20 = v14;
  v15 = v13;
  v21 = v15;
  [v14 performUsingPresentationValues:v19];
  v16 = v24[5];
  if (v16)
  {
    if (v10)
    {
      v17 = v10[2](v10, v24[5]);
      v16 = v24[5];
    }

    else
    {
      v17 = 0;
    }

    v18 = [(_UITableViewDropController *)self animateDragItem:v12 toCell:v16 withPreviewParameters:v17];
  }

  else
  {
    v18 = [(_UITableViewDropController *)self defaultAnimatorForDragItem:v12];
  }

  [v9 _setAnimator:v18];

  _Block_object_dispose(&v23, 8);
}

- (BOOL)deletePlaceholder:(id)a3
{
  v4 = a3;
  v5 = [(_UITableViewDropController *)self tableView];
  v6 = [v5 _deletePlaceholderForContext:v4];

  return v6 != 0;
}

- (BOOL)commitPlaceholderInsertionWithContext:(id)a3 dataSourceUpdates:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UITableViewDropController *)self tableView];
  v9 = [v8 _commitPlaceholderInsertionWithContext:v7 dataSourceUpdates:v6];

  return v9;
}

- (_UITableViewDropControllerDelegate)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end