@interface _UIPreviewInteractionController
- (BOOL)_isLongPressGestureRecognizerUsedForDelayingActions:(id)actions;
- (BOOL)_preparePreviewViewControllerPresentationFromPreviewInteraction:(id)interaction;
- (BOOL)_previewInteractionShouldEndOnGestureCompletion:(id)completion;
- (BOOL)_previewingIsPossibleForView:(id)view;
- (BOOL)_viewControllerIsChildOfTwoColumnSplitViewController:(id)controller;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)previewInteractionShouldBegin:(id)begin;
- (CGPoint)initialLocationForPreviewActionsPanning;
- (CGPoint)initialPlatterPositionForPreviewActionsController:(id)controller;
- (CGPoint)location;
- (CGSize)maximumPreviewActionsViewSizeForPreviewActionsController:(id)controller;
- (UIView)sourceView;
- (UIViewController)presentingViewController;
- (UIViewControllerPreviewing_Internal)currentPreviewingContext;
- (_UIPreviewInteractionController)initWithView:(id)view;
- (_UIPreviewInteractionControllerDelegate)delegate;
- (id)_newHighlighterForPreviewingContext:(id)context;
- (id)_preferredNavigationControllerForCommitTransition;
- (id)_preparedInteractionEffect;
- (id)_previewPresentationControllerForViewController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_dismissPreviewViewControllerIfNeeded;
- (void)_dismissPreviewViewControllerIfNeededWithCompletion:(id)completion;
- (void)_finalizeAfterPreviewViewControllerPresentation;
- (void)_finalizeHighlighterAfterPreviewViewControllerPresentation;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_handlePreviewActionsGesture:(id)gesture;
- (void)_handleSteadyTouchForceGesture:(id)gesture;
- (void)_overrideSourceViewForBinaryCompatibilityIfNeeded:(id *)needed sourceRect:(CGRect *)rect;
- (void)_preparePreviewPresentationControllerIfNeeded:(id)needed;
- (void)_resetCustomPresentationHooks;
- (void)_revertInteractionEffectToStartState;
- (void)_stopCurrentInteractionEffect;
- (void)commitInteractivePreview;
- (void)dealloc;
- (void)didDismissPreviewActionsController:(id)controller;
- (void)previewActionsController:(id)controller didCompleteWithSelectedAction:(id)action;
- (void)previewActionsController:(id)controller didUpdatePlatterTranslation:(CGVector)translation withVelocity:(CGVector)velocity;
- (void)previewInteraction:(id)interaction didUpdateCommitTransition:(double)transition ended:(BOOL)ended;
- (void)previewInteraction:(id)interaction didUpdatePreviewTransition:(double)transition ended:(BOOL)ended;
- (void)previewInteractionDidCancel:(id)cancel;
@end

@implementation _UIPreviewInteractionController

- (_UIPreviewInteractionController)initWithView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionController.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v17.receiver = self;
  v17.super_class = _UIPreviewInteractionController;
  v6 = [(_UIPreviewInteractionController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_sourceView, viewCopy);
    v8 = [[UIPreviewInteraction alloc] initWithView:viewCopy];
    previewInteraction = v7->_previewInteraction;
    v7->_previewInteraction = v8;

    [(UIPreviewInteraction *)v7->_previewInteraction setDelegate:v7];
    v10 = [(UILongPressGestureRecognizer *)[_UIPreviewInteractionGestureRecognizer alloc] initWithTarget:v7 action:sel__handleRevealGesture_];
    [(UIGestureRecognizer *)v10 setName:@"Reveal mk2"];
    [(UIGestureRecognizer *)v10 setAllowedTouchTypes:&unk_1EFE2D1C8];
    [(UILongPressGestureRecognizer *)v10 setMinimumPressDuration:0.0];
    [(_UIPreviewInteractionGestureRecognizer *)v10 setDelegate:v7];
    [viewCopy addGestureRecognizer:v10];
    [(_UIPreviewInteractionController *)v7 setRevealGestureRecognizer:v10];

    v11 = [(UILongPressGestureRecognizer *)[_UIPreviewInteractionGestureRecognizer alloc] initWithTarget:v7 action:sel__handlePreviewGesture_];
    [(UIGestureRecognizer *)v11 setName:@"Preview mk2"];
    [(UIGestureRecognizer *)v11 setAllowedTouchTypes:&unk_1EFE2D1C8];
    [(UIGestureRecognizer *)v11 setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v11 setMinimumPressDuration:0.0];
    [(_UIPreviewInteractionGestureRecognizer *)v11 setDelegate:v7];
    [viewCopy addGestureRecognizer:v11];
    [(_UIPreviewInteractionController *)v7 setPreviewGestureRecognizer:v11];

    v12 = [[_UITouchesObservingGestureRecognizer alloc] initWithTarget:v7 action:sel__handlePreviewActionsGesture_];
    [(UIGestureRecognizer *)v12 setAllowedTouchTypes:&unk_1EFE2D1C8];
    [(UIGestureRecognizer *)v12 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v12 setDelegate:v7];
    [viewCopy addGestureRecognizer:v12];
    [(_UIPreviewInteractionController *)v7 setGestureRecognizerForPreviewActions:v12];

    v13 = [[_UISteadyTouchForceGestureRecognizer alloc] initWithTarget:v7 action:sel__handleSteadyTouchForceGesture_];
    [(UIGestureRecognizer *)v13 setAllowedTouchTypes:&unk_1EFE2D1C8];
    [(UIGestureRecognizer *)v13 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v13 setDelegate:v7];
    [viewCopy addGestureRecognizer:v13];
    [(_UIPreviewInteractionController *)v7 setSteadyTouchForceGestureRecognizer:v13];

    v14 = v7;
  }

  return v7;
}

