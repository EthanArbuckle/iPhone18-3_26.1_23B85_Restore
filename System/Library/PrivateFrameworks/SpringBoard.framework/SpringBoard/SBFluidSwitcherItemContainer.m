@interface SBFluidSwitcherItemContainer
+ (double)preferredRestingVisibleMarginForBounds:(CGRect)a3;
- (BOOL)_scrollViewShouldPanGestureTryToBegin:(id)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)appSwitcherPageView:(id)a3 shouldBeginPointerInteractionAtLocation:(CGPoint)a4 window:(id)a5;
- (BOOL)contentViewHasSceneOverlay;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isDeceleratingTowardsKillZone;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)positionAnimationsBeginFromModelState;
- (BOOL)transformAnimationsAreLegacyCounterRotations;
- (CGPoint)_CGPointFromScalarBasedOnKillAxis:(double)a3;
- (CGPoint)_contentOffsetAtRest;
- (CGPoint)_contentOffsetForKillingProgress:(double)a3;
- (CGPoint)meshWarpCollapsedTargetPosition;
- (CGPoint)meshWarpExpandedSourcePosition;
- (CGPoint)pageViewAnchorPoint;
- (CGPoint)pageViewOffset;
- (CGRect)_frameForPageView;
- (CGRect)_frameForPageViewWithFullPresentedSize:(CGSize)a3;
- (CGRect)_frameForScrollView;
- (CGRect)_frameForScrollViewWithFullPresentedSize:(CGSize)a3;
- (CGRect)effectivePageViewPresentationFrame;
- (CGSize)_CGSizeFromLengthBasedOnKillAxis:(double)a3;
- (CGSize)_contentSizeForScrollView;
- (CGSize)sizeForContainingSpace;
- (NSString)description;
- (SBDragPreviewShadowParameters)initialDiffuseShadowParameters;
- (SBDragPreviewShadowParameters)initialRimShadowParameters;
- (SBFluidSwitcherItemContainer)initWithCoder:(id)a3;
- (SBFluidSwitcherItemContainer)initWithFrame:(CGRect)a3;
- (SBFluidSwitcherItemContainer)initWithFrame:(CGRect)a3 appLayout:(id)a4 delegate:(id)a5 active:(BOOL)a6 windowScene:(id)a7;
- (SBFluidSwitcherItemContainerDelegate)delegate;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes;
- (UIRectCornerRadii)contentCornerRadii;
- (double)_CGPointXOrYBasedOnKillAxis:(CGPoint)a3;
- (double)_CGSizeWidthOrHeightBasedOnKillAxis:(CGSize)a3;
- (double)_inverseScaleTransformFactor;
- (double)_killingProgressForContentOffset:(CGPoint)a3;
- (double)_scaleForHighlightFromCursorHover;
- (double)_scaleForHighlightFromDirectTouch;
- (double)currentStatusBarHeight;
- (double)effectivePageViewPresentationCornerRadius;
- (double)killingProgress;
- (id)_createScrollView;
- (id)_springLoadingEffectTargetView;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)initialCornerRadiusConfiguration;
- (id)initialDiffuseShadowFilters;
- (id)initialRimShadowFilters;
- (id)layer;
- (void)_addPageView;
- (void)_ensureSubviewOrder;
- (void)_handleHoverGesture:(id)a3;
- (void)_handlePageViewTap:(id)a3;
- (void)_handleSelectionHighlightGesture:(id)a3;
- (void)_notifyDelegateScrollViewDidChange;
- (void)_resetKillProgressScrollState;
- (void)_returnKeyPressed:(id)a3;
- (void)_setWantsOverlayPortalView:(BOOL)a3;
- (void)_updateAccessibilityIdentifier;
- (void)_updateFooterAnimated:(BOOL)a3;
- (void)_updateFooterVisibility;
- (void)_updateForPointerHoveringOverEdge:(unint64_t)a3;
- (void)_updateKillScrollViewEnabled;
- (void)_updatePageViewContentClippingFrame;
- (void)_updatePageViewContentViewClipping;
- (void)_updateShadowVisibility;
- (void)_updateTransformForCurrentHighlight;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)genieEffectViewDidInvalidate:(id)a3;
- (void)gestureRecognizerTransitionedToFailed:(id)a3;
- (void)itemContainerFooterView:(id)a3 didSelectTitleItem:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setActive:(BOOL)a3;
- (void)setAppLayout:(id)a3;
- (void)setBlurred:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8;
- (void)setBlurthoughView:(id)a3;
- (void)setBlurthroughPortalView:(id)a3;
- (void)setClipsToUnobscuredMargin:(BOOL)a3;
- (void)setContentCornerRadii:(UIRectCornerRadii)a3;
- (void)setContentOverlay:(id)a3 animated:(BOOL)a4;
- (void)setContentPageViewScale:(double)a3;
- (void)setDraggable:(BOOL)a3;
- (void)setDragging:(BOOL)a3;
- (void)setDrawsFooter:(BOOL)a3;
- (void)setFocusable:(BOOL)a3;
- (void)setFooterStyle:(unint64_t)a3;
- (void)setHighlightedFromCursorHover:(BOOL)a3;
- (void)setHighlightedFromDirectTouch:(BOOL)a3;
- (void)setIconOpacity:(double)a3;
- (void)setKillAxis:(unint64_t)a3;
- (void)setKillable:(BOOL)a3;
- (void)setLifted:(BOOL)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setMeshTransform:(id)a3;
- (void)setMinimumTranslationForKillingContainer:(double)a3;
- (void)setOverlayPortalView:(id)a3;
- (void)setPageViewAnchorPoint:(CGPoint)a3;
- (void)setPageViewOffset:(CGPoint)a3;
- (void)setPointerInteractionEnabled:(BOOL)a3;
- (void)setPointerInteractionHitTestPadding:(double)a3;
- (void)setPositionAnimationsBeginFromModelState:(BOOL)a3;
- (void)setPreferredPointerLockStatusSuppressed:(BOOL)a3;
- (void)setRubberbandable:(BOOL)a3;
- (void)setShouldScaleOverlayToFillBounds:(BOOL)a3;
- (void)setTitleAndIconOpacity:(double)a3;
- (void)setTitleItems:(id)a3 animated:(BOOL)a4;
- (void)setTitleOpacity:(double)a3;
- (void)setTransformAnimationsAreLegacyCounterRotations:(BOOL)a3;
- (void)setUnobscuredMargin:(double)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation SBFluidSwitcherItemContainer

- (void)_resetKillProgressScrollState
{
  [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView _stopScrollingAndZoomingAnimations];
  killScrollView = self->_killScrollView;
  [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
  [(SBFluidSwitcherTouchPassThroughScrollView *)killScrollView setContentOffset:?];
  pageView = self->_pageView;
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v5;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(SBAppSwitcherPageView *)pageView setTransform:v6];
}

- (CGPoint)_contentOffsetAtRest
{
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1 && self->_killAxis == 1)
  {
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView contentSize];
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView bounds];
    SBScreenScale();
    BSFloatRoundForScale();
    v4 = 0.0;
  }

  else
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_updateShadowVisibility
{
  v3 = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  [v3 setHidden:self->_dragging];
}

- (void)_updateAccessibilityIdentifier
{
  appLayout = self->_appLayout;
  if (appLayout)
  {
    v8 = [(SBAppLayout *)appLayout itemForLayoutRole:1];
    v4 = MEMORY[0x277CCACA8];
    v5 = [v8 bundleIdentifier];
    v6 = [v8 uniqueIdentifier];
    v7 = [v4 stringWithFormat:@"card:%@:%@", v5, v6];
    [(SBFluidSwitcherItemContainer *)self setAccessibilityIdentifier:v7];
  }

  else
  {

    [(SBFluidSwitcherItemContainer *)self setAccessibilityIdentifier:0];
  }
}

