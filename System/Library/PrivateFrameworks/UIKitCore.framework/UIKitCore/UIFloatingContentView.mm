@interface UIFloatingContentView
@end

@implementation UIFloatingContentView

uint64_t __40___UIFloatingContentView_initWithFrame___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:0];
  [*(a1 + 32) setRoundContentWhenDeselected:1];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _defaultFocusAnimationConfiguration];
  [v2 setFocusAnimationConfiguration:v3];

  [*(a1 + 32) setVisualEffectContainerViewScaleFactor:1.0];
  [*(a1 + 32) setUseShadowImage:_UIFloatingContentViewEnablePunchoutShadow() ^ 1];
  [*(a1 + 32) setClipsContentToBounds:1];
  [*(a1 + 32) setShadowContentsCenter:{0.5, 0.5, 0.0, 0.0}];
  v4 = *(a1 + 32);

  return [v4 setShadowEnabled:1];
}

id __73___UIFloatingContentView__updateDefaultBackgroundFillsForHighlightStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = v3 == 1000 || v3 == 2;
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);

  return v6;
}

id __73___UIFloatingContentView__updateDefaultBackgroundFillsForHighlightStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = v3 == 1000 || v3 == 2;
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);

  return v6;
}

id __73___UIFloatingContentView__updateDefaultBackgroundFillsForHighlightStyle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = v3 == 1000 || v3 == 2;
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);

  return v6;
}

id __73___UIFloatingContentView__updateDefaultBackgroundFillsForHighlightStyle___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = v3 == 1000 || v3 == 2;
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);

  return v6;
}

uint64_t __65___UIFloatingContentView__updateViewPropertiesForHighlightStyle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateDefaultBackgroundFillsForHighlightStyle:*(a1 + 48)];
  [*(a1 + 32) setCornerRadius:*(a1 + 56)];
  [*(a1 + 32) setCornerCurve:*(a1 + 40)];
  if (*(a1 + 200) == 1 && _UISolariumMetricsEnabled())
  {
    [*(a1 + 32) setAsymmetricFocusedSizeIncrease:{*(a1 + 64), *(a1 + 64)}];
    [*(a1 + 32) setAsymmetricPressedSizeIncrease:{*(a1 + 72), *(a1 + 72)}];
  }

  else
  {
    [*(a1 + 32) setFocusedSizeIncrease:*(a1 + 64)];
    [*(a1 + 32) setPressedSizeIncrease:*(a1 + 72)];
  }

  v2 = *(a1 + 32);
  if (*(a1 + 200))
  {
    v3 = 0;
  }

  else
  {
    v3 = _UISolariumMetricsEnabled();
  }

  [v2 setShowsHighContrastFocusIndicator:v3];
  [*(a1 + 32) setFocusScaleAnchorPoint:{*(a1 + 80), *(a1 + 88)}];
  [*(a1 + 32) setShadowRadius:*(a1 + 96)];
  [*(a1 + 32) setShadowVerticalOffset:*(a1 + 104)];
  [*(a1 + 32) setShadowOpacity:2 forUserInterfaceStyle:*(a1 + 112)];
  [*(a1 + 32) setShadowOpacity:1 forUserInterfaceStyle:*(a1 + 120)];
  [*(a1 + 32) setShadowExpansion:{*(a1 + 128), *(a1 + 128)}];
  [*(a1 + 32) setUnfocusedShadowRadius:*(a1 + 136)];
  [*(a1 + 32) setUnfocusedShadowVerticalOffset:*(a1 + 144)];
  [*(a1 + 32) setUnfocusedShadowExpansion:{*(a1 + 152), *(a1 + 152)}];
  [*(a1 + 32) setUnfocusedShadowOpacity:*(a1 + 160)];
  [*(a1 + 32) setPressedShadowRadius:*(a1 + 168)];
  [*(a1 + 32) setPressedShadowVerticalOffset:*(a1 + 176)];
  [*(a1 + 32) setPressedShadowExpansion:{*(a1 + 184), *(a1 + 184)}];
  [*(a1 + 32) setPressedShadowOpacity:*(a1 + 192)];
  v4 = *(a1 + 32);

  return [v4 setShadowEnabled:1];
}

void __52___UIFloatingContentView__shadowPathForSize_radius___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v1 = _MergedGlobals_24;
  _MergedGlobals_24 = v0;
}

