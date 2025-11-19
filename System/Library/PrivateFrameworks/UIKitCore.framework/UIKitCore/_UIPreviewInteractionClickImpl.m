@interface _UIPreviewInteractionClickImpl
- (BOOL)_canPerformPresentation;
- (BOOL)_performPresentationIfPossible;
- (BOOL)clickInteractionShouldBegin:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (UIDragInteraction)associatedDragInteraction;
- (UIPreviewInteraction)previewInteraction;
- (UIPreviewInteractionDelegate)delegate;
- (UIPreviewInteractionDelegatePrivate)privateDelegate;
- (UIView)view;
- (_UIPreviewInteractionClickImpl)initWithView:(id)a3 previewInteraction:(id)a4;
- (id)highlightEffectForClickInteraction:(id)a3;
- (uint64_t)_endInteractionDidComplete:(char)a3 wasCancelledByClient:;
- (uint64_t)_handleTransitionToPossibleByEndingWithContext:(uint64_t)result;
- (void)_delegateUpdateCommitTransitionWithProgress:(double)a3 ended:;
- (void)_delegateUpdatePreviewTransitionWithProgress:(double)a3 ended:;
- (void)_endInteractionEffectIfNeeded;
- (void)_prepareInteractionEffect;
- (void)_startPreviewAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (void)_toBeRemoved_CallHighlighterCompletion;
- (void)_toBeRemoved_CreateHighlighterIfPossible;
- (void)clickInteractionDidClickDown:(id)a3;
- (void)clickInteractionDidClickUp:(id)a3;
- (void)clickInteractionDidEnd:(id)a3;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)setDelegate:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIPreviewInteractionClickImpl

- (_UIPreviewInteractionClickImpl)initWithView:(id)a3 previewInteraction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIPreviewInteractionClickImpl *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_previewInteraction, v7);
    [v6 addInteraction:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(_UIPreviewInteractionClickImpl *)self view];
  [v3 removeInteraction:self];

  v4.receiver = self;
  v4.super_class = _UIPreviewInteractionClickImpl;
  [(_UIPreviewInteractionClickImpl *)&v4 dealloc];
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionClickImpl *)self previewInteraction];
  v6 = [v5 view];

  if (v6)
  {
    v7 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
    [v7 locationInCoordinateSpace:v4];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v11 = 0x7FEFFFFFFFFFFFFFLL;
    v9 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v12 = *&v9;
  v13 = *&v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (uint64_t)_endInteractionDidComplete:(char)a3 wasCancelledByClient:
{
  if (result)
  {
    v6 = *(result + 8);
    if (v6 > 4 || ((1 << v6) & 0x13) == 0)
    {
      v10 = v3;
      v11 = v4;
      v8 = result;
      v9 = a2;
      BYTE1(v9) = a3;
      return handleEvent(stateMachineSpec_1, v6, 4, &v8, (result + 8));
    }
  }

  return result;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    objc_storeWeak(&self->_privateDelegate, 0);
    self->_delegateImplements.shouldBegin = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.didUpdateCommitTransition = objc_opt_respondsToSelector() & 1;
    v6 = [(_UIPreviewInteractionClickImpl *)self privateDelegate];
    self->_delegateImplements.highlighterForPreviewTransition = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.viewControllerPresentationForPresentingViewController = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldFinishTransitionToPreview = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.targetedPreviewForPreviewingAtLocation = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.overrideViewForCommitPhase = objc_opt_respondsToSelector() & 1;
    v7 = objc_loadWeakRetained(&self->_delegate);

    if (v7)
    {
      self->_currentState = 1;
    }

    v5 = obj;
  }
}

- (void)willMoveToView:(id)a3
{
  v4 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
  v5 = [v4 view];
  v6 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
  [v5 removeInteraction:v6];

  v7 = [(_UIPreviewInteractionClickImpl *)self commitClickInteraction];
  v8 = [v7 view];
  v9 = [(_UIPreviewInteractionClickImpl *)self commitClickInteraction];
  [v8 removeInteraction:v9];

  v10 = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];
  v11 = [v10 view];
  v12 = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];
  [v11 removeGestureRecognizer:v12];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    v5 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

    if (!v5)
    {
      v6 = objc_alloc_init(_UIClickInteraction);
      [(_UIPreviewInteractionClickImpl *)self setPreviewClickInteraction:v6];

      v7 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
      [v7 setAllowableMovement:10.0];

      v8 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
      [v8 setDelegate:self];
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
    [WeakRetained addInteraction:v10];

    v11 = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];

    if (!v11)
    {
      v12 = objc_opt_new();
      [v12 setName:@"com.apple.UIKit.previewInteractionExclusionRelationships"];
      [v12 setDelegate:self];
      [(_UIPreviewInteractionClickImpl *)self setExclusionRelationshipGestureRecognizer:v12];
    }

    v13 = objc_loadWeakRetained(&self->_view);
    v14 = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];
    [v13 addGestureRecognizer:v14];
  }
}

