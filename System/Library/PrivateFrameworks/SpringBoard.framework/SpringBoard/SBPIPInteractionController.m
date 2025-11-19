@interface SBPIPInteractionController
- (BOOL)_hasValidInteractionTargetView;
- (BOOL)_isGestureRecognizerRecognizing:(id)a3;
- (BOOL)_isGesturing;
- (BOOL)_isInteractive;
- (BOOL)_isPanning;
- (BOOL)_isPinching;
- (BOOL)_isPositionCloserToStashedLeftRegion:(CGPoint)a3 closestPointOut:(CGPoint *)a4;
- (BOOL)_isSystemGestureRecognizer:(id)a3;
- (BOOL)_regionIsStashedOne:(id)a3;
- (BOOL)_setEdgeInsets:(UIEdgeInsets)a3 forScene:(id)a4;
- (BOOL)_setStashedPadding:(UIEdgeInsets)a3 forScene:(id)a4;
- (BOOL)_updateGeometryContextUsingTargetViewBounds:(CGRect)a3 orientation:(int64_t)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)gestureRecognizerShouldFailForMovementPastHysteresis:(id)a3;
- (BOOL)isStashed;
- (BOOL)shouldBeginPointerInteractionRequest:(id)a3 atLocation:(CGPoint)a4 forView:(id)a5;
- (CGAffineTransform)_stashTabCompensationTransformForStashProgress:(SEL)a3 reason:(double)a4;
- (CGAffineTransform)_transformFromDisplayArrangeSpaceToWindowScene:(SEL)a3;
- (CGAffineTransform)_transformToDisplayArrangementSpaceFromWindowScene:(SEL)a3;
- (CGPoint)_closestToDefaultCornersPosition;
- (CGPoint)_convertPointToInteractionTargetView:(CGPoint)a3 fromSystemGestureRecognizer:(id)a4;
- (CGPoint)_currentPosition;
- (CGPoint)_currentPositionForLayoutReason:(unint64_t)a3;
- (CGPoint)_interactionTargetViewPresentationPosition;
- (CGPoint)_roundPosition:(CGPoint)a3 forSize:(CGSize)a4;
- (CGPoint)edgeResizeAnchorPoint;
- (CGRect)initialFrame;
- (CGRect)nonoperationalFrame;
- (CGSize)_currentSizeForLayoutReason:(unint64_t)a3;
- (CGSize)_lastSteadySize;
- (CGSize)preferredContentSize;
- (NSString)description;
- (SBPIPInteractionController)initWithInteractionTargetView:(id)a3 preferredContentSize:(CGSize)a4 interactionSettings:(id)a5 dataSource:(id)a6 delegate:(id)a7;
- (SBPIPInteractionControllerDataSource)dataSource;
- (SBPIPPositionGeometryContext)regionComposer:(SEL)a3 transformGeometryContext:(id)a4 toWindowScene:(SBPIPPositionGeometryContext *)a5;
- (SBPIPPositionInteractionStateContext)_currentPositionInteractionStateContext;
- (UIEdgeInsets)_cachedEdgeInsetsForScene:(id)a3;
- (UIEdgeInsets)_cachedStashedPaddingForScene:(id)a3;
- (UIEdgeInsets)_inFlightHitTestPadding;
- (UIEdgeInsets)_minimumStashedPadding:(UIEdgeInsets)a3;
- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)a3;
- (UIView)targetOverlayView;
- (UIView)targetView;
- (double)_proratedScaleForNormalizedScale:(double)a3;
- (double)_stashProgressForPosition:(CGPoint)a3;
- (double)currentNormalizedScale;
- (double)preferredNormalizedScale;
- (double)stashProgress;
- (id)_rotationHyperregion;
- (id)_scaleHyperregion;
- (id)positionHyperregion;
- (id)regionAtLocation:(CGPoint)a3 forView:(id)a4;
- (id)styleForRegion:(id)a3 forView:(id)a4;
- (id)targetWindowSceneForRegionComposer:(id)a3;
- (unint64_t)__traitsForGesturesReasons:(unint64_t)a3;
- (unint64_t)_canonicalPositionForPoint:(CGPoint)a3;
- (unint64_t)canonicalPosition;
- (void)__handleGesturesEndedState:(id)a3;
- (void)__moveToAnchorPoint:(CGPoint)a3 reason:(id)a4;
- (void)_adjustContentViewAnchorPointForGestureRecognizer:(id)a3;
- (void)_cancelAllGestures;
- (void)_enumerateComposers:(id)a3 usingBlock:(id)a4;
- (void)_handleGestureBeganState:(id)a3;
- (void)_handleGestureEndedState:(id)a3;
- (void)_noteStashProgress:(double)a3 withReason:(unint64_t)a4;
- (void)_performInitialLayoutIfNeeded;
- (void)_removeGestureRecognizers;
- (void)_removePointerInteraction;
- (void)_resetAnchorPoint;
- (void)_setDefaults;
- (void)_setNeedsLayoutForTraits:(unint64_t)a3 withReason:(unint64_t)a4 behavior:(int)a5 layoutCompletion:(id)a6 interactionCompletion:(id)a7;
- (void)_setPreferredScale:(double)a3 additionalReasons:(unint64_t)a4 animationBehavior:(int)a5;
- (void)_setupDefaultInteractorsAndHyperRegions;
- (void)_setupForInitialFrame;
- (void)_setupGestureRecognizers;
- (void)_setupPointerInteraction;
- (void)_setupStateCapture;
- (void)_sizeChangeBeganWithBehavior:(int)a3;
- (void)_sizeChangeEnded;
- (void)_updateGeometryContextBoundsUsingMainDisplayWindowScene;
- (void)_updateHyperregionVisualizationIfNecessary;
- (void)_updateInteractorsAndCommit:(BOOL)a3;
- (void)_updatePIPSizeGeometryContext;
- (void)_updatePositionRegionComposers;
- (void)_updatePreferredContentSize;
- (void)_updateResolvedPositionHyperRegionsMapWithGeometry:(SBPIPPositionGeometryContext *)a3 interactionState:(SBPIPPositionInteractionStateContext *)a4;
- (void)_updateSettingsDrivenParameters;
- (void)_updateTargetWindowSceneIfNeededUpdatingInteractors:(BOOL)a3;
- (void)addPositionRegionComposer:(id)a3;
- (void)dealloc;
- (void)finishTransitionToWindowScene:(id)a3;
- (void)handleEdgeResizeGesture:(id)a3;
- (void)handleExternalPanGesture:(id)a3;
- (void)handlePanGesture:(id)a3;
- (void)handlePinchGesture:(id)a3;
- (void)handleRotationGesture:(id)a3;
- (void)layoutInteractedTraits:(unint64_t)a3 withReason:(unint64_t)a4 source:(id)a5;
- (void)layoutWithFrame:(CGRect)a3 reason:(id)a4 source:(id)a5 usingDisplayArrangementSpace:(BOOL)a6;
- (void)pointerWillExitRegion;
- (void)positionRegionComposerDidInvalidate:(id)a3;
- (void)positionRegionComposerNeedsUpdate:(id)a3 behavior:(int)a4;
- (void)prepareForTransitionToWindowScene:(id)a3;
- (void)recalculateScale:(double *)a3 baselineScale:(double *)a4 forTranslationInView:(CGPoint)a5;
- (void)reloadHyperregionComposerData;
- (void)reloadInsets;
- (void)setContainerSize:(CGSize)a3 withOrientation:(int64_t)a4 scene:(id)a5;
- (void)setContentLayoutSettings:(id)a3 animationBehavior:(int)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setPlatformMetrics:(id)a3 contentSize:(CGSize)a4 animationBehavior:(int)a5;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)setPreferredNormalizedScale:(double)a3 additionalReasons:(unint64_t)a4 animationBehavior:(int)a5;
- (void)setStashed:(BOOL)a3;
- (void)setTargetOverlayView:(id)a3;
- (void)toggleUserPreferredScale;
@end

@implementation SBPIPInteractionController

- (SBPIPInteractionController)initWithInteractionTargetView:(id)a3 preferredContentSize:(CGSize)a4 interactionSettings:(id)a5 dataSource:(id)a6 delegate:(id)a7
{
  height = a4.height;
  width = a4.width;
  v82 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (width <= 0.0)
  {
    [SBPIPInteractionController initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:];
  }

  if (height <= 0.0)
  {
    [SBPIPInteractionController initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:];
    if (v13)
    {
LABEL_5:
      if (v14)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  [SBPIPInteractionController initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:];
  if (v14)
  {
LABEL_6:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_21:
    [SBPIPInteractionController initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:];
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_20:
  [SBPIPInteractionController initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:];
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_22:
  [SBPIPInteractionController initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:];
LABEL_8:
  v75.receiver = self;
  v75.super_class = SBPIPInteractionController;
  v17 = [(SBPIPInteractionController *)&v75 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v16);
    objc_storeWeak(&v18->_dataSource, v15);
    objc_storeWeak(&v18->_interactionTargetView, v13);
    v19 = [v13 _sbWindowScene];
    targetWindowScene = v18->_targetWindowScene;
    v18->_targetWindowScene = v19;

    v21 = [v15 layoutSettings];
    layoutSettings = v18->_layoutSettings;
    v18->_layoutSettings = v21;

    if ([(SBWindowScene *)v18->_targetWindowScene isMainDisplayWindowScene])
    {
      v23 = [v13 superview];
      [v23 bounds];
      BSRectWithSize();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = [v13 _sbWindowScene];
      -[SBPIPInteractionController _updateGeometryContextUsingTargetViewBounds:orientation:](v18, "_updateGeometryContextUsingTargetViewBounds:orientation:", [v32 interfaceOrientation], v25, v27, v29, v31);
    }

    else
    {
      [(SBPIPInteractionController *)v18 _updateGeometryContextBoundsUsingMainDisplayWindowScene];
    }

    v33 = objc_alloc_init(MEMORY[0x277D75D18]);
    pointerHitTestBlocker = v18->_pointerHitTestBlocker;
    v18->_pointerHitTestBlocker = v33;

    v35 = v18->_pointerHitTestBlocker;
    v36 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v35 setBackgroundColor:v36];

    v37 = [(UIView *)v18->_pointerHitTestBlocker layer];
    [v37 setHitTestsAsOpaque:1];

    v38 = [(UIView *)v18->_pointerHitTestBlocker layer];
    [v38 setAllowsHitTesting:1];

    [v13 addSubview:v18->_pointerHitTestBlocker];
    [v13 sendSubviewToBack:v18->_pointerHitTestBlocker];
    [(SBPIPContentViewLayoutSettings *)v18->_layoutSettings defaultContentViewSizeForAspectRatio:width, height];
    v18->_preferredContentSize.width = v39;
    v18->_preferredContentSize.height = v40;
    v18->_toBeAppliedPreferredContentSize = v18->_preferredContentSize;
    [(SBPIPContentViewLayoutSettings *)v18->_layoutSettings contentViewPadding];
    v42 = v41;
    [(SBPIPContentViewLayoutSettings *)v18->_layoutSettings contentViewPadding];
    v44 = v43;
    [(SBPIPContentViewLayoutSettings *)v18->_layoutSettings contentViewPadding];
    v46 = v45;
    [(SBPIPContentViewLayoutSettings *)v18->_layoutSettings contentViewPadding];
    v18->_geometryContext.minimumPadding.top = v42;
    v18->_geometryContext.minimumPadding.left = v44;
    v18->_geometryContext.minimumPadding.bottom = v46;
    v18->_geometryContext.minimumPadding.right = v47;
    [(SBPIPContentViewLayoutSettings *)v18->_layoutSettings contentViewPaddingWhileStashed];
    v49 = v48;
    [(SBPIPContentViewLayoutSettings *)v18->_layoutSettings contentViewPaddingWhileStashed];
    v18->_geometryContext.stashedMinimumPadding.top = v49;
    v18->_geometryContext.stashedMinimumPadding.left = 0.0;
    v18->_geometryContext.stashedMinimumPadding.bottom = v50;
    v51 = MEMORY[0x277CBF2C0];
    v18->_geometryContext.stashedMinimumPadding.right = 0.0;
    v52 = *v51;
    v53 = v51[1];
    v54 = v51[2];
    *&v18->_stashTabCompensationTransform.c = v53;
    *&v18->_stashTabCompensationTransform.tx = v54;
    *&v18->_rotationTransform.a = v52;
    *&v18->_rotationTransform.c = v53;
    *&v18->_rotationTransform.tx = v54;
    __asm { FMOV            V1.2D, #0.5 }

    v18->_anchorPoint = _Q1;
    *&v18->_stashTabCompensationTransform.a = v52;
    v60 = [v15 debugName];
    debugName = v18->_debugName;
    v18->_debugName = v60;

    v62 = [v15 systemGestureManagerForInteractionControllerResizing:v18];
    systemGestureManagerForResizing = v18->_systemGestureManagerForResizing;
    v18->_systemGestureManagerForResizing = v62;

    objc_storeStrong(&v18->_interactionSettings, a5);
    [(PTSettings *)v18->_interactionSettings addKeyPathObserver:v18];
    v64 = [MEMORY[0x277CBEB18] array];
    positionRegionComposers = v18->_positionRegionComposers;
    v18->_positionRegionComposers = v64;

    [(SBPIPInteractionController *)v18 _setupDefaultInteractorsAndHyperRegions];
    [(SBPIPInteractionController *)v18 _updateInteractorsAndCommit:1];
    [(SBPIPInteractionController *)v18 _setDefaults];
    [(SBPIPInteractionController *)v18 _setupForInitialFrame];
    [(SBPIPInteractionController *)v18 _setupStateCapture];
    v66 = @"-";
    v67 = v18->_debugName;
    if (!v67)
    {
      v66 = &stru_283094718;
      v67 = &stru_283094718;
    }

    v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p%@%@", v18, v66, v67];
    shortDescription = v18->_shortDescription;
    v18->_shortDescription = v68;

    v70 = SBLogPIP();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v18->_shortDescription;
      v72 = NSStringFromCGRect(v18->_nonoperationalFrame);
      v73 = [(SBPIPInteractionController *)v18 canonicalPosition];
      *buf = 138543874;
      v77 = v71;
      v78 = 2114;
      v79 = v72;
      v80 = 2048;
      v81 = v73;
      _os_log_impl(&dword_21ED4E000, v70, OS_LOG_TYPE_DEFAULT, "[%{public}@] PIP Interaction controller was initialized. _nonoperationalFrame[%{public}@] canonicalPosition[%lu]", buf, 0x20u);
    }
  }

  return v18;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = SBLogPIP();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = self->_shortDescription;
    *buf = 138543362;
    v13 = shortDescription;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] PIP Interaction controller was deallocated.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v6 = [WeakRetained window];

  v7 = self->_systemGestureManagerForResizing;
  v8 = v7;
  if (v7)
  {
    [(SBSystemGestureManager *)v7 removeGestureRecognizer:self->_panWhileResizingGestureRecognizer];
    [(SBSystemGestureManager *)v8 removeGestureRecognizer:self->_pinchGestureRecognizer];
    rotationGestureRecognizer = self->_rotationGestureRecognizer;
    v10 = v8;
  }

  else
  {
    [(SBSystemGestureManager *)v6 removeGestureRecognizer:self->_pinchGestureRecognizer];
    rotationGestureRecognizer = self->_rotationGestureRecognizer;
    v10 = v6;
  }

  [(SBSystemGestureManager *)v10 removeGestureRecognizer:rotationGestureRecognizer];
  [(SBSystemGestureManager *)v6 removeGestureRecognizer:self->_panGestureRecognizer];
  [(SBSystemGestureManager *)v6 removeGestureRecognizer:self->_edgeResizeGestureRecognizer];
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  [(UIViewFloatAnimatableProperty *)self->_layoutProgressProperty invalidate];

  v11.receiver = self;
  v11.super_class = SBPIPInteractionController;
  [(SBPIPInteractionController *)&v11 dealloc];
}

- (BOOL)_hasValidInteractionTargetView
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v3 = [WeakRetained superview];

  v4 = [WeakRetained superview];
  [v4 bounds];
  v7 = v6 != *(MEMORY[0x277CBF3A8] + 8) || v5 != *MEMORY[0x277CBF3A8];

  if (WeakRetained)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  v10 = v9 & v7;
  if ((v9 & v7 & 1) == 0)
  {
    v11 = SBLogPIP();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109632;
      v13[1] = WeakRetained != 0;
      v14 = 1024;
      v15 = v3 != 0;
      v16 = 1024;
      v17 = v7;
      _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "Interaction target view is not valid for reason: interactionTargetView is != nil? %{BOOL}u — interactionContainerView is != nil? %{BOOL}u — container size is CGSizeZero? %{BOOL}u", v13, 0x14u);
    }
  }

  return v10;
}

- (void)_setupStateCapture
{
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PictureInPicture - SBPIPInteractionController - %p(%@)", self, self->_debugName];
  v4 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v7, &location);
  v5 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
  self->_stateCaptureInvalidatable = v5;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __48__SBPIPInteractionController__setupStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v69[31] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v58 = MEMORY[0x277CCACA8];
  v67.receiver = self;
  v67.super_class = SBPIPInteractionController;
  v66 = [(SBPIPInteractionController *)&v67 description];
  debugName = self->_debugName;
  if (!debugName)
  {
    debugName = &stru_283094718;
  }

  v68[0] = @"Debug Name";
  v68[1] = @"Enabled";
  if (self->_enabled)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v69[0] = debugName;
  v69[1] = v5;
  v68[2] = @"Frame";
  v65 = WeakRetained;
  if (WeakRetained)
  {
    [(__CFString *)WeakRetained frame];
    v6 = NSStringFromCGRect(v74);
    v7 = WeakRetained;
  }

  else
  {
    v6 = @"null";
    v7 = @"nil";
  }

  v42 = v6;
  v69[2] = v6;
  v68[3] = @"Anchor Point";
  v64 = NSStringFromPoint(self->_anchorPoint);
  v69[3] = v64;
  v68[4] = @"Container Bounds";
  v63 = NSStringFromCGRect(self->_geometryContext.containerBounds);
  v69[4] = v63;
  v68[5] = @"Orientation";
  v62 = SBFStringForBSInterfaceOrientation();
  v69[5] = v62;
  v68[6] = @"Current Position";
  [(SBPIPInteractionController *)self _currentPositionForLayoutReason:1024];
  v61 = NSStringFromPoint(v71);
  v69[6] = v61;
  v68[7] = @"Current Rotation";
  v8 = MEMORY[0x277CCABB0];
  [(SBPIPInteractionController *)self _currentRotation];
  v60 = [v8 numberWithDouble:?];
  v69[7] = v60;
  v68[8] = @"Current Scale";
  v9 = MEMORY[0x277CCABB0];
  [(SBPIPInteractionController *)self _currentScale];
  v57 = [v9 numberWithDouble:?];
  v69[8] = v57;
  v68[9] = @"Current Normalized Scale";
  v10 = MEMORY[0x277CCABB0];
  [(SBPIPInteractionController *)self currentNormalizedScale];
  v56 = [v10 numberWithDouble:?];
  v69[9] = v56;
  v68[10] = @"Preferred Normalized Scale";
  v11 = MEMORY[0x277CCABB0];
  [(SBPIPInteractionController *)self preferredNormalizedScale];
  v55 = [v11 numberWithDouble:?];
  v69[10] = v55;
  v68[11] = @"Current Size";
  [(SBPIPInteractionController *)self _currentSizeForLayoutReason:1024];
  v54 = NSStringFromSize(v72);
  v69[11] = v54;
  v68[12] = @"Edge Insets";
  v53 = NSStringFromUIEdgeInsets(self->_geometryContext.edgeInsets);
  v69[12] = v53;
  v68[13] = @"Initial Frame";
  v52 = NSStringFromCGRect(self->_nonoperationalFrame);
  v69[13] = v52;
  v69[14] = v7;
  v68[14] = @"Interaction Target View";
  v68[15] = @"Is Changing Size";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_isChangingSize];
  if (self->_systemGestureManagerForResizing)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v51 = v12;
  v69[15] = v12;
  v69[16] = v13;
  v68[16] = @"Use System Gestures For Resizing";
  v68[17] = @"Last Steady Size";
  [(SBPIPInteractionController *)self _lastSteadySize];
  v50 = NSStringFromSize(v73);
  v69[17] = v50;
  v68[18] = @"In Flight Animations Count";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inFlightAnimatedLayouts];
  v48 = [v49 stringValue];
  v69[18] = v48;
  v68[19] = @"Pan Gesture Recognizer";
  panGestureRecognizer = self->_panGestureRecognizer;
  v47 = panGestureRecognizer;
  if (panGestureRecognizer)
  {
    v15 = [(UIPanGestureRecognizer *)panGestureRecognizer debugDescription];
  }

  else
  {
    v15 = @"nil";
  }

  v41 = v15;
  v69[19] = v15;
  v68[20] = @"Two touches Pan Gesture Recognizer";
  panWhileResizingGestureRecognizer = self->_panWhileResizingGestureRecognizer;
  v46 = panWhileResizingGestureRecognizer;
  if (panWhileResizingGestureRecognizer)
  {
    v17 = [(UIPanGestureRecognizer *)panWhileResizingGestureRecognizer debugDescription];
  }

  else
  {
    v17 = @"nil";
  }

  v40 = v17;
  v69[20] = v17;
  v68[21] = @"Pinch Gesture Recognizer";
  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  v45 = pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    v19 = [(SBPIPPinchGestureRecognizer *)pinchGestureRecognizer debugDescription];
  }

  else
  {
    v19 = @"nil";
  }

  v39 = v19;
  v69[21] = v19;
  v68[22] = @"Position Interactor";
  positionInteractor = self->_positionInteractor;
  v44 = positionInteractor;
  if (positionInteractor)
  {
    v21 = [(_UIHyperInteractor *)positionInteractor debugDescription];
  }

  else
  {
    v21 = @"nil";
  }

  v38 = v21;
  v69[22] = v21;
  v68[23] = @"Preferred Content Size";
  v43 = NSStringFromSize(self->_preferredContentSize);
  v69[23] = v43;
  v68[24] = @"Rotation Gesture Recognizer";
  rotationGestureRecognizer = self->_rotationGestureRecognizer;
  if (rotationGestureRecognizer)
  {
    v23 = [(SBPIPRotationGestureRecognizer *)self->_rotationGestureRecognizer debugDescription];
  }

  else
  {
    v23 = @"nil";
  }

  v37 = v23;
  v69[24] = v23;
  v68[25] = @"Rotation Interactor";
  rotationInteractor = self->_rotationInteractor;
  if (rotationInteractor)
  {
    v25 = [(_UIHyperInteractor *)self->_rotationInteractor debugDescription];
  }

  else
  {
    v25 = @"nil";
  }

  v69[25] = v25;
  v68[26] = @"Scale Interactor";
  scaleInteractor = self->_scaleInteractor;
  if (scaleInteractor)
  {
    v27 = [(_UIHyperInteractor *)self->_scaleInteractor debugDescription];
  }

  else
  {
    v27 = @"nil";
  }

  v69[26] = v27;
  v68[27] = @"Stash progress";
  v28 = MEMORY[0x277CCABB0];
  [(SBPIPInteractionController *)self stashProgress];
  v29 = [v28 numberWithDouble:?];
  v69[27] = v29;
  v68[28] = @"Should stash";
  v30 = BSSettingFlagDescription();
  v31 = v30;
  if (self->_didLastSettleInStashedState)
  {
    v32 = @"YES";
  }

  else
  {
    v32 = @"NO";
  }

  v69[28] = v30;
  v69[29] = v32;
  v68[29] = @"Did last settle in stashed state";
  v68[30] = @"To Be Applied Preferred Content Size";
  v33 = NSStringFromSize(self->_toBeAppliedPreferredContentSize);
  v69[30] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:31];
  v35 = [v34 description];
  v59 = [v58 stringWithFormat:@"%@\n%@", v66, v35];

  if (scaleInteractor)
  {
  }

  if (rotationInteractor)
  {
  }

  if (rotationGestureRecognizer)
  {
  }

  if (v44)
  {
  }

  if (v45)
  {
  }

  if (v46)
  {
  }

  if (v47)
  {
  }

  if (v65)
  {
  }

  return v59;
}

