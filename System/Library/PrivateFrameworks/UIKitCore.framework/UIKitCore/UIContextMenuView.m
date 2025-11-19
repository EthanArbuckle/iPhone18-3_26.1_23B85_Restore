@interface UIContextMenuView
@end

@implementation UIContextMenuView

void __45___UIContextMenuView_setReversesActionOrder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 409);
  v3 = [a2 listView];
  [v3 setReversesActionOrder:v2];
}

void __47___UIContextMenuView_setPreferredMenuMaterial___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 listView];
  [v3 setPreferredMenuMaterial:v2];
}

void __34___UIContextMenuView_visibleMenus__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 menu];
  [v2 addObject:v3];
}

void __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke(uint64_t a1)
{
  v13 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v13.minimum;
  maximum = v13.maximum;
  preferred = v13.preferred;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_2;
  v10[3] = &unk_1E70F4178;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v10 animations:v7, v8, v9];
}

void __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) submenus];
  v3 = [v2 current];
  v4 = [*(a1 + 32) departingNode];

  if (v3 != v4)
  {
    v5 = [*(a1 + 32) departingNode];
    v6 = [v5 listView];
    [v6 removeFromSuperview];

    v7 = *(a1 + 32);

    [v7 setDepartingNode:0];
  }
}

uint64_t __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setDisplayedMenu:*(a1 + 40)];
  [*(a1 + 32) setCollectionViewAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_5(uint64_t a1)
{
  v15 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v15.minimum;
  maximum = v15.maximum;
  preferred = v15.preferred;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_6;
  v11[3] = &unk_1E70F4028;
  v10 = *(a1 + 32);
  v5 = *(a1 + 56);
  v14 = *(a1 + 64);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v10;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v11 animations:*&v7, *&v8, v9];
}

uint64_t __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) frame];
  v6 = CGRectInset(v5, -1.0, -1.0);
  [*(a1 + 32) setFrame:{v6.origin.x, v6.origin.y, v6.size.width, v6.size.height}];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 64));
  }

  [*(a1 + 40) setCollectionViewAlpha:1.0];
  [*(a1 + 48) setAlpha:0.0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_7;
  v4[3] = &unk_1E70F3590;
  v4[4] = *(a1 + 32);
  return [UIView _performWithoutRetargetingAnimations:v4];
}

uint64_t __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) scrollToFirstSignificantAction];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 didCompleteInPlaceMenuTransition];
}

void __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_9(uint64_t a1)
{
  v15 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v15.minimum;
  maximum = v15.maximum;
  preferred = v15.preferred;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_10;
  v11[3] = &unk_1E70F4028;
  v5 = *(a1 + 56);
  v14 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  *&v8 = minimum;
  *&v9 = maximum;
  *&v10 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v11 animations:*&v8, *&v9, v10];
}

uint64_t __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_10(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 64));
  }

  [*(a1 + 32) setEmphasized:1];
  [*(a1 + 32) setUserInteractionEnabled:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        CGAffineTransformMakeScale(&v13, 0.97, 0.97);
        v9 = [v8 listView];
        v12 = v13;
        [v9 setTransform:&v12];

        v10 = [v8 listView];
        [v10 setAlpha:0.0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [*(a1 + 48) setNeedsLayout];
  return [*(a1 + 48) layoutIfNeeded];
}

void __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_11(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) listView];
        [v6 removeFromSuperview];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __46___UIContextMenuView__handleSelectionGesture___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  obj = [a2 listView];
  [*(a1 + 32) locationInView:obj];
  v6 = v5;
  v8 = v7;
  [obj bounds];
  v11.x = v6;
  v11.y = v8;
  if (CGRectContainsPoint(v12, v11))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    *a3 = 1;
  }
}

BOOL __46___UIContextMenuView__handleSelectionGesture___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [MEMORY[0x1E69DEC00] variantForSelector:{objc_msgSend(a2, "action")}];
  v3 = v2 != 0;

  return v3;
}

BOOL __46___UIContextMenuView__handleSelectionGesture___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DEC00];
  v3 = [a2 identifier];
  v4 = [v2 variantForActionIdentifier:v3];
  v5 = v4 != 0;

  return v5;
}

