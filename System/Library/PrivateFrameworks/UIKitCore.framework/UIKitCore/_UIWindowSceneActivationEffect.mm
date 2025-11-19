@interface _UIWindowSceneActivationEffect
- (UITargetedPreview)handOffPreview;
- (_UIWindowSceneActivationEffect)initWithDescriptor:(id)a3;
- (id)_interactiveScaleBehavior;
- (id)_settlingBehavior;
- (id)_shadowBehavior;
- (id)previewForContinuingToEffectWithPreview:(id)a3;
- (void)_performAllCompletionBlocks;
- (void)addCompletion:(id)a3;
- (void)advanceToScale:(double)a3;
- (void)begin;
- (void)endExpanded:(BOOL)a3 withVelocity:(double)a4;
@end

@implementation _UIWindowSceneActivationEffect

- (_UIWindowSceneActivationEffect)initWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneActivationEffect;
  v6 = [(_UIWindowSceneActivationEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
  }

  return v7;
}

- (UITargetedPreview)handOffPreview
{
  v3 = [(_UIWindowSceneActivationEffect *)self descriptor];
  v4 = [v3 targetedPreview];

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v5 = [(_UIWindowSceneActivationEffect *)self platterView];
  v6 = [v5 layer];
  v7 = [v6 presentationLayer];
  v8 = v7;
  if (v7)
  {
    [v7 affineTransform];
  }

  else
  {
    v9 = [(_UIWindowSceneActivationEffect *)self platterView];
    v10 = [v9 layer];
    v11 = v10;
    if (v10)
    {
      [v10 affineTransform];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
    }
  }

  v12 = [(_UIWindowSceneActivationEffect *)self platterContainer];
  v13 = [v4 target];
  [v13 center];
  v15 = v14;
  v17 = v16;
  v18 = [v4 target];
  v19 = [v18 container];
  [v12 convertPoint:v19 fromView:{v15, v17}];
  v21 = v20;
  v23 = v22;

  v24 = [UIPreviewTarget alloc];
  v28[0] = v29;
  v28[1] = v30;
  v28[2] = v31;
  v25 = [(UIPreviewTarget *)v24 initWithContainer:v12 center:v28 transform:v21, v23];
  v26 = [v4 retargetedPreviewWithTarget:v25];

  return v26;
}

- (void)begin
{
  [(_UIWindowSceneActivationEffect *)self setState:1];
  v3 = [(_UIWindowSceneActivationEffect *)self descriptor];
  v28 = [v3 targetedPreview];

  v4 = [(_UIWindowSceneActivationEffect *)self platterView];

  if (!v4)
  {
    v5 = [[_UIHighlightPlatterView alloc] initWithTargetedPreview:v28];
    [(_UIWindowSceneActivationEffect *)self setPlatterView:v5];
  }

  v6 = [v28 target];
  v7 = [v6 container];

  v8 = [UIView alloc];
  [v7 bounds];
  v9 = [(UIView *)v8 initWithFrame:?];
  platterContainer = self->_platterContainer;
  self->_platterContainer = v9;

  v11 = [(_UIWindowSceneActivationEffect *)self platterContainer];
  v12 = [(_UIWindowSceneActivationEffect *)self platterView];
  [v11 addSubview:v12];

  v13 = [v28 view];
  v14 = [v13 superview];

  v15 = [(_UIWindowSceneActivationEffect *)self platterContainer];
  if (v14 == v7)
  {
    v16 = [v28 view];
    [v7 insertSubview:v15 aboveSubview:v16];
  }

  else
  {
    [v7 addSubview:v15];
  }

  v17 = [v28 target];
  [v17 center];
  v19 = v18;
  v21 = v20;
  v22 = [(_UIWindowSceneActivationEffect *)self platterContainer];
  [v7 convertPoint:v22 toView:{v19, v21}];
  v24 = v23;
  v26 = v25;
  v27 = [(_UIWindowSceneActivationEffect *)self platterView];
  [v27 setCenter:{v24, v26}];
}

- (void)advanceToScale:(double)a3
{
  v5 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  [v5 pinchActivationScaleThreshold];
  v7 = v6 + -1.0;

  v8 = a3 + -1.0;
  if (a3 + -1.0 <= 0.0)
  {
    if (a3 + -1.0 < 0.0)
    {
      v8 = -((1.0 - 1.0 / (v8 / v7 * -0.55 + 1.0)) * v7);
    }
  }

  else
  {
    v8 = v7 * (1.0 - 1.0 / (v8 / v7 * 0.55 + 1.0));
  }

  v9 = v8 + 1.0;
  v10 = [(_UIWindowSceneActivationEffect *)self _interactiveScaleBehavior];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49___UIWindowSceneActivationEffect_advanceToScale___block_invoke;
  v13[3] = &unk_1E70F32F0;
  v13[4] = self;
  *&v13[5] = v9;
  [UIView _animateUsingSpringBehavior:v10 tracking:0 animations:v13 completion:0];

  v11 = [(_UIWindowSceneActivationEffect *)self _shadowBehavior];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49___UIWindowSceneActivationEffect_advanceToScale___block_invoke_2;
  v12[3] = &unk_1E70F3590;
  v12[4] = self;
  [UIView _animateUsingSpringBehavior:v11 tracking:0 animations:v12 completion:0];
}

