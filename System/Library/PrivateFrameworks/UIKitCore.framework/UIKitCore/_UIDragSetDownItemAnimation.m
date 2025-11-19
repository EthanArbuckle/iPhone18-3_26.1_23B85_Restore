@interface _UIDragSetDownItemAnimation
- ($821BAD5B88DA18872EDDEA81553BCF52)initialTargetVelocity;
- ($821BAD5B88DA18872EDDEA81553BCF52)initialVelocity;
- (BOOL)needsReparenting;
- (BOOL)shouldTerminateEarly;
- (CAPoint3D)center;
- (CGRect)targetFrame;
- (UIWindow)targetContainerWindow;
- (_UIDragSetDownItemAnimation)initWithDragItem:(id)a3 droppedItem:(id)a4 dropContainerView:(id)a5 defaultAnimation:(BOOL)a6 sourceAnimation:(BOOL)a7 delegate:(id)a8;
- (_UIDragSetDownItemAnimationDelegate)delegate;
- (double)estimatedFractionCompleteOfAnimation;
- (id)animationCompletionHandler;
- (id)effectiveDropPreview;
- (int64_t)previewMode;
- (void)_setCenterAndVelocityFromDroppedItem:(id)a3;
- (void)animationCompleted;
- (void)animationReachedTarget;
- (void)beginAnimation;
- (void)configureAnimation;
- (void)configureCrossfadingAnimationToTargetedPreview;
- (void)configureSystemDefaultAnimation;
- (void)dirtyTargetedDropPreview;
- (void)executeCompletionHandler;
- (void)performSpringAnimations:(id)a3;
- (void)performTrackingAnimations:(id)a3;
- (void)prepareAnimationInWindow;
- (void)prepareToBeginAnimation;
- (void)previewContainerAnimationDidComplete;
- (void)reparentRetargetingContainerViewInTargetContainer;
- (void)setInitialTargetVelocity:(id)a3;
- (void)setInitialVelocity:(id)a3;
- (void)updateAnimationTargeting;
- (void)updateCurrentTargetFrame;
- (void)updateDroppedItem:(id)a3;
- (void)updateTargetedDropPreview:(id)a3;
@end

@implementation _UIDragSetDownItemAnimation

- (_UIDragSetDownItemAnimation)initWithDragItem:(id)a3 droppedItem:(id)a4 dropContainerView:(id)a5 defaultAnimation:(BOOL)a6 sourceAnimation:(BOOL)a7 delegate:(id)a8
{
  v15 = a3;
  v23 = a4;
  v16 = a5;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = _UIDragSetDownItemAnimation;
  v24.receiver = [(_UIDragSetDownItemAnimation *)&v25 init];
  v24.super_class = _UIDragSetDownItemAnimation;
  v18 = [(_UIDragSetDownItemAnimation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_item, a3);
    objc_storeStrong(&v19->_droppedItem, a4);
    objc_storeStrong(&v19->_dropContainerView, a5);
    v19->_sourceAnimation = a7;
    v19->_defaultAnimation = a6;
    if (a7)
    {
      [v15 _sourceVisualTarget];
    }

    else
    {
      [v15 _destinationVisualTarget];
    }
    v20 = ;
    visualTarget = v19->_visualTarget;
    v19->_visualTarget = v20;

    objc_storeWeak(&v19->_delegate, v17);
    [(_UIDragSetDownItemAnimation *)v19 prepareAnimationInWindow];
    [(_UIDragSetDownItemAnimation *)v19 configureAnimation];
  }

  return v19;
}

- (void)prepareAnimationInWindow
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  v7 = self->_visualTarget;
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(_UIDragSetDownAnimationTarget *)v7 _window];
    v9 = v8;
    if (!v8 || ([v8 isHidden] & 1) != 0)
    {

LABEL_6:
LABEL_9:
      v10 = 0;
      goto LABEL_11;
    }
  }

  if (self->_defaultAnimation)
  {
    goto LABEL_9;
  }

  visualTarget = self->_visualTarget;
  v12 = [(_UIDragSetDownItemAnimation *)self delegate];
  v10 = [(_UIDragSetDownAnimationTarget *)visualTarget _setDownAnimation:v12 prepareForSetDownOfDragItem:self->_item visibleDroppedItem:self->_droppedItem];

  v3 = _targetFrameForTargetedPreviewInContainerView(v10, self->_dropContainerView);
  v4 = v13;
  v5 = v14;
  v6 = v15;
LABEL_11:
  self->_targetFrame.origin.x = v3;
  self->_targetFrame.origin.y = v4;
  self->_targetFrame.size.width = v5;
  self->_targetFrame.size.height = v6;
  targetedDropPreview = self->_targetedDropPreview;
  self->_targetedDropPreview = v10;
  v17 = v10;

  [(_UIDragSetDownItemAnimation *)self _setCenterAndVelocityFromDroppedItem:self->_droppedItem];
}

