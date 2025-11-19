@interface SBAppPlatterDragPreview
- (BOOL)_effectiveIconAllowsLabelArea;
- (BOOL)_effectiveIconCanShowCloseBox;
- (BOOL)_effectiveIconCanShowResizeHandle;
- (CGPoint)_effectiveIconContainerCenter;
- (CGPoint)anchorPoint;
- (CGRect)_effectiveIconViewFrame;
- (CGRect)_effectivePlatterFrame;
- (CGSize)platterSize;
- (SBAppPlatterDragPreview)initWithReferenceIconView:(id)a3 sourceView:(id)a4 sourceViewScale:(double)a5;
- (double)_blurContentViewIconViewCenterYOffset;
- (double)_effectiveCornerRadius;
- (double)_effectiveIconAccessoryAlpha;
- (double)_effectiveIconContentScale;
- (double)iconDragAlpha;
- (id)_effectiveCornerRadiusConfiguration;
- (id)delayCleanUpForReason:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (uint64_t)anchorPointAdjustmentContainerView;
- (uint64_t)captureOnlyBackgroundView;
- (uint64_t)cornerMaskingView;
- (uint64_t)customIconImageViewController;
- (uint64_t)diffuseShadowView;
- (uint64_t)iconContainerView;
- (uint64_t)iconInitiallyShowingCloseBox;
- (uint64_t)iconInitiallyShowingResizeHandle;
- (uint64_t)iconIsHighlighted;
- (uint64_t)iconView;
- (uint64_t)isDelayingCleanup;
- (uint64_t)referenceIconView;
- (uint64_t)rimShadowView;
- (uint64_t)setDelayingCleanup:(uint64_t)result;
- (uint64_t)setIconInitiallyShowingCloseBox:(uint64_t)result;
- (uint64_t)setIconInitiallyShowingResizeHandle:(uint64_t)result;
- (uint64_t)setIconIsHighlighted:(uint64_t)result;
- (uint64_t)sourcePortalView;
- (uint64_t)unclippedSourceContainerView;
- (unint64_t)_effectiveMode;
- (void)_configureIconViewWithReferenceIconView:(id)a3;
- (void)_getIconAlpha:(double *)a3 platterAlpha:(double *)a4;
- (void)_matchMoveView:(id)a3 toContainerView:(id)a4;
- (void)_removeDelayCleanupAssertion:(id)a3;
- (void)_setSourcePortalViewHidden:(BOOL)a3;
- (void)_updateContainerViewPositionForAnchorPoint;
- (void)_updateIconViewComponentVisibility;
- (void)_updateShadowView;
- (void)_updateShowDebugIconBorderWithColor:(id)a3;
- (void)_updateSubviewVisibility;
- (void)configurePlatterForSceneHandle:(id)a3 withTargetView:(id)a4 completion:(id)a5;
- (void)draggingSourceDroppedWithOperation:(unint64_t)a3;
- (void)handleCleanup;
- (void)invalidateSourceView;
- (void)layoutSubviews;
- (void)setAnchorPointAdjustmentContainerView:(uint64_t)a1;
- (void)setCaptureOnlyBackgroundView:(uint64_t)a1;
- (void)setCornerMaskingView:(uint64_t)a1;
- (void)setCornerRadiusConfiguration:(id)a3;
- (void)setCustomIconImageViewController:(uint64_t)a1;
- (void)setDiffuseShadowFilters:(id)a3;
- (void)setDiffuseShadowParameters:(SBDragPreviewShadowParameters *)a3;
- (void)setDiffuseShadowView:(uint64_t)a1;
- (void)setDragState:(unint64_t)a3;
- (void)setFlocked:(BOOL)a3;
- (void)setIconAllowsAccessory:(BOOL)a3;
- (void)setIconAllowsLabelArea:(BOOL)a3;
- (void)setIconCanShowCloseBox:(BOOL)a3;
- (void)setIconCanShowResizeHandle:(BOOL)a3;
- (void)setIconContainerView:(uint64_t)a1;
- (void)setIconContentScale:(double)a3;
- (void)setIconView:(uint64_t)a1;
- (void)setIconViewCustomIconImageViewController:(id)a3;
- (void)setIconViewDelegate:(id)a3;
- (void)setIconViewListLayoutProvider:(id)a3;
- (void)setMode:(unint64_t)a3;
- (void)setPlatterSize:(CGSize)a3;
- (void)setPlatterView:(uint64_t)a1;
- (void)setReferenceIconView:(uint64_t)a1;
- (void)setRimShadowFilters:(id)a3;
- (void)setRimShadowParameters:(SBDragPreviewShadowParameters *)a3;
- (void)setRimShadowView:(uint64_t)a1;
- (void)setSourcePortalView:(uint64_t)a1;
- (void)setSourceView:(uint64_t)a1;
- (void)setUnclippedSourceContainerView:(uint64_t)a1;
- (void)updateDestinationIconLocation:(id)a3 allowsLabelArea:(BOOL)a4 animated:(BOOL)a5;
- (void)updateSourceView:(id)a3;
@end

@implementation SBAppPlatterDragPreview