- (void)dealloc
{
  revealGestureRecognizer = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
  view = [revealGestureRecognizer view];
  revealGestureRecognizer2 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
  [view removeGestureRecognizer:revealGestureRecognizer2];

  steadyTouchForceGestureRecognizer = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
  view2 = [steadyTouchForceGestureRecognizer view];
  steadyTouchForceGestureRecognizer2 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
  [view2 removeGestureRecognizer:steadyTouchForceGestureRecognizer2];

  previewGestureRecognizer = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
  view3 = [previewGestureRecognizer view];
  previewGestureRecognizer2 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
  [view3 removeGestureRecognizer:previewGestureRecognizer2];

  gestureRecognizerForPreviewActions = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  view4 = [gestureRecognizerForPreviewActions view];
  gestureRecognizerForPreviewActions2 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  [view4 removeGestureRecognizer:gestureRecognizerForPreviewActions2];

  v15.receiver = self;
  v15.super_class = _UIPreviewInteractionController;
  [(_UIPreviewInteractionController *)&v15 dealloc];
}

- (void)commitInteractivePreview
{
  if (![(_UIPreviewInteractionController *)self dismissingPreview]&& ![(UIPresentationController *)self->_currentPresentationController dismissing])
  {
    if ([(_UIPreviewInteractionController *)self performingPreviewTransition])
    {

      [(_UIPreviewInteractionController *)self setCommitTransitionScheduled:1];
    }

    else
    {
      currentPreviewViewController = [(_UIPreviewInteractionController *)self currentPreviewViewController];
      if (currentPreviewViewController)
      {
        [(_UIPreviewInteractionController *)self _stopCurrentInteractionEffect];
        [(_UIPreviewInteractionController *)self setPerformingCommitTransition:1];
        [(_UIPreviewInteractionController *)self setCommitTransitionScheduled:0];
        [(_UIPreviewInteractionController *)self _resetCustomPresentationHooks];
        v4 = [[_UIPreviewInteractionCommitTransition alloc] initWithPresentedViewController:currentPreviewViewController];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __59___UIPreviewInteractionController_commitInteractivePreview__block_invoke;
        v7[3] = &unk_1E70F35B8;
        v7[4] = self;
        v8 = currentPreviewViewController;
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __59___UIPreviewInteractionController_commitInteractivePreview__block_invoke_2;
        v6[3] = &unk_1E70F3590;
        v6[4] = self;
        [(_UIPreviewInteractionCommitTransition *)v4 performTransitionWithPresentationBlock:v7 completion:v6];
        [(_UIPreviewInteractionController *)self setCurrentCommitTransition:v4];
        v5 = +[_UIStatistics previewInteractionPopCount];
        [v5 incrementValueBy:1];

        _UIPowerLogPopOccured();
      }
    }
  }
}

- (BOOL)previewInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  currentPreviewViewController = [(_UIPreviewInteractionController *)self currentPreviewViewController];

  if (currentPreviewViewController)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [(_UIPreviewInteractionController *)self _preparePreviewViewControllerPresentationFromPreviewInteraction:beginCopy];
    revealGestureRecognizer = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
    steadyTouchForceGestureRecognizer = revealGestureRecognizer;
    if (v6)
    {
      [revealGestureRecognizer recognize];
    }

    else
    {
      [revealGestureRecognizer cancel];

      previewGestureRecognizer = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
      [previewGestureRecognizer cancel];

      steadyTouchForceGestureRecognizer = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
      [steadyTouchForceGestureRecognizer cancel];
    }
  }

  return v6;
}

