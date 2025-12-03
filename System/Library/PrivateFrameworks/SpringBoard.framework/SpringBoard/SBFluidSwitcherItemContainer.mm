@interface SBFluidSwitcherItemContainer
+ (double)preferredRestingVisibleMarginForBounds:(CGRect)bounds;
- (BOOL)_scrollViewShouldPanGestureTryToBegin:(id)begin;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)appSwitcherPageView:(id)view shouldBeginPointerInteractionAtLocation:(CGPoint)location window:(id)window;
- (BOOL)contentViewHasSceneOverlay;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isDeceleratingTowardsKillZone;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)positionAnimationsBeginFromModelState;
- (BOOL)transformAnimationsAreLegacyCounterRotations;
- (CGPoint)_CGPointFromScalarBasedOnKillAxis:(double)axis;
- (CGPoint)_contentOffsetAtRest;
- (CGPoint)_contentOffsetForKillingProgress:(double)progress;
- (CGPoint)meshWarpCollapsedTargetPosition;
- (CGPoint)meshWarpExpandedSourcePosition;
- (CGPoint)pageViewAnchorPoint;
- (CGPoint)pageViewOffset;
- (CGRect)_frameForPageView;
- (CGRect)_frameForPageViewWithFullPresentedSize:(CGSize)size;
- (CGRect)_frameForScrollView;
- (CGRect)_frameForScrollViewWithFullPresentedSize:(CGSize)size;
- (CGRect)effectivePageViewPresentationFrame;
- (CGSize)_CGSizeFromLengthBasedOnKillAxis:(double)axis;
- (CGSize)_contentSizeForScrollView;
- (CGSize)sizeForContainingSpace;
- (NSString)description;
- (SBDragPreviewShadowParameters)initialDiffuseShadowParameters;
- (SBDragPreviewShadowParameters)initialRimShadowParameters;
- (SBFluidSwitcherItemContainer)initWithCoder:(id)coder;
- (SBFluidSwitcherItemContainer)initWithFrame:(CGRect)frame;
- (SBFluidSwitcherItemContainer)initWithFrame:(CGRect)frame appLayout:(id)layout delegate:(id)delegate active:(BOOL)active windowScene:(id)scene;
- (SBFluidSwitcherItemContainerDelegate)delegate;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes;
- (UIRectCornerRadii)contentCornerRadii;
- (double)_CGPointXOrYBasedOnKillAxis:(CGPoint)axis;
- (double)_CGSizeWidthOrHeightBasedOnKillAxis:(CGSize)axis;
- (double)_inverseScaleTransformFactor;
- (double)_killingProgressForContentOffset:(CGPoint)offset;
- (double)_scaleForHighlightFromCursorHover;
- (double)_scaleForHighlightFromDirectTouch;
- (double)currentStatusBarHeight;
- (double)effectivePageViewPresentationCornerRadius;
- (double)killingProgress;
- (id)_createScrollView;
- (id)_springLoadingEffectTargetView;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)initialCornerRadiusConfiguration;
- (id)initialDiffuseShadowFilters;
- (id)initialRimShadowFilters;
- (id)layer;
- (void)_addPageView;
- (void)_ensureSubviewOrder;
- (void)_handleHoverGesture:(id)gesture;
- (void)_handlePageViewTap:(id)tap;
- (void)_handleSelectionHighlightGesture:(id)gesture;
- (void)_notifyDelegateScrollViewDidChange;
- (void)_resetKillProgressScrollState;
- (void)_returnKeyPressed:(id)pressed;
- (void)_setWantsOverlayPortalView:(BOOL)view;
- (void)_updateAccessibilityIdentifier;
- (void)_updateFooterAnimated:(BOOL)animated;
- (void)_updateFooterVisibility;
- (void)_updateForPointerHoveringOverEdge:(unint64_t)edge;
- (void)_updateKillScrollViewEnabled;
- (void)_updatePageViewContentClippingFrame;
- (void)_updatePageViewContentViewClipping;
- (void)_updateShadowVisibility;
- (void)_updateTransformForCurrentHighlight;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)genieEffectViewDidInvalidate:(id)invalidate;
- (void)gestureRecognizerTransitionedToFailed:(id)failed;
- (void)itemContainerFooterView:(id)view didSelectTitleItem:(id)item;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setActive:(BOOL)active;
- (void)setAppLayout:(id)layout;
- (void)setBlurred:(BOOL)blurred duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion;
- (void)setBlurthoughView:(id)view;
- (void)setBlurthroughPortalView:(id)view;
- (void)setClipsToUnobscuredMargin:(BOOL)margin;
- (void)setContentCornerRadii:(UIRectCornerRadii)radii;
- (void)setContentOverlay:(id)overlay animated:(BOOL)animated;
- (void)setContentPageViewScale:(double)scale;
- (void)setDraggable:(BOOL)draggable;
- (void)setDragging:(BOOL)dragging;
- (void)setDrawsFooter:(BOOL)footer;
- (void)setFocusable:(BOOL)focusable;
- (void)setFooterStyle:(unint64_t)style;
- (void)setHighlightedFromCursorHover:(BOOL)hover;
- (void)setHighlightedFromDirectTouch:(BOOL)touch;
- (void)setIconOpacity:(double)opacity;
- (void)setKillAxis:(unint64_t)axis;
- (void)setKillable:(BOOL)killable;
- (void)setLifted:(BOOL)lifted;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setMeshTransform:(id)transform;
- (void)setMinimumTranslationForKillingContainer:(double)container;
- (void)setOverlayPortalView:(id)view;
- (void)setPageViewAnchorPoint:(CGPoint)point;
- (void)setPageViewOffset:(CGPoint)offset;
- (void)setPointerInteractionEnabled:(BOOL)enabled;
- (void)setPointerInteractionHitTestPadding:(double)padding;
- (void)setPositionAnimationsBeginFromModelState:(BOOL)state;
- (void)setPreferredPointerLockStatusSuppressed:(BOOL)suppressed;
- (void)setRubberbandable:(BOOL)rubberbandable;
- (void)setShouldScaleOverlayToFillBounds:(BOOL)bounds;
- (void)setTitleAndIconOpacity:(double)opacity;
- (void)setTitleItems:(id)items animated:(BOOL)animated;
- (void)setTitleOpacity:(double)opacity;
- (void)setTransformAnimationsAreLegacyCounterRotations:(BOOL)rotations;
- (void)setUnobscuredMargin:(double)margin;
- (void)setVisible:(BOOL)visible;
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
  _shadowView = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  [_shadowView setHidden:self->_dragging];
}