- (void)_setupForInitialFrame
{
  if ([(SBPIPInteractionController *)self _hasValidInteractionTargetView])
  {
    [(SBPIPInteractionController *)self _updateInteractorsAndCommit:1];
    [(SBPIPInteractionController *)self _currentSizeForLayoutReason:0];
    v4 = v3;
    v6 = v5;
    [(SBPIPInteractionController *)self _currentPositionForLayoutReason:0];
    self->_nonoperationalFrame.origin.x = v7 - v4 * 0.5;
    self->_nonoperationalFrame.origin.y = v8 - v6 * 0.5;
    self->_nonoperationalFrame.size.width = v4;
    self->_nonoperationalFrame.size.height = v6;
  }

  else
  {
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    self->_nonoperationalFrame.origin = *MEMORY[0x277CBF3A0];
    self->_nonoperationalFrame.size = v9;
  }
}

- (void)_setupGestureRecognizers
{
  if ([(SBPIPInteractionController *)self _hasValidInteractionTargetView])
  {
    v3 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePanGesture_];
    panGestureRecognizer = self->_panGestureRecognizer;
    self->_panGestureRecognizer = v3;

    v5 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handleEdgeResizeGesture_];
    edgeResizeGestureRecognizer = self->_edgeResizeGestureRecognizer;
    self->_edgeResizeGestureRecognizer = v5;

    v7 = [[SBPIPPinchGestureRecognizer alloc] initWithTarget:self action:sel_handlePinchGesture_];
    pinchGestureRecognizer = self->_pinchGestureRecognizer;
    self->_pinchGestureRecognizer = v7;

    v9 = [[SBPIPRotationGestureRecognizer alloc] initWithTarget:self action:sel_handleRotationGesture_];
    rotationGestureRecognizer = self->_rotationGestureRecognizer;
    self->_rotationGestureRecognizer = v9;

    [(UIPanGestureRecognizer *)self->_panGestureRecognizer setAllowedScrollTypesMask:3];
    v11 = self->_panGestureRecognizer;
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"%@-Pan", v14];
    [(UIPanGestureRecognizer *)v11 setName:v15];

    v16 = self->_edgeResizeGestureRecognizer;
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"%@-EdgeResize", v19];
    [(UIPanGestureRecognizer *)v16 setName:v20];

    v21 = self->_pinchGestureRecognizer;
    v22 = MEMORY[0x277CCACA8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 stringWithFormat:@"%@-Pinch", v24];
    [(SBPIPPinchGestureRecognizer *)v21 setName:v25];

    v26 = self->_rotationGestureRecognizer;
    v27 = MEMORY[0x277CCACA8];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v27 stringWithFormat:@"%@-Rotation", v29];
    [(SBPIPRotationGestureRecognizer *)v26 setName:v30];

    [(UIPanGestureRecognizer *)self->_panGestureRecognizer setDelegate:self];
    [(UIPanGestureRecognizer *)self->_edgeResizeGestureRecognizer setDelegate:self];
    [(SBPIPPinchGestureRecognizer *)self->_pinchGestureRecognizer setDelegate:self];
    [(SBPIPRotationGestureRecognizer *)self->_rotationGestureRecognizer setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
    v40 = [WeakRetained window];

    v32 = self->_systemGestureManagerForResizing;
    if (v32)
    {
      v33 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePanGesture_];
      panWhileResizingGestureRecognizer = self->_panWhileResizingGestureRecognizer;
      self->_panWhileResizingGestureRecognizer = v33;

      v35 = self->_panWhileResizingGestureRecognizer;
      v36 = MEMORY[0x277CCACA8];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v36 stringWithFormat:@"%@-SystemTwoTouchesPan", v38];
      [(UIPanGestureRecognizer *)v35 setName:v39];

      [(UIPanGestureRecognizer *)self->_panWhileResizingGestureRecognizer setAllowedTouchTypes:&unk_28336E358];
      [(UIPanGestureRecognizer *)self->_panWhileResizingGestureRecognizer setMinimumNumberOfTouches:2];
      [(UIPanGestureRecognizer *)self->_panWhileResizingGestureRecognizer setMaximumNumberOfTouches:2];
      [(UIPanGestureRecognizer *)self->_panWhileResizingGestureRecognizer setDelegate:self];
      [(SBPIPPinchGestureRecognizer *)self->_pinchGestureRecognizer setFailsPastHysteresis:1];
      [(SBPIPPinchGestureRecognizer *)self->_pinchGestureRecognizer setMaximumNumberOfTouches:2];
      [(SBPIPRotationGestureRecognizer *)self->_rotationGestureRecognizer setFailsPastHysteresis:1];
      [(SBPIPRotationGestureRecognizer *)self->_rotationGestureRecognizer setMaximumNumberOfTouches:2];
      [(SBPIPPinchGestureRecognizer *)self->_pinchGestureRecognizer setAllowedTouchTypes:&unk_28336E370];
      [(SBPIPRotationGestureRecognizer *)self->_rotationGestureRecognizer setAllowedTouchTypes:&unk_28336E388];
      [(SBSystemGestureManager *)v32 addGestureRecognizer:self->_panWhileResizingGestureRecognizer withType:124];
      [(SBSystemGestureManager *)v32 addGestureRecognizer:self->_pinchGestureRecognizer withType:125];
      [(SBSystemGestureManager *)v32 addGestureRecognizer:self->_rotationGestureRecognizer withType:126];
    }

    else
    {
      [v40 addGestureRecognizer:self->_pinchGestureRecognizer];
      [v40 addGestureRecognizer:self->_rotationGestureRecognizer];
    }

    [v40 addGestureRecognizer:self->_panGestureRecognizer];
    [v40 addGestureRecognizer:self->_edgeResizeGestureRecognizer];
    [(SBPIPInteractionController *)self _updateSettingsDrivenParameters];
  }
}

- (void)_removeGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v13 = [WeakRetained window];

  v4 = self->_systemGestureManagerForResizing;
  v5 = v4;
  if (v4)
  {
    [(SBSystemGestureManager *)v4 removeGestureRecognizer:self->_panWhileResizingGestureRecognizer];
    [(SBSystemGestureManager *)v5 removeGestureRecognizer:self->_pinchGestureRecognizer];
    rotationGestureRecognizer = self->_rotationGestureRecognizer;
    v7 = v5;
  }

  else
  {
    [(SBSystemGestureManager *)v13 removeGestureRecognizer:self->_pinchGestureRecognizer];
    rotationGestureRecognizer = self->_rotationGestureRecognizer;
    v7 = v13;
  }

  [(SBSystemGestureManager *)v7 removeGestureRecognizer:rotationGestureRecognizer];
  [(SBSystemGestureManager *)v13 removeGestureRecognizer:self->_panGestureRecognizer];
  [(SBSystemGestureManager *)v13 removeGestureRecognizer:self->_edgeResizeGestureRecognizer];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = 0;

  edgeResizeGestureRecognizer = self->_edgeResizeGestureRecognizer;
  self->_edgeResizeGestureRecognizer = 0;

  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  self->_pinchGestureRecognizer = 0;

  v11 = self->_rotationGestureRecognizer;
  self->_rotationGestureRecognizer = 0;

  panWhileResizingGestureRecognizer = self->_panWhileResizingGestureRecognizer;
  self->_panWhileResizingGestureRecognizer = 0;
}

- (void)_setupPointerInteraction
{
  if ([(SBPIPInteractionController *)self _hasValidInteractionTargetView])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = [WeakRetained systemPointerInteractionManagerForInteractionController:self];
    systemPointerInteractionManager = self->_systemPointerInteractionManager;
    self->_systemPointerInteractionManager = v4;

    v6 = self->_systemPointerInteractionManager;
    v7 = objc_loadWeakRetained(&self->_interactionTargetView);
    [(SBSystemPointerInteractionManager *)v6 registerView:v7 delegate:self];
  }
}

- (void)_removePointerInteraction
{
  systemPointerInteractionManager = self->_systemPointerInteractionManager;
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  [(SBSystemPointerInteractionManager *)systemPointerInteractionManager unregisterView:WeakRetained];

  v5 = self->_systemPointerInteractionManager;
  self->_systemPointerInteractionManager = 0;
}

- (void)_setupDefaultInteractorsAndHyperRegions
{
  v3 = [objc_alloc(MEMORY[0x277D75FF0]) initWithDimensions:2];
  positionInteractor = self->_positionInteractor;
  self->_positionInteractor = v3;

  v5 = [objc_alloc(MEMORY[0x277D75FF0]) initWithDimensions:1];
  scaleInteractor = self->_scaleInteractor;
  self->_scaleInteractor = v5;

  v7 = [objc_alloc(MEMORY[0x277D75FF0]) initWithDimensions:1];
  rotationInteractor = self->_rotationInteractor;
  self->_rotationInteractor = v7;

  v11 = [objc_alloc(MEMORY[0x277D75FE0]) initWithDimensions:2];
  v9 = [objc_alloc(MEMORY[0x277D75FE0]) initWithDimensions:1];
  v10 = [objc_alloc(MEMORY[0x277D75FE0]) initWithDimensions:1];
  [(_UIHyperInteractor *)self->_positionInteractor _setExtender:v11];
  [(_UIHyperInteractor *)self->_scaleInteractor _setExtender:v10];
  [(_UIHyperInteractor *)self->_rotationInteractor _setExtender:v9];
  [(_UIHyperInteractor *)self->_rotationInteractor _setMinimumSpeed:0.0];
  [(_UIHyperInteractor *)self->_scaleInteractor _setMinimumSpeed:0.0];
  [(SBPIPInteractionController *)self _updateSettingsDrivenParameters];
  [(SBPIPInteractionController *)self _updatePositionRegionComposers];
}

- (void)_updateSettingsDrivenParameters
{
  v3 = [(_UIHyperInteractor *)self->_positionInteractor _extender];
  [(SBPIPInteractionSettings *)self->_interactionSettings positionExtenderMaximumDistance];
  [v3 _setMaximumDistance:?];

  v4 = [(_UIHyperInteractor *)self->_rotationInteractor _extender];
  [(SBPIPInteractionSettings *)self->_interactionSettings rotationExtenderMaximumDistance];
  [v4 _setMaximumDistance:?];

  layoutSettings = self->_layoutSettings;
  [(SBPIPInteractionSettings *)self->_interactionSettings maximumSizeSpanForPreferredSizeTuning];
  [(SBPIPContentViewLayoutSettings *)layoutSettings setMaximumSizeSpanForPreferredSizeTuning:?];
  v6 = self->_layoutSettings;
  [(SBPIPInteractionSettings *)self->_interactionSettings minimumSizeSpanBetweenPreferredSizes];
  [(SBPIPContentViewLayoutSettings *)v6 setMinimumSizeSpanBetweenPreferredSizes:?];
  [(UIPanGestureRecognizer *)self->_panGestureRecognizer setEnabled:[(SBPIPInteractionSettings *)self->_interactionSettings panGestureEnabled]];
  [(UIPanGestureRecognizer *)self->_edgeResizeGestureRecognizer setEnabled:[(SBPIPInteractionSettings *)self->_interactionSettings edgeResizeGestureEnabled]];
  edgeResizeGestureRecognizer = self->_edgeResizeGestureRecognizer;
  v8 = [(SBPIPInteractionSettings *)self->_interactionSettings edgeResizeSettings];
  [v8 hysteresis];
  [(UIPanGestureRecognizer *)edgeResizeGestureRecognizer _setHysteresis:?];

  [(UIPanGestureRecognizer *)self->_panWhileResizingGestureRecognizer setEnabled:[(SBPIPInteractionSettings *)self->_interactionSettings panGestureEnabled]];
  [(SBPIPPinchGestureRecognizer *)self->_pinchGestureRecognizer setEnabled:[(SBPIPInteractionSettings *)self->_interactionSettings pinchGestureEnabled]];
  positionInteractor = self->_positionInteractor;
  [(SBPIPInteractionSettings *)self->_interactionSettings positionDecelerationRate];
  [(_UIHyperInteractor *)positionInteractor _setDecelerationRate:?];
  rotationGestureRecognizer = self->_rotationGestureRecognizer;
  [(SBPIPInteractionSettings *)self->_interactionSettings rotationPreRecognitionWeight];
  [(UIRotationGestureRecognizer *)rotationGestureRecognizer _setPreRecognitionWeight:?];
  [(SBPIPRotationGestureRecognizer *)self->_rotationGestureRecognizer setEnabled:[(SBPIPInteractionSettings *)self->_interactionSettings rotationGestureEnabled]];
  rotationInteractor = self->_rotationInteractor;
  [(SBPIPInteractionSettings *)self->_interactionSettings rotationRubberBandCoefficient];
  [(_UIHyperInteractor *)rotationInteractor _setRubberBandCoefficient:?];
  scaleInteractor = self->_scaleInteractor;
  [(SBPIPInteractionSettings *)self->_interactionSettings scaleDecelerationRate];

  [(_UIHyperInteractor *)scaleInteractor _setDecelerationRate:?];
}

- (void)_performInitialLayoutIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  [WeakRetained bounds];
  UISizeRoundToScale();
  v8.size.width = v4;
  v8.size.height = v5;
  v9.size.width = self->_nonoperationalFrame.size.width;
  v9.size.height = self->_nonoperationalFrame.size.height;
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v6 = CGRectEqualToRect(v8, v9);

  if (!v6)
  {

    [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:7 withReason:1 behavior:0];
  }
}

- (void)_setDefaults
{
  if ([(SBPIPInteractionController *)self _hasValidInteractionTargetView])
  {
    v12 = 0;
    v13 = 0x3FF0000000000000;
    [(SBPIPInteractionController *)self _closestToDefaultCornersPosition];
    v10 = v3;
    v11 = v4;
    __asm { FMOV            V0.2D, #1.0 }

    *&self->_pinchGestureBaselineScale = _Q0;
    self->_edgeResizeGestureBaselineHeightScale = 1.0;
    [(_UIHyperInteractor *)self->_scaleInteractor _copyUnconstrainedPoint:&v13, v10, v11];
    [(_UIHyperInteractor *)self->_rotationInteractor _copyUnconstrainedPoint:&v12];
    [(_UIHyperInteractor *)self->_positionInteractor _copyUnconstrainedPoint:&v10];
  }
}

- (CGPoint)_closestToDefaultCornersPosition
{
  v3 = [(SBPIPContentViewLayoutSettings *)self->_layoutSettings currentContentViewPosition];
  pendingTransition = self->_pendingTransition;
  if (pendingTransition)
  {
    v3 = [(_SBPIPInteractionControllerTransitionInfo *)pendingTransition layoutCorner];
  }

  v47 = 0.0;
  v48 = 0.0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3010000000;
  v45 = &unk_21F9DA6A3;
  v46 = *MEMORY[0x277CBF348];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  [(SBPIPInteractionController *)self _currentPositionInteractionStateContext];
  pipCurrentSize = self->_geometryContext.pipCurrentSize;
  pipLastSteadySize = self->_geometryContext.pipLastSteadySize;
  v19 = pipCurrentSize;
  v6 = *&self->_geometryContext.minimumPadding.bottom;
  v7 = *&self->_geometryContext.stashedMinimumPadding.bottom;
  v8 = *&self->_geometryContext.offscreenCorners;
  v29 = *&self->_geometryContext.stashedMinimumPadding.top;
  v30 = v7;
  v31 = v8;
  size = self->_geometryContext.containerBounds.size;
  v10 = *&self->_geometryContext.edgeInsets.bottom;
  v11 = *&self->_geometryContext.minimumPadding.top;
  v25 = *&self->_geometryContext.edgeInsets.top;
  v26 = v10;
  pipStashedSize = self->_geometryContext.pipStashedSize;
  v28 = v6;
  v27 = v11;
  pipAnchorPointOffset = self->_geometryContext.pipAnchorPointOffset;
  origin = self->_geometryContext.containerBounds.origin;
  v21 = pipStashedSize;
  v22 = pipAnchorPointOffset;
  v24 = size;
  v23 = origin;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__SBPIPInteractionController__closestToDefaultCornersPosition__block_invoke;
  v18[3] = &unk_2783B6B60;
  v18[4] = &v42;
  v18[5] = v3;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  v33 = v38;
  v32 = v37;
  [(SBPIPInteractionController *)self _enumeratePositionRegionComposersUsingBlock:v18];
  v15 = [(_UIHyperInteractor *)self->_positionInteractor _region];
  [v15 _closestPoint:&v47 toPoint:v43 + 4];

  _Block_object_dispose(&v42, 8);
  v16 = v47;
  v17 = v48;
  result.y = v17;
  result.x = v16;
  return result;
}

uint64_t __62__SBPIPInteractionController__closestToDefaultCornersPosition__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(a1 + 224);
  v22[10] = *(a1 + 208);
  v22[11] = v7;
  v8 = *(a1 + 256);
  v22[12] = *(a1 + 240);
  v9 = *(a1 + 160);
  v22[6] = *(a1 + 144);
  v22[7] = v9;
  v10 = *(a1 + 192);
  v22[8] = *(a1 + 176);
  v22[9] = v10;
  v11 = *(a1 + 96);
  v22[2] = *(a1 + 80);
  v22[3] = v11;
  v12 = *(a1 + 128);
  v22[4] = *(a1 + 112);
  v22[5] = v12;
  v13 = *(a1 + 64);
  v22[0] = *(a1 + 48);
  v22[1] = v13;
  v14 = *(a1 + 272);
  v15 = *(a1 + 304);
  v20[2] = *(a1 + 288);
  v20[3] = v15;
  v21 = *(a1 + 320);
  v20[0] = v8;
  v20[1] = v14;
  result = [a2 defaultCornerPositionForLayoutSettingsPosition:v3 proposedCenter:v22 geometry:v20 interaction:{v5, v6}];
  v17 = *(*(a1 + 32) + 8);
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  return result;
}