- (id)layer
{
  v4.receiver = self;
  v4.super_class = SBFluidSwitcherItemContainer;
  v2 = [(SBFluidSwitcherItemContainer *)&v4 layer];

  return v2;
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = SBFluidSwitcherItemContainer;
  [(SBFTouchPassThroughClippingView *)&v50 layoutSubviews];
  v3 = [(SBFluidSwitcherItemContainer *)self delegate];
  [(SBFluidSwitcherItemContainer *)self bounds];
  v5 = v4;
  v7 = v6;
  v46 = v9;
  v47 = v8;
  [(SBSwitcherGenieEffectView *)self->_genieEffectView sb_setBoundsAndPositionFromFrame:?];
  [v3 frameForPageViewOfContainer:self fullyPresented:1];
  v11 = v10;
  v13 = v12;
  [(SBFluidSwitcherItemContainer *)self _frameForScrollViewWithFullPresentedSize:v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView frame];
  v55.origin.x = v15;
  v55.origin.y = v17;
  v55.size.width = v19;
  v55.size.height = v21;
  if (!CGRectEqualToRect(v51, v55))
  {
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView setFrame:v15, v17, v19, v21];
  }

  [(SBFluidSwitcherItemContainer *)self _contentSizeForScrollView];
  v23 = v22;
  v25 = v24;
  [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView contentSize];
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __46__SBFluidSwitcherItemContainer_layoutSubviews__block_invoke;
    v49[3] = &unk_2783A8C40;
    v49[4] = self;
    v49[5] = v23;
    v49[6] = v25;
    v26 = MEMORY[0x223D6F7F0](v49);
    if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
    {
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v26];
    }

    else if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      [MEMORY[0x277D75D18] performWithoutAnimation:v26];
    }

    else
    {
      v26[2](v26);
    }
  }

  [(SBFluidSwitcherItemContainer *)self _frameForPageViewWithFullPresentedSize:v11, v13];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  pageView = self->_pageView;
  SBRectWithSize();
  [(SBAppSwitcherPageView *)pageView setBounds:?];
  UIRectGetCenter();
  [(SBAppSwitcherPageView *)self->_pageView setCenter:v36 + v32 * (self->_pageViewAnchorPoint.x + -0.5) + self->_pageViewOffset.x, v37 + v34 * (self->_pageViewAnchorPoint.y + -0.5) + self->_pageViewOffset.y];
  -[SBAppSwitcherPageView setOrientation:](self->_pageView, "setOrientation:", [v3 switcherInterfaceOrientation]);
  [(SBAppSwitcherPageView *)self->_pageView setOverlayViewSize:v11, v13];
  [(SBAppSwitcherPageView *)self->_pageView setFullyPresentedSize:v11, v13];
  blurView = self->_blurView;
  if (blurView)
  {
    [(SBAppSwitcherPageView *)self->_pageView bounds];
    [(SBApplicationBlurContentView *)blurView setBounds:?];
    v39 = self->_blurView;
    [(SBAppSwitcherPageView *)self->_pageView center];
    [(SBApplicationBlurContentView *)v39 setCenter:?];
  }

  [(SBFluidSwitcherItemContainer *)self _updatePageViewContentClippingFrame];
  if (self->_iconAndLabelFooter)
  {
    [(SBFluidSwitcherItemContainer *)self contentPageViewScale];
    [(SBFluidSwitcherItemContainer *)self _inverseScaleTransformFactor];
    sx = v40;
    v52.origin.x = v5;
    v52.origin.y = v7;
    v52.size.width = v47;
    v52.size.height = v46;
    CGRectGetWidth(v52);
    [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter intrinsicContentSize];
    v53.origin.x = v5;
    v53.origin.y = v7;
    v53.size.width = v47;
    v53.size.height = v46;
    CGRectGetMidX(v53);
    v54.origin.x = v5;
    v54.origin.y = v7;
    v54.size.width = v47;
    v54.size.height = v46;
    CGRectGetMaxY(v54);
    v41 = [(SBFluidSwitcherItemContainer *)self traitCollection];
    [v41 displayScale];

    UIRectIntegralWithScale();
    [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter sb_setBoundsAndPositionFromFrame:?];
    iconAndLabelFooter = self->_iconAndLabelFooter;
    CGAffineTransformMakeScale(&v48, sx, sx);
    [(SBFluidSwitcherItemContainerFooterView *)iconAndLabelFooter setTransform:&v48];
  }

  iconOverlayView = self->_iconOverlayView;
  if (iconOverlayView)
  {
    [(BSUIOrientationTransformWrapperView *)iconOverlayView setFrame:v28, v30, v32, v34];
  }

  if (self->_blurthroughContainerView)
  {
    SBRectWithSize();
    [(UIView *)self->_blurthroughContainerView setBounds:?];
    blurthroughContainerView = self->_blurthroughContainerView;
    UIRectGetCenter();
    [(UIView *)blurthroughContainerView setCenter:?];
  }

  [(SBFluidSwitcherItemContainer *)self _ensureSubviewOrder];
}

- (SBFluidSwitcherItemContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)_contentSizeForScrollView
{
  [(SBFluidSwitcherItemContainer *)self contentPageViewScale];
  if (self->_killable && (v4 = v3, BSFloatGreaterThanFloat()))
  {
    v5 = self->_minimumTranslationForKillingContainer / v4;
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView bounds];
    [(SBFluidSwitcherItemContainer *)self _CGSizeWidthOrHeightBasedOnKillAxis:v6, v7];
    v9 = v5 + v8 + v5 + v8;

    [(SBFluidSwitcherItemContainer *)self _CGSizeFromLengthBasedOnKillAxis:v9];
  }

  else
  {
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView bounds];
    v13 = v12;
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView bounds];
    v11 = v14 + 1.0;
    v10 = v13;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_updatePageViewContentClippingFrame
{
  [(SBAppSwitcherPageView *)self->_pageView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (self->_clipsToUnobscuredMargin)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      [(SBFluidSwitcherItemContainer *)self _frameForPageView];
      v11 = v10;
      unobscuredMargin = self->_unobscuredMargin;
      v5 = v11 - unobscuredMargin;
    }

    else
    {
      unobscuredMargin = self->_unobscuredMargin;
    }
  }

  pageView = self->_pageView;

  [(SBAppSwitcherPageView *)pageView setContentClippingFrame:v5, v7, unobscuredMargin, v9];
}

- (double)currentStatusBarHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained currentStatusBarHeightOfContainer:self];
  v5 = v4;

  return v5;
}

- (void)_ensureSubviewOrder
{
  [(UIView *)self->_contentContainerView bringSubviewToFront:self->_killScrollView];
  [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView bringSubviewToFront:self->_iconOverlayView];
  [(SBFTouchPassThroughClippingView *)self bringSubviewToFront:self->_genieEffectView];
  if (self->_blurthroughContainerView)
  {
    [(UIView *)self->_contentContainerView bringSubviewToFront:?];
  }

  if (self->_blurthroughPortalView)
  {
    [(UIView *)self->_contentContainerView bringSubviewToFront:?];
  }

  if (self->_iconAndLabelFooter)
  {

    [(SBFTouchPassThroughClippingView *)self bringSubviewToFront:?];
  }
}

void __46__SBFluidSwitcherItemContainer_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
  [WeakRetained containerWillBeginAnimatingHighlight:*(a1 + 32) scale:*(*(a1 + 32) + 771) isTracking:1.0];
  v3 = *(*(a1 + 32) + 496);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v22[0] = *MEMORY[0x277CBF2C0];
  v22[1] = v4;
  v22[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:v22];
  [*(*(a1 + 32) + 480) setContentSize:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) _CGSizeWidthOrHeightBasedOnKillAxis:{*(a1 + 40), *(a1 + 48)}];
  v6 = v5;
  v7 = *(a1 + 32);
  [v7[60] bounds];
  [v7 _CGSizeWidthOrHeightBasedOnKillAxis:{v8, v9}];
  v11 = *(a1 + 32);
  v12 = v11[60];
  [v11 _CGSizeFromLengthBasedOnKillAxis:{fmax(-(v10 - v6 * 0.5), 0.0)}];
  [v12 _setInterpageSpacing:?];
  v13 = [*(*(a1 + 32) + 480) isDecelerating];
  v14 = *(a1 + 32);
  if (v13)
  {
    [v14 _contentOffsetForKillingProgress:*(v14 + 680)];
    v16 = v15;
    v18 = v17;
    [*(*(a1 + 32) + 480) _setPageDecelerationTarget:?];
    [*(a1 + 32) _killingProgressForContentOffset:{v16, v18}];
    *(*(a1 + 32) + 680) = v19;
  }

  else if (([*(v14 + 480) isDragging] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 480), "isTracking") & 1) == 0)
  {
    v20 = *(a1 + 32);
    v21 = v20[60];
    [v20 _contentOffsetAtRest];
    [v21 setContentOffset:?];
  }

  [WeakRetained containerDidEndAnimatingHighlight:*(a1 + 32) scale:1.0];
}

- (id)_createScrollView
{
  [(SBFluidSwitcherItemContainer *)self _frameForScrollView];
  v7 = [[SBFluidSwitcherTouchPassThroughScrollView alloc] initWithFrame:v3, v4, v5, v6];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setBounces:1];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setPagingEnabled:1];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setShowsHorizontalScrollIndicator:0];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setShowsVerticalScrollIndicator:0];
  v8 = [MEMORY[0x277D75348] clearColor];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setBackgroundColor:v8];

  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setDelegate:self];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setClipsToBounds:0];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 _setAutoScrollEnabled:0];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setTracksImmediatelyWhileDecelerating:0];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 _setSupportsPointerDragScrolling:1];
  v9 = [(SBFluidSwitcherTouchPassThroughScrollView *)v7 panGestureRecognizer];
  [v9 setAllowedScrollTypesMask:2];

  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setAlwaysBounceVertical:1];

  return v7;
}

