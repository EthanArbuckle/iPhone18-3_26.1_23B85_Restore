@interface _UIPreviewInteractionHighlighter
- (UIView)customContainerView;
- (UIView)view;
- (_UIPreviewInteractionHighlighter)initWithView:(id)view;
- (void)_animateAlongsideViewControllerPresentationDismiss;
- (void)_animateForDelayedViewControllerPresentation;
- (void)_applyHighlightEffectsToViewControllerDuringCancellation:(id)cancellation;
- (void)_delayedViewControllerPresentationDidCancel;
- (void)_finalizeAfterInteraction;
- (void)_finalizeAfterInteractionIfNeeded;
- (void)_prepareAccessoryViewsForScrollView:(id)view environment:(id)environment;
- (void)_prepareContentEffectsForInteraction:(id)interaction;
- (void)_prepareForInteraction:(id)interaction;
- (void)_prepareForViewControllerPresentation:(id)presentation;
- (void)_setHighlighted:(BOOL)highlighted forViewIfNeeded:(id)needed;
- (void)_updateFromInteraction:(id)interaction fractionComplete:(double)complete ended:(BOOL)ended;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation _UIPreviewInteractionHighlighter

- (_UIPreviewInteractionHighlighter)initWithView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPreviewInteractionHighlighter.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v16.receiver = self;
  v16.super_class = _UIPreviewInteractionHighlighter;
  v6 = [(_UIPreviewInteractionHighlighter *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_view, viewCopy);
    *&v7->_shouldApplyEffectsOnProxyView = 257;
    v7->_shouldApplyBackgroundEffects = 1;
    v7->_cancelsInteractionWhenScrolling = 1;
    v7->_preferredAnimationStyle = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *&v7->_preferredMinimumScale = _Q0;
    v13 = v7;
  }

  return v7;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  interactionCopy = interaction;
  contextCopy = context;
  ended = [contextCopy ended];
  v8 = ended;
  if (!self->_active && (ended & 1) == 0)
  {
    [(_UIPreviewInteractionHighlighter *)self _prepareForInteraction:interactionCopy];
  }

  [contextCopy progress];
  [(_UIPreviewInteractionHighlighter *)self _updateFromInteraction:interactionCopy fractionComplete:v8 ended:?];
  self->_active = v8 ^ 1;
}

- (void)_prepareForInteraction:(id)interaction
{
  obj = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  objc_storeWeak(&self->_interaction, obj);
  if ([(_UIPreviewInteractionHighlighter *)self shouldApplyEffectsOnProxyView])
  {
    v5 = objc_loadWeakRetained(&self->_customContainerView);

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_customContainerView);
      v7 = [_UIInteractiveHighlightEnvironment interactiveHighlightEnvironmentForContainerView:v6];
    }

    else
    {
      v7 = [_UIInteractiveHighlightEnvironment requestInteractiveHighlightEnvironmentForView:WeakRetained];
    }

    customBackgroundEffectView = [(_UIPreviewInteractionHighlighter *)self customBackgroundEffectView];
    [v7 setCustomBackgroundEffectView:customBackgroundEffectView];

    backgroundEffectApplyBlock = [(_UIPreviewInteractionHighlighter *)self backgroundEffectApplyBlock];
    [v7 setBackgroundEffectApplyBlock:backgroundEffectApplyBlock];

    v10 = [v7 interactiveHighlightEffectForView:WeakRetained options:self->_shouldTransferViewOwnership];
    interactiveHighlightEffect = self->_interactiveHighlightEffect;
    self->_interactiveHighlightEffect = v10;

    portalView = [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect portalView];
    v13 = portalView;
    if (portalView)
    {
      [portalView setHidesSourceView:1];
      [v13 setHidden:0];
    }

    _containingScrollView = [WeakRetained _containingScrollView];
    if (_containingScrollView)
    {
      [(_UIPreviewInteractionHighlighter *)self _prepareAccessoryViewsForScrollView:_containingScrollView environment:v7];
    }

    _viewControllerForAncestor = [WeakRetained _viewControllerForAncestor];
    navigationController = [_viewControllerForAncestor navigationController];
    v17 = 0.0;
    if (navigationController)
    {
      v18 = navigationController;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      if (isKindOfClass)
      {
        view = [_viewControllerForAncestor view];
        [view safeAreaInsets];
        v25 = v24;
        v21 = v26;
        v20 = v27;
        v17 = v28;

        view2 = [_viewControllerForAncestor view];
        [view2 _currentScreenScale];
        v31 = v30;

        v32 = 1.0;
        if (v31 > 0.0)
        {
          v32 = 1.0 / v31;
        }

        v22 = v25 + v32;
      }
    }

    else
    {
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_containingScrollView _indexBarExtentFromEdge];
      if (v17 < v33)
      {
        v17 = v33;
      }
    }

    [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect setPreferredContentInsets:v22, v21, v20, v17];
  }

  if ([(_UIPreviewInteractionHighlighter *)self shouldApplyContentEffects])
  {
    [(_UIPreviewInteractionHighlighter *)self _prepareContentEffectsForInteraction:obj];
  }
}