- (void)prepareToBeginAnimation
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  propertyAnimator = self->_propertyAnimator;
  if (has_internal_diagnostics)
  {
    if (!propertyAnimator)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "property animator passed to delegate API must be non-nil", buf, 2u);
      }
    }
  }

  else if (!propertyAnimator)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &prepareToBeginAnimation___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "property animator passed to delegate API must be non-nil", v9, 2u);
    }
  }

  v5 = [(_UIDragSetDownItemAnimation *)self delegate];
  [(_UIDragSetDownAnimationTarget *)self->_visualTarget _setDownAnimation:v5 willAnimateSetDownOfDragItem:self->_item withAnimator:self->_propertyAnimator preview:self->_targetedDropPreview];
  item = self->_item;
  if (item)
  {
    objc_storeWeak(&item->__currentSetDownAnimation, v5);
  }
}

- (void)beginAnimation
{
  [(UIView *)self->_retargetingContainerView setHidden:0];
  if (self->_defaultAnimation)
  {
    propertyAnimator = self->_propertyAnimator;

    [(UIViewPropertyAnimator *)propertyAnimator startAnimation];
  }
}

- (void)animationReachedTarget
{
  self->_reachedTarget = 1;
  v3 = [(_UIDragSetDownItemAnimation *)self delegate];
  [v3 itemAnimationReachedTarget:self];
}

- (void)animationCompleted
{
  self->_done = 1;
  [(UIView *)self->_appPlatterView removeFromSuperview];
  [(UIView *)self->_updatedAppPlatterView removeFromSuperview];
  [(UIView *)self->_druidPlatterView removeFromSuperview];
  [(UIView *)self->_retargetingContainerPortalView removeFromSuperview];
  [(UIView *)self->_retargetingContainerView removeFromSuperview];
  [(UIView *)self->_defaultPlatterView removeFromSuperview];
  v3 = [(_UIDragSetDownItemAnimation *)self delegate];
  [v3 itemAnimationCompleted:self];
}

- (UIWindow)targetContainerWindow
{
  v2 = [(UITargetedPreview *)self->_targetedDropPreview target];
  v3 = [v2 container];
  v4 = [v3 _window];

  return v4;
}

- (void)configureAnimation
{
  if (self->_defaultAnimation || CGRectIsNull(self->_targetFrame))
  {
    self->_defaultAnimation = 1;

    [(_UIDragSetDownItemAnimation *)self configureSystemDefaultAnimation];
  }

  else
  {

    [(_UIDragSetDownItemAnimation *)self configureCrossfadingAnimationToTargetedPreview];
  }
}