- (CGRect)_frameForScrollView
{
  v3 = [(SBFluidSwitcherItemContainer *)self delegate];
  [v3 frameForPageViewOfContainer:self fullyPresented:1];
  [(SBFluidSwitcherItemContainer *)self _frameForScrollViewWithFullPresentedSize:v4, v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_addPageView
{
  v18 = [(SBFluidSwitcherItemContainer *)self delegate];
  [v18 frameForPageViewOfContainer:self fullyPresented:1];
  SBRectWithSize();
  v7 = [[SBAppSwitcherPageView alloc] initWithFrame:v3, v4, v5, v6];
  pageView = self->_pageView;
  self->_pageView = v7;

  [(SBAppSwitcherPageView *)self->_pageView setSwitcherCardScale:self->_contentPageViewScale];
  [(SBAppSwitcherPageView *)self->_pageView setShouldClipContentView:self->_clipsToUnobscuredMargin];
  [(SBAppSwitcherPageView *)self->_pageView setCornerRadii:self->_contentCornerRadii.topLeft, self->_contentCornerRadii.bottomLeft, self->_contentCornerRadii.bottomRight, self->_contentCornerRadii.topRight];
  [(SBAppSwitcherPageView *)self->_pageView setShouldScaleOverlayToFillBounds:self->_shouldScaleOverlayToFillBounds];
  [(SBAppSwitcherPageView *)self->_pageView setDelegate:self];
  [(SBAppSwitcherPageView *)self->_pageView setMaskedCorners:self->_maskedCorners];
  [(SBAppSwitcherPageView *)self->_pageView setPointerInteractionHitTestPadding:self->_pointerInteractionHitTestPadding];
  v9 = [(SBAppSwitcherPageView *)self->_pageView layer];
  [v9 setAnchorPoint:{self->_pageViewAnchorPoint.x, self->_pageViewAnchorPoint.y}];

  [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView addSubview:self->_pageView];
  v10 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleSelectionHighlightGesture_];
  selectionHighlightGestureRecognizer = self->_selectionHighlightGestureRecognizer;
  self->_selectionHighlightGestureRecognizer = v10;

  [(UILongPressGestureRecognizer *)self->_selectionHighlightGestureRecognizer setDelegate:self];
  [(UILongPressGestureRecognizer *)self->_selectionHighlightGestureRecognizer setMinimumPressDuration:0.12];
  [(UILongPressGestureRecognizer *)self->_selectionHighlightGestureRecognizer _setKeepTouchesOnContinuation:1];
  [(SBFluidSwitcherItemContainer *)self addGestureRecognizer:self->_selectionHighlightGestureRecognizer];
  v12 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handlePageViewPressDown_];
  pressDownGestureRecognizer = self->_pressDownGestureRecognizer;
  self->_pressDownGestureRecognizer = v12;

  [(UILongPressGestureRecognizer *)self->_pressDownGestureRecognizer setMinimumPressDuration:0.0];
  [(UILongPressGestureRecognizer *)self->_pressDownGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherItemContainer *)self addGestureRecognizer:self->_pressDownGestureRecognizer];
  v14 = [[SBFailureNotifyingTapGestureRecognizer alloc] initWithTarget:self action:sel__handlePageViewTap_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v14;

  [(SBFailureNotifyingTapGestureRecognizer *)self->_tapGestureRecognizer setAllowableMovement:10.0];
  [(SBFailureNotifyingTapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [(SBFailureNotifyingTapGestureRecognizer *)self->_tapGestureRecognizer _setKeepTouchesOnContinuation:1];
  [(SBFluidSwitcherItemContainer *)self addGestureRecognizer:self->_tapGestureRecognizer];
  v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handlePageViewTap_];
  doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
  self->_doubleTapGestureRecognizer = v16;

  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelaysTouchesEnded:0];
  [(SBFluidSwitcherItemContainer *)self addGestureRecognizer:self->_doubleTapGestureRecognizer];
  [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  [(SBFluidSwitcherItemContainer *)self layoutIfNeeded];
}

- (void)_updateKillScrollViewEnabled
{
  killScrollView = self->_killScrollView;
  v4 = [(SBFluidSwitcherItemContainer *)self isKillable]|| [(SBFluidSwitcherItemContainer *)self isRubberbandable];

  [(SBFluidSwitcherTouchPassThroughScrollView *)killScrollView setScrollEnabled:v4];
}

- (SBFluidSwitcherItemContainer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [MEMORY[0x277CCA890] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherItemContainer.m" lineNumber:210 description:@"Override initWithFrame:delegate: instead"];

  return [(SBFluidSwitcherItemContainer *)self initWithFrame:0 appLayout:0 delegate:0 active:0 windowScene:x, y, width, height];
}

- (SBFluidSwitcherItemContainer)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherItemContainer.m" lineNumber:216 description:@"Override initWithFrame:delegate: instead"];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(SBFluidSwitcherItemContainer *)self initWithFrame:0 appLayout:0 delegate:0 active:0 windowScene:v6, v7, v8, v9];
}

- (SBFluidSwitcherItemContainer)initWithFrame:(CGRect)a3 appLayout:(id)a4 delegate:(id)a5 active:(BOOL)a6 windowScene:(id)a7
{
  v8 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  if (!v18)
  {
    [SBFluidSwitcherItemContainer initWithFrame:a2 appLayout:self delegate:? active:? windowScene:?];
  }

  v44.receiver = self;
  v44.super_class = SBFluidSwitcherItemContainer;
  v20 = [(SBFTouchPassThroughClippingView *)&v44 initWithFrame:x, y, width, height];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_appLayout, a4);
    v22 = +[SBAppSwitcherDomain rootSettings];
    settings = v21->_settings;
    v21->_settings = v22;

    v24 = +[SBMedusaDomain rootSettings];
    medusaSettings = v21->_medusaSettings;
    v21->_medusaSettings = v24;

    v21->_contentPageViewScale = 1.0;
    v21->_titleAndIconOpacity = 1.0;
    v21->_titleOpacity = 1.0;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v21->_unobscuredMargin = CGRectGetWidth(v45);
    objc_storeWeak(&v21->_delegate, v18);
    v26 = objc_alloc(MEMORY[0x277D65F80]);
    v27 = [v26 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    contentContainerView = v21->_contentContainerView;
    v21->_contentContainerView = v27;

    v29 = [SBSwitcherGenieEffectView alloc];
    [(SBFluidSwitcherItemContainer *)v21 bounds];
    v30 = [(SBSwitcherGenieEffectView *)v29 initWithFrame:v21 delegate:?];
    genieEffectView = v21->_genieEffectView;
    v21->_genieEffectView = v30;

    [(SBSwitcherGenieEffectView *)v21->_genieEffectView setPortaledContentShouldMatchSource:0];
    [(SBFTouchPassThroughClippingView *)v21 addSubview:v21->_genieEffectView];
    [(SBSwitcherGenieEffectView *)v21->_genieEffectView setChildContentView:v21->_contentContainerView];
    v32 = [(SBFluidSwitcherItemContainer *)v21 _createScrollView];
    killScrollView = v21->_killScrollView;
    v21->_killScrollView = v32;

    [(SBFluidSwitcherTouchPassThroughScrollView *)v21->_killScrollView velocityScaleFactor];
    v21->_killScrollViewInitialVelocityScaleFactor = v34;
    [(UIView *)v21->_contentContainerView addSubview:v21->_killScrollView];
    [(SBFluidSwitcherItemContainer *)v21 _addPageView];
    [(SBFluidSwitcherItemContainer *)v21 setActive:v8];
    v35 = [(SBFluidSwitcherItemContainer *)v21 layer];
    v36 = [(SBFluidSwitcherItemContainer *)v21 traitCollection];
    [v36 displayScale];
    [v35 setRasterizationScale:?];

    [(SBFluidSwitcherItemContainer *)v21 _setSafeAreaInsetsFrozen:1];
    v37 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v21 action:sel__handleHoverGesture_];
    hoverGestureRecognizer = v21->_hoverGestureRecognizer;
    v21->_hoverGestureRecognizer = v37;

    [(SBFluidSwitcherItemContainer *)v21 addGestureRecognizer:v21->_hoverGestureRecognizer];
    v39 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:v21];
    dragInteraction = v21->_dragInteraction;
    v21->_dragInteraction = v39;

    [(SBFluidSwitcherItemContainer *)v21 addInteraction:v21->_dragInteraction];
    [(SBFluidSwitcherItemContainer *)v21 _updateAccessibilityIdentifier];
    [(SBFluidSwitcherItemContainer *)v21 setPageViewAnchorPoint:0.5, 0.5];
    [(SBFluidSwitcherItemContainer *)v21 _updateKillScrollViewEnabled];
    v41 = [[SBAffordancePresenceController alloc] initWithDelegate:v21 windowScene:v19];
    affordancePresenceController = v21->_affordancePresenceController;
    v21->_affordancePresenceController = v41;
  }

  return v21;
}

- (void)prepareForReuse
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherItemContainer.m" lineNumber:328 description:@"Can't recycle active view"];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFluidSwitcherItemContainer;
    v5 = [(SBFluidSwitcherItemContainer *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherItemContainer;
  v3 = [(SBFluidSwitcherItemContainer *)&v7 description];
  v4 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v5 = [v3 stringByAppendingFormat:@" appLayout: %@", v4];

  return v5;
}

+ (double)preferredRestingVisibleMarginForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  +[SBFluidSwitcherItemContainerHeaderView distanceFromBoundingLeadingEdgeToIconTrailingEdge];
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetWidth(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetHeight(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetWidth(v11);
  SBScreenScale();

  BSFloatRoundForScale();
  return result;
}

- (void)setAppLayout:(id)a3
{
  v5 = a3;
  if (self->_appLayout != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_appLayout, a3);
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
    [(SBFluidSwitcherItemContainer *)self _updateAccessibilityIdentifier];
    v5 = v6;
  }
}

- (void)setMeshTransform:(id)a3
{
  if (a3 | self->_meshTransform)
  {
    v4 = [a3 copy];
    meshTransform = self->_meshTransform;
    self->_meshTransform = v4;

    v6 = [(SBFluidSwitcherItemContainer *)self layer];
    [v6 setValue:self->_meshTransform forKey:@"meshTransform"];
  }
}

- (void)setContentCornerRadii:(UIRectCornerRadii)a3
{
  v13 = *MEMORY[0x277D85DE8];
  p_contentCornerRadii = &self->_contentCornerRadii;
  v4.f64[0] = a3.topLeft;
  v4.f64[1] = a3.bottomLeft;
  v5.f64[0] = a3.bottomRight;
  v5.f64[1] = a3.topRight;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_contentCornerRadii.topLeft), vceqq_f64(v5, *&self->_contentCornerRadii.bottomRight)))) & 1) == 0)
  {
    p_contentCornerRadii->topLeft = a3.topLeft;
    self->_contentCornerRadii.bottomLeft = a3.bottomLeft;
    self->_contentCornerRadii.bottomRight = a3.bottomRight;
    self->_contentCornerRadii.topRight = a3.topRight;
    [(SBAppSwitcherPageView *)self->_pageView setCornerRadii:?];
    topLeft = p_contentCornerRadii->topLeft;
    topRight = p_contentCornerRadii->topRight;
    v12 = *&p_contentCornerRadii->bottomLeft;
    for (i = 8; i != 32; i += 8)
    {
      if (topLeft < *&v10[i])
      {
        topLeft = *&v10[i];
      }
    }

    [(SBApplicationBlurContentView *)self->_blurView _setContinuousCornerRadius:topLeft];
    [(UIView *)self->_blurthroughContainerView _setContinuousCornerRadius:topLeft];
    [(SBFluidSwitcherIconOverlayView *)self->_iconOverlayView setCornerRadius:topLeft];
    genieEffectView = self->_genieEffectView;

    [(SBSwitcherGenieEffectView *)genieEffectView _setContinuousCornerRadius:topLeft];
  }
}

- (void)setMaskedCorners:(unint64_t)a3
{
  if (self->_maskedCorners != a3)
  {
    self->_maskedCorners = a3;
    [(SBAppSwitcherPageView *)self->_pageView setMaskedCorners:?];
    v4 = [(UIView *)self->_blurthroughContainerView layer];
    [v4 setMaskedCorners:self->_maskedCorners];
  }
}

- (void)setDrawsFooter:(BOOL)a3
{
  if (self->_drawsFooter != a3)
  {
    self->_drawsFooter = a3;
    [(SBFluidSwitcherItemContainer *)self _updateFooterVisibility];
  }
}

