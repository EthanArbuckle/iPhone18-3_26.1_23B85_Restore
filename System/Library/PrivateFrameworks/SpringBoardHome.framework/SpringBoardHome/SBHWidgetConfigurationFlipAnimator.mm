@interface SBHWidgetConfigurationFlipAnimator
- (CGRect)homeScreenContentFrame;
- (CGRect)sourceContentFrame;
- (CGRect)sourceContentFrameInMatchMoveViewSpace;
- (CGRect)targetContentFrame;
- (CGRect)targetContentFrameInMatchMoveViewSpace;
- (SBHWidgetConfigurationFlipAnimator)init;
- (void)_configureForEndpoint:(int64_t)endpoint context:(id)context inMode:(int64_t)mode completion:(id)completion;
- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)iconViewDidBecomeWindowless:(id)windowless;
- (void)iconViewWasDiscarded:(id)discarded;
- (void)iconViewWasRecycled:(id)recycled;
- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context;
@end

@implementation SBHWidgetConfigurationFlipAnimator

- (SBHWidgetConfigurationFlipAnimator)init
{
  v8.receiver = self;
  v8.super_class = SBHWidgetConfigurationFlipAnimator;
  v2 = [(SBHWidgetConfigurationFlipAnimator *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentEndpoint = -1;
    v4 = +[SBHHomeScreenDomain rootSettings];
    widgetSettings = [v4 widgetSettings];
    widgetSettings = v3->_widgetSettings;
    v3->_widgetSettings = widgetSettings;
  }

  return v3;
}

- (void)dealloc
{
  flipAnimatableProperty = [(SBHWidgetConfigurationFlipAnimator *)self flipAnimatableProperty];
  [flipAnimatableProperty invalidate];

  v4.receiver = self;
  v4.super_class = SBHWidgetConfigurationFlipAnimator;
  [(SBHWidgetConfigurationFlipAnimator *)&v4 dealloc];
}

- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context
{
  v121[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  containerView = [userInfo containerView];
  val = [userInfo sourceView];
  [val iconContentScale];
  v80 = v6;
  targetView = [userInfo targetView];
  [userInfo sourceContentFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  rect = v13;
  [(SBHWidgetConfigurationFlipAnimator *)self setSourceContentFrame:?];
  homeScreenContentView = [userInfo homeScreenContentView];
  [homeScreenContentView bounds];
  [homeScreenContentView convertRect:containerView toView:?];
  [(SBHWidgetConfigurationFlipAnimator *)self setHomeScreenContentFrame:?];
  [userInfo contentBoundingRect];
  v18 = [[SBHTouchPassThroughView alloc] initWithFrame:v14, v15, v16, v17];
  [(SBHWidgetConfigurationFlipAnimator *)self setMatchMoveView:v18];
  v92 = v18;
  [containerView addSubview:v18];
  [userInfo targetContentFrame];
  v87 = v20;
  v88 = v19;
  v89 = v22;
  v90 = v21;
  [(SBHWidgetConfigurationFlipAnimator *)self setTargetContentFrame:?];
  traitCollection = [containerView traitCollection];
  [traitCollection displayScale];
  v86 = v24;

  [containerView convertRect:v18 toView:{*&v88, *&v87, *&v90, *&v89}];
  [(SBHWidgetConfigurationFlipAnimator *)self setTargetContentFrameInMatchMoveViewSpace:?];
  v122.origin.x = v8;
  v122.origin.y = v10;
  v122.size.width = rect;
  v122.size.height = v12;
  Width = CGRectGetWidth(v122);
  *&v123.origin.x = v88;
  *&v123.origin.y = v87;
  *&v123.size.width = v90;
  *&v123.size.height = v89;
  v26 = CGRectGetWidth(v123);
  if (Width >= v26)
  {
    v27 = Width;
  }

  else
  {
    v27 = v26;
  }

  widgetSettings = [(SBHWidgetConfigurationFlipAnimator *)self widgetSettings];
  [containerView convertRect:v18 toView:{v8, v10, rect, v12}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [(SBHWidgetConfigurationFlipAnimator *)self setSourceContentFrameInMatchMoveViewSpace:?];
  v94 = [[SBHWidgetConfigurationTransformView alloc] initWithFrame:v29, v31, v33, v35];
  [(SBHWidgetConfigurationFlipAnimator *)self setSourceContainerView:?];
  if ([widgetSettings configurationEqualizesMinCardToCameraDistance])
  {
    [widgetSettings configurationMinCardToCameraDistance];
    v37 = v27 + v36;
    v38 = -1.0;
  }

  else
  {
    [widgetSettings configurationPerspectiveCameraDistance];
    v38 = 1.0;
  }

  v39 = v38 / v37;
  layer = [(SBHWidgetConfigurationTransformView *)v94 layer];
  v41 = *(MEMORY[0x1E69792E8] + 48);
  v113 = *(MEMORY[0x1E69792E8] + 32);
  v114 = v41;
  v115 = *(MEMORY[0x1E69792E8] + 64);
  v116 = *(MEMORY[0x1E69792E8] + 80);
  v42 = *(MEMORY[0x1E69792E8] + 16);
  *location = *MEMORY[0x1E69792E8];
  v112 = v42;
  v117 = v39;
  v43 = *(MEMORY[0x1E69792E8] + 112);
  v118 = *(MEMORY[0x1E69792E8] + 96);
  v119 = v43;
  [layer setSublayerTransform:location];

  [(SBHWidgetConfigurationTransformView *)v94 addSubview:val];
  BSRectWithSize();
  [val setFrame:?];
  [(SBHTouchPassThroughView *)v18 addSubview:v94];
  UICeilToScale();
  v45 = v44;
  layer2 = [(SBHWidgetConfigurationTransformView *)v94 layer];
  [layer2 setZPosition:v45 + 1.0];

  superview = [targetView superview];
  [(SBHWidgetConfigurationFlipAnimator *)self setTargetSuperview:superview];

  [targetView frame];
  v49 = v48;
  v51 = v50;
  v52 = objc_alloc(MEMORY[0x1E69DD250]);
  BSRectWithSize();
  v83 = [v52 initWithFrame:?];
  [v83 addSubview:targetView];
  [targetView setFrame:{-*&v88, -*&v87, v49, v51}];
  [val prepareToCrossfadeImageWithView:v83 options:5];
  [val setIconLabelAlpha:0.0];
  recta = [userInfo referenceView];
  [recta addObserver:self];
  [recta bounds];
  [val convertRect:containerView toView:?];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  animation = [MEMORY[0x1E69793B8] animation];
  layer3 = [recta layer];
  [animation setSourceLayer:layer3];

  [animation setDuration:INFINITY];
  [animation setFillMode:*MEMORY[0x1E69797E0]];
  [animation setRemovedOnCompletion:0];
  [animation setAppliesY:1];
  [animation setAppliesX:1];
  UIRectGetCenter();
  UIPointRoundToScale();
  v64 = v63;
  v66 = v65;
  v124.origin.x = v54;
  v124.origin.y = v56;
  v124.size.width = v58;
  v124.size.height = v60;
  MinX = CGRectGetMinX(v124);
  v125.origin.x = v54;
  v125.origin.y = v56;
  v125.size.width = v58;
  v125.size.height = v60;
  v110[0] = v64 - MinX;
  v110[1] = v66 - CGRectGetMinY(v125);
  v68 = [MEMORY[0x1E696B098] valueWithBytes:v110 objCType:"{CGPoint=dd}"];
  v121[0] = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:1];
  [animation setSourcePoints:v69];

  layer4 = [(SBHTouchPassThroughView *)v92 layer];
  v71 = [layer4 animationForKey:@"SBHWidgetConfigurationFlipMatchMoveAnimation"];

  if (v71)
  {
    [layer4 removeAnimationForKey:@"SBHWidgetConfigurationFlipMatchMoveAnimation"];
  }

  [layer4 addAnimation:animation forKey:@"SBHWidgetConfigurationFlipMatchMoveAnimation"];
  v72 = objc_alloc_init(MEMORY[0x1E69DD268]);
  [(SBHWidgetConfigurationFlipAnimator *)self setFlipAnimatableProperty:v72];
  objc_initWeak(location, self);
  objc_initWeak(&from, v72);
  objc_initWeak(&v108, val);
  v73 = MEMORY[0x1E69DD250];
  v120 = v72;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __79__SBHWidgetConfigurationFlipAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v104[3] = &unk_1E808B1D8;
  objc_copyWeak(&v105, location);
  objc_copyWeak(&v106, &from);
  v107[1] = v80;
  v107[2] = v86;
  v107[3] = v88;
  v107[4] = v87;
  v107[5] = v90;
  v107[6] = v89;
  objc_copyWeak(v107, &v108);
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __79__SBHWidgetConfigurationFlipAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_2;
  v100[3] = &unk_1E808B1D8;
  objc_copyWeak(&v101, location);
  objc_copyWeak(&v102, &from);
  v103[1] = v80;
  v103[2] = v86;
  v103[3] = v88;
  v103[4] = v87;
  v103[5] = v90;
  v103[6] = v89;
  objc_copyWeak(v103, &v108);
  [v73 _createTransformerWithInputAnimatableProperties:v74 modelValueSetter:v104 presentationValueSetter:v100];

  v75 = MEMORY[0x1E69DD250];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __79__SBHWidgetConfigurationFlipAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_3;
  v96[3] = &unk_1E808B200;
  v96[4] = self;
  v76 = v72;
  v97 = v76;
  endpointCopy = endpoint;
  v77 = userInfo;
  v98 = v77;
  [v75 performWithoutAnimation:v96];

  objc_destroyWeak(v103);
  objc_destroyWeak(&v102);
  objc_destroyWeak(&v101);
  objc_destroyWeak(v107);
  objc_destroyWeak(&v106);
  objc_destroyWeak(&v105);
  objc_destroyWeak(&v108);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

void __79__SBHWidgetConfigurationFlipAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [WeakRetained endingFlipFraction];
    v6 = v5;
    [v4 value];
    v8 = v7;
    if (v6 != v7)
    {
      [v4 presentationValue];
      v10 = v9;
      [WeakRetained startingFlipFraction];
      v12 = v11;
      [WeakRetained startingRotationAngle];
      v14 = v13;
      [WeakRetained endingRotationAngle];
      v16 = v14 + (v10 - v12) * (v15 - v14) / (v6 - v12);
      if (v14 >= v16)
      {
        v16 = v14;
      }

      if (v15 <= v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      v18 = v15 + 3.14159265;
      if (BSFloatGreaterThanFloat())
      {
        v18 = v18 + -3.14159265 + -3.14159265;
      }

      [WeakRetained setStartingFlipFraction:v10];
      [WeakRetained setEndingFlipFraction:v8];
      [WeakRetained setStartingRotationAngle:v17];
      [WeakRetained setEndingRotationAngle:v18];
    }

    memset(&v31, 0, sizeof(v31));
    [WeakRetained endingRotationAngle];
    CATransform3DMakeRotation(&v31, v19, 0.0, 1.0, 0.0);
    [WeakRetained sourceContentFrame];
    SBHSizeScaled(v20, v21, *(a1 + 56));
    UISizeRoundToScale();
    v23 = *(a1 + 88) / v22;
    v25 = *(a1 + 96) / v24;
    if (v23 > v25)
    {
      v23 = v25;
    }

    memset(&v30, 0, sizeof(v30));
    CATransform3DMakeScale(&v30, 1.0 - v8 * (1.0 - v23), 1.0 - v8 * (1.0 - v23), 1.0);
    v26 = objc_loadWeakRetained((a1 + 48));
    a = v30;
    v27 = v31;
    CATransform3DConcat(&v29, &a, &v27);
    [v26 setTransform3D:&v29];
  }
}

void __79__SBHWidgetConfigurationFlipAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [v3 presentationValue];
    v6 = v5;
    [WeakRetained startingRotationAngle];
    v8 = v7;
    [WeakRetained endingRotationAngle];
    v10 = v9;
    [WeakRetained startingFlipFraction];
    v12 = (v10 - v8) * (v6 - v11);
    [WeakRetained endingFlipFraction];
    v14 = v13;
    [WeakRetained startingFlipFraction];
    v16 = v8 + v12 / (v14 - v15);
    if (v8 >= v16)
    {
      v16 = v8;
    }

    memset(&v30.m21, 0, 96);
    if (v10 <= v16)
    {
      v16 = v10;
    }

    memset(&v30, 0, 32);
    CATransform3DMakeRotation(&v30, v16, 0.0, 1.0, 0.0);
    [WeakRetained sourceContentFrame];
    SBHSizeScaled(v17, v18, *(a1 + 56));
    UISizeRoundToScale();
    v20 = *(a1 + 88) / v19;
    v22 = *(a1 + 96) / v21;
    if (v20 > v22)
    {
      v20 = v22;
    }

    memset(&v29, 0, sizeof(v29));
    CATransform3DMakeScale(&v29, 1.0 - v6 * (1.0 - v20), 1.0 - v6 * (1.0 - v20), 1.0);
    v23 = objc_loadWeakRetained((a1 + 48));
    v24 = MEMORY[0x1E696B098];
    a = v29;
    v26 = v30;
    CATransform3DConcat(&v28, &a, &v26);
    v25 = [v24 valueWithCATransform3D:&v28];
    [v23 _setPresentationValue:v25 forKey:@"transform"];
  }
}

uint64_t __79__SBHWidgetConfigurationFlipAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) hasPerformedAnyTransition] & 1) == 0)
  {
    [*(a1 + 32) setHasPerformedAnyTransition:1];
    [*(a1 + 40) setValue:0.0];
  }

  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 _configureForEndpoint:v3 context:v4 inMode:1 completion:0];
}

- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  wantsAnimation = [contextCopy wantsAnimation];

  if (wantsAnimation)
  {
    [(SBHWidgetConfigurationFlipAnimator *)self _configureForEndpoint:endpoint context:userInfo inMode:3 completion:completionCopy];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__SBHWidgetConfigurationFlipAnimator_animateToEndpoint_withContext_completion___block_invoke;
    v13[3] = &unk_1E808A8D0;
    v13[4] = self;
    endpointCopy = endpoint;
    v14 = userInfo;
    v15 = completionCopy;
    [v12 performWithoutAnimation:v13];
  }
}

- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context
{
  userInfo = [context userInfo];
  sourceView = [userInfo sourceView];
  flipAnimatableProperty = [(SBHWidgetConfigurationFlipAnimator *)self flipAnimatableProperty];
  [flipAnimatableProperty invalidate];

  [(SBHWidgetConfigurationFlipAnimator *)self setFlipAnimatableProperty:0];
  [sourceView cleanupAfterCrossfade];
  v9 = *(MEMORY[0x1E69792E8] + 80);
  v18[4] = *(MEMORY[0x1E69792E8] + 64);
  v18[5] = v9;
  v10 = *(MEMORY[0x1E69792E8] + 112);
  v18[6] = *(MEMORY[0x1E69792E8] + 96);
  v18[7] = v10;
  v11 = *(MEMORY[0x1E69792E8] + 16);
  v18[0] = *MEMORY[0x1E69792E8];
  v18[1] = v11;
  v12 = *(MEMORY[0x1E69792E8] + 48);
  v18[2] = *(MEMORY[0x1E69792E8] + 32);
  v18[3] = v12;
  [sourceView setTransform3D:v18];
  if (!endpoint)
  {
    [sourceView setIcon:0];
    [sourceView removeFromSuperview];
  }

  targetView = [userInfo targetView];
  targetSuperview = [(SBHWidgetConfigurationFlipAnimator *)self targetSuperview];
  [targetSuperview addSubview:targetView];

  [targetView frame];
  BSRectWithSize();
  [targetView setFrame:?];
  [(SBHWidgetConfigurationFlipAnimator *)self setTargetSuperview:0];
  matchMoveView = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  layer = [matchMoveView layer];
  [layer removeAnimationForKey:@"SBHWidgetConfigurationFlipMatchMoveAnimation"];

  matchMoveView2 = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  [matchMoveView2 removeFromSuperview];

  [(SBHWidgetConfigurationFlipAnimator *)self setMatchMoveView:0];
}