- (unint64_t)_canonicalPositionForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  [(SBPIPInteractionController *)self _currentPositionInteractionStateContext];
  v6 = *&self->_geometryContext.stashedMinimumPadding.top;
  v24 = *&self->_geometryContext.minimumPadding.bottom;
  v25 = v6;
  v7 = *&self->_geometryContext.offscreenCorners;
  v26 = *&self->_geometryContext.stashedMinimumPadding.bottom;
  v27 = v7;
  v8 = *&self->_geometryContext.edgeInsets.top;
  size = self->_geometryContext.containerBounds.size;
  v21 = v8;
  v9 = *&self->_geometryContext.minimumPadding.top;
  v22 = *&self->_geometryContext.edgeInsets.bottom;
  v23 = v9;
  pipLastSteadySize = self->_geometryContext.pipLastSteadySize;
  pipStashedSize = self->_geometryContext.pipStashedSize;
  origin = self->_geometryContext.containerBounds.origin;
  pipAnchorPointOffset = self->_geometryContext.pipAnchorPointOffset;
  v19 = origin;
  pipCurrentSize = self->_geometryContext.pipCurrentSize;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SBPIPInteractionController__canonicalPositionForPoint___block_invoke;
  v14[3] = &unk_2783B6B88;
  v14[4] = &v33;
  *&v14[5] = x;
  *&v14[6] = y;
  v30 = v39;
  v31 = v40;
  v28 = v37;
  v29 = v38;
  v32 = v41;
  [(SBPIPInteractionController *)self _enumeratePositionRegionComposersUsingBlock:v14];
  pendingTransition = self->_pendingTransition;
  if (pendingTransition)
  {
    v12 = [(_SBPIPInteractionControllerTransitionInfo *)pendingTransition layoutCorner];
    v34[3] = v12;
  }

  else
  {
    v12 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  return v12;
}

uint64_t __57__SBPIPInteractionController__canonicalPositionForPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 200);
  v7 = *(a1 + 232);
  v17[10] = *(a1 + 216);
  v17[11] = v7;
  v17[12] = *(a1 + 248);
  v8 = *(a1 + 136);
  v9 = *(a1 + 168);
  v17[6] = *(a1 + 152);
  v17[7] = v9;
  v17[8] = *(a1 + 184);
  v17[9] = v6;
  v10 = *(a1 + 72);
  v11 = *(a1 + 104);
  v17[2] = *(a1 + 88);
  v17[3] = v11;
  v17[4] = *(a1 + 120);
  v17[5] = v8;
  v17[0] = *(a1 + 56);
  v17[1] = v10;
  v12 = *(a1 + 312);
  v15[2] = *(a1 + 296);
  v15[3] = v12;
  v16 = *(a1 + 328);
  v13 = *(a1 + 280);
  v15[0] = *(a1 + 264);
  v15[1] = v13;
  result = [a2 canonicalPositionForPoint:v3 proposedPosition:v17 geometry:v15 interaction:{v4, v5}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    if (a3)
    {
      [(SBPIPInteractionController *)self _setupGestureRecognizers];
      [(SBPIPInteractionController *)self _setupPointerInteraction];
      if (![(SBPIPInteractionController *)self _isInteractive])
      {

        [(SBPIPInteractionController *)self _performInitialLayoutIfNeeded];
      }
    }

    else
    {
      if (![(SBPIPInteractionController *)self _isGesturing])
      {
        [(SBPIPInteractionController *)self _setupForInitialFrame];
      }

      [(UIViewFloatAnimatableProperty *)self->_layoutProgressProperty invalidate];
      layoutProgressProperty = self->_layoutProgressProperty;
      self->_layoutProgressProperty = 0;

      [(SBPIPInteractionController *)self _removeGestureRecognizers];

      [(SBPIPInteractionController *)self _removePointerInteraction];
    }
  }
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);

  return WeakRetained;
}

- (CGRect)initialFrame
{
  x = self->_nonoperationalFrame.origin.x;
  y = self->_nonoperationalFrame.origin.y;
  width = self->_nonoperationalFrame.size.width;
  height = self->_nonoperationalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)currentNormalizedScale
{
  v3 = [(_UIHyperInteractor *)self->_scaleInteractor _region];
  v4 = *[v3 _minimumPoint];
  v5 = *[v3 _maximumPoint] - v4;
  v6 = 1.0;
  if ((BSFloatIsZero() & 1) == 0)
  {
    v6 = (*[(_UIHyperInteractor *)self->_scaleInteractor _constrainedPoint]- v4) / v5;
  }

  return v6;
}

- (double)preferredNormalizedScale
{
  v3 = [(_UIHyperInteractor *)self->_scaleInteractor _region];
  v4 = *[v3 _minimumPoint];
  v5 = *[v3 _maximumPoint] - v4;
  v6 = 1.0;
  if ((BSFloatIsZero() & 1) == 0)
  {
    v6 = (*[(_UIHyperInteractor *)self->_scaleInteractor _unconstrainedPoint]- v4) / v5;
  }

  return v6;
}

- (unint64_t)canonicalPosition
{
  [(SBPIPInteractionController *)self _currentPositionForLayoutReason:1024];

  return [(SBPIPInteractionController *)self _canonicalPositionForPoint:?];
}

- (void)setTargetOverlayView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_targetOverlayView);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_targetOverlayView, obj);
    if ([obj isHidden])
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 setNeedsLayoutForInteractionController:self traits:7 withReason:0x8000 behavior:v5 completion:0];
  }
}

- (void)setContentLayoutSettings:(id)a3 animationBehavior:(int)a4
{
  v4 = *&a4;
  v7 = a3;
  if (self->_layoutSettings != v7)
  {
    v9 = v7;
    objc_storeStrong(&self->_layoutSettings, a3);
    v8 = [(SBPIPContentViewLayoutSettings *)v9 platformMetrics];
    [(SBPIPInteractionController *)self setPlatformMetrics:v8 contentSize:v4 animationBehavior:self->_preferredContentSize.width, self->_preferredContentSize.height];

    v7 = v9;
  }
}

- (void)setPlatformMetrics:(id)a3 contentSize:(CGSize)a4 animationBehavior:(int)a5
{
  v5 = *&a5;
  height = a4.height;
  width = a4.width;
  [(SBPIPContentViewLayoutSettings *)self->_layoutSettings updatePlatformMetrics:a3];
  layoutSettings = self->_layoutSettings;
  [(SBPIPContentViewLayoutSettings *)layoutSettings currentContentViewSizeForAspectRatio:width, height];
  [(SBPIPContentViewLayoutSettings *)layoutSettings currentContentViewSizeForAspectRatio:?];
  self->_toBeAppliedPreferredContentSize.width = v10;
  self->_toBeAppliedPreferredContentSize.height = v11;
  self->_preferredContentSize = self->_toBeAppliedPreferredContentSize;
  if ([(SBPIPInteractionController *)self isEnabled])
  {
    [(SBPIPInteractionController *)self preferredNormalizedScale];
    v13 = v12;
    [(SBPIPInteractionController *)self _updateInteractorsAndCommit:[(SBPIPInteractionController *)self _isInteractive]^ 1];
    [(SBPIPInteractionController *)self _proratedScaleForNormalizedScale:v13];

    [(SBPIPInteractionController *)self _setPreferredScale:4096 additionalReasons:v5 animationBehavior:?];
  }

  else
  {

    [(SBPIPInteractionController *)self _setupForInitialFrame];
  }
}

- (void)setContainerSize:(CGSize)a3 withOrientation:(int64_t)a4 scene:(id)a5
{
  if ([a5 isMainDisplayWindowScene])
  {
    BSRectWithSize();
    if ([(SBPIPInteractionController *)self _updateGeometryContextUsingTargetViewBounds:a4 orientation:?])
    {
      if (self->_enabled)
      {
        if ([(SBPIPInteractionController *)self _isInteractive])
        {

          [(SBPIPInteractionController *)self _cancelAllGestures];
        }

        else
        {
          [(SBPIPInteractionController *)self _updateInteractorsAndCommit:1];
          if ([(SBPIPInteractionController *)self _hasInFlightLayoutAnimations])
          {
            v7 = 2;
          }

          else
          {
            v7 = 0;
          }

          [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:7 withReason:2 behavior:v7];
        }
      }

      else
      {

        [(SBPIPInteractionController *)self _setupForInitialFrame];
      }
    }
  }
}

- (BOOL)isStashed
{
  if (self->_shouldStash == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_didLastSettleInStashedState;
  }

  else
  {
    return BSSettingFlagIsYes();
  }
}

- (void)setStashed:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = self->_shortDescription;
    v11 = 138543618;
    v12 = shortDescription;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@][Layout] setStashed:%{BOOL}u", &v11, 0x12u);
  }

  if (self->_shouldStash == 0x7FFFFFFFFFFFFFFFLL || BSSettingFlagForBool() != v3)
  {
    self->_shouldStash = BSSettingFlagForBool();
    v7 = SBLogPIP();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_shortDescription;
      IsYes = BSSettingFlagIsYes();
      v11 = 138543618;
      v12 = v8;
      v13 = 1024;
      v14 = IsYes;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@][Layout] _shouldStash:%{BOOL}u", &v11, 0x12u);
    }

    if (self->_enabled)
    {
      v10 = [(SBPIPInteractionController *)self _isInteractive];
      [(SBPIPInteractionController *)self _cancelAllGestures];
      [(SBPIPInteractionController *)self _updateInteractorsAndCommit:!v10];
      [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:7 withReason:32 behavior:2];
    }

    else
    {
      [(SBPIPInteractionController *)self _setupForInitialFrame];
    }
  }
}

- (UIEdgeInsets)_minimumStashedPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(SBPIPContentViewLayoutSettings *)self->_layoutSettings contentViewPaddingWhileStashed];
  if (v8 >= top)
  {
    top = v8;
  }

  [(SBPIPContentViewLayoutSettings *)self->_layoutSettings contentViewPaddingWhileStashed];
  if (v9 >= bottom)
  {
    v10 = v9;
  }

  else
  {
    v10 = bottom;
  }

  v11 = top;
  v12 = left;
  v13 = right;
  result.right = v13;
  result.bottom = v10;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)_cachedEdgeInsetsForScene:(id)a3
{
  scenePersistentIdentifierToEdgeInsets = self->_scenePersistentIdentifierToEdgeInsets;
  v4 = [a3 session];
  v5 = [v4 persistentIdentifier];
  v6 = [(NSMutableDictionary *)scenePersistentIdentifierToEdgeInsets objectForKeyedSubscript:v5];
  [v6 UIEdgeInsetsValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (UIEdgeInsets)_cachedStashedPaddingForScene:(id)a3
{
  scenePersistentIdentifierToStashedPadding = self->_scenePersistentIdentifierToStashedPadding;
  v4 = [a3 session];
  v5 = [v4 persistentIdentifier];
  v6 = [(NSMutableDictionary *)scenePersistentIdentifierToStashedPadding objectForKeyedSubscript:v5];
  [v6 UIEdgeInsetsValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (BOOL)_setEdgeInsets:(UIEdgeInsets)a3 forScene:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  v26.origin.x = left + self->_geometryContext.containerBounds.origin.x;
  v26.origin.y = top + self->_geometryContext.containerBounds.origin.y;
  v26.size.width = self->_geometryContext.containerBounds.size.width - (left + right);
  v26.size.height = self->_geometryContext.containerBounds.size.height - (top + bottom);
  if (CGRectIsInfinite(v26) || (([(SBPIPInteractionController *)self _cachedEdgeInsetsForScene:v9], left == v13) ? (v14 = top == v10) : (v14 = 0), v14 ? (v15 = right == v12) : (v15 = 0), v15 ? (v16 = bottom == v11) : (v16 = 0), v16))
  {
    v23 = 0;
  }

  else
  {
    if (!self->_scenePersistentIdentifierToEdgeInsets)
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
      scenePersistentIdentifierToEdgeInsets = self->_scenePersistentIdentifierToEdgeInsets;
      self->_scenePersistentIdentifierToEdgeInsets = v17;
    }

    *v25 = top;
    *&v25[1] = left;
    *&v25[2] = bottom;
    *&v25[3] = right;
    v19 = [MEMORY[0x277CCAE60] valueWithBytes:v25 objCType:"{UIEdgeInsets=dddd}"];
    v20 = self->_scenePersistentIdentifierToEdgeInsets;
    v21 = [v9 session];
    v22 = [v21 persistentIdentifier];
    [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v22];

    if ([v9 isMainDisplayWindowScene])
    {
      self->_geometryContext.edgeInsets.top = top;
      self->_geometryContext.edgeInsets.left = left;
      v23 = 1;
      self->_geometryContext.edgeInsets.bottom = bottom;
      self->_geometryContext.edgeInsets.right = right;
    }

    else
    {
      v23 = 1;
    }
  }

  return v23;
}

- (BOOL)_setStashedPadding:(UIEdgeInsets)a3 forScene:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  [(SBPIPInteractionController *)self _minimumStashedPadding:top, left, bottom, right];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v34.origin.x = self->_geometryContext.containerBounds.origin.x + v12;
  v34.origin.y = v11 + self->_geometryContext.containerBounds.origin.y;
  v34.size.width = self->_geometryContext.containerBounds.size.width - (v13 + v16);
  v34.size.height = self->_geometryContext.containerBounds.size.height - (v11 + v15);
  if (CGRectIsInfinite(v34) || (([(SBPIPInteractionController *)self _cachedStashedPaddingForScene:v9], v13 == v21) ? (v22 = v11 == v18) : (v22 = 0), v22 ? (v23 = v17 == v20) : (v23 = 0), v23 ? (v24 = v15 == v19) : (v24 = 0), v24))
  {
    v31 = 0;
  }

  else
  {
    if (!self->_scenePersistentIdentifierToStashedPadding)
    {
      v25 = [MEMORY[0x277CBEB38] dictionary];
      scenePersistentIdentifierToStashedPadding = self->_scenePersistentIdentifierToStashedPadding;
      self->_scenePersistentIdentifierToStashedPadding = v25;
    }

    *v33 = v11;
    *&v33[1] = v13;
    *&v33[2] = v15;
    *&v33[3] = v17;
    v27 = [MEMORY[0x277CCAE60] valueWithBytes:v33 objCType:"{UIEdgeInsets=dddd}"];
    v28 = self->_scenePersistentIdentifierToStashedPadding;
    v29 = [v9 session];
    v30 = [v29 persistentIdentifier];
    [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:v30];

    if ([v9 isMainDisplayWindowScene])
    {
      self->_geometryContext.stashedMinimumPadding.top = v11;
      self->_geometryContext.stashedMinimumPadding.left = v13;
      v31 = 1;
      self->_geometryContext.stashedMinimumPadding.bottom = v15;
      self->_geometryContext.stashedMinimumPadding.right = v17;
    }

    else
    {
      v31 = 1;
    }
  }

  return v31;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v30 = *MEMORY[0x277D85DE8];
  [(SBPIPContentViewLayoutSettings *)self->_layoutSettings currentContentViewSizeForAspectRatio:?];
  v7 = v6;
  v9 = v8;
  UISizeRoundToScale();
  v11 = v10;
  v13 = v12;
  UISizeRoundToScale();
  if (v11 != v15 || v13 != v14)
  {
    v17 = SBLogPIP();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = self->_shortDescription;
      v31.width = width;
      v31.height = height;
      v19 = NSStringFromCGSize(v31);
      v20 = NSStringFromCGSize(self->_toBeAppliedPreferredContentSize);
      enabled = self->_enabled;
      v22 = 138544130;
      v23 = shortDescription;
      v24 = 2114;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      v28 = 1024;
      v29 = enabled;
      _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] Updating public layout trait preferredContentSize:{%{public}@} currentPreferredContentSize{%{public}@} while enabled{%{BOOL}u}", &v22, 0x26u);
    }

    self->_toBeAppliedPreferredContentSize.width = v7;
    self->_toBeAppliedPreferredContentSize.height = v9;
    if (self->_enabled)
    {
      [(SBPIPInteractionController *)self _updatePreferredContentSize];
    }

    else
    {
      self->_preferredContentSize = self->_toBeAppliedPreferredContentSize;
      [(SBPIPInteractionController *)self _setupForInitialFrame];
    }
  }
}

- (void)toggleUserPreferredScale
{
  if (![(SBPIPInteractionController *)self _isInteractive])
  {
    [(SBPIPContentViewLayoutSettings *)self->_layoutSettings minimumPreferredContentViewSizeForAspectRatio:self->_preferredContentSize.width, self->_preferredContentSize.height];
    v4 = v3;
    [(SBPIPContentViewLayoutSettings *)self->_layoutSettings maximumPreferredContentViewSizeForAspectRatio:self->_preferredContentSize.width, self->_preferredContentSize.height];
    width = self->_preferredContentSize.width;
    v6 = v4 / width;
    v8 = v7 / width;
    [(SBPIPInteractionController *)self _currentScale];
    v10 = v9;
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      if (BSFloatEqualToFloat())
      {
        v8 = v6;
      }

      else if (vabdd_f64(v10, v6) >= vabdd_f64(v10, v8))
      {
        v8 = v6;
      }
    }

    [(SBPIPInteractionController *)self _setPreferredScale:0 additionalReasons:2 animationBehavior:v8];
  }
}

- (double)_proratedScaleForNormalizedScale:(double)a3
{
  v4 = [(_UIHyperInteractor *)self->_scaleInteractor _region];
  v5 = *[v4 _minimumPoint];
  v6 = v5 + (*[v4 _maximumPoint] - v5) * a3;

  return v6;
}

- (void)setPreferredNormalizedScale:(double)a3 additionalReasons:(unint64_t)a4 animationBehavior:(int)a5
{
  v5 = *&a5;
  [(SBPIPInteractionController *)self currentNormalizedScale];
  v9 = BSFloatEqualToFloat();
  if (![(SBPIPInteractionController *)self _isInteractive])
  {
    v10 = (a4 & 8) != 0 ? 0 : v9;
    if ((v10 & 1) == 0)
    {
      [(SBPIPInteractionController *)self _proratedScaleForNormalizedScale:a3];

      [(SBPIPInteractionController *)self _setPreferredScale:a4 additionalReasons:v5 animationBehavior:?];
    }
  }
}

- (void)_setPreferredScale:(double)a3 additionalReasons:(unint64_t)a4 animationBehavior:(int)a5
{
  v5 = *&a5;
  v9 = SBLogPIP();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SBPIPInteractionController _setPreferredScale:additionalReasons:animationBehavior:];
  }

  self->_preferredScale = a3;
  [(SBPIPInteractionController *)self _applyPreferredScale];
  if (self->_enabled)
  {
    [(SBPIPInteractionController *)self _updateInteractorsAndCommit:[(SBPIPInteractionController *)self _isPinching]^ 1];
    [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:2 withReason:a4 | 0x10 behavior:v5];
  }

  else
  {
    [(SBPIPInteractionController *)self _setupForInitialFrame];
  }
}

