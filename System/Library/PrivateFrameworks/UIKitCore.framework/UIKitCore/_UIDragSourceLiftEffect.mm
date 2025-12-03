@interface _UIDragSourceLiftEffect
- (_UIDragSourceLiftEffect)init;
- (void)_addworkaroundForPropertyAnimator:(id)animator inView:(id)view;
- (void)_installInteractionPlattersForOperation:(id)operation;
- (void)_setInteractionEffectsLifted:(BOOL)lifted withOperation:(id)operation;
- (void)_uninstallInteractionPlattersForOperation:(id)operation;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation _UIDragSourceLiftEffect

- (_UIDragSourceLiftEffect)init
{
  v6.receiver = self;
  v6.super_class = _UIDragSourceLiftEffect;
  v2 = [(_UIDragSourceLiftEffect *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    liftOperationByContext = v2->_liftOperationByContext;
    v2->_liftOperationByContext = strongToStrongObjectsMapTable;

    v2->_scrollCancelling = 0;
  }

  return v2;
}

- (void)_addworkaroundForPropertyAnimator:(id)animator inView:(id)view
{
  viewCopy = view;
  animatorCopy = animator;
  v7 = [[UIView alloc] initWithFrame:-500.0, -500.0, 0.0, 0.0];
  [(UIView *)v7 setUserInteractionEnabled:0];
  [(UIView *)v7 setAlpha:0.0];
  [viewCopy addSubview:v7];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68___UIDragSourceLiftEffect__addworkaroundForPropertyAnimator_inView___block_invoke;
  v12[3] = &unk_1E70F3590;
  v8 = v7;
  v13 = v8;
  [animatorCopy addAnimations:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___UIDragSourceLiftEffect__addworkaroundForPropertyAnimator_inView___block_invoke_3;
  v10[3] = &unk_1E70F5DB8;
  v11 = v8;
  v9 = v8;
  [animatorCopy addCompletion:v10];
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  interactionCopy = interaction;
  contextCopy = context;
  state = [contextCopy state];
  v9 = [(NSMapTable *)self->_liftOperationByContext objectForKey:contextCopy];
  if (!v9)
  {
    if (!state)
    {
      v9 = 0;
      goto LABEL_16;
    }

    v10 = [_UIDragLiftEffectOperation alloc];
    [(_UIDragSourceLiftEffect *)self liftAnimationDuration];
    v12 = v11;
    liftTimingParameters = [(_UIDragSourceLiftEffect *)self liftTimingParameters];
    v9 = [(_UIDragLiftEffectOperation *)v10 initWithLiftAnimationDuration:liftTimingParameters liftTimingParameters:v12];

    [(_UIDragLiftEffectOperation *)v9 setContext:contextCopy];
    [(_UIDragLiftEffectOperation *)v9 setInteraction:interactionCopy];
    propertyAnimator = [(_UIDragLiftEffectOperation *)v9 propertyAnimator];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60___UIDragSourceLiftEffect_interaction_didChangeWithContext___block_invoke;
    v26[3] = &unk_1E70F3590;
    v15 = contextCopy;
    v27 = v15;
    [propertyAnimator addAnimations:v26];

    propertyAnimator2 = [(_UIDragLiftEffectOperation *)v9 propertyAnimator];
    completion = [v15 completion];
    [propertyAnimator2 addCompletion:completion];

    propertyAnimator3 = [(_UIDragLiftEffectOperation *)v9 propertyAnimator];
    view = [interactionCopy view];
    _window = [view _window];
    [(_UIDragSourceLiftEffect *)self _addworkaroundForPropertyAnimator:propertyAnimator3 inView:_window];

    [(NSMapTable *)self->_liftOperationByContext setObject:v9 forKey:v15];
  }

  switch(state)
  {
    case 2:
      [(_UIDragSourceLiftEffect *)self _uninstallInteractionPlattersForOperation:v9];
      propertyAnimator4 = [(_UIDragLiftEffectOperation *)v9 propertyAnimator];
      if ([propertyAnimator4 state])
      {
        [propertyAnimator4 setPausesOnCompletion:0];
        [propertyAnimator4 stopAnimation:0];
        [propertyAnimator4 finishAnimationAtPosition:0];
      }

      break;
    case 1:
      context = [(_UIDragLiftEffectOperation *)v9 context];
      shouldAnimateLift = [context shouldAnimateLift];

      if (shouldAnimateLift)
      {
        [(_UIDragSourceLiftEffect *)self _installInteractionPlattersForOperation:v9];
      }

      selfCopy2 = self;
      v22 = 1;
      goto LABEL_11;
    case 0:
      selfCopy2 = self;
      v22 = 0;
LABEL_11:
      [(_UIDragSourceLiftEffect *)selfCopy2 _setInteractionEffectsLifted:v22 withOperation:v9];
      break;
  }

LABEL_16:
}

- (void)_installInteractionPlattersForOperation:(id)operation
{
  v61 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  items = [operationCopy items];

  if (!items)
  {
    selfCopy = self;
    v47 = objc_opt_new();
    v6 = objc_opt_new();
    v44 = operationCopy;
    context = [operationCopy context];
    items2 = [context items];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = items2;
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

          _targetedLiftPreview = [*(*(&v56 + 1) + 8 * v13) _targetedLiftPreview];
          view = [_targetedLiftPreview view];
          if (view && ([v6 containsObject:view] & 1) == 0)
          {
            [v6 addObject:view];
            window = [view window];

            if (!window)
            {
              target = [_targetedLiftPreview target];
              container = [target container];
              [container addSubview:view];
            }

            _duiPreview = [_targetedLiftPreview _duiPreview];
            v20 = [[_UIPlatterView alloc] initWithDUIPreview:_duiPreview imageComponent:0 sourceView:view];
            [(UIView *)v20 setUserInteractionEnabled:0];
            [(_UIPlatterView *)v20 setSourceView:view];
            parameters = [_targetedLiftPreview parameters];
            _previewMode = [parameters _previewMode];

            v23 = 0.1;
            if (_previewMode != 1)
            {
              [_duiPreview liftAlpha];
            }

            v50 = _duiPreview;
            [(UIView *)v20 setAlpha:v23];
            [(_UIPlatterView *)v20 setAppliesOriginalRotation:1];
            target2 = [_targetedLiftPreview target];
            container2 = [target2 container];

            [(_UIPlatterView *)v20 takeCounterTransformsToAddToContainer:container2];
            _previewContainer = [_targetedLiftPreview _previewContainer];
            if (_previewContainer)
            {
              [(UIView *)v20 bounds];
              [_previewContainer setBounds:?];
              target3 = [_targetedLiftPreview target];
              [target3 center];
              [_previewContainer setCenter:?];

              [container2 addSubview:_previewContainer];
              sourceView = [(_UIPlatterView *)v20 sourceView];
              v29 = *(MEMORY[0x1E695EFD0] + 16);
              v55[0] = *MEMORY[0x1E695EFD0];
              v55[1] = v29;
              v55[2] = *(MEMORY[0x1E695EFD0] + 32);
              [_previewContainer _preparePreviewContainerWithPreview:v20 source:sourceView initialTransform:v55];

              layer = [view layer];
              [layer zPosition];
              v32 = v31 + 1.0 + v11;
              [_previewContainer layer];
              v34 = v33 = v11;
              [v34 setZPosition:v32];
            }

            else
            {
              [view layer];
              v35 = v33 = v11;
              [v35 zPosition];
              v37 = v36 + 1.0 + v33;
              layer2 = [(UIView *)v20 layer];
              [layer2 setZPosition:v37];

              target4 = [_targetedLiftPreview target];
              [target4 center];
              [(UIView *)v20 setCenter:?];

              [container2 addSubview:v20];
            }

            [(UIView *)v20 layoutIfNeeded];
            v40 = objc_opt_new();
            [v40 setPreviewContainer:_previewContainer];
            [v40 setPlatterView:v20];
            [v40 setTargetedPreview:_targetedLiftPreview];
            [v40 setSourceViewWasAdded:window == 0];
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

    operationCopy = v44;
    [v44 setItems:v47];
    propertyAnimator = [v44 propertyAnimator];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __67___UIDragSourceLiftEffect__installInteractionPlattersForOperation___block_invoke;
    v53[3] = &unk_1E70F3590;
    v42 = v44;
    v54 = v42;
    [propertyAnimator addAnimations:v53];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __67___UIDragSourceLiftEffect__installInteractionPlattersForOperation___block_invoke_3;
    v51[3] = &unk_1E71003B0;
    v51[4] = selfCopy;
    v52 = v42;
    [propertyAnimator addCompletion:v51];
  }
}

- (void)_uninstallInteractionPlattersForOperation:(id)operation
{
  v22 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  items = [operationCopy items];
  v6 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        previewContainer = [v10 previewContainer];

        if (previewContainer)
        {
          [v10 previewContainer];
        }

        else
        {
          [v10 platterView];
        }
        v12 = ;
        [v12 removeFromSuperview];

        targetedPreview = [v10 targetedPreview];
        view = [targetedPreview view];

        if ([v10 sourceViewWasAdded])
        {
          [view removeFromSuperview];
        }
      }

      v7 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [operationCopy setItems:0];
  liftOperationByContext = self->_liftOperationByContext;
  context = [operationCopy context];
  [(NSMapTable *)liftOperationByContext removeObjectForKey:context];
}

- (void)_setInteractionEffectsLifted:(BOOL)lifted withOperation:(id)operation
{
  liftedCopy = lifted;
  operationCopy = operation;
  context = [operationCopy context];
  propertyAnimator = [operationCopy propertyAnimator];
  shouldAnimateLift = [context shouldAnimateLift];
  if ([context state])
  {
    v9 = 1;
  }

  else
  {
    v9 = liftedCopy;
  }

  if (shouldAnimateLift)
  {
    if (v9)
    {
      if (liftedCopy)
      {
        [propertyAnimator setPausesOnCompletion:1];
        if ([propertyAnimator isReversed])
        {
          if ([propertyAnimator isRunning])
          {
            [propertyAnimator pauseAnimation];
          }

          [propertyAnimator setReversed:0];
          timingParameters = [propertyAnimator timingParameters];
          [propertyAnimator continueAnimationWithTimingParameters:timingParameters durationFactor:1.0];
        }

        else
        {
          [propertyAnimator startAnimation];
        }
      }
    }

    else
    {
      [propertyAnimator setPausesOnCompletion:0];
      if ([propertyAnimator isRunning])
      {
        [propertyAnimator pauseAnimation];
      }

      [propertyAnimator setReversed:1];
      timingParameters2 = [propertyAnimator timingParameters];
      v12 = [(_UIDragSourceLiftEffect *)self reversedTimingParametersForTimingParameters:timingParameters2];

      [propertyAnimator continueAnimationWithTimingParameters:v12 durationFactor:1.0];
      [(_UIDragSourceLiftEffect *)self setScrollCancelling:0];
      items = [operationCopy items];
      v14 = [items count];

      if (!v14)
      {
        [propertyAnimator stopAnimation:0];
        [propertyAnimator finishAnimationAtPosition:1];
      }
    }
  }

  else if (v9)
  {
    [propertyAnimator pauseAnimation];
  }

  else
  {
    [propertyAnimator stopAnimation:0];
    [propertyAnimator finishAnimationAtPosition:1];
    [(_UIDragSourceLiftEffect *)self _uninstallInteractionPlattersForOperation:operationCopy];
  }
}

@end