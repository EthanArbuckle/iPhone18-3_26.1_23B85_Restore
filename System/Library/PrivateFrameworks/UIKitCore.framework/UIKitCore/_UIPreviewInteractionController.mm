@interface _UIPreviewInteractionController
- (BOOL)_isLongPressGestureRecognizerUsedForDelayingActions:(id)a3;
- (BOOL)_preparePreviewViewControllerPresentationFromPreviewInteraction:(id)a3;
- (BOOL)_previewInteractionShouldEndOnGestureCompletion:(id)a3;
- (BOOL)_previewingIsPossibleForView:(id)a3;
- (BOOL)_viewControllerIsChildOfTwoColumnSplitViewController:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)previewInteractionShouldBegin:(id)a3;
- (CGPoint)initialLocationForPreviewActionsPanning;
- (CGPoint)initialPlatterPositionForPreviewActionsController:(id)a3;
- (CGPoint)location;
- (CGSize)maximumPreviewActionsViewSizeForPreviewActionsController:(id)a3;
- (UIView)sourceView;
- (UIViewController)presentingViewController;
- (UIViewControllerPreviewing_Internal)currentPreviewingContext;
- (_UIPreviewInteractionController)initWithView:(id)a3;
- (_UIPreviewInteractionControllerDelegate)delegate;
- (id)_newHighlighterForPreviewingContext:(id)a3;
- (id)_preferredNavigationControllerForCommitTransition;
- (id)_preparedInteractionEffect;
- (id)_previewPresentationControllerForViewController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_dismissPreviewViewControllerIfNeeded;
- (void)_dismissPreviewViewControllerIfNeededWithCompletion:(id)a3;
- (void)_finalizeAfterPreviewViewControllerPresentation;
- (void)_finalizeHighlighterAfterPreviewViewControllerPresentation;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_handlePreviewActionsGesture:(id)a3;
- (void)_handleSteadyTouchForceGesture:(id)a3;
- (void)_overrideSourceViewForBinaryCompatibilityIfNeeded:(id *)a3 sourceRect:(CGRect *)a4;
- (void)_preparePreviewPresentationControllerIfNeeded:(id)a3;
- (void)_resetCustomPresentationHooks;
- (void)_revertInteractionEffectToStartState;
- (void)_stopCurrentInteractionEffect;
- (void)commitInteractivePreview;
- (void)dealloc;
- (void)didDismissPreviewActionsController:(id)a3;
- (void)previewActionsController:(id)a3 didCompleteWithSelectedAction:(id)a4;
- (void)previewActionsController:(id)a3 didUpdatePlatterTranslation:(CGVector)a4 withVelocity:(CGVector)a5;
- (void)previewInteraction:(id)a3 didUpdateCommitTransition:(double)a4 ended:(BOOL)a5;
- (void)previewInteraction:(id)a3 didUpdatePreviewTransition:(double)a4 ended:(BOOL)a5;
- (void)previewInteractionDidCancel:(id)a3;
@end

@implementation _UIPreviewInteractionController