- (void)_updateAccessibilityIdentifier
{
  appLayout = self->_appLayout;
  if (appLayout)
  {
    v8 = [(SBAppLayout *)appLayout itemForLayoutRole:1];
    v4 = MEMORY[0x277CCACA8];
    bundleIdentifier = [v8 bundleIdentifier];
    uniqueIdentifier = [v8 uniqueIdentifier];
    v7 = [v4 stringWithFormat:@"card:%@:%@", bundleIdentifier, uniqueIdentifier];
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
  layer = [(SBFluidSwitcherItemContainer *)&v4 layer];

  return layer;
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = SBFluidSwitcherItemContainer;
  [(SBFTouchPassThroughClippingView *)&v50 layoutSubviews];
  delegate = [(SBFluidSwitcherItemContainer *)self delegate];
  [(SBFluidSwitcherItemContainer *)self bounds];
  v5 = v4;
  v7 = v6;
  v46 = v9;
  v47 = v8;
  [(SBSwitcherGenieEffectView *)self->_genieEffectView sb_setBoundsAndPositionFromFrame:?];
  [delegate frameForPageViewOfContainer:self fullyPresented:1];
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
  -[SBAppSwitcherPageView setOrientation:](self->_pageView, "setOrientation:", [delegate switcherInterfaceOrientation]);
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
    traitCollection = [(SBFluidSwitcherItemContainer *)self traitCollection];
    [traitCollection displayScale];

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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setBackgroundColor:clearColor];

  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setDelegate:self];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setClipsToBounds:0];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 _setAutoScrollEnabled:0];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setTracksImmediatelyWhileDecelerating:0];
  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 _setSupportsPointerDragScrolling:1];
  panGestureRecognizer = [(SBFluidSwitcherTouchPassThroughScrollView *)v7 panGestureRecognizer];
  [panGestureRecognizer setAllowedScrollTypesMask:2];

  [(SBFluidSwitcherTouchPassThroughScrollView *)v7 setAlwaysBounceVertical:1];

  return v7;
}

- (CGRect)_frameForScrollView
{
  delegate = [(SBFluidSwitcherItemContainer *)self delegate];
  [delegate frameForPageViewOfContainer:self fullyPresented:1];
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
  delegate = [(SBFluidSwitcherItemContainer *)self delegate];
  [delegate frameForPageViewOfContainer:self fullyPresented:1];
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
  layer = [(SBAppSwitcherPageView *)self->_pageView layer];
  [layer setAnchorPoint:{self->_pageViewAnchorPoint.x, self->_pageViewAnchorPoint.y}];

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
  isRubberbandable = [(SBFluidSwitcherItemContainer *)self isKillable]|| [(SBFluidSwitcherItemContainer *)self isRubberbandable];

  [(SBFluidSwitcherTouchPassThroughScrollView *)killScrollView setScrollEnabled:isRubberbandable];
}

- (SBFluidSwitcherItemContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherItemContainer.m" lineNumber:210 description:@"Override initWithFrame:delegate: instead"];

  return [(SBFluidSwitcherItemContainer *)self initWithFrame:0 appLayout:0 delegate:0 active:0 windowScene:x, y, width, height];
}

- (SBFluidSwitcherItemContainer)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherItemContainer.m" lineNumber:216 description:@"Override initWithFrame:delegate: instead"];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(SBFluidSwitcherItemContainer *)self initWithFrame:0 appLayout:0 delegate:0 active:0 windowScene:v6, v7, v8, v9];
}

- (SBFluidSwitcherItemContainer)initWithFrame:(CGRect)frame appLayout:(id)layout delegate:(id)delegate active:(BOOL)active windowScene:(id)scene
{
  activeCopy = active;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  delegateCopy = delegate;
  sceneCopy = scene;
  if (!delegateCopy)
  {
    [SBFluidSwitcherItemContainer initWithFrame:a2 appLayout:self delegate:? active:? windowScene:?];
  }

  v44.receiver = self;
  v44.super_class = SBFluidSwitcherItemContainer;
  height = [(SBFTouchPassThroughClippingView *)&v44 initWithFrame:x, y, width, height];
  v21 = height;
  if (height)
  {
    objc_storeStrong(&height->_appLayout, layout);
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
    objc_storeWeak(&v21->_delegate, delegateCopy);
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
    _createScrollView = [(SBFluidSwitcherItemContainer *)v21 _createScrollView];
    killScrollView = v21->_killScrollView;
    v21->_killScrollView = _createScrollView;

    [(SBFluidSwitcherTouchPassThroughScrollView *)v21->_killScrollView velocityScaleFactor];
    v21->_killScrollViewInitialVelocityScaleFactor = v34;
    [(UIView *)v21->_contentContainerView addSubview:v21->_killScrollView];
    [(SBFluidSwitcherItemContainer *)v21 _addPageView];
    [(SBFluidSwitcherItemContainer *)v21 setActive:activeCopy];
    layer = [(SBFluidSwitcherItemContainer *)v21 layer];
    traitCollection = [(SBFluidSwitcherItemContainer *)v21 traitCollection];
    [traitCollection displayScale];
    [layer setRasterizationScale:?];

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
    v41 = [[SBAffordancePresenceController alloc] initWithDelegate:v21 windowScene:sceneCopy];
    affordancePresenceController = v21->_affordancePresenceController;
    v21->_affordancePresenceController = v41;
  }

  return v21;
}