- (SBAppPlatterDragPreview)initWithReferenceIconView:(id)a3 sourceView:(id)a4 sourceViewScale:(double)a5
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    [SBAppPlatterDragPreview initWithReferenceIconView:a2 sourceView:self sourceViewScale:?];
  }

  [v10 iconImageInfo];
  SBRectWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 frame];
  v59 = a5;
  SBTransformedRectWithScale();
  v20 = v19;
  v21 = v17;
  v22 = v15;
  v23 = v13;
  if (v11)
  {
    SBRectWithSize();
    v23 = v24;
    v22 = v25;
    v21 = v26;
    v20 = v27;
  }

  v61.receiver = self;
  v61.super_class = SBAppPlatterDragPreview;
  v28 = [(SBAppPlatterDragPreview *)&v61 initWithFrame:v23, v22, v21, v20];
  v29 = v28;
  if (v28)
  {
    __asm { FMOV            V0.2D, #0.5 }

    *(v28 + 648) = _Q0;
    v35 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v23, v22, v21, v20}];
    [(SBAppPlatterDragPreview *)v29 addSubview:v35];
    objc_storeStrong(&v29->_anchorPointAdjustmentContainerView, v35);
    v36 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v13, v15, v17, v19}];
    v37 = [v36 layer];
    [v37 setAllowsGroupOpacity:1];

    [v36 setClipsToBounds:0];
    [v10 iconImageInfo];
    [v36 _setContinuousCornerRadius:v38];
    [(UIView *)v29->_anchorPointAdjustmentContainerView addSubview:v36];
    objc_storeStrong(&v29->_iconContainerView, v36);
    v29->_mode = 2 * (v11 != 0);
    objc_storeStrong(&v29->_referenceIconView, a3);
    v29->_sourceViewScale = v59;
    v29->_iconAllowsLabelArea = [v10 allowsLabelArea];
    v29->_iconAllowsAccessory = [v10 allowsAccessoryView];
    v29->_iconIsHighlighted = [v10 isHighlighted];
    v29->_iconCanShowCloseBox = [v10 canShowCloseBox];
    v29->_iconCanShowResizeHandle = [v10 canShowResizeHandle];
    [v10 iconContentScale];
    v29->_iconContentScale = v39;
    v29->_iconInitiallyShowingCloseBox = [v10 shouldShowCloseBox];
    v29->_iconInitiallyShowingResizeHandle = [v10 shouldShowResizeHandle];
    v40 = [(SBAppPlatterDragPreview *)v29 layer];
    [v40 setAllowsGroupOpacity:1];

    SBScreenDisplayCornerRadius();
    if (BSFloatIsZero())
    {
      v41 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v23, v22, v21, v20}];
      cornerMaskingView = v29->_cornerMaskingView;
      v29->_cornerMaskingView = v41;

      v43 = [(UIView *)v29->_cornerMaskingView layer];
      [v43 setCornerCurve:*MEMORY[0x277CDA138]];
    }

    else
    {
      v44 = [[SBAsymmetricalCornerRadiusWrapperView alloc] initWithFrame:v23, v22, v21, v20];
      v43 = v29->_cornerMaskingView;
      v29->_cornerMaskingView = &v44->super.super;
    }

    [(UIView *)v29->_cornerMaskingView setClipsToBounds:1];
    [(UIView *)v29->_anchorPointAdjustmentContainerView insertSubview:v29->_cornerMaskingView atIndex:0];
    v45 = [(SBAppPlatterDragPreview *)v29 _effectiveMode];
    if (v45)
    {
      v46 = [objc_alloc(MEMORY[0x277D65FB0]) initWithFrame:{v23, v22, v21, v20}];
      rimShadowView = v29->_rimShadowView;
      v29->_rimShadowView = v46;

      [(SBFView *)v29->_rimShadowView setAnimatedLayerProperties:&unk_28336E3A0];
      v48 = [(SBFView *)v29->_rimShadowView layer];
      [v48 setShadowPathIsBounds:1];

      [(UIView *)v29->_anchorPointAdjustmentContainerView insertSubview:v29->_rimShadowView atIndex:0];
      v49 = [objc_alloc(MEMORY[0x277D65FB0]) initWithFrame:{v23, v22, v21, v20}];
      diffuseShadowView = v29->_diffuseShadowView;
      v29->_diffuseShadowView = v49;

      [(SBFView *)v29->_diffuseShadowView setAnimatedLayerProperties:&unk_28336E3B8];
      v51 = [(SBFView *)v29->_diffuseShadowView layer];
      [v51 setShadowPathIsBounds:1];

      [(UIView *)v29->_anchorPointAdjustmentContainerView insertSubview:v29->_diffuseShadowView atIndex:0];
    }

    [(SBAppPlatterDragPreview *)v29 updateSourceView:v11];
    v52 = [v10 icon];
    v53 = [v52 isWidgetIcon];

    if (!v45 && (v53 & 1) == 0)
    {
      v54 = [v10 listLayoutProvider];
      v55 = [v54 layoutForIconLocation:*MEMORY[0x277D666D0]];

      [v55 iconImageInfo];
      v58 = v56;
      CGAffineTransformMakeScale(&v60, 1.1, 1.1);
      SBRectWithSize();
      [(SBAppPlatterDragPreview *)v29 setFrame:?];
    }

    [(SBAppPlatterDragPreview *)v29 setNeedsLayout];
    [(SBAppPlatterDragPreview *)v29 layoutIfNeeded];
  }

  return v29;
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (void)_matchMoveView:(id)a3 toContainerView:(id)a4
{
  v5 = MEMORY[0x277D65DE0];
  v6 = a3;
  v8 = [v5 matchMoveAnimationForPinningToView:a4];
  v7 = [v6 layer];

  [v7 addAnimation:v8 forKey:@"MatchMove-SBAppPlatterDragPreview"];
}

- (void)updateSourceView:(id)a3
{
  v5 = a3;
  v33 = v5;
  if (!self->_sourcePortalView)
  {
    v6 = [SBPortalView alloc];
    [(UIView *)self->_cornerMaskingView bounds];
    v7 = [(SBPortalView *)v6 initWithFrame:?];
    sourcePortalView = self->_sourcePortalView;
    self->_sourcePortalView = v7;

    [(SBPortalView *)self->_sourcePortalView setHidesSourceView:1];
    [(SBPortalView *)self->_sourcePortalView setAllowsBackdropGroups:1];
    v9 = objc_opt_class();
    v10 = SBSafeCast(v9, self->_cornerMaskingView);
    v11 = v10;
    if (v10)
    {
      [v10 addContentView:self->_sourcePortalView];
      [v11 bringContentViewToFront:self->_platterView];
    }

    else
    {
      [(UIView *)self->_cornerMaskingView addSubview:self->_sourcePortalView];
      [(UIView *)self->_cornerMaskingView bringSubviewToFront:self->_platterView];
    }

    [(SBAppPlatterDragPreview *)self _matchMoveView:self->_sourcePortalView toContainerView:self->_cornerMaskingView];

    v5 = v33;
  }

  [(UIView *)v5 frame];
  SBRectWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sourceView = self->_sourceView;
  if (sourceView != v33)
  {
    v21 = sourceView;
    if (v21)
    {
      v22 = [(UIView *)self->_sourceView superview];
      unclippedSourceContainerView = self->_unclippedSourceContainerView;

      if (v22 == unclippedSourceContainerView)
      {
        [(UIView *)self->_sourceView removeFromSuperview];
      }

      [(SBPortalView *)self->_sourcePortalView setSourceView:0];
    }

    objc_storeStrong(&self->_sourceView, a3);
    v24 = [(UIView *)self->_sourceView superview];

    if (v24)
    {
      v25 = self->_sourcePortalView;
      v26 = [MEMORY[0x277D75348] clearColor];
      [(SBPortalView *)v25 setBackgroundColor:v26];

      [(SBPortalView *)self->_sourcePortalView setSourceView:self->_sourceView];
      [(SBPortalView *)self->_sourcePortalView setHidesSourceView:1];
    }

    else
    {
      v27 = self->_unclippedSourceContainerView;
      if (!v27)
      {
        v28 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v13, v15, v17, v19}];
        v29 = self->_unclippedSourceContainerView;
        self->_unclippedSourceContainerView = v28;

        [(UIView *)self->_anchorPointAdjustmentContainerView insertSubview:self->_unclippedSourceContainerView aboveSubview:self->_cornerMaskingView];
        [(SBAppPlatterDragPreview *)self _matchMoveView:self->_unclippedSourceContainerView toContainerView:self->_cornerMaskingView];
        v27 = self->_unclippedSourceContainerView;
      }

      [(UIView *)v27 addSubview:self->_sourceView];
      v30 = self->_sourceView;
      [(UIView *)self->_unclippedSourceContainerView bounds];
      UIRectGetCenter();
      [(UIView *)v30 setCenter:?];
      [(UIView *)self->_sourceView alpha];
      if (BSFloatIsOne())
      {
        v31 = self->_sourcePortalView;
        v32 = [MEMORY[0x277D75348] systemBackgroundColor];
        [(SBPortalView *)v31 setBackgroundColor:v32];
      }
    }

    sourceView = self->_sourceView;
  }

  [(UIView *)sourceView _removeAllRetargetableAnimations:1];
  [(SBPortalView *)self->_sourcePortalView setBounds:v13, v15, v17, v19];
  [(UIView *)self->_unclippedSourceContainerView setBounds:v13, v15, v17, v19];
}

