@interface SBHLibraryZoomAnimator
+ (BOOL)validateWithLibrary:(id)library context:(id)context;
- (BOOL)_targetViewHasMatchMove:(id)move;
- (CGRect)_sourceFrameForPodViewAtIndex:(unint64_t)index inCoordinateSpace:(id)space withContext:(id)context;
- (CGRect)_sourceFrameForPodViewAtIndex:(unint64_t)index inCoordinateSpace:(id)space withContext:(id)context forUnscaledPositioning:(BOOL)positioning;
- (CGRect)_targetFrameForPodView:(id)view atIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context;
- (SBHLibraryZoomAnimator)init;
- (SBIconImageInfo)_iconImageInfoForPodViewAtIndex:(SEL)index;
- (id)_flyingPodIconViewAtIndex:(unint64_t)index;
- (id)_retargetedAnimationSettingsForSettings:(id)settings normalizedTier:(double)tier endpoint:(int64_t)endpoint;
- (void)_addPositionToTargetView:(id)view matchingSourceView:(id)sourceView initialSourceFrame:(CGRect)frame;
- (void)_configureAlphaForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)_configureBackgroundViewForEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)_configureCategoryStackAlphaForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)_configureCrossfadeDestinationContentForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)_configureCrossfadeSourceContentForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)_configureDockIndicatorViewsForEndpoint:(int64_t)endpoint preparing:(BOOL)preparing withContext:(id)context;
- (void)_configureLayoutForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context includeYPosition:(BOOL)position;
- (void)_configureScaleForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context includeYTranslation:(BOOL)translation;
- (void)_configureSearchViewsForEndpoint:(int64_t)endpoint preparing:(BOOL)preparing withContext:(id)context;
- (void)_displayLinkFired:(id)fired;
- (void)_matchMoveTargetView:(id)view withSourceView:(id)sourceView;
- (void)_matchMoveTargetView:(id)view withSourceView:(id)sourceView usingSourceFrame:(CGRect)frame targetFrame:(CGRect)targetFrame;
- (void)_removeMatchMoveFromTargetView:(id)view;
- (void)_removePositionAdditionFromTargetView:(id)view;
- (void)_setIconImageInfo:(SBIconImageInfo *)info forPodViewAtIndex:(unint64_t)index;
- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion;
- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context;
@end

@implementation SBHLibraryZoomAnimator

+ (BOOL)validateWithLibrary:(id)library context:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  contextCopy = context;
  if (libraryCopy)
  {
    if ([libraryCopy isPresentingSearch])
    {
      v7 = @"Library is presenting search";
    }

    else if ([libraryCopy isPresentingFolder])
    {
      v7 = @"Library is presenting a pod";
    }

    else
    {
      iconListView = [contextCopy iconListView];
      numberOfDisplayedIconViews = [iconListView numberOfDisplayedIconViews];

      if (numberOfDisplayedIconViews)
      {
        libraryPodIconView = [contextCopy libraryPodIconView];

        if (libraryPodIconView)
        {
          v11 = 1;
          goto LABEL_15;
        }

        v7 = @"No source library pod icon view to zoom to/from";
      }

      else
      {
        v7 = @"Library is not displaying any icon views to zoom";
      }
    }
  }

  else
  {
    v7 = @"No Library view controller provided";
  }

  v12 = SBLogLibrary();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_INFO, "SBHLibraryZoomAnimator validation failed for reason: %{public}@", &v14, 0xCu);
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (SBHLibraryZoomAnimator)init
{
  v10.receiver = self;
  v10.super_class = SBHLibraryZoomAnimator;
  v2 = [(SBHLibraryZoomAnimator *)&v10 init];
  if (v2)
  {
    v3 = +[SBHHomeScreenDomain rootSettings];
    iconAnimationSettings = [v3 iconAnimationSettings];

    libraryWaveOpenSettings = [iconAnimationSettings libraryWaveOpenSettings];
    openSettings = v2->_openSettings;
    v2->_openSettings = libraryWaveOpenSettings;

    libraryWaveCloseSettings = [iconAnimationSettings libraryWaveCloseSettings];
    closeSettings = v2->_closeSettings;
    v2->_closeSettings = libraryWaveCloseSettings;
  }

  return v2;
}

- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context
{
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  objc_storeWeak(&self->_context, userInfo);
  array = [MEMORY[0x1E695DF70] array];
  flyingPodViews = self->_flyingPodViews;
  self->_flyingPodViews = array;

  array2 = [MEMORY[0x1E695DF70] array];
  fadingPodViews = self->_fadingPodViews;
  self->_fadingPodViews = array2;

  array3 = [MEMORY[0x1E695DF70] array];
  crossfadeViews = self->_crossfadeViews;
  self->_crossfadeViews = array3;

  array4 = [MEMORY[0x1E695DF70] array];
  libraryIconViews = self->_libraryIconViews;
  self->_libraryIconViews = array4;

  array5 = [MEMORY[0x1E695DF70] array];
  flyingPodWrapperViews = self->_flyingPodWrapperViews;
  self->_flyingPodWrapperViews = array5;

  containerView = [userInfo containerView];
  iconListView = [userInfo iconListView];
  libraryIconViewController = [userInfo libraryIconViewController];
  categoryStackView = [libraryIconViewController categoryStackView];

  numberOfDisplayedIconViews = [iconListView numberOfDisplayedIconViews];
  iconColumnsForCurrentOrientation = [iconListView iconColumnsForCurrentOrientation];
  if (numberOfDisplayedIconViews >= iconColumnsForCurrentOrientation)
  {
    numberOfDisplayedIconViews = iconColumnsForCurrentOrientation;
  }

  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x2020000000;
  v82[3] = 0;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v77[3] = &unk_1E808B5F8;
  v77[4] = self;
  v68 = containerView;
  v78 = v68;
  v80 = v82;
  v81 = numberOfDisplayedIconViews;
  v67 = categoryStackView;
  v79 = v67;
  [iconListView enumerateDisplayedIconViewsUsingBlock:v77];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = self->_libraryIconViews;
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_2;
  v74[3] = &unk_1E808B620;
  v26 = iconListView;
  v75 = v26;
  v69 = v24;
  v76 = v69;
  [(NSMutableArray *)v25 enumerateObjectsUsingBlock:v74];
  [(SBHLibraryZoomAnimator *)self setPauseLayoutAssertions:v69];
  layout = [v26 layout];
  firstObject = [(NSMutableArray *)self->_libraryIconViews firstObject];
  icon = [firstObject icon];
  gridSizeClass = [icon gridSizeClass];
  [layout iconImageInfoForGridSizeClass:gridSizeClass];
  self->_libraryIconImageInfo.size.width = v31;
  self->_libraryIconImageInfo.size.height = v32;
  self->_libraryIconImageInfo.scale = v33;
  self->_libraryIconImageInfo.continuousCornerRadius = v34;

  [(NSMutableArray *)self->_flyingPodWrapperViews enumerateObjectsWithOptions:2 usingBlock:&__block_literal_global_28];
  v35 = MEMORY[0x1E69DD250];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_4;
  v70[3] = &unk_1E808B690;
  v70[4] = self;
  endpointCopy = endpoint;
  v36 = userInfo;
  v71 = v36;
  v73 = 1;
  [v35 performWithoutAnimation:v70];
  if (!self->_presentationSourceOrderingAssertion)
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v36 acquireOrderPresentationSourceContainerViewBeforeLibraryViewAssertionForReason:v38];
    presentationSourceOrderingAssertion = self->_presentationSourceOrderingAssertion;
    self->_presentationSourceOrderingAssertion = v39;
  }

  sourceContainerView = [v36 sourceContainerView];
  v66 = contextCopy;
  v42 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:sourceContainerView];
  [sourceContainerView bounds];
  [v42 setFrame:?];
  [v42 setHidesSourceView:1];
  [v42 setMatchesPosition:1];
  [v42 setMatchesTransform:1];
  [v42 setAllowsHitTesting:1];
  [v42 setAllowsBackdropGroups:1];
  [v42 setForwardsClientHitTestingToSourceView:1];
  objc_storeStrong(&self->_presentationSourcePortalView, v42);
  firstObject2 = [(NSMutableArray *)self->_fadingPodViews firstObject];
  superview = [firstObject2 superview];
  [v68 insertSubview:v42 aboveSubview:superview];

  libraryPodIconView = [v36 libraryPodIconView];
  v65 = v26;
  v46 = [_SBHLibraryZoomAnimatorTouchForwardingView alloc];
  v47 = [(_SBHLibraryZoomAnimatorTouchForwardingView *)v46 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_SBHLibraryZoomAnimatorTouchForwardingView *)v47 setTouchForwardingTargetView:libraryPodIconView];
  _outermostLayer = [(_SBHLibraryZoomAnimatorTouchForwardingView *)v47 _outermostLayer];
  [_outermostLayer setHitTestsAsOpaque:1];

  libraryView = [v36 libraryView];
  superview2 = [libraryView superview];

  [superview2 addSubview:v47];
  _outermostLayer2 = [libraryPodIconView _outermostLayer];
  [_outermostLayer2 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  _outermostLayer3 = [superview2 _outermostLayer];
  [_outermostLayer2 convertRect:_outermostLayer3 toLayer:{v53, v55, v57, v59}];
  [(_SBHLibraryZoomAnimatorTouchForwardingView *)v47 setFrame:?];

  [(SBHLibraryZoomAnimator *)self _matchMoveTargetView:v47 withSourceView:libraryPodIconView];
  objc_storeStrong(&self->_sourceTouchForwardingView, v47);
  v61 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkFired_];
  displayLink = self->_displayLink;
  self->_displayLink = v61;

  v63 = self->_displayLink;
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v63 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  self->_podsWantDisplayLinkInfluencedPositioning = 0;
  _Block_object_dispose(v82, 8);
}