- (void)_startPreviewAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  if (!self->_interactionEffect)
  {
    [(_UIPreviewInteractionClickImpl *)self _prepareInteractionEffect:a4];
  }

  v5 = self;
  handleEvent(stateMachineSpec_1, self->_currentState, 2, &v5, &self->_currentState);
}

- (BOOL)_canPerformPresentation
{
  if (!self->_delegateImplements.viewControllerPresentationForPresentingViewController)
  {
    return 0;
  }

  v2 = [(_UIPreviewInteractionClickImpl *)self presentationAssistant];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)_performPresentationIfPossible
{
  if (![(_UIPreviewInteractionClickImpl *)self _canPerformPresentation])
  {
    return 0;
  }

  v4 = [(_UIPreviewInteractionClickImpl *)self view];
  v5 = [v4 _viewControllerForAncestor];

  if (!v5)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClickImpl.m" lineNumber:263 description:@"UIPreviewInteraction cannot determine presenting view controller."];
  }

  v6 = [(_UIPreviewInteractionClickImpl *)self privateDelegate];
  v7 = [(_UIPreviewInteractionClickImpl *)self previewInteraction];
  v8 = [v6 _previewInteraction:v7 viewControllerPresentationForPresentingViewController:v5];

  v9 = v8 != 0;
  if (v8)
  {
    v10 = [v8 viewController];

    if (v10 == v5)
    {
      v11 = [v8 viewController];
      v12 = [v11 parentViewController];

      v5 = v12;
      if (!v12)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClickImpl.m" lineNumber:272 description:@"UIPreviewInteraction cannot determine presenting view controller."];

        v5 = 0;
      }
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64___UIPreviewInteractionClickImpl__performPresentationIfPossible__block_invoke;
    aBlock[3] = &unk_1E70F5A28;
    objc_copyWeak(&v26, &location);
    v13 = _Block_copy(aBlock);
    v14 = [[_UIPreviewInteractionPresentationAssistant alloc] initWithViewControllerPresentation:v8];
    [(_UIPreviewInteractionClickImpl *)self setPresentationAssistant:v14];

    v15 = [(_UIPreviewInteractionClickImpl *)self highlighter];
    v16 = [(_UIPreviewInteractionClickImpl *)self presentationAssistant];
    [v16 setHighlighter:v15];

    v17 = [(UIInteractionEffect *)self->_interactionEffect targetedPreviewForEffectContinuation];
    v18 = [(_UIPreviewInteractionClickImpl *)self presentationAssistant];
    [v18 presentFromViewController:v5 sourcePreview:v17 dismissalCompletion:v13];

    v19 = [v8 viewController];
    v20 = [v19 transitionCoordinator];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64___UIPreviewInteractionClickImpl__performPresentationIfPossible__block_invoke_2;
    v24[3] = &unk_1E70F3B98;
    v24[4] = self;
    [v20 animateAlongsideTransition:v24 completion:0];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (UIPreviewInteractionDelegatePrivate)privateDelegate
{
  v3 = [(_UIPreviewInteractionClickImpl *)self delegate];
  WeakRetained = objc_loadWeakRetained(&self->_privateDelegate);
  if (WeakRetained)
  {
  }

  else if ([v3 conformsToProtocol:&unk_1F016CED0])
  {
    objc_storeWeak(&self->_privateDelegate, v3);
  }

  v5 = objc_loadWeakRetained(&self->_privateDelegate);

  return v5;
}

- (BOOL)clickInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

  if (v5 != v4)
  {
    return 1;
  }

  v9 = self;
  currentState = self->_currentState;
  p_currentState = &self->_currentState;
  handleEvent(stateMachineSpec_1, currentState, 0, &v9, p_currentState);
  return *p_currentState > 1;
}

- (void)clickInteractionDidEnd:(id)a3
{
  v4 = a3;
  currentState = self->_currentState;
  if (currentState > 4 || ((1 << currentState) & 0x13) == 0)
  {
    v9 = v4;
    v7 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

    v4 = v9;
    if (currentState < 5 || v7 != v9)
    {
      [(_UIPreviewInteractionClickImpl *)self _endInteractionDidComplete:0 wasCancelledByClient:?];
      v4 = v9;
    }
  }
}