- (_UIPreviewInteractionController)initWithView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionController.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v17.receiver = self;
  v17.super_class = _UIPreviewInteractionController;
  v6 = [(_UIPreviewInteractionController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_sourceView, v5);
    v8 = [[UIPreviewInteraction alloc] initWithView:v5];
    previewInteraction = v7->_previewInteraction;
    v7->_previewInteraction = v8;

    [(UIPreviewInteraction *)v7->_previewInteraction setDelegate:v7];
    v10 = [(UILongPressGestureRecognizer *)[_UIPreviewInteractionGestureRecognizer alloc] initWithTarget:v7 action:sel__handleRevealGesture_];
    [(UIGestureRecognizer *)v10 setName:@"Reveal mk2"];
    [(UIGestureRecognizer *)v10 setAllowedTouchTypes:&unk_1EFE2D1C8];
    [(UILongPressGestureRecognizer *)v10 setMinimumPressDuration:0.0];
    [(_UIPreviewInteractionGestureRecognizer *)v10 setDelegate:v7];
    [v5 addGestureRecognizer:v10];
    [(_UIPreviewInteractionController *)v7 setRevealGestureRecognizer:v10];

    v11 = [(UILongPressGestureRecognizer *)[_UIPreviewInteractionGestureRecognizer alloc] initWithTarget:v7 action:sel__handlePreviewGesture_];
    [(UIGestureRecognizer *)v11 setName:@"Preview mk2"];
    [(UIGestureRecognizer *)v11 setAllowedTouchTypes:&unk_1EFE2D1C8];
    [(UIGestureRecognizer *)v11 setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v11 setMinimumPressDuration:0.0];
    [(_UIPreviewInteractionGestureRecognizer *)v11 setDelegate:v7];
    [v5 addGestureRecognizer:v11];
    [(_UIPreviewInteractionController *)v7 setPreviewGestureRecognizer:v11];

    v12 = [[_UITouchesObservingGestureRecognizer alloc] initWithTarget:v7 action:sel__handlePreviewActionsGesture_];
    [(UIGestureRecognizer *)v12 setAllowedTouchTypes:&unk_1EFE2D1C8];
    [(UIGestureRecognizer *)v12 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v12 setDelegate:v7];
    [v5 addGestureRecognizer:v12];
    [(_UIPreviewInteractionController *)v7 setGestureRecognizerForPreviewActions:v12];

    v13 = [[_UISteadyTouchForceGestureRecognizer alloc] initWithTarget:v7 action:sel__handleSteadyTouchForceGesture_];
    [(UIGestureRecognizer *)v13 setAllowedTouchTypes:&unk_1EFE2D1C8];
    [(UIGestureRecognizer *)v13 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v13 setDelegate:v7];
    [v5 addGestureRecognizer:v13];
    [(_UIPreviewInteractionController *)v7 setSteadyTouchForceGestureRecognizer:v13];

    v14 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
  v4 = [v3 view];
  v5 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
  [v4 removeGestureRecognizer:v5];

  v6 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
  v7 = [v6 view];
  v8 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
  [v7 removeGestureRecognizer:v8];

  v9 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
  v10 = [v9 view];
  v11 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
  [v10 removeGestureRecognizer:v11];

  v12 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  v13 = [v12 view];
  v14 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  [v13 removeGestureRecognizer:v14];

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
      v3 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
      if (v3)
      {
        [(_UIPreviewInteractionController *)self _stopCurrentInteractionEffect];
        [(_UIPreviewInteractionController *)self setPerformingCommitTransition:1];
        [(_UIPreviewInteractionController *)self setCommitTransitionScheduled:0];
        [(_UIPreviewInteractionController *)self _resetCustomPresentationHooks];
        v4 = [[_UIPreviewInteractionCommitTransition alloc] initWithPresentedViewController:v3];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __59___UIPreviewInteractionController_commitInteractivePreview__block_invoke;
        v7[3] = &unk_1E70F35B8;
        v7[4] = self;
        v8 = v3;
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

- (BOOL)previewInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionController *)self currentPreviewViewController];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [(_UIPreviewInteractionController *)self _preparePreviewViewControllerPresentationFromPreviewInteraction:v4];
    v7 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
    v8 = v7;
    if (v6)
    {
      [v7 recognize];
    }

    else
    {
      [v7 cancel];

      v9 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
      [v9 cancel];

      v8 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
      [v8 cancel];
    }
  }

  return v6;
}

- (void)previewInteraction:(id)a3 didUpdatePreviewTransition:(double)a4 ended:(BOOL)a5
{
  v5 = a5;
  v10 = [(_UIPreviewInteractionController *)self currentPresentationTransition];
  [v10 updateInteractiveTransition:a4];
  if (v5)
  {
    [(_UIPreviewInteractionController *)self setHasTransitionedToPreview:1];
    v8 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
    [v8 recognize];

    v9 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
    [v9 cancel];

    [v10 finishTransition];
  }
}

