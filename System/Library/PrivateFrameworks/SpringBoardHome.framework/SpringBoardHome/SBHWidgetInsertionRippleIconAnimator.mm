@interface SBHWidgetInsertionRippleIconAnimator
- (CGPoint)_centerOfIconViewAssumingCenteredAnchorPoint:(id)a3;
- (SBHWidgetInsertionRippleIconAnimator)initWithIconListView:(id)a3 widgetIcon:(id)a4 referenceLayout:(id)a5 referenceIconView:(id)a6 additionalIconListView:(id)a7 preludeBlock:(id)a8;
- (void)_createPortalViewsForIconViews;
- (void)_createPortalViewsForIconViewsInIconListView:(id)a3 dropIconListView:(id)a4 withPortalContainerView:(id)a5 widgetIconCenter:(CGPoint)a6;
- (void)_displayLinkFired:(id)a3;
- (void)_finishRippleAnimation;
- (void)_finishRippleAnimationEarlyForIconView:(id)a3;
- (void)_layoutRippleIconViews;
- (void)_performJumpAnimationWithCompletion:(id)a3;
- (void)_performWidgetIconScaleOvershootAnimation;
- (void)_playImpactHapticAfterDelay:(double)a3;
- (void)_reparentPortalViewIntoIconListViewAfterDelay:(double)a3;
- (void)_reparentPortalViewIntoIconListViewNow;
- (void)_startRippleAnimationNow;
- (void)_startRippleAnimationWithDelay:(double)a3;
- (void)animateWithCompletion:(id)a3;
@end

@implementation SBHWidgetInsertionRippleIconAnimator