- (void)configureSystemDefaultAnimation
{
  v3 = [[_UIPlatterView alloc] initWithDroppedItem:self->_droppedItem];
  [(UIView *)v3 setCenter:self->_center.x, self->_center.y];
  objc_storeStrong(&self->_defaultPlatterView, v3);
  [(UIView *)self->_dropContainerView insertSubview:v3 atIndex:0];
  v4 = [objc_opt_class() defaultSetDownPropertyAnimator];
  propertyAnimator = self->_propertyAnimator;
  self->_propertyAnimator = v4;

  if (self->_sourceAnimation)
  {
    v6 = [(_UIDragSetDownItemAnimation *)self droppedItem];
    v7 = [v6 itemIndex];

    v8 = self->_propertyAnimator;
    if (v7)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __62___UIDragSetDownItemAnimation_configureSystemDefaultAnimation__block_invoke_2;
      v19[3] = &unk_1E70F3590;
      v9 = &v20;
      v20 = v3;
      v10 = v19;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __62___UIDragSetDownItemAnimation_configureSystemDefaultAnimation__block_invoke;
      v21[3] = &unk_1E70F3590;
      v9 = &v22;
      v22 = v3;
      v10 = v21;
    }
  }

  else
  {
    v8 = self->_propertyAnimator;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62___UIDragSetDownItemAnimation_configureSystemDefaultAnimation__block_invoke_3;
    v17[3] = &unk_1E70F3590;
    v9 = &v18;
    v18 = v3;
    v10 = v17;
  }

  [(UIViewPropertyAnimator *)v8 addAnimations:v10];

  objc_initWeak(&location, self);
  v11 = self->_propertyAnimator;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62___UIDragSetDownItemAnimation_configureSystemDefaultAnimation__block_invoke_4;
  v13[3] = &unk_1E71004B8;
  objc_copyWeak(&v15, &location);
  v12 = v3;
  v14 = v12;
  [(UIViewPropertyAnimator *)v11 addCompletion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)configureCrossfadingAnimationToTargetedPreview
{
  v3 = objc_opt_new();
  propertyAnimator = self->_propertyAnimator;
  self->_propertyAnimator = v3;

  v5 = [(_DUIVisibleDroppedItem *)self->_droppedItem preview];
  v6 = [UIView alloc];
  [(UIView *)self->_dropContainerView bounds];
  v7 = [(UIView *)v6 initWithFrame:?];
  [(UIView *)v7 setHidden:1];
  [(UIView *)v7 setUserInteractionEnabled:0];
  [(UIView *)self->_dropContainerView insertSubview:v7 atIndex:0];
  v69 = v7;
  objc_storeStrong(&self->_retargetingContainerView, v7);
  v70 = v5;
  [v5 unscaledSize];
  v9 = v8;
  v11 = v10;
  v12 = [[_UIPlatterContainerView alloc] initWithFrame:0.0, 0.0, v8, v10];
  platterContainerView = self->_platterContainerView;
  self->_platterContainerView = v12;

  [(UIView *)self->_platterContainerView setCenter:self->_center.x, self->_center.y];
  [(UIView *)self->_retargetingContainerView addSubview:self->_platterContainerView];
  v14 = self->_platterContainerView;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  v15 = [(UITargetedPreview *)self->_targetedDropPreview target];
  v16 = v15;
  if (v15)
  {
    [v15 transform];
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
  }

  v17 = [(UITargetedPreview *)self->_targetedDropPreview view];
  v18 = [(UITargetedDragPreview *)self->_targetedDropPreview _duiPreview];
  v19 = [v17 window];
  if (v19)
  {
    v20 = [(UITargetedPreview *)self->_targetedDropPreview parameters];
    [v18 setHidesSourceView:{objc_msgSend(v20, "hidesSourceViewDuringDropAnimation")}];
  }

  else
  {
    [v18 setHidesSourceView:1];
  }

  v21 = [v17 window];

  if (!v21)
  {
    v22 = [(UITargetedPreview *)self->_targetedDropPreview target];
    v23 = [v22 container];
    [v23 addSubview:v17];

    [v17 setAlpha:0.0];
  }

  v24 = [[_UIPlatterView alloc] initWithDUIPreview:v18];
  appPlatterView = self->_appPlatterView;
  self->_appPlatterView = v24;

  [(_UIPlatterView *)self->_appPlatterView setTransformAppliedExternally:1];
  [(_UIPlatterView *)self->_appPlatterView setSourceView:v17];
  [(_DUIVisibleDroppedItem *)self->_droppedItem rotation];
  [(_UIPlatterView *)self->_appPlatterView setStackRotation:?];
  droppedItem = self->_droppedItem;
  if (droppedItem)
  {
    [(_DUIVisibleDroppedItem *)droppedItem appliedTransform];
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
  }

  v27 = self->_appPlatterView;
  *&v89.m11 = v91;
  *&v89.m13 = v92;
  *&v89.m21 = v93;
  [(_UIPlatterView *)v27 setAppliedTransform:&v89];
  if ([v18 previewMode] != 2)
  {
    [(UIView *)self->_appPlatterView setAlpha:0.0];
    [(_UIPlatterView *)self->_appPlatterView setLifted:1];
  }

  v28 = self->_appPlatterView;

  if (([(_UIDragSetDownItemAnimation *)self previewMode]- 3) < 2 || [(UITargetedPreview *)self->_targetedDropPreview _isDefaultPreview])
  {
    v29 = [(UITargetedDragPreview *)self->_targetedDropPreview _duiPreview];
    [v29 stackAlpha];
    [(UIView *)v28 setAlpha:?];

    [(_UIPlatterView *)v28 setLifted:1];
    [(_UIPlatterView *)v28 setConstrainSize:[(_DUIVisibleDroppedItem *)self->_droppedItem constrainSize]];
    if ([(UITargetedPreview *)self->_targetedDropPreview _isDefaultPreview])
    {
      v30 = [(_DUIVisibleDroppedItem *)self->_droppedItem preview];
      v31 = [v30 shadowProperties];
      [(_UIPlatterView *)v28 setShadowProperties:v31];
    }

    v32 = 0;
  }

  else
  {
    v33 = [[_UIPlatterView alloc] initWithDroppedItem:self->_droppedItem];
    druidPlatterView = self->_druidPlatterView;
    self->_druidPlatterView = v33;

    [(_UIPlatterView *)self->_druidPlatterView setTransformAppliedExternally:1];
    v32 = self->_druidPlatterView;
  }

  [(_UIPlatterContainerView *)self->_platterContainerView setSource:v32];
  [(_UIPlatterContainerView *)self->_platterContainerView setTarget:v28];
  memset(&v90, 0, sizeof(v90));
  if (v32)
  {
    v35 = v32;
LABEL_24:
    [(_UIPlatterView *)v35 targetTransform];
    goto LABEL_25;
  }

  if (v28)
  {
    v35 = v28;
    goto LABEL_24;
  }

  memset(&v89, 0, sizeof(v89));
LABEL_25:
  CATransform3DGetAffineTransform(&v90, &v89);
  *&v89.m11 = *&v90.a;
  *&v89.m13 = *&v90.c;
  *&v89.m21 = *&v90.tx;
  [(_UIPlatterContainerView *)v14 applyTransform:&v89 withSize:v9, v11];
  v36 = [(UITargetedDragPreview *)self->_targetedDropPreview _previewContainer];
  if (v36)
  {
    v37 = [(_DUIVisibleDroppedItem *)self->_droppedItem imageComponent];
    if (-[UITargetedPreview _isDefaultPreview](self->_targetedDropPreview, "_isDefaultPreview") && ([v37 representsPortal] & 1) == 0)
    {
      v39 = [_UIDragSlotHostingView alloc];
      [v37 frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      [v37 size3D];
      v38 = -[_UIDragSlotHostingView initWithFrame:contentSize:slotID:](v39, "initWithFrame:contentSize:slotID:", [v37 slotID], v41, v43, v45, v47, v48, v49, v50);
    }

    else
    {
      v38 = 0;
    }

    [(_UIPlatterContainerView *)v14 installPreviewContainer:v36 overrideSourceView:v38];
    ++self->_animationCount;
  }

  v68 = v36;
  if ([(_UIDragSetDownItemAnimation *)self needsReparenting])
  {
    [(_UIDragSetDownItemAnimation *)self reparentRetargetingContainerViewInTargetContainer];
  }

  v51 = v21 == 0;
  objc_initWeak(&v89, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke;
  aBlock[3] = &unk_1E70F5A28;
  objc_copyWeak(&v88, &v89);
  v52 = _Block_copy(aBlock);
  positionHandler = self->_positionHandler;
  self->_positionHandler = v52;

  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke_2;
  v82[3] = &unk_1E7116670;
  objc_copyWeak(&v86, &v89);
  v54 = v28;
  v83 = v54;
  v84 = v32;
  v85 = v14;
  v55 = v14;
  v56 = v32;
  v57 = _Block_copy(v82);
  morphHandler = self->_morphHandler;
  self->_morphHandler = v57;

  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke_3;
  v80[3] = &unk_1E70F3590;
  v59 = v54;
  v81 = v59;
  v60 = _Block_copy(v80);
  midpointHandler = self->_midpointHandler;
  self->_midpointHandler = v60;

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke_4;
  v78[3] = &unk_1E70F3590;
  v79 = v59;
  v62 = v59;
  v63 = _Block_copy(v78);
  nearCompletionHandler = self->_nearCompletionHandler;
  self->_nearCompletionHandler = v63;

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke_5;
  v71[3] = &unk_1E712BA60;
  objc_copyWeak(&v73, &v89);
  v77 = v51;
  v72 = v17;
  v74 = v94;
  v75 = v95;
  v76 = v96;
  v65 = v17;
  v66 = _Block_copy(v71);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v66;

  objc_destroyWeak(&v73);
  objc_destroyWeak(&v86);
  objc_destroyWeak(&v88);
  objc_destroyWeak(&v89);
}

- (void)reparentRetargetingContainerViewInTargetContainer
{
  v3 = self->_dropContainerView;
  v4 = [(UITargetedPreview *)self->_targetedDropPreview target];
  v5 = [v4 container];

  [v5 bounds];
  -[UIView _setFlipsHorizontalAxis:](self->_retargetingContainerView, "_setFlipsHorizontalAxis:", [v5 _flipsHorizontalAxis]);
  v6 = [v5 layer];
  v7 = [v6 presentationLayer];
  v8 = [v5 _window];
  v9 = [v8 layer];
  v10 = [v9 presentationLayer];
  v11 = [v7 isDescendantOf:v10];

  v12 = [v5 layer];
  v13 = v12;
  if (v11)
  {
    v14 = [v12 presentationLayer];

    v13 = v14;
  }

  v15 = [v5 _window];
  v16 = [v15 layer];
  [v16 convertPoint:v13 toLayer:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v18 = v17;
  v20 = v19;

  v21 = [v15 layer];
  [v21 convertPoint:v13 toLayer:{1.0, 0.0}];
  v23 = v22;
  v25 = v24;

  v26 = [v15 layer];
  [v26 convertPoint:v13 toLayer:{0.0, 1.0}];
  v28 = v27;
  v30 = v29;

  v31 = hypot(v23 - v18, v25 - v20);
  v32 = hypot(v28 - v18, v30 - v20);
  memset(&v64, 0, sizeof(v64));
  CGAffineTransformMakeScale(&v64, v31, v32);
  RotationAngleFromViewToView = DUIPreviewGetRotationAngleFromViewToView(v5, v3, 1);
  memset(&v63, 0, sizeof(v63));
  CGAffineTransformMakeRotation(&v63, -RotationAngleFromViewToView);
  t1 = v64;
  t2 = v63;
  CGAffineTransformConcat(&v65, &t1, &t2);

  retargetingContainerView = self->_retargetingContainerView;
  v64 = v65;
  [(UIView *)retargetingContainerView setTransform:&v64];
  [v5 addSubview:self->_retargetingContainerView];
  [(UIView *)v3 bounds];
  v37 = v36 + v35 * 0.5;
  v40 = v39 + v38 * 0.5;
  v41 = [v5 _window];
  [(UIView *)v3 convertPoint:v41 toCoordinateSpace:v37, v40];
  v43 = v42;
  v45 = v44;

  v46 = [v5 _window];
  v47 = [v46 layer];
  [v47 convertPoint:v13 toLayer:{v43, v45}];
  v49 = v48;
  v51 = v50;

  [(UIView *)self->_retargetingContainerView setCenter:v49, v51];
  v52 = [(UITargetedPreview *)self->_targetedDropPreview view];
  v53 = [v52 layer];
  [v53 zPosition];
  v55 = v54;
  v56 = [(UIView *)self->_retargetingContainerView layer];
  [v56 setZPosition:v55];

  [(UIView *)self->_retargetingContainerView setAlpha:0.0];
  v57 = [_UIPortalView alloc];
  [(UIView *)v3 bounds];
  v58 = [(_UIPortalView *)v57 initWithFrame:?];
  [(_UIPortalView *)v58 setMatchesTransform:1];
  [(_UIPortalView *)v58 setMatchesAlpha:0];
  [(_UIPortalView *)v58 setMatchesPosition:1];
  [(_UIPortalView *)v58 setSourceView:self->_platterContainerView];
  [(_UIPortalView *)v58 setAllowsHitTesting:[(_UIDragSetDownItemAnimation *)self previewMode]== 4];
  [(UIView *)v3 insertSubview:v58 atIndex:0];
  retargetingContainerPortalView = self->_retargetingContainerPortalView;
  self->_retargetingContainerPortalView = v58;

  if ([(_UIDragSetDownItemAnimation *)self previewMode]== 4)
  {
    [(UIView *)self->_retargetingContainerView setAlpha:1.0];
    [(_UIPortalView *)self->_retargetingContainerPortalView setHidden:1];
    self->_reparentingCrossfadeComplete = 1;
  }

  else
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __80___UIDragSetDownItemAnimation_reparentRetargetingContainerViewInTargetContainer__block_invoke;
    v60[3] = &unk_1E70F3590;
    v60[4] = self;
    [UIView performWithoutAnimation:v60];
  }
}

- (id)effectiveDropPreview
{
  updatedTargetedDropPreview = self->_updatedTargetedDropPreview;
  if (!updatedTargetedDropPreview)
  {
    updatedTargetedDropPreview = self->_targetedDropPreview;
  }

  return updatedTargetedDropPreview;
}

- (BOOL)shouldTerminateEarly
{
  v3 = [(_UIDragSetDownItemAnimation *)self effectiveDropPreview];
  v4 = v3;
  if (self->_wasVisibleAtStart)
  {
    v5 = [v3 _isVisibleIncludingAlpha:1] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)updateCurrentTargetFrame
{
  updatedAppPlatterView = self->_updatedAppPlatterView;
  if (!updatedAppPlatterView)
  {
    updatedAppPlatterView = self->_appPlatterView;
  }

  v4 = updatedAppPlatterView;
  v23 = [(_UIDragSetDownItemAnimation *)self effectiveDropPreview];
  v5 = [v23 target];
  v6 = [v5 container];
  [v5 center];
  [v6 convertPoint:self->_dropContainerView toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  LOBYTE(v6) = [(_UIPlatterView *)v4 constrainSize];
  v11 = [v23 _duiPreview];
  v12 = v11;
  if (v6)
  {
    [v11 scaledSize];
  }

  else
  {
    [v11 unscaledSize];
  }

  v15 = v13;
  v16 = v14;

  v17 = [v5 container];
  [v17 _currentScreenScale];
  UIRectCenteredAboutPointScale(0.0, 0.0, v15, v16, v8, v10, v18);
  self->_targetFrame.origin.x = v19;
  self->_targetFrame.origin.y = v20;
  self->_targetFrame.size.width = v21;
  self->_targetFrame.size.height = v22;
}

- (double)estimatedFractionCompleteOfAnimation
{
  v3 = [(UIView *)self->_platterContainerView layer];
  v4 = [v3 presentationLayer];
  [v4 position];
  v6 = v5;
  v8 = v7;

  __asm { FMOV            V2.2D, #0.5 }

  [(UIView *)self->_dropContainerView convertPoint:self->_retargetingContainerView toCoordinateSpace:vaddq_f64(self->_targetFrame.origin, vmulq_f64(self->_targetFrame.size, _Q2))];
  return (self->_initialDistanceFromTargetFrame - sqrt((v14 - v6) * (v14 - v6) + (v15 - v8) * (v15 - v8))) / self->_initialDistanceFromTargetFrame;
}

- (void)performTrackingAnimations:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_959, @"DNDSetDownDampingRatio"))
    {
      v6 = 0.85;
    }

    else
    {
      v6 = *&qword_1ED48B850;
    }

    if (_UIInternalPreferenceUsesDefault_1(algn_1ED48B858, @"DNDSetDownResponse"))
    {
      v7 = 0.55;
    }

    else
    {
      v7 = *&qword_1ED48B860;
    }

    ++self->_animationCount;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57___UIDragSetDownItemAnimation_performTrackingAnimations___block_invoke;
    aBlock[3] = &unk_1E70F0F78;
    v12 = v5;
    v8 = _Block_copy(aBlock);
    if (self->_hasStartedSpringAnimation)
    {
      v9 = [(_UIDragSetDownItemAnimation *)self animationCompletionHandler];
      [UIView _animateUsingSpringWithDampingRatio:1 response:v8 tracking:v9 dampingRatioSmoothing:v6 responseSmoothing:0.0015 targetSmoothing:1.0 projectionDeceleration:1.0 animations:0.0 completion:0.0];
    }

    else
    {
      customSpringAnimationBehavior = self->_customSpringAnimationBehavior;
      v9 = [(_UIDragSetDownItemAnimation *)self animationCompletionHandler];
      if (customSpringAnimationBehavior)
      {
        [UIView _animateUsingSpringBehavior:customSpringAnimationBehavior tracking:1 animations:v8 completion:v9];
      }

      else
      {
        [UIView _animateUsingSpringWithDampingRatio:1 response:v8 tracking:v9 initialDampingRatio:v6 initialResponse:v7 dampingRatioSmoothing:v6 responseSmoothing:v7 targetSmoothing:1.0 projectionDeceleration:1.0 animations:0.0 completion:0.0];
      }
    }
  }
}

- (void)previewContainerAnimationDidComplete
{
  v2 = [(_UIDragSetDownItemAnimation *)self animationCompletionHandler];
  v2[2](v2, 1, 0);
}

- (void)performSpringAnimations:(id)a3
{
  v4 = a3;
  if (v4)
  {
    ++self->_animationCount;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55___UIDragSetDownItemAnimation_performSpringAnimations___block_invoke;
    aBlock[3] = &unk_1E70F0F78;
    v13 = v4;
    v5 = _Block_copy(aBlock);
    customSpringAnimationBehavior = self->_customSpringAnimationBehavior;
    if (customSpringAnimationBehavior)
    {
      v7 = [(_UIDragSetDownItemAnimation *)self animationCompletionHandler];
      [UIView _animateUsingSpringBehavior:customSpringAnimationBehavior tracking:0 animations:v5 completion:v7];
    }

    else
    {
      if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_959, @"DNDSetDownDampingRatio"))
      {
        v8 = 0.85;
      }

      else
      {
        v8 = *&qword_1ED48B850;
      }

      if (_UIInternalPreferenceUsesDefault_1(algn_1ED48B858, @"DNDSetDownResponse"))
      {
        v9 = 0.55;
      }

      else
      {
        v9 = *&qword_1ED48B860;
      }

      if (_UIInternalPreferenceUsesDefault_1(algn_1ED48B868, @"DNDSetDownTargetResponse"))
      {
        v10 = 0.15;
      }

      else
      {
        v10 = *&qword_1ED48B870;
      }

      if (_UIInternalPreferenceUsesDefault_1(algn_1ED48B878, @"DNDSetDownProjectionFactor"))
      {
        v11 = 0.996;
      }

      else
      {
        v11 = *&qword_1ED48B880;
      }

      v7 = [(_UIDragSetDownItemAnimation *)self animationCompletionHandler];
      [UIView _animateUsingSpringWithDampingRatio:0 response:v5 tracking:v7 dampingRatioSmoothing:v8 responseSmoothing:v9 targetSmoothing:0.0 projectionDeceleration:0.0 animations:v10 completion:v11];
    }
  }
}