- (void)invalidateSourceView
{
  [(SBPortalView *)self->_sourcePortalView setSourceView:0];
  v3 = [(UIView *)self->_sourceView superview];
  unclippedSourceContainerView = self->_unclippedSourceContainerView;

  if (v3 == unclippedSourceContainerView)
  {
    [(UIView *)self->_sourceView removeFromSuperview];
  }

  sourceView = self->_sourceView;
  self->_sourceView = 0;
}

- (void)configurePlatterForSceneHandle:(id)a3 withTargetView:(id)a4 completion:(id)a5
{
  v8 = a5;
  self->_isBlurredPlatterReady = 0;
  self->_hasAnimatedToBlurredPlatter = 0;
  v9 = a4;
  v10 = [a3 application];
  v11 = [v10 bundleIdentifier];

  v12 = [SBApplicationBlurContentView alloc];
  [v9 bounds];
  v13 = [(SBApplicationBlurContentView *)v12 initWithFrame:v11 bundleIdentifier:v9 targetViewToBlur:?];

  platterView = self->_platterView;
  self->_platterView = v13;

  v15 = [(SBApplicationBlurContentView *)self->_platterView iconView];
  v16 = [v15 imageView];
  [v16 setHidden:1];

  [(SBApplicationBlurContentView *)self->_platterView bs_setHitTestingDisabled:1];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __84__SBAppPlatterDragPreview_configurePlatterForSceneHandle_withTargetView_completion___block_invoke;
  v27 = &unk_2783A98A0;
  v28 = self;
  v17 = v8;
  v29 = v17;
  v18 = MEMORY[0x223D6F7F0](&v24);
  if (self->_mode != 2 || ([(UIView *)self->_sourceView superview:v24], v19 = objc_claimAutoreleasedReturnValue(), unclippedSourceContainerView = self->_unclippedSourceContainerView, v19, v19 == unclippedSourceContainerView))
  {
    [(SBApplicationBlurContentView *)self->_platterView generateAndAnimateToBlurredSnapshotWithAnimationFactory:0 completion:v18, v24, v25, v26, v27, v28];
    self->_hasAnimatedToBlurredPlatter = 1;
  }

  else
  {
    [(SBApplicationBlurContentView *)self->_platterView generateBlurredSnapshotWithCompletion:v18];
  }

  v21 = objc_opt_class();
  v22 = SBSafeCast(v21, self->_cornerMaskingView);
  v23 = v22;
  if (v22)
  {
    [v22 addContentView:self->_platterView];
  }

  else
  {
    [(UIView *)self->_cornerMaskingView addSubview:self->_platterView];
  }

  [(SBAppPlatterDragPreview *)self setNeedsLayout];
  [(SBAppPlatterDragPreview *)self layoutIfNeeded];
}

uint64_t __84__SBAppPlatterDragPreview_configurePlatterForSceneHandle_withTargetView_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 496);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:v3];

  *(*(a1 + 32) + 408) = 1;
  v4 = MEMORY[0x277D75D18];
  v5 = +[SBMedusaDomain rootSettings];
  v6 = [v5 platterAnimationSettings];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__SBAppPlatterDragPreview_configurePlatterForSceneHandle_withTargetView_completion___block_invoke_2;
  v8[3] = &unk_2783A8C18;
  v8[4] = *(a1 + 32);
  [v4 _animateUsingSpringBehavior:v6 tracking:0 animations:v8 completion:0];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __84__SBAppPlatterDragPreview_configurePlatterForSceneHandle_withTargetView_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setPlatterSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_platterSize = &self->_platterSize;
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    p_platterSize->width = width;
    p_platterSize->height = height;

    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (void)setDiffuseShadowParameters:(SBDragPreviewShadowParameters *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_diffuseShadowParameters = &self->_diffuseShadowParameters;
  if ((SBDragPreviewShadowParametersEqualToShadowParameters() & 1) == 0)
  {
    p_diffuseShadowParameters->shadowOpacity = v10;
    p_diffuseShadowParameters->shadowRadius = v9;
    p_diffuseShadowParameters->shadowOffset.width = v8;
    p_diffuseShadowParameters->shadowOffset.height = v7;

    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (void)setRimShadowParameters:(SBDragPreviewShadowParameters *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_rimShadowParameters = &self->_rimShadowParameters;
  if ((SBDragPreviewShadowParametersEqualToShadowParameters() & 1) == 0)
  {
    p_rimShadowParameters->shadowOpacity = v10;
    p_rimShadowParameters->shadowRadius = v9;
    p_rimShadowParameters->shadowOffset.width = v8;
    p_rimShadowParameters->shadowOffset.height = v7;

    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (void)setDiffuseShadowFilters:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_diffuseShadowFilters isEqualToArray:?])
  {
    v4 = [v6 copy];
    diffuseShadowFilters = self->_diffuseShadowFilters;
    self->_diffuseShadowFilters = v4;

    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (void)setRimShadowFilters:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_rimShadowFilters isEqualToArray:?])
  {
    v4 = [v6 copy];
    rimShadowFilters = self->_rimShadowFilters;
    self->_rimShadowFilters = v4;

    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (void)setCornerRadiusConfiguration:(id)a3
{
  v5 = a3;
  if (([(BSCornerRadiusConfiguration *)self->_cornerRadiusConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_cornerRadiusConfiguration, a3);
    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (void)setDragState:(unint64_t)a3
{
  if (self->_dragState != a3)
  {
    if (a3 >= 2 && !self->_iconView)
    {
      if (!self->_referenceIconView)
      {
        [(SBAppPlatterDragPreview *)a2 setDragState:?];
      }

      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__SBAppPlatterDragPreview_setDragState___block_invoke;
      v6[3] = &unk_2783A8C18;
      v6[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v6];
      referenceIconView = self->_referenceIconView;
      self->_referenceIconView = 0;
    }

    self->_dragState = a3;
    [(SBAppPlatterDragPreview *)self setNeedsLayout];
    [(SBAppPlatterDragPreview *)self layoutIfNeeded];
  }
}

void __40__SBAppPlatterDragPreview_setDragState___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 544) customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 setShowingContextMenu:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setForcesEdgeAntialiasing:0];
  }

  [*(a1 + 32) _configureIconViewWithReferenceIconView:*(*(a1 + 32) + 544)];
}

- (void)setFlocked:(BOOL)a3
{
  if (self->_flocked != a3)
  {
    self->_flocked = a3;
    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (void)updateDestinationIconLocation:(id)a3 allowsLabelArea:(BOOL)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = [(SBIconView *)self->_iconView location];
  v10 = [v9 isEqual:v8];

  if ((v10 & 1) == 0)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __82__SBAppPlatterDragPreview_updateDestinationIconLocation_allowsLabelArea_animated___block_invoke;
    v23[3] = &unk_2783B2708;
    v23[4] = self;
    v24 = v8;
    v25 = a5;
    v26 = a4;
    v11 = MEMORY[0x223D6F7F0](v23);
    v12 = v11;
    if (a5)
    {
      v13 = [(SBIconView *)self->_iconView startForbiddingAccessoryUpdatesWithReason:@"dragPlatterUpdatingLocation" animated:1];
      v14 = MEMORY[0x277D75D40];
      v15 = *MEMORY[0x277D66710];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __82__SBAppPlatterDragPreview_updateDestinationIconLocation_allowsLabelArea_animated___block_invoke_2;
      v21 = &unk_2783ACA48;
      v22 = v13;
      v16 = v13;
      v17 = [v14 runningPropertyAnimatorWithDuration:2 delay:v12 options:&v18 animations:v15 completion:0.0];
      [v17 startAnimation];
    }

    else
    {
      (*(v11 + 16))(v11);
    }
  }
}

uint64_t __82__SBAppPlatterDragPreview_updateDestinationIconLocation_allowsLabelArea_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 552) setLocation:*(a1 + 40) animated:*(a1 + 48)];
  *(*(a1 + 32) + 434) = *(a1 + 49);
  [*(a1 + 32) _updateIconViewComponentVisibility];
  [*(*(a1 + 32) + 552) iconImageInfo];
  v24 = v2;
  SBRectWithSize();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 32);
  if (v11[60])
  {
    [v11[60] frame];
    SBRectWithSize();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v11 = *(a1 + 32);
  }

  else
  {
    v13 = v3;
    v15 = v4;
    v17 = v5;
    v19 = v6;
  }

  [v11 _removeAllRetargetableAnimations:1];
  [*(a1 + 32) setBounds:{v13, v15, v17, v19}];
  [*(*(a1 + 32) + 576) _removeAllRetargetableAnimations:1];
  [*(*(a1 + 32) + 576) sb_setBoundsAndPositionFromFrame:{v13, v15, v17, v19}];
  [*(*(a1 + 32) + 584) _removeAllRetargetableAnimations:1];
  [*(*(a1 + 32) + 584) _setContinuousCornerRadius:v24];
  [*(*(a1 + 32) + 584) sb_setBoundsAndPositionFromFrame:{v7, v8, v9, v10}];
  [*(*(a1 + 32) + 592) _removeAllRetargetableAnimations:1];
  [*(*(a1 + 32) + 592) sb_setBoundsAndPositionFromFrame:{v13, v15, v17, v19}];
  [*(*(a1 + 32) + 624) _removeAllRetargetableAnimations:1];
  [*(*(a1 + 32) + 624) sb_setBoundsAndPositionFromFrame:{v13, v15, v17, v19}];
  [*(*(a1 + 32) + 616) _removeAllRetargetableAnimations:1];
  [*(*(a1 + 32) + 616) sb_setBoundsAndPositionFromFrame:{v13, v15, v17, v19}];
  v20 = *(a1 + 32);
  v21 = [MEMORY[0x277D75348] magentaColor];
  [v20 _updateShowDebugIconBorderWithColor:v21];

  [*(a1 + 32) setNeedsLayout];
  v22 = *(a1 + 32);

  return [v22 layoutIfNeeded];
}

