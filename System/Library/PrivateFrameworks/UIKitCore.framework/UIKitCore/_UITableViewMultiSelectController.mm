@interface _UITableViewMultiSelectController
- (BOOL)_isPointInsideEditControl:(CGPoint)control;
- (BOOL)_shouldBeginInteractionAtIndexPath:(id)path;
- (BOOL)_shouldBeginInteractionAtPoint:(CGPoint)point;
- (BOOL)isInMultiSelectMode;
- (BOOL)isInMultiselectInteraction;
- (BOOL)shouldAllowSelectionAppendageAtPoint:(CGPoint)point;
- (BOOL)shouldAllowSelectionExtensionAtIndexPath:(id)path;
- (BOOL)shouldAllowSelectionExtensionAtPoint:(CGPoint)point;
- (BOOL)shouldBeginMultiSelectInteraction:(id)interaction ofType:(int64_t)type atPoint:(CGPoint)point withVelocity:(CGPoint)velocity;
- (BOOL)supportsMultiSelectInteraction:(id)interaction;
- (UITableView)tableView;
- (_UITableViewMultiSelectController)initWithTableView:(id)view;
- (id)_tableViewDelegate;
- (void)_adjustSelectionRangeToIndexPath:(id)path isDeselecting:(BOOL)deselecting;
- (void)_deselectIndexPaths:(id)paths;
- (void)_endAutoScroll;
- (void)_handleAutoScrollFromPoint:(CGPoint)point;
- (void)_selectIndexPaths:(id)paths;
- (void)_updateSelectedIndexPaths:(id)paths;
- (void)_updateSelectedIndexPathsForCurrentSelection;
- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)selection;
- (void)didCancelMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
- (void)didEndMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
- (void)multiSelectInteraction:(id)interaction appendSelectionAtPoint:(CGPoint)point;
- (void)multiSelectInteraction:(id)interaction extendSelectionInDirection:(unint64_t)direction;
- (void)multiSelectInteraction:(id)interaction toggleSelectionStateUpToPoint:(CGPoint)point;
- (void)selectedIndexPathsChanged:(id)changed;
- (void)uninstallFromTableView;
- (void)willBeginExtendingSelectionAtIndexPath:(id)path keepingSelection:(BOOL)selection;
- (void)willBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point keepCurrentSelection:(BOOL)selection;
@end

@implementation _UITableViewMultiSelectController

- (_UITableViewMultiSelectController)initWithTableView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = _UITableViewMultiSelectController;
  v5 = [(_UITableViewMultiSelectController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableView, viewCopy);
    v7 = objc_alloc_init(UIMultiSelectInteraction);
    multiSelectInteraction = v6->_multiSelectInteraction;
    v6->_multiSelectInteraction = v7;

    [(UIMultiSelectInteraction *)v6->_multiSelectInteraction setDelegate:v6];
    WeakRetained = objc_loadWeakRetained(&v6->_tableView);
    [WeakRetained addInteraction:v6->_multiSelectInteraction];
  }

  return v6;
}

- (void)uninstallFromTableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained removeInteraction:self->_multiSelectInteraction];
}

- (void)selectedIndexPathsChanged:(id)changed
{
  changedCopy = changed;
  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];

  if (currentSelectionState)
  {
    currentSelectionState2 = [(_UITableViewMultiSelectController *)self currentSelectionState];
    [(UIMultiSelectInteractionState *)currentSelectionState2 updateStateWithDifferenceFromCurrentSelection:changedCopy];
  }

  else
  {
    currentSelectionState2 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:changedCopy];

    [(_UITableViewMultiSelectController *)self setCurrentSelectionState:currentSelectionState2];
  }
}

- (void)_handleAutoScrollFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  _autoScrollAssistant = [tableView _autoScrollAssistant];

  tableView2 = [(_UITableViewMultiSelectController *)self tableView];
  LODWORD(tableView) = [tableView2 _shouldAutoScroll];

  if (tableView)
  {
    [_autoScrollAssistant autoScrollFromPoint:{x, y}];
  }

  else
  {
    [_autoScrollAssistant stop];
  }
}