- (SBHWidgetInsertionRippleIconAnimator)initWithIconListView:(id)a3 widgetIcon:(id)a4 referenceLayout:(id)a5 referenceIconView:(id)a6 additionalIconListView:(id)a7 preludeBlock:(id)a8
{
  v15 = a3;
  obj = a4;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v62.receiver = self;
  v62.super_class = SBHWidgetInsertionRippleIconAnimator;
  v21 = [(SBHWidgetInsertionRippleIconAnimator *)&v62 init];
  if (v21)
  {
    v55 = a6;
    v57 = v20;
    v58 = v18;
    v22 = [v15 gridCellInfo];
    v23 = [v22 numberOfUsedColumns];
    v56 = v22;
    v24 = [v22 numberOfUsedRows];
    v60 = v17;
    if (v19)
    {
      v25 = [v19 model];
      if ([v25 numberOfIcons])
      {
        v26 = [v25 gridSize];
        if (v23 <= v26)
        {
          v23 = v26;
        }

        v27 = [v25 gridSize] >> 16;
        v24 += v27;
        v28 = SBIconCoordinateMake(0, v27);
        [v19 centerForIconCoordinate:{v28, v29}];
        [v15 convertPoint:v19 fromView:?];
        [v15 fractionalCoordinateAtPoint:?];
        v31 = vcvtpd_u64_f64(v30);
        if (v24 <= v31)
        {
          v24 = v31;
        }

        [v19 frame];
        v33 = v32;
        [v15 frame];
        if (v33 < v34)
        {
          v21->_rowOffset = v27;
        }

        v17 = v60;
      }

      else
      {

        v25 = 0;
      }
    }

    v35 = SBHIconListLayoutIconGridSizeClassSizes(v17, [v15 orientation]);
    v59 = v16;
    v36 = [v16 gridSizeClass];
    v37 = [v35 gridSizeForGridSizeClass:v36] >> 16;

    v21->_widgetIconSizeIsLarge = v37 >= [v35 gridSizeForGridSizeClass:@"SBHIconGridSizeClassLarge"] >> 16;
    v38 = [v15 iconLocation];
    v39 = [v38 isEqualToString:@"SBIconLocationStackConfiguration"];

    if (v39)
    {
      v40 = 0;
      if (v21->_widgetIconSizeIsLarge)
      {
        v41 = 8;
      }

      else
      {
        v41 = 4;
      }
    }

    else
    {
      v42 = [MEMORY[0x1E69DC938] currentDevice];
      v43 = [v42 userInterfaceIdiom];

      v40 = (v43 & 0xFFFFFFFFFFFFFFFBLL) == 1;
      if ((v43 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v41 = 4;
      }

      else
      {
        v41 = 2;
      }
    }

    v44 = [[SBHRippleSimulation alloc] initWithRows:v24 columns:v23 resolution:v41 style:v40];
    rippleSimulation = v21->_rippleSimulation;
    v21->_rippleSimulation = v44;

    objc_storeStrong(&v21->_iconListView, a3);
    objc_storeStrong(&v21->_widgetIcon, obj);
    objc_storeStrong(&v21->_additionalIconListView, a7);
    v21->_startedAnimation = 0;
    objc_storeStrong(&v21->_referenceIconView, v55);
    v46 = [v15 window];
    v18 = v58;
    [v58 convertPoint:v46 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v21->_referenceIconViewOriginInWindow.x = v47;
    v21->_referenceIconViewOriginInWindow.y = v48;

    v49 = +[SBHHomeScreenDomain rootSettings];
    v50 = [v49 widgetSettings];
    settings = v21->_settings;
    v21->_settings = v50;

    v20 = v57;
    v52 = [v57 copy];
    preludeBlock = v21->_preludeBlock;
    v21->_preludeBlock = v52;

    v16 = v59;
    v17 = v60;
  }

  return v21;
}

- (void)animateWithCompletion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_startedAnimation)
  {
    [SBHWidgetInsertionRippleIconAnimator animateWithCompletion:a2];
  }

  v6 = v5;
  preludeBlock = self->_preludeBlock;
  if (preludeBlock)
  {
    preludeBlock[2]();
  }

  self->_startedAnimation = 1;
  v8 = _Block_copy(v6);
  animationCompletion = self->_animationCompletion;
  self->_animationCompletion = v8;

  v10 = self->_iconListView;
  [(SBIconListView *)v10 layoutIconsIfNeededWithAnimationType:1 options:0];
  v11 = [(SBIconListView *)v10 iconViewForIcon:self->_widgetIcon];
  widgetIconView = self->_widgetIconView;
  self->_widgetIconView = v11;

  if (!self->_disableGlassGroupingAssertionsForIconViews)
  {
    v13 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    disableGlassGroupingAssertionsForIconViews = self->_disableGlassGroupingAssertionsForIconViews;
    self->_disableGlassGroupingAssertionsForIconViews = v13;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__SBHWidgetInsertionRippleIconAnimator_animateWithCompletion___block_invoke;
  v20[3] = &unk_1E808AEC0;
  v20[4] = self;
  [(SBIconListView *)v10 enumerateIconViewsUsingBlock:v20];
  v15 = SBLogWidgets();
  if (os_signpost_enabled(v15))
  {
    v16 = [(SBWidgetIcon *)self->_widgetIcon activeWidget];
    *buf = 138543362;
    v22 = v16;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_RIPPLE_ANIMATION", "activeWidget=%{public, name=activeWidget}@", buf, 0xCu);
  }

  [(SBHWidgetSettings *)self->_settings dropInsertionImpactDelay];
  if (self->_referenceIconView)
  {
    [(SBHWidgetInsertionRippleIconAnimator *)self _performJumpAnimationWithCompletion:0];
    [(SBHWidgetSettings *)self->_settings animatedInsertionImpactDelay];
    v19 = v18;
  }

  else
  {
    v19 = v17;
    [(SBHWidgetInsertionRippleIconAnimator *)self _performWidgetIconScaleOvershootAnimation];
  }

  [(SBHWidgetInsertionRippleIconAnimator *)self _playImpactHapticAfterDelay:v19];
  [(SBHWidgetInsertionRippleIconAnimator *)self _startRippleAnimationWithDelay:v19];
}

void __62__SBHWidgetInsertionRippleIconAnimator_animateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 disallowGlassGroupingForReason:@"WidgetRippleAnimation"];
  [*(*(a1 + 32) + 104) setObject:v4 forKey:v3];
}