- (id)animationCompletionHandler
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57___UIDragSetDownItemAnimation_animationCompletionHandler__block_invoke;
  aBlock[3] = &unk_1E70F3FD8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (void)executeCompletionHandler
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a2);
    v4 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (BOOL)needsReparenting
{
  if ([(_UIDragSetDownItemAnimation *)self previewMode]== 2)
  {
    return 0;
  }

  if ([(_UIDragSetDownItemAnimation *)self previewMode]== 3)
  {
    return _UIApplicationIsExtension() ^ 1;
  }

  return 1;
}

- (int64_t)previewMode
{
  v2 = [(_UIDragSetDownItemAnimation *)self effectiveDropPreview];
  v3 = [v2 _duiPreview];

  v4 = [v3 previewMode];
  return v4;
}

- (void)updateAnimationTargeting
{
  if (!self->_reachedTarget && !self->_defaultAnimation)
  {
    if (self->_hasStartedSpringAnimation)
    {
      if ([(_UIDragSetDownItemAnimation *)self shouldTerminateEarly])
      {
        self->_didTerminateEarly = 1;

        [(_UIDragSetDownItemAnimation *)self executeCompletionHandler];
      }

      else
      {
        if ([(_UIDragSetDownItemAnimation *)self needsReparenting]&& self->_hasStartedSpringAnimation && !self->_reparentingCrossfadeComplete)
        {
          v8 = [(UITargetedPreview *)self->_targetedDropPreview target];
          v9 = [v8 container];

          v10 = [(UIView *)self->_platterContainerView layer];
          v11 = [v10 presentationLayer];

          if (v11)
          {
            v12 = [(UIView *)self->_platterContainerView layer];
            v13 = [v12 presentationLayer];
            [v13 position];
            v15 = v14;
            v17 = v16;

            [(UIView *)self->_retargetingContainerView convertPoint:v9 toCoordinateSpace:v15, v17];
            if ([v9 pointInside:0 withEvent:?])
            {
              self->_reparentingCrossfadeComplete = 1;
              v18 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_DNDSetDownReparentingCrossfadeDuration, @"DNDSetDownReparentingCrossfadeDuration");
              v19 = *&qword_1EA95E8D0;
              if (v18)
              {
                v19 = 0.2;
              }

              v39[4] = self;
              v40[0] = MEMORY[0x1E69E9820];
              v40[1] = 3221225472;
              v40[2] = __55___UIDragSetDownItemAnimation_updateAnimationTargeting__block_invoke;
              v40[3] = &unk_1E70F3590;
              v40[4] = self;
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __55___UIDragSetDownItemAnimation_updateAnimationTargeting__block_invoke_62;
              v39[3] = &unk_1E70F5AC0;
              [UIView animateWithDuration:v40 animations:v39 completion:v19];
            }
          }
        }

        x = self->_targetFrame.origin.x;
        y = self->_targetFrame.origin.y;
        width = self->_targetFrame.size.width;
        height = self->_targetFrame.size.height;
        targetCenterZ = self->_targetCenterZ;
        [(_UIDragSetDownItemAnimation *)self updateCurrentTargetFrame];
        __asm { FMOV            V2.2D, #0.5 }

        *&self->_center.x = vaddq_f64(self->_targetFrame.origin, vmulq_f64(self->_targetFrame.size, _Q2));
        self->_center.z = self->_targetCenterZ;
        if (self->_hasStartedSpringAnimation && (!self->_almostToTarget || !self->_midwayToTarget))
        {
          [(_UIDragSetDownItemAnimation *)self estimatedFractionCompleteOfAnimation];
          v31 = v30;
          if (!self->_midwayToTarget && v30 >= 0.5)
          {
            self->_midwayToTarget = 1;
            [(_UIDragSetDownItemAnimation *)self performSpringAnimations:self->_midpointHandler];
            nonAnimatedMidpointHandler = self->_nonAnimatedMidpointHandler;
            if (nonAnimatedMidpointHandler)
            {
              nonAnimatedMidpointHandler[2]();
            }
          }

          if (v31 >= 0.9)
          {
            v33 = [(UIView *)self->_platterContainerView _velocityForKey:@"position"];
            [v33 CGPointValue];
            v35 = v34;
            v37 = v36;

            if (hypot(v35, v37) < 175.0)
            {
              self->_almostToTarget = 1;
              [(_UIDragSetDownItemAnimation *)self performSpringAnimations:self->_nearCompletionHandler];
            }
          }
        }

        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        if (!CGRectEqualToRect(v42, self->_targetFrame) || vabdd_f64(targetCenterZ, self->_targetCenterZ) > 2.22044605e-16)
        {
          [(_UIDragSetDownItemAnimation *)self performTrackingAnimations:self->_positionHandler];
        }
      }
    }

    else
    {
      platterContainerView = self->_platterContainerView;
      v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_initialVelocity.var0.x, self->_initialVelocity.var0.y}];
      [(UIView *)platterContainerView _setVelocity:v4 forKey:@"position"];

      v5 = self->_platterContainerView;
      v6 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_initialTargetVelocity.var0.x, self->_initialTargetVelocity.var0.y}];
      [(UIView *)v5 _setTargetVelocity:v6 forKey:@"position"];

      v7 = [(UIView *)self->_platterContainerView layer];
      LODWORD(v6) = [v7 hasBeenCommitted];

      if (v6)
      {
        [(_UIDragSetDownItemAnimation *)self performTrackingAnimations:self->_positionHandler];
        [(_UIDragSetDownItemAnimation *)self performSpringAnimations:self->_morphHandler];
        self->_hasStartedSpringAnimation = 1;
        v38 = [(_UIDragSetDownItemAnimation *)self effectiveDropPreview];
        self->_wasVisibleAtStart = [v38 _isVisibleIncludingAlpha:1];
      }
    }
  }
}

