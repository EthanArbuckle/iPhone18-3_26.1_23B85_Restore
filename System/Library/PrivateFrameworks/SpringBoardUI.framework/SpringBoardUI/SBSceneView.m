@interface SBSceneView
- (BOOL)_addContentLikeViewToHierarchyForTransitionIfPossible:(id)a3;
- (BOOL)_presenterMayBeZombified;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)_shouldViewBeInHierarchyForTransition:(id)a3;
- (CGSize)referenceSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (SBSceneView)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 hostRequester:(id)a7;
- (SBSceneViewDelegate)delegate;
- (UIEdgeInsets)_contentContainerEdgeInsets;
- (id)_addStateCaptureHandler;
- (id)_viewForDisplayMode:(int64_t)a3;
- (id)acquireLiveContentDisableAssertionForReason:(id)a3;
- (int64_t)_bestDisplayModeLessThanMode:(int64_t)a3;
- (int64_t)preferredStatusBarStyle;
- (void)_clearSnapshotViews;
- (void)_configureBackgroundColorWithLiveSnapshotPresentationContext:(id)a3;
- (void)_configureLiveHostView;
- (void)_configureLiveSnapshotView;
- (void)_configurePlaceholderContentView;
- (void)_configureSceneLiveHostView:(id)a3;
- (void)_configureViewForEffectiveDisplayMode:(int64_t)a3;
- (void)_containerContentWrapperInterfaceOrientationChangedTo:(int64_t)a3;
- (void)_enableHostingIfPossible;
- (void)_evaluateEffectiveDisplayModeWithAnimationFactory:(id)a3 completion:(id)a4;
- (void)_hotSwapLiveSnapshotView;
- (void)_hotSwapPlaceholderContentView;
- (void)_invalidateContentPrefersToDisableClipping;
- (void)_invalidateHostPresenter;
- (void)_layoutLiveHostView:(id)a3;
- (void)_layoutLiveSnapshotView:(id)a3;
- (void)_modifyPresentationContext:(id)a3;
- (void)_placeholderVisibilityChanged;
- (void)_recheckLiveContentDependencies;
- (void)_refresh;
- (void)_reloadPlaceholderContentIfNecessary;
- (void)_setOrientation:(int64_t)a3;
- (void)_transitionFromDisplayMode:(int64_t)a3 showingView:(id)a4 toDisplayMode:(int64_t)a5 showingView:(id)a6 withAnimationFactory:(id)a7 completion:(id)a8;
- (void)_updateBackgroundColor;
- (void)_updateBackgroundViewContainment;
- (void)_updateFlattenMode;
- (void)_updateFullyOccluded;
- (void)_updateLiveContentRendering;
- (void)_updateLiveViewContainment;
- (void)_updateReferenceSize:(CGSize)a3 andOrientation:(int64_t)a4;
- (void)_updateResizesHostedContext;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
- (void)placeholderContentViewProviderContentDidUpdate:(id)a3;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4;
- (void)setAsynchronousOpaque:(BOOL)a3;
- (void)setBackgroundView:(id)a3;
- (void)setCustomContentView:(id)a3;
- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5;
- (void)setFlattenMode:(id)a3;
- (void)setFullyOccluded:(BOOL)a3;
- (void)setMinificationFilter:(id)a3;
- (void)setPlaceholderContentContext:(id)a3;
- (void)setPlaceholderContentEnabled:(BOOL)a3;
- (void)setPlaceholderContentProvider:(id)a3;
- (void)setRendersAsynchronously:(BOOL)a3;
- (void)setResizesHostedContext:(BOOL)a3;
@end

@implementation SBSceneView

- (void)_invalidateContentPrefersToDisableClipping
{
  v3 = [(SBSceneView *)self _contentPrefersToDisableClipping]^ 1;
  [(SBSceneView *)self setClipsToBounds:v3];
  [(UIView *)self->_sceneContentContainerView setClipsToBounds:v3];
  presenter = self->_presenter;
  if (presenter)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__SBSceneView__invalidateContentPrefersToDisableClipping__block_invoke;
    v5[3] = &__block_descriptor_33_e43_v16__0__UIMutableScenePresentationContext_8l;
    v6 = v3;
    [(UIScenePresenter *)presenter modifyPresentationContext:v5];
  }
}

- (BOOL)_presenterMayBeZombified
{
  if (![(UIScenePresenter *)self->_presenter isHosting])
  {
    return 0;
  }

  v3 = [(UIScenePresenter *)self->_presenter presentationContext];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 zombifiesHostedContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_placeholderVisibilityChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v4 sceneView:self changedPreferredStatusBarStyleTo:{-[SBSceneView preferredStatusBarStyle](self, "preferredStatusBarStyle", v4)}];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_updateBackgroundViewContainment
{
  effectiveDisplayMode = self->_effectiveDisplayMode;
  v4 = [(UIScenePresentation *)self->_hostView backgroundView];
  v5 = v4;
  if (effectiveDisplayMode == 4)
  {
    backgroundView = self->_backgroundView;

    if (v5 != backgroundView)
    {
      hostView = self->_hostView;
      v8 = self->_backgroundView;

      [(UIScenePresentation *)hostView setBackgroundView:v8];
    }
  }

  else
  {

    if (v5)
    {
      [(UIScenePresentation *)self->_hostView setBackgroundView:0];
    }

    sceneContentContainerView = self->_sceneContentContainerView;
    v10 = self->_backgroundView;

    [(UIView *)sceneContentContainerView insertSubview:v10 atIndex:0];
  }
}

- (id)_addStateCaptureHandler
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"SpringBoard - %@ - %p", v5, self];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v10, &location);
  v8 = BSLogAddStateCaptureBlockWithTitle();
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v8;
}