- (void)_performWidgetIconScaleOvershootAnimation
{
  [(SBHWidgetSettings *)self->_settings dropInsertionImpactScale];
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, v3, v3);
  v4 = MEMORY[0x1E69DD250];
  [(SBHWidgetSettings *)self->_settings dropInsertionSlamDuration];
  v6 = v5;
  [(SBHWidgetSettings *)self->_settings dropInsertionSlamDelay];
  v8 = v7;
  [(SBHWidgetSettings *)self->_settings dropInsertionSlamDampingRatio];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = v19;
  v17[2] = __81__SBHWidgetInsertionRippleIconAnimator__performWidgetIconScaleOvershootAnimation__block_invoke;
  v17[3] = &unk_1E808B4E0;
  v17[4] = self;
  [v4 animateWithDuration:0 delay:v17 usingSpringWithDamping:0 initialSpringVelocity:v6 options:v8 animations:v9 completion:0.0];
  v10 = MEMORY[0x1E69DD250];
  [(SBHWidgetSettings *)self->_settings dropInsertionScaleResetDuration];
  v12 = v11;
  [(SBHWidgetSettings *)self->_settings dropInsertionScaleResetDelay];
  v14 = v13;
  [(SBHWidgetSettings *)self->_settings dropInsertionScaleResetDampingRatio];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__SBHWidgetInsertionRippleIconAnimator__performWidgetIconScaleOvershootAnimation__block_invoke_3;
  v16[3] = &unk_1E8088C90;
  v16[4] = self;
  [v10 animateWithDuration:0 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:v12 options:v14 animations:v15 completion:0.0];
}

uint64_t __81__SBHWidgetInsertionRippleIconAnimator__performWidgetIconScaleOvershootAnimation__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__SBHWidgetInsertionRippleIconAnimator__performWidgetIconScaleOvershootAnimation__block_invoke_2;
  v5[3] = &unk_1E808B4E0;
  v5[4] = *(a1 + 32);
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114119 updateReason:v5 animations:{*&v9.minimum, *&v9.maximum, *&v9.preferred}];
}

uint64_t __81__SBHWidgetInsertionRippleIconAnimator__performWidgetIconScaleOvershootAnimation__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __81__SBHWidgetInsertionRippleIconAnimator__performWidgetIconScaleOvershootAnimation__block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__SBHWidgetInsertionRippleIconAnimator__performWidgetIconScaleOvershootAnimation__block_invoke_4;
  v4[3] = &unk_1E8088C90;
  v4[4] = *(a1 + 32);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114119 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __81__SBHWidgetInsertionRippleIconAnimator__performWidgetIconScaleOvershootAnimation__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (CGPoint)_centerOfIconViewAssumingCenteredAnchorPoint:(id)a3
{
  v3 = a3;
  v4 = [v3 layer];
  [v4 anchorPoint];
  v6 = v5;
  v8 = v7;

  [v3 bounds];
  v10 = v9;
  v12 = v11;
  [v3 center];
  v14 = v13;
  v16 = v15;

  v17 = 0.5 - v6;
  v18 = 0.5 - v8;
  if (BSFloatIsZero())
  {
    v19 = v14;
  }

  else
  {
    v19 = v14 + v17 * v10;
  }

  if (BSFloatIsZero())
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + v18 * v12;
  }

  v21 = v19;
  result.y = v20;
  result.x = v21;
  return result;
}

- (void)_createPortalViewsForIconViewsInIconListView:(id)a3 dropIconListView:(id)a4 withPortalContainerView:(id)a5 widgetIconCenter:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __143__SBHWidgetInsertionRippleIconAnimator__createPortalViewsForIconViewsInIconListView_dropIconListView_withPortalContainerView_widgetIconCenter___block_invoke;
  v17[3] = &unk_1E808C0B0;
  v17[4] = self;
  v18 = v11;
  v21 = x;
  v22 = y;
  v19 = v12;
  v20 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  [v16 enumerateIconViewsUsingBlock:v17];
}