- (void)_updatePreferredContentSize
{
  v1 = NSStringFromCGSize(a1[8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)layoutInteractedTraits:(unint64_t)a3 withReason:(unint64_t)a4 source:(id)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (v8)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_34:
    [SBPIPInteractionController layoutInteractedTraits:withReason:source:];
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  [SBPIPInteractionController layoutInteractedTraits:withReason:source:];
  if (!a3)
  {
    goto LABEL_34;
  }

LABEL_3:
  if (a4)
  {
    goto LABEL_4;
  }

LABEL_35:
  [SBPIPInteractionController layoutInteractedTraits:withReason:source:];
LABEL_4:
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v10 = objc_loadWeakRetained(&self->_targetOverlayView);
  [(SBPIPInteractionController *)self _currentSizeForLayoutReason:a4];
  v12 = v11;
  v14 = v13;
  [(SBPIPInteractionController *)self _currentPositionForLayoutReason:a4];
  v49 = v15;
  v50 = v16;
  [(SBPIPInteractionController *)self _currentRotation];
  v18 = v17;
  if ((a4 & 0x300) != 0)
  {
    if (self->_enabled)
    {
      v19 = [WeakRetained layer];
      [v19 setAnchorPoint:{self->_anchorPoint.x, self->_anchorPoint.y}];
    }

    v20 = [v10 layer];
    [v20 setAnchorPoint:{self->_anchorPoint.x, self->_anchorPoint.y}];
  }

  if ((a3 & 7) != 0)
  {
    if (self->_enabled)
    {
      v21 = [WeakRetained _sbWindowScene];
      [(SBPIPInteractionController *)self _transformFromDisplayArrangeSpaceToWindowScene:v21];
      v47 = vaddq_f64(*&t1[32], vmlaq_n_f64(vmulq_n_f64(*&t1[16], v50), *t1, v49));

      [WeakRetained setCenter:*&v47];
    }

    v22 = [v10 _sbWindowScene];
    [(SBPIPInteractionController *)self _transformFromDisplayArrangeSpaceToWindowScene:v22];
    v47 = vaddq_f64(*&t1[32], vmlaq_n_f64(vmulq_n_f64(*&t1[16], v50), *t1, v49));

    [v10 setCenter:*&v47];
  }

  if ((a3 & 2) != 0)
  {
    if (self->_enabled)
    {
      [WeakRetained setBounds:{0.0, 0.0, v12, v14}];
    }

    [v10 setBounds:{0.0, 0.0, v12, v14, *&v47.f64[0]}];
  }

  [(SBPIPInteractionController *)self stashProgress];
  v24 = v23;
  if (a3)
  {
    [(SBPIPInteractionController *)self _noteStashProgress:a4 withReason:v23];
    [(SBPIPInteractionController *)self _stashTabCompensationTransformForStashProgress:a4 reason:v24];
    v25 = *&t1[16];
    *&self->_stashTabCompensationTransform.a = *t1;
    *&self->_stashTabCompensationTransform.c = v25;
    *&self->_stashTabCompensationTransform.tx = *&t1[32];
  }

  if ((a3 & 4) != 0)
  {
    v26 = MEMORY[0x277CBF2C0];
    v27 = *(MEMORY[0x277CBF2C0] + 16);
    if (v18 == 0.0)
    {
      *&self->_rotationTransform.a = *MEMORY[0x277CBF2C0];
      *&self->_rotationTransform.c = v27;
      v28 = *(v26 + 32);
    }

    else
    {
      *&v52.a = *MEMORY[0x277CBF2C0];
      *&v52.c = v27;
      *&v52.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformRotate(t1, &v52, v18);
      v29 = *&t1[16];
      *&self->_rotationTransform.a = *t1;
      *&self->_rotationTransform.c = v29;
      v28 = *&t1[32];
    }

    *&self->_rotationTransform.tx = v28;
  }

  v30 = *&self->_stashTabCompensationTransform.c;
  *t1 = *&self->_stashTabCompensationTransform.a;
  *&t1[16] = v30;
  v31 = *&self->_rotationTransform.a;
  *&t1[32] = *&self->_stashTabCompensationTransform.tx;
  v32 = *&self->_rotationTransform.c;
  v33 = *&self->_rotationTransform.tx;
  *&t2.a = v31;
  *&t2.c = v32;
  *&t2.tx = v33;
  memset(&v52, 0, sizeof(v52));
  CGAffineTransformConcat(&v52, t1, &t2);
  if (WeakRetained)
  {
    [WeakRetained transform];
  }

  else
  {
    memset(t1, 0, 48);
  }

  t2 = v52;
  if (!CGAffineTransformEqualToTransform(t1, &t2))
  {
    if (self->_enabled)
    {
      *t1 = v52;
      [WeakRetained setTransform:t1];
    }

    *t1 = v52;
    [v10 setTransform:t1];
  }

  [WeakRetained layoutIfNeeded];
  [v10 layoutIfNeeded];
  [(SBPIPInteractionController *)self _updateHyperregionVisualizationIfNecessary];
  v34 = SBLogPIP();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    shortDescription = self->_shortDescription;
    v36 = SBStringFromPIPLayoutTrait(a3);
    [WeakRetained frame];
    v38 = v37;
    [WeakRetained frame];
    v40 = v39;
    x = self->_anchorPoint.x;
    y = self->_anchorPoint.y;
    [(SBPIPInteractionController *)self _currentScale];
    v43 = v42;
    v44 = SBStringFromPIPLayoutReason(a4);
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    *t1 = 138546946;
    *&t1[4] = shortDescription;
    *&t1[12] = 2114;
    *&t1[14] = v36;
    *&t1[22] = 2048;
    *&t1[24] = v38;
    *&t1[32] = 2048;
    *&t1[34] = v40;
    *&t1[42] = 2048;
    *&t1[44] = v12;
    v54 = 2048;
    v55 = v14;
    v56 = 2048;
    v57 = v49;
    v58 = 2048;
    v59 = v50;
    v60 = 2048;
    v61 = x;
    v62 = 2048;
    v63 = y;
    v64 = 2048;
    v65 = v18;
    v66 = 2048;
    v67 = v43;
    v68 = 2048;
    v69 = v24;
    v70 = 2114;
    v71 = v44;
    v72 = 2114;
    v73 = v46;
    _os_log_debug_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] traits: %{public}@\t origin{%.2f,%.2f} size{%.2f,%.2f} position{%.2f,%.2f} anchorPoint{%.2f,%.2f} rotation %.2f scale %.2f stashProgress{%.2f} reason{%{public}@} source{%{public}@}", t1, 0x98u);
  }
}

- (void)layoutWithFrame:(CGRect)a3 reason:(id)a4 source:(id)a5 usingDisplayArrangementSpace:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v37 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v16 = objc_loadWeakRetained(&self->_targetOverlayView);
  v32 = width;
  v33 = height;
  v29 = x;
  v31 = y;
  if (v6)
  {
    v17 = [WeakRetained _sbWindowScene];
    [(SBPIPInteractionController *)self _transformFromDisplayArrangeSpaceToWindowScene:v17];
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectApplyAffineTransform(v38, &v34);
    v18 = v39.origin.x;
    v19 = v39.origin.y;
    v20 = v39.size.width;
    v21 = v39.size.height;

    v22 = [v16 _sbWindowScene];
    [(SBPIPInteractionController *)self _transformFromDisplayArrangeSpaceToWindowScene:v22];
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v41 = CGRectApplyAffineTransform(v40, &v34);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
  }

  else
  {
    v21 = height;
    v20 = width;
    v19 = y;
    v18 = x;
  }

  [WeakRetained setFrame:{v18, v19, v20, v21, *&v29, *&v31, *&v32, *&v33}];
  [v16 setFrame:{x, y, width, height}];
  [WeakRetained layoutIfNeeded];
  [v16 layoutIfNeeded];
  [(SBPIPInteractionController *)self _updateHyperregionVisualizationIfNecessary];
  v23 = SBLogPIP();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = self->_shortDescription;
    enabled = self->_enabled;
    v26 = NSStringFromCGRect(v30);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    LODWORD(v34.a) = 138544642;
    *(&v34.a + 4) = shortDescription;
    WORD2(v34.b) = 1024;
    *(&v34.b + 6) = enabled;
    WORD1(v34.c) = 2114;
    *(&v34.c + 4) = v26;
    WORD2(v34.d) = 2114;
    *(&v34.d + 6) = v13;
    HIWORD(v34.tx) = 2114;
    *&v34.ty = v14;
    v35 = 2114;
    v36 = v28;
    _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@][Layout] With externally provided frame while enabled{%{BOOL}u}: frame{%{public}@} reason{%{public}@} source{[%{public}@]%{public}@}", &v34, 0x3Au);
  }
}

- (CGPoint)_currentPosition
{
  v3 = *[(_UIHyperInteractor *)self->_positionInteractor _constrainedPoint];
  v4 = *([(_UIHyperInteractor *)self->_positionInteractor _constrainedPoint]+ 8);
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (CGPoint)_currentPositionForLayoutReason:(unint64_t)a3
{
  v3 = a3;
  [(SBPIPInteractionController *)self _currentSizeForLayoutReason:?];
  [(SBPIPInteractionController *)self _currentPosition];
  if ((v3 & 0x400) != 0)
  {

    [SBPIPInteractionController _roundPosition:"_roundPosition:forSize:" forSize:?];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)_roundPosition:(CGPoint)a3 forSize:(CGSize)a4
{
  v4 = a4.width * 0.5 + floor(a3.x - a4.width * 0.5);
  v5 = a4.height * 0.5 + floor(a3.y - a4.height * 0.5);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)_currentSizeForLayoutReason:(unint64_t)a3
{
  [(SBPIPInteractionController *)self _currentScale];

  UISizeRoundToScale();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_lastSteadySize
{
  v3 = [(_UIHyperInteractor *)self->_scaleInteractor _unconstrainedPoint];
  v4 = *v3 * self->_preferredContentSize.width;
  v5 = *v3 * self->_preferredContentSize.height;
  result.height = v5;
  result.width = v4;
  return result;
}

- (double)stashProgress
{
  [(SBPIPInteractionController *)self _currentPosition];

  [(SBPIPInteractionController *)self _stashProgressForPosition:?];
  return result;
}

- (double)_stashProgressForPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v57 = *MEMORY[0x277D85DE8];
  v6 = 0.0;
  if (![(SBPIPInteractionController *)self _isPinching]&& ![(SBPIPInteractionController *)self _isRotating]&& (self->_stashedLeftRegion || self->_stashedRightRegion))
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
    v8 = [WeakRetained superview];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [WeakRetained frame];
    v60.origin.x = v17;
    v60.origin.y = v18;
    v60.size.width = v19;
    v60.size.height = v20;
    v59.origin.x = v10;
    v59.origin.y = v12;
    v59.size.width = v14;
    v59.size.height = v16;
    v21 = CGRectContainsRect(v59, v60);

    v6 = 0.0;
    if (!v21)
    {
      v36.x = 0.0;
      v36.y = 0.0;
      v22 = [(SBPIPInteractionController *)self _isPositionCloserToStashedLeftRegion:&v36 closestPointOut:x, y];
      [WeakRetained bounds];
      v24 = v23 * 0.5;
      v25 = v36.x - v23 * 0.5;
      v26 = v36.x + v23 * 0.5;
      v27 = -(v23 * 0.5);
      if (!v22)
      {
        v27 = v23 * 0.5;
      }

      v28 = x + v27;
      v29 = (x + v27 - v25) / (v26 - v25) + 0.0;
      v30 = 1.0 - v29;
      if (!v22)
      {
        v30 = (x + v27 - v25) / (v26 - v25) + 0.0;
      }

      v6 = fmin(fmax(v30, 0.0), 1.0);
      v31 = SBLogPIP();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v33 = _SBFLoggingMethodProem();
        v58.x = x;
        v58.y = y;
        v34 = NSStringFromCGPoint(v58);
        v35 = NSStringFromCGPoint(v36);
        *buf = 138414594;
        v38 = v33;
        v39 = 2112;
        v40 = v34;
        v41 = 2112;
        v42 = v35;
        v43 = 1024;
        v44 = v22;
        v45 = 2048;
        v46 = v24;
        v47 = 2048;
        v48 = v28;
        v49 = 2048;
        v50 = v25;
        v51 = 2048;
        v52 = v26;
        v53 = 2048;
        v54 = v29;
        v55 = 2048;
        v56 = v6;
        _os_log_debug_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEBUG, "%@ position: %@; closestPoint: %@; closerToStashedLeft: %{BOOL}u; bias: %g; effectivePositionX: %g; minValue: %g; maxValue: %g; progress: %g; normalizedProgress: %g", buf, 0x62u);
      }
    }
  }

  return v6;
}

- (CGPoint)_interactionTargetViewPresentationPosition
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v4 = [WeakRetained layer];
  v5 = [v4 presentationLayer];
  [v5 position];
  v12 = v7;
  v13 = v6;

  v8 = [WeakRetained _sbWindowScene];
  [(SBPIPInteractionController *)self _transformToDisplayArrangementSpaceFromWindowScene:v8];

  v11 = vaddq_f64(v16, vmlaq_n_f64(vmulq_n_f64(v15, v12), v14, v13));
  v10 = v11.f64[1];
  v9 = v11.f64[0];
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_noteStashProgress:(double)a3 withReason:(unint64_t)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (self->_lastStashedProgress != a3)
  {
    self->_lastStashedProgress = a3;
    [(SBPIPInteractionSettings *)self->_interactionSettings stashProgressTabAppearanceThresholdX];
    v7 = v6;
    v8 = [(SBPIPInteractionController *)self _isPositionCloserToStashedLeftRegion:0 closestPointOut:*[(_UIHyperInteractor *)self->_positionInteractor _constrainedPoint], *([(_UIHyperInteractor *)self->_positionInteractor _constrainedPoint]+ 8)]^ 1;
    WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 interactionController:self didUpdateStashProgress:a3];
    if ([(_UIHyperInteractor *)self->_positionInteractor sbpip_isInteractive])
    {
      [v10 interactionController:self wantsStashTabHidden:v7 > a3 left:v8];
      if (self->_didLastSettleInStashedState)
      {
        if (v7 > a3 || (v11 = *&self->_stashTabCompensationTransform.c, *&v32.a = *&self->_stashTabCompensationTransform.a, *&v32.c = v11, *&v32.tx = *&self->_stashTabCompensationTransform.tx, !CGAffineTransformIsIdentity(&v32)))
        {
          [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:1 withReason:2048 behavior:2];
        }
      }

      goto LABEL_15;
    }

    layoutProgressProperty = self->_layoutProgressProperty;
    if (layoutProgressProperty)
    {
      [(UIViewFloatAnimatableProperty *)layoutProgressProperty invalidate];
      v13 = self->_layoutProgressProperty;
      self->_layoutProgressProperty = 0;
    }

    if (self->_didLastSettleInStashedState)
    {
      v14 = [WeakRetained window];
      if (v14)
      {
        v15 = [WeakRetained window];
        v16 = [v15 isHidden];

        if ((v16 & 1) == 0)
        {
          v20 = objc_alloc_init(MEMORY[0x277D75D38]);
          v21 = self->_layoutProgressProperty;
          self->_layoutProgressProperty = v20;

          objc_initWeak(&v32, self);
          v22 = MEMORY[0x277D75D18];
          v33[0] = self->_layoutProgressProperty;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
          v24 = MEMORY[0x277D85DD0];
          v25 = 3221225472;
          v26 = __60__SBPIPInteractionController__noteStashProgress_withReason___block_invoke;
          v27 = &unk_2783B4710;
          objc_copyWeak(&v30, &v32);
          v28 = self;
          v29 = v10;
          v31 = v8;
          [v22 _createTransformerWithInputAnimatableProperties:v23 presentationValueChangedCallback:&v24];

          [(UIViewFloatAnimatableProperty *)self->_layoutProgressProperty setValue:0.0, v24, v25, v26, v27, v28];
          [(UIViewFloatAnimatableProperty *)self->_layoutProgressProperty setValue:1.0];

          objc_destroyWeak(&v30);
          objc_destroyWeak(&v32);
          goto LABEL_15;
        }
      }

      v17 = v7 > a3;
      v18 = v10;
      v19 = self;
    }

    else
    {
      v18 = v10;
      v19 = self;
      v17 = 1;
    }

    [v18 interactionController:v19 wantsStashTabHidden:v17 left:v8];
LABEL_15:
  }
}

void __60__SBPIPInteractionController__noteStashProgress_withReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && WeakRetained[18])
  {
    v6 = WeakRetained;
    [*(a1 + 32) _interactionTargetViewPresentationPosition];
    [v6 _stashProgressForPosition:?];
    v4 = v3;
    [v6[86] stashProgressTabAppearanceThresholdX];
    [*(a1 + 40) interactionController:v6 wantsStashTabHidden:v4 < v5 left:*(a1 + 56)];
    WeakRetained = v6;
  }
}

- (BOOL)_isPositionCloserToStashedLeftRegion:(CGPoint)a3 closestPointOut:(CGPoint *)a4
{
  v16 = a3;
  stashedLeftRegion = self->_stashedLeftRegion;
  stashedRightRegion = self->_stashedRightRegion;
  if (stashedLeftRegion)
  {
    if (stashedRightRegion)
    {
      v15 = *MEMORY[0x277CBF348];
      v13 = v15;
      [(_UIHyperregionUnion *)stashedLeftRegion _closestPoint:&v15 toPoint:&v16];
      v14 = v13;
      [(_UIHyperregionUnion *)self->_stashedRightRegion _closestPoint:&v14 toPoint:&v16];
      UIDistanceBetweenPoints();
      v9 = v8;
      UIDistanceBetweenPoints();
      result = v9 < v10;
      if (a4)
      {
        if (v9 >= v10)
        {
          v12 = &v14;
        }

        else
        {
          v12 = &v15;
        }

        *a4 = *v12;
      }
    }

    else
    {
      [(_UIHyperregionUnion *)stashedLeftRegion _closestPoint:a4 toPoint:&v16];
      return 1;
    }
  }

  else
  {
    if (stashedRightRegion)
    {
      [(_UIHyperregionUnion *)self->_stashedRightRegion _closestPoint:a4 toPoint:&v16];
    }

    return 0;
  }

  return result;
}

- (CGAffineTransform)_stashTabCompensationTransformForStashProgress:(SEL)a3 reason:(double)a4
{
  v7 = *&self[12].c;
  *&retstr->a = *&self[12].a;
  *&retstr->c = v7;
  *&retstr->tx = *&self[12].tx;
  if ((a5 & 0x400) != 0)
  {
    v16 = MEMORY[0x277CBF2C0];
    v17 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v17;
    *&retstr->tx = *(v16 + 32);
  }

  else if (a5 == 2048)
  {
    v8 = self;
    if (LOBYTE(self->ty) == 1)
    {
      [*&self[14].c stashProgressTabAppearanceThresholdX];
      v10 = v9;
      v11 = [v8 _isPositionCloserToStashedLeftRegion:0 closestPointOut:{*objc_msgSend(v8[57], "_constrainedPoint"), *(objc_msgSend(v8[57], "_constrainedPoint") + 8)}];
      [v8[88] minimumStashedTabSize];
      if (!v11)
      {
        v12 = -v12;
      }

      v13 = 0.0;
      if (v10 > a4)
      {
        v13 = 1.0;
      }

      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v18.a = *MEMORY[0x277CBF2C0];
      *&v18.c = v14;
      *&v18.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformTranslate(retstr, &v18, v13 * v12, 0.0);
      WeakRetained = objc_loadWeakRetained(v8 + 1);
      [WeakRetained interactionController:v8 wantsStashTabHidden:v10 > a4 left:v11 ^ 1u];
    }
  }

  return self;
}

- (void)_adjustContentViewAnchorPointForGestureRecognizer:(id)a3
{
  v32 = a3;
  v5 = [(UIPanGestureRecognizer *)v32 state];
  v6 = MEMORY[0x277CCACA8];
  shortDescription = self->_shortDescription;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 stringWithFormat:@"[%@] %@ state — %i — is not suitable for anchor point update", shortDescription, v9, v5];

  if ((v5 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [(SBPIPInteractionController *)a2 _adjustContentViewAnchorPointForGestureRecognizer:v10];
  }

  if (![(_UIHyperInteractor *)self->_positionInteractor sbpip_isRubberBanding])
  {
    if (self->_edgeResizeGestureRecognizer == v32)
    {
      [(SBPIPInteractionController *)self edgeResizeAnchorPoint];
      v21 = v20;
      v23 = v22;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
      if ([(SBPIPInteractionController *)self _isSystemGestureRecognizer:v32])
      {
        v12 = [(UIPanGestureRecognizer *)v32 _activeEventOfType:0];
        v13 = [(UIPanGestureRecognizer *)v32 _activeTouchesForEvent:v12];
        v14 = [v13 anyObject];

        if ([v14 type] == 1)
        {
          v15 = [(SBSystemGestureManager *)self->_systemGestureManagerForResizing indirectTouchLifecycleMonitor];
          [v15 systemGestureHoverLocationInView:WeakRetained];
          v17 = v16;
          v19 = v18;
        }

        else
        {
          [(UIPanGestureRecognizer *)v32 locationInView:0];
          [(SBPIPInteractionController *)self _convertPointToInteractionTargetView:v32 fromSystemGestureRecognizer:?];
          v17 = v26;
          v19 = v27;
        }
      }

      else
      {
        [(UIPanGestureRecognizer *)v32 locationInView:WeakRetained];
        v17 = v24;
        v19 = v25;
      }

      [WeakRetained bounds];
      v21 = v17 / v28;
      v23 = v19 / v29;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [(SBPIPInteractionController *)self __moveToAnchorPoint:v31 reason:v21, v23];
  }
}

- (void)_resetAnchorPoint
{
  v3 = *[(_UIHyperInteractor *)self->_positionInteractor _translation];
  v4 = *([(_UIHyperInteractor *)self->_positionInteractor _translation]+ 8);
  [(SBPIPInteractionController *)self _lastSteadySize];
  v6 = v5;
  [(SBPIPInteractionController *)self _currentSizeForLayoutReason:1024];
  v8 = v7 / v6;
  v9 = v3 - self->_geometryContext.pipAnchorPointOffset.x * v8;
  v10 = v4 - self->_geometryContext.pipAnchorPointOffset.y * v8;
  *v16 = v9;
  *&v16[1] = v10;
  [(_UIHyperInteractor *)self->_positionInteractor _copyTranslation:v16];
  __asm { FMOV            V0.2D, #0.5 }

  self->_anchorPoint = _Q0;
  self->_geometryContext.pipAnchorPointOffset = *MEMORY[0x277CBF348];
}

- (void)__moveToAnchorPoint:(CGPoint)a3 reason:(id)a4
{
  y = a3.y;
  x = a3.x;
  v43 = *MEMORY[0x277D85DE8];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v9 = self->_anchorPoint.x;
  v10 = self->_anchorPoint.y;
  [WeakRetained bounds];
  v12 = (x - v9) * v11;
  v14 = (y - v10) * v13;
  v15 = self->_geometryContext.pipAnchorPointOffset.x + v12;
  v16 = self->_geometryContext.pipAnchorPointOffset.y + v14;
  self->_anchorPoint.x = x;
  self->_anchorPoint.y = y;
  positionInteractor = self->_positionInteractor;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__SBPIPInteractionController___moveToAnchorPoint_reason___block_invoke;
  v22[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v22[4] = v12;
  *&v22[5] = v14;
  [(_UIHyperInteractor *)positionInteractor _mutateTranslation:v22];
  self->_geometryContext.pipAnchorPointOffset.x = v15;
  self->_geometryContext.pipAnchorPointOffset.y = v16;
  v18 = SBLogPIP();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    shortDescription = self->_shortDescription;
    v20 = self->_anchorPoint.x;
    v21 = self->_anchorPoint.y;
    *buf = 138545666;
    v24 = shortDescription;
    v25 = 2114;
    v26 = v7;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = v10;
    v31 = 2048;
    v32 = v20;
    v33 = 2048;
    v34 = v21;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v14;
    v39 = 2048;
    v40 = v15;
    v41 = 2048;
    v42 = v16;
    _os_log_debug_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture][Anchor Point] Changed for %{public}@: oldAnchorPoint{%.2f, %.2f} newAnchorPoint{%.2f, %.2f} positionTranslation{%.2f, %.2f} positionTranslationOffset{%.2f, %.2f}", buf, 0x66u);
  }
}

double __57__SBPIPInteractionController___moveToAnchorPoint_reason___block_invoke(uint64_t a1, double *a2)
{
  v2 = a2[1];
  *a2 = *(a1 + 32) + *a2;
  result = *(a1 + 40) + v2;
  a2[1] = result;
  return result;
}

- (void)_sizeChangeBeganWithBehavior:(int)a3
{
  v3 = *&a3;
  self->_isChangingSize = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained interactionControllerDidBeginSizeChange:self behavior:v3];
}