void __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 48) addObject:v3];
  v4 = [SBHTouchPassThroughView alloc];
  [*(a1 + 40) bounds];
  v5 = [(SBHTouchPassThroughView *)v4 initWithFrame:?];
  [(SBHTouchPassThroughView *)v5 setAutoresizingMask:18];
  [*(a1 + 40) addSubview:v5];
  v6 = v3;
  v7 = *(*(*(a1 + 56) + 8) + 24);
  v12 = v6;
  if (v7 >= *(a1 + 64))
  {
    [(SBHTouchPassThroughView *)v5 addSubview:v6];
    [*(*(a1 + 32) + 56) addObject:v12];
    [*(*(a1 + 32) + 64) addObject:v12];
    [*(*(a1 + 32) + 80) addObject:v5];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v7)
    {
      v9 = [v8 makeBackgroundView];
      [*(a1 + 48) bounds];
      [v9 setBounds:?];
      v10 = [[SBHLibraryPodCrossfadeView alloc] initWithBackgroundView:v9 podIconView:v12];
    }

    else
    {
      v9 = [v8 matchingCategoryStackView];
      [v9 setInnerIconImageInfoFrozen:1];
      [v9 setNumberOfCategories:1];
      v10 = [[SBHLibraryPodCrossfadeView alloc] initWithForegroundView:v9 podIconView:v12];
    }

    v11 = v10;

    [(SBHTouchPassThroughView *)v5 addSubview:v11];
    [(SBHLibraryPodCrossfadeView *)v11 setNeedsLayout];
    [(SBHLibraryPodCrossfadeView *)v11 layoutIfNeeded];
    [*(*(a1 + 32) + 56) addObject:v11];
    [*(*(a1 + 32) + 72) addObject:v11];
    [*(*(a1 + 32) + 80) addObject:v5];
  }

  ++*(*(*(a1 + 56) + 8) + 24);
}

uint64_t __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pauseLayoutForIconView:a2 forReason:@"SBHLibraryZoomAnimatorIconLayoutPauseReason"];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 superview];
  [v3 bringSubviewToFront:v2];
}

void __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_5;
  v6[3] = &unk_1E808B668;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = v2;
  v8 = v4;
  v7 = v5;
  [v3 enumerateObjectsUsingBlock:v6];
  [*(a1 + 32) _configureSearchViewsForEndpoint:*(a1 + 48) preparing:*(a1 + 56) withContext:*(a1 + 40)];
  [*(a1 + 32) _configureBackgroundViewForEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  [*(a1 + 32) _configureDockIndicatorViewsForEndpoint:*(a1 + 48) preparing:*(a1 + 56) withContext:*(a1 + 40)];
}

uint64_t __67__SBHLibraryZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _configureLayoutForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40) includeYPosition:1];
  [*(a1 + 32) _configureAlphaForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  [*(a1 + 32) _configureScaleForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40) includeYTranslation:0];
  [*(a1 + 32) _configureCategoryStackAlphaForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  [*(a1 + 32) _configureCrossfadeSourceContentForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);

  return [v7 _configureCrossfadeDestinationContentForPodViewAtIndex:a3 forEndpoint:v5 withContext:v6];
}

- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  userInfo = [contextCopy userInfo];
  ++self->_transitionToken;
  self->_endpointAnimatingTo = endpoint;
  alreadyAnimating = self->_alreadyAnimating;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBIconZoomExpansionAnimationWillBeginNotification" object:self];

  podScrollView = [userInfo podScrollView];
  [podScrollView contentOffset];
  [podScrollView _setContentOffsetPinned:0 animated:?];
  if ([contextCopy wantsAnimation])
  {
    v14 = 2 * (endpoint == 1);
    if (alreadyAnimating)
    {
      v14 = (2 * (endpoint == 1)) | 4;
    }

    v131 = contextCopy;
    v132 = v14;
    v130 = podScrollView;
    if (alreadyAnimating)
    {
      shouldUseTranslatingAnimationBehavior = 1;
    }

    else
    {
      shouldUseTranslatingAnimationBehavior = [userInfo shouldUseTranslatingAnimationBehavior];
    }

    iconListView = [userInfo iconListView];
    iconColumnsForCurrentOrientation = [iconListView iconColumnsForCurrentOrientation];

    v20 = [(NSMutableArray *)self->_flyingPodViews count];
    v123 = [(NSMutableArray *)self->_crossfadeViews count];
    v133 = completionCopy;
    v118 = v20;
    if (v20)
    {
      v22 = 0;
      v23 = xmmword_1BEE85AB0;
      v24 = vdupq_n_s64(v20 - 1);
      v25 = 0uLL;
      v26 = vdupq_n_s64(2uLL);
      do
      {
        v27 = v25;
        v28 = vcgeq_u64(v24, v23);
        v29 = vmovn_s64(v28);
        if (v29.i8[0])
        {
          v25.i64[0] = v22 / iconColumnsForCurrentOrientation;
          v21.i64[0] = v22 % iconColumnsForCurrentOrientation;
        }

        if (v29.i8[4])
        {
          v25.i64[1] = (v22 + 1) / iconColumnsForCurrentOrientation;
          v21.i64[1] = (v22 + 1) % iconColumnsForCurrentOrientation;
        }

        v30 = vaddq_s64(v21, vaddq_s64(v25, v25));
        v21 = vcgtq_u64(v27, v30);
        v25 = vbslq_s8(v21, v27, v30);
        v22 += 2;
        v23 = vaddq_s64(v23, v26);
      }

      while (((v20 + 1) & 0xFFFFFFFFFFFFFFFELL) != v22);
      v31 = vbslq_s8(v28, v25, v27);
      v32 = vextq_s8(v31, v31, 8uLL).u64[0];
      v120 = vbsl_s8(vcgtd_u64(v31.u64[0], v32), *v31.i8, v32);
    }

    else
    {
      v120 = 0;
    }

    libraryPodIconView = [userInfo libraryPodIconView];
    _outermostLayer = [libraryPodIconView _outermostLayer];
    [_outermostLayer bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v129 = libraryPodIconView;
    window = [libraryPodIconView window];
    _outermostLayer2 = [window _outermostLayer];
    v128 = _outermostLayer;
    [_outermostLayer convertRect:_outermostLayer2 toLayer:{v36, v38, v40, v42}];
    v121 = v45;
    v116 = v46;
    v48 = v47;
    v50 = v49;

    firstObject = [(NSMutableArray *)self->_flyingPodWrapperViews firstObject];
    _outermostLayer3 = [firstObject _outermostLayer];
    [_outermostLayer3 bounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v127 = firstObject;
    window2 = [firstObject window];
    _outermostLayer4 = [window2 _outermostLayer];
    v126 = _outermostLayer3;
    [_outermostLayer3 convertRect:_outermostLayer4 toLayer:{v54, v56, v58, v60}];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;

    libraryView = [userInfo libraryView];
    _outermostLayer5 = [libraryView _outermostLayer];
    [_outermostLayer5 frame];
    v72 = v71;
    v74 = v73;
    self->_startTime = CACurrentMediaTime();
    self->_initialLibraryOrigin.x = v72;
    self->_initialLibraryOrigin.y = v74;
    self->_initialSourceContentFrame.origin.x = v121;
    self->_initialSourceContentFrame.origin.y = v116;
    self->_initialSourceContentFrame.size.width = v48;
    self->_initialSourceContentFrame.size.height = v50;
    self->_initialTargetContentFrame.origin.x = v64;
    self->_initialTargetContentFrame.origin.y = v66;
    self->_initialTargetContentFrame.size.width = v68;
    self->_initialTargetContentFrame.size.height = v70;
    self->_podsWantDisplayLinkInfluencedPositioning = 1;
    flyingPodWrapperViews = self->_flyingPodWrapperViews;
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke;
    v163[3] = &unk_1E808B6B8;
    v164 = endpoint == 1;
    v163[4] = self;
    [(NSMutableArray *)flyingPodWrapperViews enumerateObjectsUsingBlock:v163];
    v76 = 240;
    if (endpoint == 1)
    {
      v76 = 232;
    }

    v77 = *(&self->super.isa + v76);
    centralAnimationSettings = [v77 centralAnimationSettings];
    bSAnimationSettings = [centralAnimationSettings BSAnimationSettings];

    podFadeSettings = [v77 podFadeSettings];
    bSAnimationSettings2 = [podFadeSettings BSAnimationSettings];

    v82 = bSAnimationSettings;
    v83 = v82;
    if (shouldUseTranslatingAnimationBehavior)
    {
      v84 = 0.0;
      if (endpoint == 1)
      {
        v84 = 1.0;
      }

      v83 = [(SBHLibraryZoomAnimator *)self _retargetedAnimationSettingsForSettings:v82 normalizedTier:endpoint endpoint:v84];
    }

    v122 = v83;
    [v83 duration];
    v86 = v85;
    [v77 interPodWaveDelay];
    v88 = v87;
    v89 = v86 + v120 * v87;
    if (!shouldUseTranslatingAnimationBehavior)
    {
      v86 = v86 + v120 * v87;
    }

    [userInfo noteWillAnimateToEndpoint:endpoint withAnimationDuration:v86];
    flyingPodViews = self->_flyingPodViews;
    v147[0] = MEMORY[0x1E69E9820];
    v147[1] = 3221225472;
    v147[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_2;
    v147[3] = &unk_1E808B708;
    v154 = iconColumnsForCurrentOrientation;
    v155 = v120;
    v161 = shouldUseTranslatingAnimationBehavior;
    v162 = endpoint == 1;
    v91 = v82;
    v156 = v88;
    v157 = v86;
    v148 = v91;
    selfCopy = self;
    endpointCopy = endpoint;
    v159 = v132;
    v92 = userInfo;
    v150 = v92;
    v160 = v118;
    v153 = v133;
    v119 = v77;
    v151 = v119;
    v152 = bSAnimationSettings2;
    v93 = bSAnimationSettings2;
    [(NSMutableArray *)flyingPodViews enumerateObjectsUsingBlock:v147];
    v94 = (v123 - 1) % iconColumnsForCurrentOrientation + 2 * ((v123 - 1) / iconColumnsForCurrentOrientation);
    v117 = v93;
    if (shouldUseTranslatingAnimationBehavior)
    {
      v95 = 0.0;
      v96 = 0.0;
      if (v120)
      {
        v96 = v94 / v120;
      }

      v97 = [(SBHLibraryZoomAnimator *)self _retargetedAnimationSettingsForSettings:v91 normalizedTier:endpoint endpoint:v96];
      [v97 duration];
      v99 = v98;
    }

    else
    {
      [v91 duration];
      v99 = v100;
      if (endpoint == 1)
      {
        v95 = v88 * v94;
      }

      else
      {
        v95 = v89 - v88 * v94 - v100;
      }
    }

    libraryIconViewController = [v92 libraryIconViewController];
    dismissalView = [libraryIconViewController dismissalView];

    v103 = MEMORY[0x1E69DD250];
    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_10;
    v144[3] = &unk_1E80897D8;
    v145 = dismissalView;
    v146 = endpoint == 1;
    v134 = dismissalView;
    [v103 animateWithDuration:v132 delay:v144 options:0 animations:v99 completion:v95];
    searchBar = [v92 searchBar];
    layer = [searchBar layer];
    v106 = [layer animationForKey:@"opacity"];

    if (v106)
    {
      v107 = v132 | 4;
    }

    else
    {
      v107 = v132;
    }

    [v119 relativeSearchDuration];
    v108 = MEMORY[0x1E69DD250];
    v141[0] = MEMORY[0x1E69E9820];
    v141[1] = 3221225472;
    v141[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_11;
    v141[3] = &unk_1E808A090;
    v110 = v86 * v109;
    v141[4] = self;
    endpointCopy2 = endpoint;
    v111 = v92;
    v142 = v111;
    [v108 animateWithDuration:v107 delay:v141 options:0 animations:v110 completion:0.0];
    [v119 relativeBackgroundDuration];
    v113 = v86 * v112;
    v114 = MEMORY[0x1E69DD250];
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_12;
    v138[3] = &unk_1E808A090;
    v139 = v111;
    endpointCopy3 = endpoint;
    v138[4] = self;
    v115 = v111;
    [v114 animateWithDuration:v132 delay:v138 options:0 animations:v113 completion:0.0];

    podScrollView = v130;
    contextCopy = v131;
    completionCopy = v133;
    v17 = v129;
  }

  else
  {
    [userInfo noteWillAnimateToEndpoint:endpoint withAnimationDuration:0.0];
    v16 = MEMORY[0x1E69DD250];
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_13;
    v135[3] = &unk_1E808A090;
    v136 = userInfo;
    endpointCopy4 = endpoint;
    v135[4] = self;
    v17 = userInfo;
    [v16 performWithoutAnimation:v135];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  self->_alreadyAnimating = 1;
}

void __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  if (*(a1 + 40) == 1)
  {
    v5 = [v4 _targetViewHasMatchMove:v3];
    v6 = [v15 _outermostLayer];
    v7 = [v6 presentationLayer];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v15 _outermostLayer];
    }

    v10 = v9;

    [v10 position];
    v12 = v11;
    v14 = v13;
    [*(a1 + 32) _removeMatchMoveFromTargetView:v15];
    if (v5)
    {
      [v15 setCenter:{v12, v14}];
    }
  }

  else
  {
    [v4 _removePositionAdditionFromTargetView:v3];
  }
}

void __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v81 = a2;
  v5 = *(a1 + 88);
  v6 = a3 % *(a1 + 80) + 2 * (a3 / *(a1 + 80));
  if (v5)
  {
    v7 = v6 / v5;
  }

  else
  {
    v7 = 0.0;
  }

  if (*(a1 + 136) == 1 && *(a1 + 137))
  {
    v7 = 1.0 - v7;
  }

  v8 = *(a1 + 32);
  v9 = v8;
  if (*(a1 + 136))
  {
    v10 = [*(a1 + 40) _retargetedAnimationSettingsForSettings:v8 normalizedTier:*(a1 + 112) endpoint:v7];

    [v10 duration];
    v12 = v11;
    v13 = 0.0;
    v9 = v10;
  }

  else
  {
    [v8 duration];
    v12 = v14;
    v15 = v6;
    if (*(a1 + 137) == 1)
    {
      v13 = *(a1 + 96) * v15;
    }

    else
    {
      v13 = *(a1 + 104) - v15 * *(a1 + 96) - v12;
    }
  }

  if ((BSFloatGreaterThanOrEqualToFloat() & 1) == 0)
  {
    NSLog(&cfstr_WhyAreWeCalcul.isa);
  }

  v16 = MEMORY[0x1E698E7D0];
  v17 = [MEMORY[0x1E698E7D0] factoryWithSettings:v9];
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_3;
  v107[3] = &unk_1E808A370;
  v18 = *(a1 + 48);
  v107[4] = *(a1 + 40);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v109 = a3;
  v110 = v19;
  v108 = v18;
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_4;
  v102[3] = &unk_1E808B6E0;
  v106 = *(a1 + 137);
  v104 = *(a1 + 128);
  v105 = a3;
  v103 = *(a1 + 72);
  [v16 animateWithFactory:v17 additionalDelay:v20 options:v107 actions:v102 completion:v13];

  v80 = v9;
  v21 = [v9 mutableCopy];
  v22 = [*(a1 + 56) zEffectControlPoint1Settings];
  [v22 pointValue];
  v24 = v23;
  v26 = v25;

  v27 = [*(a1 + 56) zEffectControlPoint2Settings];
  [v27 pointValue];
  v29 = v28;
  v31 = v30;

  *&v32 = v24;
  *&v33 = v26;
  *&v34 = v29;
  *&v35 = v31;
  v79 = [MEMORY[0x1E69793D0] functionWithControlPoints:v32 :v33 :v34 :v35];
  [v21 setTimingFunction:?];
  v36 = MEMORY[0x1E698E7D0];
  v37 = [MEMORY[0x1E698E7D0] factoryWithSettings:v21];
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_5;
  v98[3] = &unk_1E808A370;
  v38 = *(a1 + 48);
  v98[4] = *(a1 + 40);
  v39 = *(a1 + 112);
  v40 = *(a1 + 120);
  v100 = a3;
  v101 = v39;
  v99 = v38;
  [v36 animateWithFactory:v37 additionalDelay:v40 options:v98 actions:0 completion:v13];

  [*(a1 + 56) upperPodRelativeCrossfadeDuration];
  v42 = v12 * v41;
  v43 = v13 + v12 - v12 * v41;
  if (*(a1 + 137))
  {
    v44 = v13;
  }

  else
  {
    v44 = v43;
  }

  v45 = 1.0;
  if (*(a1 + 137))
  {
    v45 = 2.0;
    v46 = 0x20000;
  }

  else
  {
    v46 = 0x10000;
  }

  v47 = MEMORY[0x1E69DD250];
  v48 = v42 / v45;
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_6;
  v94[3] = &unk_1E808A370;
  v49 = *(a1 + 48);
  v94[4] = *(a1 + 40);
  v50 = *(a1 + 112);
  v51 = *(a1 + 120);
  v96 = a3;
  v97 = v50;
  v95 = v49;
  [v47 animateWithDuration:v51 | v46 delay:v94 options:0 animations:v48 completion:v44];
  v52 = 1.0;
  if (*(a1 + 137))
  {
    v53 = 0x10000;
  }

  else
  {
    v52 = 2.0;
    v53 = 0x20000;
  }

  v54 = MEMORY[0x1E69DD250];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_7;
  v90[3] = &unk_1E808A370;
  v55 = *(a1 + 48);
  v90[4] = *(a1 + 40);
  v56 = *(a1 + 112);
  v57 = *(a1 + 120);
  v92 = a3;
  v93 = v56;
  v58 = v42 / v52;
  v91 = v55;
  [v54 animateWithDuration:v57 | v53 delay:v90 options:0 animations:v58 completion:v44];
  [*(a1 + 56) upperPodRelativeStackAlphaDuration];
  v60 = v12 * v59;
  v61 = v13 + v12 - v60;
  v62 = v13 - v60;
  if (v62 < 0.0)
  {
    v62 = 0.0;
  }

  if (*(a1 + 137))
  {
    v63 = 0x20000;
  }

  else
  {
    v63 = 0x10000;
  }

  if (*(a1 + 137))
  {
    v64 = v62;
  }

  else
  {
    v64 = v61;
  }

  v65 = MEMORY[0x1E69DD250];
  v66 = *(a1 + 96);
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_8;
  v86[3] = &unk_1E808A370;
  v67 = *(a1 + 48);
  v86[4] = *(a1 + 40);
  v68 = *(a1 + 112);
  v69 = *(a1 + 120);
  v88 = a3;
  v89 = v68;
  v87 = v67;
  [v65 animateWithDuration:v69 | v63 delay:v86 options:0 animations:v66 completion:v64];
  [*(a1 + 56) podRelativeFadeDelay];
  v71 = v70;
  v72 = *(a1 + 64);
  if (*(a1 + 136) == 1)
  {
    v73 = [*(a1 + 40) _retargetedAnimationSettingsForSettings:v72 normalizedTier:*(a1 + 112) endpoint:v7];

    v72 = v73;
  }

  v74 = MEMORY[0x1E698E7D0];
  v75 = [MEMORY[0x1E698E7D0] factoryWithSettings:v72];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_9;
  v82[3] = &unk_1E808A370;
  v76 = *(a1 + 48);
  v82[4] = *(a1 + 40);
  v77 = *(a1 + 112);
  v78 = *(a1 + 120);
  v84 = a3;
  v85 = v77;
  v83 = v76;
  [v74 animateWithFactory:v75 additionalDelay:v78 options:v82 actions:v13 + v12 * v71];
}