- (void)_endAutoScroll
{
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  _autoScrollAssistant = [tableView _autoScrollAssistant];
  [_autoScrollAssistant stop];
}

- (void)_selectIndexPaths:(id)paths
{
  v4 = MEMORY[0x1E695DFD8];
  pathsCopy = paths;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v8 = indexPathsForSelectedRows;
  if (indexPathsForSelectedRows)
  {
    v9 = indexPathsForSelectedRows;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [v4 setWithArray:v9];

  v11 = [pathsCopy mutableCopy];
  [v11 minusSet:v10];
  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55___UITableViewMultiSelectController__selectIndexPaths___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v15 = v11;
  selfCopy = self;
  v13 = v11;
  [currentSelectionState ignoreSelectionChangedNotificationsWithBlock:v14];
}

- (void)_deselectIndexPaths:(id)paths
{
  pathsCopy = paths;
  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57___UITableViewMultiSelectController__deselectIndexPaths___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = pathsCopy;
  v6 = pathsCopy;
  [currentSelectionState ignoreSelectionChangedNotificationsWithBlock:v7];
}

- (void)_updateSelectedIndexPathsForCurrentSelection
{
  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
  startIndexPath = [currentSelectionState startIndexPath];

  currentSelectionState2 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  endIndexPath = [currentSelectionState2 endIndexPath];

  if (startIndexPath && endIndexPath)
  {
    section = [startIndexPath section];
    v7 = [MEMORY[0x1E695DFA8] setWithObject:endIndexPath];
    v8 = [endIndexPath row];
    if (v8 > [startIndexPath row])
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    for (i = [startIndexPath row]; i != objc_msgSend(endIndexPath, "row"); i += v9)
    {
      v11 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:section];
      [v7 addObject:v11];
    }

    [(_UITableViewMultiSelectController *)self _updateSelectedIndexPaths:v7];
  }
}