- (void)_updateFromInteraction:(id)interaction fractionComplete:(double)complete ended:(BOOL)ended
{
  endedCopy = ended;
  interactionCopy = interaction;
  v9 = self->_interactiveHighlightEffect;
  if ([(_UIPreviewInteractionHighlighter *)self shouldApplyContentEffects])
  {
    self->_animatesContentEffects = 1;
    WeakRetained = objc_loadWeakRetained(&self->_compatibilityHighlightView);

    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained(&self->_compatibilityHighlightView);
      [(_UIPreviewInteractionHighlighter *)self _setHighlighted:!endedCopy forViewIfNeeded:v11];
    }

    if (endedCopy)
    {
      shouldEndWithCancelAnimation = [(_UIPreviewInteractionHighlighter *)self shouldEndWithCancelAnimation];
      if ([(_UIPreviewInteractionHighlighter *)self clickEffectPhase])
      {
        v13 = 22.0;
LABEL_19:
        v14 = 500.0;
        goto LABEL_24;
      }

      if (self->_preferredAnimationStyle == 1)
      {
        if (shouldEndWithCancelAnimation)
        {
          v13 = 25.0;
          v14 = 1500.0;
          goto LABEL_24;
        }

        v14 = 500.0;
LABEL_21:
        if (endedCopy)
        {
          v13 = complete * 10.0 + 35.0 + 10.0;
        }

        else
        {
          v13 = complete * 10.0 + 35.0;
        }

        goto LABEL_24;
      }

      if (shouldEndWithCancelAnimation)
      {
        v13 = 15.0;
        v14 = 1000.0;
        goto LABEL_24;
      }
    }

    else
    {
      if ([(_UIPreviewInteractionHighlighter *)self clickEffectPhase])
      {
        v14 = dbl_18A680E40[complete > 0.95];
        v13 = 26.0;
LABEL_24:
        uUID = [MEMORY[0x1E696AFB0] UUID];
        v16 = [uUID copy];
        contentAnimationIdentifier = self->_contentAnimationIdentifier;
        self->_contentAnimationIdentifier = v16;

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __82___UIPreviewInteractionHighlighter__updateFromInteraction_fractionComplete_ended___block_invoke;
        v39[3] = &unk_1E7101EF0;
        v39[4] = self;
        v40 = interactionCopy;
        completeCopy = complete;
        v43 = endedCopy;
        v41 = v9;
        v31 = MEMORY[0x1E69E9820];
        v32 = 3221225472;
        v33 = __82___UIPreviewInteractionHighlighter__updateFromInteraction_fractionComplete_ended___block_invoke_2;
        v34 = &unk_1E7108EC8;
        selfCopy = self;
        v36 = uUID;
        v38 = endedCopy;
        v37 = v40;
        v18 = uUID;
        [UIView _animateUsingSpringWithTension:0 friction:v39 interactive:&v31 animations:v14 completion:v13];

        goto LABEL_25;
      }

      if (self->_preferredAnimationStyle == 1)
      {
        v14 = 1000.0;
        goto LABEL_21;
      }
    }

    if (endedCopy)
    {
      v13 = complete * 4.0 + 18.0 + 4.0;
    }

    else
    {
      v13 = complete * 4.0 + 18.0;
    }

    goto LABEL_19;
  }