- (void)_reloadPlaceholderContentIfNecessary
{
  if (self->_effectiveDisplayMode != 2)
  {
    return;
  }

  v6 = self->_placeholderContentView;
  [(SBScenePlaceholderContentView *)self->_placeholderContentView removeFromSuperview];
  placeholderContentView = self->_placeholderContentView;
  self->_placeholderContentView = 0;

  [(SBSceneView *)self _configurePlaceholderContentView];
  v4 = self->_placeholderContentView;
  if (v4)
  {
    [(SBSceneView *)self _transitionFromDisplayMode:self->_effectiveDisplayMode showingView:v6 toDisplayMode:self->_effectiveDisplayMode showingView:v4 withAnimationFactory:0 completion:0];
LABEL_7:
    v5 = v6;
    goto LABEL_8;
  }

  [(SBSceneView *)self _evaluateEffectiveDisplayModeWithAnimationFactory:0 completion:0];
  v5 = v6;
  if (v6)
  {
    [(SBSceneView *)self _placeholderVisibilityChanged];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_updateBackgroundColor
{
  if ([(SBSceneView *)self _wantsBlackBackground])
  {
    v3 = [MEMORY[0x277D75348] blackColor];
    [(SBSceneView *)self setBackgroundColor:v3];
  }

  else
  {

    [(SBSceneView *)self setBackgroundColor:0];
  }
}

- (void)_configureLiveHostView
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_configurePlaceholderContentView
{
  if (!self->_placeholderContentView && self->_placeholderContentEnabled)
  {
    v3 = [(SBScenePlaceholderContentViewProvider *)self->_placeholderContentProvider sceneView:self requestsPlaceholderContentViewWithContext:self->_placeholderContentContext];
    placeholderContentView = self->_placeholderContentView;
    self->_placeholderContentView = v3;

    [(SBScenePlaceholderContentView *)self->_placeholderContentView setAlpha:0.0];
    [(UIView *)self->_sceneContentContainerView addSubview:self->_placeholderContentView];

    [(SBSceneView *)self _placeholderVisibilityChanged];
  }
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = SBSceneView;
  [(SBSceneView *)&v42 layoutSubviews];
  [(SBSceneView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBSceneView *)self _contentContainerEdgeInsets];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v41 = v4 + v13;
  [(UIView *)self->_sceneContentContainerView setFrame:v4 + v13, v12, v15, v17];
  [(SBSceneView *)self _contentContainerCornerRadius];
  v19 = v18;
  v20 = [(UIView *)self->_sceneContentContainerView layer];
  v21 = v20;
  if (v19 <= 0.0)
  {
    [v20 setCornerRadius:0.0];
  }

  else
  {
    [v20 setCornerRadius:v19];

    v21 = [(UIView *)self->_sceneContentContainerView layer];
    [v21 setCornerCurve:*MEMORY[0x277CDA138]];
  }

  [(UIView *)self->_sceneContentContainerView bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(UIView *)self->_customContentView superview];
  sceneContentContainerView = self->_sceneContentContainerView;

  if (v30 == sceneContentContainerView)
  {
    [(UIView *)self->_customContentView setFrame:v23, v25, v27, v29];
  }

  if ([(UIView *)self->_backgroundView isDescendantOfView:self->_sceneContentContainerView]|| ([(UIScenePresentation *)self->_hostView backgroundView], v32 = objc_claimAutoreleasedReturnValue(), backgroundView = self->_backgroundView, v32, v32 == backgroundView))
  {
    [(UIView *)self->_backgroundView setFrame:v23, v25, v27, v29];
    v34 = [(UIView *)self->_backgroundView superview];
    v35 = self->_sceneContentContainerView;

    if (v34 == v35)
    {
      [(UIView *)self->_sceneContentContainerView sendSubviewToBack:self->_backgroundView];
    }
  }

  v36 = [(SBScenePlaceholderContentView *)self->_placeholderContentView superview];
  v37 = self->_sceneContentContainerView;

  if (v36 == v37)
  {
    [(SBScenePlaceholderContentView *)self->_placeholderContentView setFrame:v23, v25, v27, v29];
  }

  [(SBSceneView *)self _layoutLiveSnapshotView:self->_liveSnapshotView];
  [(SBSceneView *)self _layoutLiveHostView:self->_hostView];
  v38 = [(UIView *)self->_crossfadeView superview];

  if (v38 == self)
  {
    [(UIView *)self->_crossfadeView setFrame:v41, v12, v15, v17];
    v39 = [(UIView *)self->_crossfadeView layer];
    v40 = v39;
    if (v19 <= 0.0)
    {
      [v39 setCornerRadius:0.0];
    }

    else
    {
      [v39 setCornerRadius:v19];

      v40 = [(UIView *)self->_crossfadeView layer];
      [v40 setCornerCurve:*MEMORY[0x277CDA138]];
    }
  }
}

- (void)_updateResizesHostedContext
{
  presenter = self->_presenter;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SBSceneView__updateResizesHostedContext__block_invoke;
  v3[3] = &unk_27836AEC0;
  v3[4] = self;
  [(UIScenePresenter *)presenter modifyPresentationContext:v3];
}

- (void)_updateLiveContentRendering
{
  presenter = self->_presenter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SBSceneView__updateLiveContentRendering__block_invoke;
  v8[3] = &unk_27836AEC0;
  v8[4] = self;
  [(UIScenePresenter *)presenter modifyPresentationContext:v8];
  if (self->_rendersAsynchronously)
  {
    minificationFilter = self->_minificationFilter;
  }

  else
  {
    minificationFilter = 0;
  }

  sceneContentContainerView = self->_sceneContentContainerView;
  v6 = minificationFilter;
  v7 = [(UIView *)sceneContentContainerView layer];
  [v7 setMinificationFilter:v6];
}

void __42__SBSceneView__updateLiveContentRendering__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 asynchronousRenderingOptions];
  v7 = v4;
  if (v4)
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D75770]);
  }

  v6 = v5;
  [v5 setOpaque:*(*(a1 + 32) + 578)];
  [v3 setAsynchronousRenderingOptions:v6];
  [v3 setRenderingMode:*(*(a1 + 32) + 577)];
}

