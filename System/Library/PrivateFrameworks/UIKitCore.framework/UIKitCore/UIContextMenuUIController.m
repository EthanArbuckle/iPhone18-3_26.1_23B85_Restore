@interface UIContextMenuUIController
@end

@implementation UIContextMenuUIController

void __50___UIContextMenuUIController_platterContainerView__block_invoke_4(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  v2 = [v1 state];

  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __50___UIContextMenuUIController_platterContainerView__block_invoke_5;
    v3[3] = &unk_1E70F5A28;
    objc_copyWeak(&v4, &to);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
  }

  objc_destroyWeak(&to);
}

void __50___UIContextMenuUIController_platterContainerView__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_copyWeak(&to, (a1 + 32));
  v3 = *(a2 + 8);
  if (!v3 || (v4 = *a2) != 0 && v3[13] == v4[13] && v3[15] == v4[15])
  {
    v5 = [v3 userInterfaceStyle];
    if (v5 != [*a2 userInterfaceStyle])
    {
      v6 = objc_loadWeakRetained(&to);
      [v6 _updatePlatterContainerViewTraitCollection];
    }
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50___UIContextMenuUIController_platterContainerView__block_invoke_2;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, &to);
    dispatch_async(MEMORY[0x1E69E96A0], v7);
    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&to);
}

void __72___UIContextMenuUIController_livePreviewForDragItem_preferringFullSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4, _BYTE *a5)
{
  v10 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v14 = v10;
    v11 = [v10 collapsedPreview];
    v12 = [*(a1 + 32) _targetedLiftPreview];
    v13 = [v11 _isRoughlyEqualToPreview:v12];

    v10 = v14;
    if (v13)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v10 = v14;
      *(*(*(a1 + 48) + 8) + 24) = a4;
      *(*(*(a1 + 56) + 8) + 24) = a3;
      *a5 = 1;
    }
  }
}

void __72___UIContextMenuUIController_livePreviewForDragItem_preferringFullSize___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didBeginMorphToDragPreview];
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72___UIContextMenuUIController_livePreviewForDragItem_preferringFullSize___block_invoke_3;
  v5[3] = &unk_1E70F3590;
  v5[4] = WeakRetained;
  [v3 contextMenuUIController:v4 didRequestDismissalWithReason:6 alongsideActions:0 completion:v5];
}

void __87___UIContextMenuUIController__primaryPlatterDragPreviewForDragItem_preferringFullSize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setDeferPreviewUpdates:0];
  v2 = [*(a1 + 32) previewProvider];

  if (!v2)
  {
    v3 = [*(a1 + 32) _targetedLiftPreview];
    v4 = [v3 _duiPreview];
    v5 = [v4 preferredStackOrder];

    v6 = [*(a1 + 32) _targetedLiftPreview];
    v7 = [v6 _duiPreview];
    [v7 liftAnchorPoint];
    v9 = v8;
    v11 = v10;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87___UIContextMenuUIController__primaryPlatterDragPreviewForDragItem_preferringFullSize___block_invoke_2;
    v12[3] = &unk_1E7124D48;
    v13 = *(a1 + 40);
    v14 = v5;
    v15 = v9;
    v16 = v11;
    [*(a1 + 32) setPreviewProvider:v12];
  }
}

id __87___UIContextMenuUIController__primaryPlatterDragPreviewForDragItem_preferringFullSize___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _duiPreview];
  [v3 setPreferredStackOrder:v2];

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 32) _duiPreview];
  [v6 setLiftAnchorPoint:{v4, v5}];

  v7 = *(a1 + 32);

  return v7;
}

uint64_t __57___UIContextMenuUIController_dragWillCancelWithAnimator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setAlpha:1.0];
  return [*(a1 + 32) setShadowVisible:0];
}

uint64_t __57___UIContextMenuUIController_dragWillCancelWithAnimator___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) setCollapsedShadowStyle:0];
  return [*(a1 + 32) setHideChromeWhenCollapsed:1];
}

