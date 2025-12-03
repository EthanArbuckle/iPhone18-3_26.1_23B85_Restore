@interface _UITableViewDropController
- (BOOL)commitPlaceholderInsertionWithContext:(id)context dataSourceUpdates:(id)updates;
- (BOOL)deletePlaceholder:(id)placeholder;
- (BOOL)isActive;
- (_UITableViewDropController)initWithTableView:(id)view;
- (_UITableViewDropControllerDelegate)tableView;
- (id)animateDragItem:(id)item intoRowAtIndexPath:(id)path rect:(CGRect)rect;
- (id)animateDragItem:(id)item toCell:(id)cell withPreviewParameters:(id)parameters;
- (id)animateDragItem:(id)item toRowAtIndexPath:(id)path;
- (id)animateDragItem:(id)item toTarget:(id)target;
- (id)beginIgnoringDrags;
- (id)defaultAnimatorForDragItem:(id)item;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)dropInteraction:(id)interaction concludeDrop:(id)drop;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)endIgnoringDrags;
- (void)insertPlaceholderAtIndexPath:(id)path withContext:(id)context previewParametersProvider:(id)provider;
- (void)resetAllDragState;
- (void)resetTrackingState;
- (void)setupDragInteraction;
- (void)uninstallFromTableView;
- (void)updateTargetIndexPathAndDropProposalForSession:(id)session;
@end

@implementation _UITableViewDropController

- (_UITableViewDropController)initWithTableView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropController.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"tableView != nil"}];
  }

  v10.receiver = self;
  v10.super_class = _UITableViewDropController;
  v6 = [(_UITableViewDropController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_tableView, viewCopy);
    [(_UITableViewDropController *)v7 resetAllDragState];
    [(_UITableViewDropController *)v7 setupDragInteraction];
  }

  return v7;
}

- (void)setupDragInteraction
{
  v4 = [[UIDropInteraction alloc] initWithDelegate:self];
  [(_UITableViewDropController *)self setDropInteraction:v4];
  tableView = [(_UITableViewDropController *)self tableView];
  [tableView addInteraction:v4];
}

- (BOOL)isActive
{
  if ([(_UITableViewDropController *)self isTrackingDrag])
  {
    return 1;
  }

  dropSession = [(_UITableViewDropController *)self dropSession];
  v3 = dropSession != 0;

  return v3;
}

- (void)uninstallFromTableView
{
  if ([(_UITableViewDropController *)self isActive])
  {
    tableView = [(_UITableViewDropController *)self tableView];
    [tableView _removeDropTargetAndResetAppearance];

    [(_UITableViewDropController *)self resetAllDragState];
  }

  tableView2 = [(_UITableViewDropController *)self tableView];
  dropInteraction = [(_UITableViewDropController *)self dropInteraction];
  [tableView2 removeInteraction:dropInteraction];
}