- (void)setTitleItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  titleItems = self->_titleItems;
  if (titleItems != v6)
  {
    v11 = v6;
    v8 = [(NSArray *)titleItems isEqual:v6];
    v6 = v11;
    if ((v8 & 1) == 0)
    {
      v9 = [(NSArray *)v11 copy];
      v10 = self->_titleItems;
      self->_titleItems = v9;

      [(SBFluidSwitcherItemContainer *)self _updateFooterAnimated:v4];
      v6 = v11;
    }
  }
}

- (void)setTitleAndIconOpacity:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleAndIconOpacity = a3;

    [(SBFluidSwitcherItemContainer *)self _updateFooterAnimated:1];
  }
}

- (void)setTitleOpacity:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleOpacity = a3;

    [(SBFluidSwitcherItemContainer *)self _updateFooterAnimated:1];
  }
}

- (void)setIconOpacity:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_iconOpacity = a3;

    [(SBFluidSwitcherItemContainer *)self _updateFooterAnimated:1];
  }
}

- (void)setContentPageViewScale:(double)a3
{
  if (self->_contentPageViewScale != a3)
  {
    self->_contentPageViewScale = a3;
    [(SBAppSwitcherPageView *)self->_pageView setSwitcherCardScale:?];
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView setVelocityScaleFactor:self->_killScrollViewInitialVelocityScaleFactor * self->_contentPageViewScale];
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];

    [(SBFluidSwitcherItemContainer *)self layoutIfNeeded];
  }
}

- (void)setPreferredPointerLockStatusSuppressed:(BOOL)a3
{
  if (self->_preferredPointerLockStatusSuppressed != a3)
  {
    self->_preferredPointerLockStatusSuppressed = a3;
    [(SBFluidSwitcherItemContainer *)self setContentViewBlocksTouches:[(SBFluidSwitcherItemContainer *)self contentViewBlocksTouches]];
    selectable = self->_selectable;

    [(SBFluidSwitcherItemContainer *)self setSelectable:selectable];
  }
}

- (void)setContentOverlay:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3 != 0;
  v7 = a3;
  [(SBFTouchPassThroughClippingView *)self setHitTestsSubviewsOutsideBounds:v6];
  [(SBHitTestExtendedView *)self->_pageView setHitTestsSubviewsOutsideBounds:[(SBFTouchPassThroughClippingView *)self hitTestsSubviewsOutsideBounds]];
  [(SBAppSwitcherPageView *)self->_pageView setOverlay:v7 animated:v4];
}

- (void)setBlurthroughPortalView:(id)a3
{
  v5 = a3;
  blurthroughPortalView = self->_blurthroughPortalView;
  if (blurthroughPortalView != v5)
  {
    v7 = v5;
    [(UIView *)blurthroughPortalView removeFromSuperview];
    objc_storeStrong(&self->_blurthroughPortalView, a3);
    [(UIView *)self->_contentContainerView addSubview:self->_blurthroughPortalView];
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setBlurthoughView:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  blurthroughView = self->_blurthroughView;
  if (blurthroughView != v5)
  {
    v17 = v5;
    if (!self->_blurthroughContainerView)
    {
      v7 = objc_alloc(MEMORY[0x277D75D18]);
      v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      blurthroughContainerView = self->_blurthroughContainerView;
      self->_blurthroughContainerView = v8;

      v10 = self->_blurthroughContainerView;
      v11 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v10 setBackgroundColor:v11];

      [(UIView *)self->_blurthroughContainerView setUserInteractionEnabled:0];
      [(UIView *)self->_blurthroughContainerView setClipsToBounds:1];
      topLeft = self->_contentCornerRadii.topLeft;
      topRight = self->_contentCornerRadii.topRight;
      v21 = *&self->_contentCornerRadii.bottomLeft;
      for (i = 8; i != 32; i += 8)
      {
        if (topLeft < *&v19[i])
        {
          topLeft = *&v19[i];
        }
      }

      [(UIView *)self->_blurthroughContainerView _setContinuousCornerRadius:topLeft];
      v14 = [(UIView *)self->_blurthroughContainerView layer];
      [v14 setMaskedCorners:{-[SBFluidSwitcherItemContainer maskedCorners](self, "maskedCorners")}];

      [(UIView *)self->_contentContainerView addSubview:self->_blurthroughContainerView];
      blurthroughView = self->_blurthroughView;
      v5 = v17;
    }

    if (blurthroughView)
    {
      [(UIView *)blurthroughView removeFromSuperview];
      v15 = self->_blurthroughView;
      self->_blurthroughView = 0;

      v5 = v17;
    }

    if (v5)
    {
      objc_storeStrong(&self->_blurthroughView, a3);
      [(UIView *)self->_blurthroughContainerView addSubview:self->_blurthroughView];
    }

    else
    {
      [(UIView *)self->_blurthroughContainerView removeFromSuperview];
      v16 = self->_blurthroughContainerView;
      self->_blurthroughContainerView = 0;
    }

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
    v5 = v18;
  }
}

- (void)setBlurred:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8
{
  v11 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v13 = a7;
  v14 = a8;
  if (self->_blurred != v11)
  {
    self->_blurred = v11;
    if (v13)
    {
      v13[2](v13);
    }

    v15 = [MEMORY[0x277CF0D38] factoryWithDuration:a4];
    if (self->_blurred)
    {
      if (!self->_blurView)
      {
        v20 = [(SBAppLayout *)self->_appLayout allItems];
        v21 = [v20 firstObject];
        v22 = [v21 bundleIdentifier];

        v23 = [(SBAppSwitcherPageView *)self->_pageView overlay];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = [(SBAppSwitcherPageView *)self->_pageView view];
        }

        v26 = v25;

        v27 = [SBApplicationBlurContentView alloc];
        [(SBAppSwitcherPageView *)self->_pageView frame];
        v28 = [SBApplicationBlurContentView initWithFrame:v27 bundleIdentifier:"initWithFrame:bundleIdentifier:targetViewToBlur:initialIconScale:" targetViewToBlur:v22 initialIconScale:v26];
        blurView = self->_blurView;
        self->_blurView = v28;

        [(SBApplicationBlurContentView *)self->_blurView setBlurDelay:a5];
        [(SBApplicationBlurContentView *)self->_blurView setClipsToBounds:1];
        v30 = [(SBApplicationBlurContentView *)self->_blurView layer];
        [v30 setAllowsGroupOpacity:1];

        [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView addSubview:self->_blurView];
        topLeft = self->_contentCornerRadii.topLeft;
        topRight = self->_contentCornerRadii.topRight;
        v44 = *&self->_contentCornerRadii.bottomLeft;
        for (i = 8; i != 32; i += 8)
        {
          if (topLeft < *&v42[i])
          {
            topLeft = *&v42[i];
          }
        }

        [(SBApplicationBlurContentView *)self->_blurView _setContinuousCornerRadius:topLeft];
        [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
        v33 = self->_blurView;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __93__SBFluidSwitcherItemContainer_setBlurred_duration_blurDelay_iconViewScale_began_completion___block_invoke;
        v40[3] = &unk_2783A98A0;
        v40[4] = self;
        v41 = v14;
        [(SBApplicationBlurContentView *)v33 generateAndAnimateToBlurredSnapshotWithAnimationFactory:v15 completion:v40];

        goto LABEL_20;
      }

      v16 = MEMORY[0x277CF0D38];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __93__SBFluidSwitcherItemContainer_setBlurred_duration_blurDelay_iconViewScale_began_completion___block_invoke_2;
      v39[3] = &unk_2783A8C18;
      v39[4] = self;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __93__SBFluidSwitcherItemContainer_setBlurred_duration_blurDelay_iconViewScale_began_completion___block_invoke_3;
      v37[3] = &unk_2783A9C98;
      v37[4] = self;
      v38 = v14;
      [v16 animateWithFactory:v15 options:4 actions:v39 completion:v37];
      v17 = v38;
    }

    else
    {
      v18 = [(SBAppSwitcherPageView *)self->_pageView overlay];
      [v18 setHidden:0];

      if (!self->_blurView)
      {
        if (v14)
        {
          v14[2](v14);
        }

        goto LABEL_20;
      }

      v19 = MEMORY[0x277CF0D38];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __93__SBFluidSwitcherItemContainer_setBlurred_duration_blurDelay_iconViewScale_began_completion___block_invoke_4;
      v36[3] = &unk_2783A8C18;
      v36[4] = self;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __93__SBFluidSwitcherItemContainer_setBlurred_duration_blurDelay_iconViewScale_began_completion___block_invoke_5;
      v34[3] = &unk_2783A9C98;
      v34[4] = self;
      v35 = v14;
      [v19 animateWithFactory:v15 options:4 actions:v36 completion:v34];
      v17 = v35;
    }

LABEL_20:
  }
}

uint64_t __93__SBFluidSwitcherItemContainer_setBlurred_duration_blurDelay_iconViewScale_began_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 672) == 1)
  {
    v3 = [*(v2 + 496) overlay];
    [v3 setHidden:1];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __93__SBFluidSwitcherItemContainer_setBlurred_duration_blurDelay_iconViewScale_began_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 672) == 1)
  {
    v3 = [*(v2 + 496) overlay];
    [v3 setHidden:1];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __93__SBFluidSwitcherItemContainer_setBlurred_duration_blurDelay_iconViewScale_began_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 672) & 1) == 0)
  {
    [*(v2 + 664) removeFromSuperview];
    v3 = *(a1 + 32);
    v4 = *(v3 + 664);
    *(v3 + 664) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)setUnobscuredMargin:(double)a3
{
  if (self->_unobscuredMargin != a3)
  {
    v5 = [(SBFluidSwitcherItemContainer *)self layer];
    v6 = [v5 shouldRasterize];

    if (v6)
    {
      if (self->_unobscuredMargin < a3)
      {
        v7 = a3 + a3;
        [(SBFluidSwitcherItemContainer *)self bounds];
        Width = CGRectGetWidth(v10);
        if (v7 < Width)
        {
          Width = v7;
        }

        self->_unobscuredMargin = Width;
        [(SBFluidSwitcherItemContainer *)self _updatePageViewContentClippingFrame];

        [(SBFluidSwitcherItemContainer *)self setNeedsDisplay];
      }
    }

    else
    {
      self->_unobscuredMargin = a3;

      [(SBFluidSwitcherItemContainer *)self _updatePageViewContentClippingFrame];
    }
  }
}

