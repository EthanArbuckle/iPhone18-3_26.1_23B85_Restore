@interface _UIWindowSceneActivationEffect
- (UITargetedPreview)handOffPreview;
- (_UIWindowSceneActivationEffect)initWithDescriptor:(id)descriptor;
- (id)_interactiveScaleBehavior;
- (id)_settlingBehavior;
- (id)_shadowBehavior;
- (id)previewForContinuingToEffectWithPreview:(id)preview;
- (void)_performAllCompletionBlocks;
- (void)addCompletion:(id)completion;
- (void)advanceToScale:(double)scale;
- (void)begin;
- (void)endExpanded:(BOOL)expanded withVelocity:(double)velocity;
@end

@implementation _UIWindowSceneActivationEffect

- (_UIWindowSceneActivationEffect)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneActivationEffect;
  v6 = [(_UIWindowSceneActivationEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, descriptor);
  }

  return v7;
}

- (UITargetedPreview)handOffPreview
{
  descriptor = [(_UIWindowSceneActivationEffect *)self descriptor];
  targetedPreview = [descriptor targetedPreview];

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  platterView = [(_UIWindowSceneActivationEffect *)self platterView];
  layer = [platterView layer];
  presentationLayer = [layer presentationLayer];
  v8 = presentationLayer;
  if (presentationLayer)
  {
    [presentationLayer affineTransform];
  }

  else
  {
    platterView2 = [(_UIWindowSceneActivationEffect *)self platterView];
    layer2 = [platterView2 layer];
    v11 = layer2;
    if (layer2)
    {
      [layer2 affineTransform];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
    }
  }

  platterContainer = [(_UIWindowSceneActivationEffect *)self platterContainer];
  target = [targetedPreview target];
  [target center];
  v15 = v14;
  v17 = v16;
  target2 = [targetedPreview target];
  container = [target2 container];
  [platterContainer convertPoint:container fromView:{v15, v17}];
  v21 = v20;
  v23 = v22;

  v24 = [UIPreviewTarget alloc];
  v28[0] = v29;
  v28[1] = v30;
  v28[2] = v31;
  v25 = [(UIPreviewTarget *)v24 initWithContainer:platterContainer center:v28 transform:v21, v23];
  v26 = [targetedPreview retargetedPreviewWithTarget:v25];

  return v26;
}

- (void)begin
{
  [(_UIWindowSceneActivationEffect *)self setState:1];
  descriptor = [(_UIWindowSceneActivationEffect *)self descriptor];
  targetedPreview = [descriptor targetedPreview];

  platterView = [(_UIWindowSceneActivationEffect *)self platterView];

  if (!platterView)
  {
    v5 = [[_UIHighlightPlatterView alloc] initWithTargetedPreview:targetedPreview];
    [(_UIWindowSceneActivationEffect *)self setPlatterView:v5];
  }

  target = [targetedPreview target];
  container = [target container];

  v8 = [UIView alloc];
  [container bounds];
  v9 = [(UIView *)v8 initWithFrame:?];
  platterContainer = self->_platterContainer;
  self->_platterContainer = v9;

  platterContainer = [(_UIWindowSceneActivationEffect *)self platterContainer];
  platterView2 = [(_UIWindowSceneActivationEffect *)self platterView];
  [platterContainer addSubview:platterView2];

  view = [targetedPreview view];
  superview = [view superview];

  platterContainer2 = [(_UIWindowSceneActivationEffect *)self platterContainer];
  if (superview == container)
  {
    view2 = [targetedPreview view];
    [container insertSubview:platterContainer2 aboveSubview:view2];
  }

  else
  {
    [container addSubview:platterContainer2];
  }

  target2 = [targetedPreview target];
  [target2 center];
  v19 = v18;
  v21 = v20;
  platterContainer3 = [(_UIWindowSceneActivationEffect *)self platterContainer];
  [container convertPoint:platterContainer3 toView:{v19, v21}];
  v24 = v23;
  v26 = v25;
  platterView3 = [(_UIWindowSceneActivationEffect *)self platterView];
  [platterView3 setCenter:{v24, v26}];
}

- (void)advanceToScale:(double)scale
{
  v5 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  [v5 pinchActivationScaleThreshold];
  v7 = v6 + -1.0;

  v8 = scale + -1.0;
  if (scale + -1.0 <= 0.0)
  {
    if (scale + -1.0 < 0.0)
    {
      v8 = -((1.0 - 1.0 / (v8 / v7 * -0.55 + 1.0)) * v7);
    }
  }

  else
  {
    v8 = v7 * (1.0 - 1.0 / (v8 / v7 * 0.55 + 1.0));
  }

  v9 = v8 + 1.0;
  _interactiveScaleBehavior = [(_UIWindowSceneActivationEffect *)self _interactiveScaleBehavior];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49___UIWindowSceneActivationEffect_advanceToScale___block_invoke;
  v13[3] = &unk_1E70F32F0;
  v13[4] = self;
  *&v13[5] = v9;
  [UIView _animateUsingSpringBehavior:_interactiveScaleBehavior tracking:0 animations:v13 completion:0];

  _shadowBehavior = [(_UIWindowSceneActivationEffect *)self _shadowBehavior];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49___UIWindowSceneActivationEffect_advanceToScale___block_invoke_2;
  v12[3] = &unk_1E70F3590;
  v12[4] = self;
  [UIView _animateUsingSpringBehavior:_shadowBehavior tracking:0 animations:v12 completion:0];
}

