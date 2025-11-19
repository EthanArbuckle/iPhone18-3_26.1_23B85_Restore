@interface SBHPeopleWidgetPersonDetailZoomAnimator
- (CGRect)sourceContentFrameInMatchMoveViewSpace;
- (CGRect)targetContentFrameInMatchMoveViewSpace;
- (SBHPeopleWidgetPersonDetailZoomAnimator)init;
- (void)_configureForEndpoint:(int64_t)a3 context:(id)a4 inMode:(int64_t)a5 completion:(id)a6;
- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5;
- (void)finalizeAnimationAtEndpoint:(int64_t)a3 withContext:(id)a4;
- (void)prepareToAnimateFromEndpoint:(int64_t)a3 withContext:(id)a4;
@end

@implementation SBHPeopleWidgetPersonDetailZoomAnimator

- (SBHPeopleWidgetPersonDetailZoomAnimator)init
{
  v9.receiver = self;
  v9.super_class = SBHPeopleWidgetPersonDetailZoomAnimator;
  v2 = [(SBHPeopleWidgetPersonDetailZoomAnimator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentEndpoint = -1;
    v4 = +[SBHHomeScreenDomain rootSettings];
    v5 = [v4 widgetSettings];
    v6 = [v5 personDetailInteractionSettings];
    settings = v3->_settings;
    v3->_settings = v6;
  }

  return v3;
}

- (void)prepareToAnimateFromEndpoint:(int64_t)a3 withContext:(id)a4
{
  v80[1] = *MEMORY[0x1E69E9840];
  v5 = [a4 userInfo];
  v6 = [v5 containerView];
  v7 = [v5 sourceView];
  v8 = [v5 targetView];
  [v5 sourceContentFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v5 homeScreenContentFrame];
  v21 = [[SBHTouchPassThroughView alloc] initWithFrame:v17, v18, v19, v20];
  [(SBHPeopleWidgetPersonDetailZoomAnimator *)self setMatchMoveView:v21];
  [v6 addSubview:v21];
  [v5 targetContentFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v6 traitCollection];
  [v30 displayScale];
  v72 = v31;

  [v6 convertRect:v21 toView:{v23, v25, v27, v29}];
  [(SBHPeopleWidgetPersonDetailZoomAnimator *)self setTargetContentFrameInMatchMoveViewSpace:?];
  [v6 convertRect:v21 toView:{v10, v12, v14, v16}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [(SBHPeopleWidgetPersonDetailZoomAnimator *)self setSourceContentFrameInMatchMoveViewSpace:?];
  v40 = [[SBHTouchPassThroughView alloc] initWithFrame:v33, v35, v37, v39];
  v74 = self;
  [(SBHPeopleWidgetPersonDetailZoomAnimator *)self setSourceContainerView:v40];
  v41 = [v5 platterView];
  BSRectWithSize();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  [v41 setFrame:?];
  [(SBHTouchPassThroughView *)v40 addSubview:v41];
  [v41 addSubview:v7];
  [v7 setFrame:{v43, v45, v47, v49}];
  [v5 sourceContentCornerRadius];
  [v41 _setContinuousCornerRadius:?];
  [(SBHTouchPassThroughView *)v21 addSubview:v40];
  BSRectWithSize();
  [v8 setFrame:?];
  [v8 _setContinuousCornerRadius:0.0];
  v75 = v8;
  [v7 prepareToCrossfadeImageWithView:v8 options:2];
  [v7 setIconLabelAlpha:0.0];
  v50 = [v5 referenceView];
  [v50 setIconImageAlpha:0.0];
  [v50 bounds];
  [v7 convertRect:v6 toView:?];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = [MEMORY[0x1E69793B8] animation];
  v60 = [v50 layer];
  [v59 setSourceLayer:v60];

  [v59 setDuration:INFINITY];
  [v59 setFillMode:*MEMORY[0x1E69797E0]];
  [v59 setRemovedOnCompletion:0];
  [v59 setAppliesY:1];
  [v59 setAppliesX:1];
  UIRectGetCenter();
  UIPointRoundToScale();
  v62 = v61;
  v64 = v63;
  v81.origin.x = v52;
  v81.origin.y = v54;
  v81.size.width = v56;
  v81.size.height = v58;
  v65 = v62 - CGRectGetMinX(v81);
  v82.origin.x = v52;
  v82.origin.y = v54;
  v82.size.width = v56;
  v82.size.height = v58;
  *v79 = v65;
  *&v79[1] = v64 - CGRectGetMinY(v82);
  v66 = [MEMORY[0x1E696B098] valueWithBytes:v79 objCType:"{CGPoint=dd}"];
  v80[0] = v66;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
  [v59 setSourcePoints:v67];

  v68 = [(SBHTouchPassThroughView *)v21 layer];
  v69 = [v68 animationForKey:@"SBHPersonDetailZoomMatchMoveAnimation"];

  if (v69)
  {
    [v68 removeAnimationForKey:@"SBHPersonDetailZoomMatchMoveAnimation"];
  }

  [v68 addAnimation:v59 forKey:{@"SBHPersonDetailZoomMatchMoveAnimation", v72}];
  v70 = MEMORY[0x1E69DD250];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __84__SBHPeopleWidgetPersonDetailZoomAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v76[3] = &unk_1E808A090;
  v77 = v5;
  v78 = a3;
  v76[4] = v74;
  v71 = v5;
  [v70 performWithoutAnimation:v76];
}

- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 userInfo];
  v11 = [v9 wantsAnimation];

  if (v11)
  {
    [(SBHPeopleWidgetPersonDetailZoomAnimator *)self _configureForEndpoint:a3 context:v10 inMode:3 completion:v8];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__SBHPeopleWidgetPersonDetailZoomAnimator_animateToEndpoint_withContext_completion___block_invoke;
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
  [v7 cleanupAfterCrossfade];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v15[0] = *MEMORY[0x1E695EFD0];
  v15[1] = v8;
  v15[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v7 setTransform:v15];
  v9 = [v6 platterView];
  v10 = [v6 targetView];
  if (a3)
  {
    v11 = [v6 containerView];
    [v11 addSubview:v9];

    [v6 targetContentFrame];
    [v9 setFrame:?];
    [v9 addSubview:v10];
    [v9 bounds];
    [v10 setFrame:?];
    [v6 targetContentCornerRadius];
    [v9 _setContinuousCornerRadius:?];
  }

  else
  {
    [v7 setIcon:0];
    [v10 removeFromSuperview];
    [v9 removeFromSuperview];
  }

  [v7 removeFromSuperview];
  v12 = [(SBHPeopleWidgetPersonDetailZoomAnimator *)self matchMoveView];
  v13 = [v12 layer];
  [v13 removeAnimationForKey:@"SBHPersonDetailZoomMatchMoveAnimation"];

  v14 = [(SBHPeopleWidgetPersonDetailZoomAnimator *)self matchMoveView];
  [v14 removeFromSuperview];

  [(SBHPeopleWidgetPersonDetailZoomAnimator *)self setMatchMoveView:0];
}

- (void)_configureForEndpoint:(int64_t)a3 context:(id)a4 inMode:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ([(SBHPeopleWidgetPersonDetailZoomAnimator *)self currentEndpoint]== a3)
  {
    if (v11)
    {
      v11[2](v11);
    }
  }

  else
  {
    [(SBHPeopleWidgetPersonDetailZoomAnimator *)self setCurrentEndpoint:a3];
    v12 = [(SBHPeopleWidgetPersonDetailZoomAnimator *)self settings];
    v13 = [v12 zoomAnimationSettings];
    v14 = [v12 fadeOutAnimationSettings];
    v29 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v13 setFrameRateRange:1114121 highFrameRateReason:{*&v29.minimum, *&v29.maximum, *&v29.preferred}];
    v30 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v14 setFrameRateRange:1114121 highFrameRateReason:{*&v30.minimum, *&v30.maximum, *&v30.preferred}];
    v15 = MEMORY[0x1E69D3F80];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke;
    v21[3] = &unk_1E808A970;
    v27 = a3;
    v22 = v10;
    v23 = v13;
    v24 = self;
    v25 = v12;
    v28 = a5;
    v26 = v14;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke_6;
    v19[3] = &unk_1E808A998;
    v20 = v11;
    v16 = v14;
    v17 = v12;
    v18 = v13;
    [v15 perform:v21 finalCompletion:v19];
  }
}