- (void)_updateSelectedIndexPaths:(id)paths
{
  v29 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = MEMORY[0x1E695DFD8];
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v8 = [v5 setWithArray:indexPathsForSelectedRows];

  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v10 = [currentSelectionState pathsToSelectForInterpolatedIndexPaths:pathsCopy];

  currentSelectionState2 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v22 = v8;
  v23 = pathsCopy;
  v12 = [currentSelectionState2 pathsToDeselectForInterpolatedIndexPaths:pathsCopy currentlySelectedIndexPaths:v8];

  v13 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        tableView2 = [(_UITableViewMultiSelectController *)self tableView];
        v21 = [tableView2 _canRowBeIncludedInMultipleSelection:v19];

        if (v21)
        {
          [v13 addObject:v19];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  [(_UITableViewMultiSelectController *)self _selectIndexPaths:v14];
  [(_UITableViewMultiSelectController *)self _deselectIndexPaths:v12];
}

- (void)_adjustSelectionRangeToIndexPath:(id)path isDeselecting:(BOOL)deselecting
{
  pathCopy = path;
  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
  startIndexPath = [currentSelectionState startIndexPath];

  if (startIndexPath)
  {
    section = [pathCopy section];
    if (section == [startIndexPath section])
    {
      currentSelectionState2 = [(_UITableViewMultiSelectController *)self currentSelectionState];
      [currentSelectionState2 setEndIndexPath:pathCopy];

      [(_UITableViewMultiSelectController *)self _updateSelectedIndexPathsForCurrentSelection];
    }
  }
}

- (BOOL)_isPointInsideEditControl:(CGPoint)control
{
  y = control.y;
  x = control.x;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  v7 = [tableView indexPathForRowAtPoint:{x, y}];

  tableView2 = [(_UITableViewMultiSelectController *)self tableView];
  v9 = [tableView2 cellForRowAtIndexPath:v7];

  v10 = [v9 editingData:0];
  v11 = [v10 editControl:0];

  v21 = 0;
  if (v11)
  {
    tableView3 = [(_UITableViewMultiSelectController *)self tableView];
    [v11 convertPoint:tableView3 fromView:{x, y}];
    v14 = v13;
    v16 = v15;

    [v11 bounds];
    if (sqrt((v18 + v17 * 0.5 - v14) * (v18 + v17 * 0.5 - v14) + (v20 + v19 * 0.5 - v16) * (v20 + v19 * 0.5 - v16)) < 35.0)
    {
      v21 = 1;
    }
  }

  return v21;
}

- (id)_tableViewDelegate
{
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  delegate = [tableView delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    tableView2 = [(_UITableViewMultiSelectController *)self tableView];
    delegate2 = [tableView2 delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (void)multiSelectInteraction:(id)interaction extendSelectionInDirection:(unint64_t)direction
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  indexPathsForSelectedRows = [WeakRetained indexPathsForSelectedRows];

  lastObject = [indexPathsForSelectedRows lastObject];
  v8 = objc_loadWeakRetained(&self->_tableView);
  v9 = [v8 globalRowForRowAtIndexPath:lastObject];

  if (direction == 1)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (direction == 2)
  {
    v11 = v9 - 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = objc_loadWeakRetained(&self->_tableView);
  v13 = [v12 indexPathForRowAtGlobalRow:v11];

  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
  startIndexPath = [currentSelectionState startIndexPath];

  if (startIndexPath)
  {
    section = [v13 section];
    if (section == [startIndexPath section])
    {
      currentSelectionState2 = [(_UITableViewMultiSelectController *)self currentSelectionState];
      [currentSelectionState2 setEndIndexPath:v13];

      [(_UITableViewMultiSelectController *)self _updateSelectedIndexPathsForCurrentSelection];
    }
  }
}

- (BOOL)isInMultiSelectMode
{
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  if (dyld_program_sdk_at_least())
  {
    _allowsEffectiveMultipleSelection = [tableView _allowsEffectiveMultipleSelection];
  }

  else
  {
    _allowsEffectiveMultipleSelection = [tableView isEditing] && (objc_msgSend(tableView, "allowsMultipleSelectionDuringEditing") & 1) != 0;
  }

  return _allowsEffectiveMultipleSelection;
}

- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)selection
{
  selectionCopy = selection;
  multiSelectInteraction = [(_UITableViewMultiSelectController *)self multiSelectInteraction];
  activeGestureType = [multiSelectInteraction activeGestureType];

  if ([(_UITableViewMultiSelectController *)self isInMultiSelectMode])
  {
    if (!dyld_program_sdk_at_least() || (activeGestureType - 1) > 1)
    {
      return;
    }

    tableView = [(_UITableViewMultiSelectController *)self tableView];
    if (([tableView _isEditingWithNoSwipedCell] & 1) == 0)
    {
      tableView2 = [(_UITableViewMultiSelectController *)self tableView];
      allowsMultipleSelectionDuringEditing = [tableView2 allowsMultipleSelectionDuringEditing];

      if (!allowsMultipleSelectionDuringEditing)
      {
        return;
      }

      tableView3 = [(_UITableViewMultiSelectController *)self tableView];
      tableView = tableView3;
      goto LABEL_10;
    }
  }

  else
  {
    tableView3 = [(_UITableViewMultiSelectController *)self tableView];
    tableView = tableView3;
    if (!selectionCopy)
    {
LABEL_10:
      [tableView3 setEditing:1 animated:1];
      goto LABEL_11;
    }

    indexPathsForSelectedRows = [tableView3 indexPathsForSelectedRows];

    v11 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:indexPathsForSelectedRows];
    [(_UITableViewMultiSelectController *)self setCurrentSelectionState:v11];

    tableView4 = [(_UITableViewMultiSelectController *)self tableView];
    [tableView4 setEditing:1 animated:1];

    v13 = MEMORY[0x1E695DFD8];
    tableView = [(_UITableViewMultiSelectController *)self currentSelectionState];
    originallySelectedIndexPaths = [tableView originallySelectedIndexPaths];
    v15 = [v13 setWithArray:originallySelectedIndexPaths];
    [(_UITableViewMultiSelectController *)self _selectIndexPaths:v15];
  }

LABEL_11:
}

- (BOOL)_shouldBeginInteractionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  v7 = [tableView indexPathForRowAtPoint:{x, y}];

  LOBYTE(selfCopy) = [(_UITableViewMultiSelectController *)selfCopy _shouldBeginInteractionAtIndexPath:v7];
  return selfCopy;
}

- (BOOL)_shouldBeginInteractionAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(_UITableViewMultiSelectController *)self isInMultiSelectMode])
  {
    v5 = 1;
  }

  else if (pathCopy || (-[_UITableViewMultiSelectController tableView](self, "tableView"), v6 = objc_claimAutoreleasedReturnValue(), [v6 indexPathsForSelectedRows], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "lastObject"), pathCopy = objc_claimAutoreleasedReturnValue(), v7, v6, pathCopy))
  {
    _tableViewDelegate = [(_UITableViewMultiSelectController *)self _tableViewDelegate];
    tableView = [(_UITableViewMultiSelectController *)self tableView];
    v5 = [_tableViewDelegate tableView:tableView shouldBeginMultipleSelectionInteractionAtIndexPath:pathCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)willBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point keepCurrentSelection:(BOOL)selection
{
  selectionCopy = selection;
  y = point.y;
  x = point.x;
  if (point.x == *MEMORY[0x1E695F050] && point.y == *(MEMORY[0x1E695F050] + 8))
  {
    v11 = 0;
  }

  else
  {
    tableView = [(_UITableViewMultiSelectController *)self tableView];
    v11 = [tableView indexPathForRowAtPoint:{x, y}];
  }

  [(_UITableViewMultiSelectController *)self willBeginExtendingSelectionAtIndexPath:v11 keepingSelection:selectionCopy];
}

- (void)willBeginExtendingSelectionAtIndexPath:(id)path keepingSelection:(BOOL)selection
{
  selectionCopy = selection;
  pathCopy = path;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];

  if (!currentSelectionState)
  {
    if (selectionCopy)
    {
      v10 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:indexPathsForSelectedRows];
    }

    else
    {
      v10 = objc_alloc_init(UIMultiSelectInteractionState);
    }

    v11 = v10;
    [(_UITableViewMultiSelectController *)self setCurrentSelectionState:v10];
  }

  currentSelectionState2 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  [currentSelectionState2 beginMultiselectInteraction];

  currentSelectionState3 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  [currentSelectionState3 updateStateWithStartingIndexPath:pathCopy otherSelectedIndexPaths:indexPathsForSelectedRows];

  currentSelectionState4 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  startIndexPath = [currentSelectionState4 startIndexPath];

  if (startIndexPath)
  {
    currentSelectionState5 = [(_UITableViewMultiSelectController *)self currentSelectionState];
    startIndexPath2 = [currentSelectionState5 startIndexPath];

    tableView2 = [(_UITableViewMultiSelectController *)self tableView];
    delegate = [tableView2 delegate];

    if (objc_opt_respondsToSelector())
    {
      tableView3 = [(_UITableViewMultiSelectController *)self tableView];
      [delegate tableView:tableView3 didBeginMultipleSelectionInteractionAtIndexPath:startIndexPath2];
    }

    tableView4 = [(_UITableViewMultiSelectController *)self tableView];
    [tableView4 _forciblyCancelPendingSelection];

    tableView5 = [(_UITableViewMultiSelectController *)self tableView];
    [tableView5 unhighlightRowAtIndexPath:startIndexPath2 animated:0];
  }

  else
  {
    startIndexPath2 = pathCopy;
  }
}