- (void)_configureForEndpoint:(int64_t)endpoint context:(id)context inMode:(int64_t)mode completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if ([(SBHWidgetConfigurationFlipAnimator *)self currentEndpoint]== endpoint)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    [(SBHWidgetConfigurationFlipAnimator *)self setCurrentEndpoint:endpoint];
    initWithDefaultValues = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
    [initWithDefaultValues setDampingRatio:1.0];
    [initWithDefaultValues setResponse:0.55];
    v20 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [initWithDefaultValues setFrameRateRange:1114120 highFrameRateReason:{*&v20.minimum, *&v20.maximum, *&v20.preferred}];
    v13 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__SBHWidgetConfigurationFlipAnimator__configureForEndpoint_context_inMode_completion___block_invoke;
    v16[3] = &unk_1E808A090;
    endpointCopy = endpoint;
    v17 = contextCopy;
    selfCopy = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__SBHWidgetConfigurationFlipAnimator__configureForEndpoint_context_inMode_completion___block_invoke_2;
    v14[3] = &unk_1E808A998;
    v15 = completionCopy;
    [v13 sb_animateWithSettings:initWithDefaultValues mode:mode animations:v16 completion:v14];
  }
}

void __86__SBHWidgetConfigurationFlipAnimator__configureForEndpoint_context_inMode_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) sourceView];
  v4 = [*(a1 + 32) referenceView];
  v5 = [v3 traitCollection];
  [v5 displayScale];

  v6 = 0.0;
  v7 = *(a1 + 40);
  if (v2 == 1)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (v2 == 1)
  {
    [v7 targetContentFrameInMatchMoveViewSpace];
    UIRectGetCenter();
    UIPointRoundToScale();
    v10 = v9;
    v12 = v11;
    v13 = [*(a1 + 40) sourceContainerView];
    [v13 setCenter:{v10, v12}];

    v14 = [*(a1 + 40) flipAnimatableProperty];
    [v14 setValue:1.0];

    [v3 setCrossfadeCornerRadius:21.0];
  }

  else
  {
    v15 = [v7 flipAnimatableProperty];
    [v15 setValue:0.0];

    [*(a1 + 40) sourceContentFrameInMatchMoveViewSpace];
    UIRectGetCenter();
    UIPointRoundToScale();
    v17 = v16;
    v19 = v18;
    v20 = [*(a1 + 40) sourceContainerView];
    [v20 setCenter:{v17, v19}];

    v21 = [v3 customIconImageViewController];
    [v21 continuousCornerRadius];
    [v3 setCrossfadeCornerRadius:?];

    v6 = 1.0;
  }

  [v4 setIconLabelAlpha:v6];
  v22 = [*(a1 + 32) backgroundView];
  [v22 setWeighting:v8];

  v23 = [*(a1 + 32) backgroundTintView];
  [v23 setAlpha:v8];

  [v3 setMorphFraction:v8];
  v24 = [*(a1 + 40) widgetSettings];
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&v46.a = *MEMORY[0x1E695EFD0];
  *&v46.c = v25;
  *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
  v26 = [*(a1 + 32) homeScreenContentView];
  v27 = 1.0;
  if (v2 == 1)
  {
    [v24 configurationHomeScreenScale];
    memset(&v45, 0, sizeof(v45));
    CGAffineTransformMakeScale(&v45, v28, v28);
    [*(a1 + 40) homeScreenContentFrame];
    UIRectGetCenter();
    UIPointRoundToScale();
    v30 = v29;
    v32 = v31;
    [*(a1 + 32) contentBoundingRect];
    UIRectGetCenter();
    UIPointRoundToScale();
    v34 = v33;
    v36 = v35;
    if (BSPointEqualToPoint())
    {
      v46 = v45;
    }

    else
    {
      v37 = v34 - v30;
      v38 = v36 - v32;
      memset(&v44, 0, sizeof(v44));
      CGAffineTransformMakeTranslation(&v44, v37, v38);
      memset(&v43, 0, sizeof(v43));
      CGAffineTransformMakeTranslation(&v43, -v37, -v38);
      t1 = v45;
      v40 = v44;
      CGAffineTransformConcat(&t2, &t1, &v40);
      t1 = v43;
      CGAffineTransformConcat(&v46, &t1, &t2);
    }

    [v24 configurationHomeScreenAlpha];
    v27 = v39;
  }

  v45 = v46;
  [v26 setTransform:&v45];
  [v26 setAlpha:v27];
}