void __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  v4 = v3 == 1;
  v35 = v3 == 1;
  if (v3 == 1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 sourceView];
  v9 = [*(a1 + 32) platterView];
  v10 = [*(a1 + 32) referenceView];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke_2;
  aBlock[3] = &unk_1E808A8F8;
  v11 = v8;
  v58 = v11;
  v12 = _Block_copy(aBlock);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke_3;
  v55[3] = &unk_1E808A8F8;
  v13 = v11;
  v56 = v13;
  v14 = _Block_copy(v55);
  v33 = *(a1 + 40);
  v34 = MEMORY[0x1E69DD250];
  v15 = *(a1 + 80);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke_4;
  v44[3] = &unk_1E808A920;
  v16 = *(a1 + 48);
  v45 = v13;
  v46 = v16;
  v54 = v4;
  v47 = *(a1 + 32);
  v48 = v9;
  v17 = v14;
  v51 = v17;
  v53 = v5;
  v18 = v10;
  v49 = v18;
  v19 = v12;
  v52 = v19;
  v50 = *(a1 + 56);
  v20 = v7;
  v22 = v7 + 2;
  v21 = v7[2];
  v37 = v9;
  v36 = v13;
  v23 = v20;
  v24 = v21(v20, @"zoom");
  [v34 sb_animateWithSettings:v33 mode:v15 animations:v44 completion:v24];

  v25 = MEMORY[0x1E69DD250];
  v26 = *(a1 + 64);
  v27 = *(a1 + 80);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke_5;
  v38[3] = &unk_1E808A948;
  v43 = v35;
  v42 = v5;
  v39 = v18;
  v40 = v19;
  v41 = v17;
  v28 = *v22;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v28(v23, @"fadeOut");

  [v25 sb_animateWithSettings:v26 mode:v27 animations:v38 completion:v32];
}