- (void)previewInteraction:(id)interaction didUpdatePreviewTransition:(double)transition ended:(BOOL)ended
{
  endedCopy = ended;
  currentPresentationTransition = [(_UIPreviewInteractionController *)self currentPresentationTransition];
  [currentPresentationTransition updateInteractiveTransition:transition];
  if (endedCopy)
  {
    [(_UIPreviewInteractionController *)self setHasTransitionedToPreview:1];
    previewGestureRecognizer = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
    [previewGestureRecognizer recognize];

    steadyTouchForceGestureRecognizer = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
    [steadyTouchForceGestureRecognizer cancel];

    [currentPresentationTransition finishTransition];
  }
}

- (void)previewInteraction:(id)interaction didUpdateCommitTransition:(double)transition ended:(BOOL)ended
{
  endedCopy = ended;
  _preparedInteractionEffect = [(_UIPreviewInteractionController *)self _preparedInteractionEffect];
  [_preparedInteractionEffect setForceFactor:transition];

  if (endedCopy)
  {

    [(_UIPreviewInteractionController *)self commitInteractivePreview];
  }
}

- (void)previewInteractionDidCancel:(id)cancel
{
  if (![(_UIPreviewInteractionController *)self performingCommitTransition])
  {

    [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeeded];
  }
}

- (BOOL)_previewInteractionShouldEndOnGestureCompletion:(id)completion
{
  previewActionsController = [(_UIPreviewInteractionController *)self previewActionsController];

  if (previewActionsController)
  {
    previewActionsController2 = [(_UIPreviewInteractionController *)self previewActionsController];
    v6 = [previewActionsController2 platterPanned] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v4 = objc_alloc_init(_UIPreviewInteractionDismissTransition);
  _preparedDismissAnimator = [(_UIPreviewInteractionDismissTransition *)v4 _preparedDismissAnimator];
  currentPresentationController = [(_UIPreviewInteractionController *)self currentPresentationController];
  [currentPresentationController setCurrentTransitionAnimator:_preparedDismissAnimator];

  currentPresentationController2 = [(_UIPreviewInteractionController *)self currentPresentationController];
  [currentPresentationController2 setInteractiveTransitionFraction:0.0];

  [(_UIPreviewInteractionController *)self setCurrentDismissTransition:v4];

  return v4;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [_UIPreviewPresentationController2 alloc];
  currentPreviewingContext = [(_UIPreviewInteractionController *)self currentPreviewingContext];
  v11 = [(_UIPreviewPresentationController2 *)v9 initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy previewingContext:currentPreviewingContext];

  [(_UIPreviewInteractionController *)self _preparePreviewPresentationControllerIfNeeded:v11];
  [(_UIPreviewInteractionController *)self setCurrentPresentationController:v11];

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  previewGestureRecognizer = [(_UIPreviewInteractionController *)self previewGestureRecognizer];

  v9 = previewGestureRecognizer == recognizerCopy && [(_UIPreviewInteractionController *)self _isLongPressGestureRecognizerUsedForDelayingActions:gestureRecognizerCopy];
  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  revealGestureRecognizer = [(_UIPreviewInteractionController *)self revealGestureRecognizer];

  if (revealGestureRecognizer == recognizerCopy)
  {
    steadyTouchForceGestureRecognizer = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];

    if (steadyTouchForceGestureRecognizer == gestureRecognizerCopy)
    {
      goto LABEL_13;
    }

    previewGestureRecognizer = [(_UIPreviewInteractionController *)self previewGestureRecognizer];

    if (previewGestureRecognizer == gestureRecognizerCopy)
    {
      goto LABEL_13;
    }

    if (_UIPreviewInteractionIsTextGestureRecognizer(gestureRecognizerCopy))
    {
      v11 = 0;
      goto LABEL_14;
    }

    if ([(_UIPreviewInteractionController *)self _isLongPressGestureRecognizerUsedForDelayingActions:gestureRecognizerCopy])
    {
LABEL_13:
      v11 = 1;
      goto LABEL_14;
    }
  }

  previewGestureRecognizer2 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];

  if (previewGestureRecognizer2 == recognizerCopy)
  {
    steadyTouchForceGestureRecognizer2 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];

    if (steadyTouchForceGestureRecognizer2 == gestureRecognizerCopy)
    {
      goto LABEL_13;
    }

    revealGestureRecognizer2 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];

    if (revealGestureRecognizer2 == gestureRecognizerCopy || (_UIPreviewInteractionIsTextGestureRecognizer(gestureRecognizerCopy) & 1) != 0)
    {
      goto LABEL_13;
    }
  }

  steadyTouchForceGestureRecognizer3 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
  v11 = steadyTouchForceGestureRecognizer3 == recognizerCopy;