- (id)beginIgnoringDrags
{
  if (![(_UITableViewDropController *)self shouldIgnoreDrags]&& [(_UITableViewDropController *)self isTrackingDrag])
  {
    tableView = [(_UITableViewDropController *)self tableView];
    [tableView _removeDropTargetAndResetAppearance];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropController.m" lineNumber:137 description:@"UITableView internal inconsistency: attempted to end ignoring drags more times than begin ignoring drags."];
  }

  if (![(_UITableViewDropController *)self shouldIgnoreDrags]&& [(_UITableViewDropController *)self isTrackingDrag])
  {
    dropSession = [(_UITableViewDropController *)self dropSession];
    [(_UITableViewDropController *)self updateTargetIndexPathAndDropProposalForSession:dropSession];
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
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  [(_UITableViewDropController *)self setDragItemDropAnimations:strongToStrongObjectsMapTable];
}

- (void)updateTargetIndexPathAndDropProposalForSession:(id)session
{
  sessionCopy = session;
  if (os_variant_has_internal_diagnostics())
  {
    if (!sessionCopy)
    {
      tableView = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(tableView, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, tableView, OS_LOG_TYPE_FAULT, "Cannot update the target index path and drop proposal without a dropSession", buf, 2u);
      }

      goto LABEL_11;
    }
  }

  else if (!sessionCopy)
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
    tableView = [(_UITableViewDropController *)self tableView];
    v6 = [tableView _targetIndexPathForDrop:sessionCopy];
    v7 = [[UITableViewDropProposal alloc] initWithDropOperation:[(_UITableViewDropController *)self defaultDropOperation]];
    v8 = [tableView _updatedDropProposalForIndexPath:v6 dropSession:sessionCopy withDefaultProposal:v7];
    operation = [v8 operation];
    if (operation == 3)
    {
      if (([sessionCopy allowsMoveOperation] & 1) == 0)
      {
        v10 = 0;
LABEL_8:
        v11 = [[UITableViewDropProposal alloc] initWithDropOperation:v10];
        [(_UITableViewDropController *)self setDropProposal:v11];

        [(_UITableViewDropController *)self setTargetIndexPath:0];
        [tableView _removeDropTargetAndResetAppearance];
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }
    }

    else
    {
      v10 = operation;
      if (operation <= 1)
      {
        goto LABEL_8;
      }
    }

    [(_UITableViewDropController *)self setDropProposal:v8];
    _adjustedTargetIndexPath = [v8 _adjustedTargetIndexPath];
    [(_UITableViewDropController *)self setTargetIndexPath:_adjustedTargetIndexPath];
    [tableView _updateDropTargetAppearanceWithTargetIndexPath:_adjustedTargetIndexPath dropProposal:v8 dropSession:sessionCopy];

    goto LABEL_10;
  }