void __143__SBHWidgetInsertionRippleIconAnimator__createPortalViewsForIconViewsInIconListView_dropIconListView_withPortalContainerView_widgetIconCenter___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 icon];
  v4 = [v3 isEqual:*(*(a1 + 32) + 40)];

  if ((v4 & 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v13];
    [*(a1 + 32) _centerOfIconViewAssumingCenteredAnchorPoint:v13];
    v8 = *(a1 + 48);
    if (*(a1 + 40) != v8)
    {
      [v8 convertPoint:? fromView:?];
    }

    [v5 setCenter:{v6 - *(a1 + 64), v7 - *(a1 + 72)}];
    [v5 setHidesSourceView:1];
    [v5 setMatchesTransform:1];
    [v5 setAllowsBackdropGroups:1];
    [*(a1 + 56) addSubview:v5];
    [v13 addObserver:*(a1 + 32)];
    [*(*(a1 + 32) + 88) setObject:v5 forKey:v13];
    [v13 center];
    v9 = *(a1 + 48);
    if (*(a1 + 40) != v9)
    {
      [v9 convertPoint:? fromView:?];
      v9 = *(a1 + 48);
    }

    [v9 fractionalCoordinateAtPoint:?];
    v10 = *(*(a1 + 32) + 96);
    v11 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
    v12 = [v13 icon];
    [v10 setObject:v11 forKey:v12];
  }
}

- (void)_createPortalViewsForIconViews
{
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  portalViewsForIconViews = self->_portalViewsForIconViews;
  self->_portalViewsForIconViews = v3;

  v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  gridCoordinateForIcons = self->_gridCoordinateForIcons;
  self->_gridCoordinateForIcons = v5;

  v7 = self->_iconListView;
  [(SBHWidgetInsertionRippleIconAnimator *)self _centerOfIconViewAssumingCenteredAnchorPoint:self->_widgetIconView];
  v9 = v8;
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x1E69DD250]);
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v17 = [v12 initWithFrame:{*MEMORY[0x1E695F058], v14, v15, v16}];
  rippleIconsPortalContainerView = self->_rippleIconsPortalContainerView;
  self->_rippleIconsPortalContainerView = v17;

  [(UIView *)self->_rippleIconsPortalContainerView setCenter:v9, v11];
  [(SBIconListView *)v7 addSubview:self->_rippleIconsPortalContainerView];
  v19 = [(UIView *)self->_rippleIconsPortalContainerView layer];
  v35 = *(MEMORY[0x1E69792E8] + 48);
  v36 = *(MEMORY[0x1E69792E8] + 32);
  v39 = v36;
  v40 = v35;
  v34 = *(MEMORY[0x1E69792E8] + 64);
  v41 = v34;
  v20 = *(MEMORY[0x1E69792E8] + 80);
  v32 = *(MEMORY[0x1E69792E8] + 16);
  v33 = *MEMORY[0x1E69792E8];
  v37 = *MEMORY[0x1E69792E8];
  v38 = v32;
  v42 = v20;
  v43 = 0xBF58904FD503744BLL;
  v30 = *(MEMORY[0x1E69792E8] + 112);
  v31 = *(MEMORY[0x1E69792E8] + 96);
  v44 = v31;
  v45 = v30;
  [v19 setSublayerTransform:&v37];

  [(SBHWidgetInsertionRippleIconAnimator *)self _createPortalViewsForIconViewsInIconListView:v7 dropIconListView:v7 withPortalContainerView:self->_rippleIconsPortalContainerView widgetIconCenter:v9, v11];
  additionalIconListView = self->_additionalIconListView;
  if (additionalIconListView)
  {
    v22 = additionalIconListView;
    [(SBIconListView *)v22 convertPoint:v7 fromView:v9, v11];
    v24 = v23;
    v26 = v25;
    v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v13, v14, v15, v16}];
    rippleIconsPortalContainerViewForAdditionalIconListView = self->_rippleIconsPortalContainerViewForAdditionalIconListView;
    self->_rippleIconsPortalContainerViewForAdditionalIconListView = v27;

    [(UIView *)self->_rippleIconsPortalContainerViewForAdditionalIconListView setCenter:v24, v26];
    [(SBIconListView *)v22 addSubview:self->_rippleIconsPortalContainerViewForAdditionalIconListView];
    v29 = [(UIView *)self->_rippleIconsPortalContainerViewForAdditionalIconListView layer];
    v39 = v36;
    v40 = v35;
    v41 = v34;
    v37 = v33;
    v38 = v32;
    v42 = v20;
    v43 = 0xBF58904FD503744BLL;
    v44 = v31;
    v45 = v30;
    [v29 setSublayerTransform:&v37];

    [(SBHWidgetInsertionRippleIconAnimator *)self _createPortalViewsForIconViewsInIconListView:v22 dropIconListView:v7 withPortalContainerView:self->_rippleIconsPortalContainerViewForAdditionalIconListView widgetIconCenter:v9, v11];
  }
}