uint64_t __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_4(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v1 = *(result + 40) - 1;
  }

  else
  {
    v1 = 0;
  }

  if (*(result + 48) == v1)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_10(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

void __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_13(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_14;
  v6[3] = &unk_1E808B668;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = v2;
  v8 = v4;
  v7 = v5;
  [v3 enumerateObjectsUsingBlock:v6];
  [*(a1 + 32) _configureSearchViewsForEndpoint:*(a1 + 48) preparing:0 withContext:*(a1 + 40)];
  [*(a1 + 32) _configureBackgroundViewForEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
}

uint64_t __67__SBHLibraryZoomAnimator_animateToEndpoint_withContext_completion___block_invoke_14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _configureLayoutForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40) includeYPosition:1];
  [*(a1 + 32) _configureAlphaForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  [*(a1 + 32) _configureScaleForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40) includeYTranslation:0];
  [*(a1 + 32) _configureCategoryStackAlphaForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  [*(a1 + 32) _configureCrossfadeSourceContentForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);

  return [v7 _configureCrossfadeDestinationContentForPodViewAtIndex:a3 forEndpoint:v5 withContext:v6];
}

- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context
{
  userInfo = [context userInfo];
  *&self->_podsWantDisplayLinkInfluencedPositioning = 0;
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  v8 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__SBHLibraryZoomAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke;
  v15[3] = &unk_1E808A090;
  v16 = userInfo;
  endpointCopy = endpoint;
  v15[4] = self;
  v9 = userInfo;
  [v8 performWithoutAnimation:v15];
  window = [(_UIPortalView *)self->_presentationSourcePortalView window];
  windowScene = [window windowScene];
  [windowScene _synchronizeDrawing];

  [(BSInvalidatable *)self->_presentationSourceOrderingAssertion invalidate];
  presentationSourceOrderingAssertion = self->_presentationSourceOrderingAssertion;
  self->_presentationSourceOrderingAssertion = 0;

  [(_UIPortalView *)self->_presentationSourcePortalView setSourceView:0];
  [(_UIPortalView *)self->_presentationSourcePortalView removeFromSuperview];
  presentationSourcePortalView = self->_presentationSourcePortalView;
  self->_presentationSourcePortalView = 0;

  [(UIView *)self->_sourceTouchForwardingView removeFromSuperview];
  sourceTouchForwardingView = self->_sourceTouchForwardingView;
  self->_sourceTouchForwardingView = 0;
}