- (void)_updateShowDebugIconBorderWithColor:(id)a3
{
  v14 = a3;
  v4 = [MEMORY[0x277D661A0] rootSettings];
  v5 = [v4 iconEditingSettings];
  v6 = [v5 showDragPlatterIconBorder];

  if (v6)
  {
    v7 = [(SBIconView *)self->_iconView _iconImageView];
    [(SBIconView *)self->_iconView iconImageInfo];
    [v7 _setContinuousCornerRadius:v8];

    v9 = [(SBIconView *)self->_iconView _iconImageView];
    v10 = [v9 layer];
    v11 = v14;
    if (!v14)
    {
      v11 = [MEMORY[0x277D75348] redColor];
    }

    [v10 setBorderColor:{objc_msgSend(v11, "CGColor")}];
    if (!v14)
    {
    }

    v12 = [(SBIconView *)self->_iconView _iconImageView];
    v13 = [v12 layer];
    [v13 setBorderWidth:4.0];
  }
}

- (void)setIconAllowsLabelArea:(BOOL)a3
{
  if (self->_iconAllowsLabelArea != a3)
  {
    self->_iconAllowsLabelArea = a3;
    [(SBAppPlatterDragPreview *)self _updateIconViewComponentVisibility];
  }
}

- (void)setIconAllowsAccessory:(BOOL)a3
{
  if (self->_iconAllowsAccessory != a3)
  {
    self->_iconAllowsAccessory = a3;
    [(SBAppPlatterDragPreview *)self _updateIconViewComponentVisibility];
  }
}

- (void)setIconCanShowCloseBox:(BOOL)a3
{
  if (self->_iconCanShowCloseBox != a3)
  {
    self->_iconCanShowCloseBox = a3;
    [(SBAppPlatterDragPreview *)self _updateIconViewComponentVisibility];
  }
}

- (void)setIconCanShowResizeHandle:(BOOL)a3
{
  if (self->_iconCanShowResizeHandle != a3)
  {
    self->_iconCanShowResizeHandle = a3;
    [(SBAppPlatterDragPreview *)self _updateIconViewComponentVisibility];
  }
}

- (void)setIconContentScale:(double)a3
{
  if (self->_iconContentScale != a3)
  {
    self->_iconContentScale = a3;
    [(SBAppPlatterDragPreview *)self setNeedsLayout];
  }
}

- (id)delayCleanUpForReason:(id)a3
{
  v4 = a3;
  if (!self->_cleanupDelayAssertions)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    cleanupDelayAssertions = self->_cleanupDelayAssertions;
    self->_cleanupDelayAssertions = v5;
  }

  v7 = [[SBAppPlatterDragPreviewDelayCleanupAssertion alloc] initWithDragPreview:self reason:v4];
  [(NSHashTable *)self->_cleanupDelayAssertions addObject:v7];

  return v7;
}

- (void)_removeDelayCleanupAssertion:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_cleanupDelayAssertions containsObject:?])
  {
    [(NSHashTable *)self->_cleanupDelayAssertions removeObject:v4];
    if (![(NSHashTable *)self->_cleanupDelayAssertions count]&& self->_delayingCleanup)
    {
      [(SBAppPlatterDragPreview *)self handleCleanup];
    }
  }
}

