@interface _UIDragSourceLiftEffect
- (_UIDragSourceLiftEffect)init;
- (void)_addworkaroundForPropertyAnimator:(id)a3 inView:(id)a4;
- (void)_installInteractionPlattersForOperation:(id)a3;
- (void)_setInteractionEffectsLifted:(BOOL)a3 withOperation:(id)a4;
- (void)_uninstallInteractionPlattersForOperation:(id)a3;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
@end

@implementation _UIDragSourceLiftEffect

- (_UIDragSourceLiftEffect)init
{
  v6.receiver = self;
  v6.super_class = _UIDragSourceLiftEffect;
  v2 = [(_UIDragSourceLiftEffect *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    liftOperationByContext = v2->_liftOperationByContext;
    v2->_liftOperationByContext = v3;

    v2->_scrollCancelling = 0;
  }

  return v2;
}

- (void)_addworkaroundForPropertyAnimator:(id)a3 inView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[UIView alloc] initWithFrame:-500.0, -500.0, 0.0, 0.0];
  [(UIView *)v7 setUserInteractionEnabled:0];
  [(UIView *)v7 setAlpha:0.0];
  [v5 addSubview:v7];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68___UIDragSourceLiftEffect__addworkaroundForPropertyAnimator_inView___block_invoke;
  v12[3] = &unk_1E70F3590;
  v8 = v7;
  v13 = v8;
  [v6 addAnimations:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___UIDragSourceLiftEffect__addworkaroundForPropertyAnimator_inView___block_invoke_3;
  v10[3] = &unk_1E70F5DB8;
  v11 = v8;
  v9 = v8;
  [v6 addCompletion:v10];
}

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 state];
  v9 = [(NSMapTable *)self->_liftOperationByContext objectForKey:v7];
  if (!v9)
  {
    if (!v8)
    {
      v9 = 0;
      goto LABEL_16;
    }

    v10 = [_UIDragLiftEffectOperation alloc];
    [(_UIDragSourceLiftEffect *)self liftAnimationDuration];
    v12 = v11;
    v13 = [(_UIDragSourceLiftEffect *)self liftTimingParameters];
    v9 = [(_UIDragLiftEffectOperation *)v10 initWithLiftAnimationDuration:v13 liftTimingParameters:v12];

    [(_UIDragLiftEffectOperation *)v9 setContext:v7];
    [(_UIDragLiftEffectOperation *)v9 setInteraction:v6];
    v14 = [(_UIDragLiftEffectOperation *)v9 propertyAnimator];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60___UIDragSourceLiftEffect_interaction_didChangeWithContext___block_invoke;
    v26[3] = &unk_1E70F3590;
    v15 = v7;
    v27 = v15;
    [v14 addAnimations:v26];

    v16 = [(_UIDragLiftEffectOperation *)v9 propertyAnimator];
    v17 = [v15 completion];
    [v16 addCompletion:v17];

    v18 = [(_UIDragLiftEffectOperation *)v9 propertyAnimator];
    v19 = [v6 view];
    v20 = [v19 _window];
    [(_UIDragSourceLiftEffect *)self _addworkaroundForPropertyAnimator:v18 inView:v20];

    [(NSMapTable *)self->_liftOperationByContext setObject:v9 forKey:v15];
  }

  switch(v8)
  {
    case 2:
      [(_UIDragSourceLiftEffect *)self _uninstallInteractionPlattersForOperation:v9];
      v25 = [(_UIDragLiftEffectOperation *)v9 propertyAnimator];
      if ([v25 state])
      {
        [v25 setPausesOnCompletion:0];
        [v25 stopAnimation:0];
        [v25 finishAnimationAtPosition:0];
      }

      break;
    case 1:
      v23 = [(_UIDragLiftEffectOperation *)v9 context];
      v24 = [v23 shouldAnimateLift];

      if (v24)
      {
        [(_UIDragSourceLiftEffect *)self _installInteractionPlattersForOperation:v9];
      }

      v21 = self;
      v22 = 1;
      goto LABEL_11;
    case 0:
      v21 = self;
      v22 = 0;
LABEL_11:
      [(_UIDragSourceLiftEffect *)v21 _setInteractionEffectsLifted:v22 withOperation:v9];
      break;
  }

LABEL_16:
}