void __66__SBHLibraryZoomAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _configureDockIndicatorViewsForEndpoint:*(a1 + 48) preparing:0 withContext:*(a1 + 40)];
  if (!*(a1 + 48))
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 56);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__SBHLibraryZoomAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke_2;
    v19[3] = &unk_1E808B668;
    v19[4] = v3;
    v21 = 1;
    v20 = v2;
    [v4 enumerateObjectsUsingBlock:v19];
    [*(a1 + 32) _configureSearchViewsForEndpoint:1 preparing:0 withContext:*(a1 + 40)];
  }

  v5 = [*(a1 + 40) iconListView];
  v6 = *(*(a1 + 32) + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__SBHLibraryZoomAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke_3;
  v17[3] = &unk_1E808AEC0;
  v7 = v5;
  v18 = v7;
  [v6 enumerateObjectsUsingBlock:v17];
  [*(*(a1 + 32) + 48) removeAllObjects];
  v8 = [*(a1 + 32) pauseLayoutAssertions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v22 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setPauseLayoutAssertions:0];
  [v7 layoutIconsNow];
  [*(*(a1 + 32) + 80) enumerateObjectsUsingBlock:&__block_literal_global_47];
  [*(*(a1 + 32) + 80) removeAllObjects];
  [*(*(a1 + 32) + 56) removeAllObjects];
  [*(*(a1 + 32) + 64) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
}

uint64_t __66__SBHLibraryZoomAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _configureLayoutForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40) includeYPosition:1];
  [*(a1 + 32) _configureAlphaForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  [*(a1 + 32) _configureScaleForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40) includeYTranslation:0];
  [*(a1 + 32) _configureCategoryStackAlphaForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  [*(a1 + 32) _configureCrossfadeSourceContentForPodViewAtIndex:a3 forEndpoint:*(a1 + 48) withContext:*(a1 + 40)];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);

  return [v7 _configureCrossfadeDestinationContentForPodViewAtIndex:a3 forEndpoint:v5 withContext:v6];
}

void __66__SBHLibraryZoomAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v4;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v8];
  v5 = *(a1 + 32);
  v6 = [v3 icon];
  v7 = [v5 displayedIconViewForIcon:v6];

  if (v7 == v3)
  {
    [*(a1 + 32) addSubview:v3];
  }
}

