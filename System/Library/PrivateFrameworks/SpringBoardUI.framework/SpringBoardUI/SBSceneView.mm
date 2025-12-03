@interface SBSceneView
- (BOOL)_addContentLikeViewToHierarchyForTransitionIfPossible:(id)possible;
- (BOOL)_presenterMayBeZombified;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_shouldViewBeInHierarchyForTransition:(id)transition;
- (CGSize)referenceSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (SBSceneView)initWithSceneHandle:(id)handle referenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation hostRequester:(id)requester;
- (SBSceneViewDelegate)delegate;
- (UIEdgeInsets)_contentContainerEdgeInsets;
- (id)_addStateCaptureHandler;
- (id)_viewForDisplayMode:(int64_t)mode;
- (id)acquireLiveContentDisableAssertionForReason:(id)reason;
- (int64_t)_bestDisplayModeLessThanMode:(int64_t)mode;
- (int64_t)preferredStatusBarStyle;
- (void)_clearSnapshotViews;
- (void)_configureBackgroundColorWithLiveSnapshotPresentationContext:(id)context;
- (void)_configureLiveHostView;
- (void)_configureLiveSnapshotView;
- (void)_configurePlaceholderContentView;
- (void)_configureSceneLiveHostView:(id)view;
- (void)_configureViewForEffectiveDisplayMode:(int64_t)mode;
- (void)_containerContentWrapperInterfaceOrientationChangedTo:(int64_t)to;
- (void)_enableHostingIfPossible;
- (void)_evaluateEffectiveDisplayModeWithAnimationFactory:(id)factory completion:(id)completion;
- (void)_hotSwapLiveSnapshotView;
- (void)_hotSwapPlaceholderContentView;
- (void)_invalidateContentPrefersToDisableClipping;
- (void)_invalidateHostPresenter;
- (void)_layoutLiveHostView:(id)view;
- (void)_layoutLiveSnapshotView:(id)view;
- (void)_modifyPresentationContext:(id)context;
- (void)_placeholderVisibilityChanged;
- (void)_recheckLiveContentDependencies;
- (void)_refresh;
- (void)_reloadPlaceholderContentIfNecessary;
- (void)_setOrientation:(int64_t)orientation;
- (void)_transitionFromDisplayMode:(int64_t)mode showingView:(id)view toDisplayMode:(int64_t)displayMode showingView:(id)showingView withAnimationFactory:(id)factory completion:(id)completion;
- (void)_updateBackgroundColor;
- (void)_updateBackgroundViewContainment;
- (void)_updateFlattenMode;
- (void)_updateFullyOccluded;
- (void)_updateLiveContentRendering;
- (void)_updateLiveViewContainment;
- (void)_updateReferenceSize:(CGSize)size andOrientation:(int64_t)orientation;
- (void)_updateResizesHostedContext;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
- (void)placeholderContentViewProviderContentDidUpdate:(id)update;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state;
- (void)setAsynchronousOpaque:(BOOL)opaque;
- (void)setBackgroundView:(id)view;
- (void)setCustomContentView:(id)view;
- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion;
- (void)setFlattenMode:(id)mode;
- (void)setFullyOccluded:(BOOL)occluded;
- (void)setMinificationFilter:(id)filter;
- (void)setPlaceholderContentContext:(id)context;
- (void)setPlaceholderContentEnabled:(BOOL)enabled;
- (void)setPlaceholderContentProvider:(id)provider;
- (void)setRendersAsynchronously:(BOOL)asynchronously;
- (void)setResizesHostedContext:(BOOL)context;
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

  presentationContext = [(UIScenePresenter *)self->_presenter presentationContext];
  if (objc_opt_respondsToSelector())
  {
    zombifiesHostedContext = [presentationContext zombifiesHostedContext];
  }

  else
  {
    zombifiesHostedContext = 0;
  }

  return zombifiesHostedContext;
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
  backgroundView = [(UIScenePresentation *)self->_hostView backgroundView];
  v5 = backgroundView;
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
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SBSceneView *)self setBackgroundColor:blackColor];
  }

  else
  {

    [(SBSceneView *)self setBackgroundColor:0];
  }
}

