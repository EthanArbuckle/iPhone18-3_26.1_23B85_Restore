@interface SBHWidgetConfigurationFlipAnimator
- (CGRect)homeScreenContentFrame;
- (CGRect)sourceContentFrame;
- (CGRect)sourceContentFrameInMatchMoveViewSpace;
- (CGRect)targetContentFrame;
- (CGRect)targetContentFrameInMatchMoveViewSpace;
- (SBHWidgetConfigurationFlipAnimator)init;
- (void)_configureForEndpoint:(int64_t)a3 context:(id)a4 inMode:(int64_t)a5 completion:(id)a6;
- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)finalizeAnimationAtEndpoint:(int64_t)a3 withContext:(id)a4;
- (void)iconViewDidBecomeWindowless:(id)a3;
- (void)iconViewWasDiscarded:(id)a3;
- (void)iconViewWasRecycled:(id)a3;
- (void)prepareToAnimateFromEndpoint:(int64_t)a3 withContext:(id)a4;
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
    v5 = [v4 widgetSettings];
    widgetSettings = v3->_widgetSettings;
    v3->_widgetSettings = v5;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(SBHWidgetConfigurationFlipAnimator *)self flipAnimatableProperty];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SBHWidgetConfigurationFlipAnimator;
  [(SBHWidgetConfigurationFlipAnimator *)&v4 dealloc];
}

