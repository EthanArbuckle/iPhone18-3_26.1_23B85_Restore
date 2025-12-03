@interface _UIGravityWellEffect
+ (id)effectWithDescriptor:(id)descriptor continuationPreview:(id)preview;
- (NSArray)secondaryBodyPreviews;
- (id)_criticallyDampedEffectSpringBehavior;
- (id)_effectSpringBehavior;
- (id)previewForContinuingToEffectWithPreview:(id)preview;
- (void)_installEffectViews;
- (void)_performAllCompletions;
- (void)_tearDownEffectViews;
- (void)_updateToProgress:(double)progress state:(int64_t)state;
- (void)addCompletion:(id)completion;
- (void)begin;
- (void)end;
- (void)endForHandOff;
- (void)updateWithProgress:(double)progress;
@end

@implementation _UIGravityWellEffect

- (void)endForHandOff
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37___UIGravityWellEffect_endForHandOff__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView performWithoutAnimation:v3];
  [(_UIGravityWellEffect *)self setState:2];
}

- (void)_performAllCompletions
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  completions = [(_UIGravityWellEffect *)self completions];
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

- (void)_tearDownEffectViews
{
  v16 = *MEMORY[0x1E69E9840];
  primaryBody = [(_UIGravityWellEffect *)self primaryBody];
  anchorView = [primaryBody anchorView];
  [anchorView removeFromSuperview];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  secondaryBodies = [(_UIGravityWellEffect *)self secondaryBodies];
  v6 = [secondaryBodies countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(secondaryBodies);
        }

        anchorView2 = [*(*(&v11 + 1) + 8 * v9) anchorView];
        [anchorView2 removeFromSuperview];

        ++v9;
      }

      while (v7 != v9);
      v7 = [secondaryBodies countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

+ (id)effectWithDescriptor:(id)descriptor continuationPreview:(id)preview
{
  v50 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  previewCopy = preview;
  primaryPreview = [descriptorCopy primaryPreview];
  target = [primaryPreview target];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65___UIGravityWellEffect_effectWithDescriptor_continuationPreview___block_invoke;
  aBlock[3] = &unk_1E7100718;
  v10 = target;
  v48 = v10;
  v11 = _Block_copy(aBlock);
  v12 = objc_opt_new();
  objc_storeStrong(v12 + 1, descriptor);
  [v12 setContinuationPreview:previewCopy];
  primaryPreview2 = [descriptorCopy primaryPreview];
  v14 = v11[2](v11, primaryPreview2);
  [v12 setPrimaryBody:v14];

  v15 = +[UIDevice currentDevice];
  v16 = _UIContextMenuGetPlatformMetrics([v15 userInterfaceIdiom]);
  [v16 baseMenuOffset];
  [v12 setBaseZOffset:v17];

  secondaryPreviews = [descriptorCopy secondaryPreviews];
  v19 = [secondaryPreviews count];

  if (v19)
  {
    v39 = v12;
    v40 = previewCopy;
    v20 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v41 = descriptorCopy;
    obj = [descriptorCopy secondaryPreviews];
    v21 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v11[2](v11, *(*(&v43 + 1) + 8 * i));
          [v25 positionInPrimaryContainer];
          v27 = v26;
          v29 = v28;
          [v10 center];
          [v25 setDistanceFromPrimaryBody:sqrt((v30 - v27) * (v30 - v27) + (v31 - v29) * (v31 - v29))];
          for (j = 0; j < [v20 count]; ++j)
          {
            v33 = [v20 objectAtIndexedSubscript:{j, v39}];
            [v33 distanceFromPrimaryBody];
            v35 = v34;
            [v25 distanceFromPrimaryBody];
            v37 = v36;

            if (v35 >= v37)
            {
              break;
            }
          }

          [v20 insertObject:v25 atIndex:{j, v39}];
        }

        v22 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v22);
    }

    v12 = v39;
    [v39 setSecondaryBodies:v20];

    previewCopy = v40;
    descriptorCopy = v41;
  }

  return v12;
}

- (NSArray)secondaryBodyPreviews
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  secondaryBodies = [(_UIGravityWellEffect *)self secondaryBodies];
  v5 = [secondaryBodies countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(secondaryBodies);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [UITargetedPreview alloc];
        effectView = [v9 effectView];
        v12 = [(UITargetedPreview *)v10 initWithView:effectView];

        preview = [v9 preview];
        _internalIdentifier = [preview _internalIdentifier];
        [(UITargetedPreview *)v12 set_internalIdentifier:_internalIdentifier];

        [array addObject:v12];
      }

      v6 = [secondaryBodies countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)begin
{
  primaryBody = [(_UIGravityWellEffect *)self primaryBody];
  effectView = [primaryBody effectView];
  window = [effectView window];

  if (!window)
  {
    [(_UIGravityWellEffect *)self _installEffectViews];
  }

  [(_UIGravityWellEffect *)self effectProgress];

  [(_UIGravityWellEffect *)self _updateToProgress:1 state:?];
}

- (void)updateWithProgress:(double)progress
{
  state = [(_UIGravityWellEffect *)self state];

  [(_UIGravityWellEffect *)self _updateToProgress:state state:progress];
}

- (void)end
{
  if (+[UIView areAnimationsEnabled])
  {

    [(_UIGravityWellEffect *)self _updateToProgress:0 state:0.0];
  }

  else
  {
    [(_UIGravityWellEffect *)self _tearDownEffectViews];
    [(_UIGravityWellEffect *)self _performAllCompletions];
    [(_UIGravityWellEffect *)self setEffectProgress:0.0];

    [(_UIGravityWellEffect *)self setState:0];
  }
}

