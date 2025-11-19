@interface SBLiveWindowResizeGestureWorkspaceTransaction
- (void)_beginWithGesture:(id)a3;
@end

@implementation SBLiveWindowResizeGestureWorkspaceTransaction

- (void)_beginWithGesture:(id)a3
{
  v5 = a3;
  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v7 = [v6 itemContainerToResizeUsingPointer];
  if (v7)
  {
    v8 = v7;
    self->_selectedEdge = [v7 pointerIsHoveringOverEdge];
    goto LABEL_38;
  }

  v9 = objc_opt_class();
  v10 = v5;
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

  v13 = [v6 visibleItemContainers];
  v14 = [v12 initialTouchLeafAppLayout];
  v8 = [v13 objectForKey:v14];

  v15 = [v6 view];
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
    v8 = [v6 _itemContainerNearestLocation:1 environment:1 prioritizeForegroundedItemContainers:{v17, v19}];
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if ([v12 selectedEdge])
  {
    v20 = [v12 selectedEdge];
    v21 = v20;
    if (v20 > 3)
    {
      if (v20 == 4)
      {
        v22 = 2;
        goto LABEL_35;
      }

      if (v20 == 8)
      {
        v22 = 4;
        goto LABEL_35;
      }
    }

    else
    {
      if (v20 == 1)
      {
        v22 = 1;
        goto LABEL_35;
      }

      if (v20 == 2)
      {
        v22 = 3;
LABEL_35:
        self->_selectedEdge = v22;
        goto LABEL_36;
      }
    }

    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"SBLiveWindowResizeGestureWorkspaceTransaction.m" lineNumber:61 description:{@"unknown edge '%ld", v21}];

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
  v26 = [v8 appLayout];
  v27 = [v6 appLayoutForLeafAppLayout:v26];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:v27];
  v28 = [v26 itemForLayoutRole:1];
  self->_selectedLayoutRole = [v27 layoutRoleForItem:v28];

  v29.receiver = self;
  v29.super_class = SBLiveWindowResizeGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v29 _beginWithGesture:v5];
}

- (void)_beginWithGesture:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLiveWindowResizeGestureWorkspaceTransaction.m" lineNumber:80 description:@"Need a selected item container"];
}

@end