LABEL_14:
  return v11;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  revealGestureRecognizer = [(_UIPreviewInteractionController *)self revealGestureRecognizer];

  if (revealGestureRecognizer == failedCopy)
  {
    [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeeded];
    previewInteraction = [(_UIPreviewInteractionController *)self previewInteraction];
    [previewInteraction cancelInteraction];
  }
}

- (BOOL)_preparePreviewViewControllerPresentationFromPreviewInteraction:(id)interaction
{
  interactionCopy = interaction;
  view = [interactionCopy view];
  if (![(_UIPreviewInteractionController *)self _previewingIsPossibleForView:view])
  {
    v15 = 0;
    goto LABEL_13;
  }

  delegate = [(_UIPreviewInteractionController *)self delegate];
  [interactionCopy locationInCoordinateSpace:view];
  v9 = v8;
  v11 = v10;
  v27 = 0;
  v12 = [delegate previewInteractionController:self viewControllerForPreviewingAtLocation:view inCoordinateSpace:&v27 presentingViewController:?];
  v13 = v27;
  v14 = v13;
  v15 = v12 != 0;
  if (v12)
  {
    v24 = v13;
    presentingViewController = [v12 presentingViewController];
    if (presentingViewController || ([v12 isBeingPresented] & 1) != 0)
    {
    }

    else if (([v12 isBeingDismissed] & 1) == 0)
    {
LABEL_6:
      [v12 _setOverrideUseCustomPresentation:1];
      [v12 _setOverrideTransitioningDelegate:self];
      [(_UIPreviewInteractionController *)self setCurrentPreviewViewController:v12];
      if (objc_opt_respondsToSelector())
      {
        [delegate previewInteractionController:self willPresentViewController:v12 forLocation:view inSourceView:{v9, v11}];
      }

      v17 = objc_alloc_init(_UIPreviewInteractionPresentationTransition);
      [(_UIPreviewInteractionController *)self setCurrentPresentationTransition:v17];
      currentPreviewingContext = [(_UIPreviewInteractionController *)self currentPreviewingContext];
      v19 = [(_UIPreviewInteractionController *)self _newHighlighterForPreviewingContext:currentPreviewingContext];
      [v19 prepareHighlightWithPreviewingContext:currentPreviewingContext];
      [(_UIPreviewInteractionController *)self setCurrentHighlighter:v19];
      currentPresentationController = [(_UIPreviewInteractionController *)self currentPresentationController];
      [(_UIPreviewInteractionController *)self _preparePreviewPresentationControllerIfNeeded:currentPresentationController];

      [(_UIPreviewInteractionController *)self setPerformingPreviewTransition:1];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __99___UIPreviewInteractionController__preparePreviewViewControllerPresentationFromPreviewInteraction___block_invoke;
      v25[3] = &unk_1E70F35B8;
      v25[4] = self;
      v21 = v12;
      v26 = v21;
      [v24 presentViewController:v21 animated:1 completion:v25];
      if (objc_opt_respondsToSelector())
      {
        [delegate previewInteractionController:self willPresentViewController:v21];
      }

      v14 = v24;
      goto LABEL_11;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionController.m" lineNumber:394 description:@"The view controller returned from -previewViewControllerForPosition:inSourceView: must not already be presented"];

    goto LABEL_6;
  }

LABEL_11:

LABEL_13:
  return v15;
}

- (void)_dismissPreviewViewControllerIfNeeded
{
  [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeededWithCompletion:0];
  previewActionsController = [(_UIPreviewInteractionController *)self previewActionsController];
  [previewActionsController dismissPreviewActionsWithCompletion:0];
}

- (void)_dismissPreviewViewControllerIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  currentPreviewViewController = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  if (currentPreviewViewController && ![(_UIPreviewInteractionController *)self performingCommitTransition])
  {
    transitionCoordinator = [currentPreviewViewController transitionCoordinator];
    if ([transitionCoordinator isInteractive])
    {
      currentPresentationTransition = [(_UIPreviewInteractionController *)self currentPresentationTransition];
      [currentPresentationTransition cancelTransition];

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      [(_UIPreviewInteractionController *)self setDismissingPreview:1];
      delegate = [(_UIPreviewInteractionController *)self delegate];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __87___UIPreviewInteractionController__dismissPreviewViewControllerIfNeededWithCompletion___block_invoke;
      v16 = &unk_1E70F5F08;
      v9 = delegate;
      v17 = v9;
      selfCopy = self;
      v10 = currentPreviewViewController;
      v19 = v10;
      v20 = completionCopy;
      v11 = _Block_copy(&v13);
      presentingViewController = [v10 presentingViewController];

      if (presentingViewController)
      {
        [v10 dismissViewControllerAnimated:1 completion:v11];
      }

      else
      {
        v11[2](v11);
      }

      if (objc_opt_respondsToSelector())
      {
        [v9 previewInteractionController:self willDismissViewController:v10];
      }
    }
  }
}