- (void)draggingSourceDroppedWithOperation:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SBAppPlatterDragPreview_draggingSourceDroppedWithOperation___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
  if (!a3)
  {
    v6 = self->_iconView;
    v7 = [(SBIconView *)v6 customIconImageViewController];

    if (v7)
    {
      v8 = SBLogIconDragging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Drop cancelled; replacing platter of icon image view controller with snapshot: %@", buf, 0xCu);
      }

      v9 = [(SBIconView *)v6 snapshotView];
      v10 = [(SBIconView *)v6 superview];
      [v10 addSubview:v9];

      [(SBIconView *)v6 frame];
      [v9 setFrame:?];
      [(SBIconView *)v6 setIcon:0];
    }
  }
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = SBAppPlatterDragPreview;
  [(SBAppPlatterDragPreview *)&v23 layoutSubviews];
  [(SBAppPlatterDragPreview *)self _effectiveIconContentScale];
  iconContainerView = self->_iconContainerView;
  CGAffineTransformMakeScale(&v22, v4, v4);
  [(UIView *)iconContainerView setTransform:&v22];
  [(SBAppPlatterDragPreview *)self _effectiveIconViewFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBIconView *)self->_iconView setFrame:?];
  [(UIView *)self->_captureOnlyBackgroundView setFrame:v6, v8, v10, v12];
  v13 = self->_iconContainerView;
  [(SBAppPlatterDragPreview *)self _effectiveIconContainerCenter];
  [(UIView *)v13 setCenter:?];
  [(SBAppPlatterDragPreview *)self _effectivePlatterFrame];
  [(UIView *)self->_cornerMaskingView setFrame:?];
  platterView = self->_platterView;
  SBRectWithSize();
  [(SBApplicationBlurContentView *)platterView setFrame:?];
  sourcePortalView = self->_sourcePortalView;
  [(UIView *)self->_sourceView frame];
  SBRectWithSize();
  [(SBPortalView *)sourcePortalView setBounds:?];
  v16 = self->_sourcePortalView;
  SBRectWithSize();
  UIRectGetCenter();
  [(SBPortalView *)v16 setCenter:?];
  unclippedSourceContainerView = self->_unclippedSourceContainerView;
  [(SBPortalView *)self->_sourcePortalView bounds];
  [(UIView *)unclippedSourceContainerView setBounds:?];
  v18 = self->_unclippedSourceContainerView;
  [(UIView *)self->_cornerMaskingView center];
  [(UIView *)v18 setCenter:?];
  v19 = objc_opt_class();
  v20 = SBSafeCast(v19, self->_cornerMaskingView);
  if (v20)
  {
    v21 = [(SBAppPlatterDragPreview *)self _effectiveCornerRadiusConfiguration];
    [v20 setCornerRadiusConfiguration:v21];
  }

  else
  {
    v21 = [(UIView *)self->_cornerMaskingView layer];
    [(SBAppPlatterDragPreview *)self _effectiveCornerRadius];
    [v21 setCornerRadius:?];
  }

  [(SBAppPlatterDragPreview *)self _updateSubviewVisibility];
  [(SBAppPlatterDragPreview *)self _updateIconViewComponentVisibility];
  [(SBAppPlatterDragPreview *)self _updateShadowView];
  [(SBAppPlatterDragPreview *)self _updateContainerViewPositionForAnchorPoint];
}

- (void)_updateContainerViewPositionForAnchorPoint
{
  if (self->_dragState == 3)
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    x = self->_anchorPoint.x;
    y = self->_anchorPoint.y;
    [(SBAppPlatterDragPreview *)self _effectivePlatterFrame];
    v8 = v7;
    v10 = v9;
    [(SBAppPlatterDragPreview *)self bounds];
    v3 = (x + x + -1.0) * ((v11 - v8) * 0.5);
    v4 = (y + y + -1.0) * ((v12 - v10) * 0.5);
  }

  [(SBAppPlatterDragPreview *)self bounds];
  UIRectGetCenter();
  [(UIView *)self->_anchorPointAdjustmentContainerView setCenter:v3 + v13, v4 + v14];
  anchorPointAdjustmentContainerView = self->_anchorPointAdjustmentContainerView;
  [(SBAppPlatterDragPreview *)self bounds];
  [(UIView *)anchorPointAdjustmentContainerView setBounds:?];
  v16 = self->_anchorPointAdjustmentContainerView;
  CGAffineTransformMakeRotation(&v17, self->_rotation);
  [(UIView *)v16 setTransform:&v17];
}

- (unint64_t)_effectiveMode
{
  mode = self->_mode;
  if (mode == 1)
  {
    if (self->_isBlurredPlatterReady)
    {
      return 1;
    }

    else
    {
      return 2 * (self->_sourceView != 0);
    }
  }

  return mode;
}

- (void)_updateShadowView
{
  shadowOpacity = self->_diffuseShadowParameters.shadowOpacity;
  shadowRadius = self->_diffuseShadowParameters.shadowRadius;
  width = self->_diffuseShadowParameters.shadowOffset.width;
  height = self->_diffuseShadowParameters.shadowOffset.height;
  v8 = self->_rimShadowParameters.shadowOpacity;
  v7 = self->_rimShadowParameters.shadowRadius;
  v9 = self->_rimShadowParameters.shadowOffset.width;
  v10 = self->_rimShadowParameters.shadowOffset.height;
  v39 = self->_diffuseShadowFilters;
  v11 = self->_rimShadowFilters;
  if (self->_mode)
  {
    v37 = width;
    v38 = height;
    v35 = v10;
    v36 = v9;
    v12 = v8;
    [(SBAppPlatterDragPreview *)self _effectivePlatterFrame];
  }

  else
  {
    dragState = self->_dragState;
    if (dragState <= 4)
    {
      if (dragState == 2)
      {
        shadowRadius = 14.0;
        width = 0.0;
        height = 10.0;
        shadowOpacity = 0.225;
      }

      else
      {
        width = *MEMORY[0x277CBF3A8];
        height = *(MEMORY[0x277CBF3A8] + 8);
        shadowRadius = 0.0;
        shadowOpacity = 0.0;
      }
    }

    v37 = width;
    v38 = height;
    v35 = *(MEMORY[0x277CBF3A8] + 8);
    v36 = *MEMORY[0x277CBF3A8];

    v39 = 0;
    v11 = 0;
    v12 = 0.0;
    [(SBAppPlatterDragPreview *)self _effectivePlatterFrame];
  }

  v18 = v13;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  [(SBAppPlatterDragPreview *)self _effectiveCornerRadius];
  v23 = v22;
  [(SBFView *)self->_diffuseShadowView setFrame:v18, v19, v20, v21];
  [(SBFView *)self->_rimShadowView setFrame:v18, v19, v20, v21];
  [(SBFView *)self->_diffuseShadowView _setContinuousCornerRadius:v23];
  [(SBFView *)self->_rimShadowView _setContinuousCornerRadius:v23];
  v24 = [(SBFView *)self->_diffuseShadowView layer];
  *&v25 = shadowOpacity;
  [v24 setShadowOpacity:v25];

  v26 = [(SBFView *)self->_diffuseShadowView layer];
  [v26 setShadowRadius:shadowRadius];

  v27 = [(SBFView *)self->_diffuseShadowView layer];
  [v27 setShadowOffset:{v37, v38}];

  v28 = [(SBFView *)self->_rimShadowView layer];
  *&v29 = v12;
  [v28 setShadowOpacity:v29];

  v30 = [(SBFView *)self->_rimShadowView layer];
  [v30 setShadowRadius:v34];

  v31 = [(SBFView *)self->_rimShadowView layer];
  [v31 setShadowOffset:{v36, v35}];

  v32 = [(SBFView *)self->_diffuseShadowView layer];
  [v32 setFilters:v39];

  v33 = [(SBFView *)self->_rimShadowView layer];
  [v33 setFilters:v11];
}