- (id)_retargetedAnimationSettingsForSettings:(id)settings normalizedTier:(double)tier endpoint:(int64_t)endpoint
{
  settingsCopy = settings;
  v9 = 240;
  if (endpoint == 1)
  {
    v9 = 232;
  }

  v10 = *(&self->super.isa + v9);
  if ([settingsCopy isSpringAnimation])
  {
    v11 = settingsCopy;
    retargetedMassSettings = [v10 retargetedMassSettings];
    retargetedStiffnessSettings = [v10 retargetedStiffnessSettings];
    retargetedInitialVelocitySettings = [v10 retargetedInitialVelocitySettings];
    [v11 damping];
    v16 = v15;
    [v11 stiffness];
    v18 = v17;
    [v11 mass];
    v20 = sqrt(v18 * v19);
    v21 = v16 / (v20 + v20);
    [retargetedMassSettings lowerBoundFactor];
    v23 = v22;
    [v11 mass];
    v25 = v23 * v24;
    [retargetedMassSettings upperBoundFactor];
    v27 = v26;
    [v11 mass];
    v29 = v27 * v28 * tier + (1.0 - tier) * v25;
    [retargetedStiffnessSettings lowerBoundFactor];
    v31 = v30;
    [v11 stiffness];
    v33 = v31 * v32;
    [retargetedStiffnessSettings upperBoundFactor];
    v35 = v34;
    [v11 stiffness];
    v37 = v35 * v36 * tier + (1.0 - tier) * v33;
    [retargetedInitialVelocitySettings lowerBoundFactor];
    v39 = v38;
    [v11 initialVelocity];
    v41 = v39 * v40;
    [retargetedInitialVelocitySettings upperBoundFactor];
    v43 = v42;
    [v11 initialVelocity];
    v45 = v43 * v44 * tier + (1.0 - tier) * v41;
    v46 = [v11 mutableCopy];

    [v46 setInitialVelocity:v45];
    [v46 setStiffness:v37];
    [v46 setDamping:(v21 + v21) * sqrt(v29 * v37)];
    [v46 setMass:v29];
  }

  else
  {
    retargetedMassSettings = [v10 retargetedBasicDurationSettings];
    [retargetedMassSettings lowerBoundFactor];
    v48 = v47;
    [settingsCopy duration];
    v50 = v48 * v49;
    [retargetedMassSettings upperBoundFactor];
    v52 = v51;
    [settingsCopy duration];
    v54 = v52 * v53 * tier + (1.0 - tier) * v50;
    v46 = [settingsCopy mutableCopy];
    [v46 setDuration:v54];
  }

  return v46;
}

- (void)_displayLinkFired:(id)fired
{
  if (self->_podsWantDisplayLinkInfluencedPositioning)
  {
    v14 = v3;
    v15 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    endpointAnimatingTo = self->_endpointAnimatingTo;
    libraryPodIconView = [WeakRetained libraryPodIconView];
    flyingPodViews = self->_flyingPodViews;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__SBHLibraryZoomAnimator__displayLinkFired___block_invoke;
    v11[3] = &unk_1E808B668;
    v12 = libraryPodIconView;
    v13 = endpointAnimatingTo;
    v11[4] = self;
    v10 = libraryPodIconView;
    [(NSMutableArray *)flyingPodViews enumerateObjectsUsingBlock:v11];
  }
}

void __44__SBHLibraryZoomAnimator__displayLinkFired___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 layer];
  v4 = [v3 animationForKey:@"position"];

  if (v4)
  {
    v5 = [v4 beginTimeMode];
    v6 = *MEMORY[0x1E6979588];

    if (v5 == v6)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *(*(a1 + 32) + 88);
    }

    [v4 beginTime];
    v9 = v7 + v8;
    v10 = CACurrentMediaTime();
    v11 = *(a1 + 48);
    if (v10 >= v9)
    {
      if (v11)
      {
        goto LABEL_12;
      }

      v12 = [v14 superview];
      if (([*(a1 + 32) _targetViewHasMatchMove:v12] & 1) == 0)
      {
        v13 = *(a1 + 32);
        [v13 _matchMoveTargetView:v12 withSourceView:*(a1 + 40) usingSourceFrame:v13[15] targetFrame:{v13[16], v13[17], v13[18], v13[19], v13[20], v13[21], v13[22]}];
      }
    }

    else
    {
      if (v11 != 1)
      {
        goto LABEL_12;
      }

      v12 = [v14 superview];
      [*(a1 + 32) _addPositionToTargetView:v12 matchingSourceView:*(a1 + 40) initialSourceFrame:{*(*(a1 + 32) + 120), *(*(a1 + 32) + 128), *(*(a1 + 32) + 136), *(*(a1 + 32) + 144)}];
    }
  }

LABEL_12:
}