- (void)setClipsToUnobscuredMargin:(BOOL)a3
{
  if (self->_clipsToUnobscuredMargin != a3)
  {
    self->_clipsToUnobscuredMargin = a3;
    [(SBFluidSwitcherItemContainer *)self _updatePageViewContentViewClipping];

    [(SBFluidSwitcherItemContainer *)self _updatePageViewContentClippingFrame];
  }
}

- (void)_updatePageViewContentViewClipping
{
  pageView = self->_pageView;
  v4 = self->_clipsToUnobscuredMargin && !self->_highlightedFromDirectTouch && !self->_lifted && !self->_highlightedFromCursorHover && !self->_animatingPageViewScale;
  [(SBAppSwitcherPageView *)pageView setShouldClipContentView:v4];
}

- (void)setKillAxis:(unint64_t)a3
{
  if (self->_killAxis != a3)
  {
    self->_killAxis = a3;
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
    [(SBFluidSwitcherItemContainer *)self layoutIfNeeded];

    [(SBFluidSwitcherItemContainer *)self _resetKillProgressScrollState];
  }
}

- (void)setRubberbandable:(BOOL)a3
{
  if (self->_rubberbandable != a3)
  {
    self->_rubberbandable = a3;
    [(SBFluidSwitcherItemContainer *)self _updateKillScrollViewEnabled];
  }
}

- (void)setKillable:(BOOL)a3
{
  if (self->_killable != a3)
  {
    self->_killable = a3;
    [(SBFluidSwitcherItemContainer *)self _updateKillScrollViewEnabled];
    if (a3)
    {
      [(SBSwitcherGenieEffectView *)self->_genieEffectView invalidate];
    }

    else
    {
      [(SBFluidSwitcherItemContainer *)self _resetKillProgressScrollState];
    }

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (double)killingProgress
{
  [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView contentOffset];

  [(SBFluidSwitcherItemContainer *)self _killingProgressForContentOffset:?];
  return result;
}

- (double)effectivePageViewPresentationCornerRadius
{
  v2 = [(SBAppSwitcherPageView *)self->_pageView layer];
  v3 = [v2 presentationLayer];
  [v3 cornerRadius];
  v5 = v4;

  return v5;
}

- (CGRect)effectivePageViewPresentationFrame
{
  v3 = [(SBAppSwitcherPageView *)self->_pageView layer];
  v4 = v3;
  if (self->_hasPageViewBeenCommitted)
  {
    v5 = [v3 presentationLayer];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;
  hasPageViewBeenCommitted = self->_hasPageViewBeenCommitted;
  v8 = [(SBFluidSwitcherItemContainer *)self layer];
  v9 = v8;
  if (hasPageViewBeenCommitted)
  {
    v10 = [v8 presentationLayer];

    v9 = v10;
  }

  [v6 bounds];
  [v6 convertRect:v9 toLayer:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (double)_killingProgressForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  minimumTranslationForKillingContainer = self->_minimumTranslationForKillingContainer;
  [(SBFluidSwitcherItemContainer *)self contentPageViewScale];
  v8 = v7;
  [(SBFluidSwitcherItemContainer *)self _CGPointXOrYBasedOnKillAxis:x, y];
  v10 = v9;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1 && self->_killAxis == 1)
  {
    [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
    v10 = v11 - v10;
  }

  [(SBAppSwitcherPageView *)self->_pageView size];
  [(SBFluidSwitcherItemContainer *)self _CGSizeWidthOrHeightBasedOnKillAxis:?];
  return v10 / (minimumTranslationForKillingContainer / v8 + v12);
}

- (CGPoint)_contentOffsetForKillingProgress:(double)a3
{
  minimumTranslationForKillingContainer = self->_minimumTranslationForKillingContainer;
  [(SBFluidSwitcherItemContainer *)self contentPageViewScale];
  v7 = minimumTranslationForKillingContainer / v6;
  [(SBFluidSwitcherItemContainer *)self _CGSizeWidthOrHeightBasedOnKillAxis:self->_sizeForContainingSpace.width, self->_sizeForContainingSpace.height];
  v9 = (v7 + v8) * a3;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1 && self->_killAxis == 1)
  {
    [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
    v9 = v10 - v9;
  }

  [(SBFluidSwitcherItemContainer *)self _CGPointFromScalarBasedOnKillAxis:v9];
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setFocusable:(BOOL)a3
{
  if (self->_focusable != a3)
  {
    if (self->_focusable)
    {
      [(SBFluidSwitcherItemContainer *)self resignFirstResponder];
    }

    self->_focusable = a3;
  }
}

- (void)setDraggable:(BOOL)a3
{
  if (self->_draggable != a3)
  {
    self->_draggable = a3;
  }
}

- (BOOL)contentViewHasSceneOverlay
{
  v2 = [(SBFluidSwitcherItemContainer *)self contentView];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 hasSceneOverlayView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    if (a3)
    {
      [(SBFluidSwitcherItemContainer *)self _resetKillProgressScrollState];
      [(SBFluidSwitcherItemContainer *)self _updateShadowVisibility];
      objc_initWeak(&location, self);
      v5 = *MEMORY[0x277D76620];
      v6 = MEMORY[0x277D85DD0];
      v7 = 3221225472;
      v8 = __42__SBFluidSwitcherItemContainer_setActive___block_invoke;
      v9 = &unk_2783A8C68;
      objc_copyWeak(&v10, &location);
      [v5 sb_performBlockAfterCATransactionSynchronizedCommit:&v6];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    [(SBAppSwitcherPageView *)self->_pageView setActive:v3, v6, v7, v8, v9];
  }
}

void __42__SBFluidSwitcherItemContainer_setActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[712] = 1;
  }
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    v4 = a3;
    self->_visible = a3;
    if (a3)
    {
      [(SBFluidSwitcherItemContainer *)self _resetKillProgressScrollState];
      self->_sentKillRequest = 0;
    }

    else
    {
      [(SBFluidSwitcherItemContainer *)self setHighlightedFromDirectTouch:0];
    }

    pageView = self->_pageView;

    [(SBAppSwitcherPageView *)pageView setVisible:v4];
  }
}

- (void)setPointerInteractionEnabled:(BOOL)a3
{
  if (self->_pointerInteractionEnabled != a3)
  {
    self->_pointerInteractionEnabled = a3;
    [(SBFluidSwitcherItemContainer *)self _updateTransformForCurrentHighlight];
  }
}

- (void)setPointerInteractionHitTestPadding:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_pointerInteractionHitTestPadding = a3;
    pageView = self->_pageView;

    [(SBAppSwitcherPageView *)pageView setPointerInteractionHitTestPadding:a3];
  }
}

- (void)setMinimumTranslationForKillingContainer:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_minimumTranslationForKillingContainer = a3;

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (void)setShouldScaleOverlayToFillBounds:(BOOL)a3
{
  if (self->_shouldScaleOverlayToFillBounds != a3)
  {
    self->_shouldScaleOverlayToFillBounds = a3;
    [(SBAppSwitcherPageView *)self->_pageView setShouldScaleOverlayToFillBounds:?];
  }
}

- (BOOL)isDeceleratingTowardsKillZone
{
  v3 = [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView isDecelerating];
  if (v3)
  {
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView _pageDecelerationTarget];
    v5 = v4;
    v7 = v6;
    [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
    LOBYTE(v3) = v7 != v9 || v5 != v8;
  }

  return v3;
}

- (void)setPageViewAnchorPoint:(CGPoint)a3
{
  p_pageViewAnchorPoint = &self->_pageViewAnchorPoint;
  if (a3.x != self->_pageViewAnchorPoint.x || a3.y != self->_pageViewAnchorPoint.y)
  {
    p_pageViewAnchorPoint->x = a3.x;
    self->_pageViewAnchorPoint.y = a3.y;
    v6 = [(SBAppSwitcherPageView *)self->_pageView layer];
    [v6 setAnchorPoint:{p_pageViewAnchorPoint->x, p_pageViewAnchorPoint->y}];

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (void)setPageViewOffset:(CGPoint)a3
{
  if (a3.x != self->_pageViewOffset.x || a3.y != self->_pageViewOffset.y)
  {
    self->_pageViewOffset = a3;
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (void)setPositionAnimationsBeginFromModelState:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFluidSwitcherItemContainer *)self layer];
  [v4 setPositionAnimationsBeginFromModelState:v3];
}

- (BOOL)positionAnimationsBeginFromModelState
{
  v2 = [(SBFluidSwitcherItemContainer *)self layer];
  v3 = [v2 positionAnimationsBeginFromModelState];

  return v3;
}

- (void)setTransformAnimationsAreLegacyCounterRotations:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFluidSwitcherItemContainer *)self layer];
  [v4 setTransformAnimationsAreLegacyCounterRotations:v3];
}

- (BOOL)transformAnimationsAreLegacyCounterRotations
{
  v2 = [(SBFluidSwitcherItemContainer *)self layer];
  v3 = [v2 transformAnimationsAreLegacyCounterRotations];

  return v3;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v38 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v36.receiver = self;
  v36.super_class = SBFluidSwitcherItemContainer;
  v8 = [(SBFluidSwitcherItemContainer *)&v36 pointInside:v7 withEvent:x, y];
  [(SBFluidSwitcherItemContainer *)self bounds];
  if ((v8 & 1) != 0 || (v13 = v9, v14 = v10, v15 = v11, v16 = v12, v41.origin.x = v9 + -5.0, v41.origin.y = v10 + *MEMORY[0x277D768C8], v41.size.width = v11 + 10.0, v41.size.height = v12 - (*MEMORY[0x277D768C8] + *(MEMORY[0x277D768C8] + 16)), v39.x = x, v39.y = y, CGRectContainsPoint(v41, v39)))
  {
LABEL_17:
    v30 = 1;
  }

  else
  {
    if ([(SBFTouchPassThroughClippingView *)self hitTestsSubviewsOutsideBounds])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = [(SBFluidSwitcherItemContainer *)self subviews];
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v33;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v32 + 1) + 8 * i);
            [(SBFluidSwitcherItemContainer *)self convertPoint:v22 toView:x, y];
            if ([v22 pointInside:v7 withEvent:?])
            {

              goto LABEL_17;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }
    }

    [(SBFluidSwitcherItemContainer *)self slideOverMargin];
    if (v23 <= 0.0)
    {
      v30 = 0;
    }

    else
    {
      UIEdgeInsetsMakeWithEdges();
      v25 = v14 + v24;
      v28 = v15 - (v26 + v27);
      v42.size.height = v16 - (v24 + v29);
      v42.origin.x = v13 + v26;
      v42.origin.y = v25;
      v42.size.width = v28;
      v40.x = x;
      v40.y = y;
      v30 = CGRectContainsPoint(v42, v40);
    }
  }

  return v30;
}