- (void)_configureLiveHostView
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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
  layer = [(UIView *)self->_sceneContentContainerView layer];
  layer2 = layer;
  if (v19 <= 0.0)
  {
    [layer setCornerRadius:0.0];
  }

  else
  {
    [layer setCornerRadius:v19];

    layer2 = [(UIView *)self->_sceneContentContainerView layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];
  }

  [(UIView *)self->_sceneContentContainerView bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  superview = [(UIView *)self->_customContentView superview];
  sceneContentContainerView = self->_sceneContentContainerView;

  if (superview == sceneContentContainerView)
  {
    [(UIView *)self->_customContentView setFrame:v23, v25, v27, v29];
  }

  if ([(UIView *)self->_backgroundView isDescendantOfView:self->_sceneContentContainerView]|| ([(UIScenePresentation *)self->_hostView backgroundView], v32 = objc_claimAutoreleasedReturnValue(), backgroundView = self->_backgroundView, v32, v32 == backgroundView))
  {
    [(UIView *)self->_backgroundView setFrame:v23, v25, v27, v29];
    superview2 = [(UIView *)self->_backgroundView superview];
    v35 = self->_sceneContentContainerView;

    if (superview2 == v35)
    {
      [(UIView *)self->_sceneContentContainerView sendSubviewToBack:self->_backgroundView];
    }
  }

  superview3 = [(SBScenePlaceholderContentView *)self->_placeholderContentView superview];
  v37 = self->_sceneContentContainerView;

  if (superview3 == v37)
  {
    [(SBScenePlaceholderContentView *)self->_placeholderContentView setFrame:v23, v25, v27, v29];
  }

  [(SBSceneView *)self _layoutLiveSnapshotView:self->_liveSnapshotView];
  [(SBSceneView *)self _layoutLiveHostView:self->_hostView];
  superview4 = [(UIView *)self->_crossfadeView superview];

  if (superview4 == self)
  {
    [(UIView *)self->_crossfadeView setFrame:v41, v12, v15, v17];
    layer3 = [(UIView *)self->_crossfadeView layer];
    layer4 = layer3;
    if (v19 <= 0.0)
    {
      [layer3 setCornerRadius:0.0];
    }

    else
    {
      [layer3 setCornerRadius:v19];

      layer4 = [(UIView *)self->_crossfadeView layer];
      [layer4 setCornerCurve:*MEMORY[0x277CDA138]];
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
  layer = [(UIView *)sceneContentContainerView layer];
  [layer setMinificationFilter:v6];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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

  isContentReady = [(SBSceneHandle *)self->_sceneHandle isContentReady];
  v6 = isContentReady;
  if ((effectiveDisplayMode == 4) != isContentReady)
  {
    defaultDisplayModeAnimationFactory = [objc_opt_class() defaultDisplayModeAnimationFactory];
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

      v11 = [WeakRetained animationFactoryForImplicitTransitionFromMode:self->_effectiveDisplayMode toMode:v9 defaultFactory:defaultDisplayModeAnimationFactory];

      defaultDisplayModeAnimationFactory = v11;
    }

    [(SBSceneView *)self _evaluateEffectiveDisplayModeWithAnimationFactory:defaultDisplayModeAnimationFactory completion:0];

    goto LABEL_17;
  }

  v10 = !isContentReady;
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

- (SBSceneView)initWithSceneHandle:(id)handle referenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation hostRequester:(id)requester
{
  height = size.height;
  width = size.width;
  handleCopy = handle;
  requesterCopy = requester;
  if (!handleCopy)
  {
    [SBSceneView initWithSceneHandle:referenceSize:contentOrientation:containerOrientation:hostRequester:];
  }

  if ((containerOrientation - 3) >= 2)
  {
    v16 = height;
  }

  else
  {
    v16 = width;
  }

  if ((containerOrientation - 3) >= 2)
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
    objc_storeStrong(&v21->_sceneHandle, handle);
    v21->_orientation = orientation;
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
    if (requesterCopy)
    {
      v25 = [requesterCopy sceneViewPresentationPriority:v21];
    }

    else
    {
      v25 = 0;
    }

    v21->_hostingPriority = v25;
    v26 = [requesterCopy sceneViewPresentationIdentifier:v21];
    v27 = v26;
    v28 = @"SBApplicationSceneView";
    if (v26)
    {
      v28 = v26;
    }

    v29 = v28;

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v31 = ++initWithSceneHandle_referenceSize_contentOrientation_containerOrientation_hostRequester____RequesterCounter;
    if (requesterCopy)
    {
      v32 = [v30 initWithFormat:@"%@:%p-SBApplicationSceneView:%p-%llu", v29, requesterCopy, v21, v31];
    }

    else
    {
      v32 = [v30 initWithFormat:@"%@-%p-%llu", v29, v21, v31, v39];
    }

    v33 = v32;

    hostingIdentifier = v21->_hostingIdentifier;
    v21->_hostingIdentifier = v33;

    [(SBSceneHandle *)v21->_sceneHandle addObserver:v21];
    sceneIfExists = [handleCopy sceneIfExists];
    if (sceneIfExists)
    {
      [(SBSceneView *)v21 sceneHandle:handleCopy didCreateScene:sceneIfExists];
    }

    _addStateCaptureHandler = [(SBSceneView *)v21 _addStateCaptureHandler];
    stateCaptureInvalidatable = v21->_stateCaptureInvalidatable;
    v21->_stateCaptureInvalidatable = _addStateCaptureHandler;
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
  sceneIdentifier = [(SBSceneHandle *)self->_sceneHandle sceneIdentifier];
  v5 = [v3 appendObject:sceneIdentifier withName:@"sceneId"];

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
  allObjects = [(NSCountedSet *)self->_liveContentDisableReasons allObjects];
  [v3 appendArraySection:allObjects withName:@"liveContentDisableAssertions" skipIfEmpty:1];

  v14 = [v3 appendBool:self->_rendersAsynchronously withName:@"rendersAsynchronously"];
  v15 = [v3 appendBool:self->_fullyOccluded withName:@"fullyOccluded"];
  v16 = [v3 appendObject:self->_flattenMode withName:@"flattenMode"];
  layer = [(UIScenePresentation *)self->_hostView layer];
  v18 = objc_opt_class();
  v19 = layer;
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
    activeMultilinePrefix = [v3 activeMultilinePrefix];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __26__SBSceneView_description__block_invoke;
    v28 = &unk_27836AE50;
    v29 = v3;
    v30 = v21;
    [v29 appendBodySectionWithName:@"window layer" multilinePrefix:activeMultilinePrefix block:&v25];
  }

  build = [v3 build];

  return build;
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

- (void)setCustomContentView:(id)view
{
  viewCopy = view;
  v5 = self->_customContentView;
  if (v5 != viewCopy)
  {
    objc_storeStrong(&self->_customContentView, view);
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

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    obj = viewCopy;
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
    viewCopy = objb;
  }

  MEMORY[0x2821F96F8](backgroundView, viewCopy);
}

- (void)setPlaceholderContentProvider:(id)provider
{
  providerCopy = provider;
  placeholderContentProvider = self->_placeholderContentProvider;
  if (placeholderContentProvider != providerCopy)
  {
    v7 = providerCopy;
    [(SBScenePlaceholderContentViewProvider *)placeholderContentProvider setDelegate:0];
    objc_storeStrong(&self->_placeholderContentProvider, provider);
    [(SBScenePlaceholderContentViewProvider *)self->_placeholderContentProvider setDelegate:self];
    placeholderContentProvider = [(SBSceneView *)self _reloadPlaceholderContentIfNecessary];
    providerCopy = v7;
  }

  MEMORY[0x2821F96F8](placeholderContentProvider, providerCopy);
}

- (void)setPlaceholderContentContext:(id)context
{
  contextCopy = context;
  if (self->_placeholderContentContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_placeholderContentContext, context);
    [(SBSceneView *)self _reloadPlaceholderContentIfNecessary];
    contextCopy = v6;
  }
}

- (void)setPlaceholderContentEnabled:(BOOL)enabled
{
  if (self->_placeholderContentEnabled != enabled)
  {
    self->_placeholderContentEnabled = enabled;
    [(SBSceneView *)self _reloadPlaceholderContentIfNecessary];
  }
}

- (void)setMinificationFilter:(id)filter
{
  filterCopy = filter;
  minificationFilter = self->_minificationFilter;
  if (minificationFilter != filterCopy)
  {
    v8 = filterCopy;
    minificationFilter = [minificationFilter isEqual:filterCopy];
    filterCopy = v8;
    if ((minificationFilter & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_minificationFilter;
      self->_minificationFilter = v6;

      minificationFilter = [(SBSceneView *)self _updateLiveContentRendering];
      filterCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](minificationFilter, filterCopy);
}

- (void)setRendersAsynchronously:(BOOL)asynchronously
{
  if (self->_rendersAsynchronously != asynchronously)
  {
    self->_rendersAsynchronously = asynchronously;
    [(SBSceneView *)self _updateLiveContentRendering];
  }
}

- (void)setAsynchronousOpaque:(BOOL)opaque
{
  if (self->_asynchronousOpaque != opaque)
  {
    self->_asynchronousOpaque = opaque;
    [(SBSceneView *)self _updateLiveContentRendering];
  }
}

- (void)setResizesHostedContext:(BOOL)context
{
  if (self->_resizesHostedContext != context)
  {
    self->_resizesHostedContext = context;
    [(SBSceneView *)self _updateResizesHostedContext];
  }
}

- (void)setFullyOccluded:(BOOL)occluded
{
  if (self->_fullyOccluded != occluded)
  {
    self->_fullyOccluded = occluded;
    [(SBSceneView *)self _updateFullyOccluded];
  }
}

- (void)setFlattenMode:(id)mode
{
  modeCopy = mode;
  v7 = modeCopy;
  if (!modeCopy)
  {
    [SBSceneView setFlattenMode:];
    modeCopy = 0;
  }

  if (![(NSString *)self->_flattenMode isEqualToString:modeCopy])
  {
    v5 = [v7 copy];
    flattenMode = self->_flattenMode;
    self->_flattenMode = v5;

    [(SBSceneView *)self _updateFlattenMode];
  }
}

- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  if (self->_invalidated)
  {
    [SBSceneView setDisplayMode:animationFactory:completion:];
  }

  if (self->_requestedDisplayMode == mode)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    self->_requestedDisplayMode = mode;
    [(SBSceneView *)self _evaluateEffectiveDisplayModeWithAnimationFactory:factoryCopy completion:completionCopy];
  }
}

- (id)acquireLiveContentDisableAssertionForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBSceneView acquireLiveContentDisableAssertionForReason:];
  }

  v5 = [reasonCopy copy];

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

    superview = [(UIView *)self->_backgroundView superview];
    sceneContentContainerView = self->_sceneContentContainerView;

    if (superview == sceneContentContainerView)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->_hostView)
  {
    self = self->_hostView;
  }

  [(SBSceneView *)self bounds:fits.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
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
    v7.super_class = SBSceneView;
    v5 = [(SBSceneView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
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

- (void)_configureSceneLiveHostView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  sceneContentContainerView = self->_sceneContentContainerView;

  if (superview != sceneContentContainerView)
  {
    [(UIView *)self->_sceneContentContainerView addSubview:viewCopy];
  }

  [(SBSceneView *)self _layoutLiveHostView:viewCopy];
  [(SBSceneView *)self setNeedsLayout];
}

- (void)_layoutLiveHostView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  sceneContentContainerView = self->_sceneContentContainerView;

  if (superview == sceneContentContainerView)
  {
    [(UIView *)self->_sceneContentContainerView bounds];
    [viewCopy setFrame:?];
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBSceneView *)viewCopy _layoutLiveHostView:v7];
    }
  }
}