- (void)_updateFullyOccluded
{
  presenter = self->_presenter;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__SBSceneView__updateFullyOccluded__block_invoke;
  v3[3] = &unk_27836AEC0;
  v3[4] = self;
  [(UIScenePresenter *)presenter modifyPresentationContext:v3];
}

uint64_t __35__SBSceneView__updateFullyOccluded__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__SBSceneView__updateFullyOccluded__block_invoke_2;
  v3[3] = &unk_27836AF88;
  v3[4] = *(a1 + 32);
  return [a2 modifyWindowLayerPresentationContextWithBlock:v3];
}

void __35__SBSceneView__updateFullyOccluded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setFullyOccluded:*(*(a1 + 32) + 580)];
  }
}

- (void)_updateFlattenMode
{
  if (SBFIsWindowFlatteningAvailable())
  {
    presenter = self->_presenter;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __33__SBSceneView__updateFlattenMode__block_invoke;
    v4[3] = &unk_27836AEC0;
    v4[4] = self;
    [(UIScenePresenter *)presenter modifyPresentationContext:v4];
  }
}

uint64_t __33__SBSceneView__updateFlattenMode__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__SBSceneView__updateFlattenMode__block_invoke_2;
  v3[3] = &unk_27836AF88;
  v3[4] = *(a1 + 32);
  return [a2 modifyWindowLayerPresentationContextWithBlock:v3];
}

void __33__SBSceneView__updateFlattenMode__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setFlattenMode:*(*(a1 + 32) + 600)];
  }
}

- (void)_enableHostingIfPossible
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_recheckLiveContentDependencies
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__SBSceneView__recheckLiveContentDependencies__block_invoke;
  v12[3] = &unk_27836AFB0;
  v12[4] = self;
  v3 = MEMORY[0x223D63700](v12, a2);
  effectiveDisplayMode = self->_effectiveDisplayMode;
  if (self->_requestedDisplayMode != 4)
  {
    if (effectiveDisplayMode != 4)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v5 = [(SBSceneHandle *)self->_sceneHandle isContentReady];
  v6 = v5;
  if ((effectiveDisplayMode == 4) != v5)
  {
    v7 = [objc_opt_class() defaultDisplayModeAnimationFactory];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (v6)
      {
        v9 = 4;
      }

      else
      {
        v9 = [(SBSceneView *)self _bestDisplayModeLessThanMode:4];
      }

      v11 = [WeakRetained animationFactoryForImplicitTransitionFromMode:self->_effectiveDisplayMode toMode:v9 defaultFactory:v7];

      v7 = v11;
    }

    [(SBSceneView *)self _evaluateEffectiveDisplayModeWithAnimationFactory:v7 completion:0];

    goto LABEL_17;
  }

  v10 = !v5;
  if (effectiveDisplayMode != 4)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0 && !self->_hostView)
  {
LABEL_8:
    v3[2](v3);
  }

LABEL_17:
}

- (void)_clearSnapshotViews
{
  [(SBScenePlaceholderContentView *)self->_placeholderContentView removeFromSuperview];
  placeholderContentView = self->_placeholderContentView;
  self->_placeholderContentView = 0;

  [(SBSceneView *)self _placeholderVisibilityChanged];
  [(UISceneSnapshotPresentation *)self->_liveSnapshotView removeFromSuperview];
  liveSnapshotView = self->_liveSnapshotView;
  self->_liveSnapshotView = 0;

  [(SBSceneView *)self _configureBackgroundColorWithLiveSnapshotPresentationContext:0];
}

- (int64_t)preferredStatusBarStyle
{
  placeholderContentView = self->_placeholderContentView;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return -1;
  }

  v4 = self->_placeholderContentView;

  return [(SBScenePlaceholderContentView *)v4 statusBarStyle];
}

- (SBSceneView)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 hostRequester:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a7;
  if (!v14)
  {
    [SBSceneView initWithSceneHandle:referenceSize:contentOrientation:containerOrientation:hostRequester:];
  }

  if ((a6 - 3) >= 2)
  {
    v16 = height;
  }

  else
  {
    v16 = width;
  }

  if ((a6 - 3) >= 2)
  {
    v17 = width;
  }

  else
  {
    v17 = height;
  }

  v18 = *MEMORY[0x277CBF348];
  v19 = *(MEMORY[0x277CBF348] + 8);
  v40.receiver = self;
  v40.super_class = SBSceneView;
  v20 = [(SBSceneView *)&v40 initWithFrame:v18, v19, v17, v16];
  v21 = v20;
  if (v20)
  {
    [(SBSceneView *)v20 setOpaque:0];
    objc_storeStrong(&v21->_sceneHandle, a3);
    v21->_orientation = a5;
    v21->_placeholderContentEnabled = 1;
    v21->_requestedDisplayMode = 0;
    v21->_effectiveDisplayMode = 0;
    v21->_referenceSize.width = width;
    v21->_referenceSize.height = height;
    objc_storeStrong(&v21->_flattenMode, *MEMORY[0x277CDA9E8]);
    v22 = objc_alloc(MEMORY[0x277D75D18]);
    [(SBSceneView *)v21 bounds];
    v23 = [v22 initWithFrame:?];
    sceneContentContainerView = v21->_sceneContentContainerView;
    v21->_sceneContentContainerView = v23;

    [(SBSceneView *)v21 _invalidateContentPrefersToDisableClipping];
    [(SBSceneView *)v21 addSubview:v21->_sceneContentContainerView];
    [(SBSceneView *)v21 setBackgroundView:0];
    if (v15)
    {
      v25 = [v15 sceneViewPresentationPriority:v21];
    }

    else
    {
      v25 = 0;
    }

    v21->_hostingPriority = v25;
    v26 = [v15 sceneViewPresentationIdentifier:v21];
    v27 = v26;
    v28 = @"SBApplicationSceneView";
    if (v26)
    {
      v28 = v26;
    }

    v29 = v28;

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v31 = ++initWithSceneHandle_referenceSize_contentOrientation_containerOrientation_hostRequester____RequesterCounter;
    if (v15)
    {
      v32 = [v30 initWithFormat:@"%@:%p-SBApplicationSceneView:%p-%llu", v29, v15, v21, v31];
    }

    else
    {
      v32 = [v30 initWithFormat:@"%@-%p-%llu", v29, v21, v31, v39];
    }

    v33 = v32;

    hostingIdentifier = v21->_hostingIdentifier;
    v21->_hostingIdentifier = v33;

    [(SBSceneHandle *)v21->_sceneHandle addObserver:v21];
    v35 = [v14 sceneIfExists];
    if (v35)
    {
      [(SBSceneView *)v21 sceneHandle:v14 didCreateScene:v35];
    }

    v36 = [(SBSceneView *)v21 _addStateCaptureHandler];
    stateCaptureInvalidatable = v21->_stateCaptureInvalidatable;
    v21->_stateCaptureInvalidatable = v36;
  }

  return v21;
}