- (void)_updateFooterVisibility
{
  v3 = ![(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:8]&& self->_drawsFooter;
  iconAndLabelFooter = self->_iconAndLabelFooter;
  if (v3 || !iconAndLabelFooter)
  {
    if (v3 && iconAndLabelFooter == 0)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __55__SBFluidSwitcherItemContainer__updateFooterVisibility__block_invoke;
      v7[3] = &unk_2783A8C18;
      v7[4] = self;
      v6 = MEMORY[0x223D6F7F0](v7);
      if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
      {
        [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v6];
      }

      else
      {
        v6[2](v6);
      }
    }
  }

  else
  {
    [(SBFluidSwitcherItemContainerFooterView *)iconAndLabelFooter removeFromSuperview];
    v5 = self->_iconAndLabelFooter;
    self->_iconAndLabelFooter = 0;
  }
}

uint64_t __55__SBFluidSwitcherItemContainer__updateFooterVisibility__block_invoke(uint64_t a1)
{
  v2 = [SBFluidSwitcherItemContainerFooterView alloc];
  v3 = [(SBFluidSwitcherItemContainerFooterView *)v2 initWithFrame:*(a1 + 32) delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 512);
  *(v4 + 512) = v3;

  [*(*(a1 + 32) + 512) setIconAlignment:*(*(a1 + 32) + 824)];
  [*(*(a1 + 32) + 512) setFooterStyle:*(*(a1 + 32) + 840)];
  [*(*(a1 + 32) + 512) setUniqueIconsOnly:*(*(a1 + 32) + 754)];
  [*(*(a1 + 32) + 512) setIconHitTestOutset:*(*(a1 + 32) + 816)];
  v6 = [*(*(a1 + 32) + 512) layer];
  [v6 setAnchorPoint:{0.5, 0.0}];

  [*(a1 + 32) insertSubview:*(*(a1 + 32) + 512) atIndex:0];
  [*(a1 + 32) _updateFooterAnimated:0];
  [*(a1 + 32) setNeedsLayout];
  v7 = *(a1 + 32);

  return [v7 layoutIfNeeded];
}

- (void)_updateFooterAnimated:(BOOL)a3
{
  v3 = a3;
  [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter setAlpha:self->_titleAndIconOpacity];
  [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter setIconAlpha:self->_iconOpacity];
  [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter setTextAlpha:self->_titleOpacity];
  iconAndLabelFooter = self->_iconAndLabelFooter;
  titleItems = self->_titleItems;

  [(SBFluidSwitcherItemContainerFooterView *)iconAndLabelFooter setTitleItems:titleItems animated:v3];
}

- (CGRect)_frameForScrollViewWithFullPresentedSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  SBRectWithSize();
  [(SBFluidSwitcherItemContainer *)self _CGSizeWidthOrHeightBasedOnKillAxis:v6, v7];
  [(SBFluidSwitcherItemContainer *)self _CGSizeFromLengthBasedOnKillAxis:v8 * 0.5];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1 || self->_killAxis != 1)
  {
    [(SBFluidSwitcherItemContainer *)self _CGSizeWidthOrHeightBasedOnKillAxis:width, height];
    [(SBFluidSwitcherItemContainer *)self _CGPointFromScalarBasedOnKillAxis:v9 * 0.5];
  }

  SBScreenScale();

  BSRectRoundForScale();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_frameForPageView
{
  v3 = [(SBFluidSwitcherItemContainer *)self delegate];
  [v3 frameForPageViewOfContainer:self fullyPresented:1];
  [(SBFluidSwitcherItemContainer *)self _frameForPageViewWithFullPresentedSize:v4, v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_frameForPageViewWithFullPresentedSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SBFluidSwitcherItemContainer *)self delegate];
  [v6 frameForPageViewOfContainer:self fullyPresented:0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1 && self->_killAxis == 1)
  {
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView contentSize];
    v16 = v15;
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView bounds];
    v18 = v8 + v16 - v17;
  }

  else
  {
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView bounds];
    [(SBFluidSwitcherItemContainer *)self _CGSizeWidthOrHeightBasedOnKillAxis:v19, v20];
    v22 = v21;
    [(SBFluidSwitcherItemContainer *)self _CGSizeWidthOrHeightBasedOnKillAxis:width, height];
    [(SBFluidSwitcherItemContainer *)self _CGPointFromScalarBasedOnKillAxis:v22 - v23];
    v18 = v24;
    v10 = v25;
  }

  v26 = v18;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_draggable && ([(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView isDecelerating]& 1) == 0)
  {
    v9 = [(SBFluidSwitcherItemContainer *)self appLayout];
    v10 = [v9 itemForLayoutRole:1];
    v11 = [v10 bundleIdentifier];
    v12 = objc_alloc_init(MEMORY[0x277CCAA88]);
    [v12 registerDataRepresentationForTypeIdentifier:*MEMORY[0x277D66E40] visibility:3 loadHandler:&__block_literal_global_155];
    if (self->_supportsSwitcherDragAndDrop)
    {
      v13 = 11;
    }

    else
    {
      v13 = 12;
    }

    v14 = [objc_alloc(MEMORY[0x277D66998]) initWithUniqueIdentifier:v11 withLaunchActions:0 startLocation:v13];
    v15 = [v10 uniqueIdentifier];
    [v14 setDraggedSceneIdentifier:v15];

    [v14 setSourceLocal:1];
    [v14 setLaunchURL:0];
    [v14 setUserActivity:0];
    v16 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v12];
    [v16 sbh_setAppDragLocalContext:v14];
    v18[0] = v16;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

uint64_t __73__SBFluidSwitcherItemContainer_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a2;
  v5 = [v3 data];
  (a2)[2](v4, v5, 0);

  return 0;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v6 = a4;
  v7 = [(UIView *)self _sbWindowScene];
  v32 = [v7 homeScreenController];
  v8 = [v32 iconManager];
  v9 = [v8 iconModel];
  v30 = [(SBFluidSwitcherItemContainer *)self appLayout];
  v10 = [v30 itemForLayoutRole:1];
  v11 = [v10 bundleIdentifier];
  v31 = v9;
  v12 = [v9 leafIconForIdentifier:v11];
  v13 = [objc_alloc(MEMORY[0x277D663F0]) initWithConfigurationOptions:6];
  [v13 setLocation:*MEMORY[0x277D666D0]];
  v14 = [v8 listLayoutProvider];
  [v13 setListLayoutProvider:v14];

  [v13 setDelegate:v8];
  [v13 setIcon:v12];
  [v13 setEnabled:0];
  pageView = self->_pageView;
  if (pageView)
  {
    [(SBAppSwitcherPageView *)pageView transform];
    v16 = *&v35;
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v16 = 0.0;
  }

  v17 = [[SBAppPlatterDragPreview alloc] initWithReferenceIconView:v13 sourceView:self->_pageView sourceViewScale:v16 * self->_contentPageViewScale];
  [(SBAppPlatterDragPreview *)v17 setMode:2];
  [(SBFluidSwitcherItemContainer *)self bounds];
  [(SBAppPlatterDragPreview *)v17 setAnchorPoint:self->_highlightTapDownLocation.x / v18 + 0.0, self->_highlightTapDownLocation.y / v19 + 0.0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__SBFluidSwitcherItemContainer_dragInteraction_previewForLiftingItem_session___block_invoke;
  v33[3] = &unk_2783B5AF0;
  v34 = v8;
  v20 = v8;
  [(SBAppPlatterDragPreview *)v17 setCleanUpHandler:v33];
  v21 = [v20 iconDragManager];
  [v21 addPlatterViewToMedusaDragOffscreenWindow:v17 forWindowScene:v7];

  [(SBFluidSwitcherItemContainer *)self bounds];
  UIRectGetCenter();
  v23 = v22;
  v25 = v24;
  v26 = [(SBAppPlatterDragPreview *)v17 window];
  [(SBFluidSwitcherItemContainer *)self convertPoint:v26 toView:v23, v25];
  [(SBAppPlatterDragPreview *)v17 setCenter:?];

  [(SBAppPlatterDragPreview *)v17 setDragState:1];
  [(SBAppPlatterDragPreview *)v17 setAlpha:0.0];
  [(SBAppPlatterDragPreview *)v17 layoutIfNeeded];
  v27 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v17];
  [v27 set_springboardPlatterStyle:1];
  v28 = [v6 sbh_appDragLocalContext];

  [v28 setPortaledPreview:v17];

  return v27;
}

void __78__SBFluidSwitcherItemContainer_dragInteraction_previewForLiftingItem_session___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconDragManager];
  [v4 removePlatterViewFromMedusaDragOffscreenWindow:v3];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v11 = a3;
  v5 = [(SBFluidSwitcherItemContainer *)self delegate];
  v6 = [v11 nextFocusedItem];

  if (v6 == self)
  {
    [v5 container:self didBecomeFocused:1];
    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__returnKeyPressed_];
    returnKeyGestureRecognizer = self->_returnKeyGestureRecognizer;
    self->_returnKeyGestureRecognizer = v9;

    [(UITapGestureRecognizer *)self->_returnKeyGestureRecognizer setAllowedPressTypes:&unk_28336E2F8];
    [(SBFluidSwitcherItemContainer *)self addGestureRecognizer:self->_returnKeyGestureRecognizer];
  }

  else
  {
    v7 = [v11 previouslyFocusedItem];

    if (v7 == self)
    {
      [v5 container:self didBecomeFocused:0];
      [(SBFluidSwitcherItemContainer *)self removeGestureRecognizer:self->_returnKeyGestureRecognizer];
      v8 = self->_returnKeyGestureRecognizer;
      self->_returnKeyGestureRecognizer = 0;
    }
  }
}