- (void)_layoutLiveSnapshotView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  sceneContentContainerView = self->_sceneContentContainerView;

  if (superview == sceneContentContainerView)
  {
    [(UIView *)self->_sceneContentContainerView bounds];
    [viewCopy setFrame:?];
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

- (void)_modifyPresentationContext:(id)context
{
  contextCopy = context;
  [contextCopy setClippingDisabled:{-[SBSceneView _contentPrefersToDisableClipping](self, "_contentPrefersToDisableClipping")}];
}

- (void)_updateReferenceSize:(CGSize)size andOrientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  if (size.width == *MEMORY[0x277CBF3A8] && size.height == *(MEMORY[0x277CBF3A8] + 8))
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
  [(SBSceneView *)self _setOrientation:orientation];
  if ([(SBSceneView *)self effectiveDisplayMode]== 2)
  {
    v12 = orientation == orientation && v10 == width;
    if (!v12 || v11 != height)
    {

      [(SBSceneView *)self _hotSwapPlaceholderContentView];
    }
  }
}

- (void)_containerContentWrapperInterfaceOrientationChangedTo:(int64_t)to
{
  placeholderContentView = self->_placeholderContentView;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_placeholderContentView;

    [(SBScenePlaceholderContentView *)v6 setContainerOrientation:to];
  }
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  uiPresentationManager = [scene uiPresentationManager];
  v6 = [uiPresentationManager createPresenterWithIdentifier:self->_hostingIdentifier priority:self->_hostingPriority];
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

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  handleCopy = handle;
  sceneCopy = scene;
  if (self->_effectiveDisplayMode == 4 && [(SBSceneView *)self _presenterMayBeZombified])
  {
    [(SBSceneView *)self _recheckLiveContentDependencies];
  }

  else
  {
    [(SBSceneView *)self _invalidateHostPresenter];
  }
}

- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state
{
  if ([(SBSceneView *)self _shouldObserveSceneHostContentState:handle])
  {

    [(SBSceneView *)self _recheckLiveContentDependencies];
  }
}

- (void)placeholderContentViewProviderContentDidUpdate:(id)update
{
  if (self->_placeholderContentProvider == update)
  {
    [(SBSceneView *)self _reloadPlaceholderContentIfNecessary];
  }
}

- (void)_setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
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

- (void)_evaluateEffectiveDisplayModeWithAnimationFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
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
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
    v15 = completionCopy;
    [(SBSceneView *)self _transitionFromDisplayMode:effectiveDisplayMode showingView:v11 toDisplayMode:v12 showingView:v13 withAnimationFactory:factoryCopy completion:v14];
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

- (int64_t)_bestDisplayModeLessThanMode:(int64_t)mode
{
  if ((mode - 1) < 2 || !mode)
  {
    return 0;
  }

  if (mode != 4)
  {
    return 2;
  }

  if ([(SBSceneView *)self _presenterMayBeZombified:v3])
  {
    return 3;
  }

  return 2;
}

- (id)_viewForDisplayMode:(int64_t)mode
{
  _transitionViewForHostView = 0;
  if (mode <= 2)
  {
    if (mode == 1)
    {
      v5 = 504;
    }

    else
    {
      if (mode != 2)
      {
        goto LABEL_14;
      }

      v5 = 512;
    }

    goto LABEL_12;
  }

  if (mode == 3)
  {
    v5 = 520;
LABEL_12:
    _transitionViewForHostView = *(&self->super.super.super.isa + v5);
    goto LABEL_14;
  }

  if (mode == 4)
  {
    if ([(NSCountedSet *)self->_liveContentDisableReasons count]|| ![(SBSceneHandle *)self->_sceneHandle isContentReady])
    {
      _transitionViewForHostView = 0;
    }

    else
    {
      _transitionViewForHostView = [(SBSceneView *)self _transitionViewForHostView];
    }
  }

LABEL_14:

  return _transitionViewForHostView;
}