- (void)dealloc
{
  [(SBSceneHandle *)self->_sceneHandle removeObserver:self];
  [(SBSceneView *)self _invalidateHostPresenter];
  v3.receiver = self;
  v3.super_class = SBSceneView;
  [(SBSceneView *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBSceneHandle *)self->_sceneHandle sceneIdentifier];
  v5 = [v3 appendObject:v4 withName:@"sceneId"];

  v6 = [v3 appendPointer:self->_sceneHandle withName:@"sceneHandle"];
  v7 = [(SBSceneView *)self displayMode]- 1;
  if (v7 > 3)
  {
    v8 = @"None";
  }

  else
  {
    v8 = off_27836AFF8[v7];
  }

  v9 = [v3 appendObject:v8 withName:@"requestedDisplayMode"];
  v10 = [(SBSceneView *)self effectiveDisplayMode]- 1;
  if (v10 > 3)
  {
    v11 = @"None";
  }

  else
  {
    v11 = off_27836AFF8[v10];
  }

  v12 = [v3 appendObject:v11 withName:@"effectiveDisplayMode"];
  v13 = [(NSCountedSet *)self->_liveContentDisableReasons allObjects];
  [v3 appendArraySection:v13 withName:@"liveContentDisableAssertions" skipIfEmpty:1];

  v14 = [v3 appendBool:self->_rendersAsynchronously withName:@"rendersAsynchronously"];
  v15 = [v3 appendBool:self->_fullyOccluded withName:@"fullyOccluded"];
  v16 = [v3 appendObject:self->_flattenMode withName:@"flattenMode"];
  v17 = [(UIScenePresentation *)self->_hostView layer];
  v18 = objc_opt_class();
  v19 = v17;
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    v22 = [v3 activeMultilinePrefix];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __26__SBSceneView_description__block_invoke;
    v28 = &unk_27836AE50;
    v29 = v3;
    v30 = v21;
    [v29 appendBodySectionWithName:@"window layer" multilinePrefix:v22 block:&v25];
  }

  v23 = [v3 build];

  return v23;
}

void __26__SBSceneView_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) postCommitDuration];
  v3 = [v2 appendTimeInterval:@"postCommitDuration" withName:1 decomposeUnits:?];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"ignoreAnimations"), @"ignoreAnimations"}];
  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"fullyOccluded"), @"fullyOccluded"}];
  v6 = *(a1 + 32);
  v8 = [*(a1 + 40) flattenMode];
  v7 = [v6 appendObject:v8 withName:@"flattenMode"];
}

- (void)setCustomContentView:(id)a3
{
  v8 = a3;
  v5 = self->_customContentView;
  if (v5 != v8)
  {
    objc_storeStrong(&self->_customContentView, a3);
    customContentView = self->_customContentView;
    [(SBSceneView *)self bounds];
    [(UIView *)customContentView setFrame:?];
    if (self->_effectiveDisplayMode == 1)
    {
      backgroundView = v5;
      if (!v5)
      {
        backgroundView = self->_backgroundView;
      }

      [(SBSceneView *)self _transitionFromDisplayMode:1 showingView:backgroundView toDisplayMode:1 showingView:self->_customContentView withAnimationFactory:0 completion:0];
    }

    else
    {
      [(UIView *)self->_customContentView setAlpha:0.0];
      [(UIView *)self->_sceneContentContainerView addSubview:self->_customContentView];
    }

    [(UIView *)v5 removeFromSuperview];
  }
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v4)
  {
    obj = v4;
    [(UIView *)backgroundView removeFromSuperview];
    v6 = obj;
    if (!obj)
    {
      v7 = objc_alloc(MEMORY[0x277D75D18]);
      [(SBSceneView *)self bounds];
      obja = [v7 initWithFrame:?];
      [(UIView *)obja setBackgroundColor:0];
      v6 = obja;
    }

    objb = v6;
    objc_storeStrong(&self->_backgroundView, v6);
    backgroundView = [(SBSceneView *)self _updateBackgroundViewContainment];
    v4 = objb;
  }

  MEMORY[0x2821F96F8](backgroundView, v4);
}

- (void)setPlaceholderContentProvider:(id)a3
{
  v5 = a3;
  placeholderContentProvider = self->_placeholderContentProvider;
  if (placeholderContentProvider != v5)
  {
    v7 = v5;
    [(SBScenePlaceholderContentViewProvider *)placeholderContentProvider setDelegate:0];
    objc_storeStrong(&self->_placeholderContentProvider, a3);
    [(SBScenePlaceholderContentViewProvider *)self->_placeholderContentProvider setDelegate:self];
    placeholderContentProvider = [(SBSceneView *)self _reloadPlaceholderContentIfNecessary];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](placeholderContentProvider, v5);
}