- (id)previewForContinuingToEffectWithPreview:(id)preview
{
  v46 = *MEMORY[0x1E69E9840];
  primaryBody = [(_UIGravityWellEffect *)self primaryBody];
  anchorView = [primaryBody anchorView];

  window = [anchorView window];

  if (window)
  {
    layer = [anchorView layer];
    presentationLayer = [layer presentationLayer];
    v9 = presentationLayer;
    if (presentationLayer)
    {
      layer2 = presentationLayer;
    }

    else
    {
      layer2 = [anchorView layer];
    }

    v13 = layer2;

    memset(&v44, 0, sizeof(v44));
    v37 = v13;
    if (v13)
    {
      [v13 transform];
    }

    else
    {
      memset(&v43, 0, sizeof(v43));
    }

    CATransform3DGetAffineTransform(&v44, &v43);
    v14 = [UIPreviewTarget alloc];
    superview = [anchorView superview];
    v38 = anchorView;
    [anchorView center];
    *&v43.m11 = *&v44.a;
    *&v43.m13 = *&v44.c;
    *&v43.m21 = *&v44.tx;
    v16 = [(UIPreviewTarget *)v14 initWithContainer:superview center:&v43 transform:?];

    primaryBody2 = [(_UIGravityWellEffect *)self primaryBody];
    preview = [primaryBody2 preview];
    v36 = v16;
    preview2 = [preview retargetedPreviewWithTarget:v16];

    primaryBody3 = [(_UIGravityWellEffect *)self primaryBody];
    anchorView2 = [primaryBody3 anchorView];
    layer3 = [anchorView2 layer];

    animationKeys = [layer3 animationKeys];
    [preview2 set_transferrableAnimationKeys:animationKeys];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    _transferrableAnimationKeys = [preview2 _transferrableAnimationKeys];
    v24 = [_transferrableAnimationKeys countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(_transferrableAnimationKeys);
          }

          v28 = *(*(&v39 + 1) + 8 * i);
          v29 = [layer3 animationForKey:v28];
          v30 = [v29 copy];

          if (v30)
          {
            [layer3 removeAnimationForKey:v28];
            view = [preview2 view];
            layer4 = [view layer];
            [layer4 addAnimation:v30 forKey:v28];
          }
        }

        v25 = [_transferrableAnimationKeys countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v25);
    }

    primaryBody4 = v37;
    anchorView = v38;
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (os_variant_has_internal_diagnostics())
      {
        v35 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v43.m11) = 0;
          _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "Presenting while the highlight platter isn't in a window. If you see this, please file a bug against UIKit | Context Menu with reproduction steps.", &v43, 2u);
        }
      }

      else
      {
        v34 = *(__UILogGetCategoryCachedImpl("Assert", &previewForContinuingToEffectWithPreview____s_category) + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v43.m11) = 0;
          _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "Presenting while the highlight platter isn't in a window. If you see this, please file a bug against UIKit | Context Menu with reproduction steps.", &v43, 2u);
        }
      }
    }

    primaryBody4 = [(_UIGravityWellEffect *)self primaryBody];
    preview2 = [primaryBody4 preview];
  }

  return preview2;
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

- (void)_installEffectViews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43___UIGravityWellEffect__installEffectViews__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)_updateToProgress:(double)progress state:(int64_t)state
{
  if ([(_UIGravityWellEffect *)self state]!= 2)
  {
    [(_UIGravityWellEffect *)self effectProgress];
    if (vabdd_f64(v8, progress) > 2.22044605e-16 || [(_UIGravityWellEffect *)self state]!= state)
    {
      [(_UIGravityWellEffect *)self setEffectProgress:progress];
      [(_UIGravityWellEffect *)self setState:state];
      primaryBody = [(_UIGravityWellEffect *)self primaryBody];
      [primaryBody positionInPrimaryContainer];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __48___UIGravityWellEffect__updateToProgress_state___block_invoke;
      aBlock[3] = &unk_1E7100760;
      aBlock[4] = self;
      v16 = primaryBody;
      v26 = v16;
      progressCopy = progress;
      v28 = v11;
      v29 = v13;
      v30 = v15;
      v17 = _Block_copy(aBlock);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __48___UIGravityWellEffect__updateToProgress_state___block_invoke_2;
      v24[3] = &unk_1E7100788;
      v24[4] = self;
      v24[5] = a2;
      v18 = _Block_copy(v24);
      effectView = [v16 effectView];
      traitCollection = [effectView traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      _effectSpringBehavior = [(_UIGravityWellEffect *)self _effectSpringBehavior];
      if (userInterfaceIdiom == 6)
      {
        _criticallyDampedEffectSpringBehavior = [(_UIGravityWellEffect *)self _criticallyDampedEffectSpringBehavior];

        _effectSpringBehavior = _criticallyDampedEffectSpringBehavior;
      }

      [UIView _animateUsingSpringBehavior:_effectSpringBehavior tracking:0 animations:v17 completion:v18];
    }
  }
}

- (id)_effectSpringBehavior
{
  v2 = _effectSpringBehavior___behavior;
  if (!_effectSpringBehavior___behavior)
  {
    v3 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.6 response:0.4];
    v4 = _effectSpringBehavior___behavior;
    _effectSpringBehavior___behavior = v3;

    v2 = _effectSpringBehavior___behavior;
  }

  return v2;
}

- (id)_criticallyDampedEffectSpringBehavior
{
  v2 = _criticallyDampedEffectSpringBehavior___behavior;
  if (!_criticallyDampedEffectSpringBehavior___behavior)
  {
    v3 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
    v4 = _criticallyDampedEffectSpringBehavior___behavior;
    _criticallyDampedEffectSpringBehavior___behavior = v3;

    v2 = _criticallyDampedEffectSpringBehavior___behavior;
  }

  return v2;
}

@end