- (void)prepareForReuse
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBFluidSwitcherItemContainer.m" lineNumber:328 description:@"Can't recycle active view"];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFluidSwitcherItemContainer;
    v5 = [(SBFluidSwitcherItemContainer *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherItemContainer;
  v3 = [(SBFluidSwitcherItemContainer *)&v7 description];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v5 = [v3 stringByAppendingFormat:@" appLayout: %@", succinctDescription];

  return v5;
}

+ (double)preferredRestingVisibleMarginForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setAppLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_appLayout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_appLayout, layout);
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
    [(SBFluidSwitcherItemContainer *)self _updateAccessibilityIdentifier];
    layoutCopy = v6;
  }
}

- (void)setMeshTransform:(id)transform
{
  if (transform | self->_meshTransform)
  {
    v4 = [transform copy];
    meshTransform = self->_meshTransform;
    self->_meshTransform = v4;

    layer = [(SBFluidSwitcherItemContainer *)self layer];
    [layer setValue:self->_meshTransform forKey:@"meshTransform"];
  }
}

- (void)setContentCornerRadii:(UIRectCornerRadii)radii
{
  v13 = *MEMORY[0x277D85DE8];
  p_contentCornerRadii = &self->_contentCornerRadii;
  v4.f64[0] = radii.topLeft;
  v4.f64[1] = radii.bottomLeft;
  v5.f64[0] = radii.bottomRight;
  v5.f64[1] = radii.topRight;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_contentCornerRadii.topLeft), vceqq_f64(v5, *&self->_contentCornerRadii.bottomRight)))) & 1) == 0)
  {
    p_contentCornerRadii->topLeft = radii.topLeft;
    self->_contentCornerRadii.bottomLeft = radii.bottomLeft;
    self->_contentCornerRadii.bottomRight = radii.bottomRight;
    self->_contentCornerRadii.topRight = radii.topRight;
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

- (void)setMaskedCorners:(unint64_t)corners
{
  if (self->_maskedCorners != corners)
  {
    self->_maskedCorners = corners;
    [(SBAppSwitcherPageView *)self->_pageView setMaskedCorners:?];
    layer = [(UIView *)self->_blurthroughContainerView layer];
    [layer setMaskedCorners:self->_maskedCorners];
  }
}

- (void)setDrawsFooter:(BOOL)footer
{
  if (self->_drawsFooter != footer)
  {
    self->_drawsFooter = footer;
    [(SBFluidSwitcherItemContainer *)self _updateFooterVisibility];
  }
}

- (void)setTitleItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  titleItems = self->_titleItems;
  if (titleItems != itemsCopy)
  {
    v11 = itemsCopy;
    v8 = [(NSArray *)titleItems isEqual:itemsCopy];
    itemsCopy = v11;
    if ((v8 & 1) == 0)
    {
      v9 = [(NSArray *)v11 copy];
      v10 = self->_titleItems;
      self->_titleItems = v9;

      [(SBFluidSwitcherItemContainer *)self _updateFooterAnimated:animatedCopy];
      itemsCopy = v11;
    }
  }
}

- (void)setTitleAndIconOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleAndIconOpacity = opacity;

    [(SBFluidSwitcherItemContainer *)self _updateFooterAnimated:1];
  }
}

- (void)setTitleOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleOpacity = opacity;

    [(SBFluidSwitcherItemContainer *)self _updateFooterAnimated:1];
  }
}

- (void)setIconOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_iconOpacity = opacity;

    [(SBFluidSwitcherItemContainer *)self _updateFooterAnimated:1];
  }
}

- (void)setContentPageViewScale:(double)scale
{
  if (self->_contentPageViewScale != scale)
  {
    self->_contentPageViewScale = scale;
    [(SBAppSwitcherPageView *)self->_pageView setSwitcherCardScale:?];
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView setVelocityScaleFactor:self->_killScrollViewInitialVelocityScaleFactor * self->_contentPageViewScale];
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];

    [(SBFluidSwitcherItemContainer *)self layoutIfNeeded];
  }
}

- (void)setPreferredPointerLockStatusSuppressed:(BOOL)suppressed
{
  if (self->_preferredPointerLockStatusSuppressed != suppressed)
  {
    self->_preferredPointerLockStatusSuppressed = suppressed;
    [(SBFluidSwitcherItemContainer *)self setContentViewBlocksTouches:[(SBFluidSwitcherItemContainer *)self contentViewBlocksTouches]];
    selectable = self->_selectable;

    [(SBFluidSwitcherItemContainer *)self setSelectable:selectable];
  }
}

- (void)setContentOverlay:(id)overlay animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = overlay != 0;
  overlayCopy = overlay;
  [(SBFTouchPassThroughClippingView *)self setHitTestsSubviewsOutsideBounds:v6];
  [(SBHitTestExtendedView *)self->_pageView setHitTestsSubviewsOutsideBounds:[(SBFTouchPassThroughClippingView *)self hitTestsSubviewsOutsideBounds]];
  [(SBAppSwitcherPageView *)self->_pageView setOverlay:overlayCopy animated:animatedCopy];
}

