@interface SBLiveWindowResizeGestureWorkspaceTransaction
- (void)_beginWithGesture:(id)gesture;
@end

@implementation SBLiveWindowResizeGestureWorkspaceTransaction

- (void)_beginWithGesture:(id)gesture
{
  gestureCopy = gesture;
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  itemContainerToResizeUsingPointer = [switcherViewController itemContainerToResizeUsingPointer];
  if (itemContainerToResizeUsingPointer)
  {
    v8 = itemContainerToResizeUsingPointer;
    self->_selectedEdge = [itemContainerToResizeUsingPointer pointerIsHoveringOverEdge];
    goto LABEL_38;
  }

  v9 = objc_opt_class();
  v10 = gestureCopy;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  visibleItemContainers = [switcherViewController visibleItemContainers];
  initialTouchLeafAppLayout = [v12 initialTouchLeafAppLayout];
  v8 = [visibleItemContainers objectForKey:initialTouchLeafAppLayout];

  view = [switcherViewController view];
  _UISystemGestureLocationInView();
  v17 = v16;
  v19 = v18;

  if (v8)
  {
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = [switcherViewController _itemContainerNearestLocation:1 environment:1 prioritizeForegroundedItemContainers:{v17, v19}];
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if ([v12 selectedEdge])
  {
    selectedEdge = [v12 selectedEdge];
    v21 = selectedEdge;
    if (selectedEdge > 3)
    {
      if (selectedEdge == 4)
      {
        v22 = 2;
        goto LABEL_35;
      }

      if (selectedEdge == 8)
      {
        v22 = 4;
        goto LABEL_35;
      }
    }

    else
    {
      if (selectedEdge == 1)
      {
        v22 = 1;
        goto LABEL_35;
      }

      if (selectedEdge == 2)
      {
        v22 = 3;
LABEL_35:
        self->_selectedEdge = v22;
        goto LABEL_36;
      }
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBLiveWindowResizeGestureWorkspaceTransaction.m" lineNumber:61 description:{@"unknown edge '%ld", v21}];

    goto LABEL_36;
  }

LABEL_17:
  [v8 frame];
  UIRectGetCenter();
  if (v17 < v23 && v19 < v24)
  {
    v22 = 5;
    goto LABEL_35;
  }

  if (v17 > v23 && v19 < v24)
  {
    v22 = 6;
    goto LABEL_35;
  }

  if (v17 < v23 && v19 > v24)
  {
    v22 = 7;
    goto LABEL_35;
  }

  if (v17 > v23 && v19 > v24)
  {
    v22 = 8;
    goto LABEL_35;
  }

LABEL_36:

  if (!v8)
  {
    [(SBLiveWindowResizeGestureWorkspaceTransaction *)a2 _beginWithGesture:?];
  }

LABEL_38:
  appLayout = [v8 appLayout];
  v27 = [switcherViewController appLayoutForLeafAppLayout:appLayout];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:v27];
  v28 = [appLayout itemForLayoutRole:1];
  self->_selectedLayoutRole = [v27 layoutRoleForItem:v28];

  v29.receiver = self;
  v29.super_class = SBLiveWindowResizeGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v29 _beginWithGesture:gestureCopy];
}

- (void)_beginWithGesture:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLiveWindowResizeGestureWorkspaceTransaction.m" lineNumber:80 description:@"Need a selected item container"];
}

@end