- (void)endExpanded:(BOOL)expanded withVelocity:(double)velocity
{
  expandedCopy = expanded;
  [(_UIWindowSceneActivationEffect *)self setState:0];
  platterView = [(_UIWindowSceneActivationEffect *)self platterView];
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
    v11 = v10 * velocity;

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
    [platterView _setVelocity:v16 forKey:@"transform"];

    descriptor = [(_UIWindowSceneActivationEffect *)self descriptor];
    targetedPreview = [descriptor targetedPreview];

    target = [targetedPreview target];
    [target center];
    v21 = v20;
    v23 = v22;

    if (expandedCopy)
    {
      window = [platterView window];
      screen = [window screen];

      coordinateSpace = [screen coordinateSpace];
      [screen bounds];
      v29 = v28 + v27 * 0.5;
      v32 = v31 + v30 * 0.5;
      superview = [platterView superview];
      [coordinateSpace convertPoint:superview toCoordinateSpace:{v29, v32}];
      v21 = v34;
      v23 = v35;
    }

    else
    {
      if (![targetedPreview _sourceViewIsInViewHierarchy])
      {
LABEL_10:
        [platterView center];
        v44 = v21 - v43;
        v46 = v23 - v45;
        v47 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
        [v47 pinchEndPlatterVelocityMultiplier];
        v49 = v44 * v48;

        v50 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
        [v50 pinchEndPlatterVelocityMultiplier];
        v52 = v46 * v51;

        v53 = [MEMORY[0x1E696B098] valueWithCGPoint:{v49, v52}];
        [platterView _setVelocity:v53 forKey:@"position"];

        [v8 increment];
        _settlingBehavior = [(_UIWindowSceneActivationEffect *)self _settlingBehavior];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke_2;
        v68[3] = &unk_1E70F6848;
        v55 = platterView;
        v69 = v55;
        v70 = v21;
        v71 = v23;
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke_3;
        v66[3] = &unk_1E70F3FD8;
        v56 = v8;
        v67 = v56;
        [UIView _animateUsingSpringBehavior:_settlingBehavior tracking:0 animations:v68 completion:v66];

        [v56 increment];
        _shadowBehavior = [(_UIWindowSceneActivationEffect *)self _shadowBehavior];
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
        [UIView _animateUsingSpringBehavior:_shadowBehavior tracking:0 animations:v64 completion:&v59];

        [v58 complete];
        goto LABEL_11;
      }

      screen = [targetedPreview view];
      coordinateSpace = [screen superview];
      superview = [targetedPreview view];
      [superview center];
      v37 = v36;
      v39 = v38;
      superview2 = [platterView superview];
      [coordinateSpace convertPoint:superview2 toView:{v37, v39}];
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
  pinchInteractiveScale = [v2 pinchInteractiveScale];
  springAnimationBehavior = [pinchInteractiveScale springAnimationBehavior];

  return springAnimationBehavior;
}

- (id)_settlingBehavior
{
  v2 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  pinchSettle = [v2 pinchSettle];
  springAnimationBehavior = [pinchSettle springAnimationBehavior];

  return springAnimationBehavior;
}

- (id)_shadowBehavior
{
  v2 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  pinchShadow = [v2 pinchShadow];
  springAnimationBehavior = [pinchShadow springAnimationBehavior];

  return springAnimationBehavior;
}

- (id)previewForContinuingToEffectWithPreview:(id)preview
{
  platterView = [(_UIWindowSceneActivationEffect *)self platterView];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  layer = [platterView layer];
  presentationLayer = [layer presentationLayer];
  v6 = presentationLayer;
  if (presentationLayer)
  {
    [presentationLayer affineTransform];
  }

  else
  {
    layer2 = [platterView layer];
    v8 = layer2;
    if (layer2)
    {
      [layer2 affineTransform];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }
  }

  v9 = [UIPreviewTarget alloc];
  superview = [platterView superview];
  [platterView center];
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  v11 = [(UIPreviewTarget *)v9 initWithContainer:superview center:v16 transform:?];

  v12 = objc_opt_new();
  v13 = +[UIColor clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [[UITargetedPreview alloc] initWithView:platterView parameters:v12 target:v11];

  return v14;
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  completions = self->_completions;
  aBlock = completionCopy;
  if (!completions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_completions;
    self->_completions = array;

    completionCopy = aBlock;
    completions = self->_completions;
  }

  v8 = _Block_copy(completionCopy);
  [(NSMutableArray *)completions addObject:v8];
}

- (void)_performAllCompletionBlocks
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  completions = [(_UIWindowSceneActivationEffect *)self completions];
  v3 = [completions countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(completions);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [completions countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end