- (void)setPlaceholderContentContext:(id)a3
{
  v5 = a3;
  if (self->_placeholderContentContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderContentContext, a3);
    [(SBSceneView *)self _reloadPlaceholderContentIfNecessary];
    v5 = v6;
  }
}

- (void)setPlaceholderContentEnabled:(BOOL)a3
{
  if (self->_placeholderContentEnabled != a3)
  {
    self->_placeholderContentEnabled = a3;
    [(SBSceneView *)self _reloadPlaceholderContentIfNecessary];
  }
}

- (void)setMinificationFilter:(id)a3
{
  v4 = a3;
  minificationFilter = self->_minificationFilter;
  if (minificationFilter != v4)
  {
    v8 = v4;
    minificationFilter = [minificationFilter isEqual:v4];
    v4 = v8;
    if ((minificationFilter & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_minificationFilter;
      self->_minificationFilter = v6;

      minificationFilter = [(SBSceneView *)self _updateLiveContentRendering];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](minificationFilter, v4);
}

- (void)setRendersAsynchronously:(BOOL)a3
{
  if (self->_rendersAsynchronously != a3)
  {
    self->_rendersAsynchronously = a3;
    [(SBSceneView *)self _updateLiveContentRendering];
  }
}

- (void)setAsynchronousOpaque:(BOOL)a3
{
  if (self->_asynchronousOpaque != a3)
  {
    self->_asynchronousOpaque = a3;
    [(SBSceneView *)self _updateLiveContentRendering];
  }
}

- (void)setResizesHostedContext:(BOOL)a3
{
  if (self->_resizesHostedContext != a3)
  {
    self->_resizesHostedContext = a3;
    [(SBSceneView *)self _updateResizesHostedContext];
  }
}

- (void)setFullyOccluded:(BOOL)a3
{
  if (self->_fullyOccluded != a3)
  {
    self->_fullyOccluded = a3;
    [(SBSceneView *)self _updateFullyOccluded];
  }
}

- (void)setFlattenMode:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [SBSceneView setFlattenMode:];
    v4 = 0;
  }

  if (![(NSString *)self->_flattenMode isEqualToString:v4])
  {
    v5 = [v7 copy];
    flattenMode = self->_flattenMode;
    self->_flattenMode = v5;

    [(SBSceneView *)self _updateFlattenMode];
  }
}

- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5
{
  v9 = a4;
  v8 = a5;
  if (self->_invalidated)
  {
    [SBSceneView setDisplayMode:animationFactory:completion:];
  }

  if (self->_requestedDisplayMode == a3)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    self->_requestedDisplayMode = a3;
    [(SBSceneView *)self _evaluateEffectiveDisplayModeWithAnimationFactory:v9 completion:v8];
  }
}

- (id)acquireLiveContentDisableAssertionForReason:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBSceneView acquireLiveContentDisableAssertionForReason:];
  }

  v5 = [v4 copy];

  liveContentDisableReasons = self->_liveContentDisableReasons;
  if (liveContentDisableReasons)
  {
    [(NSCountedSet *)liveContentDisableReasons addObject:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CCA940] setWithObject:v5];
    v8 = self->_liveContentDisableReasons;
    self->_liveContentDisableReasons = v7;
  }

  [(SBSceneView *)self _evaluateEffectiveDisplayModeWithAnimationFactory:0 completion:0];
  [(UIScenePresentation *)self->_hostView removeFromSuperview];
  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x277CF0CE8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__SBSceneView_acquireLiveContentDisableAssertionForReason___block_invoke;
  v13[3] = &unk_27836AE78;
  objc_copyWeak(&v15, &location);
  v10 = v5;
  v14 = v10;
  v11 = [v9 initWithIdentifier:@"SBSceneView.DisableLiveContent" forReason:v10 invalidationBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __59__SBSceneView_acquireLiveContentDisableAssertionForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[69] removeObject:*(a1 + 32)];
    [v3 _evaluateEffectiveDisplayModeWithAnimationFactory:0 completion:0];
    WeakRetained = v3;
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    self->_requestedDisplayMode = 0;
    v4 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
    [(SBSceneView *)self setBackgroundColor:v4];

    [(SBSceneView *)self _invalidateHostPresenter];
    [(SBSceneView *)self _clearSnapshotViews];
    [(SBScenePlaceholderContentViewProvider *)self->_placeholderContentProvider setDelegate:0];
    placeholderContentProvider = self->_placeholderContentProvider;
    self->_placeholderContentProvider = 0;

    [(UIView *)self->_customContentView removeFromSuperview];
    customContentView = self->_customContentView;
    self->_customContentView = 0;

    v7 = [(UIView *)self->_backgroundView superview];
    sceneContentContainerView = self->_sceneContentContainerView;

    if (v7 == sceneContentContainerView)
    {
      [(UIView *)self->_backgroundView removeFromSuperview];
    }

    backgroundView = self->_backgroundView;
    self->_backgroundView = 0;

    [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
    stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
    self->_stateCaptureInvalidatable = 0;

    sceneHandle = self->_sceneHandle;

    [(SBSceneHandle *)sceneHandle removeObserver:self];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_hostView)
  {
    self = self->_hostView;
  }

  [(SBSceneView *)self bounds:a3.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
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
    v7.super_class = SBSceneView;
    v5 = [(SBSceneView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_refresh
{
  effectiveDisplayMode = self->_effectiveDisplayMode;
  if (effectiveDisplayMode == 3)
  {
    [(SBSceneView *)self _hotSwapLiveSnapshotView];
  }

  else if (effectiveDisplayMode == 2)
  {
    [(SBSceneView *)self _hotSwapPlaceholderContentView];
  }

  [(SBSceneView *)self _updateBackgroundColor];
}

- (void)_configureSceneLiveHostView:(id)a3
{
  v6 = a3;
  v4 = [v6 superview];
  sceneContentContainerView = self->_sceneContentContainerView;

  if (v4 != sceneContentContainerView)
  {
    [(UIView *)self->_sceneContentContainerView addSubview:v6];
  }

  [(SBSceneView *)self _layoutLiveHostView:v6];
  [(SBSceneView *)self setNeedsLayout];
}

- (void)_layoutLiveHostView:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];
  sceneContentContainerView = self->_sceneContentContainerView;

  if (v5 == sceneContentContainerView)
  {
    [(UIView *)self->_sceneContentContainerView bounds];
    [v4 setFrame:?];
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBSceneView *)v4 _layoutLiveHostView:v7];
    }
  }
}