- (void)_startRippleAnimationWithDelay:(double)a3
{
  UIAnimationDragCoefficient();
  v6 = dispatch_time(0, (v5 * a3 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SBHWidgetInsertionRippleIconAnimator__startRippleAnimationWithDelay___block_invoke;
  block[3] = &unk_1E8088C90;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)_startRippleAnimationNow
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkFired_];
  displayLink = self->_displayLink;
  self->_displayLink = v3;

  v5 = self->_displayLink;
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CADisplayLink *)v5 setPreferredFrameRateRange:*&v10.minimum, *&v10.maximum, *&v10.preferred];
  [(CADisplayLink *)self->_displayLink setHighFrameRateReason:1114119];
  v6 = self->_displayLink;
  v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

  [(SBHWidgetInsertionRippleIconAnimator *)self _createPortalViewsForIconViews];
  [(SBIconView *)self->_widgetIconView center];
  [(SBIconListView *)self->_iconListView fractionalCoordinateAtPoint:?];
  rippleSimulation = self->_rippleSimulation;

  [SBHRippleSimulation createRippleAtGridCoordinate:"createRippleAtGridCoordinate:strength:" strength:?];
}

- (void)_finishRippleAnimationEarlyForIconView:(id)a3
{
  v4 = a3;
  if (self->_widgetIconView != v4)
  {
    v5 = [(NSMapTable *)self->_portalViewsForIconViews objectForKey:v4];
    [(NSMapTable *)self->_portalViewsForIconViews removeObjectForKey:v4];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = self->_widgetIconPortalView;
  widgetIconPortalView = self->_widgetIconPortalView;
  self->_widgetIconPortalView = 0;

  if (v5)
  {
LABEL_3:
    [(_UIPortalView *)v5 setSourceView:0];
    [(_UIPortalView *)v5 removeFromSuperview];
  }

LABEL_4:
  v6 = [(NSMapTable *)self->_disableGlassGroupingAssertionsForIconViews objectForKey:v4];
  [v6 invalidate];
  [(NSMapTable *)self->_disableGlassGroupingAssertionsForIconViews removeObjectForKey:v4];
  v7 = SBLogWidgets();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_RIPPLE_ANIMATION", "EndedEarly=YES isAnimation=YES ", v9, 2u);
  }
}

- (void)_finishRippleAnimation
{
  v44 = *MEMORY[0x1E69E9840];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  [(SBIconView *)self->_widgetIconView removeObserver:self];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = [(NSMapTable *)self->_disableGlassGroupingAssertionsForIconViews objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v37 + 1) + 8 * i) invalidate];
      }

      v6 = [v4 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v6);
  }

  disableGlassGroupingAssertionsForIconViews = self->_disableGlassGroupingAssertionsForIconViews;
  self->_disableGlassGroupingAssertionsForIconViews = 0;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [(NSMapTable *)self->_portalViewsForIconViews objectEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * j);
        [v15 setSourceView:0];
        [v15 removeFromSuperview];
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [(NSMapTable *)self->_portalViewsForIconViews keyEnumerator];
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v29 + 1) + 8 * k) removeObserver:self];
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v18);
  }

  [(NSMapTable *)self->_portalViewsForIconViews removeAllObjects];
  portalViewsForIconViews = self->_portalViewsForIconViews;
  self->_portalViewsForIconViews = 0;

  [(NSMapTable *)self->_gridCoordinateForIcons removeAllObjects];
  gridCoordinateForIcons = self->_gridCoordinateForIcons;
  self->_gridCoordinateForIcons = 0;

  [(UIView *)self->_rippleIconsPortalContainerView removeFromSuperview];
  rippleIconsPortalContainerView = self->_rippleIconsPortalContainerView;
  self->_rippleIconsPortalContainerView = 0;

  [(UIView *)self->_rippleIconsPortalContainerViewForAdditionalIconListView removeFromSuperview];
  rippleIconsPortalContainerViewForAdditionalIconListView = self->_rippleIconsPortalContainerViewForAdditionalIconListView;
  self->_rippleIconsPortalContainerViewForAdditionalIconListView = 0;

  [(UIView *)self->_portalContainerView removeFromSuperview];
  portalContainerView = self->_portalContainerView;
  self->_portalContainerView = 0;

  v26 = SBLogWidgets();
  if (os_signpost_enabled(v26))
  {
    *v28 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_RIPPLE_ANIMATION", " isAnimation=YES ", v28, 2u);
  }

  animationCompletion = self->_animationCompletion;
  if (animationCompletion)
  {
    animationCompletion[2](animationCompletion, 1);
  }
}