- (void)_configureBackgroundViewForEndpoint:(int64_t)endpoint withContext:(id)context
{
  if (endpoint == 1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  backgroundView = [context backgroundView];
  [backgroundView setWeighting:v4];
}

- (void)_configureSearchViewsForEndpoint:(int64_t)endpoint preparing:(BOOL)preparing withContext:(id)context
{
  if (endpoint != 1 || !preparing)
  {
    if (endpoint == 1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    searchBar = [context searchBar];
    [searchBar setAlpha:v7];
    if (endpoint == 1)
    {
      [(SBHLibraryWaveZoomSettings *)self->_closeSettings searchScale];
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *&v13.a = *MEMORY[0x1E695EFD0];
      *&v13.c = v9;
      *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    else
    {
      [(SBHLibraryWaveZoomSettings *)self->_openSettings searchScale];
      memset(&v13, 0, sizeof(v13));
      CGAffineTransformMakeScale(&v13, v10, v10);
    }

    searchTextField = [searchBar searchTextField];
    v12 = v13;
    [searchTextField setTransform:&v12];
  }
}

- (void)_configureLayoutForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context includeYPosition:(BOOL)position
{
  contextCopy = context;
  v11 = [(NSMutableArray *)self->_flyingPodViews objectAtIndex:index];
  v12 = [(SBHLibraryZoomAnimator *)self _flyingPodIconViewAtIndex:index];
  [(SBHLibraryZoomAnimator *)self _targetFrameForPodView:v11 atIndex:index forEndpoint:endpoint withContext:contextCopy];
  v14 = v13;
  if (endpoint)
  {
    [(SBHLibraryZoomAnimator *)self _setIconImageInfo:index forPodViewAtIndex:self->_libraryIconImageInfo.size.width, self->_libraryIconImageInfo.size.height, self->_libraryIconImageInfo.scale, self->_libraryIconImageInfo.continuousCornerRadius];
    [v12 setIconLabelAlpha:1.0];
    [v12 layoutIfNeeded];
    [v11 layoutIfNeeded];
    customIconImageViewController = [v12 customIconImageViewController];
    iconListView = [customIconImageViewController iconListView];
    iconListView2 = iconListView;
    v18 = *(MEMORY[0x1E695EFD0] + 16);
    *&v32.a = *MEMORY[0x1E695EFD0];
    *&v32.c = v18;
    *&v32.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    [v11 bounds];
    v20 = v14 / v19;
    [(SBHLibraryZoomAnimator *)self _iconImageInfoForPodViewAtIndex:index];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    libraryPodIconView = [contextCopy libraryPodIconView];
    [libraryPodIconView iconImageInfo];
    v29 = v28 / v20;

    [(SBHLibraryZoomAnimator *)self _setIconImageInfo:index forPodViewAtIndex:v22, v24, v26, v29];
    [v12 setIconLabelAlpha:0.0];
    [v12 layoutIfNeeded];
    [v11 layoutIfNeeded];
    customIconImageViewController = [v12 customIconImageViewController];
    iconListView2 = [customIconImageViewController iconListView];
    CGAffineTransformMakeScale(&v32, 0.875, 0.875);
    iconListView = iconListView2;
  }

  [iconListView setTransform:{&v32, *&v32.a, *&v32.c, *&v32.tx}];

  UIRectGetCenter();
  v31 = v30;
  if (!position)
  {
    [v11 center];
  }

  [v11 setCenter:v31];
}

- (void)_configureCrossfadeDestinationContentForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context
{
  if ([(NSMutableArray *)self->_crossfadeViews count:index]> index)
  {
    v8 = [(NSMutableArray *)self->_crossfadeViews objectAtIndex:index];
    v10 = v8;
    v9 = 0.0;
    if (endpoint == 1)
    {
      v9 = 1.0;
    }

    [v8 setPodIconViewCrossfadeFraction:v9];
  }
}

- (void)_configureCrossfadeSourceContentForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context
{
  if ([(NSMutableArray *)self->_crossfadeViews count:index]> index)
  {
    v8 = [(NSMutableArray *)self->_crossfadeViews objectAtIndex:index];
    v10 = v8;
    v9 = 0.0;
    if (endpoint == 1)
    {
      v9 = 1.0;
    }

    [v8 setSourceViewCrossfadeFraction:v9];
  }
}

- (void)_configureAlphaForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context
{
  if ([(NSMutableArray *)self->_crossfadeViews count:index]<= index)
  {
    v8 = [(NSMutableArray *)self->_flyingPodViews objectAtIndex:index];
    v10 = v8;
    v9 = 0.0;
    if (endpoint == 1)
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }
}

- (void)_configureScaleForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context includeYTranslation:(BOOL)translation
{
  translationCopy = translation;
  contextCopy = context;
  v11 = [(NSMutableArray *)self->_flyingPodViews objectAtIndex:index];
  memset(&v26, 0, sizeof(v26));
  if (!endpoint)
  {
    [(SBHLibraryZoomAnimator *)self _sourceFrameForPodViewAtIndex:index inCoordinateSpace:0 withContext:contextCopy];
    v17 = v16;
    libraryPodIconView = [contextCopy libraryPodIconView];
    [libraryPodIconView iconContentScale];
    v20 = v19;

    [v11 bounds];
    CGAffineTransformMakeScale(&v26, v20 * (v17 / v21), v20 * (v17 / v21));
    if (!translationCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = *(MEMORY[0x1E695EFD0] + 16);
  *&v26.a = *MEMORY[0x1E695EFD0];
  *&v26.c = v12;
  *&v26.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (translationCopy)
  {
LABEL_3:
    [(SBHLibraryZoomAnimator *)self _targetFrameForPodView:v11 atIndex:index forEndpoint:endpoint withContext:contextCopy];
    UIRectGetCenter();
    v14 = v13;
    [v11 center];
    memset(&v25, 0, sizeof(v25));
    CGAffineTransformMakeTranslation(&v25, 0.0, v14 - v15);
    t1 = v26;
    v22 = v25;
    CGAffineTransformConcat(&v24, &t1, &v22);
    v26 = v24;
  }

LABEL_4:
  v25 = v26;
  [v11 setTransform:&v25];
}

- (void)_configureCategoryStackAlphaForPodViewAtIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context
{
  contextCopy = context;
  if (index && [(NSMutableArray *)self->_crossfadeViews count]> index)
  {
    v8 = [(NSMutableArray *)self->_flyingPodViews objectAtIndex:index];
    libraryIconViewController = [contextCopy libraryIconViewController];
    categoryStackView = [libraryIconViewController categoryStackView];

    v11 = 1.0;
    v12 = 1.0;
    if (endpoint != 1)
    {
      [categoryStackView alphaForStackedViewAtIndex:{index, 1.0}];
      v11 = 0.0;
    }

    [v8 setAlpha:v12];
    v13 = [(NSMutableArray *)self->_crossfadeViews objectAtIndex:index];
    podIconView = [v13 podIconView];
    [podIconView setIconImageAlpha:v11];
  }
}

- (void)_configureDockIndicatorViewsForEndpoint:(int64_t)endpoint preparing:(BOOL)preparing withContext:(id)context
{
  if (endpoint)
  {
    preparingCopy = 1;
  }

  else
  {
    preparingCopy = preparing;
  }

  if (preparingCopy)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  if (endpoint == 1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  libraryIconViewController = [context libraryIconViewController];
  categoryStackView = [libraryIconViewController categoryStackView];
  [categoryStackView setAlpha:v6];

  dismissalView = [libraryIconViewController dismissalView];
  [dismissalView setAlpha:v7];
}

- (id)_flyingPodIconViewAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_flyingPodViews objectAtIndex:?];
  if ([(NSMutableArray *)self->_crossfadeViews count]<= index)
  {
    podIconView = v5;
  }

  else
  {
    podIconView = [v5 podIconView];
  }

  v7 = podIconView;

  return v7;
}

- (SBIconImageInfo)_iconImageInfoForPodViewAtIndex:(SEL)index
{
  v5 = [(NSMutableArray *)self->_flyingPodViews objectAtIndex:a4];
  [(NSMutableArray *)self->_crossfadeViews count];
  [v5 iconImageInfo];

  return result;
}

- (void)_setIconImageInfo:(SBIconImageInfo *)info forPodViewAtIndex:(unint64_t)index
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  index = [(NSMutableArray *)self->_flyingPodViews objectAtIndex:info, index];
  [(NSMutableArray *)self->_crossfadeViews count];
  [index setIconImageInfo:{v11, v10, v9, v8}];
}

- (CGRect)_targetFrameForPodView:(id)view atIndex:(unint64_t)index forEndpoint:(int64_t)endpoint withContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  v12 = contextCopy;
  if (endpoint)
  {
    iconListView = [contextCopy iconListView];

    v14 = [(NSMutableArray *)self->_libraryIconViews objectAtIndex:index];
    icon = [v14 icon];
    if ([iconListView isDisplayingIcon:icon] && (objc_msgSend(iconListView, "rectForIcon:", icon), x = v39.origin.x, y = v39.origin.y, width = v39.size.width, height = v39.size.height, !CGRectIsNull(v39)))
    {
      superview = [viewCopy superview];
      [iconListView convertRect:superview toView:{x, y, width, height}];
      v21 = v31;
      v23 = v32;
      v25 = v33;
      v24 = v34;
    }

    else
    {
      [iconListView bounds];
      UIRectGetCenter();
      v21 = v20;
      v23 = v22;
      v24 = 1.0;
      v25 = 1.0;
    }
  }

  else
  {
    iconListView = [viewCopy superview];
    [(SBHLibraryZoomAnimator *)self _sourceFrameForPodViewAtIndex:index inCoordinateSpace:iconListView withContext:v12 forUnscaledPositioning:1];
    v21 = v26;
    v23 = v27;
    v25 = v28;
    v24 = v29;
  }

  v35 = v21;
  v36 = v23;
  v37 = v25;
  v38 = v24;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)_sourceFrameForPodViewAtIndex:(unint64_t)index inCoordinateSpace:(id)space withContext:(id)context
{
  [(SBHLibraryZoomAnimator *)self _sourceFrameForPodViewAtIndex:index inCoordinateSpace:space withContext:context forUnscaledPositioning:0];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_sourceFrameForPodViewAtIndex:(unint64_t)index inCoordinateSpace:(id)space withContext:(id)context forUnscaledPositioning:(BOOL)positioning
{
  positioningCopy = positioning;
  spaceCopy = space;
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__SBHLibraryZoomAnimator__sourceFrameForPodViewAtIndex_inCoordinateSpace_withContext_forUnscaledPositioning___block_invoke;
  aBlock[3] = &unk_1E808B730;
  v12 = spaceCopy;
  v53 = v12;
  v13 = contextCopy;
  v54 = v13;
  selfCopy = self;
  v14 = _Block_copy(aBlock);
  libraryPodIconView = [v13 libraryPodIconView];
  if (libraryPodIconView)
  {
    if (index && [(NSMutableArray *)self->_crossfadeViews count]> index)
    {
      if (index >= 2)
      {
        indexCopy = 2;
      }

      else
      {
        indexCopy = index;
      }

      libraryIconViewController = [v13 libraryIconViewController];
      categoryStackView = [libraryIconViewController categoryStackView];

      if (positioningCopy)
      {
        [libraryPodIconView bounds];
        v50 = v19;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [libraryPodIconView iconContentScale];
        v27 = v26;
        [categoryStackView frameForStackedViewAtIndex:indexCopy];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        CGAffineTransformMakeScale(&v51, v27, v27);
        v56.origin.x = v29;
        v56.origin.y = v31;
        v56.size.width = v33;
        v56.size.height = v35;
        CGRectApplyAffineTransform(v56, &v51);
        v57.origin.x = v50;
        v57.origin.y = v21;
        v57.size.width = v23;
        v57.size.height = v25;
        CGRectGetWidth(v57);
        UIRectCenteredRect();
      }

      else
      {
        [categoryStackView frameForStackedViewAtIndex:indexCopy];
      }

      v36 = v14[2](v14, libraryPodIconView);
      v38 = v43;
      v40 = v44;
      v42 = v45;
    }

    else
    {
      [libraryPodIconView bounds];
      v36 = v14[2](v14, libraryPodIconView);
      v38 = v37;
      v40 = v39;
      v42 = v41;
    }
  }

  else
  {
    NSLog(&cfstr_ShouldAlwaysHa.isa);
    v36 = *MEMORY[0x1E695F058];
    v38 = *(MEMORY[0x1E695F058] + 8);
    v40 = *(MEMORY[0x1E695F058] + 16);
    v42 = *(MEMORY[0x1E695F058] + 24);
  }

  v46 = v36;
  v47 = v38;
  v48 = v40;
  v49 = v42;
  result.size.height = v49;
  result.size.width = v48;
  result.origin.y = v47;
  result.origin.x = v46;
  return result;
}

double __109__SBHLibraryZoomAnimator__sourceFrameForPodViewAtIndex_inCoordinateSpace_withContext_forUnscaledPositioning___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (*(a1 + 32))
  {
    v11 = a2;
    v12 = [v11 _outermostLayer];
    v13 = [v11 window];

    v14 = [v13 _outermostLayer];
    [v12 convertRect:v14 toLayer:{a3, a4, a5, a6}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [*(a1 + 40) libraryView];
    [v23 convertRect:*(a1 + 32) toView:{v16, v18, v20, v22}];
    v25 = v24;

    a3 = v25 - *(*(a1 + 48) + 104);
  }

  return a3;
}

- (void)_matchMoveTargetView:(id)view withSourceView:(id)sourceView
{
  sourceViewCopy = sourceView;
  viewCopy = view;
  _outermostLayer = [sourceViewCopy _outermostLayer];
  [_outermostLayer bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  window = [sourceViewCopy window];
  _outermostLayer2 = [window _outermostLayer];
  [_outermostLayer convertRect:_outermostLayer2 toLayer:{v9, v11, v13, v15}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  _outermostLayer3 = [viewCopy _outermostLayer];
  [_outermostLayer3 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  window2 = [viewCopy window];
  _outermostLayer4 = [window2 _outermostLayer];
  [_outermostLayer3 convertRect:_outermostLayer4 toLayer:{v28, v30, v32, v34}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [(SBHLibraryZoomAnimator *)self _matchMoveTargetView:viewCopy withSourceView:sourceViewCopy usingSourceFrame:v19 targetFrame:v21, v23, v25, v38, v40, v42, v44];
}

- (void)_matchMoveTargetView:(id)view withSourceView:(id)sourceView usingSourceFrame:(CGRect)frame targetFrame:(CGRect)targetFrame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69793B8];
  sourceViewCopy = sourceView;
  viewCopy = view;
  animation = [v9 animation];
  _outermostLayer = [sourceViewCopy _outermostLayer];

  [animation setSourceLayer:_outermostLayer];
  [animation setFillMode:*MEMORY[0x1E69797E0]];
  [animation setRemovedOnCompletion:0];
  [animation setDuration:INFINITY];
  [animation setAppliesY:1];
  [animation setAppliesX:1];
  UIRectGetCenter();
  v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{v14 - x, v15 - y}];
  v19[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [animation setSourcePoints:v17];

  _outermostLayer2 = [viewCopy _outermostLayer];

  [_outermostLayer2 addAnimation:animation forKey:@"SBHLibraryPodViewMatchMoveKey"];
}

- (BOOL)_targetViewHasMatchMove:(id)move
{
  _outermostLayer = [move _outermostLayer];
  v4 = [_outermostLayer animationForKey:@"SBHLibraryPodViewMatchMoveKey"];
  v5 = v4 != 0;

  return v5;
}

- (void)_removeMatchMoveFromTargetView:(id)view
{
  _outermostLayer = [view _outermostLayer];
  [_outermostLayer removeAnimationForKey:@"SBHLibraryPodViewMatchMoveKey"];
}

- (void)_addPositionToTargetView:(id)view matchingSourceView:(id)sourceView initialSourceFrame:(CGRect)frame
{
  y = frame.origin.y;
  sourceViewCopy = sourceView;
  viewCopy = view;
  _outermostLayer = [sourceViewCopy _outermostLayer];
  [_outermostLayer bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  window = [sourceViewCopy window];

  _outermostLayer2 = [window _outermostLayer];
  [_outermostLayer convertRect:_outermostLayer2 toLayer:{v10, v12, v14, v16}];
  v20 = v19;

  v21 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.y"];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v20 - y];
  [v21 setFromValue:v22];

  [v21 setToValue:&unk_1F3DB2618];
  [v21 setAdditive:1];
  [v21 setDuration:0.05];
  _outermostLayer3 = [viewCopy _outermostLayer];

  [_outermostLayer3 addAnimation:v21 forKey:@"SBHLibraryPodViewAdditivePositionKey"];
}

- (void)_removePositionAdditionFromTargetView:(id)view
{
  _outermostLayer = [view _outermostLayer];
  [_outermostLayer removeAnimationForKey:@"SBHLibraryPodViewAdditivePositionKey"];
}

@end