- (void)_layoutLiveSnapshotView:(id)a3
{
  v6 = a3;
  v4 = [v6 superview];
  sceneContentContainerView = self->_sceneContentContainerView;

  if (v4 == sceneContentContainerView)
  {
    [(UIView *)self->_sceneContentContainerView bounds];
    [v6 setFrame:?];
  }
}

- (UIEdgeInsets)_contentContainerEdgeInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_modifyPresentationContext:(id)a3
{
  v4 = a3;
  [v4 setClippingDisabled:{-[SBSceneView _contentPrefersToDisableClipping](self, "_contentPrefersToDisableClipping")}];
}

- (void)_updateReferenceSize:(CGSize)a3 andOrientation:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  if (a3.width == *MEMORY[0x277CBF3A8] && a3.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [SBSceneView _updateReferenceSize:andOrientation:];
  }

  if ((BSInterfaceOrientationIsValid() & 1) == 0)
  {
    [SBSceneView _updateReferenceSize:andOrientation:];
  }

  orientation = self->_orientation;
  v10 = self->_referenceSize.width;
  v11 = self->_referenceSize.height;
  self->_referenceSize.width = width;
  self->_referenceSize.height = height;
  [(SBSceneView *)self _setOrientation:a4];
  if ([(SBSceneView *)self effectiveDisplayMode]== 2)
  {
    v12 = orientation == a4 && v10 == width;
    if (!v12 || v11 != height)
    {

      [(SBSceneView *)self _hotSwapPlaceholderContentView];
    }
  }
}

- (void)_containerContentWrapperInterfaceOrientationChangedTo:(int64_t)a3
{
  placeholderContentView = self->_placeholderContentView;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_placeholderContentView;

    [(SBScenePlaceholderContentView *)v6 setContainerOrientation:a3];
  }
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v5 = [a4 uiPresentationManager];
  v6 = [v5 createPresenterWithIdentifier:self->_hostingIdentifier priority:self->_hostingPriority];
  presenter = self->_presenter;
  self->_presenter = v6;

  v8 = self->_presenter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__SBSceneView_sceneHandle_didCreateScene___block_invoke;
  v9[3] = &unk_27836AEC0;
  v9[4] = self;
  [(UIScenePresenter *)v8 modifyPresentationContext:v9];
  [(SBSceneView *)self _updateResizesHostedContext];
  [(SBSceneView *)self _updateLiveContentRendering];
  [(SBSceneView *)self _updateFullyOccluded];
  [(SBSceneView *)self _updateFlattenMode];
  [(SBSceneView *)self _enableHostingIfPossible];
}

void __42__SBSceneView_sceneHandle_didCreateScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAppearanceStyle:2];
  if (SBFIsWindowFlatteningAvailable())
  {
    [v3 setShouldSupportFlattening:1];
  }

  [*(a1 + 32) _modifyPresentationContext:v3];
}

- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_effectiveDisplayMode == 4 && [(SBSceneView *)self _presenterMayBeZombified])
  {
    [(SBSceneView *)self _recheckLiveContentDependencies];
  }

  else
  {
    [(SBSceneView *)self _invalidateHostPresenter];
  }
}

- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4
{
  if ([(SBSceneView *)self _shouldObserveSceneHostContentState:a3])
  {

    [(SBSceneView *)self _recheckLiveContentDependencies];
  }
}

- (void)placeholderContentViewProviderContentDidUpdate:(id)a3
{
  if (self->_placeholderContentProvider == a3)
  {
    [(SBSceneView *)self _reloadPlaceholderContentIfNecessary];
  }
}

- (void)_setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(SBSceneView *)self setNeedsLayout];
  }
}

- (void)_invalidateHostPresenter
{
  [(UIScenePresenter *)self->_presenter invalidate];
  presenter = self->_presenter;
  self->_presenter = 0;

  [(SBSceneView *)self _invalidateSceneLiveHostView:self->_hostView];
  [(UIScenePresentation *)self->_hostView removeFromSuperview];
  hostView = self->_hostView;
  self->_hostView = 0;
}

- (void)_evaluateEffectiveDisplayModeWithAnimationFactory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  for (i = self->_requestedDisplayMode; ; i = [(SBSceneView *)self _bestDisplayModeLessThanMode:i])
  {
    [(SBSceneView *)self _configureViewForEffectiveDisplayMode:i];
    if (!i)
    {
      break;
    }

    v9 = [(SBSceneView *)self _viewForDisplayMode:i];

    if (v9)
    {
      break;
    }
  }

  effectiveDisplayMode = self->_effectiveDisplayMode;
  if (effectiveDisplayMode == i)
  {
    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    self->_effectiveDisplayMode = i;
    [(SBSceneView *)self _updateBackgroundViewContainment];
    ++self->_inflightDisplayModeAnimations;
    v11 = [(SBSceneView *)self _viewForDisplayMode:effectiveDisplayMode];
    v12 = self->_effectiveDisplayMode;
    v13 = [(SBSceneView *)self _viewForDisplayMode:v12];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__SBSceneView__evaluateEffectiveDisplayModeWithAnimationFactory_completion___block_invoke;
    v14[3] = &unk_27836AEE8;
    v14[4] = self;
    v16 = i;
    v15 = v7;
    [(SBSceneView *)self _transitionFromDisplayMode:effectiveDisplayMode showingView:v11 toDisplayMode:v12 showingView:v13 withAnimationFactory:v6 completion:v14];
  }
}