LABEL_12:
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
  tableView = [(_UITableViewDropController *)self tableView];
  if (shouldAllowDrop(tableView, enterCopy) && [tableView _canHandleDropSession:enterCopy])
  {
    v6 = enterCopy;
    _activeSourceDragSession = [tableView _activeSourceDragSession];
    if (_activeSourceDragSession && ([v6 localDragSession], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      localDragSession = [v6 localDragSession];

      if (_activeSourceDragSession == localDragSession)
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
    [tableView _dropEntered:v6];
    [(_UITableViewDropController *)self updateTargetIndexPathAndDropProposalForSession:v6];
  }

  else
  {
    [(_UITableViewDropController *)self setDefaultDropOperation:0];
  }
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  updateCopy = update;
  if (![(_UITableViewDropController *)self defaultDropOperation])
  {
    dropProposal = [[UIDropProposal alloc] initWithDropOperation:0];
    goto LABEL_9;
  }

  tableView = [(_UITableViewDropController *)self tableView];
  if ((shouldAllowDrop(tableView, updateCopy) & 1) == 0)
  {
    [(_UITableViewDropController *)self dropInteraction:interactionCopy sessionDidExit:updateCopy];
    v10 = off_1E70E98B0;
    goto LABEL_7;
  }

  [(_UITableViewDropController *)self setDropSession:updateCopy];
  [(_UITableViewDropController *)self updateTargetIndexPathAndDropProposalForSession:updateCopy];
  dropProposal = [(_UITableViewDropController *)self dropProposal];
  if (!dropProposal)
  {
    v10 = off_1E70EA960;
LABEL_7:
    dropProposal = [objc_alloc(*v10) initWithDropOperation:0];
  }

LABEL_9:

  return dropProposal;
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  exitCopy = exit;
  if ([(_UITableViewDropController *)self defaultDropOperation])
  {
    [(_UITableViewDropController *)self resetAllDragState];
    tableView = [(_UITableViewDropController *)self tableView];
    if (![(_UITableViewDropController *)self shouldIgnoreDrags])
    {
      [tableView _removeDropTargetAndResetAppearance];
    }

    [tableView _dropExited:exitCopy];
  }
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  endCopy = end;
  defaultDropOperation = [(_UITableViewDropController *)self defaultDropOperation];
  dropSession = [(_UITableViewDropController *)self dropSession];

  if (defaultDropOperation || dropSession)
  {
    [(_UITableViewDropController *)self resetAllDragState];
    tableView = [(_UITableViewDropController *)self tableView];
    if (![(_UITableViewDropController *)self shouldIgnoreDrags])
    {
      [tableView _removeDropTargetAndResetAppearance];
    }

    [(_UITableViewDropController *)self setDropSession:0];
    [tableView _dropEnded:endCopy];
  }
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  dropProposal = [(_UITableViewDropController *)self dropProposal];
  targetIndexPath = [(_UITableViewDropController *)self targetIndexPath];
  canOnlyHandleReordering = [(_UITableViewDropController *)self canOnlyHandleReordering];
  operation = [dropProposal operation];
  if (!targetIndexPath && [dropProposal intent])
  {
    v9 = [[UITableViewDropProposal alloc] initWithDropOperation:operation intent:0];

    dropProposal = v9;
  }

  [(_UITableViewDropController *)self resetAllDragState];
  tableView = [(_UITableViewDropController *)self tableView];
  if (![(_UITableViewDropController *)self shouldIgnoreDrags])
  {
    [tableView _removeDropTargetAndResetAppearance];
  }

  if (operation >= 2)
  {
    v11 = [[_UITableViewDropCoordinatorImpl alloc] initWithDelegate:self destinationIndexPath:targetIndexPath dropProposal:dropProposal session:dropCopy];
    [tableView _performDrop:dropCopy withDropCoordinator:v11 forceHandleAsReorder:canOnlyHandleReordering];
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  itemCopy = item;
  tableView = [(_UITableViewDropController *)self tableView];
  dragItemDropAnimations = [(_UITableViewDropController *)self dragItemDropAnimations];
  v11 = [dragItemDropAnimations objectForKey:itemCopy];

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
      v14 = [v19 cellForTargetContainerInTableView:tableView];
      if (v14)
      {
        [tableView _beginAnimatingDropIntoCell:v14];
        [v19 _setDidBeginAnimation:1];
      }

      target = [v19 target];
      v20 = [defaultCopy retargetedPreviewWithTarget:target];
      goto LABEL_14;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_16;
  }

  v12 = v11;
  cell = [v12 cell];
  if (cell)
  {
    v14 = cell;
    target = [tableView _beginAnimatingDropOfCell:cell isCanceling:0];
    [v12 _setDidBeginAnimation:1];
    previewParameters = [v12 previewParameters];
    v17 = [UITargetedDragPreview alloc];
    if (previewParameters)
    {
      v18 = [(UITargetedPreview *)v17 initWithView:target parameters:previewParameters];
    }

    else
    {
      v18 = [(UITargetedDragPreview *)v17 initWithView:target];
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

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  interactionCopy = interaction;
  itemCopy = item;
  animatorCopy = animator;
  dragItemDropAnimations = [(_UITableViewDropController *)self dragItemDropAnimations];
  v12 = [dragItemDropAnimations objectForKey:itemCopy];

  if (v12)
  {
    [v12 _addClientBlocksToAnimator:animatorCopy];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79___UITableViewDropController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
    v13[3] = &unk_1E7103A08;
    objc_copyWeak(&v16, &location);
    v14 = v12;
    v15 = itemCopy;
    [animatorCopy addCompletion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)dropInteraction:(id)interaction concludeDrop:(id)drop
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(_UITableViewDropController *)self dragItemDropAnimations:interaction];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [v4 objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v9++) _executeCompletionBlocks];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session
{
  sessionCopy = session;
  targetIndexPath = [(_UITableViewDropController *)self targetIndexPath];
  tableView = [(_UITableViewDropController *)self tableView];
  v8 = [tableView _dataOwnerForDropSession:sessionCopy atIndexPath:targetIndexPath];

  return v8;
}

- (id)defaultAnimatorForDragItem:(id)item
{
  itemCopy = item;
  v5 = [[_UITableViewDropAnimation alloc] initWithDragItem:itemCopy];
  dragItemDropAnimations = [(_UITableViewDropController *)self dragItemDropAnimations];
  [dragItemDropAnimations setObject:v5 forKey:itemCopy];

  return v5;
}

- (id)animateDragItem:(id)item intoRowAtIndexPath:(id)path rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemCopy = item;
  pathCopy = path;
  tableView = [(_UITableViewDropController *)self tableView];
  v14 = [tableView cellForRowAtIndexPath:pathCopy];

  if (v14)
  {
    [itemCopy _visibleDropItemSize];
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
    v24 = [(_UITableViewDropController *)self animateDragItem:itemCopy toTarget:v23];
  }

  else
  {
    v24 = [(_UITableViewDropController *)self defaultAnimatorForDragItem:itemCopy];
  }

  return v24;
}

- (id)animateDragItem:(id)item toRowAtIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  tableView = [(_UITableViewDropController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:pathCopy];
  if (v9)
  {
    v10 = [tableView _dropPreviewParametersForIndexPath:pathCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(UIDragPreviewParameters);
      _visiblePathForBackgroundConfiguration = [v9 _visiblePathForBackgroundConfiguration];
      [(UIPreviewParameters *)v10 setVisiblePath:_visiblePathForBackgroundConfiguration];
    }

    v12 = [(_UITableViewDropController *)self animateDragItem:itemCopy toCell:v9 withPreviewParameters:v10];
  }

  else
  {
    v12 = [(_UITableViewDropController *)self defaultAnimatorForDragItem:itemCopy];
  }

  return v12;
}

- (id)animateDragItem:(id)item toCell:(id)cell withPreviewParameters:(id)parameters
{
  parametersCopy = parameters;
  cellCopy = cell;
  itemCopy = item;
  v11 = [[_UITableViewDropAnimationToCell alloc] initWithDragItem:itemCopy cell:cellCopy previewParameters:parametersCopy];

  dragItemDropAnimations = [(_UITableViewDropController *)self dragItemDropAnimations];
  [dragItemDropAnimations setObject:v11 forKey:itemCopy];

  return v11;
}

- (id)animateDragItem:(id)item toTarget:(id)target
{
  targetCopy = target;
  itemCopy = item;
  v8 = [[_UITableViewDropAnimationToTarget alloc] initWithDragItem:itemCopy target:targetCopy];

  dragItemDropAnimations = [(_UITableViewDropController *)self dragItemDropAnimations];
  [dragItemDropAnimations setObject:v8 forKey:itemCopy];

  return v8;
}

- (void)insertPlaceholderAtIndexPath:(id)path withContext:(id)context previewParametersProvider:(id)provider
{
  pathCopy = path;
  contextCopy = context;
  providerCopy = provider;
  tableView = [(_UITableViewDropController *)self tableView];
  dragItem = [contextCopy dragItem];
  v13 = [tableView _insertPlaceholderAtIndexPath:pathCopy withContext:contextCopy];
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
  v14 = tableView;
  v20 = v14;
  v15 = v13;
  v21 = v15;
  [v14 performUsingPresentationValues:v19];
  v16 = v24[5];
  if (v16)
  {
    if (providerCopy)
    {
      v17 = providerCopy[2](providerCopy, v24[5]);
      v16 = v24[5];
    }

    else
    {
      v17 = 0;
    }

    v18 = [(_UITableViewDropController *)self animateDragItem:dragItem toCell:v16 withPreviewParameters:v17];
  }

  else
  {
    v18 = [(_UITableViewDropController *)self defaultAnimatorForDragItem:dragItem];
  }

  [contextCopy _setAnimator:v18];

  _Block_object_dispose(&v23, 8);
}

- (BOOL)deletePlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  tableView = [(_UITableViewDropController *)self tableView];
  v6 = [tableView _deletePlaceholderForContext:placeholderCopy];

  return v6 != 0;
}

- (BOOL)commitPlaceholderInsertionWithContext:(id)context dataSourceUpdates:(id)updates
{
  updatesCopy = updates;
  contextCopy = context;
  tableView = [(_UITableViewDropController *)self tableView];
  v9 = [tableView _commitPlaceholderInsertionWithContext:contextCopy dataSourceUpdates:updatesCopy];

  return v9;
}

- (_UITableViewDropControllerDelegate)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end