- (void)previewInteraction:(id)a3 didUpdateCommitTransition:(double)a4 ended:(BOOL)a5
{
  v5 = a5;
  v8 = [(_UIPreviewInteractionController *)self _preparedInteractionEffect];
  [v8 setForceFactor:a4];

  if (v5)
  {

    [(_UIPreviewInteractionController *)self commitInteractivePreview];
  }
}

- (void)previewInteractionDidCancel:(id)a3
{
  if (![(_UIPreviewInteractionController *)self performingCommitTransition])
  {

    [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeeded];
  }
}

- (BOOL)_previewInteractionShouldEndOnGestureCompletion:(id)a3
{
  v4 = [(_UIPreviewInteractionController *)self previewActionsController];

  if (v4)
  {
    v5 = [(_UIPreviewInteractionController *)self previewActionsController];
    v6 = [v5 platterPanned] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = objc_alloc_init(_UIPreviewInteractionDismissTransition);
  v5 = [(_UIPreviewInteractionDismissTransition *)v4 _preparedDismissAnimator];
  v6 = [(_UIPreviewInteractionController *)self currentPresentationController];
  [v6 setCurrentTransitionAnimator:v5];

  v7 = [(_UIPreviewInteractionController *)self currentPresentationController];
  [v7 setInteractiveTransitionFraction:0.0];

  [(_UIPreviewInteractionController *)self setCurrentDismissTransition:v4];

  return v4;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [_UIPreviewPresentationController2 alloc];
  v10 = [(_UIPreviewInteractionController *)self currentPreviewingContext];
  v11 = [(_UIPreviewPresentationController2 *)v9 initWithPresentedViewController:v8 presentingViewController:v7 previewingContext:v10];

  [(_UIPreviewInteractionController *)self _preparePreviewPresentationControllerIfNeeded:v11];
  [(_UIPreviewInteractionController *)self setCurrentPresentationController:v11];

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];

  v9 = v8 == v7 && [(_UIPreviewInteractionController *)self _isLongPressGestureRecognizerUsedForDelayingActions:v6];
  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];

  if (v8 == v6)
  {
    v12 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];

    if (v12 == v7)
    {
      goto LABEL_13;
    }

    v13 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];

    if (v13 == v7)
    {
      goto LABEL_13;
    }

    if (_UIPreviewInteractionIsTextGestureRecognizer(v7))
    {
      v11 = 0;
      goto LABEL_14;
    }

    if ([(_UIPreviewInteractionController *)self _isLongPressGestureRecognizerUsedForDelayingActions:v7])
    {
LABEL_13:
      v11 = 1;
      goto LABEL_14;
    }
  }

  v9 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];

  if (v9 == v6)
  {
    v14 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];

    if (v14 == v7)
    {
      goto LABEL_13;
    }

    v15 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];

    if (v15 == v7 || (_UIPreviewInteractionIsTextGestureRecognizer(v7) & 1) != 0)
    {
      goto LABEL_13;
    }
  }

  v10 = [(_UIPreviewInteractionController *)self steadyTouchForceGestureRecognizer];
  v11 = v10 == v6;

LABEL_14:
  return v11;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];

  if (v5 == v4)
  {
    [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeeded];
    v6 = [(_UIPreviewInteractionController *)self previewInteraction];
    [v6 cancelInteraction];
  }
}