uint64_t __76__SBSceneView__evaluateEffectiveDisplayModeWithAnimationFactory_completion___block_invoke(void *a1)
{
  --*(a1[4] + 560);
  v2 = a1[4];
  if (!*(v2 + 560))
  {
    v3 = *(v2 + 448);
    if (v3 == a1[6])
    {
      if (v3 == 4 || (([*(v2 + 464) deactivate], v2 = a1[4], v4 = *(v2 + 448), v4 != 4) ? (v5 = v4 == 1) : (v5 = 1), v5))
      {
        [v2 _clearSnapshotViews];
      }
    }
  }

  result = a1[5];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (int64_t)_bestDisplayModeLessThanMode:(int64_t)a3
{
  if ((a3 - 1) < 2 || !a3)
  {
    return 0;
  }

  if (a3 != 4)
  {
    return 2;
  }

  if ([(SBSceneView *)self _presenterMayBeZombified:v3])
  {
    return 3;
  }

  return 2;
}

- (id)_viewForDisplayMode:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v5 = 504;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_14;
      }

      v5 = 512;
    }

    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v5 = 520;
LABEL_12:
    v4 = *(&self->super.super.super.isa + v5);
    goto LABEL_14;
  }

  if (a3 == 4)
  {
    if ([(NSCountedSet *)self->_liveContentDisableReasons count]|| ![(SBSceneHandle *)self->_sceneHandle isContentReady])
    {
      v4 = 0;
    }

    else
    {
      v4 = [(SBSceneView *)self _transitionViewForHostView];
    }
  }

LABEL_14:

  return v4;
}

- (void)_transitionFromDisplayMode:(int64_t)a3 showingView:(id)a4 toDisplayMode:(int64_t)a5 showingView:(id)a6 withAnimationFactory:(id)a7 completion:(id)a8
{
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(SBSceneView *)self _viewForDisplayMode:a5];

  if (v19 != v16)
  {
    [SBSceneView _transitionFromDisplayMode:a5 showingView:self toDisplayMode:a2 showingView:v16 withAnimationFactory:? completion:?];
  }

  v20 = [(SBSceneView *)self window];
  v21 = v20;
  if (!v17)
  {
    goto LABEL_8;
  }

  if (!v20 || ([v20 isHidden] & 1) != 0 || -[SBSceneView isHiddenOrHasHiddenAncestor](self, "isHiddenOrHasHiddenAncestor"))
  {

    v17 = 0;
LABEL_8:
    if (v16)
    {
      v22 = [v16 superview];

      if (v22 != self)
      {
        [(SBSceneView *)self _addContentLikeViewToHierarchyForTransitionIfPossible:v16];
      }
    }

    [v16 setAlpha:1.0];
    if (v18)
    {
      v18[2](v18);
    }

    goto LABEL_13;
  }

  if (a3 == 4 && a5 == 3)
  {
    goto LABEL_8;
  }

  if (v15 && v16)
  {
    v23 = [SBCrossfadeView crossfadeViewWithStartView:v15 endView:v16 translucent:0];
    [v23 setClipsToBounds:1];
    [v23 setAnimationFactory:v17];
    [(SBSceneView *)self insertSubview:v23 aboveSubview:self->_sceneContentContainerView];
    [(UIView *)self->_crossfadeView removeFromSuperview];
    objc_storeStrong(&self->_crossfadeView, v23);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __112__SBSceneView__transitionFromDisplayMode_showingView_toDisplayMode_showingView_withAnimationFactory_completion___block_invoke;
    v35[3] = &unk_27836AF10;
    v36 = v23;
    v37 = self;
    v38 = v15;
    v39 = v16;
    v40 = v18;
    v24 = v23;
    [v24 crossfadeWithCompletion:v35];
  }

  else
  {
    if (v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = v16;
    }

    v26 = v25;
    v27 = v26;
    if (v26)
    {
      if (v26 == v16)
      {
        [(SBSceneView *)self _addContentLikeViewToHierarchyForTransitionIfPossible:v16];
      }

      if (v15)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = 1.0;
      }

      v29 = MEMORY[0x277CF0D38];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __112__SBSceneView__transitionFromDisplayMode_showingView_toDisplayMode_showingView_withAnimationFactory_completion___block_invoke_2;
      v32[3] = &unk_27836AF38;
      v33 = v27;
      v34 = v28;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __112__SBSceneView__transitionFromDisplayMode_showingView_toDisplayMode_showingView_withAnimationFactory_completion___block_invoke_3;
      v30[3] = &unk_27836AF60;
      v31 = v18;
      [v29 animateWithFactory:v17 actions:v32 completion:v30];
    }

    else if (v18)
    {
      v18[2](v18);
    }
  }

LABEL_13:
}

