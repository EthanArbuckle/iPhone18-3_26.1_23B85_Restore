@interface _UIPreviewInteractionClickImpl
- (BOOL)_canPerformPresentation;
- (BOOL)_performPresentationIfPossible;
- (BOOL)clickInteractionShouldBegin:(id)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (UIDragInteraction)associatedDragInteraction;
- (UIPreviewInteraction)previewInteraction;
- (UIPreviewInteractionDelegate)delegate;
- (UIPreviewInteractionDelegatePrivate)privateDelegate;
- (UIView)view;
- (_UIPreviewInteractionClickImpl)initWithView:(id)view previewInteraction:(id)interaction;
- (id)highlightEffectForClickInteraction:(id)interaction;
- (uint64_t)_endInteractionDidComplete:(char)complete wasCancelledByClient:;
- (uint64_t)_handleTransitionToPossibleByEndingWithContext:(uint64_t)result;
- (void)_delegateUpdateCommitTransitionWithProgress:(double)progress ended:;
- (void)_delegateUpdatePreviewTransitionWithProgress:(double)progress ended:;
- (void)_endInteractionEffectIfNeeded;
- (void)_prepareInteractionEffect;
- (void)_startPreviewAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (void)_toBeRemoved_CallHighlighterCompletion;
- (void)_toBeRemoved_CreateHighlighterIfPossible;
- (void)clickInteractionDidClickDown:(id)down;
- (void)clickInteractionDidClickUp:(id)up;
- (void)clickInteractionDidEnd:(id)end;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)setDelegate:(id)delegate;
- (void)willMoveToView:(id)view;
@end

@implementation _UIPreviewInteractionClickImpl

- (_UIPreviewInteractionClickImpl)initWithView:(id)view previewInteraction:(id)interaction
{
  viewCopy = view;
  interactionCopy = interaction;
  v8 = [(_UIPreviewInteractionClickImpl *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_previewInteraction, interactionCopy);
    [viewCopy addInteraction:v9];
  }

  return v9;
}

- (void)dealloc
{
  view = [(_UIPreviewInteractionClickImpl *)self view];
  [view removeInteraction:self];

  v4.receiver = self;
  v4.super_class = _UIPreviewInteractionClickImpl;
  [(_UIPreviewInteractionClickImpl *)&v4 dealloc];
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  previewInteraction = [(_UIPreviewInteractionClickImpl *)self previewInteraction];
  view = [previewInteraction view];

  if (view)
  {
    previewClickInteraction = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
    [previewClickInteraction locationInCoordinateSpace:spaceCopy];
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

- (uint64_t)_endInteractionDidComplete:(char)complete wasCancelledByClient:
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
      BYTE1(v9) = complete;
      return handleEvent(stateMachineSpec_1, v6, 4, &v8, (result + 8));
    }
  }

  return result;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    objc_storeWeak(&self->_privateDelegate, 0);
    self->_delegateImplements.shouldBegin = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.didUpdateCommitTransition = objc_opt_respondsToSelector() & 1;
    privateDelegate = [(_UIPreviewInteractionClickImpl *)self privateDelegate];
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

- (void)willMoveToView:(id)view
{
  previewClickInteraction = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
  view = [previewClickInteraction view];
  previewClickInteraction2 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
  [view removeInteraction:previewClickInteraction2];

  commitClickInteraction = [(_UIPreviewInteractionClickImpl *)self commitClickInteraction];
  view2 = [commitClickInteraction view];
  commitClickInteraction2 = [(_UIPreviewInteractionClickImpl *)self commitClickInteraction];
  [view2 removeInteraction:commitClickInteraction2];

  exclusionRelationshipGestureRecognizer = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];
  view3 = [exclusionRelationshipGestureRecognizer view];
  exclusionRelationshipGestureRecognizer2 = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];
  [view3 removeGestureRecognizer:exclusionRelationshipGestureRecognizer2];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    previewClickInteraction = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

    if (!previewClickInteraction)
    {
      v6 = objc_alloc_init(_UIClickInteraction);
      [(_UIPreviewInteractionClickImpl *)self setPreviewClickInteraction:v6];

      previewClickInteraction2 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
      [previewClickInteraction2 setAllowableMovement:10.0];

      previewClickInteraction3 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
      [previewClickInteraction3 setDelegate:self];
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    previewClickInteraction4 = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];
    [WeakRetained addInteraction:previewClickInteraction4];

    exclusionRelationshipGestureRecognizer = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];

    if (!exclusionRelationshipGestureRecognizer)
    {
      v12 = objc_opt_new();
      [v12 setName:@"com.apple.UIKit.previewInteractionExclusionRelationships"];
      [v12 setDelegate:self];
      [(_UIPreviewInteractionClickImpl *)self setExclusionRelationshipGestureRecognizer:v12];
    }

    v13 = objc_loadWeakRetained(&self->_view);
    exclusionRelationshipGestureRecognizer2 = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];
    [v13 addGestureRecognizer:exclusionRelationshipGestureRecognizer2];
  }
}