- (BOOL)supportsMultiSelectInteraction:(id)interaction
{
  _tableViewDelegate = [(_UITableViewMultiSelectController *)self _tableViewDelegate];
  if (_tableViewDelegate)
  {
    tableView = [(_UITableViewMultiSelectController *)self tableView];
    allowsMultipleSelectionDuringEditing = [tableView allowsMultipleSelectionDuringEditing];
  }

  else
  {
    allowsMultipleSelectionDuringEditing = 0;
  }

  return allowsMultipleSelectionDuringEditing;
}

- (BOOL)shouldBeginMultiSelectInteraction:(id)interaction ofType:(int64_t)type atPoint:(CGPoint)point withVelocity:(CGPoint)velocity
{
  y = point.y;
  x = point.x;
  if (type)
  {

    LOBYTE(v9) = [(_UITableViewMultiSelectController *)self _shouldBeginInteractionAtPoint:interaction, point.x, point.y, velocity.x, velocity.y];
  }

  else
  {
    v9 = [(_UITableViewMultiSelectController *)self isInMultiSelectMode:interaction];
    if (v9)
    {

      LOBYTE(v9) = [(_UITableViewMultiSelectController *)self _isPointInsideEditControl:x, y];
    }
  }

  return v9;
}

- (void)didEndMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  [(_UITableViewMultiSelectController *)self _endAutoScroll:interaction];
  _tableViewDelegate = [(_UITableViewMultiSelectController *)self _tableViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _tableViewDelegate2 = [(_UITableViewMultiSelectController *)self _tableViewDelegate];
    tableView = [(_UITableViewMultiSelectController *)self tableView];
    [_tableViewDelegate2 tableViewDidEndMultipleSelectionInteraction:tableView];
  }

  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
  [currentSelectionState endMultiselectInteraction];
}

- (BOOL)shouldAllowSelectionExtensionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  v7 = [tableView indexPathForRowAtPoint:{x, y}];

  LOBYTE(selfCopy) = [(_UITableViewMultiSelectController *)selfCopy shouldAllowSelectionExtensionAtIndexPath:v7];
  return selfCopy;
}

- (BOOL)shouldAllowSelectionAppendageAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (dyld_program_sdk_at_least())
  {

    return [(_UITableViewMultiSelectController *)self _shouldBeginInteractionAtPoint:x, y];
  }

  else
  {

    return [(_UITableViewMultiSelectController *)self shouldAllowSelectionExtensionAtPoint:x, y];
  }
}

- (BOOL)shouldAllowSelectionExtensionAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  if ([indexPathsForSelectedRows count])
  {
    v7 = [(_UITableViewMultiSelectController *)self _shouldBeginInteractionAtIndexPath:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)multiSelectInteraction:(id)interaction toggleSelectionStateUpToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  v10 = [tableView _nearestCellToPoint:{x, y}];

  tableView2 = [(_UITableViewMultiSelectController *)self tableView];
  v9 = [tableView2 indexPathForCell:v10];

  [(_UITableViewMultiSelectController *)self toggleSelectionStateUpToIndexPath:v9];
  [(_UITableViewMultiSelectController *)self _handleAutoScrollFromPoint:x, y];
}

- (void)multiSelectInteraction:(id)interaction appendSelectionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tableView = [(_UITableViewMultiSelectController *)self tableView];
  v13 = [tableView indexPathForRowAtPoint:{x, y}];

  v8 = v13;
  if (v13)
  {
    currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
    isSelecting = [currentSelectionState isSelecting];

    v11 = [MEMORY[0x1E695DFD8] setWithObject:v13];
    if (isSelecting)
    {
      [(_UITableViewMultiSelectController *)self _selectIndexPaths:v11];
    }

    else
    {
      [(_UITableViewMultiSelectController *)self _deselectIndexPaths:v11];
    }

    currentSelectionState2 = [(_UITableViewMultiSelectController *)self currentSelectionState];
    [currentSelectionState2 setStartIndexPath:v13];

    v8 = v13;
  }
}

- (void)didCancelMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = MEMORY[0x1E695DFD8];
  interactionCopy = interaction;
  v8 = [v7 set];
  [(_UITableViewMultiSelectController *)self _updateSelectedIndexPaths:v8];

  [(_UITableViewMultiSelectController *)self didEndMultiSelectInteraction:interactionCopy atPoint:x, y];
}

- (BOOL)isInMultiselectInteraction
{
  currentSelectionState = [(_UITableViewMultiSelectController *)self currentSelectionState];
  isInMultiselectInteraction = [currentSelectionState isInMultiselectInteraction];

  return isInMultiselectInteraction;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end