- (void)_sizeChangeEnded
{
  self->_isChangingSize = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained interactionControllerDidEndSizeChange:self];
}

- (CGPoint)_convertPointToInteractionTargetView:(CGPoint)a3 fromSystemGestureRecognizer:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v7 = [v5 view];

  [v7 size];
  _UIWindowConvertPointFromOrientationToOrientation();
  v9 = v8;
  v11 = v10;

  v12 = [WeakRetained superview];
  [WeakRetained convertPoint:v12 fromView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGAffineTransform)_transformToDisplayArrangementSpaceFromWindowScene:(SEL)a3
{
  v6 = a4;
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  v32 = v6;
  if (v6 && ([v6 isMainDisplayWindowScene] & 1) == 0)
  {
    v9 = [v32 _sbDisplayConfiguration];
    v10 = SBSDisplayEdgeAdjacentToNeighboringDisplay();
    [v32 _boundsForInterfaceOrientation:{objc_msgSend(v32, "interfaceOrientation")}];
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    x = self->_geometryContext.containerBounds.origin.x;
    y = self->_geometryContext.containerBounds.origin.y;
    width = self->_geometryContext.containerBounds.size.width;
    height = self->_geometryContext.containerBounds.size.height;
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        if (v10 == 3)
        {
          v24 = CGRectGetWidth(self->_geometryContext.containerBounds);
          v36.origin.x = v15;
          v36.origin.y = v16;
          v36.size.width = v17;
          v36.size.height = v18;
          retstr->tx = (v24 - CGRectGetWidth(v36)) * 0.5;
          v37.origin.x = v15;
          v37.origin.y = v16;
          v37.size.width = v17;
          v37.size.height = v18;
          v23 = -CGRectGetHeight(v37);
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      v25 = -CGRectGetWidth(*&v11);
    }

    else
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v31 = CGRectGetWidth(self->_geometryContext.containerBounds);
          v34.origin.x = v15;
          v34.origin.y = v16;
          v34.size.width = v17;
          v34.size.height = v18;
          retstr->tx = (v31 - CGRectGetWidth(v34)) * 0.5;
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v23 = CGRectGetHeight(v35);
LABEL_13:
          retstr->ty = v23;
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      v25 = CGRectGetWidth(self->_geometryContext.containerBounds);
    }

    retstr->tx = v25;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v26 = CGRectGetHeight(v38);
    v39.origin.x = v15;
    v39.origin.y = v16;
    v39.size.width = v17;
    v39.size.height = v18;
    v23 = (v26 - CGRectGetHeight(v39)) * 0.5;
    goto LABEL_13;
  }

LABEL_15:
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  UIRoundToViewScale();
  retstr->tx = v28;
  UIRoundToViewScale();
  retstr->ty = v29;

  return result;
}

- (CGAffineTransform)_transformFromDisplayArrangeSpaceToWindowScene:(SEL)a3
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  result = [(SBPIPInteractionController *)self _transformToDisplayArrangementSpaceFromWindowScene:a4];
  *&retstr->tx = vnegq_f64(*&retstr->tx);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pendingTransition)
  {
    v6 = 0;
  }

  else if (self->_panWhileResizingGestureRecognizer == v4)
  {
    v6 = [(SBPIPInteractionController *)self _isPinching];
  }

  else
  {
    v6 = self->_edgeResizeGestureRecognizer != v4 || self->_pointerIsHoveringOverEdge != 0;
  }

  return v6;
}

- (BOOL)gestureRecognizerShouldFailForMovementPastHysteresis:(id)a3
{
  if (self->_rotationGestureRecognizer != a3 && self->_pinchGestureRecognizer != a3)
  {
    return 1;
  }

  if ([(SBPIPInteractionController *)self _isPinching])
  {
    return 0;
  }

  return ![(SBPIPInteractionController *)self _isRotating];
}

- (void)handleExternalPanGesture:(id)a3
{
  v17 = a3;
  v5 = [v17 state];
  if (v5 == 1)
  {
    objc_storeStrong(&self->_externalPanDrivingGestureRecognizer, a3);
    WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
    v7 = [WeakRetained superview];
    [v17 locationInView:v7];
    v9 = v8;
    v11 = v10;

    [WeakRetained center];
    v13 = v9 - v12;
    [WeakRetained center];
    self->_panGestureLocationOffset.x = v13;
    self->_panGestureLocationOffset.y = v11 - v14;

    [(SBPIPInteractionController *)self handlePanGesture:v17];
  }

  else
  {
    v15 = v5;
    [(SBPIPInteractionController *)self handlePanGesture:v17];
    if ((v15 - 3) <= 2)
    {
      externalPanDrivingGestureRecognizer = self->_externalPanDrivingGestureRecognizer;
      self->_externalPanDrivingGestureRecognizer = 0;

      self->_panGestureLocationOffset = *MEMORY[0x277CBF348];
    }
  }
}

- (void)handleEdgeResizeGesture:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v6 = [v4 state];
  if (v6 > 3)
  {
    if ((v6 - 4) >= 2)
    {
      goto LABEL_18;
    }

    if (self->_systemGestureManagerForResizing)
    {
      [(UIPanGestureRecognizer *)self->_panWhileResizingGestureRecognizer setState:4];
    }

    goto LABEL_9;
  }

  switch(v6)
  {
    case 1:
      v8 = SBLogPIP();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(SBPIPInteractionController *)self handleEdgeResizeGesture:v4];
      }

      self->_pinchGestureScaleFactor = 1.0;
      [WeakRetained bounds];
      self->_edgeResizeGestureBaselineWidthScale = v9 / self->_preferredContentSize.width;
      [WeakRetained bounds];
      self->_edgeResizeGestureBaselineHeightScale = v10 / self->_preferredContentSize.height;
      [WeakRetained bounds];
      self->_edgeResizeGestureBaselineWidth = v11;
      [WeakRetained bounds];
      self->_edgeResizeGestureBaselineHeight = v12;
      [(_UIHyperInteractor *)self->_scaleInteractor sbpip_setInteractive:1];
      [(SBPIPInteractionController *)self _adjustContentViewAnchorPointForGestureRecognizer:v4];
      [(SBPIPInteractionController *)self _handleGestureBeganState:v4];
      break;
    case 2:
      break;
    case 3:
LABEL_9:
      v7 = SBLogPIP();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(SBPIPInteractionController *)self handleEdgeResizeGesture:v4];
      }

      [(SBPIPInteractionController *)self _handleGestureEndedState:v4];
      goto LABEL_18;
    default:
      goto LABEL_18;
  }

  v13 = [WeakRetained superview];
  [v4 translationInView:v13];
  v20 = 0.0;
  v21 = 0.0;
  [(SBPIPInteractionController *)self recalculateScale:&v21 baselineScale:&v20 forTranslationInView:?];
  v14 = v21 * 0.75 + self->_pinchGestureScaleFactor * 0.25;
  self->_pinchGestureScaleFactor = v14;
  v15 = -(v20 - v20 * v14);
  v19 = v15;
  v16 = SBLogPIP();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    shortDescription = self->_shortDescription;
    v18 = [v4 name];
    *buf = 138544130;
    v23 = shortDescription;
    v24 = 2114;
    v25 = v18;
    v26 = 2048;
    v27 = v21;
    v28 = 2048;
    v29 = v15;
    _os_log_debug_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture][%{public}@] Edge Resize Changed: \t scale %.2f scaleTranslation %.2f", buf, 0x2Au);
  }

  [(_UIHyperInteractor *)self->_scaleInteractor _copyTranslation:&v19];
  [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:2 withReason:256 behavior:1];

LABEL_18:
}

- (void)handlePanGesture:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v6 = objc_loadWeakRetained(&self->_dataSource);
  v7 = [v4 state];
  if ((v7 - 3) >= 3)
  {
    if (v7 != 2)
    {
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      v10 = SBLogPIP();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(SBPIPInteractionController *)self handlePanGesture:v4];
      }

      self->_threeTouchesPanDetected = 0;
      [(_UIHyperInteractor *)self->_positionInteractor sbpip_setInteractive:1];
      if ([v6 interactionControllerScalesDuringPanGesture:self])
      {
        [(_UIHyperInteractor *)self->_scaleInteractor sbpip_setInteractive:1];
      }

      [(SBPIPInteractionController *)self _handleGestureBeganState:v4];
    }

    [(SBPIPInteractionController *)self _updateTargetWindowSceneIfNeeded];
    v11 = [WeakRetained superview];
    [v4 translationInView:v11];
    v13 = v12 + self->_panGestureLocationOffset.x;
    v15 = v14 + self->_panGestureLocationOffset.y;
    [v4 velocityInView:v11];
    v17 = v16;
    v19 = v18;
    v30[0] = v16;
    v30[1] = v18;
    v20 = v13 + self->_geometryContext.pipAnchorPointOffset.x;
    v21 = v15 + self->_geometryContext.pipAnchorPointOffset.y;
    v22 = [v4 numberOfTouches] == 3 || self->_threeTouchesPanDetected;
    self->_threeTouchesPanDetected = v22;
    v23 = SBLogPIP();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = self->_shortDescription;
      v27 = [v4 name];
      threeTouchesPanDetected = self->_threeTouchesPanDetected;
      *buf = 138545410;
      v32 = shortDescription;
      v33 = 2114;
      v34 = v27;
      v35 = 2048;
      v36 = v13;
      v37 = 2048;
      v38 = v15;
      v39 = 2048;
      v40 = v17;
      v41 = 2048;
      v42 = v19;
      v43 = 2048;
      v44 = v20;
      v45 = 2048;
      v46 = v21;
      v47 = 1024;
      v48 = threeTouchesPanDetected;
      _os_log_debug_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture][%{public}@] Pan Changed: \t translation{%.2f, %.2f} velocity{%.2f, %.2f} anchorPointTranslatedPosition{%.2f, %.2f} _threeTouchesPanDetected{%{BOOL}u}", buf, 0x58u);
    }

    [(_UIHyperInteractor *)self->_positionInteractor _copyTranslation:&v29];
    [(_UIHyperInteractor *)self->_positionInteractor _copyVelocity:v30];
    if ([v6 interactionControllerScalesDuringPanGesture:self])
    {
      scaleInteractor = self->_scaleInteractor;
      [(SBPIPInteractionController *)self _lastSteadySize];
      [v6 interactionController:self updateScaleInteractor:scaleInteractor pipSize:v4 forPanGesture:?];
      v25 = 3;
    }

    else
    {
      v25 = 1;
    }

    [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:v25 withReason:128 behavior:1];
  }

  else
  {
    if ([v6 interactionControllerScalesDuringPanGesture:self])
    {
      v8 = self->_scaleInteractor;
      [(SBPIPInteractionController *)self _lastSteadySize];
      [v6 interactionController:self updateScaleInteractor:v8 pipSize:v4 forPanGesture:?];
    }

    v9 = SBLogPIP();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(SBPIPInteractionController *)self handlePanGesture:v4];
    }

    [(SBPIPInteractionController *)self _handleGestureEndedState:v4];
  }

LABEL_23:
}

- (void)handlePinchGesture:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  if (v5 > 3)
  {
    if ((v5 - 4) >= 2)
    {
      goto LABEL_18;
    }

    if (self->_systemGestureManagerForResizing)
    {
      [(UIPanGestureRecognizer *)self->_panWhileResizingGestureRecognizer setState:4];
    }

    goto LABEL_9;
  }

  switch(v5)
  {
    case 1:
      v7 = SBLogPIP();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(SBPIPInteractionController *)self handlePinchGesture:v4];
      }

      self->_pinchGestureScaleFactor = 1.0;
      WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
      [WeakRetained bounds];
      self->_pinchGestureBaselineScale = v9 / self->_preferredContentSize.width;

      [(_UIHyperInteractor *)self->_scaleInteractor sbpip_setInteractive:1];
      [(SBPIPInteractionController *)self _adjustContentViewAnchorPointForGestureRecognizer:v4];
      [(SBPIPInteractionController *)self _handleGestureBeganState:self->_pinchGestureRecognizer];
      break;
    case 2:
      break;
    case 3:
LABEL_9:
      v6 = SBLogPIP();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(SBPIPInteractionController *)self handlePinchGesture:v4];
      }

      [(SBPIPInteractionController *)self _handleGestureEndedState:v4];
      goto LABEL_18;
    default:
      goto LABEL_18;
  }

  [v4 scale];
  v11 = v10;
  [v4 velocity];
  v13 = v12;
  v20 = v12;
  v14 = v11 * 0.75 + self->_pinchGestureScaleFactor * 0.25;
  self->_pinchGestureScaleFactor = v14;
  v15 = -(self->_pinchGestureBaselineScale - self->_pinchGestureBaselineScale * v14);
  v19 = v15;
  v16 = SBLogPIP();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    shortDescription = self->_shortDescription;
    v18 = [v4 name];
    *buf = 138544386;
    v22 = shortDescription;
    v23 = 2114;
    v24 = v18;
    v25 = 2048;
    v26 = v11;
    v27 = 2048;
    v28 = v13;
    v29 = 2048;
    v30 = v15;
    _os_log_debug_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture][%{public}@] Pinch Changed: \t scale %.2f velocity %.2f scaleTranslation %.2f", buf, 0x34u);
  }

  [(_UIHyperInteractor *)self->_scaleInteractor _copyTranslation:&v19];
  [(_UIHyperInteractor *)self->_scaleInteractor _copyVelocity:&v20];
  [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:2 withReason:256 behavior:1];
LABEL_18:
}

- (void)handleRotationGesture:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 3) >= 3)
  {
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        goto LABEL_17;
      }

      v7 = SBLogPIP();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(SBPIPInteractionController *)self handleRotationGesture:v4];
      }

      [(_UIHyperInteractor *)self->_rotationInteractor sbpip_setInteractive:1];
      [(SBPIPInteractionController *)self _adjustContentViewAnchorPointForGestureRecognizer:v4];
      [(SBPIPInteractionController *)self _handleGestureBeganState:v4];
    }

    [v4 rotation];
    v9 = v8;
    v18 = v8;
    [v4 velocity];
    v11 = v10;
    v12 = *[(_UIHyperInteractor *)self->_rotationInteractor _translation];
    v13 = v9 - v12;
    if (v9 - v12 < 0.0)
    {
      v13 = -v13;
    }

    if (v13 > 3.14159265)
    {
      [v4 setRotation:v12];
      v18 = v12;
      v9 = v12;
    }

    v14 = SBLogPIP();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = self->_shortDescription;
      v16 = [v4 name];
      *buf = 138544130;
      v20 = shortDescription;
      v21 = 2114;
      v22 = v16;
      v23 = 2048;
      v24 = v9;
      v25 = 2048;
      v26 = v11;
      _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture][%{public}@] Rotation Changed: \t rotation %.2f velocity %.2f", buf, 0x2Au);
    }

    [(_UIHyperInteractor *)self->_rotationInteractor _copyTranslation:&v18];
    [(_UIHyperInteractor *)self->_rotationInteractor _copyVelocity:&v17];
    [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:4 withReason:512 behavior:1];
  }

  else
  {
    v6 = SBLogPIP();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SBPIPInteractionController *)self handleRotationGesture:v4];
    }

    [(SBPIPInteractionController *)self _handleGestureEndedState:v4];
  }

LABEL_17:
}

- (void)_handleGestureBeganState:(id)a3
{
  v5 = a3;
  if (![(SBWindowScene *)self->_targetWindowScene isMainDisplayWindowScene])
  {
    [(SBPIPInteractionController *)self _updateGeometryContextBoundsUsingMainDisplayWindowScene];
  }

  [(SBPIPInteractionController *)self _updatePositionRegionComposers];
  [(SBPIPInteractionController *)self _updateInteractorsAndCommit:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained interactionControllerDidBeginInteraction:self forGestureRecognizer:v5];
  }
}

- (void)_handleGestureEndedState:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  self->_gesturesWereCancelled |= [(UIPanGestureRecognizer *)v5 state]== 4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gesturesEndedLayoutReason = self->_gesturesEndedLayoutReason;
    if (self->_edgeResizeGestureRecognizer != v5)
    {
      v7 = gesturesEndedLayoutReason | 0x80;
LABEL_9:
      self->_gesturesEndedLayoutReason = v7;
      goto LABEL_10;
    }

LABEL_6:
    v7 = gesturesEndedLayoutReason | 0x100;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gesturesEndedLayoutReason = self->_gesturesEndedLayoutReason;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = self->_gesturesEndedLayoutReason | 0x200;
    goto LABEL_9;
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"SBPIPInteractionController.m" lineNumber:1494 description:{@"Unrecognized gesture recognizer: %@", v5}];

LABEL_10:
  if (!self->_didHandleGestureEndState)
  {
    self->_didHandleGestureEndState = 1;
    self->_gesturesEndedLayoutReason |= 0x400uLL;
    v8 = SBLogPIP();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = self->_shortDescription;
      v13 = [(UIPanGestureRecognizer *)v5 name];
      v14 = v13;
      gesturesWereCancelled = self->_gesturesWereCancelled;
      *buf = 138543874;
      v19 = shortDescription;
      if (gesturesWereCancelled)
      {
        v16 = @"cancelled";
      }

      else
      {
        v16 = @"recognized";
      }

      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v16;
      _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture][%{public}@] Will Handle Ended State: %{public}@", buf, 0x20u);
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInt:!self->_gesturesWereCancelled];
    v17 = *MEMORY[0x277CBE738];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(SBPIPInteractionController *)self performSelector:sel___handleGesturesEndedState_ withObject:v9 afterDelay:v10 inModes:0.0];
  }
}

- (void)__handleGesturesEndedState:(id)a3
{
  v4 = a3;
  if (self->_didHandleGestureEndState)
  {
    v5 = SBLogPIP();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBPIPInteractionController __handleGesturesEndedState:];
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel___handleGesturesEndedState_ object:v4];
    [(SBPIPInteractionController *)self _resetAnchorPoint];
    [(SBPIPInteractionController *)self _updateInteractorsAndCommit:1];
    *&self->_didHandleGestureEndState = 0;
    objc_initWeak(&location, self);
    objc_copyWeak(&to, &self->_delegate);
    WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
    gesturesEndedLayoutReason = self->_gesturesEndedLayoutReason;
    if ((gesturesEndedLayoutReason & 0x80) != 0)
    {
      v8 = objc_loadWeakRetained(&to);
      if (objc_opt_respondsToSelector())
      {
        [v8 interactionControllerPanGestureDidEnd:self];
      }
    }

    self->_gesturesEndedLayoutReason = 0;
    v9 = [WeakRetained _sbWindowScene];
    [(SBPIPInteractionController *)self _inFlightHitTestPadding];
    [WeakRetained _setTouchInsets:?];
    v10 = [(SBPIPInteractionController *)self __traitsForGesturesReasons:gesturesEndedLayoutReason];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__SBPIPInteractionController___handleGesturesEndedState___block_invoke;
    v17[3] = &unk_2783AE4B8;
    v11 = WeakRetained;
    v18 = v11;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__SBPIPInteractionController___handleGesturesEndedState___block_invoke_2;
    v13[3] = &unk_2783B6BB0;
    objc_copyWeak(&v15, &to);
    objc_copyWeak(&v16, &location);
    v12 = v9;
    v14 = v12;
    [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:v10 withReason:gesturesEndedLayoutReason behavior:2 layoutCompletion:v17 interactionCompletion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&to);
    objc_destroyWeak(&location);
  }
}

void __57__SBPIPInteractionController___handleGesturesEndedState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = v2;
  if (v2)
  {
    [WeakRetained interactionControllerDidEndAllInteractions:v2 targetWindowScene:v2[91]];
    if (v3[91] != *(a1 + 32))
    {
      [v3 reloadHyperregionComposerData];
    }
  }
}