- (void)_transitionFromDisplayMode:(int64_t)mode showingView:(id)view toDisplayMode:(int64_t)displayMode showingView:(id)showingView withAnimationFactory:(id)factory completion:(id)completion
{
  viewCopy = view;
  showingViewCopy = showingView;
  factoryCopy = factory;
  completionCopy = completion;
  v19 = [(SBSceneView *)self _viewForDisplayMode:displayMode];

  if (v19 != showingViewCopy)
  {
    [SBSceneView _transitionFromDisplayMode:displayMode showingView:self toDisplayMode:a2 showingView:showingViewCopy withAnimationFactory:? completion:?];
  }

  window = [(SBSceneView *)self window];
  v21 = window;
  if (!factoryCopy)
  {
    goto LABEL_8;
  }

  if (!window || ([window isHidden] & 1) != 0 || -[SBSceneView isHiddenOrHasHiddenAncestor](self, "isHiddenOrHasHiddenAncestor"))
  {

    factoryCopy = 0;
LABEL_8:
    if (showingViewCopy)
    {
      superview = [showingViewCopy superview];

      if (superview != self)
      {
        [(SBSceneView *)self _addContentLikeViewToHierarchyForTransitionIfPossible:showingViewCopy];
      }
    }

    [showingViewCopy setAlpha:1.0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_13;
  }

  if (mode == 4 && displayMode == 3)
  {
    goto LABEL_8;
  }

  if (viewCopy && showingViewCopy)
  {
    v23 = [SBCrossfadeView crossfadeViewWithStartView:viewCopy endView:showingViewCopy translucent:0];
    [v23 setClipsToBounds:1];
    [v23 setAnimationFactory:factoryCopy];
    [(SBSceneView *)self insertSubview:v23 aboveSubview:self->_sceneContentContainerView];
    [(UIView *)self->_crossfadeView removeFromSuperview];
    objc_storeStrong(&self->_crossfadeView, v23);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __112__SBSceneView__transitionFromDisplayMode_showingView_toDisplayMode_showingView_withAnimationFactory_completion___block_invoke;
    v35[3] = &unk_27836AF10;
    v36 = v23;
    selfCopy = self;
    v38 = viewCopy;
    v39 = showingViewCopy;
    v40 = completionCopy;
    v24 = v23;
    [v24 crossfadeWithCompletion:v35];
  }

  else
  {
    if (viewCopy)
    {
      v25 = viewCopy;
    }

    else
    {
      v25 = showingViewCopy;
    }

    v26 = v25;
    v27 = v26;
    if (v26)
    {
      if (v26 == showingViewCopy)
      {
        [(SBSceneView *)self _addContentLikeViewToHierarchyForTransitionIfPossible:showingViewCopy];
      }

      if (viewCopy)
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
      v31 = completionCopy;
      [v29 animateWithFactory:factoryCopy actions:v32 completion:v30];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
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

- (BOOL)_shouldViewBeInHierarchyForTransition:(id)transition
{
  transitionCopy = transition;
  v5 = transitionCopy;
  if (self->_customContentView == transitionCopy || self->_placeholderContentView == transitionCopy)
  {
    v7 = 1;
  }

  else
  {
    _transitionViewForHostView = [(SBSceneView *)self _transitionViewForHostView];
    v7 = _transitionViewForHostView == v5;
  }

  return v7;
}

- (BOOL)_addContentLikeViewToHierarchyForTransitionIfPossible:(id)possible
{
  possibleCopy = possible;
  if (possibleCopy && [(SBSceneView *)self _shouldViewBeInHierarchyForTransition:possibleCopy])
  {
    [(UIView *)self->_sceneContentContainerView addSubview:possibleCopy];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureViewForEffectiveDisplayMode:(int64_t)mode
{
  switch(mode)
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
      captureSnapshotPresentationView = [(UIScenePresenter *)v5 captureSnapshotPresentationView];
    }

    else
    {
      captureSnapshotPresentationView = [(UIScenePresenter *)v5 newSnapshotPresentationView];
    }

    liveSnapshotView = self->_liveSnapshotView;
    self->_liveSnapshotView = captureSnapshotPresentationView;

    [(UISceneSnapshotPresentation *)self->_liveSnapshotView setAlpha:0.0];
    presentationContext = [(UIScenePresenter *)self->_presenter presentationContext];
    [(SBSceneView *)self _configureBackgroundColorWithLiveSnapshotPresentationContext:presentationContext];

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

- (void)_configureBackgroundColorWithLiveSnapshotPresentationContext:(id)context
{
  if (context)
  {
    backgroundColorWhileHosting = [context backgroundColorWhileHosting];
    [(SBSceneView *)self setBackgroundColor:backgroundColorWhileHosting];
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