- (void)_finalizeAfterPreviewViewControllerPresentation
{
  [(_UIPreviewInteractionController *)self _stopCurrentInteractionEffect];
  [(_UIPreviewInteractionController *)self _finalizeHighlighterAfterPreviewViewControllerPresentation];
  [(_UIPreviewInteractionController *)self setCommitTransitionScheduled:0];
  [(_UIPreviewInteractionController *)self setCurrentPresentationTransition:0];
  [(_UIPreviewInteractionController *)self setCurrentDismissTransition:0];
  currentPreviewViewController = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  [currentPreviewViewController _setOverrideUseCustomPresentation:0];

  currentPreviewViewController2 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  [currentPreviewViewController2 _setOverrideTransitioningDelegate:0];

  [(_UIPreviewInteractionController *)self setCurrentPreviewViewController:0];
  [(_UIPreviewInteractionController *)self setCurrentPresentationController:0];
  revealGestureRecognizer = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
  [revealGestureRecognizer setEnabled:0];

  revealGestureRecognizer2 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
  [revealGestureRecognizer2 setEnabled:1];

  previewGestureRecognizer = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
  [previewGestureRecognizer setEnabled:0];

  previewGestureRecognizer2 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
  [previewGestureRecognizer2 setEnabled:1];

  gestureRecognizerForPreviewActions = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  [gestureRecognizerForPreviewActions setEnabled:0];

  gestureRecognizerForPreviewActions2 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  [gestureRecognizerForPreviewActions2 setEnabled:1];

  sourceView = [(_UIPreviewInteractionController *)self sourceView];
  gestureRecognizerForPreviewActions3 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  [sourceView addGestureRecognizer:gestureRecognizerForPreviewActions3];

  [(_UIPreviewInteractionController *)self setPreviewActionsController:0];
  [(_UIPreviewInteractionController *)self setHasTransitionedToPreview:0];
  [(_UIPreviewInteractionController *)self setPresentedViewTouchForceProvider:0];
  [(_UIPreviewInteractionController *)self setPausingTouchForceProvider:0];
  previewInteraction = [(_UIPreviewInteractionController *)self previewInteraction];
  [previewInteraction setTouchForceProvider:0];
}

- (void)_revertInteractionEffectToStartState
{
  currentInteractionEffect = [(_UIPreviewInteractionController *)self currentInteractionEffect];

  if (currentInteractionEffect)
  {
    currentInteractionEffect2 = [(_UIPreviewInteractionController *)self currentInteractionEffect];
    [currentInteractionEffect2 setForceFactor:0.0];
  }
}