- (void)_setNeedsLayoutForTraits:(unint64_t)a3 withReason:(unint64_t)a4 behavior:(int)a5 layoutCompletion:(id)a6 interactionCompletion:(id)a7
{
  v8 = *&a5;
  v36 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  objc_copyWeak(&to, &self->_delegate);
  self->_allLayoutSessionUpdateReasons |= a4;
  if ([(SBPIPInteractionController *)self _isSizeAffectedByLayoutReasons:a4])
  {
    [(SBPIPInteractionController *)self _sizeChangeBeganWithBehavior:v8];
  }

  ++self->_inFlightAnimatedLayouts;
  v14 = SBLogPIP();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    shortDescription = self->_shortDescription;
    v22 = SBStringFromPIPLayoutReason(a4);
    inFlightAnimatedLayouts = self->_inFlightAnimatedLayouts;
    *buf = 138543874;
    v31 = shortDescription;
    v32 = 2114;
    v33 = v22;
    v34 = 2048;
    v35 = inFlightAnimatedLayouts;
    _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] increment!: %{public}@ %ld", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  v15 = SBLogPIP();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = self->_shortDescription;
    v17 = SBStringFromPIPLayoutReason(a4);
    [SBPIPInteractionController _setNeedsLayoutForTraits:v16 withReason:v17 behavior:buf layoutCompletion:v15 interactionCompletion:?];
  }

  v18 = objc_loadWeakRetained(&to);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke;
  v24[3] = &unk_2783B6BD8;
  objc_copyWeak(v27, &location);
  v24[4] = self;
  v27[1] = a4;
  v19 = v12;
  v25 = v19;
  v20 = v13;
  v26 = v20;
  [v18 setNeedsLayoutForInteractionController:self traits:a3 withReason:a4 behavior:v8 completion:v24];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
  objc_destroyWeak(&to);
}

void __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained + 84;
    --WeakRetained[84];
    v9 = SBLogPIP();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke_cold_1(a1);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, a2, a3);
    }

    if (*(a1 + 48))
    {
      if (*(*(a1 + 32) + 680))
      {
        v11 = MEMORY[0x223D6F7F0](*(*(a1 + 32) + 680));
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke_321;
        v32 = &unk_2783AE5C8;
        v33 = v11;
        v34 = *(a1 + 48);
        v12 = v11;
        v13 = MEMORY[0x223D6F7F0](&v29);
        v14 = *(a1 + 32);
        v15 = *(v14 + 680);
        *(v14 + 680) = v13;
      }

      else
      {
        v18 = MEMORY[0x223D6F7F0]();
        v19 = *(a1 + 32);
        v12 = *(v19 + 680);
        *(v19 + 680) = v18;
      }
    }

    if (([v7 _isGesturing] & 1) == 0)
    {
      v20 = SBLogPIP();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(v7 + 24);
        v28 = SBStringFromPIPLayoutReason(*(a1 + 64));
        *buf = 138544130;
        v36 = v27;
        v37 = 2114;
        v38 = v28;
        v39 = 1024;
        v40 = a2;
        v41 = 1024;
        v42 = a3;
        _os_log_debug_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] Did complete animation for: %{public}@ finished: %{BOOL}u, retargeted %{BOOL}u", buf, 0x22u);
      }

      if (!*v8)
      {
        if (*(*(a1 + 32) + 680))
        {
          v21 = MEMORY[0x223D6F7F0]();
          v22 = *(a1 + 32);
          v23 = *(v22 + 680);
          *(v22 + 680) = 0;

          v21[2](v21, a2, a3);
        }

        if ([v7 _isSizeAffectedByLayoutReasons:*(v7 + 152)])
        {
          [v7 _sizeChangeEnded];
        }

        v24 = SBLogPIP();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke_cold_2(v7, (v7 + 152));
        }

        *(v7 + 152) = 0;
        v25 = objc_loadWeakRetained((v7 + 8));
        [v25 interactionController:v7 didSettleOnStashState:*(v7 + 40)];

        if ([v7 _isPreferredContentSizeDirty])
        {
          v26 = SBLogPIP();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke_cold_3();
          }

          [v7 _updatePreferredContentSize];
        }

        if ((*(v7 + 41) & 1) == 0)
        {
          [v7 _setupForInitialFrame];
        }
      }
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, a2, a3);
    }

    v17 = *(a1 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, a2, a3);
    }
  }
}

uint64_t __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke_321(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (unint64_t)__traitsForGesturesReasons:(unint64_t)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __57__SBPIPInteractionController___traitsForGesturesReasons___block_invoke;
  v12 = &unk_2783ABA80;
  v13 = self;
  v14 = &v15;
  v4 = v10;
  if (a3)
  {
    v5 = 0;
    v19 = 0;
    v6 = vcnt_s8(a3);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a3) != 0)
      {
        (v11)(v4);
        if (v19)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v8;
}

void __57__SBPIPInteractionController___traitsForGesturesReasons___block_invoke(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 512:
      v2 = a1 + 40;
      v5 = 4;
      goto LABEL_9;
    case 256:
      v2 = a1 + 40;
LABEL_7:
      v5 = 2;
LABEL_9:
      *(*(*v2 + 8) + 24) |= v5;
      return;
    case 128:
      v2 = a1 + 40;
      *(*(*(a1 + 40) + 8) + 24) |= 1uLL;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 760));
      v4 = [WeakRetained interactionControllerScalesDuringPanGesture:*(v2 - 8)];

      if (v4)
      {
        goto LABEL_7;
      }

      break;
  }
}

- (BOOL)_isSystemGestureRecognizer:(id)a3
{
  v4 = [a3 view];
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v6 = [WeakRetained window];
  v7 = v4 != v6;

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_panGestureRecognizer == v6 && self->_panWhileResizingGestureRecognizer == v7)
  {
    v10 = 0;
  }

  else
  {
    edgeResizeGestureRecognizer = self->_edgeResizeGestureRecognizer;
    v10 = edgeResizeGestureRecognizer != v6 && edgeResizeGestureRecognizer != v7;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  if ([(SBPIPInteractionController *)self _isSystemGestureRecognizer:v6])
  {
    if ([v7 type] == 1)
    {
      v9 = [(SBSystemGestureManager *)self->_systemGestureManagerForResizing indirectTouchLifecycleMonitor];
      [v9 systemGestureHoverLocationInView:WeakRetained];
      v11 = v10;
      v13 = v12;

      v14 = [WeakRetained pointInside:0 forEvent:{v11, v13}];
      v15 = SBLogPIP();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        shortDescription = self->_shortDescription;
        v17 = [(UIPanGestureRecognizer *)v6 name];
        v33 = 138544386;
        v34 = shortDescription;
        v35 = 2114;
        v36 = v17;
        v37 = 2048;
        v38 = v11;
        v39 = 2048;
        v40 = v13;
        v41 = 1024;
        LODWORD(v42) = v14;
        v18 = "[%{public}@][Gesture][%{public}@] hoverLocation{%.2f,%.2f} hoverInside{%{BOOL}u}";
        v19 = v15;
        v20 = 48;
LABEL_14:
        _os_log_debug_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEBUG, v18, &v33, v20);
      }
    }

    else
    {
      [v7 locationInView:0];
      v24 = v23;
      v26 = v25;
      [(SBPIPInteractionController *)self _convertPointToInteractionTargetView:v6 fromSystemGestureRecognizer:?];
      v28 = v27;
      v30 = v29;
      v14 = [WeakRetained pointInside:0 withEvent:?];
      v15 = SBLogPIP();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v32 = self->_shortDescription;
        v17 = [(UIPanGestureRecognizer *)v6 name];
        v33 = 138544898;
        v34 = v32;
        v35 = 2114;
        v36 = v17;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v26;
        v41 = 2048;
        v42 = v28;
        v43 = 2048;
        v44 = v30;
        v45 = 1024;
        v46 = v14;
        v18 = "[%{public}@][Gesture][%{public}@] point{%.2f,%.2f} pointInView{%.2f,%.2f} pointInside{%{BOOL}u}";
        v19 = v15;
        v20 = 68;
        goto LABEL_14;
      }
    }

    goto LABEL_12;
  }

  [v7 locationInView:WeakRetained];
  v21 = [WeakRetained pointInside:0 withEvent:?];
  LOBYTE(v14) = v21;
  if (self->_panGestureRecognizer == v6)
  {
    v22 = self->_pointerIsHoveringOverEdge == 0;
    goto LABEL_11;
  }

  if (self->_edgeResizeGestureRecognizer == v6)
  {
    v22 = self->_pointerIsHoveringOverEdge != 0;
LABEL_11:
    LOBYTE(v14) = v22 & v21;
  }

LABEL_12:

  return v14;
}

- (BOOL)_isInteractive
{
  if ([(_UIHyperInteractor *)self->_positionInteractor sbpip_isInteractive]|| [(_UIHyperInteractor *)self->_scaleInteractor sbpip_isInteractive])
  {
    return 1;
  }

  rotationInteractor = self->_rotationInteractor;

  return [(_UIHyperInteractor *)rotationInteractor sbpip_isInteractive];
}

- (BOOL)_isGesturing
{
  if ([(SBPIPInteractionController *)self _isPanning]|| [(SBPIPInteractionController *)self _isPinching])
  {
    return 1;
  }

  return [(SBPIPInteractionController *)self _isRotating];
}

- (BOOL)_isPanning
{
  if ([(SBPIPInteractionController *)self _isGestureRecognizerRecognizing:self->_panGestureRecognizer]|| [(SBPIPInteractionController *)self _isGestureRecognizerRecognizing:self->_panWhileResizingGestureRecognizer]|| [(SBPIPInteractionController *)self _isGestureRecognizerRecognizing:self->_externalPanDrivingGestureRecognizer]|| [(SBPIPInteractionController *)self _isGestureRecognizerRecognizing:self->_edgeResizeGestureRecognizer])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained interactionControllerIsExternalPanGestureRecognizing:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isPinching
{
  if ([(SBPIPInteractionController *)self _isGestureRecognizerRecognizing:self->_pinchGestureRecognizer])
  {
    return 1;
  }

  externalPanDrivingGestureRecognizer = self->_externalPanDrivingGestureRecognizer;

  return [(SBPIPInteractionController *)self _isGestureRecognizerRecognizing:externalPanDrivingGestureRecognizer];
}

- (BOOL)_isGestureRecognizerRecognizing:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 view];
    v6 = v5 && [v4 state] >= 1 && objc_msgSend(v4, "state") < 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIEdgeInsets)_inFlightHitTestPadding
{
  [(SBPIPInteractionSettings *)self->_interactionSettings inFlightHitTestPadding];
  v3 = -v2;
  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_cancelAllGestures
{
  [(SBPIPInteractionController *)self _removeGestureRecognizers];
  if (self->_enabled)
  {

    [(SBPIPInteractionController *)self _setupGestureRecognizers];
  }
}

- (CGPoint)edgeResizeAnchorPoint
{
  v3 = [(SBPIPInteractionSettings *)self->_interactionSettings edgeResizeSettings];
  v4 = [v3 anchorPointSettings];
  pointerIsHoveringOverEdge = self->_pointerIsHoveringOverEdge;
  v6 = [(SBPIPInteractionController *)self canonicalPosition];
  v7 = 0.5;
  if (pointerIsHoveringOverEdge > 4)
  {
    v11 = 0.0;
    v12 = 1.0;
    if (pointerIsHoveringOverEdge == 8)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 0.5;
    }

    if (pointerIsHoveringOverEdge == 7)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = v13;
    }

    if (pointerIsHoveringOverEdge == 7)
    {
      v13 = 0.0;
    }

    if (pointerIsHoveringOverEdge == 6)
    {
      v15 = 1.0;
    }

    else
    {
      v11 = 0.5;
      v15 = 0.5;
    }

    if (pointerIsHoveringOverEdge == 5)
    {
      v11 = 1.0;
    }

    else
    {
      v12 = v15;
    }

    if (pointerIsHoveringOverEdge <= 6)
    {
      v7 = v11;
    }

    else
    {
      v7 = v14;
    }

    if (pointerIsHoveringOverEdge <= 6)
    {
      v8 = v12;
    }

    else
    {
      v8 = v13;
    }
  }

  else if (pointerIsHoveringOverEdge > 2)
  {
    if (pointerIsHoveringOverEdge == 3)
    {
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          [v4 dockLowerRightResizeLeftEdgeAnchorPointX];
          v7 = v26;
          [v4 dockLowerRightResizeLeftEdgeAnchorPointY];
          goto LABEL_63;
        }

        v8 = 0.5;
        if (v6 == 3)
        {
          [v4 dockUpperRightResizeLeftEdgeAnchorPointX];
          v7 = v20;
          [v4 dockUpperRightResizeLeftEdgeAnchorPointY];
          goto LABEL_63;
        }
      }

      else
      {
        if (!v6)
        {
          [v4 dockUpperLeftResizeLeftEdgeAnchorPointX];
          v7 = v24;
          [v4 dockUpperLeftResizeLeftEdgeAnchorPointY];
          goto LABEL_63;
        }

        v8 = 0.5;
        if (v6 == 1)
        {
          [v4 dockLowerLeftResizeLeftEdgeAnchorPointX];
          v7 = v18;
          [v4 dockLowerLeftResizeLeftEdgeAnchorPointY];
          goto LABEL_63;
        }
      }
    }

    else
    {
      v8 = 0.5;
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          [v4 dockLowerRightResizeRightEdgeAnchorPointX];
          v7 = v30;
          [v4 dockLowerRightResizeRightEdgeAnchorPointY];
          goto LABEL_63;
        }

        if (v6 == 3)
        {
          [v4 dockUpperRightResizeRightEdgeAnchorPointX];
          v7 = v22;
          [v4 dockUpperRightResizeRightEdgeAnchorPointY];
          goto LABEL_63;
        }
      }

      else
      {
        if (!v6)
        {
          [v4 dockUpperLeftResizeRightEdgeAnchorPointX];
          v7 = v28;
          [v4 dockUpperLeftResizeRightEdgeAnchorPointY];
          goto LABEL_63;
        }

        if (v6 == 1)
        {
          [v4 dockLowerLeftResizeRightEdgeAnchorPointX];
          v7 = v16;
          [v4 dockLowerLeftResizeRightEdgeAnchorPointY];
          goto LABEL_63;
        }
      }
    }
  }

  else if (pointerIsHoveringOverEdge == 1)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        [v4 dockLowerRightResizeTopEdgeAnchorPointX];
        v7 = v25;
        [v4 dockLowerRightResizeTopEdgeAnchorPointY];
        goto LABEL_63;
      }

      v8 = 0.5;
      if (v6 == 3)
      {
        [v4 dockUpperRightResizeTopEdgeAnchorPointX];
        v7 = v19;
        [v4 dockUpperRightResizeTopEdgeAnchorPointY];
        goto LABEL_63;
      }
    }

    else
    {
      if (!v6)
      {
        [v4 dockUpperLeftResizeTopEdgeAnchorPointX];
        v7 = v23;
        [v4 dockUpperLeftResizeTopEdgeAnchorPointY];
        goto LABEL_63;
      }

      v8 = 0.5;
      if (v6 == 1)
      {
        [v4 dockLowerLeftResizeTopEdgeAnchorPointX];
        v7 = v17;
        [v4 dockLowerLeftResizeTopEdgeAnchorPointY];
        goto LABEL_63;
      }
    }
  }

  else
  {
    v8 = 0.5;
    if (pointerIsHoveringOverEdge == 2)
    {
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          [v4 dockLowerRightResizeBottomEdgeAnchorPointX];
          v7 = v29;
          [v4 dockLowerRightResizeBottomEdgeAnchorPointY];
          goto LABEL_63;
        }

        if (v6 == 3)
        {
          [v4 dockUpperRightResizeBottomEdgeAnchorPointX];
          v7 = v21;
          [v4 dockUpperRightResizeBottomEdgeAnchorPointY];
          goto LABEL_63;
        }
      }

      else
      {
        if (!v6)
        {
          [v4 dockUpperLeftResizeBottomEdgeAnchorPointX];
          v7 = v27;
          [v4 dockUpperLeftResizeBottomEdgeAnchorPointY];
          goto LABEL_63;
        }

        if (v6 == 1)
        {
          [v4 dockLowerLeftResizeBottomEdgeAnchorPointX];
          v7 = v9;
          [v4 dockLowerLeftResizeBottomEdgeAnchorPointY];
LABEL_63:
          v8 = v10;
        }
      }
    }
  }

  v31 = v7;
  v32 = v8;
  result.y = v32;
  result.x = v31;
  return result;
}

- (void)recalculateScale:(double *)a3 baselineScale:(double *)a4 forTranslationInView:(CGPoint)a5
{
  edgeResizeGestureBaselineWidth = self->_edgeResizeGestureBaselineWidth;
  v6 = edgeResizeGestureBaselineWidth - a5.x;
  pointerIsHoveringOverEdge = self->_pointerIsHoveringOverEdge;
  v8 = 0.0;
  if (pointerIsHoveringOverEdge > 4)
  {
    if (pointerIsHoveringOverEdge > 6)
    {
      if (pointerIsHoveringOverEdge != 7)
      {
        v14 = 0.0;
        if (pointerIsHoveringOverEdge != 8)
        {
          goto LABEL_23;
        }

        edgeResizeGestureBaselineHeight = self->_edgeResizeGestureBaselineHeight;
        v12 = a5.y + edgeResizeGestureBaselineHeight;
        goto LABEL_14;
      }

      v15 = self->_edgeResizeGestureBaselineHeight;
      v16 = a5.y + v15;
    }

    else
    {
      if (pointerIsHoveringOverEdge != 5)
      {
        edgeResizeGestureBaselineHeight = self->_edgeResizeGestureBaselineHeight;
        v12 = edgeResizeGestureBaselineHeight - a5.y;
LABEL_14:
        v14 = v12 / edgeResizeGestureBaselineHeight;
        v13 = a5.x + edgeResizeGestureBaselineWidth;
        goto LABEL_15;
      }

      v15 = self->_edgeResizeGestureBaselineHeight;
      v16 = v15 - a5.y;
    }

    v14 = v16 / v15;
    goto LABEL_22;
  }

  if (pointerIsHoveringOverEdge > 2)
  {
    if (pointerIsHoveringOverEdge != 3)
    {
      v13 = a5.x + edgeResizeGestureBaselineWidth;
      v14 = 0.0;
LABEL_15:
      v8 = v13 / edgeResizeGestureBaselineWidth;
      goto LABEL_23;
    }

    v14 = 0.0;
LABEL_22:
    v8 = v6 / edgeResizeGestureBaselineWidth;
    goto LABEL_23;
  }

  if (pointerIsHoveringOverEdge == 1)
  {
    v9 = self->_edgeResizeGestureBaselineHeight;
    v10 = v9 - a5.y;
    goto LABEL_17;
  }

  if (pointerIsHoveringOverEdge == 2)
  {
    v9 = self->_edgeResizeGestureBaselineHeight;
    v10 = a5.y + v9;
LABEL_17:
    v14 = v10 / v9;
    goto LABEL_23;
  }

  v14 = 0.0;
LABEL_23:
  if (v14 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v14;
  }

  v18 = 488;
  if (v14 > v8)
  {
    v18 = 496;
  }

  v19 = *(&self->super.isa + v18);
  *a3 = fmax(v17, 0.0);
  *a4 = v19;
}

- (void)reloadInsets
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [WeakRetained interactionControllerConnectedWindowScenes:self];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [WeakRetained interactionController:self stashedPaddingForWindowScene:v9];
        if ([(SBPIPInteractionController *)self _setStashedPadding:v9 forScene:?])
        {
          v6 |= 0x40uLL;
        }

        [WeakRetained interactionController:self edgeInsetsForWindowScene:v9];
        if ([(SBPIPInteractionController *)self _setEdgeInsets:v9 forScene:?])
        {
          v6 |= 4uLL;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);

    if (v6)
    {
      [(SBPIPInteractionController *)self _updateInteractorsAndCommit:0];
      if (self->_enabled)
      {
        if (![(SBPIPInteractionController *)self _isInteractive])
        {
          [(SBPIPInteractionController *)self _updateInteractorsAndCommit:1];
          objc_initWeak(&location, self);
          objc_copyWeak(&to, &self->_delegate);
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __42__SBPIPInteractionController_reloadInsets__block_invoke;
          v10[3] = &unk_2783B6C00;
          objc_copyWeak(&v11, &to);
          v12[1] = v6;
          objc_copyWeak(v12, &location);
          [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:7 withReason:v6 behavior:2 layoutCompletion:0 interactionCompletion:v10];
          objc_destroyWeak(v12);
          objc_destroyWeak(&v11);
          objc_destroyWeak(&to);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        [(SBPIPInteractionController *)self _setupForInitialFrame];
      }
    }
  }

  else
  {
  }
}

void __42__SBPIPInteractionController_reloadInsets__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((objc_opt_respondsToSelector() & 1) != 0 && (*(a1 + 48) & 4) != 0)
  {
    v2 = objc_loadWeakRetained((a1 + 40));
    [WeakRetained interactionControllerDidUpdateEdgeInsets:v2];
  }
}

- (void)_enumerateComposers:(id)a3 usingBlock:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v6[2](v6, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updatePositionRegionComposers
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained defaultPositionHyperregionComposers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SBPIPInteractionController__updatePositionRegionComposers__block_invoke;
  v11[3] = &unk_2783B6C28;
  v12 = v4;
  v13 = self;
  v5 = v4;
  [(SBPIPInteractionController *)self _enumeratePositionRegionComposersUsingBlock:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SBPIPInteractionController__updatePositionRegionComposers__block_invoke_2;
  v10[3] = &unk_2783B6C50;
  v10[4] = self;
  [(SBPIPInteractionController *)self _enumerateComposers:v5 usingBlock:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SBPIPInteractionController__updatePositionRegionComposers__block_invoke_3;
  v7[3] = &unk_2783B6C28;
  v8 = WeakRetained;
  v9 = self;
  v6 = WeakRetained;
  [(SBPIPInteractionController *)self _enumeratePositionRegionComposersUsingBlock:v7];
  [(SBPIPInteractionController *)self reloadInsets];
}

void __60__SBPIPInteractionController__updatePositionRegionComposers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) positionRegionComposerDidInvalidate:v3];
  }
}