void __52___UIContextMenuView__handleHoverGestureRecognizer___block_invoke(uint64_t a1)
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__7;
  v46 = __Block_byref_object_dispose__7;
  v47 = 0;
  if ([*(a1 + 32) state] <= 2)
  {
    v2 = [*(a1 + 40) submenus];
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __52___UIContextMenuView__handleHoverGestureRecognizer___block_invoke_2;
    v39 = &unk_1E70F4078;
    v40 = *(a1 + 32);
    v41 = &v42;
    [v2 reverseEnumerateNodes:&v36];
  }

  v3 = v43[5];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [v3 next];
  v5 = [*(a1 + 40) submenus];
  v6 = [v5 current];

  if (v4 == v6)
  {
    v10 = *(a1 + 32);
    v11 = [v43[5] listView];
    [v10 locationInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = [v43[5] listView];
    v17 = [v16 indexPathForItemAtPoint:{v13, v15}];

    v18 = [v43[5] listView];
    v19 = [*(a1 + 40) currentListView];
    v20 = [v19 displayedMenu];
    v21 = [v18 indexPathForElement:v20];

    if ([v17 isEqual:v21])
    {

LABEL_9:
      [*(a1 + 40) _clearHoverAutoExitTimer];
      goto LABEL_17;
    }

    v22 = [*(a1 + 40) hoverVelocityIntegrator];
    [v22 velocity];
    v24 = v23;

    v25 = [*(a1 + 40) hoverVelocityIntegrator];
    [v25 velocity];
    v27 = v26;

    v28 = [v43[5] next];
    v29 = [v28 leftOfParentWhenCascading];

    v30 = v24 < 0.0;
    if (!v29)
    {
      v30 = v24 > 0.0;
    }

    if (v30 && hypot(v24, v27) > 10.0)
    {

      [*(a1 + 40) _setHoverAutoExitTimer];
      goto LABEL_17;
    }
  }

  else
  {
    v7 = v43[5];
    v8 = [*(a1 + 40) submenus];
    v9 = [v8 current];

    if (v7 == v9)
    {
      goto LABEL_9;
    }
  }

  [*(a1 + 40) _clearHoverAutoExitTimer];
  v31 = *(a1 + 40);
  v32 = [v31 currentListView];
  v33 = [v32 displayedMenu];
  [v31 _handleSelectionForElement:v33];

LABEL_17:
  v34 = v43[5];
  v35 = [*(a1 + 40) hoveredNode];

  if (v34 != v35)
  {
    [*(a1 + 40) setHoveredNode:v43[5]];
    [*(a1 + 40) setNeedsLayout];
    [*(a1 + 40) layoutIfNeeded];
  }

  _Block_object_dispose(&v42, 8);
}

void __52___UIContextMenuView__handleHoverGestureRecognizer___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v4 = [v11 listView];
  [*(a1 + 32) locationInView:v4];
  v7 = *(a1 + 40);
  if (!*(*(v7 + 8) + 40))
  {
    v8 = v5;
    v9 = v6;
    [v4 bounds];
    v13.x = v8;
    v13.y = v9;
    v10 = CGRectContainsPoint(v14, v13);
    v7 = *(a1 + 40);
    if (v10)
    {
      objc_storeStrong((*(v7 + 8) + 40), a2);
      v7 = *(a1 + 40);
    }
  }

  [v4 setEmphasized:*(*(v7 + 8) + 40) == v11];
}

void __40___UIContextMenuView_hitTest_withEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 listView];
  [v5 convertPoint:v7 toView:{*(a1 + 56), *(a1 + 64)}];
  v9 = v8;
  v11 = v10;

  v12 = [v6 listView];

  v13 = [v12 hitTest:*(a1 + 40) withEvent:{v9, v11}];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a3 = 1;
  }
}

void __83___UIContextMenuView__setAutoNavigationTimerIfNecessaryForElement_isTrackpadHover___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleSelectionForElement:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 currentListView];
  v5 = [v4 indexPathForElement:*(a1 + 32)];
  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 setUnselectableIndexPath:v5];

  v8 = objc_loadWeakRetained((a1 + 48));
  v7 = [v8 feedbackGenerator];
  [*(a1 + 40) center];
  [v7 selectionChangedAtLocation:?];
}

void __44___UIContextMenuView__setHoverAutoExitTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained currentListView];
  v2 = [v1 displayedMenu];
  [WeakRetained _handleSelectionForElement:v2];
}

id __33___UIContextMenuView_keyCommands__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [UIKeyCommand keyCommandWithInput:a1 modifierFlags:0 action:a2];
  [v2 setWantsPriorityOverSystemBehavior:1];

  return v2;
}

void __47___UIContextMenuView_disableTypeSelectIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 listView];
  [v2 disableTypeSelectIfNeeded];
}

@end