void __68___UIFloatingContentView__setControlState_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) floatingContentDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) floatingContentDelegate];
    [v4 floatingContentView:*(a1 + 32) didFinishTransitioningToState:*(*(a1 + 32) + 720)];
  }

  if (*(a1 + 40) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [v5 _primaryStateForState:v5[90]];

    [v5 _updateContainerLayerQualityForPrimaryState:v6];
  }
}

void __68___UIFloatingContentView__setControlState_withAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  if ((_UIFloatingContentViewEnablePunchoutShadow() & 1) == 0)
  {
    [*(a1 + 32) _layoutShadow];
    [*(a1 + 32) _legacy_updateShadowContentsScaleForPrimaryState:*(a1 + 40)];
  }

  [*(a1 + 32) _updateTransformForPrimaryState:*(a1 + 40)];
  [*(a1 + 32) _updateHighContrastFocusIndicatorForPrimaryState:*(a1 + 40)];
  [*(a1 + 32) _updateCornerRadiusLayers];
  v2 = *(a1 + 32);
  if (*(v2 + 504))
  {
    [*(v2 + 504) setHidden:*(v2 + 736) != 1];
    v3 = *(a1 + 32);
    v4 = 0.0;
    if (*(a1 + 64) == 1)
    {
      v4 = *(v3 + 784);
    }

    [*(v3 + 504) setAlpha:v4];
    v2 = *(a1 + 32);
  }

  [v2 _updateUnfocusedBorderView];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68___UIFloatingContentView__setControlState_withAnimationCoordinator___block_invoke_3;
  aBlock[3] = &unk_1E70F32F0;
  v5 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v5;
  v6 = _Block_copy(aBlock);
  if (*(a1 + 65) == 1)
  {
    +[UIView inheritedAnimationDuration];
    v8 = v7 * *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68___UIFloatingContentView__setControlState_withAnimationCoordinator___block_invoke_4;
    v12[3] = &unk_1E70F5FA8;
    v9 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v14 = v9;
    v13 = v6;
    [UIView animateWithDuration:32 delay:v12 options:0 animations:v8 completion:0.0];
  }

  else
  {
    [*(a1 + 32) _updateHighlightViewForPrimaryState:*(a1 + 40)];
    v6[2](v6);
  }

  v10 = [*(a1 + 32) floatingContentDelegate];
  [v10 floatingContentView:*(a1 + 32) isTransitioningFromState:*(a1 + 56) toState:*(*(a1 + 32) + 720)];

  v11 = *(a1 + 32);
  if (*(a1 + 40) == 8)
  {
    [v11 _installContentMotionEffects];
  }

  else
  {
    [v11 _uninstallContentMotionEffects];
  }
}

uint64_t __68___UIFloatingContentView__setControlState_withAnimationCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = _UIFloatingContentViewEnablePunchoutShadow();
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _updatePunchoutShadowLayer];
  }

  else
  {
    v5 = *(a1 + 40);

    return [v3 _legacy_updateShadowOpacityForPrimaryState:v5];
  }
}

uint64_t __68___UIFloatingContentView__setControlState_withAnimationCoordinator___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateHighlightViewForPrimaryState:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void *__65___UIFloatingContentView_setShadowOpacity_forUserInterfaceStyle___block_invoke(void *result)
{
  v1 = 41;
  if (result[5] == 2)
  {
    v1 = 40;
  }

  *(result[4] + OBJC_IVAR____UIFloatingContentView__backgroundColorsByState[v1]) = result[6];
  return result;
}

void __49___UIFloatingContentView__setShadowImageIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cornerRadius];
  v2 = *(a1 + 32);
  if (v3 == 1.79769313e308)
  {
    [v2 frame];
    v5 = v6 * 0.5;
  }

  else
  {
    [v2 cornerRadius];
    v5 = v4;
  }

  if (v5 > 0.0)
  {
    [*(a1 + 32) shadowRadius];
    v8 = +[_UIStretchableShadow shadowWithRadius:cornerRadius:isContinuousCorner:white:](_UIStretchableShadow, "shadowWithRadius:cornerRadius:isContinuousCorner:white:", [*(a1 + 32) isContinuousCornerEnabled], v7, v5, 0.0);
    v9 = *(a1 + 32);
    v10 = [UIImage imageWithCGImage:v8];
    [v9 setShadowImage:v10];
  }
}

@end