void __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  [v2 displayScale];

  v3 = [*(a1 + 40) sourceContainerView];
  v4 = *(a1 + 40);
  if (*(a1 + 104) == 1)
  {
    [v4 targetContentFrameInMatchMoveViewSpace];
    v6 = v5;
    v8 = v7;
    [*(a1 + 48) sourceContentFrame];
    v10 = v9;
    v12 = v11;
    [*(a1 + 32) iconContentScale];
    SBHSizeScaled(v10, v12, v13);
    UISizeRoundToScale();
    v15 = v6 / v14;
    v17 = v8 / v16;
    if (v15 <= v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    UIRectGetCenter();
    UIPointRoundToScale();
    [v3 setCenter:?];
    [v3 bounds];
    UIRectGetCenter();
    UIPointRoundToScale();
    v20 = v19;
    v22 = v21;
    v23 = *(a1 + 56);
    BSRectWithSize();
    [v23 setBounds:?];
    [*(a1 + 56) setCenter:{v20, v22}];
    v24 = *(a1 + 56);
    [*(a1 + 48) targetContentCornerRadius];
    [v24 _setContinuousCornerRadius:?];
    v25 = 80;
  }

  else
  {
    [v4 sourceContentFrameInMatchMoveViewSpace];
    UIRectGetCenter();
    UIPointRoundToScale();
    [v3 setCenter:?];
    [v3 bounds];
    UIRectGetCenter();
    UIPointRoundToScale();
    v27 = v26;
    v29 = v28;
    v30 = *(a1 + 56);
    BSRectWithSize();
    [v30 setBounds:?];
    [*(a1 + 56) setCenter:{v27, v29}];
    v31 = *(a1 + 56);
    [*(a1 + 48) sourceContentCornerRadius];
    [v31 _setContinuousCornerRadius:?];
    v18 = 1.0;
    [*(a1 + 64) setIconLabelAlpha:1.0];
    v25 = 88;
  }

  (*(*(a1 + v25) + 16))(*(a1 + 96));
  memset(&v62, 0, sizeof(v62));
  CGAffineTransformMakeScale(&v62, v18, v18);
  v32 = *(a1 + 32);
  v61 = v62;
  [v32 setTransform:&v61];
  v33 = [*(a1 + 48) backgroundView];
  [v33 setWeighting:*(a1 + 96)];

  v34 = [*(a1 + 48) backgroundTintView];
  [v34 setAlpha:*(a1 + 96)];

  [*(a1 + 32) setMorphFraction:*(a1 + 96)];
  [*(a1 + 56) bounds];
  UIRectGetCenter();
  UIPointRoundToScale();
  [*(a1 + 32) setCenter:?];
  v35 = *(MEMORY[0x1E695EFD0] + 16);
  *&v61.a = *MEMORY[0x1E695EFD0];
  *&v61.c = v35;
  *&v61.tx = *(MEMORY[0x1E695EFD0] + 32);
  v36 = [*(a1 + 48) homeScreenContentView];
  v37 = 1.0;
  if (*(a1 + 104) == 1)
  {
    v38 = [*(a1 + 72) usesCardStyle];
    v39 = *(a1 + 72);
    if (v38)
    {
      [v39 cardStyleHomeScreenScale];
    }

    else
    {
      [v39 fullScreenHomeScreenScale];
    }

    memset(&v60, 0, sizeof(v60));
    CGAffineTransformMakeScale(&v60, v40, v40);
    v41 = [*(a1 + 48) homeScreenContentView];
    [v41 center];
    UIPointRoundToScale();
    v43 = v42;
    v45 = v44;

    [*(a1 + 48) homeScreenContentFrame];
    UIRectGetCenter();
    UIPointRoundToScale();
    v47 = v46;
    v49 = v48;
    if (BSPointEqualToPoint())
    {
      v61 = v60;
    }

    else
    {
      v50 = v47 - v43;
      v51 = v49 - v45;
      memset(&v59, 0, sizeof(v59));
      CGAffineTransformMakeTranslation(&v59, v50, v51);
      memset(&v58, 0, sizeof(v58));
      CGAffineTransformMakeTranslation(&v58, -v50, -v51);
      t1 = v60;
      v55 = v59;
      CGAffineTransformConcat(&t2, &t1, &v55);
      t1 = v58;
      CGAffineTransformConcat(&v61, &t1, &t2);
    }

    v52 = [*(a1 + 72) usesCardStyle];
    v53 = *(a1 + 72);
    if (v52)
    {
      [v53 cardStyleHomeScreenAlpha];
    }

    else
    {
      [v53 fullScreenHomeScreenAlpha];
    }

    v37 = v54;
  }

  v60 = v61;
  [v36 setTransform:&v60];
  [v36 setAlpha:v37];
}

uint64_t __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke_5(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {
    (*(*(a1 + 40) + 16))(a2.n128_f64[0]);
    v3 = *(a1 + 32);

    return [v3 setIconLabelAlpha:0.0];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    return v5(a2);
  }
}

uint64_t __91__SBHPeopleWidgetPersonDetailZoomAnimator__configureForEndpoint_context_inMode_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

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