uint64_t __112__SBSceneView__transitionFromDisplayMode_showingView_toDisplayMode_showingView_withAnimationFactory_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[67])
  {
    [v2 _updateBackgroundViewContainment];
    [*(a1 + 40) _addContentLikeViewToHierarchyForTransitionIfPossible:*(a1 + 48)];
    [*(a1 + 40) _addContentLikeViewToHierarchyForTransitionIfPossible:*(a1 + 56)];
    [*(a1 + 32) removeFromSuperview];
    v4 = *(a1 + 40);
    v5 = *(v4 + 536);
    *(v4 + 536) = 0;
  }

  result = *(a1 + 64);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t __112__SBSceneView__transitionFromDisplayMode_showingView_toDisplayMode_showingView_withAnimationFactory_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_shouldViewBeInHierarchyForTransition:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_customContentView == v4 || self->_placeholderContentView == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(SBSceneView *)self _transitionViewForHostView];
    v7 = v6 == v5;
  }

  return v7;
}

- (BOOL)_addContentLikeViewToHierarchyForTransitionIfPossible:(id)a3
{
  v4 = a3;
  if (v4 && [(SBSceneView *)self _shouldViewBeInHierarchyForTransition:v4])
  {
    [(UIView *)self->_sceneContentContainerView addSubview:v4];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureViewForEffectiveDisplayMode:(int64_t)a3
{
  switch(a3)
  {
    case 4:
      [(SBSceneView *)self _configureLiveHostView];
      break;
    case 3:
      [(SBSceneView *)self _configureLiveSnapshotView];
      break;
    case 2:
      [(SBSceneView *)self _configurePlaceholderContentView];
      break;
  }
}

- (void)_configureLiveSnapshotView
{
  if (!self->_liveSnapshotView && self->_presenter && ([(SBSceneHandle *)self->_sceneHandle isContentReady]|| [(SBSceneView *)self _presenterMayBeZombified]))
  {
    presenter = self->_presenter;
    v4 = objc_opt_respondsToSelector();
    v5 = self->_presenter;
    if (v4)
    {
      v6 = [(UIScenePresenter *)v5 captureSnapshotPresentationView];
    }

    else
    {
      v6 = [(UIScenePresenter *)v5 newSnapshotPresentationView];
    }

    liveSnapshotView = self->_liveSnapshotView;
    self->_liveSnapshotView = v6;

    [(UISceneSnapshotPresentation *)self->_liveSnapshotView setAlpha:0.0];
    v8 = [(UIScenePresenter *)self->_presenter presentationContext];
    [(SBSceneView *)self _configureBackgroundColorWithLiveSnapshotPresentationContext:v8];

    [(SBSceneView *)self _configureSceneLiveSnapshotView:self->_liveSnapshotView];
    [(SBSceneView *)self setNeedsLayout];

    [(SBSceneView *)self layoutIfNeeded];
  }
}

- (void)_updateLiveViewContainment
{
  if (self->_hostView)
  {
    [(SBSceneView *)self _configureSceneLiveHostView:?];
  }

  if (self->_liveSnapshotView)
  {

    [(SBSceneView *)self _configureSceneLiveSnapshotView:?];
  }
}

- (void)_configureBackgroundColorWithLiveSnapshotPresentationContext:(id)a3
{
  if (a3)
  {
    v4 = [a3 backgroundColorWhileHosting];
    [(SBSceneView *)self setBackgroundColor:v4];
  }

  else
  {

    [(SBSceneView *)self _updateBackgroundColor];
  }
}

- (void)_hotSwapPlaceholderContentView
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__SBSceneView__hotSwapPlaceholderContentView__block_invoke;
  v2[3] = &unk_27836AFB0;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

uint64_t __45__SBSceneView__hotSwapPlaceholderContentView__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearSnapshotViews];
  [*(a1 + 32) _configurePlaceholderContentView];
  [*(*(a1 + 32) + 512) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

- (void)_hotSwapLiveSnapshotView
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__SBSceneView__hotSwapLiveSnapshotView__block_invoke;
  v2[3] = &unk_27836AFB0;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __39__SBSceneView__hotSwapLiveSnapshotView__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 520);
  v5 = v2;
  [*(a1 + 32) _clearSnapshotViews];
  [*(a1 + 32) _configureLiveSnapshotView];
  v3 = *(a1 + 32);
  v4 = *(v3 + 520);
  if (!v4)
  {
    objc_storeStrong((v3 + 520), v2);
    [*(*(a1 + 32) + 496) addSubview:*(*(a1 + 32) + 520)];
    v4 = *(*(a1 + 32) + 520);
  }

  [v4 setAlpha:1.0];
  [*(a1 + 32) setNeedsLayout];
}

uint64_t __46__SBSceneView__recheckLiveContentDependencies__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configureLiveHostView];
  v2 = [*(a1 + 32) _transitionViewForHostView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 32);

  return [v3 setNeedsLayout];
}

__CFString *__38__SBSceneView__addStateCaptureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = &stru_282FD6FB8;
  }

  return v3;
}

- (SBSceneViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithSceneHandle:referenceSize:contentOrientation:containerOrientation:hostRequester:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"sceneHandle" object:? file:? lineNumber:? description:?];
}

- (void)setFlattenMode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"flattenMode" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayMode:animationFactory:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)acquireLiveContentDisableAssertionForReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_layoutLiveHostView:(NSObject *)a3 .cold.1(void *a1, uint64_t *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 superview];
  v6 = *a2;
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_21E74E000, a3, OS_LOG_TYPE_ERROR, "Live host view super view[%{public}@] not matching container view[%{public}@], frame not updated", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateReferenceSize:andOrientation:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateReferenceSize:andOrientation:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_transitionFromDisplayMode:(uint64_t)a3 showingView:(uint64_t)a4 toDisplayMode:showingView:withAnimationFactory:completion:.cold.1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = [MEMORY[0x277CCA890] currentHandler];
  if ((a1 - 1) > 3)
  {
    v7 = @"None";
  }

  else
  {
    v7 = off_27836AFF8[a1 - 1];
  }

  v8 = [a2 _viewForDisplayMode:a1];
  OUTLINED_FUNCTION_1();
  [v9 handleFailureInMethod:a4 object:v7 file:v8 lineNumber:? description:?];
}

@end