- (void)prepareToAnimateFromEndpoint:(int64_t)a3 withContext:(id)a4
{
  v121[1] = *MEMORY[0x1E69E9840];
  v78 = a4;
  v5 = [v78 userInfo];
  v93 = [v5 containerView];
  val = [v5 sourceView];
  [val iconContentScale];
  v80 = v6;
  v91 = [v5 targetView];
  [v5 sourceContentFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  rect = v13;
  [(SBHWidgetConfigurationFlipAnimator *)self setSourceContentFrame:?];
  v82 = [v5 homeScreenContentView];
  [v82 bounds];
  [v82 convertRect:v93 toView:?];
  [(SBHWidgetConfigurationFlipAnimator *)self setHomeScreenContentFrame:?];
  [v5 contentBoundingRect];
  v18 = [[SBHTouchPassThroughView alloc] initWithFrame:v14, v15, v16, v17];
  [(SBHWidgetConfigurationFlipAnimator *)self setMatchMoveView:v18];
  v92 = v18;
  [v93 addSubview:v18];
  [v5 targetContentFrame];
  v87 = v20;
  v88 = v19;
  v89 = v22;
  v90 = v21;
  [(SBHWidgetConfigurationFlipAnimator *)self setTargetContentFrame:?];
  v23 = [v93 traitCollection];
  [v23 displayScale];
  v86 = v24;

  [v93 convertRect:v18 toView:{*&v88, *&v87, *&v90, *&v89}];
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

  v81 = [(SBHWidgetConfigurationFlipAnimator *)self widgetSettings];
  [v93 convertRect:v18 toView:{v8, v10, rect, v12}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [(SBHWidgetConfigurationFlipAnimator *)self setSourceContentFrameInMatchMoveViewSpace:?];
  v94 = [[SBHWidgetConfigurationTransformView alloc] initWithFrame:v29, v31, v33, v35];
  [(SBHWidgetConfigurationFlipAnimator *)self setSourceContainerView:?];
  if ([v81 configurationEqualizesMinCardToCameraDistance])
  {
    [v81 configurationMinCardToCameraDistance];
    v37 = v27 + v36;
    v38 = -1.0;
  }

  else
  {
    [v81 configurationPerspectiveCameraDistance];
    v38 = 1.0;
  }

  v39 = v38 / v37;
  v40 = [(SBHWidgetConfigurationTransformView *)v94 layer];
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
  [v40 setSublayerTransform:location];

  [(SBHWidgetConfigurationTransformView *)v94 addSubview:val];
  BSRectWithSize();
  [val setFrame:?];
  [(SBHTouchPassThroughView *)v18 addSubview:v94];
  UICeilToScale();
  v45 = v44;
  v46 = [(SBHWidgetConfigurationTransformView *)v94 layer];
  [v46 setZPosition:v45 + 1.0];

  v47 = [v91 superview];
  [(SBHWidgetConfigurationFlipAnimator *)self setTargetSuperview:v47];

  [v91 frame];
  v49 = v48;
  v51 = v50;
  v52 = objc_alloc(MEMORY[0x1E69DD250]);
  BSRectWithSize();
  v83 = [v52 initWithFrame:?];
  [v83 addSubview:v91];
  [v91 setFrame:{-*&v88, -*&v87, v49, v51}];
  [val prepareToCrossfadeImageWithView:v83 options:5];
  [val setIconLabelAlpha:0.0];
  recta = [v5 referenceView];
  [recta addObserver:self];
  [recta bounds];
  [val convertRect:v93 toView:?];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = [MEMORY[0x1E69793B8] animation];
  v62 = [recta layer];
  [v61 setSourceLayer:v62];

  [v61 setDuration:INFINITY];
  [v61 setFillMode:*MEMORY[0x1E69797E0]];
  [v61 setRemovedOnCompletion:0];
  [v61 setAppliesY:1];
  [v61 setAppliesX:1];
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
  [v61 setSourcePoints:v69];

  v70 = [(SBHTouchPassThroughView *)v92 layer];
  v71 = [v70 animationForKey:@"SBHWidgetConfigurationFlipMatchMoveAnimation"];

  if (v71)
  {
    [v70 removeAnimationForKey:@"SBHWidgetConfigurationFlipMatchMoveAnimation"];
  }

  [v70 addAnimation:v61 forKey:@"SBHWidgetConfigurationFlipMatchMoveAnimation"];
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
  v99 = a3;
  v77 = v5;
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

- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 userInfo];
  v11 = [v9 wantsAnimation];

  if (v11)
  {
    [(SBHWidgetConfigurationFlipAnimator *)self _configureForEndpoint:a3 context:v10 inMode:3 completion:v8];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__SBHWidgetConfigurationFlipAnimator_animateToEndpoint_withContext_completion___block_invoke;
    v13[3] = &unk_1E808A8D0;
    v13[4] = self;
    v16 = a3;
    v14 = v10;
    v15 = v8;
    [v12 performWithoutAnimation:v13];
  }
}

- (void)finalizeAnimationAtEndpoint:(int64_t)a3 withContext:(id)a4
{
  v6 = [a4 userInfo];
  v7 = [v6 sourceView];
  v8 = [(SBHWidgetConfigurationFlipAnimator *)self flipAnimatableProperty];
  [v8 invalidate];

  [(SBHWidgetConfigurationFlipAnimator *)self setFlipAnimatableProperty:0];
  [v7 cleanupAfterCrossfade];
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
  [v7 setTransform3D:v18];
  if (!a3)
  {
    [v7 setIcon:0];
    [v7 removeFromSuperview];
  }

  v13 = [v6 targetView];
  v14 = [(SBHWidgetConfigurationFlipAnimator *)self targetSuperview];
  [v14 addSubview:v13];

  [v13 frame];
  BSRectWithSize();
  [v13 setFrame:?];
  [(SBHWidgetConfigurationFlipAnimator *)self setTargetSuperview:0];
  v15 = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  v16 = [v15 layer];
  [v16 removeAnimationForKey:@"SBHWidgetConfigurationFlipMatchMoveAnimation"];

  v17 = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  [v17 removeFromSuperview];

  [(SBHWidgetConfigurationFlipAnimator *)self setMatchMoveView:0];
}

- (void)_configureForEndpoint:(int64_t)a3 context:(id)a4 inMode:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ([(SBHWidgetConfigurationFlipAnimator *)self currentEndpoint]== a3)
  {
    if (v11)
    {
      v11[2](v11);
    }
  }

  else
  {
    [(SBHWidgetConfigurationFlipAnimator *)self setCurrentEndpoint:a3];
    v12 = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
    [v12 setDampingRatio:1.0];
    [v12 setResponse:0.55];
    v20 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v12 setFrameRateRange:1114120 highFrameRateReason:{*&v20.minimum, *&v20.maximum, *&v20.preferred}];
    v13 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__SBHWidgetConfigurationFlipAnimator__configureForEndpoint_context_inMode_completion___block_invoke;
    v16[3] = &unk_1E808A090;
    v19 = a3;
    v17 = v10;
    v18 = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__SBHWidgetConfigurationFlipAnimator__configureForEndpoint_context_inMode_completion___block_invoke_2;
    v14[3] = &unk_1E808A998;
    v15 = v11;
    [v13 sb_animateWithSettings:v12 mode:a5 animations:v16 completion:v14];
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

- (void)iconViewWasRecycled:(id)a3
{
  v3 = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  [v3 setHidden:1];
}

- (void)iconViewDidBecomeWindowless:(id)a3
{
  v3 = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  [v3 setHidden:1];
}

- (void)iconViewWasDiscarded:(id)a3
{
  v3 = [(SBHWidgetConfigurationFlipAnimator *)self matchMoveView];
  [v3 setHidden:1];
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