- (void)_startPreviewAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  if (!self->_interactionEffect)
  {
    [(_UIPreviewInteractionClickImpl *)self _prepareInteractionEffect:space];
  }

  selfCopy = self;
  handleEvent(stateMachineSpec_1, self->_currentState, 2, &selfCopy, &self->_currentState);
}

- (BOOL)_canPerformPresentation
{
  if (!self->_delegateImplements.viewControllerPresentationForPresentingViewController)
  {
    return 0;
  }

  presentationAssistant = [(_UIPreviewInteractionClickImpl *)self presentationAssistant];
  v3 = presentationAssistant == 0;

  return v3;
}

- (BOOL)_performPresentationIfPossible
{
  if (![(_UIPreviewInteractionClickImpl *)self _canPerformPresentation])
  {
    return 0;
  }

  view = [(_UIPreviewInteractionClickImpl *)self view];
  _viewControllerForAncestor = [view _viewControllerForAncestor];

  if (!_viewControllerForAncestor)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClickImpl.m" lineNumber:263 description:@"UIPreviewInteraction cannot determine presenting view controller."];
  }

  privateDelegate = [(_UIPreviewInteractionClickImpl *)self privateDelegate];
  previewInteraction = [(_UIPreviewInteractionClickImpl *)self previewInteraction];
  v8 = [privateDelegate _previewInteraction:previewInteraction viewControllerPresentationForPresentingViewController:_viewControllerForAncestor];

  v9 = v8 != 0;
  if (v8)
  {
    viewController = [v8 viewController];

    if (viewController == _viewControllerForAncestor)
    {
      viewController2 = [v8 viewController];
      parentViewController = [viewController2 parentViewController];

      _viewControllerForAncestor = parentViewController;
      if (!parentViewController)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClickImpl.m" lineNumber:272 description:@"UIPreviewInteraction cannot determine presenting view controller."];

        _viewControllerForAncestor = 0;
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

    highlighter = [(_UIPreviewInteractionClickImpl *)self highlighter];
    presentationAssistant = [(_UIPreviewInteractionClickImpl *)self presentationAssistant];
    [presentationAssistant setHighlighter:highlighter];

    targetedPreviewForEffectContinuation = [(UIInteractionEffect *)self->_interactionEffect targetedPreviewForEffectContinuation];
    presentationAssistant2 = [(_UIPreviewInteractionClickImpl *)self presentationAssistant];
    [presentationAssistant2 presentFromViewController:_viewControllerForAncestor sourcePreview:targetedPreviewForEffectContinuation dismissalCompletion:v13];

    viewController3 = [v8 viewController];
    transitionCoordinator = [viewController3 transitionCoordinator];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64___UIPreviewInteractionClickImpl__performPresentationIfPossible__block_invoke_2;
    v24[3] = &unk_1E70F3B98;
    v24[4] = self;
    [transitionCoordinator animateAlongsideTransition:v24 completion:0];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (UIPreviewInteractionDelegatePrivate)privateDelegate
{
  delegate = [(_UIPreviewInteractionClickImpl *)self delegate];
  WeakRetained = objc_loadWeakRetained(&self->_privateDelegate);
  if (WeakRetained)
  {
  }

  else if ([delegate conformsToProtocol:&unk_1F016CED0])
  {
    objc_storeWeak(&self->_privateDelegate, delegate);
  }

  v5 = objc_loadWeakRetained(&self->_privateDelegate);

  return v5;
}

- (BOOL)clickInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  previewClickInteraction = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

  if (previewClickInteraction != beginCopy)
  {
    return 1;
  }

  selfCopy = self;
  currentState = self->_currentState;
  p_currentState = &self->_currentState;
  handleEvent(stateMachineSpec_1, currentState, 0, &selfCopy, p_currentState);
  return *p_currentState > 1;
}

- (void)clickInteractionDidEnd:(id)end
{
  endCopy = end;
  currentState = self->_currentState;
  if (currentState > 4 || ((1 << currentState) & 0x13) == 0)
  {
    v9 = endCopy;
    previewClickInteraction = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

    endCopy = v9;
    if (currentState < 5 || previewClickInteraction != v9)
    {
      [(_UIPreviewInteractionClickImpl *)self _endInteractionDidComplete:0 wasCancelledByClient:?];
      endCopy = v9;
    }
  }
}

- (id)highlightEffectForClickInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_initWeak(&location, self);
  previewClickInteraction = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

  if (previewClickInteraction != interactionCopy)
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

- (void)_delegateUpdatePreviewTransitionWithProgress:(double)progress ended:
{
  if (self)
  {
    delegate = [self delegate];
    previewInteraction = [self previewInteraction];
    [delegate previewInteraction:previewInteraction didUpdatePreviewTransition:a2 ended:progress];
  }
}

- (void)_delegateUpdateCommitTransitionWithProgress:(double)progress ended:
{
  if (self && self[17] == 1)
  {
    delegate = [self delegate];
    previewInteraction = [self previewInteraction];
    [delegate previewInteraction:previewInteraction didUpdateCommitTransition:a2 ended:progress];
  }
}

- (void)clickInteractionDidClickDown:(id)down
{
  downCopy = down;
  previewClickInteraction = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

  if (previewClickInteraction == downCopy)
  {
    selfCopy = self;
    handleEvent(stateMachineSpec_1, self->_currentState, 1, &selfCopy, &self->_currentState);
  }
}

- (void)clickInteractionDidClickUp:(id)up
{
  upCopy = up;
  previewClickInteraction = [(_UIPreviewInteractionClickImpl *)self previewClickInteraction];

  if (previewClickInteraction == upCopy)
  {
    selfCopy = self;
    currentState = self->_currentState;
    v7 = &selfCopy;
    p_currentState = &self->_currentState;
    v9 = 2;
  }

  else
  {
    selfCopy2 = self;
    currentState = self->_currentState;
    v7 = &selfCopy2;
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
    associatedDragInteraction = [result associatedDragInteraction];
    v5 = associatedDragInteraction;
    if (associatedDragInteraction && v3[1] == 3)
    {
      v46 = associatedDragInteraction;
      v6 = UIApp;
      view = [v3 view];
      _window = [view _window];
      v9 = [v6 _touchesEventForWindow:_window];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v45 = v9;
      allTouches = [v9 allTouches];
      v11 = [allTouches countByEnumeratingWithState:&v48 objects:v52 count:16];
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
              objc_enumerationMutation(allTouches);
            }

            v15 = *(*(&v48 + 1) + 8 * i);
            if ([v15 phase] == 1)
            {
              view2 = [v3 view];
              [view2 bounds];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v24 = v23;
              view3 = [v3 view];
              [v15 locationInView:view3];
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

          v12 = [allTouches countByEnumeratingWithState:&v48 objects:v52 count:16];
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
    exclusionRelationshipGestureRecognizer = [v3 exclusionRelationshipGestureRecognizer];
    v31 = exclusionRelationshipGestureRecognizer;
    if (v29 > 3)
    {
      [exclusionRelationshipGestureRecognizer reset];
    }

    else
    {
      [exclusionRelationshipGestureRecognizer _fail];
    }

    if ((*(a2 + 8) & 1) == 0 && (*(a2 + 9) & 1) == 0)
    {
      delegate = [v3 delegate];
      previewInteraction = [v3 previewInteraction];
      [delegate previewInteractionDidCancel:previewInteraction];
    }

    [v3 _endInteractionEffectIfNeeded];
    presentationAssistant = [v3 presentationAssistant];

    if (presentationAssistant)
    {
      presentationAssistant2 = [v3 presentationAssistant];
      [presentationAssistant2 dismissViewController];
    }

    else
    {
      [(_UIPreviewInteractionClickImpl *)v3 _toBeRemoved_CallHighlighterCompletion];
    }

    previewClickInteraction = [v3 previewClickInteraction];
    view4 = [previewClickInteraction view];

    if (view4)
    {
      previewClickInteraction2 = [v3 previewClickInteraction];
      [previewClickInteraction2 cancelInteraction];
    }

    else
    {
      previewClickInteraction2 = [v3 view];
      previewClickInteraction3 = [v3 previewClickInteraction];
      [previewClickInteraction2 addInteraction:previewClickInteraction3];
    }

    previewClickInteraction4 = [v3 previewClickInteraction];
    [previewClickInteraction4 setAllowableMovement:10.0];

    commitClickInteraction = [v3 commitClickInteraction];
    [commitClickInteraction cancelInteraction];

    commitClickInteraction2 = [v3 commitClickInteraction];
    view5 = [commitClickInteraction2 view];
    commitClickInteraction3 = [v3 commitClickInteraction];
    [view5 removeInteraction:commitClickInteraction3];

    return 1;
  }

  return result;
}

- (void)_toBeRemoved_CreateHighlighterIfPossible
{
  if (self && self[18] == 1)
  {
    privateDelegate = [self privateDelegate];
    previewInteraction = [self previewInteraction];
    v4 = [privateDelegate _previewInteractionHighlighterForPreviewTransition:previewInteraction];

    [self setHighlighter:v4];
  }
}

- (void)_toBeRemoved_CallHighlighterCompletion
{
  if (self)
  {
    highlighter = [self highlighter];

    if (highlighter)
    {
      highlighter2 = [self highlighter];
      completionBlock = [highlighter2 completionBlock];
      v6 = [completionBlock copy];

      [self setHighlighter:0];
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
    highlighter = [(_UIPreviewInteractionClickImpl *)self highlighter];
    interactionEffect = highlighter;
    if (highlighter)
    {
      view = [highlighter view];
      customContainerView = [interactionEffect customContainerView];
      if (customContainerView || ([view superview], (customContainerView = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = customContainerView;
        [view center];
        v15 = v14;
        v17 = v16;
        superview = [view superview];
        [v13 convertPoint:superview fromView:{v15, v17}];
        v20 = v19;
        v22 = v21;

        v23 = [[UIPreviewTarget alloc] initWithContainer:v13 center:v20, v22];
        v24 = objc_opt_new();
        v27 = [[UITargetedPreview alloc] initWithView:view parameters:v24 target:v23];

        goto LABEL_7;
      }
    }

    v27 = 0;
    goto LABEL_12;
  }

  previewInteraction = [(_UIPreviewInteractionClickImpl *)self previewInteraction];
  view2 = [(_UIPreviewInteractionClickImpl *)self view];
  [previewInteraction locationInCoordinateSpace:view2];
  v6 = v5;
  v8 = v7;

  interactionEffect = [(_UIPreviewInteractionClickImpl *)self privateDelegate];
  view = [(_UIPreviewInteractionClickImpl *)self previewInteraction];
  v27 = [interactionEffect _previewInteraction:view targetedPreviewForPreviewingAtLocation:{v6, v8}];
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
  interactionEffect = [(_UIPreviewInteractionClickImpl *)self interactionEffect];

  if (interactionEffect)
  {
    v6 = objc_opt_new();
    [v6 setProgress:0.0];
    [v6 setEnded:1];
    interactionEffect2 = [(_UIPreviewInteractionClickImpl *)self interactionEffect];
    [interactionEffect2 interaction:self didChangeWithContext:v6];

    interactionEffect = self->_interactionEffect;
    self->_interactionEffect = 0;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  exclusionRelationshipGestureRecognizer = [(_UIPreviewInteractionClickImpl *)self exclusionRelationshipGestureRecognizer];

  return exclusionRelationshipGestureRecognizer == recognizerCopy;
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