- (void)_returnKeyPressed:(id)a3
{
  v5 = a3;
  if ([(SBFluidSwitcherItemContainer *)self isFocusable]&& [(SBFluidSwitcherItemContainer *)self isSelectable])
  {
    v4 = [(SBFluidSwitcherItemContainer *)self delegate];
    [v4 didSelectContainer:self modifierFlags:{objc_msgSend(v5, "modifierFlags")}];
  }
}

- (double)_CGSizeWidthOrHeightBasedOnKillAxis:(CGSize)a3
{
  if (!self->_killAxis)
  {
    a3.width = a3.height;
  }

  return a3.width;
}

- (double)_CGPointXOrYBasedOnKillAxis:(CGPoint)a3
{
  if (!self->_killAxis)
  {
    a3.x = a3.y;
  }

  return a3.x;
}

- (CGSize)_CGSizeFromLengthBasedOnKillAxis:(double)a3
{
  killAxis = self->_killAxis;
  v4 = 0.0;
  if (killAxis)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0.0;
  }

  if (!killAxis)
  {
    v4 = a3;
  }

  v6 = v5;
  result.height = v4;
  result.width = v6;
  return result;
}

- (CGPoint)_CGPointFromScalarBasedOnKillAxis:(double)a3
{
  killAxis = self->_killAxis;
  v4 = 0.0;
  if (killAxis)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0.0;
  }

  if (!killAxis)
  {
    v4 = a3;
  }

  v6 = v5;
  result.y = v4;
  result.x = v6;
  return result;
}

- (double)_inverseScaleTransformFactor
{
  [(SBFluidSwitcherItemContainer *)self contentPageViewScale];
  IsZero = BSFloatIsZero();
  result = 1.0;
  if ((IsZero & 1) == 0)
  {
    [(SBFluidSwitcherItemContainer *)self contentPageViewScale];
    return 1.0 / v5;
  }

  return result;
}

- (id)_springLoadingEffectTargetView
{
  v3 = [(SBAppSwitcherPageView *)self->_pageView overlay];
  if (v3)
  {
    [(SBAppSwitcherPageView *)self->_pageView overlay];
  }

  else
  {
    [(SBFluidSwitcherItemContainer *)self contentView];
  }
  v4 = ;

  return v4;
}

- (void)_handlePageViewTap:(id)a3
{
  v5 = a3;
  if ([(SBFluidSwitcherItemContainer *)self isSelectable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didSelectContainer:self modifierFlags:{objc_msgSend(v5, "modifierFlags")}];
  }
}

- (void)_handleSelectionHighlightGesture:(id)a3
{
  v9 = a3;
  if ([v9 state] == 1)
  {
    v4 = [(SBFluidSwitcherItemContainer *)self delegate];
    v5 = [v4 canSelectContainer:self numberOfTaps:1];

    [v9 locationInView:self];
    self->_highlightTapDownLocation.x = v6;
    self->_highlightTapDownLocation.y = v7;
    goto LABEL_9;
  }

  if ([v9 state] != 3 && objc_msgSend(v9, "state") != 4)
  {
    if ([v9 state] == 2)
    {
      v5 = [(SBFluidSwitcherItemContainer *)self isHighlightedFromDirectTouch];
      goto LABEL_9;
    }

    [v9 state];
  }

  v5 = 0;
LABEL_9:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containerSelectionStateChanged:self toState:objc_msgSend(v9 hover:"state") pencilHover:{0, 0}];

  [(SBFluidSwitcherItemContainer *)self setHighlightedFromDirectTouch:v5];
}

- (void)setHighlightedFromDirectTouch:(BOOL)a3
{
  if (self->_highlightedFromDirectTouch != a3)
  {
    self->_highlightedFromDirectTouch = a3;
    [(SBFluidSwitcherItemContainer *)self _updateTransformForCurrentHighlight];
  }
}

- (void)setHighlightedFromCursorHover:(BOOL)a3
{
  if (self->_highlightedFromCursorHover != a3)
  {
    self->_highlightedFromCursorHover = a3;
    [(SBFluidSwitcherItemContainer *)self _updateTransformForCurrentHighlight];
  }
}

- (void)setLifted:(BOOL)a3
{
  if (self->_lifted != a3)
  {
    self->_lifted = a3;
    [(SBFluidSwitcherItemContainer *)self _updateTransformForCurrentHighlight];
  }
}

- (void)_updateTransformForCurrentHighlight
{
  v3 = 1.0;
  if (self->_suppressesHighlightEffect)
  {
    goto LABEL_2;
  }

  if (self->_highlightedFromCursorHover && self->_pointerInteractionEnabled && ([(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView isDragging]& 1) == 0)
  {
    [(SBFluidSwitcherItemContainer *)self _scaleForHighlightFromCursorHover];
    v3 = v8;
    v4 = 1;
  }

  else
  {
    if (!self->_highlightedFromDirectTouch && !self->_lifted)
    {
LABEL_2:
      v4 = 0;
      goto LABEL_9;
    }

    [(SBFluidSwitcherItemContainer *)self _scaleForHighlightFromDirectTouch];
    v3 = v5;
    v4 = 2;
  }

LABEL_9:
  if (v4 != [(SBAppSwitcherPageView *)self->_pageView highlightType])
  {
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, v3, v3);
    self->_animatingPageViewScale = 1;
    [(SBFluidSwitcherItemContainer *)self _updatePageViewContentViewClipping];
    v6 = [(SBAppSwitcherSettings *)self->_settings animationSettings];
    v7 = [v6 appSelectionSquishSettings];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__SBFluidSwitcherItemContainer__updateTransformForCurrentHighlight__block_invoke;
    v10[3] = &unk_2783AE818;
    v10[4] = self;
    *&v10[5] = v3;
    v11 = v13;
    v12 = v4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__SBFluidSwitcherItemContainer__updateTransformForCurrentHighlight__block_invoke_2;
    v9[3] = &unk_2783A9158;
    v9[4] = self;
    *&v9[5] = v3;
    [MEMORY[0x277D75D18] sb_animateWithSettings:v7 mode:3 animations:v10 completion:v9];
  }
}

uint64_t __67__SBFluidSwitcherItemContainer__updateTransformForCurrentHighlight__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
  [WeakRetained containerWillBeginAnimatingHighlight:*(a1 + 32) scale:*(*(a1 + 32) + 771) isTracking:*(a1 + 40)];

  v3 = *(*(a1 + 32) + 496);
  v4 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v4;
  v6[2] = *(a1 + 80);
  [v3 setTransform:v6];
  return [*(*(a1 + 32) + 496) setHighlightType:*(a1 + 96)];
}

void __67__SBFluidSwitcherItemContainer__updateTransformForCurrentHighlight__block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
  [WeakRetained containerDidEndAnimatingHighlight:*(a1 + 32) scale:*(a1 + 40)];

  if ((a3 & 1) == 0)
  {
    *(*(a1 + 32) + 656) = 0;
    v6 = *(a1 + 32);

    [v6 _updatePageViewContentViewClipping];
  }
}

- (double)_scaleForHighlightFromDirectTouch
{
  if (SBReduceMotion())
  {
    return 1.0;
  }

  if ([(SBFluidSwitcherItemContainer *)self shadowStyle]== 2)
  {
    medusaSettings = self->_medusaSettings;

    [(SBMedusaSettings *)medusaSettings floatingAppCardScaleWhileTouched];
  }

  else
  {
    settings = self->_settings;

    [(SBAppSwitcherSettings *)settings switcherCardScaleWhileTouched];
  }

  return result;
}

- (double)_scaleForHighlightFromCursorHover
{
  if (SBReduceMotion())
  {
    return 1.0;
  }

  if ([(SBFluidSwitcherItemContainer *)self shadowStyle]== 2)
  {
    medusaSettings = self->_medusaSettings;

    [(SBMedusaSettings *)medusaSettings floatingAppCardScaleWhileCursorHovered];
  }

  else
  {
    settings = self->_settings;

    [(SBAppSwitcherSettings *)settings switcherCardScaleWhileCursorHovered];
  }

  return result;
}

- (void)setFooterStyle:(unint64_t)a3
{
  if (self->_footerStyle != a3)
  {
    self->_footerStyle = a3;
    [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter setFooterStyle:?];

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (void)itemContainerFooterView:(id)a3 didSelectTitleItem:(id)a4
{
  v5 = [(NSArray *)self->_titleItems indexOfObject:a4];
  switch(v5)
  {
    case 0uLL:
      goto LABEL_4;
    case 1uLL:
      v6 = &SBLayoutRoleSide;
      goto LABEL_6;
    case 0x7FFFFFFFFFFFFFFFuLL:
LABEL_4:
      v6 = &SBLayoutRolePrimary;
LABEL_6:
      v7 = *v6;
      goto LABEL_8;
  }

  v7 = v5 + 3;
LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained itemContainer:self didSelectTitleForRole:v7];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  if (self->_tapGestureRecognizer != a3)
  {
    return 0;
  }

  iconAndLabelFooter = self->_iconAndLabelFooter;
  v6 = a4;
  v7 = [(SBFluidSwitcherItemContainerFooterView *)iconAndLabelFooter tapGestureRecognizer];
  v4 = v7 == v6;

  return v4;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(SBAppSwitcherPageView *)self->_pageView blocksTouches])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([(UILongPressGestureRecognizer *)self->_pressDownGestureRecognizer state])
    {
      v6 = [(UILongPressGestureRecognizer *)self->_pressDownGestureRecognizer state]!= 5;
    }

    else
    {
      v6 = 0;
    }

    tapGestureRecognizer = self->_tapGestureRecognizer;
    if (tapGestureRecognizer == v4 && !v6)
    {
      v7 = 0;
      goto LABEL_21;
    }

    if (tapGestureRecognizer != v4)
    {
      doubleTapGestureRecognizer = v4;
      if (self->_doubleTapGestureRecognizer == v4)
      {
        goto LABEL_17;
      }

      if (self->_pressDownGestureRecognizer != v4)
      {
        doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
        if (self->_selectionHighlightGestureRecognizer != v4)
        {
          v7 = 1;
LABEL_21:

          goto LABEL_22;
        }

LABEL_17:
        if (doubleTapGestureRecognizer == v4)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        v7 = [WeakRetained canSelectContainer:self numberOfTaps:v11];
        goto LABEL_21;
      }
    }

    doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_22:

  return v7;
}