- (void)_layoutRippleIconViews
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_iconListView;
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:v3];
  [v4 bs_safeAddObject:self->_additionalIconListView];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __62__SBHWidgetInsertionRippleIconAnimator__layoutRippleIconViews__block_invoke;
        v11[3] = &unk_1E808AEC0;
        v11[4] = self;
        [v10 enumerateIconViewsUsingBlock:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void __62__SBHWidgetInsertionRippleIconAnimator__layoutRippleIconViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 88) objectForKey:v3];
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6 = [v3 icon];
    v7 = [v5 objectForKey:v6];
    [v7 CGPointValue];
    v9 = v8;
    v11 = v10;

    [*(*(a1 + 32) + 144) zPositionForGridCoordinate:{v9, v11}];
    v13 = v12;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = *(*(a1 + 32) + 144);
    if (v14)
    {
      [v14 transformForGridCoordinate:{v9, v11}];
    }

    v15 = [v4 layer];
    [v15 setZPosition:v13];

    v16 = [v4 layer];
    v17[4] = v22;
    v17[5] = v23;
    v17[6] = v24;
    v17[7] = v25;
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    v17[3] = v21;
    [v16 setTransform:v17];
  }
}

- (void)_displayLinkFired:(id)a3
{
  rippleSimulation = self->_rippleSimulation;
  [a3 duration];
  [(SBHRippleSimulation *)rippleSimulation step:?];
  [(SBHWidgetInsertionRippleIconAnimator *)self _layoutRippleIconViews];
  if ([(SBHRippleSimulation *)self->_rippleSimulation isSettled])
  {

    [(SBHWidgetInsertionRippleIconAnimator *)self _finishRippleAnimation];
  }
}

