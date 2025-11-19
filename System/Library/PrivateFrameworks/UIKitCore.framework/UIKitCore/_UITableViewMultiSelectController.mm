@interface _UITableViewMultiSelectController
- (BOOL)_isPointInsideEditControl:(CGPoint)a3;
- (BOOL)_shouldBeginInteractionAtIndexPath:(id)a3;
- (BOOL)_shouldBeginInteractionAtPoint:(CGPoint)a3;
- (BOOL)isInMultiSelectMode;
- (BOOL)isInMultiselectInteraction;
- (BOOL)shouldAllowSelectionAppendageAtPoint:(CGPoint)a3;
- (BOOL)shouldAllowSelectionExtensionAtIndexPath:(id)a3;
- (BOOL)shouldAllowSelectionExtensionAtPoint:(CGPoint)a3;
- (BOOL)shouldBeginMultiSelectInteraction:(id)a3 ofType:(int64_t)a4 atPoint:(CGPoint)a5 withVelocity:(CGPoint)a6;
- (BOOL)supportsMultiSelectInteraction:(id)a3;
- (UITableView)tableView;
- (_UITableViewMultiSelectController)initWithTableView:(id)a3;
- (id)_tableViewDelegate;
- (void)_adjustSelectionRangeToIndexPath:(id)a3 isDeselecting:(BOOL)a4;
- (void)_deselectIndexPaths:(id)a3;
- (void)_endAutoScroll;
- (void)_handleAutoScrollFromPoint:(CGPoint)a3;
- (void)_selectIndexPaths:(id)a3;
- (void)_updateSelectedIndexPaths:(id)a3;
- (void)_updateSelectedIndexPathsForCurrentSelection;
- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)a3;
- (void)didCancelMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
- (void)didEndMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
- (void)multiSelectInteraction:(id)a3 appendSelectionAtPoint:(CGPoint)a4;
- (void)multiSelectInteraction:(id)a3 extendSelectionInDirection:(unint64_t)a4;
- (void)multiSelectInteraction:(id)a3 toggleSelectionStateUpToPoint:(CGPoint)a4;
- (void)selectedIndexPathsChanged:(id)a3;
- (void)uninstallFromTableView;
- (void)willBeginExtendingSelectionAtIndexPath:(id)a3 keepingSelection:(BOOL)a4;
- (void)willBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4 keepCurrentSelection:(BOOL)a5;
@end

@implementation _UITableViewMultiSelectController

- (_UITableViewMultiSelectController)initWithTableView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UITableViewMultiSelectController;
  v5 = [(_UITableViewMultiSelectController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableView, v4);
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

- (void)selectedIndexPathsChanged:(id)a3
{
  v4 = a3;
  v5 = [(_UITableViewMultiSelectController *)self currentSelectionState];

  if (v5)
  {
    v6 = [(_UITableViewMultiSelectController *)self currentSelectionState];
    [(UIMultiSelectInteractionState *)v6 updateStateWithDifferenceFromCurrentSelection:v4];
  }

  else
  {
    v6 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:v4];

    [(_UITableViewMultiSelectController *)self setCurrentSelectionState:v6];
  }
}

- (void)_handleAutoScrollFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UITableViewMultiSelectController *)self tableView];
  v8 = [v6 _autoScrollAssistant];

  v7 = [(_UITableViewMultiSelectController *)self tableView];
  LODWORD(v6) = [v7 _shouldAutoScroll];

  if (v6)
  {
    [v8 autoScrollFromPoint:{x, y}];
  }

  else
  {
    [v8 stop];
  }
}

- (void)_endAutoScroll
{
  v3 = [(_UITableViewMultiSelectController *)self tableView];
  v2 = [v3 _autoScrollAssistant];
  [v2 stop];
}

- (void)_selectIndexPaths:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [(_UITableViewMultiSelectController *)self tableView];
  v7 = [v6 indexPathsForSelectedRows];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [v4 setWithArray:v9];

  v11 = [v5 mutableCopy];
  [v11 minusSet:v10];
  v12 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55___UITableViewMultiSelectController__selectIndexPaths___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v15 = v11;
  v16 = self;
  v13 = v11;
  [v12 ignoreSelectionChangedNotificationsWithBlock:v14];
}

- (void)_deselectIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57___UITableViewMultiSelectController__deselectIndexPaths___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 ignoreSelectionChangedNotificationsWithBlock:v7];
}