- (BOOL)_preparePreviewViewControllerPresentationFromPreviewInteraction:(id)a3
{
  v5 = a3;
  v6 = [v5 view];
  if (![(_UIPreviewInteractionController *)self _previewingIsPossibleForView:v6])
  {
    v15 = 0;
    goto LABEL_13;
  }

  v7 = [(_UIPreviewInteractionController *)self delegate];
  [v5 locationInCoordinateSpace:v6];
  v9 = v8;
  v11 = v10;
  v27 = 0;
  v12 = [v7 previewInteractionController:self viewControllerForPreviewingAtLocation:v6 inCoordinateSpace:&v27 presentingViewController:?];
  v13 = v27;
  v14 = v13;
  v15 = v12 != 0;
  if (v12)
  {
    v24 = v13;
    v16 = [v12 presentingViewController];
    if (v16 || ([v12 isBeingPresented] & 1) != 0)
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
        [v7 previewInteractionController:self willPresentViewController:v12 forLocation:v6 inSourceView:{v9, v11}];
      }

      v17 = objc_alloc_init(_UIPreviewInteractionPresentationTransition);
      [(_UIPreviewInteractionController *)self setCurrentPresentationTransition:v17];
      v18 = [(_UIPreviewInteractionController *)self currentPreviewingContext];
      v19 = [(_UIPreviewInteractionController *)self _newHighlighterForPreviewingContext:v18];
      [v19 prepareHighlightWithPreviewingContext:v18];
      [(_UIPreviewInteractionController *)self setCurrentHighlighter:v19];
      v20 = [(_UIPreviewInteractionController *)self currentPresentationController];
      [(_UIPreviewInteractionController *)self _preparePreviewPresentationControllerIfNeeded:v20];

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
        [v7 previewInteractionController:self willPresentViewController:v21];
      }

      v14 = v24;
      goto LABEL_11;
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionController.m" lineNumber:394 description:@"The view controller returned from -previewViewControllerForPosition:inSourceView: must not already be presented"];

    goto LABEL_6;
  }

LABEL_11:

LABEL_13:
  return v15;
}

- (void)_dismissPreviewViewControllerIfNeeded
{
  [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeededWithCompletion:0];
  v3 = [(_UIPreviewInteractionController *)self previewActionsController];
  [v3 dismissPreviewActionsWithCompletion:0];
}

- (void)_dismissPreviewViewControllerIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  if (v5 && ![(_UIPreviewInteractionController *)self performingCommitTransition])
  {
    v6 = [v5 transitionCoordinator];
    if ([v6 isInteractive])
    {
      v7 = [(_UIPreviewInteractionController *)self currentPresentationTransition];
      [v7 cancelTransition];

      if (v4)
      {
        v4[2](v4);
      }
    }

    else
    {
      [(_UIPreviewInteractionController *)self setDismissingPreview:1];
      v8 = [(_UIPreviewInteractionController *)self delegate];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __87___UIPreviewInteractionController__dismissPreviewViewControllerIfNeededWithCompletion___block_invoke;
      v16 = &unk_1E70F5F08;
      v9 = v8;
      v17 = v9;
      v18 = self;
      v10 = v5;
      v19 = v10;
      v20 = v4;
      v11 = _Block_copy(&v13);
      v12 = [v10 presentingViewController];

      if (v12)
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
  v3 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  [v3 _setOverrideUseCustomPresentation:0];

  v4 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  [v4 _setOverrideTransitioningDelegate:0];

  [(_UIPreviewInteractionController *)self setCurrentPreviewViewController:0];
  [(_UIPreviewInteractionController *)self setCurrentPresentationController:0];
  v5 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
  [v5 setEnabled:0];

  v6 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
  [v6 setEnabled:1];

  v7 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
  [v7 setEnabled:0];

  v8 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
  [v8 setEnabled:1];

  v9 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  [v9 setEnabled:0];

  v10 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  [v10 setEnabled:1];

  v11 = [(_UIPreviewInteractionController *)self sourceView];
  v12 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
  [v11 addGestureRecognizer:v12];

  [(_UIPreviewInteractionController *)self setPreviewActionsController:0];
  [(_UIPreviewInteractionController *)self setHasTransitionedToPreview:0];
  [(_UIPreviewInteractionController *)self setPresentedViewTouchForceProvider:0];
  [(_UIPreviewInteractionController *)self setPausingTouchForceProvider:0];
  v13 = [(_UIPreviewInteractionController *)self previewInteraction];
  [v13 setTouchForceProvider:0];
}

- (void)_revertInteractionEffectToStartState
{
  v3 = [(_UIPreviewInteractionController *)self currentInteractionEffect];

  if (v3)
  {
    v4 = [(_UIPreviewInteractionController *)self currentInteractionEffect];
    [v4 setForceFactor:0.0];
  }
}

- (id)_newHighlighterForPreviewingContext:(id)a3
{
  v3 = [a3 customViewForInteractiveHighlight];
  v4 = off_1E70EBF28;
  if (v3)
  {
    v4 = off_1E70EBF18;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (void)_finalizeHighlighterAfterPreviewViewControllerPresentation
{
  v3 = [(_UIPreviewInteractionController *)self currentHighlighter];
  if (v3)
  {
    v5 = v3;
    v4 = [(_UIPreviewInteractionController *)self currentPreviewingContext];
    [v5 finalizeHighlightForPreviewingContext:v4];

    [(_UIPreviewInteractionController *)self setCurrentHighlighter:0];
    v3 = v5;
  }
}

- (BOOL)_isLongPressGestureRecognizerUsedForDelayingActions:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isDragInteractionGestureRecognizer = 0;
  }

  else if ([v3 _isGestureType:1] && (objc_msgSend(v3, "minimumPressDuration"), v5 >= 0.5))
  {
    isDragInteractionGestureRecognizer = 1;
  }

  else
  {
    isDragInteractionGestureRecognizer = _isDragInteractionGestureRecognizer(v3);
  }

  return isDragInteractionGestureRecognizer;
}

- (void)_handleSteadyTouchForceGesture:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] == 3)
  {
    [v4 _allActiveTouches];
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
          v11 = [v10 gestureRecognizers];
          v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v22 + 1) + 8 * j);
                if (-[_UIPreviewInteractionController _isLongPressGestureRecognizerUsedForDelayingActions:](self, "_isLongPressGestureRecognizerUsedForDelayingActions:", v16) && [v16 state] != 5)
                {
                  v17 = [(_UIPreviewInteractionController *)self currentPreviewViewController];

                  if (v17)
                  {
                    v18 = [(_UIPreviewInteractionController *)self previewInteraction];
                    [v18 cancelInteraction];

                    v19 = [(_UIPreviewInteractionController *)self previewInteraction];
                    [(_UIPreviewInteractionController *)self previewInteractionDidCancel:v19];
                  }

                  else
                  {
                    v20 = [(_UIPreviewInteractionController *)self revealGestureRecognizer];
                    [v20 cancel];

                    v19 = [(_UIPreviewInteractionController *)self previewGestureRecognizer];
                    [v19 cancel];
                  }

                  goto LABEL_23;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (BOOL)_viewControllerIsChildOfTwoColumnSplitViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LODWORD(self) = [v4 _isCollapsed] ^ 1;
  }

  else if (v4)
  {
    v5 = [v4 parentViewController];
    if (!v5)
    {
      v6 = [v4 presentationController];
      v7 = v6;
      if (v6 && ([v6 shouldPresentInFullscreen] & 1) == 0)
      {
        v5 = [v4 presentingViewController];
      }

      else
      {
        v5 = 0;
      }
    }

    LOBYTE(self) = [(_UIPreviewInteractionController *)self _viewControllerIsChildOfTwoColumnSplitViewController:v5];
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (BOOL)_previewingIsPossibleForView:(id)a3
{
  v4 = [a3 _viewControllerForAncestor];
  LOBYTE(self) = [(_UIPreviewInteractionController *)self _viewControllerIsChildOfTwoColumnSplitViewController:v4];

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
  v3 = [(_UIPreviewInteractionController *)self currentInteractionEffect];
  [v3 setUpdateBlock:0];

  [(_UIPreviewInteractionController *)self setCurrentInteractionEffect:0];
}

- (id)_preferredNavigationControllerForCommitTransition
{
  v2 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  v3 = [v2 presentingViewController];

  v4 = objc_opt_class();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__158;
  v13 = __Block_byref_object_dispose__158;
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
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
  [v3 _traverseViewControllerHierarchyFromLevel:0 withBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_preparePreviewPresentationControllerIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionController *)self currentHighlighter];
  [v4 setCurrentHighlighter:v5];

  v7 = [(_UIPreviewInteractionController *)self currentPresentationTransition];
  [v7 interactiveTransitionFraction];
  [v4 setInteractiveTransitionFraction:?];
  v6 = [v7 _preparedPresentationAnimator];
  [v4 setCurrentTransitionAnimator:v6];
}