- (void)dirtyTargetedDropPreview
{
  if (!self->_defaultAnimation && !self->_almostToTarget)
  {
    v4 = [(_UIDragSetDownItemAnimation *)self delegate];
    v3 = [(_UIDragSetDownAnimationTarget *)self->_visualTarget _setDownAnimation:v4 updatedSetDownOfDragItem:self->_item preview:self->_targetedDropPreview];
    [(_UIDragSetDownItemAnimation *)self updateTargetedDropPreview:v3];
  }
}

- (void)updateTargetedDropPreview:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_defaultAnimation && !self->_almostToTarget && !self->_updatedTargetedDropPreview)
  {
    if (self->_midwayToTarget)
    {
      v26.origin.x = _targetFrameForTargetedPreviewInContainerView(v5, self->_dropContainerView);
      if (!CGRectIsNull(v26))
      {
        objc_storeStrong(&self->_updatedTargetedDropPreview, a3);
        v7 = [v6 view];
        v8 = [v6 _duiPreview];
        v9 = [v7 window];
        [v8 setHidesSourceView:v9 == 0];

        v10 = [v7 window];

        if (!v10)
        {
          v11 = [v6 target];
          v12 = [v11 container];
          v13 = [(UIView *)self->_retargetingContainerView superview];

          v14 = [v6 target];
          v15 = [v14 container];
          v16 = v15;
          if (v12 == v13)
          {
            [v15 _addSubview:v7 positioned:-3 relativeTo:self->_retargetingContainerView];
          }

          else
          {
            [v15 addSubview:v7];
          }

          [v7 setAlpha:0.0];
          self->_updatedPreviewWasAdded = 1;
        }

        v19 = [[_UIPlatterView alloc] initWithDUIPreview:v8];
        [(_UIPlatterView *)v19 setTransformAppliedExternally:1];
        [(_UIPlatterView *)v19 setSourceView:v7];
        [(UIView *)v19 setAlpha:0.0];
        [(_UIPlatterView *)v19 setLifted:0];
        [(_UIPlatterView *)v19 setShadowVisible:0];
        [(_UIPlatterView *)v19 setBackgroundVisible:0];
        [(_UIPlatterContainerView *)self->_platterContainerView setUpdatedTarget:v19];

        updatedAppPlatterView = self->_updatedAppPlatterView;
        self->_updatedAppPlatterView = v19;

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __57___UIDragSetDownItemAnimation_updateTargetedDropPreview___block_invoke_2;
        v21[3] = &unk_1E70F3590;
        v21[4] = self;
        [(_UIDragSetDownItemAnimation *)self performSpringAnimations:v21];
      }
    }

    else
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __57___UIDragSetDownItemAnimation_updateTargetedDropPreview___block_invoke;
      aBlock[3] = &unk_1E70F2F80;
      objc_copyWeak(&v24, &location);
      v23 = v6;
      v17 = _Block_copy(aBlock);
      nonAnimatedMidpointHandler = self->_nonAnimatedMidpointHandler;
      self->_nonAnimatedMidpointHandler = v17;

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }
}