void __60__SBPIPInteractionController__updatePositionRegionComposers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(a1 + 32) + 432) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addPositionRegionComposer:v3];
  }
}

void __60__SBPIPInteractionController__updatePositionRegionComposers__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) interactionControllerConnectedWindowScenes:*(a1 + 40)];
    [v4 setConnectedWindowScenes:v3];
  }
}

- (void)prepareForTransitionToWindowScene:(id)a3
{
  v4 = a3;
  if (self->_targetWindowScene != v4)
  {
    pendingTransition = self->_pendingTransition;
    v8 = v4;
    if (!pendingTransition)
    {
      v6 = objc_alloc_init(_SBPIPInteractionControllerTransitionInfo);
      v7 = self->_pendingTransition;
      self->_pendingTransition = v6;

      [(_SBPIPInteractionControllerTransitionInfo *)self->_pendingTransition setLayoutCorner:[(SBPIPContentViewLayoutSettings *)self->_layoutSettings currentContentViewPosition]];
      pendingTransition = self->_pendingTransition;
    }

    [(_SBPIPInteractionControllerTransitionInfo *)pendingTransition setTargetWindowScene:v8];
    v4 = v8;
  }
}

- (void)finishTransitionToWindowScene:(id)a3
{
  [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:1 withReason:1 behavior:2];
  pendingTransition = self->_pendingTransition;
  self->_pendingTransition = 0;
}

- (void)reloadHyperregionComposerData
{
  [(SBPIPInteractionController *)self _updatePositionRegionComposers];

  [(SBPIPInteractionController *)self _updateInteractorsAndCommit:1];
}

- (void)_updateTargetWindowSceneIfNeededUpdatingInteractors:(BOOL)a3
{
  v3 = a3;
  v55 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  v6 = [WeakRetained _sbWindowScene];

  v7 = objc_loadWeakRetained(&self->_dataSource);
  v8 = [v7 interactionControllerConnectedWindowScenes:self];

  p_targetWindowScene = &self->_targetWindowScene;
  v10 = self->_targetWindowScene;
  pendingTransition = self->_pendingTransition;
  if (!pendingTransition)
  {
    [(SBPIPInteractionController *)self _currentPositionInteractionStateContext];
    if ((v53 & 1) == 0 && v6)
    {
      v12 = v6;
      goto LABEL_8;
    }

    if ([v8 count] == 1)
    {
      v12 = [v8 bs_firstObjectPassingTest:&__block_literal_global_170];
      goto LABEL_8;
    }

    if ([v8 count] < 2)
    {
      goto LABEL_9;
    }

    v42 = v3;
    v43 = v6;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    [(SBPIPInteractionController *)self _currentPositionInteractionStateContext];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v41 = v8;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v19 = *v45;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v44 + 1) + 8 * i);
          v22 = [v21 isMainDisplayWindowScene];
          v23 = v21;
          if (v22)
          {
            v24 = v18;
          }

          else
          {
            v24 = v17;
          }

          if (v22)
          {
            v18 = v23;
          }

          else
          {
            v17 = v23;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v25 = [v18 _sbDisplayConfiguration];
    v26 = SBSDisplayEdgeAdjacentToNeighboringDisplay();
    if (v26 > 1)
    {
      v6 = v43;
      v3 = v42;
      p_targetWindowScene = &self->_targetWindowScene;
      v8 = v41;
      if (v26 == 2)
      {
        v38 = *(&v50 + 1);
        MaxX = CGRectGetMaxX(self->_geometryContext.containerBounds);
        v29 = v17;
        if (v38 > MaxX)
        {
          goto LABEL_45;
        }

        v34 = *(&v50 + 1);
        v35 = CGRectGetMaxX(self->_geometryContext.containerBounds);
      }

      else
      {
        if (v26 != 3)
        {
          goto LABEL_46;
        }

        v32 = *&v51;
        MaxY = CGRectGetMaxY(self->_geometryContext.containerBounds);
        v29 = v17;
        if (v32 > MaxY)
        {
          goto LABEL_45;
        }

        v34 = *&v51;
        v35 = CGRectGetMaxY(self->_geometryContext.containerBounds);
      }

      v29 = v18;
      if (v34 < v35)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v6 = v43;
      v3 = v42;
      p_targetWindowScene = &self->_targetWindowScene;
      v8 = v41;
      if (!v26)
      {
        v36 = *(&v50 + 1);
        MinX = CGRectGetMinX(self->_geometryContext.containerBounds);
        v29 = v17;
        if (v36 >= MinX)
        {
          v30 = *(&v50 + 1);
          v31 = CGRectGetMinX(self->_geometryContext.containerBounds);
LABEL_40:
          v29 = v18;
          if (v30 <= v31)
          {
            goto LABEL_46;
          }
        }

LABEL_45:
        v40 = v29;

        v10 = v40;
        goto LABEL_46;
      }

      if (v26 == 1)
      {
        v27 = *&v51;
        MinY = CGRectGetMinY(self->_geometryContext.containerBounds);
        v29 = v17;
        if (v27 >= MinY)
        {
          v30 = *&v51;
          v31 = CGRectGetMinY(self->_geometryContext.containerBounds);
          goto LABEL_40;
        }

        goto LABEL_45;
      }
    }

LABEL_46:

    goto LABEL_9;
  }

  v12 = [(_SBPIPInteractionControllerTransitionInfo *)pendingTransition targetWindowScene];
LABEL_8:
  v13 = v12;

  v10 = v13;
LABEL_9:
  if (v10 != *p_targetWindowScene)
  {
    objc_storeStrong(p_targetWindowScene, v10);
    if (v3)
    {
      [(SBPIPInteractionController *)self _updateInteractorsAndCommit:0];
    }
  }
}

- (void)_updateInteractorsAndCommit:(BOOL)a3
{
  v3 = a3;
  v37 = 0;
  v36 = *MEMORY[0x277CBF348];
  scaleInteractor = self->_scaleInteractor;
  v6 = [(SBPIPInteractionController *)self _scaleHyperregion];
  [(_UIHyperInteractor *)scaleInteractor _setRegion:v6];

  if (v3)
  {
    [(_UIHyperInteractor *)self->_scaleInteractor _commitTranslation];
    v7 = [(_UIHyperInteractor *)self->_scaleInteractor _region];
    [v7 _closestPoint:&v34 toPoint:{-[_UIHyperInteractor _projectedPoint](self->_scaleInteractor, "_projectedPoint")}];

    [(_UIHyperInteractor *)self->_scaleInteractor sbpip_setInteractive:0];
    [(_UIHyperInteractor *)self->_scaleInteractor _copyVelocity:&v37];
    [(_UIHyperInteractor *)self->_scaleInteractor _copyTranslation:&v37];
    [(_UIHyperInteractor *)self->_scaleInteractor _copyUnconstrainedPoint:&v34];
    layoutSettings = self->_layoutSettings;
    [(SBPIPInteractionController *)self _currentSizeForLayoutReason:1024];
    [(SBPIPContentViewLayoutSettings *)layoutSettings setContentViewSize:?];
  }

  rotationInteractor = self->_rotationInteractor;
  v10 = [(SBPIPInteractionController *)self _rotationHyperregion];
  [(_UIHyperInteractor *)rotationInteractor _setRegion:v10];

  if (v3)
  {
    v11 = [(_UIHyperInteractor *)self->_rotationInteractor _region];
    [(_UIHyperInteractor *)self->_rotationInteractor _commitTranslation];
    [(_UIHyperInteractor *)self->_rotationInteractor sbpip_setInteractive:0];
    [(_UIHyperInteractor *)self->_rotationInteractor _copyVelocity:&v37];
    -[_UIHyperInteractor _copyUnconstrainedPoint:](self->_rotationInteractor, "_copyUnconstrainedPoint:", [v11 _value]);
  }

  [(SBPIPInteractionController *)self _updateTargetWindowSceneIfNeededUpdatingInteractors:0];
  v12 = [(SBPIPInteractionController *)self canonicalPosition];
  positionInteractor = self->_positionInteractor;
  v14 = [(SBPIPInteractionController *)self positionHyperregion];
  [(_UIHyperInteractor *)positionInteractor _setRegion:v14];

  [(SBPIPInteractionController *)self _updateHyperregionVisualizationIfNecessary];
  if (v3)
  {
    v15 = [(_UIHyperInteractor *)self->_positionInteractor _region];
    [(_UIHyperInteractor *)self->_positionInteractor _commitTranslation];
    v34 = 0.0;
    v35 = 0.0;
    v16 = [(_UIHyperInteractor *)self->_positionInteractor sbpip_isInteractive];
    if (!self->_pendingTransition || (v17 = objc_loadWeakRetained(&self->_interactionTargetView), [v17 _sbWindowScene], v18 = objc_claimAutoreleasedReturnValue(), -[_SBPIPInteractionControllerTransitionInfo targetWindowScene](self->_pendingTransition, "targetWindowScene"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, v18 != v19))
    {
      if (BSSettingFlagIsExplicitNo())
      {
        [(SBPIPInteractionController *)self _closestToDefaultCornersPosition];
        v34 = v20;
        v35 = v21;
        self->_didLastSettleInStashedState = 0;
LABEL_28:
        self->_shouldStash = 0x7FFFFFFFFFFFFFFFLL;
        [(_UIHyperInteractor *)self->_positionInteractor _copyVelocity:&v36, *&v34, *&v35];
        [(_UIHyperInteractor *)self->_positionInteractor _copyUnconstrainedPoint:&v34];
        [(_UIHyperInteractor *)self->_positionInteractor sbpip_setInteractive:0];
        self->_threeTouchesPanDetected = 0;

        return;
      }

      if (v16)
      {
        v22 = [(_UIHyperInteractor *)self->_positionInteractor _projectedPoint];
LABEL_16:
        v23 = [v15 _regionIndexForClosestPoint:&v34 toPoint:v22];
        if (v23 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = SBLogPIP();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [SBPIPInteractionController _updateInteractorsAndCommit:];
          }
        }

        else
        {
          v27 = v23;
          v28 = [v15 _regions];
          v24 = [v28 objectAtIndex:v27];

          self->_didLastSettleInStashedState = [(SBPIPInteractionController *)self _regionIsStashedOne:v24];
        }

        pinchGestureRecognizer = self->_pinchGestureRecognizer;
        v30 = !self->_didLastSettleInStashedState && [(SBPIPInteractionSettings *)self->_interactionSettings pinchGestureEnabled];
        [(SBPIPPinchGestureRecognizer *)pinchGestureRecognizer setEnabled:v30];
        v31 = [(SBPIPInteractionController *)self _canonicalPositionForPoint:v34, v35];
        v32 = v31;
        if (self->_didLastSettleInStashedState && v12 != v31)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained interactionController:self wantsStashTabHidden:0 left:(v32 & 0xFFFFFFFFFFFFFFFELL) == 2];
        }

        [(SBPIPContentViewLayoutSettings *)self->_layoutSettings setContentViewPosition:v32];
        goto LABEL_28;
      }

      if (self->_didLastSettleInStashedState || (BSSettingFlagIsYes() & 1) != 0 || [(SBPIPInteractionSettings *)self->_interactionSettings freePositioning]== 2)
      {
        v22 = [(_UIHyperInteractor *)self->_positionInteractor _constrainedPoint];
        goto LABEL_16;
      }
    }

    [(SBPIPInteractionController *)self _closestToDefaultCornersPosition];
    v34 = v25;
    v35 = v26;
    goto LABEL_28;
  }
}

- (id)_scaleHyperregion
{
  [(SBPIPContentViewLayoutSettings *)self->_layoutSettings minimumPossibleContentViewSizeForAspectRatio:self->_preferredContentSize.width, self->_preferredContentSize.height];
  v4 = v3;
  [(SBPIPContentViewLayoutSettings *)self->_layoutSettings maximumPossibleContentViewSizeForAspectRatio:self->_preferredContentSize.width, self->_preferredContentSize.height];
  width = self->_preferredContentSize.width;
  v6 = v4 / width;
  v8 = v7 / width;
  v9 = [objc_alloc(MEMORY[0x277D76008]) initWithDimensions:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__SBPIPInteractionController__scaleHyperregion__block_invoke;
  v14[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v14[4] = v6;
  [v9 _mutateMinimumPoint:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__SBPIPInteractionController__scaleHyperregion__block_invoke_2;
  v13[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v13[4] = v8;
  [v9 _mutateMaximumPoint:v13];
  v10 = [(_UIHyperInteractor *)self->_scaleInteractor _extender];
  [(SBPIPInteractionSettings *)self->_interactionSettings scaleExtenderMaximumDistance];
  [v10 _setMaximumDistance:{fmax((v8 - v6) * v11, 0.0)}];

  return v9;
}

double __47__SBPIPInteractionController__scaleHyperregion__block_invoke(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double __47__SBPIPInteractionController__scaleHyperregion__block_invoke_2(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

- (id)_rotationHyperregion
{
  v2 = [objc_alloc(MEMORY[0x277D76000]) initWithDimensions:1];

  return v2;
}

- (id)positionHyperregion
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(SBPIPInteractionController *)self _hasValidInteractionTargetView])
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
    v4 = [WeakRetained _sbWindowScene];
    v5 = [v4 isMainDisplayWindowScene];

    if ((v5 & 1) == 0)
    {
      [(SBPIPInteractionController *)self _updateGeometryContextBoundsUsingMainDisplayWindowScene];
    }

    [(SBPIPInteractionController *)self _updatePIPSizeGeometryContext];
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    [(SBPIPInteractionController *)self _currentPositionInteractionStateContext];
    v6 = *&self->_geometryContext.minimumPadding.bottom;
    v7 = *&self->_geometryContext.stashedMinimumPadding.bottom;
    v8 = *&self->_geometryContext.offscreenCorners;
    v30[10] = *&self->_geometryContext.stashedMinimumPadding.top;
    v30[11] = v7;
    v30[12] = v8;
    size = self->_geometryContext.containerBounds.size;
    v10 = *&self->_geometryContext.edgeInsets.bottom;
    v11 = *&self->_geometryContext.minimumPadding.top;
    v30[6] = *&self->_geometryContext.edgeInsets.top;
    v30[7] = v10;
    v30[8] = v11;
    v30[9] = v6;
    pipAnchorPointOffset = self->_geometryContext.pipAnchorPointOffset;
    origin = self->_geometryContext.containerBounds.origin;
    v30[2] = self->_geometryContext.pipStashedSize;
    v30[3] = pipAnchorPointOffset;
    pipLastSteadySize = self->_geometryContext.pipLastSteadySize;
    v30[4] = origin;
    v30[5] = size;
    v30[0] = self->_geometryContext.pipCurrentSize;
    v30[1] = pipLastSteadySize;
    v28[2] = v33;
    v28[3] = v34;
    v29 = v35;
    v28[0] = v31;
    v28[1] = v32;
    [(SBPIPInteractionController *)self _updateResolvedPositionHyperRegionsMapWithGeometry:v30 interactionState:v28];
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    v16 = [objc_alloc(MEMORY[0x277D76010]) initWithDimensions:2];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [(NSDictionary *)self->_resolvedPositionRegionsMap allValues];
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v24 + 1) + 8 * i) _regions];
          [v15 addObjectsFromArray:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v19);
    }

    [v16 _setRegions:v15];
  }

  else
  {
    v16 = [(_UIHyperInteractor *)self->_positionInteractor _region];
  }

  return v16;
}

- (void)_updatePIPSizeGeometryContext
{
  [(SBPIPInteractionController *)self _lastSteadySize];
  self->_geometryContext.pipLastSteadySize.width = v3;
  self->_geometryContext.pipLastSteadySize.height = v4;
  [(SBPIPInteractionController *)self _currentSizeForLayoutReason:1024];
  v6 = v5;
  self->_geometryContext.pipCurrentSize.width = v5;
  self->_geometryContext.pipCurrentSize.height = v7;
  [(SBPIPContentViewLayoutSettings *)self->_layoutSettings minimumStashedTabSize];
  self->_geometryContext.pipStashedSize.width = v6;
  self->_geometryContext.pipStashedSize.height = v8;
}

- (void)_updateGeometryContextBoundsUsingMainDisplayWindowScene
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained interactionControllerConnectedWindowScenes:{self, 0}];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isMainDisplayWindowScene])
        {
          v10 = [v9 interfaceOrientation];
          [v9 _boundsForInterfaceOrientation:v10];
          [(SBPIPInteractionController *)self _updateGeometryContextUsingTargetViewBounds:v10 orientation:?];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)_updateGeometryContextUsingTargetViewBounds:(CGRect)a3 orientation:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30 = *MEMORY[0x277D85DE8];
  orientation = self->_geometryContext.orientation;
  v10 = orientation != a4;
  if (orientation != a4)
  {
    v12 = SBLogPIP();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = self->_shortDescription;
      v16 = self->_geometryContext.orientation;
      enabled = self->_enabled;
      v22 = 138544130;
      v23 = shortDescription;
      v24 = 2048;
      v25 = v16;
      v26 = 2048;
      v27 = a4;
      v28 = 1024;
      v29 = enabled;
      _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] Updating orientation: old{%ld} new{%ld} while enabled{%{BOOL}u}", &v22, 0x26u);
    }

    self->_geometryContext.orientation = a4;
  }

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (!CGRectEqualToRect(self->_geometryContext.containerBounds, v32))
  {
    v13 = SBLogPIP();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = self->_shortDescription;
      v19 = NSStringFromCGRect(self->_geometryContext.containerBounds);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v20 = NSStringFromCGRect(v31);
      v21 = self->_enabled;
      v22 = 138544130;
      v23 = v18;
      v24 = 2114;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      v28 = 1024;
      v29 = v21;
      _os_log_debug_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] Updating container bounds: old{%{public}@ new{%{public}@} while enabled{%{BOOL}u}", &v22, 0x26u);
    }

    self->_geometryContext.containerBounds.origin.x = x;
    self->_geometryContext.containerBounds.origin.y = y;
    v10 = 1;
    self->_geometryContext.containerBounds.size.width = width;
    self->_geometryContext.containerBounds.size.height = height;
  }

  return v10;
}

- (SBPIPPositionInteractionStateContext)_currentPositionInteractionStateContext
{
  *&retstr->isStashed = 0;
  retstr->isStashed = [(SBPIPInteractionController *)self isStashed];
  retstr->isInteractive = [(_UIHyperInteractor *)self->_positionInteractor sbpip_isInteractive];
  retstr->hasActiveGesture = [(SBPIPInteractionController *)self _isGesturing];
  retstr->isFreelyPositionable = [(SBPIPInteractionSettings *)self->_interactionSettings freePositioning]!= 0;
  v5 = *[(_UIHyperInteractor *)self->_positionInteractor _projectedPoint];
  v6 = *([(_UIHyperInteractor *)self->_positionInteractor _projectedPoint]+ 8);
  retstr->projectedPosition.x = v5;
  retstr->projectedPosition.y = v6;
  v7 = *[(_UIHyperInteractor *)self->_positionInteractor _unconstrainedPoint];
  v8 = *([(_UIHyperInteractor *)self->_positionInteractor _unconstrainedPoint]+ 8);
  retstr->initialPosition.x = v7;
  retstr->initialPosition.y = v8;
  [(SBPIPInteractionController *)self _currentPosition];
  retstr->currentPosition.x = v9;
  retstr->currentPosition.y = v10;
  [(SBPIPInteractionController *)self _stashProgressForPosition:?];
  retstr->currentPositionStashProgress = v11;
  result = [(SBPIPInteractionController *)self _stashProgressForPosition:v5, v6];
  retstr->projectedPositionStashProgress = v13;
  return result;
}

- (void)_updateResolvedPositionHyperRegionsMapWithGeometry:(SBPIPPositionGeometryContext *)a3 interactionState:(SBPIPPositionInteractionStateContext *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = self->_positionRegionComposers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v33;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v32 + 1) + 8 * v12);
        v15 = *&a3->stashedMinimumPadding.bottom;
        v31[10] = *&a3->stashedMinimumPadding.top;
        v31[11] = v15;
        v31[12] = *&a3->offscreenCorners;
        v16 = *&a3->edgeInsets.bottom;
        v31[6] = *&a3->edgeInsets.top;
        v31[7] = v16;
        v17 = *&a3->minimumPadding.bottom;
        v31[8] = *&a3->minimumPadding.top;
        v31[9] = v17;
        pipAnchorPointOffset = a3->pipAnchorPointOffset;
        v31[2] = a3->pipStashedSize;
        v31[3] = pipAnchorPointOffset;
        size = a3->containerBounds.size;
        v31[4] = a3->containerBounds.origin;
        v31[5] = size;
        pipLastSteadySize = a3->pipLastSteadySize;
        v31[0] = a3->pipCurrentSize;
        v31[1] = pipLastSteadySize;
        v21 = *&a4->currentPosition.y;
        v29[2] = *&a4->initialPosition.y;
        v29[3] = v21;
        projectedPositionStashProgress = a4->projectedPositionStashProgress;
        v22 = *&a4->projectedPosition.y;
        v29[0] = *&a4->isStashed;
        v29[1] = v22;
        v10 = [v14 positionRegionsForRegions:v13 geometry:v31 interaction:v29];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  resolvedPositionRegionsMap = self->_resolvedPositionRegionsMap;
  self->_resolvedPositionRegionsMap = v10;
  v24 = v10;

  v25 = [(NSDictionary *)v24 objectForKey:&unk_283370EF8];
  stashedLeftRegion = self->_stashedLeftRegion;
  self->_stashedLeftRegion = v25;

  v27 = [(NSDictionary *)v24 objectForKey:&unk_283370F10];
  stashedRightRegion = self->_stashedRightRegion;
  self->_stashedRightRegion = v27;
}