- (id)_previewPresentationControllerForViewController:(id)a3
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
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
  v3 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  [v3 _setOverrideUseCustomPresentation:0];

  v4 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  [v4 _setOverrideTransitioningDelegate:0];
}

- (void)_overrideSourceViewForBinaryCompatibilityIfNeeded:(id *)a3 sourceRect:(CGRect *)a4
{
  v7 = [(_UIPreviewInteractionController *)self currentPresentationController];
  v13 = [v7 sourceView];

  if (v13)
  {
    *a3 = v13;
    v8 = [(_UIPreviewInteractionController *)self currentPresentationController];
    [v8 sourceRect];
    a4->origin.x = v9;
    a4->origin.y = v10;
    a4->size.width = v11;
    a4->size.height = v12;
  }
}

- (void)_handlePreviewActionsGesture:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionController *)self currentPresentationController];

  if (v5 && ![(_UIPreviewInteractionController *)self performingCommitTransition]&& [(_UIPreviewInteractionController *)self hasTransitionedToPreview])
  {
    v6 = [(_UIPreviewInteractionController *)self currentPresentationController];
    v7 = [v6 containerView];

    v8 = [(_UIPreviewInteractionController *)self currentPresentationController];
    v9 = [v8 contentPlatterView];

    v10 = [(_UIPreviewInteractionController *)self previewActionsController];

    if (!v10)
    {
      v11 = [(_UIPreviewInteractionController *)self currentPresentationController];
      v12 = [v11 presentedViewController];

      if (!v7 || !v9 || !v12)
      {
LABEL_28:

        goto LABEL_29;
      }

      v13 = [_UIPreviewActionsController actionsControllerWithContainerView:v7 platterView:v9 presentedViewController:v12 delegate:self];
      [(_UIPreviewInteractionController *)self setPreviewActionsController:v13];
    }

    v12 = [(_UIPreviewInteractionController *)self previewActionsController];
    if (v12)
    {
      [v4 locationInView:v7];
      v15 = v14;
      v17 = v16;
      if ([v4 state] == 1 || objc_msgSend(v4, "state") == 2)
      {
        v18 = [(_UIPreviewInteractionController *)self previewActionsController];
        [v18 frameForActionView];
        v32.x = v15;
        v32.y = v17;
        v19 = CGRectContainsPoint(v33, v32);

        if (!v19)
        {
          if ([v12 hasBegun])
          {
            [v12 updatePanningLocation:{v15, v17}];
          }

          else
          {
            [v12 beginPanningAtLocation:{v15, v17}];
            [(_UIPreviewInteractionController *)self setInitialLocationForPreviewActionsPanning:v15, v17];
          }
        }
      }

      else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
      {
        if (v7)
        {
          v20 = [(_UIPreviewInteractionController *)self previewInteraction];
          v21 = [v20 touchForceProvider];
          v22 = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];

          if (v21 != v22)
          {
            v23 = [[_UIPreviewInteractionCompatibilityTouchForceProvider alloc] initWithView:v7];
            [(_UIPreviewInteractionController *)self setPresentedViewTouchForceProvider:v23];

            v24 = [(_UIPreviewInteractionController *)self gestureRecognizerForPreviewActions];
            [v7 addGestureRecognizer:v24];
          }
        }

        if ([v12 hasBegun])
        {
          [v12 endPanningAtLocation:{v15, v17}];
        }

        [v12 totalPanningTranslation];
        v26 = v25;
        v28 = v27;
        [(_UIPreviewInteractionController *)self initialLocationForPreviewActionsPanning];
        if (!v7 || sqrt((v15 - v29) * (v15 - v29) + (v17 - v30) * (v17 - v30)) < 45.0 && v26 <= 45.0 && v28 <= 45.0)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __64___UIPreviewInteractionController__handlePreviewActionsGesture___block_invoke;
          v31[3] = &unk_1E70F3590;
          v31[4] = self;
          [v12 dismissPreviewActionsWithCompletion:v31];
        }
      }
    }

    goto LABEL_28;
  }