- (void)setBlurthroughPortalView:(id)view
{
  viewCopy = view;
  blurthroughPortalView = self->_blurthroughPortalView;
  if (blurthroughPortalView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)blurthroughPortalView removeFromSuperview];
    objc_storeStrong(&self->_blurthroughPortalView, view);
    [(UIView *)self->_contentContainerView addSubview:self->_blurthroughPortalView];
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setBlurthoughView:(id)view
{
  v22 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  blurthroughView = self->_blurthroughView;
  if (blurthroughView != viewCopy)
  {
    v17 = viewCopy;
    if (!self->_blurthroughContainerView)
    {
      v7 = objc_alloc(MEMORY[0x277D75D18]);
      v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      blurthroughContainerView = self->_blurthroughContainerView;
      self->_blurthroughContainerView = v8;

      v10 = self->_blurthroughContainerView;
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v10 setBackgroundColor:clearColor];

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
      layer = [(UIView *)self->_blurthroughContainerView layer];
      [layer setMaskedCorners:{-[SBFluidSwitcherItemContainer maskedCorners](self, "maskedCorners")}];

      [(UIView *)self->_contentContainerView addSubview:self->_blurthroughContainerView];
      blurthroughView = self->_blurthroughView;
      viewCopy = v17;
    }

    if (blurthroughView)
    {
      [(UIView *)blurthroughView removeFromSuperview];
      v15 = self->_blurthroughView;
      self->_blurthroughView = 0;

      viewCopy = v17;
    }

    if (viewCopy)
    {
      objc_storeStrong(&self->_blurthroughView, view);
      [(UIView *)self->_blurthroughContainerView addSubview:self->_blurthroughView];
    }

    else
    {
      [(UIView *)self->_blurthroughContainerView removeFromSuperview];
      v16 = self->_blurthroughContainerView;
      self->_blurthroughContainerView = 0;
    }

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
    viewCopy = v18;
  }
}