- (id)highlightEffectForClickInteraction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

  if (v5 != v4)
  {
    v6 = [_UIPercentDrivenInteractionEffect alloc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69___UIPreviewInteractionClickImpl_highlightEffectForClickInteraction___block_invoke_2;
    v12[3] = &unk_1E7109750;
    v7 = &v13;
    objc_copyWeak(&v13, &location);
    v8 = [(_UIPercentDrivenInteractionEffect *)v6 initWithProgressBlock:v12];
LABEL_6:
    v10 = v8;
    objc_destroyWeak(v7);
    goto LABEL_7;
  }

  if (self->_delegateImplements.highlighterForPreviewTransition || self->_delegateImplements.targetedPreviewForPreviewingAtLocation)
  {
    [(_UIPreviewInteractionClickImpl *)self _prepareInteractionEffect];
    v9 = [_UIPercentDrivenInteractionEffect alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69___UIPreviewInteractionClickImpl_highlightEffectForClickInteraction___block_invoke;
    v14[3] = &unk_1E7109750;
    v7 = &v15;
    objc_copyWeak(&v15, &location);
    v8 = [(_UIPercentDrivenInteractionEffect *)v9 initWithProgressBlock:v14];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:
  objc_destroyWeak(&location);

  return v10;
}

- (void)_delegateUpdatePreviewTransitionWithProgress:(double)a3 ended:
{
  if (a1)
  {
    v7 = [a1 delegate];
    v6 = [a1 previewInteraction];
    [v7 previewInteraction:v6 didUpdatePreviewTransition:a2 ended:a3];
  }
}

- (void)_delegateUpdateCommitTransitionWithProgress:(double)a3 ended:
{
  if (a1 && a1[17] == 1)
  {
    v7 = [a1 delegate];
    v6 = [a1 previewInteraction];
    [v7 previewInteraction:v6 didUpdateCommitTransition:a2 ended:a3];
  }
}

- (void)clickInteractionDidClickDown:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

  if (v5 == v4)
  {
    v6 = self;
    handleEvent(stateMachineSpec_1, self->_currentState, 1, &v6, &self->_currentState);
  }
}

- (void)clickInteractionDidClickUp:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

  if (v5 == v4)
  {
    v11 = self;
    currentState = self->_currentState;
    v7 = &v11;
    p_currentState = &self->_currentState;
    v9 = 2;
  }

  else
  {
    v10 = self;
    currentState = self->_currentState;
    v7 = &v10;
    p_currentState = &self->_currentState;
    v9 = 3;
  }

  handleEvent(stateMachineSpec_1, currentState, v9, v7, p_currentState);
}

- (uint64_t)_handleTransitionToPossibleByEndingWithContext:(uint64_t)result
{
  v53 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = [result associatedDragInteraction];
    v5 = v4;
    if (v4 && v3[1] == 3)
    {
      v46 = v4;
      v6 = UIApp;
      v7 = [v3 view];
      v8 = [v7 _window];
      v9 = [v6 _touchesEventForWindow:v8];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v45 = v9;
      v10 = [v9 allTouches];
      v11 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v49;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v49 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v48 + 1) + 8 * i);
            if ([v15 phase] == 1)
            {
              v16 = [v3 view];
              [v16 bounds];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v24 = v23;
              v25 = [v3 view];
              [v15 locationInView:v25];
              v54.x = v26;
              v54.y = v27;
              v55.origin.x = v18;
              v55.origin.y = v20;
              v55.size.width = v22;
              v55.size.height = v24;
              v28 = CGRectContainsPoint(v55, v54);

              if (v28)
              {
                v47[0] = MEMORY[0x1E69E9820];
                v47[1] = 3221225472;
                v47[2] = __81___UIPreviewInteractionClickImpl__handleTransitionToPossibleByEndingWithContext___block_invoke;
                v47[3] = &unk_1E7109AB8;
                v47[4] = v3;
                v47[5] = v45;
                [v46 _immediatelyBeginDragWithTouch:v15 completion:v47];
                goto LABEL_15;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      v5 = v46;
    }

    [v3 setAssociatedDragInteraction:0];
    v29 = v3[1];
    v30 = [v3 exclusionRelationshipGestureRecognizer];
    v31 = v30;
    if (v29 > 3)
    {
      [v30 reset];
    }

    else
    {
      [v30 _fail];
    }

    if ((*(a2 + 8) & 1) == 0 && (*(a2 + 9) & 1) == 0)
    {
      v32 = [v3 delegate];
      v33 = [v3 previewInteraction];
      [v32 previewInteractionDidCancel:v33];
    }

    [v3 _endInteractionEffectIfNeeded];
    v34 = [v3 presentationAssistant];

    if (v34)
    {
      v35 = [v3 presentationAssistant];
      [v35 dismissViewController];
    }

    else
    {
      [(_UIPreviewInteractionClickImpl *)v3 _toBeRemoved_CallHighlighterCompletion];
    }

    v36 = [v3 previewClickInteraction];
    v37 = [v36 view];

    if (v37)
    {
      v38 = [v3 previewClickInteraction];
      [v38 cancelInteraction];
    }

    else
    {
      v38 = [v3 view];
      v39 = [v3 previewClickInteraction];
      [v38 addInteraction:v39];
    }

    v40 = [v3 previewClickInteraction];
    [v40 setAllowableMovement:10.0];

    v41 = [v3 commitClickInteraction];
    [v41 cancelInteraction];

    v42 = [v3 commitClickInteraction];
    v43 = [v42 view];
    v44 = [v3 commitClickInteraction];
    [v43 removeInteraction:v44];

    return 1;
  }

  return result;
}