- (void)_performJumpAnimationWithCompletion:(id)a3
{
  v77[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!self->_referenceIconView)
  {
    [SBHWidgetInsertionRippleIconAnimator _performJumpAnimationWithCompletion:a2];
  }

  if (!self->_widgetIconView)
  {
    [SBHWidgetInsertionRippleIconAnimator _performJumpAnimationWithCompletion:a2];
  }

  v57 = v5;
  v6 = dispatch_group_create();
  [(SBIconView *)self->_referenceIconView setHidden:1];
  v7 = [(SBIconView *)self->_referenceIconView allowsLabelArea];
  v8 = 0.0;
  if (v7)
  {
    [(SBIconView *)self->_referenceIconView iconLabelAlpha];
  }

  [(SBIconView *)self->_widgetIconView setIconLabelAlpha:v8, v57];
  v9 = objc_alloc(MEMORY[0x1E69DD250]);
  v10 = [(SBIconListView *)self->_iconListView window];
  [v10 bounds];
  v11 = [v9 initWithFrame:?];
  portalContainerView = self->_portalContainerView;
  self->_portalContainerView = v11;

  [(UIView *)self->_portalContainerView bs_setHitTestingDisabled:1];
  v13 = [(SBIconListView *)self->_iconListView window];
  [v13 addSubview:self->_portalContainerView];

  v14 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:self->_widgetIconView];
  widgetIconPortalView = self->_widgetIconPortalView;
  self->_widgetIconPortalView = v14;

  [(_UIPortalView *)self->_widgetIconPortalView setHidesSourceView:1];
  [(_UIPortalView *)self->_widgetIconPortalView setMatchesTransform:1];
  [(_UIPortalView *)self->_widgetIconPortalView setAllowsBackdropGroups:1];
  [(SBIconView *)self->_widgetIconView addObserver:self];
  [(SBIconView *)self->_widgetIconView bounds];
  [(_UIPortalView *)self->_widgetIconPortalView setCenter:self->_referenceIconViewOriginInWindow.x + v16 * 0.5, self->_referenceIconViewOriginInWindow.y + v17 * 0.5];
  [(UIView *)self->_portalContainerView addSubview:self->_widgetIconPortalView];
  v18 = [MEMORY[0x1E69793B8] animation];
  v19 = [(SBIconListView *)self->_iconListView layer];
  [v18 setSourceLayer:v19];

  [v18 setDuration:INFINITY];
  [v18 setFillMode:*MEMORY[0x1E69797E0]];
  [v18 setRemovedOnCompletion:0];
  [v18 setAppliesY:1];
  [v18 setAppliesX:1];
  v20 = self->_portalContainerView;
  [(UIView *)v20 bounds];
  UIRectGetCenter();
  [(UIView *)v20 convertPoint:self->_iconListView toView:?];
  v21 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
  v77[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
  [v18 setSourcePoints:v22];

  [(UIView *)self->_portalContainerView addAnimation:v18 forKey:@"SBHWidgetInsertionRippleIconAnimatorMatchMove"];
  LODWORD(v21) = [(SBHWidgetInsertionRippleIconAnimator *)self keepsJumpingIconAboveListViewAsLongAsPossible];
  v23 = [MEMORY[0x1E69DC938] currentDevice];
  v24 = [v23 userInterfaceIdiom];

  v25 = 0.2;
  if (v21)
  {
    v25 = 0.4;
  }

  if ((v24 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v25 = 0.5;
  }

  [(SBHWidgetInsertionRippleIconAnimator *)self _reparentPortalViewIntoIconListViewAfterDelay:v25];
  dispatch_group_enter(v6);
  v26 = MEMORY[0x1E69DD250];
  [(SBHWidgetSettings *)self->_settings animatedInsertionPositionDuration];
  v28 = v27;
  [(SBHWidgetSettings *)self->_settings animatedInsertionPositionDampingRatio];
  v30 = v29;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke;
  v76[3] = &unk_1E8088C90;
  v76[4] = self;
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_3;
  v74[3] = &unk_1E8088F40;
  v31 = v6;
  v75 = v31;
  [v26 animateWithDuration:0 delay:v76 usingSpringWithDamping:v74 initialSpringVelocity:v28 options:0.0 animations:v30 completion:0.0];
  [(SBHWidgetSettings *)self->_settings animatedInsertionJumpScale];
  memset(&v73, 0, sizeof(v73));
  CGAffineTransformMakeScale(&v73, v32, v32);
  dispatch_group_enter(v31);
  v33 = MEMORY[0x1E69DD250];
  [(SBHWidgetSettings *)self->_settings animatedInsertionJumpDuration];
  v35 = v34;
  [(SBHWidgetSettings *)self->_settings animatedInsertionJumpDampingRatio];
  v37 = v36;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v72 = v73;
  v71[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_4;
  v71[3] = &unk_1E808B4E0;
  v71[4] = self;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_6;
  v69[3] = &unk_1E8088F40;
  v38 = v31;
  v70 = v38;
  [v33 animateWithDuration:0 delay:v71 usingSpringWithDamping:v69 initialSpringVelocity:v35 options:0.0 animations:v37 completion:0.0];
  [(SBHWidgetSettings *)self->_settings animatedInsertionImpactScale];
  CGAffineTransformMakeScale(&v68, v39, v39);
  v73 = v68;
  dispatch_group_enter(v38);
  v40 = MEMORY[0x1E69DD250];
  [(SBHWidgetSettings *)self->_settings animatedInsertionSlamDuration];
  v42 = v41;
  [(SBHWidgetSettings *)self->_settings animatedInsertionSlamDelay];
  v44 = v43;
  [(SBHWidgetSettings *)self->_settings animatedInsertionSlamDampingRatio];
  v46 = v45;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v67 = v73;
  v66[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_7;
  v66[3] = &unk_1E808B4E0;
  v66[4] = self;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_9;
  v64[3] = &unk_1E8088F40;
  v47 = v38;
  v65 = v47;
  [v40 animateWithDuration:0 delay:v66 usingSpringWithDamping:v64 initialSpringVelocity:v42 options:v44 animations:v46 completion:0.0];
  dispatch_group_enter(v47);
  v48 = MEMORY[0x1E69DD250];
  [(SBHWidgetSettings *)self->_settings animatedInsertionScaleResetDuration];
  v50 = v49;
  [(SBHWidgetSettings *)self->_settings animatedInsertionScaleResetDelay];
  v52 = v51;
  [(SBHWidgetSettings *)self->_settings animatedInsertionScaleResetDampingRatio];
  v54 = v53;
  v62 = v47;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_10;
  v63[3] = &unk_1E8088C90;
  v63[4] = self;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_12;
  v61[3] = &unk_1E8088F40;
  v55 = v47;
  [v48 animateWithDuration:0 delay:v63 usingSpringWithDamping:v61 initialSpringVelocity:v50 options:v52 animations:v54 completion:0.0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_13;
  block[3] = &unk_1E8089600;
  v60 = v58;
  v56 = v58;
  dispatch_group_notify(v55, MEMORY[0x1E69E96A0], block);
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_2;
  v4[3] = &unk_1E8088C90;
  v4[4] = *(a1 + 32);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114119 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) superview];
  [*(*(a1 + 32) + 48) bounds];
  UIRectGetCenter();
  [v2 convertPoint:*(*(a1 + 32) + 48) fromView:?];
  v4 = v3;
  v6 = v5;

  v7 = *(*(a1 + 32) + 120);

  return [v7 setCenter:{v4, v6}];
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_5;
  v5[3] = &unk_1E808B4E0;
  v5[4] = *(a1 + 32);
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114119 updateReason:v5 animations:{*&v9.minimum, *&v9.maximum, *&v9.preferred}];
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_8;
  v5[3] = &unk_1E808B4E0;
  v5[4] = *(a1 + 32);
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114119 updateReason:v5 animations:{*&v9.minimum, *&v9.maximum, *&v9.preferred}];
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_11;
  v4[3] = &unk_1E8088C90;
  v4[4] = *(a1 + 32);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114119 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_11(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(*(a1 + 32) + 48) setIconLabelAlpha:1.0];
}