- (void)_getIconAlpha:(double *)a3 platterAlpha:(double *)a4
{
  v7 = [(SBAppPlatterDragPreview *)self _effectiveMode];
  if (v7 == 2)
  {
    v10 = 0.0;
    goto LABEL_7;
  }

  v8 = 1.0;
  if (v7)
  {
    v10 = 1.0;
    goto LABEL_9;
  }

  dragState = self->_dragState;
  v10 = 0.0;
  if (dragState >= 3)
  {
    if (dragState != 4)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0.0;
    goto LABEL_9;
  }

  if (![(SBAppPlatterDragPreview *)self isFlocked])
  {
    [(SBAppPlatterDragPreview *)self iconDragAlpha];
    v8 = v11;
  }

LABEL_9:
  if (a3)
  {
    *a3 = v8;
  }

  if (a4)
  {
    *a4 = v10;
  }
}

- (void)_updateSubviewVisibility
{
  v16 = 1.0;
  v17 = 1.0;
  [(SBAppPlatterDragPreview *)self _getIconAlpha:&v17 platterAlpha:&v16];
  if ([(SBAppPlatterDragPreview *)self _effectiveMode]== 1 && !self->_hasAnimatedToBlurredPlatter)
  {
    v4 = [MEMORY[0x277CF0D38] factoryWithDuration:0.25];
    [(SBApplicationBlurContentView *)self->_platterView animateToBlurredSnapshotWithFactory:v4 completion:0];
    v3 = 1;
    self->_hasAnimatedToBlurredPlatter = 1;
  }

  else
  {
    v3 = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__SBAppPlatterDragPreview__updateSubviewVisibility__block_invoke;
  v15[3] = &unk_2783B6E98;
  v15[4] = self;
  v5 = MEMORY[0x223D6F7F0](v15);
  v6 = 1.0 - v16;
  if ([MEMORY[0x277D75D18] _isInAnimationBlock])
  {
    v7 = objc_alloc_init(MEMORY[0x277D65E60]);
    [v7 setDampingRatio:1.0];
    [v7 setResponse:0.25];
    if (v3)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__SBAppPlatterDragPreview__updateSubviewVisibility__block_invoke_2;
      v14[3] = &unk_2783A8BC8;
      v14[4] = self;
      *&v14[5] = v16;
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v14];
      [(SBAppPlatterDragPreview *)self _setSourcePortalViewHidden:v5[2](v5, v16)];
    }

    else
    {
      if (!self->_platterViewAlphaAnimationCount)
      {
        [(SBApplicationBlurContentView *)self->_platterView alpha];
        if ((BSFloatEqualToFloat() & 1) == 0)
        {
          [(SBAppPlatterDragPreview *)self _setSourcePortalViewHidden:0];
        }
      }

      ++self->_platterViewAlphaAnimationCount;
      v8 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __51__SBAppPlatterDragPreview__updateSubviewVisibility__block_invoke_3;
      v13[3] = &unk_2783A8BC8;
      v13[4] = self;
      *&v13[5] = v16;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__SBAppPlatterDragPreview__updateSubviewVisibility__block_invoke_4;
      v10[3] = &unk_2783A92B0;
      v10[4] = self;
      v11 = v5;
      v12 = v16;
      [v8 _animateUsingSpringBehavior:v7 tracking:0 animations:v13 completion:v10];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__SBAppPlatterDragPreview__updateSubviewVisibility__block_invoke_5;
    v9[3] = &unk_2783AECC8;
    v9[4] = self;
    *&v9[5] = v17;
    *&v9[6] = v16;
    *&v9[7] = v6;
    [MEMORY[0x277D75D18] _animateUsingSpringBehavior:v7 tracking:0 animations:v9 completion:0];
  }

  else
  {
    [(SBIconView *)self->_iconView setAlpha:v17];
    [(SBApplicationBlurContentView *)self->_platterView setAlpha:v16];
    [(UIView *)self->_unclippedSourceContainerView setAlpha:v6];
    [(SBAppPlatterDragPreview *)self _setSourcePortalViewHidden:v5[2](v5, v16)];
  }
}

uint64_t __51__SBAppPlatterDragPreview__updateSubviewVisibility__block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) _isDragging])
  {
    return 0;
  }

  v2 = [*(*(a1 + 32) + 480) superview];
  if (v2 == *(*(a1 + 32) + 608))
  {
    IsOne = 0;
  }

  else
  {
    IsOne = BSFloatIsOne();
  }

  return IsOne;
}

void __51__SBAppPlatterDragPreview__updateSubviewVisibility__block_invoke_4(uint64_t a1)
{
  --*(*(a1 + 32) + 416);
  v1 = *(a1 + 32);
  if (!v1[52])
  {
    [v1 _setSourcePortalViewHidden:(*(*(a1 + 40) + 16))(*(a1 + 48))];
    v5 = MEMORY[0x223D6F7F0](*(*(a1 + 32) + 504));
    if (v5)
    {
      v5[2]();
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 504);
    *(v3 + 504) = 0;
  }
}

uint64_t __51__SBAppPlatterDragPreview__updateSubviewVisibility__block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 552) setAlpha:*(a1 + 40)];
  [*(*(a1 + 32) + 496) setAlpha:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 608);
  v3 = *(a1 + 56);

  return [v2 setAlpha:v3];
}

- (void)_setSourcePortalViewHidden:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__SBAppPlatterDragPreview__setSourcePortalViewHidden___block_invoke;
  v3[3] = &unk_2783A9F58;
  v3[4] = self;
  v4 = a3;
  [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v3];
}

uint64_t __54__SBAppPlatterDragPreview__setSourcePortalViewHidden___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 600) setAlpha:v1];
}

- (double)_effectiveIconContentScale
{
  v3 = [(SBAppPlatterDragPreview *)self _effectiveMode];
  result = 1.0;
  if (!v3)
  {
    dragState = self->_dragState;
    if (dragState >= 3)
    {
      if (dragState == 3)
      {
        return self->_iconContentScale;
      }

      else if (dragState == 4)
      {
        return 3.0;
      }
    }

    else
    {
      return self->_iconContentScale * 1.1;
    }
  }

  return result;
}

- (double)_blurContentViewIconViewCenterYOffset
{
  v3 = [(SBApplicationBlurContentView *)self->_platterView iconView];
  [(UIView *)self->_iconContainerView bounds];
  v5 = v4;
  [v3 bounds];
  v7 = (v5 - v6) * 0.5;

  return v7;
}

