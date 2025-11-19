@interface UIContextMenuBasicMorphPresentationAnimation
@end

@implementation UIContextMenuBasicMorphPresentationAnimation

id __82___UIContextMenuBasicMorphPresentationAnimation_initWithUIController_asDismissal___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!a3)
  {
    v11 = [WeakRetained _dismissalPreviewForSecondaryItemPreview:v5];
    goto LABEL_5;
  }

  v8 = [WeakRetained stashedDismissalPreview];
  v9 = [v8 view];
  v10 = [v7 _platterView];

  if (v9 != v10)
  {
    v11 = [v7 stashedDismissalPreview];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

void __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _targetedPreviewForDismissalAnimation];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 56) + 8) + 40) target];
  v3 = [v2 container];
  v4 = *(a1 + 32);

  if (v3 != v4)
  {
    if (([*(a1 + 40) _isDismissingToDrag] & 1) == 0)
    {
      if ([*(a1 + 40) isSingleItemMenu])
      {
        v5 = [*(a1 + 40) expandedLayout];
        v6 = [v5 type];

        if (v6 != 3)
        {
          [*(a1 + 40) _prepareReparentingAnimationWithDismissalTarget:*(*(*(a1 + 56) + 8) + 40)];
        }
      }

      [*(a1 + 40) _anchorTransitionViewToTargetedPreview:*(*(*(a1 + 56) + 8) + 40)];
    }

    [*(a1 + 48) setCollapsedPreview:*(*(*(a1 + 56) + 8) + 40)];
  }

  [*(a1 + 48) setNeedsLayout];
  v7 = *(a1 + 48);

  return [v7 layoutIfNeeded];
}

uint64_t __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) scrollToFirstSignificantAction];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_4(uint64_t a1, double a2)
{
  v4 = 0.1;
  if (*(a1 + 40))
  {
    v4 = 0.5;
  }

  if (v4 < a2)
  {
    v9 = v2;
    v10 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setAccessoryAnimationBlock:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_5;
    v7[3] = &unk_1E70F35E0;
    v7[4] = WeakRetained;
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) _accessoryViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setVisible:*(a1 + 40) animated:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __89___UIContextMenuBasicMorphPresentationAnimation__performReduceMotionAppearanceTransition__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setAlpha:0.0];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(a1 + 40) _accessoryViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setVisible:1 animated:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __92___UIContextMenuBasicMorphPresentationAnimation__performReduceMotionDisappearanceTransition__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _targetedPreviewForDismissalAnimation];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) _accessoryViews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setVisible:0 animated:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

uint64_t __83___UIContextMenuBasicMorphPresentationAnimation__prepareOverallAnimationCompletion__block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  v2 = *(a1 + 56);

  return [v2 removeFromSuperview];
}

void __90___UIContextMenuBasicMorphPresentationAnimation__prepareAnimatablePropertyBasedAnimations__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained animationProgress];
  [v1 presentationValue];
  v3 = v2;

  v4 = [WeakRetained reparentingAnimationBlock];

  if (v4)
  {
    v5 = [WeakRetained reparentingAnimationBlock];
    v5[2](v3);
  }

  v6 = [WeakRetained accessoryAnimationBlock];

  if (v6)
  {
    v7 = [WeakRetained accessoryAnimationBlock];
    v7[2](v3);
  }
}

void __90___UIContextMenuBasicMorphPresentationAnimation__prepareAnimatablePropertyBasedAnimations__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _shouldAnimateBackgroundEffects])
  {
    [WeakRetained _setBackgroundVisible:{objc_msgSend(WeakRetained, "isDismissTransition") ^ 1}];
  }
}

void __90___UIContextMenuBasicMorphPresentationAnimation__prepareAnimatablePropertyBasedAnimations__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained uiController];
  v2 = [v1 backgroundViewAnimationProgress];
  [v2 presentationValue];
  v4 = v3;

  [WeakRetained _presentation_applyBackgroundEffectWithProgress:v4];
}

void __97___UIContextMenuBasicMorphPresentationAnimation__prepareReparentingAnimationWithDismissalTarget___block_invoke(id *a1, double a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v4 = [WeakRetained reparentingPortalView];
  if (a2 >= 0.5)
  {
    v5 = fmax(fmin(a2 + -0.5 + a2 + -0.5, 1.0), 0.0);
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v5 + v5 * 0.0];
    [v4 _setPresentationValue:v6 forKey:@"opacity"];
    [a1[4] _setPresentationValue:v6 forKey:@"filters.opacityPair.inputAmount"];
  }

  v7 = [a1[5] overridePositionTrackingView];
  if (v7)
  {
    v8 = [a1[6] superview];
    [a1[6] center];
    [v8 convertPoint:v7 toView:?];
    v10 = v9;
    v12 = v11;

    v13 = [a1[6] superview];
    [v7 convertPoint:v13 toView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    v18 = a1[6];
    v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{v15, v17}];
    [v18 _setPresentationValue:v19 forKey:@"position"];
  }
}

@end