- (void)updateDroppedItem:(id)a3
{
  v4 = a3;
  [(_UIDragSetDownItemAnimation *)self _setCenterAndVelocityFromDroppedItem:v4];
  [v4 rotation];
  v6 = v5;
  memset(&v11, 0, sizeof(v11));
  if (v4)
  {
    [v4 appliedTransform];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformDecompose(&v11, &v10);
  v7 = v6 + v11.rotation;
  [(UIView *)self->_platterContainerView setCenter:self->_center.x, self->_center.y];
  [(_UIPlatterContainerView *)self->_platterContainerView applyRotation:v7];
  z = self->_center.z;
  v9 = [(UIView *)self->_platterContainerView layer];
  [v9 setZPosition:z];

  [(_UIPlatterView *)self->_appPlatterView setStackRotation:v7];
  [(_UIPlatterView *)self->_druidPlatterView setStackRotation:v7];
  [(UIView *)self->_defaultPlatterView setCenter:self->_center.x, self->_center.y];
}

- (void)_setCenterAndVelocityFromDroppedItem:(id)a3
{
  v4 = a3;
  [v4 center];
  self->_center.x = v5.f64[0];
  self->_center.y = v6;
  self->_center.z = 0.0;
  if (v4)
  {
    [v4 velocity3D];
    *&self->_initialVelocity.var0.x = v13;
    *&self->_initialVelocity.var0.z = v14;
    [v4 targetVelocity3D];
    v5 = *&self->_center.x;
  }

  else
  {
    *&self->_initialVelocity.var0.x = 0u;
    *&self->_initialVelocity.var0.z = 0u;
    v13 = 0u;
    v14 = 0u;
    v5.f64[1] = v6;
  }

  *&self->_initialTargetVelocity.var0.x = v13;
  *&self->_initialTargetVelocity.var0.z = v14;
  __asm { FMOV            V3.2D, #0.5 }

  v12 = vsubq_f64(vaddq_f64(self->_targetFrame.origin, vmulq_f64(self->_targetFrame.size, _Q3)), v5);
  self->_initialDistanceFromTargetFrame = sqrt(vaddvq_f64(vmulq_f64(v12, v12)));
}

- (_UIDragSetDownItemAnimationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CAPoint3D)center
{
  x = self->_center.x;
  y = self->_center.y;
  z = self->_center.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)targetFrame
{
  x = self->_targetFrame.origin.x;
  y = self->_targetFrame.origin.y;
  width = self->_targetFrame.size.width;
  height = self->_targetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)initialVelocity
{
  v3 = *&self->_initialVelocity.var0.x;
  v4 = *&self->_initialVelocity.var0.z;
  *v2 = v3;
  v2[1] = v4;
  result.var0.var1 = *&v4;
  result.var0.var0 = *&v3;
  return result;
}

- (void)setInitialVelocity:(id)a3
{
  v4 = v3[1];
  *&self->_initialVelocity.var0.x = *v3;
  *&self->_initialVelocity.var0.z = v4;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)initialTargetVelocity
{
  v3 = *&self->_initialTargetVelocity.var0.x;
  v4 = *&self->_initialTargetVelocity.var0.z;
  *v2 = v3;
  v2[1] = v4;
  result.var0.var1 = *&v4;
  result.var0.var0 = *&v3;
  return result;
}

- (void)setInitialTargetVelocity:(id)a3
{
  v4 = v3[1];
  *&self->_initialTargetVelocity.var0.x = *v3;
  *&self->_initialTargetVelocity.var0.z = v4;
}

@end