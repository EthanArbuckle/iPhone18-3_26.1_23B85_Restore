@interface UIContextMenuPanController
@end

@implementation UIContextMenuPanController

void __68___UIContextMenuPanController_moveToDetentPosition_updateScrubPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = [*(a1 + 32) panGestureRecognizer];
  if ([v4 state] <= 0)
  {
  }

  else
  {
    v5 = [*(a1 + 32) panGestureRecognizer];
    v6 = [v5 state];

    if (v6 <= 2)
    {
      v7 = [*(a1 + 32) panGestureRecognizer];
      v8 = [*(a1 + 32) containerView];
      [v7 locationInView:v8];

      goto LABEL_6;
    }
  }

  [*(a1 + 32) originalPlatterCenter];
LABEL_6:
  v9 = *(a1 + 32);
  v11 = [v9 panGestureRecognizer];
  v10 = [*(a1 + 32) containerView];
  [v11 locationInView:v10];
  [v9 _updateMenuScrubPathWithLocationIfNecessary:?];
}

void __75___UIContextMenuPanController__updateMenuScrubPathWithLocationIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [*(a1 + 32) submenus];
  v4 = [v3 first];

  v5 = v27;
  if (v4 != v27)
  {
    v6 = *(a1 + 32);
    v7 = [v27 listView];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [*(a1 + 40) containerView];
    [v6 convertRect:v16 toView:{v9, v11, v13, v15}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = *(*(*(a1 + 48) + 8) + 40);
    v26 = [UIBezierPath bezierPathWithRect:v18, v20, v22, v24];
    [v25 appendPath:v26];

    v5 = v27;
  }
}

uint64_t __95___UIContextMenuPanController__updateViewPositionsWithTranslation_location_ended_withVelocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _canSwipeDownToDismiss];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _animationsForPreviewPlusActionsStyleWithTranslation:*(a1 + 40) location:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  }

  else
  {
    [v3 _animationsForActionsStyleWithLocation:*(a1 + 88) ended:{*(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  }

  v4 = *(a1 + 32);

  return [v4 _animationsForAnyAttachedAccessoryViews];
}

uint64_t __95___UIContextMenuPanController__updateViewPositionsWithTranslation_location_ended_withVelocity___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end