- (void)endExpanded:(BOOL)a3 withVelocity:(double)a4
{
  v5 = a3;
  [(_UIWindowSceneActivationEffect *)self setState:0];
  v7 = [(_UIWindowSceneActivationEffect *)self platterView];
  v8 = objc_opt_new();
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke;
  v82[3] = &unk_1E70F3590;
  v82[4] = self;
  [v8 addCompletion:v82];
  if (+[UIView areAnimationsEnabled])
  {
    v9 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
    [v9 pinchEndingProjectionDuration];
    v11 = v10 * a4;

    v12 = fabs(v11);
    v73 = *(MEMORY[0x1E69792E8] + 8);
    v74 = *(MEMORY[0x1E69792E8] + 24);
    v13 = *(MEMORY[0x1E69792E8] + 96);
    v78 = *(MEMORY[0x1E69792E8] + 80);
    v79 = v13;
    v80 = *(MEMORY[0x1E69792E8] + 112);
    v14 = *(MEMORY[0x1E69792E8] + 64);
    v76 = *(MEMORY[0x1E69792E8] + 48);
    v77 = v14;
    v15 = *(MEMORY[0x1E69792E8] + 120);
    if (v11 < 0.0)
    {
      v15 = NAN;
    }

    v72 = v12;
    v75 = v12;
    v81 = v15;
    v16 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v72];
    [v7 _setVelocity:v16 forKey:@"transform"];

    v17 = [(_UIWindowSceneActivationEffect *)self descriptor];
    v18 = [v17 targetedPreview];

    v19 = [v18 target];
    [v19 center];
    v21 = v20;
    v23 = v22;

    if (v5)
    {
      v24 = [v7 window];
      v25 = [v24 screen];

      v26 = [v25 coordinateSpace];
      [v25 bounds];
      v29 = v28 + v27 * 0.5;
      v32 = v31 + v30 * 0.5;
      v33 = [v7 superview];
      [v26 convertPoint:v33 toCoordinateSpace:{v29, v32}];
      v21 = v34;
      v23 = v35;
    }

    else
    {
      if (![v18 _sourceViewIsInViewHierarchy])
      {
LABEL_10:
        [v7 center];
        v44 = v21 - v43;
        v46 = v23 - v45;
        v47 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
        [v47 pinchEndPlatterVelocityMultiplier];
        v49 = v44 * v48;

        v50 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
        [v50 pinchEndPlatterVelocityMultiplier];
        v52 = v46 * v51;

        v53 = [MEMORY[0x1E696B098] valueWithCGPoint:{v49, v52}];
        [v7 _setVelocity:v53 forKey:@"position"];

        [v8 increment];
        v54 = [(_UIWindowSceneActivationEffect *)self _settlingBehavior];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke_2;
        v68[3] = &unk_1E70F6848;
        v55 = v7;
        v69 = v55;
        v70 = v21;
        v71 = v23;
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke_3;
        v66[3] = &unk_1E70F3FD8;
        v56 = v8;
        v67 = v56;
        [UIView _animateUsingSpringBehavior:v54 tracking:0 animations:v68 completion:v66];

        [v56 increment];
        v57 = [(_UIWindowSceneActivationEffect *)self _shadowBehavior];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke_4;
        v64[3] = &unk_1E70F3590;
        v65 = v55;
        v59 = MEMORY[0x1E69E9820];
        v60 = 3221225472;
        v61 = __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke_5;
        v62 = &unk_1E70F3FD8;
        v58 = v56;
        v63 = v58;
        [UIView _animateUsingSpringBehavior:v57 tracking:0 animations:v64 completion:&v59];

        [v58 complete];
        goto LABEL_11;
      }

      v25 = [v18 view];
      v26 = [v25 superview];
      v33 = [v18 view];
      [v33 center];
      v37 = v36;
      v39 = v38;
      v40 = [v7 superview];
      [v26 convertPoint:v40 toView:{v37, v39}];
      v21 = v41;
      v23 = v42;
    }

    goto LABEL_10;
  }

  [v8 complete];
LABEL_11:
}

- (id)_interactiveScaleBehavior
{
  v2 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  v3 = [v2 pinchInteractiveScale];
  v4 = [v3 springAnimationBehavior];

  return v4;
}

- (id)_settlingBehavior
{
  v2 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  v3 = [v2 pinchSettle];
  v4 = [v3 springAnimationBehavior];

  return v4;
}

- (id)_shadowBehavior
{
  v2 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  v3 = [v2 pinchShadow];
  v4 = [v3 springAnimationBehavior];

  return v4;
}

- (id)previewForContinuingToEffectWithPreview:(id)a3
{
  v3 = [(_UIWindowSceneActivationEffect *)self platterView];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v4 = [v3 layer];
  v5 = [v4 presentationLayer];
  v6 = v5;
  if (v5)
  {
    [v5 affineTransform];
  }

  else
  {
    v7 = [v3 layer];
    v8 = v7;
    if (v7)
    {
      [v7 affineTransform];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }
  }

  v9 = [UIPreviewTarget alloc];
  v10 = [v3 superview];
  [v3 center];
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  v11 = [(UIPreviewTarget *)v9 initWithContainer:v10 center:v16 transform:?];

  v12 = objc_opt_new();
  v13 = +[UIColor clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [[UITargetedPreview alloc] initWithView:v3 parameters:v12 target:v11];

  return v14;
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  completions = self->_completions;
  aBlock = v4;
  if (!completions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_completions;
    self->_completions = v6;

    v4 = aBlock;
    completions = self->_completions;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)completions addObject:v8];
}

- (void)_performAllCompletionBlocks
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(_UIWindowSceneActivationEffect *)self completions];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end