LABEL_25:
  if ([(_UIPreviewInteractionHighlighter *)self shouldApplyEffectsOnProxyView]&& [(_UIPreviewInteractionHighlighter *)self shouldApplyBackgroundEffects])
  {
    if (endedCopy)
    {
      self->_animatesBackgroundEffects = 1;
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __82___UIPreviewInteractionHighlighter__updateFromInteraction_fractionComplete_ended___block_invoke_3;
      v29 = &unk_1E70F3FD8;
      selfCopy2 = self;
      v19 = 0.0;
      v20 = &v26;
      v21 = v9;
      v22 = 0;
    }

    else
    {
      clickEffectPhase = [(_UIPreviewInteractionHighlighter *)self clickEffectPhase];
      shouldApplyBackgroundEffects = [(_UIPreviewInteractionHighlighter *)self shouldApplyBackgroundEffects];
      v19 = 0.0;
      if (shouldApplyBackgroundEffects && clickEffectPhase != 1)
      {
        if ([(_UIPreviewInteractionHighlighter *)self clickEffectPhase]== 2)
        {
          v19 = 1.2;
        }

        else
        {
          v25 = (complete + -0.3) * 1.2 / 0.7;
          v19 = v25 + 0.0;
          if (v25 > 1.2)
          {
            v19 = (log10(v19 / 1.2) + 1.0) * 1.2;
          }
        }

        if (v19 < 0.0)
        {
          v19 = 0.0;
        }
      }

      v20 = &__block_literal_global_464;
      v21 = v9;
      v22 = 1;
    }

    [(_UIInteractiveHighlightEffect *)v21 applyBackgroundEffectWithMagnitude:v22 interactive:v20 completion:v19, v26, v27, v28, v29, selfCopy2, v31, v32, v33, v34, selfCopy];
  }
}

- (void)_finalizeAfterInteractionIfNeeded
{
  if (!self->_animatesContentEffects && !self->_animatesBackgroundEffects)
  {
    [(_UIPreviewInteractionHighlighter *)self _finalizeAfterInteraction];
  }
}

- (void)_finalizeAfterInteraction
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(self->_privateCompletionBlock);
  privateCompletionBlock = self->_privateCompletionBlock;
  self->_privateCompletionBlock = 0;

  if (v3)
  {
    v3[2](v3);
  }

  v5 = _Block_copy(self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  if (v5)
  {
    v5[2](v5);
  }

  [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect finalizeEffect];
  interactiveHighlightEffect = self->_interactiveHighlightEffect;
  self->_interactiveHighlightEffect = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_accessoryHighlightEffects;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) finalizeEffect];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  accessoryHighlightEffects = self->_accessoryHighlightEffects;
  self->_accessoryHighlightEffects = 0;

  [(_UIInteractiveHighlightEffect *)self->_presentationControllerHighlightEffect finalizeEffect];
  presentationControllerHighlightEffect = self->_presentationControllerHighlightEffect;
  self->_presentationControllerHighlightEffect = 0;
}