void __59___UIContextMenuUIController_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 locationInView:v7];
  v8 = [v7 hitTest:0 withEvent:?];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t __79___UIContextMenuUIController_shouldMaintainKeyboardAssertionForFirstResponder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isDescendantOfView:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __76___UIContextMenuUIController__adjustViewForKeyboardVisibility_keyboardInfo___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __76___UIContextMenuUIController__adjustViewForKeyboardVisibility_keyboardInfo___block_invoke_3(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __64___UIContextMenuUIController__needsToAvoidKeyboardForResponder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isDescendantOfView:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPreviewSizeDidChange:0];
  [*(a1 + 32) _updateLayoutAndAttachment:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  if (v2)
  {
    [v2 preview];
    v6 = *(&v58 + 1);
    v5 = *&v58;
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v6 = 0.0;
    v5 = 0.0;
    v57 = 0u;
    v58 = 0u;
  }

  [v3 contextMenuUIControllerWillPerformLayout:v4 withPreviewSize:{v5, v6}];

  v7 = [*(a1 + 32) contentPlatterView];
  v8 = [*(a1 + 32) menuView];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  if (v7)
  {
    [v7 transform3D];
  }

  v9 = [v7 layer];
  [v9 zPosition];
  v11 = v10;

  if (v2)
  {
    [v2 preview];
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_2;
  v38[3] = &unk_1E70F4000;
  v12 = v7;
  v13 = *(a1 + 32);
  v39 = v12;
  v40 = v13;
  _UIContextMenuItemLayoutApply(&v41, v12, v38);
  v14 = [*(a1 + 32) menuConfiguration];
  v15 = [v14 isMultiItemMenu];

  if (v15)
  {
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v41 = v49;
    v42 = v50;
    v43 = v51;
    v44 = v52;
    [v12 setTransform3D:&v41];
    v16 = [v12 layer];
    [v16 setZPosition:v11];
  }

  if (v2)
  {
    [v2 menu];
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
  }

  _UIContextMenuItemLayoutApply(&v41, v8, 0);
  v31 = v8;
  if (_UIContextMenuMagicMorphAnimationEnabled() && [*(a1 + 32) _isAnimatingPresentation])
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_3;
    v36[3] = &unk_1E70F3590;
    v37 = v8;
    [UIView performWithoutAnimation:v36];
  }

  else
  {
    [v8 layoutIfNeeded];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = [*(a1 + 32) menuConfiguration];
  v18 = [v17 accessoryViews];

  v19 = [v18 countByEnumeratingWithState:&v32 objects:v65 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        v24 = [v2 accessoryPositions];
        v25 = [v24 objectForKey:v23];
        [v25 CGPointValue];
        [v23 setCenter:?];
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v65 count:16];
    }

    while (v20);
  }

  if (*(a1 + 41) == 1)
  {
    v26 = [*(a1 + 32) platterContainerView];
    v27 = v31;
    [v31 activeSubmenuFrameInCoordinateSpace:v26];
    MaxY = CGRectGetMaxY(v67);
    [v26 bounds];
    v29 = 2 * (MaxY <= CGRectGetMaxY(v68));
  }

  else
  {
    v29 = 1;
    v27 = v31;
  }

  v30 = [*(a1 + 32) platterPanController];
  [v30 moveToDetentPosition:v29 updateScrubPath:1];
}

void __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    [*(a1 + 32) updateContentSize];
  }

  if (a3)
  {
    v5 = [*(a1 + 40) flocker];
    [v5 updateFlockLocation];
  }
}

uint64_t __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_4(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

void __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_5(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_6;
  v1[3] = &unk_1E70F0F78;
  v2 = *(a1 + 32);
  [UIView _animateByRetargetingAnimations:v1 completion:0];
}

uint64_t __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_6(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

void __54___UIContextMenuUIController__displayMenu_updateType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createMenuViewIfNecessaryForMenu:*(a1 + 40)];
  v2 = [*(a1 + 32) menuView];
  [v2 displayMenu:*(a1 + 40) updateType:0 alongsideAnimations:0];

  v3 = [*(a1 + 32) contentPlatterView];
  v4 = [v3 superview];
  v5 = [*(a1 + 32) menuView];
  [v4 addSubview:v5];

  v6 = [*(a1 + 32) menuView];
  v7 = [*(a1 + 32) platterPanController];
  [v7 setMenuView:v6];

  v8 = [*(a1 + 32) _layoutWithUpdatedAttachment:1 concealedMenu:1];
  v9 = v8;
  if (v8)
  {
    [v8 menu];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  v10 = [*(a1 + 32) menuView];
  _UIContextMenuItemLayoutApply(&v12, v10, 0);

  v11 = [*(a1 + 32) menuView];
  [v11 layoutIfNeeded];
}

uint64_t __54___UIContextMenuUIController__displayMenu_updateType___block_invoke_2(uint64_t a1)
{
  v4 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54___UIContextMenuUIController__displayMenu_updateType___block_invoke_3;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v3 animations:*&v4.minimum, *&v4.maximum, *&v4.preferred];
}

uint64_t __59___UIContextMenuUIController__replaceVisibleMenu_withMenu___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 == 5)
  {
    return [v2 _concealMenu];
  }

  else
  {
    return [v2 _updatePlatterAndActionViewLayoutForce:1 updateAttachment:0 adjustDetent:0];
  }
}

uint64_t __42___UIContextMenuUIController__concealMenu__block_invoke(uint64_t a1)
{
  v4 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42___UIContextMenuUIController__concealMenu__block_invoke_2;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v3 animations:*&v4.minimum, *&v4.maximum, *&v4.preferred];
}

uint64_t __42___UIContextMenuUIController__concealMenu__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) platterPanController];
  [v2 setMenuView:0];

  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  v5 = *(a1 + 40);

  return [v5 removeFromSuperview];
}

void __50___UIContextMenuUIController_platterContainerView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlatterAndActionViewLayoutForce:1 updateAttachment:1];

  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 menuView];
  [v3 setNeedsLayout];
}

void __50___UIContextMenuUIController_platterContainerView__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  v2 = [v1 delegate];
  v3 = objc_loadWeakRetained(&to);
  [v2 contextMenuUIController:v3 didRequestDismissalWithReason:0 alongsideActions:0 completion:0];

  objc_destroyWeak(&to);
}

void __50___UIContextMenuUIController_platterContainerView__block_invoke_5(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __50___UIContextMenuUIController_platterContainerView__block_invoke_6;
  v1[3] = &unk_1E70F5A28;
  objc_copyWeak(&v2, (a1 + 32));
  [UIView performWithoutAnimation:v1];
  objc_destroyWeak(&v2);
}

void __50___UIContextMenuUIController_platterContainerView__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 contextMenuUIController:v3 didRequestDismissalWithReason:4 alongsideActions:0 completion:0];
}

@end