- (void)_updateSelectedIndexPathsForCurrentSelection
{
  v3 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v12 = [v3 startIndexPath];

  v4 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v5 = [v4 endIndexPath];

  if (v12 && v5)
  {
    v6 = [v12 section];
    v7 = [MEMORY[0x1E695DFA8] setWithObject:v5];
    v8 = [v5 row];
    if (v8 > [v12 row])
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    for (i = [v12 row]; i != objc_msgSend(v5, "row"); i += v9)
    {
      v11 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:v6];
      [v7 addObject:v11];
    }

    [(_UITableViewMultiSelectController *)self _updateSelectedIndexPaths:v7];
  }
}

- (void)_updateSelectedIndexPaths:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(_UITableViewMultiSelectController *)self tableView];
  v7 = [v6 indexPathsForSelectedRows];
  v8 = [v5 setWithArray:v7];

  v9 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v10 = [v9 pathsToSelectForInterpolatedIndexPaths:v4];

  v11 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v22 = v8;
  v23 = v4;
  v12 = [v11 pathsToDeselectForInterpolatedIndexPaths:v4 currentlySelectedIndexPaths:v8];

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
        v20 = [(_UITableViewMultiSelectController *)self tableView];
        v21 = [v20 _canRowBeIncludedInMultipleSelection:v19];

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

- (void)_adjustSelectionRangeToIndexPath:(id)a3 isDeselecting:(BOOL)a4
{
  v9 = a3;
  v5 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v6 = [v5 startIndexPath];

  if (v6)
  {
    v7 = [v9 section];
    if (v7 == [v6 section])
    {
      v8 = [(_UITableViewMultiSelectController *)self currentSelectionState];
      [v8 setEndIndexPath:v9];

      [(_UITableViewMultiSelectController *)self _updateSelectedIndexPathsForCurrentSelection];
    }
  }
}

- (BOOL)_isPointInsideEditControl:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UITableViewMultiSelectController *)self tableView];
  v7 = [v6 indexPathForRowAtPoint:{x, y}];

  v8 = [(_UITableViewMultiSelectController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v7];

  v10 = [v9 editingData:0];
  v11 = [v10 editControl:0];

  v21 = 0;
  if (v11)
  {
    v12 = [(_UITableViewMultiSelectController *)self tableView];
    [v11 convertPoint:v12 fromView:{x, y}];
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
  v3 = [(_UITableViewMultiSelectController *)self tableView];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UITableViewMultiSelectController *)self tableView];
    v7 = [v6 delegate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)multiSelectInteraction:(id)a3 extendSelectionInDirection:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v18 = [WeakRetained indexPathsForSelectedRows];

  v7 = [v18 lastObject];
  v8 = objc_loadWeakRetained(&self->_tableView);
  v9 = [v8 globalRowForRowAtIndexPath:v7];

  if (a4 == 1)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (a4 == 2)
  {
    v11 = v9 - 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = objc_loadWeakRetained(&self->_tableView);
  v13 = [v12 indexPathForRowAtGlobalRow:v11];

  v14 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v15 = [v14 startIndexPath];

  if (v15)
  {
    v16 = [v13 section];
    if (v16 == [v15 section])
    {
      v17 = [(_UITableViewMultiSelectController *)self currentSelectionState];
      [v17 setEndIndexPath:v13];

      [(_UITableViewMultiSelectController *)self _updateSelectedIndexPathsForCurrentSelection];
    }
  }
}

- (BOOL)isInMultiSelectMode
{
  v2 = [(_UITableViewMultiSelectController *)self tableView];
  if (dyld_program_sdk_at_least())
  {
    v3 = [v2 _allowsEffectiveMultipleSelection];
  }

  else
  {
    v3 = [v2 isEditing] && (objc_msgSend(v2, "allowsMultipleSelectionDuringEditing") & 1) != 0;
  }

  return v3;
}

- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITableViewMultiSelectController *)self multiSelectInteraction];
  v6 = [v5 activeGestureType];

  if ([(_UITableViewMultiSelectController *)self isInMultiSelectMode])
  {
    if (!dyld_program_sdk_at_least() || (v6 - 1) > 1)
    {
      return;
    }

    v16 = [(_UITableViewMultiSelectController *)self tableView];
    if (([v16 _isEditingWithNoSwipedCell] & 1) == 0)
    {
      v7 = [(_UITableViewMultiSelectController *)self tableView];
      v8 = [v7 allowsMultipleSelectionDuringEditing];

      if (!v8)
      {
        return;
      }

      v9 = [(_UITableViewMultiSelectController *)self tableView];
      v16 = v9;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = [(_UITableViewMultiSelectController *)self tableView];
    v16 = v9;
    if (!v3)
    {
LABEL_10:
      [v9 setEditing:1 animated:1];
      goto LABEL_11;
    }

    v10 = [v9 indexPathsForSelectedRows];

    v11 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:v10];
    [(_UITableViewMultiSelectController *)self setCurrentSelectionState:v11];

    v12 = [(_UITableViewMultiSelectController *)self tableView];
    [v12 setEditing:1 animated:1];

    v13 = MEMORY[0x1E695DFD8];
    v16 = [(_UITableViewMultiSelectController *)self currentSelectionState];
    v14 = [v16 originallySelectedIndexPaths];
    v15 = [v13 setWithArray:v14];
    [(_UITableViewMultiSelectController *)self _selectIndexPaths:v15];
  }

LABEL_11:
}

- (BOOL)_shouldBeginInteractionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(_UITableViewMultiSelectController *)self tableView];
  v7 = [v6 indexPathForRowAtPoint:{x, y}];

  LOBYTE(v5) = [(_UITableViewMultiSelectController *)v5 _shouldBeginInteractionAtIndexPath:v7];
  return v5;
}

- (BOOL)_shouldBeginInteractionAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(_UITableViewMultiSelectController *)self isInMultiSelectMode])
  {
    v5 = 1;
  }

  else if (v4 || (-[_UITableViewMultiSelectController tableView](self, "tableView"), v6 = objc_claimAutoreleasedReturnValue(), [v6 indexPathsForSelectedRows], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "lastObject"), v4 = objc_claimAutoreleasedReturnValue(), v7, v6, v4))
  {
    v8 = [(_UITableViewMultiSelectController *)self _tableViewDelegate];
    v9 = [(_UITableViewMultiSelectController *)self tableView];
    v5 = [v8 tableView:v9 shouldBeginMultipleSelectionInteractionAtIndexPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)willBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4 keepCurrentSelection:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  if (a4.x == *MEMORY[0x1E695F050] && a4.y == *(MEMORY[0x1E695F050] + 8))
  {
    v11 = 0;
  }

  else
  {
    v10 = [(_UITableViewMultiSelectController *)self tableView];
    v11 = [v10 indexPathForRowAtPoint:{x, y}];
  }

  [(_UITableViewMultiSelectController *)self willBeginExtendingSelectionAtIndexPath:v11 keepingSelection:v5];
}

- (void)willBeginExtendingSelectionAtIndexPath:(id)a3 keepingSelection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_UITableViewMultiSelectController *)self tableView];
  v8 = [v7 indexPathsForSelectedRows];

  v9 = [(_UITableViewMultiSelectController *)self currentSelectionState];

  if (!v9)
  {
    if (v4)
    {
      v10 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:v8];
    }

    else
    {
      v10 = objc_alloc_init(UIMultiSelectInteractionState);
    }

    v11 = v10;
    [(_UITableViewMultiSelectController *)self setCurrentSelectionState:v10];
  }

  v12 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  [v12 beginMultiselectInteraction];

  v13 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  [v13 updateStateWithStartingIndexPath:v6 otherSelectedIndexPaths:v8];

  v14 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v15 = [v14 startIndexPath];

  if (v15)
  {
    v16 = [(_UITableViewMultiSelectController *)self currentSelectionState];
    v22 = [v16 startIndexPath];

    v17 = [(_UITableViewMultiSelectController *)self tableView];
    v18 = [v17 delegate];

    if (objc_opt_respondsToSelector())
    {
      v19 = [(_UITableViewMultiSelectController *)self tableView];
      [v18 tableView:v19 didBeginMultipleSelectionInteractionAtIndexPath:v22];
    }

    v20 = [(_UITableViewMultiSelectController *)self tableView];
    [v20 _forciblyCancelPendingSelection];

    v21 = [(_UITableViewMultiSelectController *)self tableView];
    [v21 unhighlightRowAtIndexPath:v22 animated:0];
  }

  else
  {
    v22 = v6;
  }
}