- (id)_newHighlighterForPreviewingContext:(id)context
{
  customViewForInteractiveHighlight = [context customViewForInteractiveHighlight];
  v4 = off_1E70EBF28;
  if (customViewForInteractiveHighlight)
  {
    v4 = off_1E70EBF18;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (void)_finalizeHighlighterAfterPreviewViewControllerPresentation
{
  currentHighlighter = [(_UIPreviewInteractionController *)self currentHighlighter];
  if (currentHighlighter)
  {
    v5 = currentHighlighter;
    currentPreviewingContext = [(_UIPreviewInteractionController *)self currentPreviewingContext];
    [v5 finalizeHighlightForPreviewingContext:currentPreviewingContext];

    [(_UIPreviewInteractionController *)self setCurrentHighlighter:0];
    currentHighlighter = v5;
  }
}

- (BOOL)_isLongPressGestureRecognizerUsedForDelayingActions:(id)actions
{
  actionsCopy = actions;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isDragInteractionGestureRecognizer = 0;
  }

  else if ([actionsCopy _isGestureType:1] && (objc_msgSend(actionsCopy, "minimumPressDuration"), v5 >= 0.5))
  {
    isDragInteractionGestureRecognizer = 1;
  }

  else
  {
    isDragInteractionGestureRecognizer = _isDragInteractionGestureRecognizer(actionsCopy);
  }

  return isDragInteractionGestureRecognizer;
}

- (void)_handleSteadyTouchForceGesture:(id)gesture
{
  v32 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  if ([gestureCopy state] == 3)
  {
    [gestureCopy _allActiveTouches];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = v29 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v21 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          gestureRecognizers = [v10 gestureRecognizers];
          v12 = [gestureRecognizers countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v23;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v23 != v14)
                {
                  objc_enumerationMutation(gestureRecognizers);
                }

                v16 = *(*(&v22 + 1) + 8 * j);
                if (-[_UIPreviewInteractionController _isLongPressGestureRecognizerUsedForDelayingActions:](self, "_isLongPressGestureRecognizerUsedForDelayingActions:", v16) && [v16 state] != 5)
                {
                  currentPreviewViewController = [(_UIPreviewInteractionController *)self currentPreviewViewController];

                  if (currentPreviewViewController)
                  {
                    previewInteraction = [(_UIPreviewInteractionController *)self previewInteraction];
                    [previewInteraction cancelInteraction];

                    previewInteraction2 = [(_UIPreviewInteractionController *)self previewInteraction];
                    [(_UIPreviewInteractionController *)self previewInteractionDidCancel:previewInteraction2];
                  }

                  else
                  {
                    revealGestureRecognizer = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
                    [revealGestureRecognizer cancel];

                    previewInteraction2 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
                    [previewInteraction2 cancel];
                  }

                  goto LABEL_23;
                }
              }

              v13 = [gestureRecognizers countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v8 = v21;
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

LABEL_23:
  }
}

- (BOOL)_viewControllerIsChildOfTwoColumnSplitViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LODWORD(self) = [controllerCopy _isCollapsed] ^ 1;
  }

  else if (controllerCopy)
  {
    parentViewController = [controllerCopy parentViewController];
    if (!parentViewController)
    {
      presentationController = [controllerCopy presentationController];
      v7 = presentationController;
      if (presentationController && ([presentationController shouldPresentInFullscreen] & 1) == 0)
      {
        parentViewController = [controllerCopy presentingViewController];
      }

      else
      {
        parentViewController = 0;
      }
    }

    LOBYTE(self) = [(_UIPreviewInteractionController *)self _viewControllerIsChildOfTwoColumnSplitViewController:parentViewController];
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (BOOL)_previewingIsPossibleForView:(id)view
{
  _viewControllerForAncestor = [view _viewControllerForAncestor];
  LOBYTE(self) = [(_UIPreviewInteractionController *)self _viewControllerIsChildOfTwoColumnSplitViewController:_viewControllerForAncestor];

  return self ^ 1;
}

- (id)_preparedInteractionEffect
{
  p_currentInteractionEffect = &self->_currentInteractionEffect;
  currentInteractionEffect = self->_currentInteractionEffect;
  if (currentInteractionEffect)
  {
    v4 = currentInteractionEffect;
  }

  else
  {
    v4 = objc_alloc_init(_UIInteractionEffect_deprecated);
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61___UIPreviewInteractionController__preparedInteractionEffect__block_invoke;
    v7[3] = &unk_1E711B3B0;
    objc_copyWeak(&v8, &location);
    [(_UIInteractionEffect_deprecated *)v4 setUpdateBlock:v7];
    objc_storeStrong(p_currentInteractionEffect, v4);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)_stopCurrentInteractionEffect
{
  currentInteractionEffect = [(_UIPreviewInteractionController *)self currentInteractionEffect];
  [currentInteractionEffect setUpdateBlock:0];

  [(_UIPreviewInteractionController *)self setCurrentInteractionEffect:0];
}

- (id)_preferredNavigationControllerForCommitTransition
{
  currentPreviewViewController = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  presentingViewController = [currentPreviewViewController presentingViewController];

  v4 = objc_opt_class();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__158;
  v13 = __Block_byref_object_dispose__158;
  if (objc_opt_isKindOfClass())
  {
    v5 = presentingViewController;
  }

  else
  {
    v5 = 0;
  }

  v14 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84___UIPreviewInteractionController__preferredNavigationControllerForCommitTransition__block_invoke;
  v8[3] = &unk_1E711B270;
  v8[4] = &v9;
  v8[5] = v4;
  [presentingViewController _traverseViewControllerHierarchyFromLevel:0 withBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_preparePreviewPresentationControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  currentHighlighter = [(_UIPreviewInteractionController *)self currentHighlighter];
  [neededCopy setCurrentHighlighter:currentHighlighter];

  currentPresentationTransition = [(_UIPreviewInteractionController *)self currentPresentationTransition];
  [currentPresentationTransition interactiveTransitionFraction];
  [neededCopy setInteractiveTransitionFraction:?];
  _preparedPresentationAnimator = [currentPresentationTransition _preparedPresentationAnimator];
  [neededCopy setCurrentTransitionAnimator:_preparedPresentationAnimator];
}

- (id)_previewPresentationControllerForViewController:(id)controller
{
  v3 = [controller _existingPresentationControllerImmediate:1 effective:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetCustomPresentationHooks
{
  currentPreviewViewController = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  [currentPreviewViewController _setOverrideUseCustomPresentation:0];

  currentPreviewViewController2 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  [currentPreviewViewController2 _setOverrideTransitioningDelegate:0];
}

- (void)_overrideSourceViewForBinaryCompatibilityIfNeeded:(id *)needed sourceRect:(CGRect *)rect
{
  currentPresentationController = [(_UIPreviewInteractionController *)self currentPresentationController];
  sourceView = [currentPresentationController sourceView];

  if (sourceView)
  {
    *needed = sourceView;
    currentPresentationController2 = [(_UIPreviewInteractionController *)self currentPresentationController];
    [currentPresentationController2 sourceRect];
    rect->origin.x = v9;
    rect->origin.y = v10;
    rect->size.width = v11;
    rect->size.height = v12;
  }
}

- (void)_handlePreviewActionsGesture:(id)gesture
{
  gestureCopy = gesture;
  currentPresentationController = [(_UIPreviewInteractionController *)self currentPresentationController];

  if (currentPresentationController && ![(_UIPreviewInteractionController *)self performingCommitTransition]&& [(_UIPreviewInteractionController *)self hasTransitionedToPreview])
  {
    currentPresentationController2 = [(_UIPreviewInteractionController *)self currentPresentationController];
    containerView = [currentPresentationController2 containerView];

    currentPresentationController3 = [(_UIPreviewInteractionController *)self currentPresentationController];
    contentPlatterView = [currentPresentationController3 contentPlatterView];

    previewActionsController = [(_UIPreviewInteractionController *)self previewActionsController];

    if (!previewActionsController)
    {
      currentPresentationController4 = [(_UIPreviewInteractionController *)self currentPresentationController];
      presentedViewController = [currentPresentationController4 presentedViewController];

      if (!containerView || !contentPlatterView || !presentedViewController)
      {
LABEL_28:

        goto LABEL_29;
      }

      v13 = [_UIPreviewActionsController actionsControllerWithContainerView:containerView platterView:contentPlatterView presentedViewController:presentedViewController delegate:self];
      [(_UIPreviewInteractionController *)self setPreviewActionsController:v13];
    }

    presentedViewController = [(_UIPreviewInteractionController *)self previewActionsController];
    if (presentedViewController)
    {
      [gestureCopy locationInView:containerView];
      v15 = v14;
      v17 = v16;
      if ([gestureCopy state] == 1 || objc_msgSend(gestureCopy, "state") == 2)
      {
        previewActionsController2 = [(_UIPreviewInteractionController *)self previewActionsController];
        [previewActionsController2 frameForActionView];
        v32.x = v15;
        v32.y = v17;
        v19 = CGRectContainsPoint(v33, v32);

        if (!v19)
        {
          if ([presentedViewController hasBegun])
          {
            [presentedViewController updatePanningLocation:{v15, v17}];
          }

          else
          {
            [presentedViewController beginPanningAtLocation:{v15, v17}];
            [(_UIPreviewInteractionController *)self setInitialLocationForPreviewActionsPanning:v15, v17];
          }
        }
      }

      else if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
      {
        if (containerView)
        {
          previewInteraction = [(_UIPreviewInteractionController *)self previewInteraction];
          touchForceProvider = [previewInteraction touchForceProvider];
          presentedViewTouchForceProvider = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];

          if (touchForceProvider != presentedViewTouchForceProvider)
          {
            v23 = [[_UIPreviewInteractionCompatibilityTouchForceProvider alloc] initWithView:containerView];
            [(_UIPreviewInteractionController *)self setPresentedViewTouchForceProvider:v23];

            gestureRecognizerForPreviewActions = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
            [containerView addGestureRecognizer:gestureRecognizerForPreviewActions];
          }
        }

        if ([presentedViewController hasBegun])
        {
          [presentedViewController endPanningAtLocation:{v15, v17}];
        }

        [presentedViewController totalPanningTranslation];
        v26 = v25;
        v28 = v27;
        [(_UIPreviewInteractionController *)self initialLocationForPreviewActionsPanning];
        if (!containerView || sqrt((v15 - v29) * (v15 - v29) + (v17 - v30) * (v17 - v30)) < 45.0 && v26 <= 45.0 && v28 <= 45.0)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __64___UIPreviewInteractionController__handlePreviewActionsGesture___block_invoke;
          v31[3] = &unk_1E70F3590;
          v31[4] = self;
          [presentedViewController dismissPreviewActionsWithCompletion:v31];
        }
      }
    }

    goto LABEL_28;
  }

LABEL_29:
}

- (CGPoint)initialPlatterPositionForPreviewActionsController:(id)controller
{
  currentPresentationController = [(_UIPreviewInteractionController *)self currentPresentationController];
  [currentPresentationController _computedPlatterFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5 + v9 * 0.5;
  v13 = v7 + v11 * 0.5;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGSize)maximumPreviewActionsViewSizeForPreviewActionsController:(id)controller
{
  currentPresentationController = [(_UIPreviewInteractionController *)self currentPresentationController];
  containerView = [currentPresentationController containerView];
  [containerView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  _UIPreviewInteractionPlatterInsetsForRect(v6, v8, v10, v12);
  v14 = v8 + v13;
  v17 = v10 - (v15 + v16);
  v23.size.height = v12 - (v13 + v18);
  v23.origin.x = v6 + v15;
  v23.origin.y = v14;
  v23.size.width = v17;
  Width = CGRectGetWidth(v23);
  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v20 = CGRectGetHeight(v24) * 0.8;
  v21 = Width;
  result.height = v20;
  result.width = v21;
  return result;
}

- (void)previewActionsController:(id)controller didCompleteWithSelectedAction:(id)action
{
  actionCopy = action;
  currentPreviewViewController = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  previewInteraction = [(_UIPreviewInteractionController *)self previewInteraction];
  [previewInteraction cancelInteraction];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90___UIPreviewInteractionController_previewActionsController_didCompleteWithSelectedAction___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v11 = actionCopy;
  v12 = currentPreviewViewController;
  v8 = currentPreviewViewController;
  v9 = actionCopy;
  [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeededWithCompletion:v10];
}

- (void)didDismissPreviewActionsController:(id)controller
{
  previewInteraction = [(_UIPreviewInteractionController *)self previewInteraction];
  [previewInteraction cancelInteraction];

  [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeeded];
}

- (void)previewActionsController:(id)controller didUpdatePlatterTranslation:(CGVector)translation withVelocity:(CGVector)velocity
{
  v6 = fabs(translation.dx) <= 22.0;
  v7 = fabs(translation.dy) <= 44.0 && v6;
  pausingTouchForceProvider = [(_UIPreviewInteractionController *)self pausingTouchForceProvider];

  if (pausingTouchForceProvider)
  {
    if (v7)
    {
      presentedViewTouchForceProvider = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];
      if (presentedViewTouchForceProvider)
      {
        presentedViewTouchForceProvider2 = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];
      }

      else
      {
        presentedViewTouchForceProvider2 = 0;
      }

      previewInteraction = [(_UIPreviewInteractionController *)self previewInteraction];
      [previewInteraction setTouchForceProvider:presentedViewTouchForceProvider2];

      if (presentedViewTouchForceProvider)
      {
      }

      [(_UIPreviewInteractionController *)self setPausingTouchForceProvider:0];
    }
  }

  else if (!v7)
  {
    presentedViewTouchForceProvider3 = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];
    if (presentedViewTouchForceProvider3)
    {
      presentedViewTouchForceProvider4 = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];
    }

    else
    {
      previewInteraction2 = [(_UIPreviewInteractionController *)self previewInteraction];
      presentedViewTouchForceProvider4 = [previewInteraction2 touchForceProvider];
    }

    v14 = [[_UIPreviewInteractionDecayTouchForceProvider alloc] initWithTouchForceProvider:presentedViewTouchForceProvider4];
    [(_UIPreviewInteractionController *)self setPausingTouchForceProvider:v14];

    pausingTouchForceProvider2 = [(_UIPreviewInteractionController *)self pausingTouchForceProvider];
    previewInteraction3 = [(_UIPreviewInteractionController *)self previewInteraction];
    [previewInteraction3 setTouchForceProvider:pausingTouchForceProvider2];

    [(_UIPreviewInteractionController *)self _revertInteractionEffectToStartState];
  }
}

- (_UIPreviewInteractionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (CGPoint)initialLocationForPreviewActionsPanning
{
  x = self->_initialLocationForPreviewActionsPanning.x;
  y = self->_initialLocationForPreviewActionsPanning.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIViewControllerPreviewing_Internal)currentPreviewingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_currentPreviewingContext);

  return WeakRetained;
}

@end