- (void)gestureRecognizerTransitionedToFailed:(id)a3
{
  if (self->_tapGestureRecognizer == a3)
  {
    [(UILongPressGestureRecognizer *)self->_selectionHighlightGestureRecognizer setEnabled:0];
    selectionHighlightGestureRecognizer = self->_selectionHighlightGestureRecognizer;

    [(UILongPressGestureRecognizer *)selectionHighlightGestureRecognizer setEnabled:1];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if (self->_killScrollView == v4)
  {
    v7 = v4;
    v5 = [(SBFluidSwitcherTouchPassThroughScrollView *)v4 window];

    v4 = v7;
    if (v5)
    {
      [(SBSwitcherGenieEffectView *)self->_genieEffectView invalidate];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(SBFluidSwitcherItemContainer *)self killingProgress];
      if (BSFloatGreaterThanOrEqualToFloat() && self->_killable && !self->_sentKillRequest)
      {
        self->_sentKillRequest = 1;
        [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
        [WeakRetained killContainer:self forReason:1];
      }

      else
      {
        [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
      }

      [MEMORY[0x277CD9FF0] setLowLatency:0];
      [(SBFluidSwitcherItemContainer *)self setHighlightedFromDirectTouch:[(SBFluidSwitcherTouchPassThroughScrollView *)v7 isTracking]];

      v4 = v7;
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if (self->_killScrollView == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained containerWillBeginSwipingToKill:self];

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];

    [(SBFluidSwitcherItemContainer *)self layoutIfNeeded];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (self->_killScrollView == a3)
  {
    [a3 contentOffset];
    if (!self->_killAxis)
    {
      v8 = v9;
    }

    if (v8 >= 62.0)
    {
      x = a5->x;
      y = a5->y;
    }

    else
    {
      [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
      a5->x = x;
      a5->y = y;
    }

    [(SBFluidSwitcherItemContainer *)self _killingProgressForContentOffset:x, y];
    if (v12 >= 1.0)
    {
      v13 = a5->x;
      v14 = a5->y;
    }

    else
    {
      [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
      a5->x = v13;
      a5->y = v14;
    }

    [(SBFluidSwitcherItemContainer *)self _killingProgressForContentOffset:v13, v14];
    self->_killProgressForCurrentDecelerationTarget = v15;

    [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (self->_killScrollView == a3)
  {
    [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  if (self->_killScrollView == a3)
  {
    [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (self->_killScrollView == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained containerDidEndSwipingToKill:self];

    [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
  }
}

- (void)_notifyDelegateScrollViewDidChange
{
  if (self->_sentKillRequest || ![(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView isDragging])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView isDecelerating]^ 1;
  }

  [(SBFluidSwitcherItemContainer *)self killingProgress];
  [(SBFluidSwitcherItemContainer *)self _contentOffsetForKillingProgress:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(SBFluidSwitcherItemContainer *)self killingProgress];
  [WeakRetained scrollViewKillingProgressUpdated:v3 translation:self isDragging:? decelerationTargetProgress:? forContainer:?];
}

- (BOOL)_scrollViewShouldPanGestureTryToBegin:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 panGestureRecognizer];
  [v5 translationInView:v4];
  v7 = v6;
  v9 = v8;

  killAxis = self->_killAxis;
  if (killAxis)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v13 = 0;
  if ((BSFloatIsZero() & 1) == 0)
  {
    v12 = killAxis ? v9 : v7;
    if (fabs(v12 / v11) <= 0.5)
    {
      v13 = 1;
    }
  }

  v14 = SBLogAppSwitcher();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v13)
    {
      v15 = @"Allow";
    }

    else
    {
      v15 = @"Don't allow";
    }

    v23.x = v7;
    v23.y = v9;
    v16 = NSStringFromPoint(v23);
    v18 = 138543618;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ panning in scroll view [translation: %{public}@", &v18, 0x16u);
  }

  return v13;
}

- (void)_handleHoverGesture:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _activeEventOfType:11];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 allTouches];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v13 + 1) + 8 * i) type] == 2)
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = [v4 state];
  if ((v10 - 3) < 2)
  {
    v11 = 0;
LABEL_15:
    [(SBFluidSwitcherItemContainer *)self setHighlightedFromCursorHover:v11];
    goto LABEL_16;
  }

  if (v10 == 1)
  {
    v11 = 1;
    goto LABEL_15;
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containerSelectionStateChanged:self toState:objc_msgSend(v4 hover:"state") pencilHover:{1, v7}];
}

- (id)initialCornerRadiusConfiguration
{
  v2 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithTopLeft:self->_contentCornerRadii.topLeft bottomLeft:self->_contentCornerRadii.bottomLeft bottomRight:self->_contentCornerRadii.bottomRight topRight:self->_contentCornerRadii.topRight];

  return v2;
}

- (SBDragPreviewShadowParameters)initialDiffuseShadowParameters
{
  v3 = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  v4 = [v3 _diffuseShadowView];
  v5 = [v4 layer];

  if (v5)
  {
    [v5 shadowOpacity];
    [v5 shadowRadius];
    [v5 shadowOffset];
  }

  return result;
}

- (SBDragPreviewShadowParameters)initialRimShadowParameters
{
  v3 = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  v4 = [v3 _rimShadowView];
  v5 = [v4 layer];

  if (v5)
  {
    [v5 shadowOpacity];
    [v5 shadowRadius];
    [v5 shadowOffset];
  }

  return result;
}

- (id)initialDiffuseShadowFilters
{
  v2 = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  v3 = [v2 _diffuseShadowView];
  v4 = [v3 layer];
  v5 = [v4 filters];

  return v5;
}

- (id)initialRimShadowFilters
{
  v2 = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  v3 = [v2 _rimShadowView];
  v4 = [v3 layer];
  v5 = [v4 filters];

  return v5;
}

- (void)setDragging:(BOOL)a3
{
  if (self->_dragging != a3)
  {
    self->_dragging = a3;
    [(SBFluidSwitcherItemContainer *)self _updateShadowVisibility];
  }
}

- (void)_updateForPointerHoveringOverEdge:(unint64_t)a3
{
  if (self->_hoveringOverEdge != a3)
  {
    self->_hoveringOverEdge = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = WeakRetained;
    if (self->_hoveringOverEdge)
    {
      [WeakRetained pointerBeganResizingItemContainer:self];
    }

    else
    {
      [WeakRetained pointerEndedResizingItemContainer:self];
    }
  }
}

- (BOOL)appSwitcherPageView:(id)a3 shouldBeginPointerInteractionAtLocation:(CGPoint)a4 window:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained hitTestedToTopAffordance:v8 window:self ofItemContainer:{x, y}] & 1) != 0 || (objc_msgSend(WeakRetained, "hitTestedToFloatingElement:window:ofItemContainer:", v8, self, x, y) & 1) != 0 || (objc_msgSend(WeakRetained, "hitTestedToSplitViewHandle:window:", v8, x, y) & 1) != 0 || (objc_msgSend(WeakRetained, "hitTestedToHomeAffordance:window:ofItemContainer:", v8, self, x, y))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [WeakRetained hitTestedToSlideOverTongue:v8 window:{x, y}] ^ 1;
  }

  return v10;
}

- (void)genieEffectViewDidInvalidate:(id)a3
{
  [(SBFluidSwitcherItemContainer *)self _setWantsOverlayPortalView:0];
  genieEffectView = self->_genieEffectView;
  v5 = MEMORY[0x277CBEBF8];

  [(SBSwitcherGenieEffectView *)genieEffectView setPortaledContentViews:v5];
}

- (void)_setWantsOverlayPortalView:(BOOL)a3
{
  if (self->_wantsOverlayPortal != a3 || ([(SBFluidSwitcherItemContainer *)self overlayPortalView], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_wantsOverlayPortal = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained itemContainerDidUpdateWantsOverlayPortal:self];
  }
}

- (void)setOverlayPortalView:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_overlayPortalView != v5)
  {
    objc_storeStrong(&self->_overlayPortalView, a3);
    overlayPortalView = self->_overlayPortalView;
    genieEffectView = self->_genieEffectView;
    if (overlayPortalView)
    {
      v9[0] = overlayPortalView;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [(SBSwitcherGenieEffectView *)genieEffectView setPortaledContentViews:v8];
    }

    else
    {
      [(SBSwitcherGenieEffectView *)genieEffectView setPortaledContentViews:MEMORY[0x277CBEBF8]];
    }
  }
}

- (UIRectCornerRadii)contentCornerRadii
{
  topLeft = self->_contentCornerRadii.topLeft;
  bottomLeft = self->_contentCornerRadii.bottomLeft;
  bottomRight = self->_contentCornerRadii.bottomRight;
  topRight = self->_contentCornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

- (CGSize)sizeForContainingSpace
{
  width = self->_sizeForContainingSpace.width;
  height = self->_sizeForContainingSpace.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes
{
  leadingAlpha = self->_wallpaperGradientAttributes.leadingAlpha;
  trailingAlpha = self->_wallpaperGradientAttributes.trailingAlpha;
  result.trailingAlpha = trailingAlpha;
  result.leadingAlpha = leadingAlpha;
  return result;
}

- (CGPoint)pageViewAnchorPoint
{
  x = self->_pageViewAnchorPoint.x;
  y = self->_pageViewAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pageViewOffset
{
  x = self->_pageViewOffset.x;
  y = self->_pageViewOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)meshWarpCollapsedTargetPosition
{
  x = self->_meshWarpCollapsedTargetPosition.x;
  y = self->_meshWarpCollapsedTargetPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)meshWarpExpandedSourcePosition
{
  x = self->_meshWarpExpandedSourcePosition.x;
  y = self->_meshWarpExpandedSourcePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithFrame:(uint64_t)a1 appLayout:(uint64_t)a2 delegate:active:windowScene:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherItemContainer.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

@end