- (CGPoint)_effectiveIconContainerCenter
{
  [(SBAppPlatterDragPreview *)self bounds];
  UIRectGetCenter();
  v4 = v3;
  v6 = v5;
  if (self->_sourceView || [(SBAppPlatterDragPreview *)self _effectiveMode]&& self->_dragState == 3)
  {
    [(SBAppPlatterDragPreview *)self _blurContentViewIconViewCenterYOffset];
    v6 = v6 + v7;
  }

  v8 = v4;
  v9 = v6;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGRect)_effectiveIconViewFrame
{
  [(UIView *)self->_iconContainerView bounds];
  [(SBIconView *)self->_iconView bounds];
  SBRectWithSize();

  UIRectCenteredXInRect();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_effectivePlatterFrame
{
  v3 = [(SBAppPlatterDragPreview *)self _effectiveMode];
  v4 = v3;
  if (v3 == 2)
  {
    [(UIView *)self->_sourceView frame];
    sourceViewScale = self->_sourceViewScale;
  }

  else
  {
    if (v3)
    {
      goto LABEL_9;
    }

    iconView = self->_iconView;
    if (!iconView)
    {
      iconView = self->_referenceIconView;
    }

    [(SBIconView *)iconView iconImageFrame];
    [(SBAppPlatterDragPreview *)self _effectiveIconContentScale];
  }

  CGAffineTransformMakeScale(&v20, sourceViewScale, sourceViewScale);
LABEL_9:
  SBRectWithSize();
  [(SBAppPlatterDragPreview *)self bounds];
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v4 && !self->_sourceView && self->_dragState != 3)
  {
    [(SBAppPlatterDragPreview *)self _blurContentViewIconViewCenterYOffset];
    v10 = v10 - v15;
  }

  v16 = v8;
  v17 = v10;
  v18 = v12;
  v19 = v14;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_effectiveCornerRadiusConfiguration
{
  v3 = [(SBAppPlatterDragPreview *)self _effectiveMode];
  if (v3 - 1 >= 2)
  {
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      iconView = self->_iconView;
      if (!iconView)
      {
        iconView = self->_referenceIconView;
      }

      [(SBIconView *)iconView iconImageInfo];
      v7 = v6;
      [(SBAppPlatterDragPreview *)self _effectiveIconContentScale];
      v4 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithCornerRadius:v7 * v8];
    }
  }

  else
  {
    v4 = self->_cornerRadiusConfiguration;
  }

  return v4;
}

- (double)_effectiveCornerRadius
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(SBAppPlatterDragPreview *)self _effectiveCornerRadiusConfiguration];
  [v2 topLeft];
  v4 = v3;
  [v2 topRight];
  v11 = v5;
  [v2 bottomLeft];
  v12 = v6;
  [v2 bottomRight];
  v13 = v7;
  for (i = 8; i != 32; i += 8)
  {
    if (v4 < *&v10[i])
    {
      v4 = *&v10[i];
    }
  }

  return v4;
}

- (double)_effectiveIconAccessoryAlpha
{
  v3 = [(SBAppPlatterDragPreview *)self _effectiveMode];
  result = 0.0;
  if (!v3)
  {
    dragState = self->_dragState;
    if (dragState >= 3)
    {
      if (dragState == 3)
      {
        if (!self->_iconAllowsAccessory)
        {
          return result;
        }

        return 1.0;
      }

      if (dragState != 4)
      {
        return result;
      }
    }

    if (!self->_iconAllowsAccessory || self->_flocked)
    {
      return result;
    }

    return 1.0;
  }

  return result;
}

- (BOOL)_effectiveIconAllowsLabelArea
{
  if ([(SBAppPlatterDragPreview *)self _effectiveMode])
  {
    return 0;
  }

  dragState = self->_dragState;
  if (dragState >= 2)
  {
    if (dragState == 3)
    {
      return self->_iconAllowsLabelArea;
    }

    if (dragState != 4)
    {
      return 0;
    }
  }

  return self->_iconAllowsLabelArea && !self->_flocked;
}

- (BOOL)_effectiveIconCanShowCloseBox
{
  if ([(SBAppPlatterDragPreview *)self _effectiveMode])
  {
    return 0;
  }

  dragState = self->_dragState;
  if (dragState >= 2)
  {
    if (dragState == 3 && self->_iconCanShowCloseBox)
    {
      return !self->_flocked;
    }
  }

  else if (self->_iconInitiallyShowingCloseBox)
  {
    return !self->_flocked;
  }

  return 0;
}

- (BOOL)_effectiveIconCanShowResizeHandle
{
  if ([(SBAppPlatterDragPreview *)self _effectiveMode])
  {
    return 0;
  }

  dragState = self->_dragState;
  if (dragState >= 2)
  {
    if (dragState == 3 && self->_iconCanShowResizeHandle)
    {
      return !self->_flocked;
    }
  }

  else if (self->_iconInitiallyShowingResizeHandle)
  {
    return !self->_flocked;
  }

  return 0;
}

- (id)succinctDescription
{
  v2 = [(SBAppPlatterDragPreview *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBAppPlatterDragPreview *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBAppPlatterDragPreview *)self succinctDescriptionBuilder];
  v5 = [(SBAppPlatterDragPreview *)self mode];
  v6 = @"SBAppPlatterDragPreviewModeIcon";
  if (v5 == 2)
  {
    v6 = @"SBAppPlatterDragPreviewModeSourceView";
  }

  if (v5 == 1)
  {
    v7 = @"SBAppPlatterDragPreviewModePlatter";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v4 appendObject:v7 withName:@"mode"];
  v9 = [(SBAppPlatterDragPreview *)self dragState];
  if (v9 > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_2783B6EB8[v9];
  }

  v11 = [v4 appendObject:v10 withName:@"dragState"];
  [(SBAppPlatterDragPreview *)self platterSize];
  v12 = [v4 appendSize:@"platterSize" withName:?];
  [(SBAppPlatterDragPreview *)self sourceViewScale];
  v13 = [v4 appendFloat:@"sourceViewScale" withName:?];
  [(SBAppPlatterDragPreview *)self rotation];
  v14 = [v4 appendFloat:@"rotation" withName:?];

  return v4;
}

- (CGSize)platterSize
{
  width = self->_platterSize.width;
  height = self->_platterSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_configureIconViewWithReferenceIconView:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithConfigurationOptions:4];
  [v5 setCustomIconImageViewControllerPriority:3];
  v6 = [v5 borrowIconImageView];
  [v4 configureMatchingIconView:v5];
  if (self)
  {
    customIconImageViewController = self->_customIconImageViewController;
  }

  else
  {
    customIconImageViewController = 0;
  }

  v8 = customIconImageViewController;
  [v5 setOverrideCustomIconImageViewController:v8];
  [v6 invalidate];
  if (!v8)
  {
    v8 = [v5 customIconImageViewController];
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBIconViewCustomImageViewControlling *)v8 setShowsSnapshotWhenDeactivated:1];
  }

  [v5 setEditing:{objc_msgSend(v4, "isEditing")}];
  v9 = [v4 accessibilityTintColor];
  [v5 setAccessibilityTintColor:v9];

  [v5 setAllowsEditingAnimation:0];
  [v5 setIconContentScalingEnabled:0];
  [v5 bs_setHitTestingDisabled:1];
  [v5 sizeToFit];
  objc_storeStrong(&self->_iconView, v5);
  [(SBAppPlatterDragPreview *)self _effectiveIconViewFrame];
  [v5 setFrame:?];
  [v5 layoutIfNeeded];
  [(SBAppPlatterDragPreview *)self _updateIconViewComponentVisibility];
  v14 = 1.0;
  [(SBAppPlatterDragPreview *)self _getIconAlpha:&v14 platterAlpha:0];
  [v5 setAlpha:v14];
  [(UIView *)self->_iconContainerView addSubview:v5];
  v10 = [v5 backgroundViewGroupNameBase];

  if (v10)
  {
    v11 = [v5 newCaptureOnlyBackgroundView];
    [v5 frame];
    [(UIView *)v11 setFrame:?];
    [(UIView *)self->_iconContainerView addSubview:v11];
    [(UIView *)self->_iconContainerView sendSubviewToBack:v11];
    captureOnlyBackgroundView = self->_captureOnlyBackgroundView;
    self->_captureOnlyBackgroundView = v11;
  }

  v13 = [MEMORY[0x277D75348] redColor];
  [(SBAppPlatterDragPreview *)self _updateShowDebugIconBorderWithColor:v13];
}

