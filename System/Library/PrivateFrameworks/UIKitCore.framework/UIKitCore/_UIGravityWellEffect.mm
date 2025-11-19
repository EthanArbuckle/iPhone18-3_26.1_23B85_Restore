@interface _UIGravityWellEffect
+ (id)effectWithDescriptor:(id)a3 continuationPreview:(id)a4;
- (NSArray)secondaryBodyPreviews;
- (id)_criticallyDampedEffectSpringBehavior;
- (id)_effectSpringBehavior;
- (id)previewForContinuingToEffectWithPreview:(id)a3;
- (void)_installEffectViews;
- (void)_performAllCompletions;
- (void)_tearDownEffectViews;
- (void)_updateToProgress:(double)a3 state:(int64_t)a4;
- (void)addCompletion:(id)a3;
- (void)begin;
- (void)end;
- (void)endForHandOff;
- (void)updateWithProgress:(double)a3;
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
  v2 = [(_UIGravityWellEffect *)self completions];
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

- (void)_tearDownEffectViews
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(_UIGravityWellEffect *)self primaryBody];
  v4 = [v3 anchorView];
  [v4 removeFromSuperview];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(_UIGravityWellEffect *)self secondaryBodies];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) anchorView];
        [v10 removeFromSuperview];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

+ (id)effectWithDescriptor:(id)a3 continuationPreview:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 primaryPreview];
  v9 = [v8 target];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65___UIGravityWellEffect_effectWithDescriptor_continuationPreview___block_invoke;
  aBlock[3] = &unk_1E7100718;
  v10 = v9;
  v48 = v10;
  v11 = _Block_copy(aBlock);
  v12 = objc_opt_new();
  objc_storeStrong(v12 + 1, a3);
  [v12 setContinuationPreview:v7];
  v13 = [v6 primaryPreview];
  v14 = v11[2](v11, v13);
  [v12 setPrimaryBody:v14];

  v15 = +[UIDevice currentDevice];
  v16 = _UIContextMenuGetPlatformMetrics([v15 userInterfaceIdiom]);
  [v16 baseMenuOffset];
  [v12 setBaseZOffset:v17];

  v18 = [v6 secondaryPreviews];
  v19 = [v18 count];

  if (v19)
  {
    v39 = v12;
    v40 = v7;
    v20 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v41 = v6;
    obj = [v6 secondaryPreviews];
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

    v7 = v40;
    v6 = v41;
  }

  return v12;
}

- (NSArray)secondaryBodyPreviews
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(_UIGravityWellEffect *)self secondaryBodies];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [UITargetedPreview alloc];
        v11 = [v9 effectView];
        v12 = [(UITargetedPreview *)v10 initWithView:v11];

        v13 = [v9 preview];
        v14 = [v13 _internalIdentifier];
        [(UITargetedPreview *)v12 set_internalIdentifier:v14];

        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)begin
{
  v3 = [(_UIGravityWellEffect *)self primaryBody];
  v4 = [v3 effectView];
  v5 = [v4 window];

  if (!v5)
  {
    [(_UIGravityWellEffect *)self _installEffectViews];
  }

  [(_UIGravityWellEffect *)self effectProgress];

  [(_UIGravityWellEffect *)self _updateToProgress:1 state:?];
}

- (void)updateWithProgress:(double)a3
{
  v5 = [(_UIGravityWellEffect *)self state];

  [(_UIGravityWellEffect *)self _updateToProgress:v5 state:a3];
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

- (id)previewForContinuingToEffectWithPreview:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = [(_UIGravityWellEffect *)self primaryBody];
  v5 = [v4 anchorView];

  v6 = [v5 window];

  if (v6)
  {
    v7 = [v5 layer];
    v8 = [v7 presentationLayer];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v5 layer];
    }

    v13 = v10;

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
    v15 = [v5 superview];
    v38 = v5;
    [v5 center];
    *&v43.m11 = *&v44.a;
    *&v43.m13 = *&v44.c;
    *&v43.m21 = *&v44.tx;
    v16 = [(UIPreviewTarget *)v14 initWithContainer:v15 center:&v43 transform:?];

    v17 = [(_UIGravityWellEffect *)self primaryBody];
    v18 = [v17 preview];
    v36 = v16;
    v12 = [v18 retargetedPreviewWithTarget:v16];

    v19 = [(_UIGravityWellEffect *)self primaryBody];
    v20 = [v19 anchorView];
    v21 = [v20 layer];

    v22 = [v21 animationKeys];
    [v12 set_transferrableAnimationKeys:v22];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = [v12 _transferrableAnimationKeys];
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v39 + 1) + 8 * i);
          v29 = [v21 animationForKey:v28];
          v30 = [v29 copy];

          if (v30)
          {
            [v21 removeAnimationForKey:v28];
            v31 = [v12 view];
            v32 = [v31 layer];
            [v32 addAnimation:v30 forKey:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v25);
    }

    v11 = v37;
    v5 = v38;
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

    v11 = [(_UIGravityWellEffect *)self primaryBody];
    v12 = [v11 preview];
  }

  return v12;
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

- (void)_installEffectViews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43___UIGravityWellEffect__installEffectViews__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)_updateToProgress:(double)a3 state:(int64_t)a4
{
  if ([(_UIGravityWellEffect *)self state]!= 2)
  {
    [(_UIGravityWellEffect *)self effectProgress];
    if (vabdd_f64(v8, a3) > 2.22044605e-16 || [(_UIGravityWellEffect *)self state]!= a4)
    {
      [(_UIGravityWellEffect *)self setEffectProgress:a3];
      [(_UIGravityWellEffect *)self setState:a4];
      v9 = [(_UIGravityWellEffect *)self primaryBody];
      [v9 positionInPrimaryContainer];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __48___UIGravityWellEffect__updateToProgress_state___block_invoke;
      aBlock[3] = &unk_1E7100760;
      aBlock[4] = self;
      v16 = v9;
      v26 = v16;
      v27 = a3;
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
      v19 = [v16 effectView];
      v20 = [v19 traitCollection];
      v21 = [v20 userInterfaceIdiom];

      v22 = [(_UIGravityWellEffect *)self _effectSpringBehavior];
      if (v21 == 6)
      {
        v23 = [(_UIGravityWellEffect *)self _criticallyDampedEffectSpringBehavior];

        v22 = v23;
      }

      [UIView _animateUsingSpringBehavior:v22 tracking:0 animations:v17 completion:v18];
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