LABEL_29:
}

- (CGPoint)initialPlatterPositionForPreviewActionsController:(id)a3
{
  v3 = [(_UIPreviewInteractionController *)self currentPresentationController];
  [v3 _computedPlatterFrame];
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

- (CGSize)maximumPreviewActionsViewSizeForPreviewActionsController:(id)a3
{
  v3 = [(_UIPreviewInteractionController *)self currentPresentationController];
  v4 = [v3 containerView];
  [v4 frame];
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

- (void)previewActionsController:(id)a3 didCompleteWithSelectedAction:(id)a4
{
  v5 = a4;
  v6 = [(_UIPreviewInteractionController *)self currentPreviewViewController];
  v7 = [(_UIPreviewInteractionController *)self previewInteraction];
  [v7 cancelInteraction];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90___UIPreviewInteractionController_previewActionsController_didCompleteWithSelectedAction___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeededWithCompletion:v10];
}

- (void)didDismissPreviewActionsController:(id)a3
{
  v4 = [(_UIPreviewInteractionController *)self previewInteraction];
  [v4 cancelInteraction];

  [(_UIPreviewInteractionController *)self _dismissPreviewViewControllerIfNeeded];
}

- (void)previewActionsController:(id)a3 didUpdatePlatterTranslation:(CGVector)a4 withVelocity:(CGVector)a5
{
  v6 = fabs(a4.dx) <= 22.0;
  v7 = fabs(a4.dy) <= 44.0 && v6;
  v8 = [(_UIPreviewInteractionController *)self pausingTouchForceProvider];

  if (v8)
  {
    if (v7)
    {
      v9 = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];
      if (v9)
      {
        v10 = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];
      }

      else
      {
        v10 = 0;
      }

      v12 = [(_UIPreviewInteractionController *)self previewInteraction];
      [v12 setTouchForceProvider:v10];

      if (v9)
      {
      }

      [(_UIPreviewInteractionController *)self setPausingTouchForceProvider:0];
    }
  }

  else if (!v7)
  {
    v11 = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];
    if (v11)
    {
      v17 = [(_UIPreviewInteractionController *)self presentedViewTouchForceProvider];
    }

    else
    {
      v13 = [(_UIPreviewInteractionController *)self previewInteraction];
      v17 = [v13 touchForceProvider];
    }

    v14 = [[_UIPreviewInteractionDecayTouchForceProvider alloc] initWithTouchForceProvider:v17];
    [(_UIPreviewInteractionController *)self setPausingTouchForceProvider:v14];

    v15 = [(_UIPreviewInteractionController *)self pausingTouchForceProvider];
    v16 = [(_UIPreviewInteractionController *)self previewInteraction];
    [v16 setTouchForceProvider:v15];

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