- (void)_toBeRemoved_CreateHighlighterIfPossible
{
  if (a1 && a1[18] == 1)
  {
    v2 = [a1 privateDelegate];
    v3 = [a1 previewInteraction];
    v4 = [v2 _previewInteractionHighlighterForPreviewTransition:v3];

    [a1 setHighlighter:v4];
  }
}

- (void)_toBeRemoved_CallHighlighterCompletion
{
  if (a1)
  {
    v2 = [a1 highlighter];

    if (v2)
    {
      v3 = [a1 highlighter];
      v4 = [v3 completionBlock];
      v6 = [v4 copy];

      [a1 setHighlighter:0];
      v5 = v6;
      if (v6)
      {
        (*(v6 + 16))(v6);
        v5 = v6;
      }
    }
  }
}

- (void)_prepareInteractionEffect
{
  if (!self->_delegateImplements.targetedPreviewForPreviewingAtLocation)
  {
    [(_UIPreviewInteractionClickImpl *)self _toBeRemoved_CreateHighlighterIfPossible];
    v11 = [(_UIPreviewInteractionClickImpl *)self highlighter];
    interactionEffect = v11;
    if (v11)
    {
      v10 = [v11 view];
      v12 = [interactionEffect customContainerView];
      if (v12 || ([v10 superview], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = v12;
        [v10 center];
        v15 = v14;
        v17 = v16;
        v18 = [v10 superview];
        [v13 convertPoint:v18 fromView:{v15, v17}];
        v20 = v19;
        v22 = v21;

        v23 = [[UIPreviewTarget alloc] initWithContainer:v13 center:v20, v22];
        v24 = objc_opt_new();
        v27 = [[UITargetedPreview alloc] initWithView:v10 parameters:v24 target:v23];

        goto LABEL_7;
      }
    }

    v27 = 0;
    goto LABEL_12;
  }

  v3 = [(_UIPreviewInteractionClickImpl *)self previewInteraction];
  v4 = [(_UIPreviewInteractionClickImpl *)self view];
  [v3 locationInCoordinateSpace:v4];
  v6 = v5;
  v8 = v7;

  interactionEffect = [(_UIPreviewInteractionClickImpl *)self privateDelegate];
  v10 = [(_UIPreviewInteractionClickImpl *)self previewInteraction];
  v27 = [interactionEffect _previewInteraction:v10 targetedPreviewForPreviewingAtLocation:{v6, v8}];
LABEL_7:

  if (!v27)
  {
    v26 = 0;
    goto LABEL_13;
  }

  v25 = [_UIClickHighlightInteractionEffect effectWithPreview:v27 continuingFromPreview:0];
  interactionEffect = self->_interactionEffect;
  self->_interactionEffect = v25;
LABEL_12:

  v26 = v27;
LABEL_13:
}

- (void)_endInteractionEffectIfNeeded
{
  v3 = [(_UIPreviewInteractionClickImpl *)self interactionEffect];

  if (v3)
  {
    v6 = objc_opt_new();
    [v6 setProgress:0.0];
    [v6 setEnded:1];
    v4 = [(_UIPreviewInteractionClickImpl *)self interactionEffect];
    [v4 interaction:self didChangeWithContext:v6];

    interactionEffect = self->_interactionEffect;
    self->_interactionEffect = 0;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];

  return v6 == v5;
}

- (UIPreviewInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIPreviewInteraction)previewInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_previewInteraction);

  return WeakRetained;
}

- (UIDragInteraction)associatedDragInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedDragInteraction);

  return WeakRetained;
}

@end