- (void)setBlurred:(BOOL)blurred duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion
{
  blurredCopy = blurred;
  v45 = *MEMORY[0x277D85DE8];
  beganCopy = began;
  completionCopy = completion;
  if (self->_blurred != blurredCopy)
  {
    self->_blurred = blurredCopy;
    if (beganCopy)
    {
      beganCopy[2](beganCopy);
    }

    v15 = [MEMORY[0x277CF0D38] factoryWithDuration:duration];
    if (self->_blurred)
    {
      if (!self->_blurView)
      {
        allItems = [(SBAppLayout *)self->_appLayout allItems];
        firstObject = [allItems firstObject];
        bundleIdentifier = [firstObject bundleIdentifier];

        overlay = [(SBAppSwitcherPageView *)self->_pageView overlay];
        v24 = overlay;
        if (overlay)
        {
          view = overlay;
        }

        else
        {
          view = [(SBAppSwitcherPageView *)self->_pageView view];
        }

        v26 = view;

        v27 = [SBApplicationBlurContentView alloc];
        [(SBAppSwitcherPageView *)self->_pageView frame];
        v28 = [SBApplicationBlurContentView initWithFrame:v27 bundleIdentifier:"initWithFrame:bundleIdentifier:targetViewToBlur:initialIconScale:" targetViewToBlur:bundleIdentifier initialIconScale:v26];
        blurView = self->_blurView;
        self->_blurView = v28;

        [(SBApplicationBlurContentView *)self->_blurView setBlurDelay:delay];
        [(SBApplicationBlurContentView *)self->_blurView setClipsToBounds:1];
        layer = [(SBApplicationBlurContentView *)self->_blurView layer];
        [layer setAllowsGroupOpacity:1];

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
        v41 = completionCopy;
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
      v38 = completionCopy;
      [v16 animateWithFactory:v15 options:4 actions:v39 completion:v37];
      v17 = v38;
    }

    else
    {
      overlay2 = [(SBAppSwitcherPageView *)self->_pageView overlay];
      [overlay2 setHidden:0];

      if (!self->_blurView)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy);
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
      v35 = completionCopy;
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

- (void)setUnobscuredMargin:(double)margin
{
  if (self->_unobscuredMargin != margin)
  {
    layer = [(SBFluidSwitcherItemContainer *)self layer];
    shouldRasterize = [layer shouldRasterize];

    if (shouldRasterize)
    {
      if (self->_unobscuredMargin < margin)
      {
        v7 = margin + margin;
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
      self->_unobscuredMargin = margin;

      [(SBFluidSwitcherItemContainer *)self _updatePageViewContentClippingFrame];
    }
  }
}

- (void)setClipsToUnobscuredMargin:(BOOL)margin
{
  if (self->_clipsToUnobscuredMargin != margin)
  {
    self->_clipsToUnobscuredMargin = margin;
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

- (void)setKillAxis:(unint64_t)axis
{
  if (self->_killAxis != axis)
  {
    self->_killAxis = axis;
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
    [(SBFluidSwitcherItemContainer *)self layoutIfNeeded];

    [(SBFluidSwitcherItemContainer *)self _resetKillProgressScrollState];
  }
}

- (void)setRubberbandable:(BOOL)rubberbandable
{
  if (self->_rubberbandable != rubberbandable)
  {
    self->_rubberbandable = rubberbandable;
    [(SBFluidSwitcherItemContainer *)self _updateKillScrollViewEnabled];
  }
}

- (void)setKillable:(BOOL)killable
{
  if (self->_killable != killable)
  {
    self->_killable = killable;
    [(SBFluidSwitcherItemContainer *)self _updateKillScrollViewEnabled];
    if (killable)
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
  layer = [(SBAppSwitcherPageView *)self->_pageView layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer cornerRadius];
  v5 = v4;

  return v5;
}

- (CGRect)effectivePageViewPresentationFrame
{
  layer = [(SBAppSwitcherPageView *)self->_pageView layer];
  v4 = layer;
  if (self->_hasPageViewBeenCommitted)
  {
    presentationLayer = [layer presentationLayer];
  }

  else
  {
    presentationLayer = layer;
  }

  v6 = presentationLayer;
  hasPageViewBeenCommitted = self->_hasPageViewBeenCommitted;
  layer2 = [(SBFluidSwitcherItemContainer *)self layer];
  v9 = layer2;
  if (hasPageViewBeenCommitted)
  {
    presentationLayer2 = [layer2 presentationLayer];

    v9 = presentationLayer2;
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

- (double)_killingProgressForContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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

- (CGPoint)_contentOffsetForKillingProgress:(double)progress
{
  minimumTranslationForKillingContainer = self->_minimumTranslationForKillingContainer;
  [(SBFluidSwitcherItemContainer *)self contentPageViewScale];
  v7 = minimumTranslationForKillingContainer / v6;
  [(SBFluidSwitcherItemContainer *)self _CGSizeWidthOrHeightBasedOnKillAxis:self->_sizeForContainingSpace.width, self->_sizeForContainingSpace.height];
  v9 = (v7 + v8) * progress;
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

- (void)setFocusable:(BOOL)focusable
{
  if (self->_focusable != focusable)
  {
    if (self->_focusable)
    {
      [(SBFluidSwitcherItemContainer *)self resignFirstResponder];
    }

    self->_focusable = focusable;
  }
}

- (void)setDraggable:(BOOL)draggable
{
  if (self->_draggable != draggable)
  {
    self->_draggable = draggable;
  }
}

- (BOOL)contentViewHasSceneOverlay
{
  contentView = [(SBFluidSwitcherItemContainer *)self contentView];
  if (objc_opt_respondsToSelector())
  {
    hasSceneOverlayView = [contentView hasSceneOverlayView];
  }

  else
  {
    hasSceneOverlayView = 0;
  }

  return hasSceneOverlayView;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    if (active)
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

    [(SBAppSwitcherPageView *)self->_pageView setActive:activeCopy, v6, v7, v8, v9];
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

- (void)setVisible:(BOOL)visible
{
  if (self->_visible != visible)
  {
    visibleCopy = visible;
    self->_visible = visible;
    if (visible)
    {
      [(SBFluidSwitcherItemContainer *)self _resetKillProgressScrollState];
      self->_sentKillRequest = 0;
    }

    else
    {
      [(SBFluidSwitcherItemContainer *)self setHighlightedFromDirectTouch:0];
    }

    pageView = self->_pageView;

    [(SBAppSwitcherPageView *)pageView setVisible:visibleCopy];
  }
}

- (void)setPointerInteractionEnabled:(BOOL)enabled
{
  if (self->_pointerInteractionEnabled != enabled)
  {
    self->_pointerInteractionEnabled = enabled;
    [(SBFluidSwitcherItemContainer *)self _updateTransformForCurrentHighlight];
  }
}

- (void)setPointerInteractionHitTestPadding:(double)padding
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_pointerInteractionHitTestPadding = padding;
    pageView = self->_pageView;

    [(SBAppSwitcherPageView *)pageView setPointerInteractionHitTestPadding:padding];
  }
}

- (void)setMinimumTranslationForKillingContainer:(double)container
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_minimumTranslationForKillingContainer = container;

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (void)setShouldScaleOverlayToFillBounds:(BOOL)bounds
{
  if (self->_shouldScaleOverlayToFillBounds != bounds)
  {
    self->_shouldScaleOverlayToFillBounds = bounds;
    [(SBAppSwitcherPageView *)self->_pageView setShouldScaleOverlayToFillBounds:?];
  }
}

- (BOOL)isDeceleratingTowardsKillZone
{
  isDecelerating = [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView isDecelerating];
  if (isDecelerating)
  {
    [(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView _pageDecelerationTarget];
    v5 = v4;
    v7 = v6;
    [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
    LOBYTE(isDecelerating) = v7 != v9 || v5 != v8;
  }

  return isDecelerating;
}

- (void)setPageViewAnchorPoint:(CGPoint)point
{
  p_pageViewAnchorPoint = &self->_pageViewAnchorPoint;
  if (point.x != self->_pageViewAnchorPoint.x || point.y != self->_pageViewAnchorPoint.y)
  {
    p_pageViewAnchorPoint->x = point.x;
    self->_pageViewAnchorPoint.y = point.y;
    layer = [(SBAppSwitcherPageView *)self->_pageView layer];
    [layer setAnchorPoint:{p_pageViewAnchorPoint->x, p_pageViewAnchorPoint->y}];

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (void)setPageViewOffset:(CGPoint)offset
{
  if (offset.x != self->_pageViewOffset.x || offset.y != self->_pageViewOffset.y)
  {
    self->_pageViewOffset = offset;
    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (void)setPositionAnimationsBeginFromModelState:(BOOL)state
{
  stateCopy = state;
  layer = [(SBFluidSwitcherItemContainer *)self layer];
  [layer setPositionAnimationsBeginFromModelState:stateCopy];
}

- (BOOL)positionAnimationsBeginFromModelState
{
  layer = [(SBFluidSwitcherItemContainer *)self layer];
  positionAnimationsBeginFromModelState = [layer positionAnimationsBeginFromModelState];

  return positionAnimationsBeginFromModelState;
}

- (void)setTransformAnimationsAreLegacyCounterRotations:(BOOL)rotations
{
  rotationsCopy = rotations;
  layer = [(SBFluidSwitcherItemContainer *)self layer];
  [layer setTransformAnimationsAreLegacyCounterRotations:rotationsCopy];
}

- (BOOL)transformAnimationsAreLegacyCounterRotations
{
  layer = [(SBFluidSwitcherItemContainer *)self layer];
  transformAnimationsAreLegacyCounterRotations = [layer transformAnimationsAreLegacyCounterRotations];

  return transformAnimationsAreLegacyCounterRotations;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v38 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v36.receiver = self;
  v36.super_class = SBFluidSwitcherItemContainer;
  v8 = [(SBFluidSwitcherItemContainer *)&v36 pointInside:eventCopy withEvent:x, y];
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
      subviews = [(SBFluidSwitcherItemContainer *)self subviews];
      v18 = [subviews countByEnumeratingWithState:&v32 objects:v37 count:16];
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
              objc_enumerationMutation(subviews);
            }

            v22 = *(*(&v32 + 1) + 8 * i);
            [(SBFluidSwitcherItemContainer *)self convertPoint:v22 toView:x, y];
            if ([v22 pointInside:eventCopy withEvent:?])
            {

              goto LABEL_17;
            }
          }

          v19 = [subviews countByEnumeratingWithState:&v32 objects:v37 count:16];
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

- (void)_updateFooterAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter setAlpha:self->_titleAndIconOpacity];
  [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter setIconAlpha:self->_iconOpacity];
  [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter setTextAlpha:self->_titleOpacity];
  iconAndLabelFooter = self->_iconAndLabelFooter;
  titleItems = self->_titleItems;

  [(SBFluidSwitcherItemContainerFooterView *)iconAndLabelFooter setTitleItems:titleItems animated:animatedCopy];
}

- (CGRect)_frameForScrollViewWithFullPresentedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  delegate = [(SBFluidSwitcherItemContainer *)self delegate];
  [delegate frameForPageViewOfContainer:self fullyPresented:1];
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

- (CGRect)_frameForPageViewWithFullPresentedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  delegate = [(SBFluidSwitcherItemContainer *)self delegate];
  [delegate frameForPageViewOfContainer:self fullyPresented:0];
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

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v18[1] = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  if (self->_draggable && ([(SBFluidSwitcherTouchPassThroughScrollView *)self->_killScrollView isDecelerating]& 1) == 0)
  {
    appLayout = [(SBFluidSwitcherItemContainer *)self appLayout];
    v10 = [appLayout itemForLayoutRole:1];
    bundleIdentifier = [v10 bundleIdentifier];
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

    v14 = [objc_alloc(MEMORY[0x277D66998]) initWithUniqueIdentifier:bundleIdentifier withLaunchActions:0 startLocation:v13];
    uniqueIdentifier = [v10 uniqueIdentifier];
    [v14 setDraggedSceneIdentifier:uniqueIdentifier];

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

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  itemCopy = item;
  _sbWindowScene = [(UIView *)self _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  iconModel = [iconManager iconModel];
  appLayout = [(SBFluidSwitcherItemContainer *)self appLayout];
  v10 = [appLayout itemForLayoutRole:1];
  bundleIdentifier = [v10 bundleIdentifier];
  v31 = iconModel;
  v12 = [iconModel leafIconForIdentifier:bundleIdentifier];
  v13 = [objc_alloc(MEMORY[0x277D663F0]) initWithConfigurationOptions:6];
  [v13 setLocation:*MEMORY[0x277D666D0]];
  listLayoutProvider = [iconManager listLayoutProvider];
  [v13 setListLayoutProvider:listLayoutProvider];

  [v13 setDelegate:iconManager];
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
  v34 = iconManager;
  v20 = iconManager;
  [(SBAppPlatterDragPreview *)v17 setCleanUpHandler:v33];
  iconDragManager = [v20 iconDragManager];
  [iconDragManager addPlatterViewToMedusaDragOffscreenWindow:v17 forWindowScene:_sbWindowScene];

  [(SBFluidSwitcherItemContainer *)self bounds];
  UIRectGetCenter();
  v23 = v22;
  v25 = v24;
  window = [(SBAppPlatterDragPreview *)v17 window];
  [(SBFluidSwitcherItemContainer *)self convertPoint:window toView:v23, v25];
  [(SBAppPlatterDragPreview *)v17 setCenter:?];

  [(SBAppPlatterDragPreview *)v17 setDragState:1];
  [(SBAppPlatterDragPreview *)v17 setAlpha:0.0];
  [(SBAppPlatterDragPreview *)v17 layoutIfNeeded];
  v27 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v17];
  [v27 set_springboardPlatterStyle:1];
  sbh_appDragLocalContext = [itemCopy sbh_appDragLocalContext];

  [sbh_appDragLocalContext setPortaledPreview:v17];

  return v27;
}

void __78__SBFluidSwitcherItemContainer_dragInteraction_previewForLiftingItem_session___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconDragManager];
  [v4 removePlatterViewFromMedusaDragOffscreenWindow:v3];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  delegate = [(SBFluidSwitcherItemContainer *)self delegate];
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem == self)
  {
    [delegate container:self didBecomeFocused:1];
    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__returnKeyPressed_];
    returnKeyGestureRecognizer = self->_returnKeyGestureRecognizer;
    self->_returnKeyGestureRecognizer = v9;

    [(UITapGestureRecognizer *)self->_returnKeyGestureRecognizer setAllowedPressTypes:&unk_28336E2F8];
    [(SBFluidSwitcherItemContainer *)self addGestureRecognizer:self->_returnKeyGestureRecognizer];
  }

  else
  {
    previouslyFocusedItem = [contextCopy previouslyFocusedItem];

    if (previouslyFocusedItem == self)
    {
      [delegate container:self didBecomeFocused:0];
      [(SBFluidSwitcherItemContainer *)self removeGestureRecognizer:self->_returnKeyGestureRecognizer];
      v8 = self->_returnKeyGestureRecognizer;
      self->_returnKeyGestureRecognizer = 0;
    }
  }
}

- (void)_returnKeyPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(SBFluidSwitcherItemContainer *)self isFocusable]&& [(SBFluidSwitcherItemContainer *)self isSelectable])
  {
    delegate = [(SBFluidSwitcherItemContainer *)self delegate];
    [delegate didSelectContainer:self modifierFlags:{objc_msgSend(pressedCopy, "modifierFlags")}];
  }
}

- (double)_CGSizeWidthOrHeightBasedOnKillAxis:(CGSize)axis
{
  if (!self->_killAxis)
  {
    axis.width = axis.height;
  }

  return axis.width;
}

- (double)_CGPointXOrYBasedOnKillAxis:(CGPoint)axis
{
  if (!self->_killAxis)
  {
    axis.x = axis.y;
  }

  return axis.x;
}

- (CGSize)_CGSizeFromLengthBasedOnKillAxis:(double)axis
{
  killAxis = self->_killAxis;
  axisCopy2 = 0.0;
  if (killAxis)
  {
    axisCopy = axis;
  }

  else
  {
    axisCopy = 0.0;
  }

  if (!killAxis)
  {
    axisCopy2 = axis;
  }

  v6 = axisCopy;
  result.height = axisCopy2;
  result.width = v6;
  return result;
}

- (CGPoint)_CGPointFromScalarBasedOnKillAxis:(double)axis
{
  killAxis = self->_killAxis;
  axisCopy2 = 0.0;
  if (killAxis)
  {
    axisCopy = axis;
  }

  else
  {
    axisCopy = 0.0;
  }

  if (!killAxis)
  {
    axisCopy2 = axis;
  }

  v6 = axisCopy;
  result.y = axisCopy2;
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
  overlay = [(SBAppSwitcherPageView *)self->_pageView overlay];
  if (overlay)
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

- (void)_handlePageViewTap:(id)tap
{
  tapCopy = tap;
  if ([(SBFluidSwitcherItemContainer *)self isSelectable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didSelectContainer:self modifierFlags:{objc_msgSend(tapCopy, "modifierFlags")}];
  }
}

- (void)_handleSelectionHighlightGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    delegate = [(SBFluidSwitcherItemContainer *)self delegate];
    isHighlightedFromDirectTouch = [delegate canSelectContainer:self numberOfTaps:1];

    [gestureCopy locationInView:self];
    self->_highlightTapDownLocation.x = v6;
    self->_highlightTapDownLocation.y = v7;
    goto LABEL_9;
  }

  if ([gestureCopy state] != 3 && objc_msgSend(gestureCopy, "state") != 4)
  {
    if ([gestureCopy state] == 2)
    {
      isHighlightedFromDirectTouch = [(SBFluidSwitcherItemContainer *)self isHighlightedFromDirectTouch];
      goto LABEL_9;
    }

    [gestureCopy state];
  }

  isHighlightedFromDirectTouch = 0;
LABEL_9:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containerSelectionStateChanged:self toState:objc_msgSend(gestureCopy hover:"state") pencilHover:{0, 0}];

  [(SBFluidSwitcherItemContainer *)self setHighlightedFromDirectTouch:isHighlightedFromDirectTouch];
}

- (void)setHighlightedFromDirectTouch:(BOOL)touch
{
  if (self->_highlightedFromDirectTouch != touch)
  {
    self->_highlightedFromDirectTouch = touch;
    [(SBFluidSwitcherItemContainer *)self _updateTransformForCurrentHighlight];
  }
}

- (void)setHighlightedFromCursorHover:(BOOL)hover
{
  if (self->_highlightedFromCursorHover != hover)
  {
    self->_highlightedFromCursorHover = hover;
    [(SBFluidSwitcherItemContainer *)self _updateTransformForCurrentHighlight];
  }
}

- (void)setLifted:(BOOL)lifted
{
  if (self->_lifted != lifted)
  {
    self->_lifted = lifted;
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
    animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
    appSelectionSquishSettings = [animationSettings appSelectionSquishSettings];

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
    [MEMORY[0x277D75D18] sb_animateWithSettings:appSelectionSquishSettings mode:3 animations:v10 completion:v9];
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

- (void)setFooterStyle:(unint64_t)style
{
  if (self->_footerStyle != style)
  {
    self->_footerStyle = style;
    [(SBFluidSwitcherItemContainerFooterView *)self->_iconAndLabelFooter setFooterStyle:?];

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];
  }
}

- (void)itemContainerFooterView:(id)view didSelectTitleItem:(id)item
{
  v5 = [(NSArray *)self->_titleItems indexOfObject:item];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  if (self->_tapGestureRecognizer != recognizer)
  {
    return 0;
  }

  iconAndLabelFooter = self->_iconAndLabelFooter;
  gestureRecognizerCopy = gestureRecognizer;
  tapGestureRecognizer = [(SBFluidSwitcherItemContainerFooterView *)iconAndLabelFooter tapGestureRecognizer];
  v4 = tapGestureRecognizer == gestureRecognizerCopy;

  return v4;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
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
    if (tapGestureRecognizer == beginCopy && !v6)
    {
      v7 = 0;
      goto LABEL_21;
    }

    if (tapGestureRecognizer != beginCopy)
    {
      doubleTapGestureRecognizer = beginCopy;
      if (self->_doubleTapGestureRecognizer == beginCopy)
      {
        goto LABEL_17;
      }

      if (self->_pressDownGestureRecognizer != beginCopy)
      {
        doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
        if (self->_selectionHighlightGestureRecognizer != beginCopy)
        {
          v7 = 1;
LABEL_21:

          goto LABEL_22;
        }

LABEL_17:
        if (doubleTapGestureRecognizer == beginCopy)
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

- (void)gestureRecognizerTransitionedToFailed:(id)failed
{
  if (self->_tapGestureRecognizer == failed)
  {
    [(UILongPressGestureRecognizer *)self->_selectionHighlightGestureRecognizer setEnabled:0];
    selectionHighlightGestureRecognizer = self->_selectionHighlightGestureRecognizer;

    [(UILongPressGestureRecognizer *)selectionHighlightGestureRecognizer setEnabled:1];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (self->_killScrollView == scrollCopy)
  {
    v7 = scrollCopy;
    window = [(SBFluidSwitcherTouchPassThroughScrollView *)scrollCopy window];

    scrollCopy = v7;
    if (window)
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

      scrollCopy = v7;
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (self->_killScrollView == dragging)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained containerWillBeginSwipingToKill:self];

    [(SBFluidSwitcherItemContainer *)self setNeedsLayout];

    [(SBFluidSwitcherItemContainer *)self layoutIfNeeded];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (self->_killScrollView == dragging)
  {
    [dragging contentOffset];
    if (!self->_killAxis)
    {
      v8 = v9;
    }

    if (v8 >= 62.0)
    {
      x = offset->x;
      y = offset->y;
    }

    else
    {
      [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
      offset->x = x;
      offset->y = y;
    }

    [(SBFluidSwitcherItemContainer *)self _killingProgressForContentOffset:x, y];
    if (v12 >= 1.0)
    {
      v13 = offset->x;
      v14 = offset->y;
    }

    else
    {
      [(SBFluidSwitcherItemContainer *)self _contentOffsetAtRest];
      offset->x = v13;
      offset->y = v14;
    }

    [(SBFluidSwitcherItemContainer *)self _killingProgressForContentOffset:v13, v14];
    self->_killProgressForCurrentDecelerationTarget = v15;

    [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (self->_killScrollView == dragging)
  {
    [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  if (self->_killScrollView == decelerating)
  {
    [(SBFluidSwitcherItemContainer *)self _notifyDelegateScrollViewDidChange];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_killScrollView == decelerating)
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

- (BOOL)_scrollViewShouldPanGestureTryToBegin:(id)begin
{
  v22 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  panGestureRecognizer = [beginCopy panGestureRecognizer];
  [panGestureRecognizer translationInView:beginCopy];
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

- (void)_handleHoverGesture:(id)gesture
{
  v18 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v5 = [gestureCopy _activeEventOfType:11];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allTouches = [v5 allTouches];
  v7 = [allTouches countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allTouches);
        }

        if ([*(*(&v13 + 1) + 8 * i) type] == 2)
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [allTouches countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  state = [gestureCopy state];
  if ((state - 3) < 2)
  {
    v11 = 0;
LABEL_15:
    [(SBFluidSwitcherItemContainer *)self setHighlightedFromCursorHover:v11];
    goto LABEL_16;
  }

  if (state == 1)
  {
    v11 = 1;
    goto LABEL_15;
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containerSelectionStateChanged:self toState:objc_msgSend(gestureCopy hover:"state") pencilHover:{1, v7}];
}

- (id)initialCornerRadiusConfiguration
{
  v2 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithTopLeft:self->_contentCornerRadii.topLeft bottomLeft:self->_contentCornerRadii.bottomLeft bottomRight:self->_contentCornerRadii.bottomRight topRight:self->_contentCornerRadii.topRight];

  return v2;
}

- (SBDragPreviewShadowParameters)initialDiffuseShadowParameters
{
  _shadowView = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  _diffuseShadowView = [_shadowView _diffuseShadowView];
  layer = [_diffuseShadowView layer];

  if (layer)
  {
    [layer shadowOpacity];
    [layer shadowRadius];
    [layer shadowOffset];
  }

  return result;
}

- (SBDragPreviewShadowParameters)initialRimShadowParameters
{
  _shadowView = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  _rimShadowView = [_shadowView _rimShadowView];
  layer = [_rimShadowView layer];

  if (layer)
  {
    [layer shadowOpacity];
    [layer shadowRadius];
    [layer shadowOffset];
  }

  return result;
}

- (id)initialDiffuseShadowFilters
{
  _shadowView = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  _diffuseShadowView = [_shadowView _diffuseShadowView];
  layer = [_diffuseShadowView layer];
  filters = [layer filters];

  return filters;
}

- (id)initialRimShadowFilters
{
  _shadowView = [(SBAppSwitcherPageView *)self->_pageView _shadowView];
  _rimShadowView = [_shadowView _rimShadowView];
  layer = [_rimShadowView layer];
  filters = [layer filters];

  return filters;
}

- (void)setDragging:(BOOL)dragging
{
  if (self->_dragging != dragging)
  {
    self->_dragging = dragging;
    [(SBFluidSwitcherItemContainer *)self _updateShadowVisibility];
  }
}

- (void)_updateForPointerHoveringOverEdge:(unint64_t)edge
{
  if (self->_hoveringOverEdge != edge)
  {
    self->_hoveringOverEdge = edge;
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

- (BOOL)appSwitcherPageView:(id)view shouldBeginPointerInteractionAtLocation:(CGPoint)location window:(id)window
{
  y = location.y;
  x = location.x;
  windowCopy = window;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained hitTestedToTopAffordance:windowCopy window:self ofItemContainer:{x, y}] & 1) != 0 || (objc_msgSend(WeakRetained, "hitTestedToFloatingElement:window:ofItemContainer:", windowCopy, self, x, y) & 1) != 0 || (objc_msgSend(WeakRetained, "hitTestedToSplitViewHandle:window:", windowCopy, x, y) & 1) != 0 || (objc_msgSend(WeakRetained, "hitTestedToHomeAffordance:window:ofItemContainer:", windowCopy, self, x, y))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [WeakRetained hitTestedToSlideOverTongue:windowCopy window:{x, y}] ^ 1;
  }

  return v10;
}

- (void)genieEffectViewDidInvalidate:(id)invalidate
{
  [(SBFluidSwitcherItemContainer *)self _setWantsOverlayPortalView:0];
  genieEffectView = self->_genieEffectView;
  v5 = MEMORY[0x277CBEBF8];

  [(SBSwitcherGenieEffectView *)genieEffectView setPortaledContentViews:v5];
}

- (void)_setWantsOverlayPortalView:(BOOL)view
{
  if (self->_wantsOverlayPortal != view || ([(SBFluidSwitcherItemContainer *)self overlayPortalView], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_wantsOverlayPortal = view;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained itemContainerDidUpdateWantsOverlayPortal:self];
  }
}

- (void)setOverlayPortalView:(id)view
{
  v9[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (self->_overlayPortalView != viewCopy)
  {
    objc_storeStrong(&self->_overlayPortalView, view);
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