- (void)_installInteractionPlattersForOperation:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 items];

  if (!v5)
  {
    v43 = self;
    v47 = objc_opt_new();
    v6 = objc_opt_new();
    v44 = v4;
    v7 = [v4 context];
    v8 = [v7 items];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v57;
      v45 = *v57;
      v46 = v6;
      do
      {
        v13 = 0;
        v48 = v10;
        do
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v56 + 1) + 8 * v13) _targetedLiftPreview];
          v15 = [v14 view];
          if (v15 && ([v6 containsObject:v15] & 1) == 0)
          {
            [v6 addObject:v15];
            v16 = [v15 window];

            if (!v16)
            {
              v17 = [v14 target];
              v18 = [v17 container];
              [v18 addSubview:v15];
            }

            v19 = [v14 _duiPreview];
            v20 = [[_UIPlatterView alloc] initWithDUIPreview:v19 imageComponent:0 sourceView:v15];
            [(UIView *)v20 setUserInteractionEnabled:0];
            [(_UIPlatterView *)v20 setSourceView:v15];
            v21 = [v14 parameters];
            v22 = [v21 _previewMode];

            v23 = 0.1;
            if (v22 != 1)
            {
              [v19 liftAlpha];
            }

            v50 = v19;
            [(UIView *)v20 setAlpha:v23];
            [(_UIPlatterView *)v20 setAppliesOriginalRotation:1];
            v24 = [v14 target];
            v25 = [v24 container];

            [(_UIPlatterView *)v20 takeCounterTransformsToAddToContainer:v25];
            v26 = [v14 _previewContainer];
            if (v26)
            {
              [(UIView *)v20 bounds];
              [v26 setBounds:?];
              v27 = [v14 target];
              [v27 center];
              [v26 setCenter:?];

              [v25 addSubview:v26];
              v28 = [(_UIPlatterView *)v20 sourceView];
              v29 = *(MEMORY[0x1E695EFD0] + 16);
              v55[0] = *MEMORY[0x1E695EFD0];
              v55[1] = v29;
              v55[2] = *(MEMORY[0x1E695EFD0] + 32);
              [v26 _preparePreviewContainerWithPreview:v20 source:v28 initialTransform:v55];

              v30 = [v15 layer];
              [v30 zPosition];
              v32 = v31 + 1.0 + v11;
              [v26 layer];
              v34 = v33 = v11;
              [v34 setZPosition:v32];
            }

            else
            {
              [v15 layer];
              v35 = v33 = v11;
              [v35 zPosition];
              v37 = v36 + 1.0 + v33;
              v38 = [(UIView *)v20 layer];
              [v38 setZPosition:v37];

              v39 = [v14 target];
              [v39 center];
              [(UIView *)v20 setCenter:?];

              [v25 addSubview:v20];
            }

            [(UIView *)v20 layoutIfNeeded];
            v40 = objc_opt_new();
            [v40 setPreviewContainer:v26];
            [v40 setPlatterView:v20];
            [v40 setTargetedPreview:v14];
            [v40 setSourceViewWasAdded:v16 == 0];
            [v50 liftAlpha];
            [v40 setLiftAlpha:?];
            [v47 addObject:v40];

            v12 = v45;
            v6 = v46;
            v11 = v33 + 1;
            v10 = v48;
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v10);
    }

    v4 = v44;
    [v44 setItems:v47];
    v41 = [v44 propertyAnimator];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __67___UIDragSourceLiftEffect__installInteractionPlattersForOperation___block_invoke;
    v53[3] = &unk_1E70F3590;
    v42 = v44;
    v54 = v42;
    [v41 addAnimations:v53];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __67___UIDragSourceLiftEffect__installInteractionPlattersForOperation___block_invoke_3;
    v51[3] = &unk_1E71003B0;
    v51[4] = v43;
    v52 = v42;
    [v41 addCompletion:v51];
  }
}

- (void)_uninstallInteractionPlattersForOperation:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 items];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 previewContainer];

        if (v11)
        {
          [v10 previewContainer];
        }

        else
        {
          [v10 platterView];
        }
        v12 = ;
        [v12 removeFromSuperview];

        v13 = [v10 targetedPreview];
        v14 = [v13 view];

        if ([v10 sourceViewWasAdded])
        {
          [v14 removeFromSuperview];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [v4 setItems:0];
  liftOperationByContext = self->_liftOperationByContext;
  v16 = [v4 context];
  [(NSMapTable *)liftOperationByContext removeObjectForKey:v16];
}

- (void)_setInteractionEffectsLifted:(BOOL)a3 withOperation:(id)a4
{
  v4 = a3;
  v15 = a4;
  v6 = [v15 context];
  v7 = [v15 propertyAnimator];
  v8 = [v6 shouldAnimateLift];
  if ([v6 state])
  {
    v9 = 1;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    if (v9)
    {
      if (v4)
      {
        [v7 setPausesOnCompletion:1];
        if ([v7 isReversed])
        {
          if ([v7 isRunning])
          {
            [v7 pauseAnimation];
          }

          [v7 setReversed:0];
          v10 = [v7 timingParameters];
          [v7 continueAnimationWithTimingParameters:v10 durationFactor:1.0];
        }

        else
        {
          [v7 startAnimation];
        }
      }
    }

    else
    {
      [v7 setPausesOnCompletion:0];
      if ([v7 isRunning])
      {
        [v7 pauseAnimation];
      }

      [v7 setReversed:1];
      v11 = [v7 timingParameters];
      v12 = [(_UIDragSourceLiftEffect *)self reversedTimingParametersForTimingParameters:v11];

      [v7 continueAnimationWithTimingParameters:v12 durationFactor:1.0];
      [(_UIDragSourceLiftEffect *)self setScrollCancelling:0];
      v13 = [v15 items];
      v14 = [v13 count];

      if (!v14)
      {
        [v7 stopAnimation:0];
        [v7 finishAnimationAtPosition:1];
      }
    }
  }

  else if (v9)
  {
    [v7 pauseAnimation];
  }

  else
  {
    [v7 stopAnimation:0];
    [v7 finishAnimationAtPosition:1];
    [(_UIDragSourceLiftEffect *)self _uninstallInteractionPlattersForOperation:v15];
  }
}

@end