uint64_t __76__SBHWidgetInsertionRippleIconAnimator__performJumpAnimationWithCompletion___block_invoke_13(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_reparentPortalViewIntoIconListViewAfterDelay:(double)a3
{
  UIAnimationDragCoefficient();
  v6 = dispatch_time(0, (v5 * a3 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SBHWidgetInsertionRippleIconAnimator__reparentPortalViewIntoIconListViewAfterDelay___block_invoke;
  block[3] = &unk_1E8088C90;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)_reparentPortalViewIntoIconListViewNow
{
  portalContainerView = self->_portalContainerView;
  [(UIView *)portalContainerView bounds];
  [(UIView *)portalContainerView convertRect:self->_iconListView toView:?];
  [(UIView *)self->_portalContainerView setFrame:?];
  iconListView = self->_iconListView;
  v5 = self->_portalContainerView;

  [(SBIconListView *)iconListView addSubview:v5];
}

- (void)_playImpactHapticAfterDelay:(double)a3
{
  v4 = objc_alloc(MEMORY[0x1E69DCAE8]);
  v5 = [MEMORY[0x1E69DD560] softConfiguration];
  v6 = [v4 initWithConfiguration:v5];

  [v6 prepare];
  UIAnimationDragCoefficient();
  v8 = dispatch_time(0, (v7 * a3 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SBHWidgetInsertionRippleIconAnimator__playImpactHapticAfterDelay___block_invoke;
  block[3] = &unk_1E8088C90;
  v11 = v6;
  v9 = v6;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
}

- (void)animateWithCompletion:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1BEB18000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_startedAnimation == NO", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_performJumpAnimationWithCompletion:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1BEB18000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_widgetIconView != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_performJumpAnimationWithCompletion:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1BEB18000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_referenceIconView != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end