- (uint64_t)customIconImageViewController
{
  if (result)
  {
    return *(result + 568);
  }

  return result;
}

- (void)handleCleanup
{
  if (self)
  {
    self->_delayingCleanup = 0;
  }

  [(SBIconView *)self->_iconView setIcon:0];
  [(UIView *)self->_captureOnlyBackgroundView removeFromSuperview];
  captureOnlyBackgroundView = self->_captureOnlyBackgroundView;
  self->_captureOnlyBackgroundView = 0;

  cleanUpHandler = self->_cleanUpHandler;
  if (cleanUpHandler)
  {
    cleanUpHandler[2](cleanUpHandler, self);
    v5 = self->_cleanUpHandler;
    self->_cleanUpHandler = 0;
  }

  if (self->_sourcePortalView)
  {
    [(SBAppPlatterDragPreview *)self invalidateSourceView];
    [(SBPortalView *)self->_sourcePortalView removeFromSuperview];
    sourcePortalView = self->_sourcePortalView;
    self->_sourcePortalView = 0;
  }
}

- (uint64_t)setDelayingCleanup:(uint64_t)result
{
  if (result)
  {
    *(result + 440) = a2;
  }

  return result;
}

- (uint64_t)isDelayingCleanup
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 440));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

_BYTE *__62__SBAppPlatterDragPreview_draggingSourceDroppedWithOperation___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 424) count];
  result = *(a1 + 32);
  if (v2)
  {
    if (result)
    {
      result[440] = 1;
    }
  }

  else
  {

    return [result handleCleanup];
  }

  return result;
}

- (void)setIconViewDelegate:(id)a3
{
  if (self)
  {
    self = self->_iconView;
  }

  [(SBAppPlatterDragPreview *)self setDelegate:a3];
}

- (uint64_t)iconView
{
  if (result)
  {
    return *(result + 552);
  }

  return result;
}

- (void)setIconViewListLayoutProvider:(id)a3
{
  if (self)
  {
    self = self->_iconView;
  }

  [(SBAppPlatterDragPreview *)self setListLayoutProvider:a3];
}

- (void)setIconViewCustomIconImageViewController:(id)a3
{
  v5 = a3;
  [(SBAppPlatterDragPreview *)self setCustomIconImageViewController:v5];
  if (self)
  {
    iconView = self->_iconView;
  }

  else
  {
    iconView = 0;
  }

  [(SBIconView *)iconView setOverrideCustomIconImageViewController:v5];
}

- (void)setCustomIconImageViewController:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 568);
  }
}

- (double)iconDragAlpha
{
  if (self)
  {
    self = self->_iconView;
  }

  v2 = [(SBAppPlatterDragPreview *)self icon];
  v3 = [v2 gridSizeClass];
  v4 = v3;
  v5 = 0.5;
  if (v3 != *MEMORY[0x277D66528] && ([v3 isEqualToString:?] & 1) == 0)
  {
    [MEMORY[0x277D663F0] iconLiftAlpha];
    v5 = v6;
  }

  return v5;
}

- (void)_updateIconViewComponentVisibility
{
  if (self)
  {
    iconView = self->_iconView;
  }

  else
  {
    iconView = 0;
  }

  v10 = iconView;
  [(SBAppPlatterDragPreview *)self _effectiveIconAccessoryAlpha];
  v5 = v4;
  if ([(SBAppPlatterDragPreview *)self _effectiveIconAllowsLabelArea])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(SBAppPlatterDragPreview *)self _effectiveIconIsHighlighted];
  v8 = [(SBAppPlatterDragPreview *)self _effectiveIconCanShowCloseBox];
  v9 = [(SBAppPlatterDragPreview *)self _effectiveIconCanShowResizeHandle];
  [(SBIconView *)v10 setIconAccessoryAlpha:v5];
  [(SBIconView *)v10 setIconLabelAlpha:v6];
  [(SBIconView *)v10 setHighlighted:v7];
  [(SBIconView *)v10 setAllowsCloseBox:v8];
  [(SBIconView *)v10 setAllowsResizeHandle:v9];
}

- (void)setSourceView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 480);
  }
}

- (void)setPlatterView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 496);
  }
}

- (uint64_t)referenceIconView
{
  if (result)
  {
    return *(result + 544);
  }

  return result;
}

- (void)setReferenceIconView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 544);
  }
}

- (void)setIconView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 552);
  }
}

- (uint64_t)captureOnlyBackgroundView
{
  if (result)
  {
    return *(result + 560);
  }

  return result;
}

- (void)setCaptureOnlyBackgroundView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 560);
  }
}

- (uint64_t)iconIsHighlighted
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 437));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)setIconIsHighlighted:(uint64_t)result
{
  if (result)
  {
    *(result + 437) = a2;
  }

  return result;
}

- (uint64_t)iconInitiallyShowingCloseBox
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 438));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)setIconInitiallyShowingCloseBox:(uint64_t)result
{
  if (result)
  {
    *(result + 438) = a2;
  }

  return result;
}

- (uint64_t)iconInitiallyShowingResizeHandle
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 439));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)setIconInitiallyShowingResizeHandle:(uint64_t)result
{
  if (result)
  {
    *(result + 439) = a2;
  }

  return result;
}

- (uint64_t)anchorPointAdjustmentContainerView
{
  if (result)
  {
    return *(result + 576);
  }

  return result;
}

- (void)setAnchorPointAdjustmentContainerView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 576);
  }
}

- (uint64_t)iconContainerView
{
  if (result)
  {
    return *(result + 584);
  }

  return result;
}

- (void)setIconContainerView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 584);
  }
}

- (uint64_t)cornerMaskingView
{
  if (result)
  {
    return *(result + 592);
  }

  return result;
}

- (void)setCornerMaskingView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 592);
  }
}

- (uint64_t)sourcePortalView
{
  if (result)
  {
    return *(result + 600);
  }

  return result;
}

- (void)setSourcePortalView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 600);
  }
}

- (uint64_t)unclippedSourceContainerView
{
  if (result)
  {
    return *(result + 608);
  }

  return result;
}

- (void)setUnclippedSourceContainerView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 608);
  }
}

- (uint64_t)diffuseShadowView
{
  if (result)
  {
    return *(result + 616);
  }

  return result;
}

- (void)setDiffuseShadowView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 616);
  }
}

- (uint64_t)rimShadowView
{
  if (result)
  {
    return *(result + 624);
  }

  return result;
}

- (void)setRimShadowView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 624);
  }
}

- (void)initWithReferenceIconView:(uint64_t)a1 sourceView:(uint64_t)a2 sourceViewScale:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppPlatterDragPreview.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"referenceIconView != nil"}];
}

- (void)setDragState:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_referenceIconView != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBAppPlatterDragPreview.m";
    v16 = 1024;
    v17 = 384;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end