- (BOOL)supportsMultiSelectInteraction:(id)a3
{
  v4 = [(_UITableViewMultiSelectController *)self _tableViewDelegate];
  if (v4)
  {
    v5 = [(_UITableViewMultiSelectController *)self tableView];
    v6 = [v5 allowsMultipleSelectionDuringEditing];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldBeginMultiSelectInteraction:(id)a3 ofType:(int64_t)a4 atPoint:(CGPoint)a5 withVelocity:(CGPoint)a6
{
  y = a5.y;
  x = a5.x;
  if (a4)
  {

    LOBYTE(v9) = [(_UITableViewMultiSelectController *)self _shouldBeginInteractionAtPoint:a3, a5.x, a5.y, a6.x, a6.y];
  }

  else
  {
    v9 = [(_UITableViewMultiSelectController *)self isInMultiSelectMode:a3];
    if (v9)
    {

      LOBYTE(v9) = [(_UITableViewMultiSelectController *)self _isPointInsideEditControl:x, y];
    }
  }

  return v9;
}

- (void)didEndMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  [(_UITableViewMultiSelectController *)self _endAutoScroll:a3];
  v5 = [(_UITableViewMultiSelectController *)self _tableViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_UITableViewMultiSelectController *)self _tableViewDelegate];
    v8 = [(_UITableViewMultiSelectController *)self tableView];
    [v7 tableViewDidEndMultipleSelectionInteraction:v8];
  }

  v9 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  [v9 endMultiselectInteraction];
}

- (BOOL)shouldAllowSelectionExtensionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(_UITableViewMultiSelectController *)self tableView];
  v7 = [v6 indexPathForRowAtPoint:{x, y}];

  LOBYTE(v5) = [(_UITableViewMultiSelectController *)v5 shouldAllowSelectionExtensionAtIndexPath:v7];
  return v5;
}

- (BOOL)shouldAllowSelectionAppendageAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (dyld_program_sdk_at_least())
  {

    return [(_UITableViewMultiSelectController *)self _shouldBeginInteractionAtPoint:x, y];
  }

  else
  {

    return [(_UITableViewMultiSelectController *)self shouldAllowSelectionExtensionAtPoint:x, y];
  }
}

- (BOOL)shouldAllowSelectionExtensionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UITableViewMultiSelectController *)self tableView];
  v6 = [v5 indexPathsForSelectedRows];
  if ([v6 count])
  {
    v7 = [(_UITableViewMultiSelectController *)self _shouldBeginInteractionAtIndexPath:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)multiSelectInteraction:(id)a3 toggleSelectionStateUpToPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(_UITableViewMultiSelectController *)self tableView];
  v10 = [v7 _nearestCellToPoint:{x, y}];

  v8 = [(_UITableViewMultiSelectController *)self tableView];
  v9 = [v8 indexPathForCell:v10];

  [(_UITableViewMultiSelectController *)self toggleSelectionStateUpToIndexPath:v9];
  [(_UITableViewMultiSelectController *)self _handleAutoScrollFromPoint:x, y];
}

- (void)multiSelectInteraction:(id)a3 appendSelectionAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(_UITableViewMultiSelectController *)self tableView];
  v13 = [v7 indexPathForRowAtPoint:{x, y}];

  v8 = v13;
  if (v13)
  {
    v9 = [(_UITableViewMultiSelectController *)self currentSelectionState];
    v10 = [v9 isSelecting];

    v11 = [MEMORY[0x1E695DFD8] setWithObject:v13];
    if (v10)
    {
      [(_UITableViewMultiSelectController *)self _selectIndexPaths:v11];
    }

    else
    {
      [(_UITableViewMultiSelectController *)self _deselectIndexPaths:v11];
    }

    v12 = [(_UITableViewMultiSelectController *)self currentSelectionState];
    [v12 setStartIndexPath:v13];

    v8 = v13;
  }
}

- (void)didCancelMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = MEMORY[0x1E695DFD8];
  v9 = a3;
  v8 = [v7 set];
  [(_UITableViewMultiSelectController *)self _updateSelectedIndexPaths:v8];

  [(_UITableViewMultiSelectController *)self didEndMultiSelectInteraction:v9 atPoint:x, y];
}

- (BOOL)isInMultiselectInteraction
{
  v2 = [(_UITableViewMultiSelectController *)self currentSelectionState];
  v3 = [v2 isInMultiselectInteraction];

  return v3;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end