uint64_t __86__SBHWidgetConfigurationFlipAnimator__configureForEndpoint_context_inMode_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)iconViewWasRecycled:(id)recycled
{
  matchMoveView = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  [matchMoveView setHidden:1];
}

- (void)iconViewDidBecomeWindowless:(id)windowless
{
  matchMoveView = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  [matchMoveView setHidden:1];
}

- (void)iconViewWasDiscarded:(id)discarded
{
  matchMoveView = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  [matchMoveView setHidden:1];
}

- (CGRect)sourceContentFrame
{
  x = self->_sourceContentFrame.origin.x;
  y = self->_sourceContentFrame.origin.y;
  width = self->_sourceContentFrame.size.width;
  height = self->_sourceContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetContentFrame
{
  x = self->_targetContentFrame.origin.x;
  y = self->_targetContentFrame.origin.y;
  width = self->_targetContentFrame.size.width;
  height = self->_targetContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)homeScreenContentFrame
{
  x = self->_homeScreenContentFrame.origin.x;
  y = self->_homeScreenContentFrame.origin.y;
  width = self->_homeScreenContentFrame.size.width;
  height = self->_homeScreenContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sourceContentFrameInMatchMoveViewSpace
{
  x = self->_sourceContentFrameInMatchMoveViewSpace.origin.x;
  y = self->_sourceContentFrameInMatchMoveViewSpace.origin.y;
  width = self->_sourceContentFrameInMatchMoveViewSpace.size.width;
  height = self->_sourceContentFrameInMatchMoveViewSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetContentFrameInMatchMoveViewSpace
{
  x = self->_targetContentFrameInMatchMoveViewSpace.origin.x;
  y = self->_targetContentFrameInMatchMoveViewSpace.origin.y;
  width = self->_targetContentFrameInMatchMoveViewSpace.size.width;
  height = self->_targetContentFrameInMatchMoveViewSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end