- (void)_prepareForViewControllerPresentation:(id)presentation
{
  interactiveHighlightEffect = self->_interactiveHighlightEffect;
  presentationCopy = presentation;
  portalView = [(_UIInteractiveHighlightEffect *)interactiveHighlightEffect portalView];
  LODWORD(interactiveHighlightEffect) = [presentationCopy shouldUpdateFromViewBeforePresentation];

  if (interactiveHighlightEffect)
  {
    sourceView = [portalView sourceView];
    effectView = [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect effectView];
    [sourceView bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    superview = [effectView superview];
    [sourceView convertRect:superview toCoordinateSpace:{v9, v11, v13, v15}];
    [effectView setFrame:?];
  }

  [portalView setMatchesPosition:0];
  environment = [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect environment];
  [environment setHidden:0 animated:1 completion:0];
  contentView = [environment contentView];
  [contentView setUserInteractionEnabled:1];
}

- (void)_animateAlongsideViewControllerPresentationDismiss
{
  environment = [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect environment];
  contentView = [environment contentView];
  [contentView setUserInteractionEnabled:0];

  portalView = [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect portalView];
  [portalView setMatchesPosition:1];

  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  [(_UIPreviewInteractionHighlighter *)self _updateFromInteraction:WeakRetained fractionComplete:1 ended:0.0];
}

- (void)_animateForDelayedViewControllerPresentation
{
  environment = [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect environment];
  [environment setHidden:1 animated:1 completion:0];
}

- (void)_delayedViewControllerPresentationDidCancel
{
  environment = [(_UIInteractiveHighlightEffect *)self->_interactiveHighlightEffect environment];
  [environment reset];
  [(_UIPreviewInteractionHighlighter *)self _finalizeAfterInteraction];
}

- (void)_applyHighlightEffectsToViewControllerDuringCancellation:(id)cancellation
{
  transitionCoordinator = [cancellation transitionCoordinator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93___UIPreviewInteractionHighlighter__applyHighlightEffectsToViewControllerDuringCancellation___block_invoke;
  v5[3] = &unk_1E70F3B98;
  v5[4] = self;
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
}

- (void)_prepareContentEffectsForInteraction:(id)interaction
{
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained conformsToProtocol:&unk_1EFF2B120];
  v7 = WeakRetained;
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __73___UIPreviewInteractionHighlighter__prepareContentEffectsForInteraction___block_invoke;
      v26 = &unk_1E70F35B8;
      v27 = v7;
      v28 = interactionCopy;
      [UIView performWithoutAnimation:&v23];
    }

    if (objc_opt_respondsToSelector())
    {
      self->_preferredAnimationStyle = [v7 _preferredHighlightAnimationStyleForInteraction:interactionCopy];
    }

    objc_storeWeak(&self->_interactiveHighlightView, v7);
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_storeWeak(&self->_compatibilityHighlightView, v7);
  }

LABEL_11:
  [v7 frame];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v13 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v14 = CGRectGetHeight(v30);
  if (v13 >= v14)
  {
    v14 = v13;
  }

  v15 = (v14 + -153.0) * -0.016 / 153.0 + 1.04;
  if (v15 < 1.024)
  {
    v15 = 1.024;
  }

  self->_preferredMinimumScale = v15;
  [v7 frame];
  v16 = v31.origin.x;
  v17 = v31.origin.y;
  v18 = v31.size.width;
  v19 = v31.size.height;
  v20 = CGRectGetWidth(v31);
  v32.origin.x = v16;
  v32.origin.y = v17;
  v32.size.width = v18;
  v32.size.height = v19;
  v21 = CGRectGetHeight(v32);
  if (v20 >= v21)
  {
    v21 = v20;
  }

  v22 = (v21 + -153.0) * -0.13 / 229.5 + 1.16;
  if (v22 < 1.03)
  {
    v22 = 1.03;
  }

  self->_preferredMaximumScale = v22;
}

- (void)_prepareAccessoryViewsForScrollView:(id)view environment:(id)environment
{
  viewCopy = view;
  environmentCopy = environment;
  array = [MEMORY[0x1E695DF70] array];
  _verticalScrollIndicator = [viewCopy _verticalScrollIndicator];
  if (_verticalScrollIndicator)
  {
    v9 = [environmentCopy interactiveHighlightEffectForView:_verticalScrollIndicator options:0];
    [array addObject:v9];
  }

  _horizontalScrollIndicator = [viewCopy _horizontalScrollIndicator];
  if (_horizontalScrollIndicator)
  {
    v11 = [environmentCopy interactiveHighlightEffectForView:_horizontalScrollIndicator options:0];
    [array addObject:v11];
  }

  v12 = [array copy];
  accessoryHighlightEffects = self->_accessoryHighlightEffects;
  self->_accessoryHighlightEffects = v12;
}

- (void)_setHighlighted:(BOOL)highlighted forViewIfNeeded:(id)needed
{
  highlightedCopy = highlighted;
  neededCopy = needed;
  if ([neededCopy isHighlighted] != highlightedCopy)
  {
    if (highlightedCopy)
    {
      v6 = 0.2;
    }

    else
    {
      v6 = 0.3;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68___UIPreviewInteractionHighlighter__setHighlighted_forViewIfNeeded___block_invoke;
    v7[3] = &unk_1E70F35E0;
    v8 = neededCopy;
    v9 = highlightedCopy;
    [UIView animateWithDuration:6 delay:v7 options:0 animations:v6 completion:0.0];
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIView)customContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_customContainerView);

  return WeakRetained;
}

@end