- (void)_updateHyperregionVisualizationIfNecessary
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 pipDefaults];
  v5 = [v4 visualizePositionRegions];

  positionRegionVisualizationView = self->_positionRegionVisualizationView;
  if (v5)
  {
    if (!positionRegionVisualizationView)
    {
      v7 = objc_alloc_init(SBPIPInteractionControllerVisualizationView);
      v8 = self->_positionRegionVisualizationView;
      self->_positionRegionVisualizationView = v7;
    }

    WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
    v10 = [WeakRetained superview];

    [v10 addSubview:self->_positionRegionVisualizationView];
    v11 = self->_positionRegionVisualizationView;
    v12 = [(_UIHyperInteractor *)self->_positionInteractor _region];
    [(SBPIPInteractionControllerVisualizationView *)v11 setRegionUnion:v12];

    v13 = self->_positionRegionVisualizationView;
    p_geometryContext = &self->_geometryContext;
    v15 = *&self->_geometryContext.minimumPadding.bottom;
    v16 = *&self->_geometryContext.stashedMinimumPadding.bottom;
    v17 = *&self->_geometryContext.offscreenCorners;
    v64 = *&self->_geometryContext.stashedMinimumPadding.top;
    v65 = v16;
    v66 = v17;
    size = self->_geometryContext.containerBounds.size;
    v19 = *&self->_geometryContext.edgeInsets.bottom;
    v20 = *&self->_geometryContext.minimumPadding.top;
    v60 = *&self->_geometryContext.edgeInsets.top;
    v61 = v19;
    v62 = v20;
    v63 = v15;
    pipAnchorPointOffset = self->_geometryContext.pipAnchorPointOffset;
    origin = self->_geometryContext.containerBounds.origin;
    pipStashedSize = self->_geometryContext.pipStashedSize;
    v57 = pipAnchorPointOffset;
    pipLastSteadySize = self->_geometryContext.pipLastSteadySize;
    v58 = origin;
    v59 = size;
    pipCurrentSize = self->_geometryContext.pipCurrentSize;
    v55 = pipLastSteadySize;
    [(SBPIPInteractionControllerVisualizationView *)v13 setMainGeometryContext:&pipCurrentSize];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v24 = objc_loadWeakRetained(&self->_dataSource);
    v25 = [v24 interactionControllerConnectedWindowScenes:self];

    v26 = [v25 countByEnumeratingWithState:&v50 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v51;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v50 + 1) + 8 * i);
          if (([v30 isMainDisplayWindowScene] & 1) == 0)
          {
            v39 = self->_positionRegionVisualizationView;
            v40 = [(NSMutableArray *)self->_positionRegionComposers firstObject];
            v41 = *&self->_geometryContext.stashedMinimumPadding.bottom;
            v49[10] = *&self->_geometryContext.stashedMinimumPadding.top;
            v49[11] = v41;
            v49[12] = *&self->_geometryContext.offscreenCorners;
            v42 = *&self->_geometryContext.edgeInsets.bottom;
            v49[6] = *&self->_geometryContext.edgeInsets.top;
            v49[7] = v42;
            v43 = *&self->_geometryContext.minimumPadding.bottom;
            v49[8] = *&self->_geometryContext.minimumPadding.top;
            v49[9] = v43;
            v44 = self->_geometryContext.pipAnchorPointOffset;
            v49[2] = self->_geometryContext.pipStashedSize;
            v49[3] = v44;
            v45 = self->_geometryContext.containerBounds.size;
            v49[4] = self->_geometryContext.containerBounds.origin;
            v49[5] = v45;
            v46 = self->_geometryContext.pipLastSteadySize;
            v49[0] = p_geometryContext->pipCurrentSize;
            v49[1] = v46;
            [(SBPIPInteractionController *)self regionComposer:v40 transformGeometryContext:v49 toWindowScene:v30];
            [(SBPIPInteractionControllerVisualizationView *)v39 setExtendedGeometryContext:&pipCurrentSize];

            goto LABEL_18;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v50 objects:v67 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v31 = self->_positionRegionVisualizationView;
    v32 = *&self->_geometryContext.stashedMinimumPadding.bottom;
    v64 = *&self->_geometryContext.stashedMinimumPadding.top;
    v65 = v32;
    v66 = *&self->_geometryContext.offscreenCorners;
    v33 = *&self->_geometryContext.edgeInsets.bottom;
    v60 = *&self->_geometryContext.edgeInsets.top;
    v61 = v33;
    v34 = *&self->_geometryContext.minimumPadding.bottom;
    v62 = *&self->_geometryContext.minimumPadding.top;
    v63 = v34;
    v35 = self->_geometryContext.pipAnchorPointOffset;
    pipStashedSize = self->_geometryContext.pipStashedSize;
    v57 = v35;
    v36 = self->_geometryContext.containerBounds.size;
    v58 = self->_geometryContext.containerBounds.origin;
    v59 = v36;
    v37 = self->_geometryContext.pipLastSteadySize;
    pipCurrentSize = p_geometryContext->pipCurrentSize;
    v55 = v37;
    [(SBPIPInteractionControllerVisualizationView *)v31 setExtendedGeometryContext:&pipCurrentSize];
LABEL_18:
    v47 = self->_positionRegionVisualizationView;
    [(SBPIPInteractionController *)self _currentPositionInteractionStateContext];
    [(SBPIPInteractionControllerVisualizationView *)v47 setInteractionContext:&pipCurrentSize];
    v48 = self->_positionRegionVisualizationView;
    [v10 bounds];
    [(SBPIPInteractionControllerVisualizationView *)v48 setFrame:?];
    [(SBPIPInteractionControllerVisualizationView *)self->_positionRegionVisualizationView setNeedsLayout];
    [(SBPIPInteractionControllerVisualizationView *)self->_positionRegionVisualizationView layoutIfNeeded];
  }

  else if (positionRegionVisualizationView)
  {
    [(SBPIPInteractionControllerVisualizationView *)positionRegionVisualizationView removeFromSuperview];
    v38 = self->_positionRegionVisualizationView;
    self->_positionRegionVisualizationView = 0;
  }
}

- (BOOL)_regionIsStashedOne:(id)a3
{
  v4 = a3;
  v5 = [(_UIHyperregionUnion *)self->_stashedLeftRegion _regions];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(_UIHyperregionUnion *)self->_stashedRightRegion _regions];
    v7 = [v8 containsObject:v4];
  }

  return v7;
}

- (void)addPositionRegionComposer:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    [SBPIPInteractionController addPositionRegionComposer:];
    v5 = 0;
  }

  if (([(NSMutableArray *)self->_positionRegionComposers containsObject:v5]& 1) != 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SBPIPInteractionController.m" lineNumber:2289 description:{@"[%@] already added to this interaction controller [%@]", v7, self->_shortDescription}];
  }

  else
  {
    [(NSMutableArray *)self->_positionRegionComposers addObject:v7];
    [v7 setDelegate:self];
  }
}

- (void)positionRegionComposerDidInvalidate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [SBPIPInteractionController positionRegionComposerDidInvalidate:];
  }

  if ([(NSMutableArray *)self->_positionRegionComposers containsObject:v5])
  {
    [(NSMutableArray *)self->_positionRegionComposers removeObject:v5];
    [v5 setDelegate:0];
    v6 = SBLogPIP();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = _SBFLoggingMethodProem();
      *buf = 138543874;
      v10 = v7;
      v11 = 2114;
      v12 = objc_opt_class();
      v13 = 2048;
      v14 = v5;
      v8 = v12;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@][Hyper] invalidated: %{public}@(%p)", buf, 0x20u);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SBPIPInteractionController.m" lineNumber:2300 description:@"[%@] already removed from this interaction controller [%@]", v5, self->_shortDescription];
  }
}

- (void)positionRegionComposerNeedsUpdate:(id)a3 behavior:(int)a4
{
  v4 = *&a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    [SBPIPInteractionController positionRegionComposerNeedsUpdate:behavior:];
  }

  if (([(NSMutableArray *)self->_positionRegionComposers containsObject:v6]& 1) == 0)
  {
    [SBPIPInteractionController positionRegionComposerNeedsUpdate:behavior:];
  }

  [(SBPIPInteractionController *)self _updateInteractorsAndCommit:0];
  if ([(SBPIPInteractionController *)self isEnabled])
  {
    [(SBPIPInteractionController *)self _setNeedsLayoutForTraits:1 withReason:0x4000 behavior:v4];
    v7 = SBLogPIP();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _SBFLoggingMethodProem();
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = v6;
      v9 = v14;
      v10 = "[%{public}@][Hyper] enabled; needsUpdate: %{public}@(%p)";
LABEL_10:
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v10, &v11, 0x20u);
    }
  }

  else
  {
    [(SBPIPInteractionController *)self _setupForInitialFrame];
    v7 = SBLogPIP();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _SBFLoggingMethodProem();
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = v6;
      v9 = v14;
      v10 = "[%{public}@][Hyper] disabled; needsUpdate: %{public}@(%p)";
      goto LABEL_10;
    }
  }
}

- (SBPIPPositionGeometryContext)regionComposer:(SEL)a3 transformGeometryContext:(id)a4 toWindowScene:(SBPIPPositionGeometryContext *)a5
{
  v10 = a4;
  v11 = a6;
  v12 = v11;
  v13 = *&a5->stashedMinimumPadding.bottom;
  *&retstr->stashedMinimumPadding.top = *&a5->stashedMinimumPadding.top;
  *&retstr->stashedMinimumPadding.bottom = v13;
  *&retstr->offscreenCorners = *&a5->offscreenCorners;
  v14 = *&a5->edgeInsets.bottom;
  *&retstr->edgeInsets.top = *&a5->edgeInsets.top;
  *&retstr->edgeInsets.bottom = v14;
  v15 = *&a5->minimumPadding.bottom;
  *&retstr->minimumPadding.top = *&a5->minimumPadding.top;
  *&retstr->minimumPadding.bottom = v15;
  pipAnchorPointOffset = a5->pipAnchorPointOffset;
  retstr->pipStashedSize = a5->pipStashedSize;
  retstr->pipAnchorPointOffset = pipAnchorPointOffset;
  size = a5->containerBounds.size;
  retstr->containerBounds.origin = a5->containerBounds.origin;
  retstr->containerBounds.size = size;
  pipLastSteadySize = a5->pipLastSteadySize;
  retstr->pipCurrentSize = a5->pipCurrentSize;
  retstr->pipLastSteadySize = pipLastSteadySize;
  if (v11 && ([v11 isMainDisplayWindowScene] & 1) == 0)
  {
    [v12 _boundsForInterfaceOrientation:{objc_msgSend(v12, "interfaceOrientation")}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [(SBPIPInteractionController *)self _transformToDisplayArrangementSpaceFromWindowScene:v12];
    v37.origin.x = v20;
    v37.origin.y = v22;
    v37.size.width = v24;
    v37.size.height = v26;
    retstr->containerBounds = CGRectApplyAffineTransform(v37, &v36);
    retstr->orientation = [v12 interfaceOrientation];
  }

  [(SBPIPInteractionController *)self _cachedEdgeInsetsForScene:v12];
  retstr->edgeInsets.top = v27;
  retstr->edgeInsets.left = v28;
  retstr->edgeInsets.bottom = v29;
  retstr->edgeInsets.right = v30;
  [(SBPIPInteractionController *)self _cachedStashedPaddingForScene:v12];
  retstr->stashedMinimumPadding.top = v31;
  retstr->stashedMinimumPadding.left = v32;
  retstr->stashedMinimumPadding.bottom = v33;
  retstr->stashedMinimumPadding.right = v34;

  return result;
}

- (id)targetWindowSceneForRegionComposer:(id)a3
{
  [(SBPIPInteractionController *)self _updateTargetWindowSceneIfNeededUpdatingInteractors:0];
  targetWindowScene = self->_targetWindowScene;

  return targetWindowScene;
}

- (BOOL)shouldBeginPointerInteractionRequest:(id)a3 atLocation:(CGPoint)a4 forView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [v8 window];
  v10 = [v9 screen];
  v11 = [v10 fixedCoordinateSpace];

  v12 = [v8 window];
  [v12 convertPoint:v8 fromView:{x, y}];
  [v9 convertPoint:v11 toCoordinateSpace:?];
  v14 = v13;
  v16 = v15;

  if ([(SBPIPInteractionController *)self isStashed]|| self->_pendingTransition)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (![WeakRetained shouldPointerInteractionBeginForInteractionController:self atLocation:v8 inView:{x, y}])
  {
    v17 = 0;
    goto LABEL_9;
  }

  v20 = [SBApp bannerManager];
  v21 = [v9 _sbWindowScene];
  v22 = [v20 pointInsideBanner:v21 inWindowScene:{v14, v16}];

  if ((v22 & 1) == 0)
  {
    v23 = objc_loadWeakRetained(&self->_interactionTargetView);
    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    WeakRetained = [(SBPIPInteractionSettings *)self->_interactionSettings edgeResizeSettings];
    [WeakRetained liveResizePointerInteractionRegionInnerLength];
    v33 = v32;
    [WeakRetained liveResizePointerInteractionRegionOuterLength];
    v35 = v34;
    [WeakRetained liveResizePointerInteractionRegionCornerLength];
    v17 = [SBEdgeResizeSystemPointerInteractionHelper shouldBeginPointerInteractionAtLocation:0 frame:&self->_hoveringOverEdge innerLengthOfInteractionRegion:&self->_pointerRegion outerLengthOfInteractionRegion:x cornerLengthOfInteractionRegion:y occupiedCorners:v25 hoveringOverEdge:v27 pointerRegion:v29, v31, v33, v35, v36];
LABEL_9:

    goto LABEL_4;
  }

LABEL_3:
  v17 = 0;
LABEL_4:

  return v17;
}

- (void)pointerWillExitRegion
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionTargetView);
  [WeakRetained _setTouchInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  v4 = MEMORY[0x277CBF3A0];
  [(UIView *)self->_pointerHitTestBlocker setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = *(v4 + 16);
  self->_pointerRegion.origin = *v4;
  self->_pointerRegion.size = v5;
  self->_pointerIsHoveringOverEdge = 0;
  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 interactionControllerDidEndEdgeResizing:self];
}

- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)a3
{
  v3 = [(SBPIPInteractionSettings *)self->_interactionSettings edgeResizeSettings];
  [v3 liveResizePointerInteractionRegionOuterLength];
  UIEdgeInsetsMakeWithEdges();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (id)regionAtLocation:(CGPoint)a3 forView:(id)a4
{
  v5 = MEMORY[0x277D75880];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 regionWithRect:v7 identifier:{self->_pointerRegion.origin.x, self->_pointerRegion.origin.y, self->_pointerRegion.size.width, self->_pointerRegion.size.height}];

  [v8 setLatchingAxes:{+[SBEdgeResizeSystemPointerInteractionHelper latchingAxesForHoveredEdge:](SBEdgeResizeSystemPointerInteractionHelper, "latchingAxesForHoveredEdge:", self->_hoveringOverEdge)}];

  return v8;
}

- (id)styleForRegion:(id)a3 forView:(id)a4
{
  interactionSettings = self->_interactionSettings;
  v6 = a3;
  v7 = [(SBPIPInteractionSettings *)interactionSettings edgeResizeSettings];
  if (!self->_pointerIsHoveringOverEdge && self->_hoveringOverEdge)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained interactionControllerDidBeginEdgeResizing:self];
  }

  self->_pointerIsHoveringOverEdge = self->_hoveringOverEdge;
  v9 = objc_loadWeakRetained(&self->_interactionTargetView);
  [v7 liveResizePointerInteractionRegionOuterLength];
  UIEdgeInsetsMakeWithEdges();
  [v9 _setTouchInsets:?];

  pointerHitTestBlocker = self->_pointerHitTestBlocker;
  [v6 rect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(UIView *)pointerHitTestBlocker setFrame:v12, v14, v16, v18];
  v19 = objc_loadWeakRetained(&self->_dataSource);
  [v19 currentCornerRadiusForInteractionController:self];
  v21 = v20;

  hoveringOverEdge = self->_hoveringOverEdge;
  [v7 liveResizePointerInteractionRegionInnerLength];
  v24 = v23;
  [v7 liveResizePointerInteractionRegionOuterLength];
  v26 = [SBEdgeResizeSystemPointerInteractionHelper fancyResizePointerShapeHoveringOverEdge:hoveringOverEdge innerLengthOfInteractionRegion:v24 outerLengthOfInteractionRegion:v25 cornerRadii:v21, v21, v21, v21];
  v27 = [MEMORY[0x277D75890] styleWithShape:v26 constrainedAxes:0];

  return v27;
}

- (SBPIPInteractionControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGRect)nonoperationalFrame
{
  x = self->_nonoperationalFrame.origin.x;
  y = self->_nonoperationalFrame.origin.y;
  width = self->_nonoperationalFrame.size.width;
  height = self->_nonoperationalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)targetOverlayView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetOverlayView);

  return WeakRetained;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"preferredContentSize.width > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"preferredContentSize.height > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"interactionTargetView" object:? file:? lineNumber:? description:?];
}

- (void)initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"interactionSettings" object:? file:? lineNumber:? description:?];
}

- (void)initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"dataSource" object:? file:? lineNumber:? description:?];
}

- (void)initWithInteractionTargetView:preferredContentSize:interactionSettings:dataSource:delegate:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)_setPreferredScale:additionalReasons:animationBehavior:.cold.1()
{
  OUTLINED_FUNCTION_6_3(*MEMORY[0x277D85DE8]);
  v1 = *(v0 + 41);
  v5 = 138543874;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  v9 = 1024;
  v10 = v1;
  _os_log_debug_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] Updating public layout trait preferred scale: %f while enabled{%{BOOL}u}", &v5, 0x1Cu);
}

- (void)layoutInteractedTraits:withReason:source:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)layoutInteractedTraits:withReason:source:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)layoutInteractedTraits:withReason:source:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_adjustContentViewAnchorPointForGestureRecognizer:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBPIPInteractionController.m" lineNumber:1103 description:a3];
}

- (void)handleEdgeResizeGesture:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_20(a1 a2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handleEdgeResizeGesture:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handlePanGesture:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_20(a1 a2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handlePanGesture:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_20(a1 a2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handlePinchGesture:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_20(a1 a2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handlePinchGesture:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handleRotationGesture:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_20(a1 a2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handleRotationGesture:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_20(a1 a2)];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)__handleGesturesEndedState:.cold.1()
{
  OUTLINED_FUNCTION_6_3(*MEMORY[0x277D85DE8]);
  v2 = @"recognized";
  if (*(v3 + 43))
  {
    v2 = @"cancelled";
  }

  v4 = 138543618;
  v5 = v1;
  v6 = 2114;
  v7 = v2;
  _os_log_debug_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture] Did Handle Ended State: %{public}@", &v4, 0x16u);
}

- (void)_setNeedsLayoutForTraits:(uint8_t *)buf withReason:(os_log_t)log behavior:layoutCompletion:interactionCompletion:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] Will begin animation for: %{public}@", buf, 0x16u);
}

void __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke_cold_1(uint64_t a1)
{
  v6 = SBStringFromPIPLayoutReason(*(a1 + 64));
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v2 = SBStringFromPIPLayoutReason(*a2);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __114__SBPIPInteractionController__setNeedsLayoutForTraits_withReason_behavior_layoutCompletion_interactionCompletion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_6_3(*MEMORY[0x277D85DE8]);
  v2 = 138543362;
  v3 = v0;
  _os_log_debug_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_DEBUG, "[%{public}@][Layout] Preferred content size is dirty, attempt updating it now.", &v2, 0xCu);
}

- (void)_updateInteractorsAndCommit:.cold.1()
{
  OUTLINED_FUNCTION_6_3(*MEMORY[0x277D85DE8]);
  v2 = 138543362;
  v3 = v0;
  _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "Unexpectedly had no subregions for interaction controller %{public}@", &v2, 0xCu);
}

- (void)addPositionRegionComposer:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"positionRegionComposer" object:? file:? lineNumber:? description:?];
}

- (void)positionRegionComposerDidInvalidate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"positionRegionComposer" object:? file:? lineNumber:? description:?];
}

- (void)positionRegionComposerNeedsUpdate:behavior:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"regionComposer" object:? file:? lineNumber:? description:?];
}

- (void)positionRegionComposerNeedsUpdate:behavior:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[_positionRegionComposers containsObject:regionComposer]" object:? file:? lineNumber:? description:?];
}

@end