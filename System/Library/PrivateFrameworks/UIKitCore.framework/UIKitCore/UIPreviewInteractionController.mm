@interface UIPreviewInteractionController
- (BOOL)_previewingIsPossibleForView:(id)view;
- (BOOL)_usesPreviewPresentationController;
- (BOOL)_viewControllerIsChildOfExpandedSplitViewController:(id)controller;
- (BOOL)configureRevealTransformSourceViewSnapshotSuppressionFromLocation:(CGPoint)location inView:(id)view;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)previewInteractionShouldBegin:(id)begin;
- (BOOL)startInteractivePreviewAtLocation:(CGPoint)location inView:(id)view;
- (BOOL)startInteractivePreviewWithGestureRecognizer:(id)recognizer;
- (CGPoint)location;
- (NSArray)gestureRecognizers;
- (UIPreviewInteractionController)initWithView:(id)view;
- (UIPreviewInteractionControllerDelegate)delegate;
- (UIView)sourceView;
- (UIViewController)presentingViewController;
- (UIViewControllerPreviewing_Internal)previewingContext;
- (id)_transitionDelegateForPreviewViewController:(id)controller atPosition:(CGPoint)position inView:(id)view;
- (void)_activateFeedback;
- (void)_activateFeedbackIfNeeded;
- (void)_configureCommitInteractionProgressForView:(id)view;
- (void)_deactivateFeedbackIfNeeded;
- (void)_finalizeInteractivePreview;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_handleRevealGesture:(id)gesture;
- (void)_handleTouchObservingGesture:(id)gesture;
- (void)_previewPresentationControllerDidScheduleDismiss;
- (void)_resetCustomPresentationHooks;
- (void)_setStatusBarHidden:(BOOL)hidden;
- (void)_turnOffFeedbackGenerator;
- (void)_turnOnFeedbackGenerator;
- (void)cancelInteractivePreview;
- (void)commitInteractivePreview;
- (void)configureRevealTransformWithInteractionProgress:(id)progress forLocation:(CGPoint)location inView:(id)view containerView:(id)containerView;
- (void)dealloc;
- (void)forcePresentationController:(id)controller didSelectMenuItem:(id)item;
- (void)forcePresentationControllerDidDismiss:(id)dismiss;
- (void)forcePresentationControllerWillDismiss:(id)dismiss;
- (void)forcePresentationTransitionWillBegin:(id)begin;
- (void)initGestureRecognizers;
- (void)interactionProgress:(id)progress didEnd:(BOOL)end;
- (void)interactionProgressDidUpdate:(id)update;
- (void)previewInteraction:(id)interaction didUpdateCommitTransition:(double)transition ended:(BOOL)ended;
- (void)previewInteraction:(id)interaction didUpdatePreviewTransition:(double)transition ended:(BOOL)ended;
@end

@implementation UIPreviewInteractionController

- (UIPreviewInteractionController)initWithView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = UIPreviewInteractionController;
  v5 = [(UIPreviewInteractionController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceView, viewCopy);
    if (viewCopy)
    {
      v7 = [[UIPreviewInteraction alloc] initWithView:viewCopy];
      previewInteraction = v6->_previewInteraction;
      v6->_previewInteraction = v7;

      [(UIPreviewInteraction *)v6->_previewInteraction setDelegate:v6];
    }

    [(UIPreviewInteractionController *)v6 initGestureRecognizers];
    v9 = v6;
  }

  return v6;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  [(UIPreviewInteractionController *)self _deactivateFeedbackIfNeeded];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  gestureRecognizers = [(UIPreviewInteractionController *)self gestureRecognizers];
  v4 = [gestureRecognizers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        view = [v8 view];

        if (view)
        {
          view2 = [v8 view];
          [view2 removeGestureRecognizer:v8];
        }
      }

      v5 = [gestureRecognizers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = UIPreviewInteractionController;
  [(UIPreviewInteractionController *)&v11 dealloc];
}

- (NSArray)gestureRecognizers
{
  v8[3] = *MEMORY[0x1E69E9840];
  touchObservingGestureRecognizer = [(UIPreviewInteractionController *)self touchObservingGestureRecognizer];
  revealGestureRecognizer = [(UIPreviewInteractionController *)self revealGestureRecognizer];
  v8[1] = revealGestureRecognizer;
  previewGestureRecognizer = [(UIPreviewInteractionController *)self previewGestureRecognizer];
  v8[2] = previewGestureRecognizer;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (BOOL)_viewControllerIsChildOfExpandedSplitViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    parentViewController = [controllerCopy parentViewController];
    if (parentViewController)
    {
      objc_opt_class();
      v7 = (objc_opt_isKindOfClass() & 1) != 0 && ![parentViewController _isCollapsed] || -[UIPreviewInteractionController _viewControllerIsChildOfExpandedSplitViewController:](self, "_viewControllerIsChildOfExpandedSplitViewController:", parentViewController);
    }

    else
    {
      presentationController = [v5 presentationController];
      v9 = presentationController;
      if (presentationController && ([presentationController shouldPresentInFullscreen] & 1) == 0)
      {
        presentingViewController = [v9 presentingViewController];
        v7 = [(UIPreviewInteractionController *)self _viewControllerIsChildOfExpandedSplitViewController:presentingViewController];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_previewingIsPossibleForView:(id)view
{
  _viewControllerForAncestor = [view _viewControllerForAncestor];
  LOBYTE(self) = [(UIPreviewInteractionController *)self _viewControllerIsChildOfExpandedSplitViewController:_viewControllerForAncestor];

  return self ^ 1;
}

- (BOOL)startInteractivePreviewAtLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  v64 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  currentPreviewViewController = [(UIPreviewInteractionController *)self currentPreviewViewController];

  if (currentPreviewViewController || ([(UIPreviewInteractionController *)self setLocation:x, y], ![(UIPreviewInteractionController *)self _previewingIsPossibleForView:viewCopy]))
  {
    v13 = 0;
    goto LABEL_27;
  }

  [(UIPreviewInteractionController *)self _activateFeedback];
  delegate = [(UIPreviewInteractionController *)self delegate];
  v61 = 0;
  v11 = [delegate previewInteractionController:self viewControllerForPreviewingAtPosition:viewCopy inView:&v61 presentingViewController:{x, y}];
  v12 = v61;
  v13 = v11 != 0;
  if (v11)
  {
    presentingViewController = [v11 presentingViewController];
    v57 = v12;
    if (presentingViewController || ([v11 isBeingPresented] & 1) != 0)
    {
    }

    else if (([v11 isBeingDismissed] & 1) == 0)
    {
      goto LABEL_7;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPreviewInteractionController.m" lineNumber:216 description:@"The view controller returned from -previewViewControllerForPosition:inSourceView: must not already be presented"];

LABEL_7:
    [v11 _setOverrideUseCustomPresentation:1];
    v15 = [(UIPreviewInteractionController *)self _transitionDelegateForPreviewViewController:v11 atPosition:viewCopy inView:x, y];
    [(UIPreviewInteractionController *)self setCurrentTransitionDelegate:v15];
    [v11 _setOverrideTransitioningDelegate:v15];

    presentationController = [v11 presentationController];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];

    if (has_internal_diagnostics)
    {
      if (feedbackGenerator)
      {
LABEL_9:
        feedbackGenerator2 = [(UIPreviewInteractionController *)self feedbackGenerator];
        [presentationController setFeedbackGenerator:feedbackGenerator2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [presentationController setPreviewInteractionController:self];
          previewingContext = [(UIPreviewInteractionController *)self previewingContext];
          [presentationController setPreviewingContext:previewingContext];
        }

        [viewCopy bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        if (objc_opt_respondsToSelector())
        {
          [delegate sourceRect];
          v22 = v29;
          v24 = v30;
          v26 = v31;
          v28 = v32;
        }

        [presentationController setSourceRect:{v22, v24, v26, v28}];
        [presentationController setSourceView:viewCopy];
        revealGestureRecognizer = [(UIPreviewInteractionController *)self revealGestureRecognizer];
        [presentationController setPanningGestureRecognizer:revealGestureRecognizer];

        if ([(UIPreviewInteractionController *)self _usesPreviewInteraction])
        {
          v34 = objc_alloc_init(_UIPICSimpleInteractionProgress);
          [(UIPreviewInteractionController *)self setInteractionProgressForPresentation:v34];
        }

        [(UIPreviewInteractionController *)self setCurrentPreviewViewController:v11];
        [(UIPreviewInteractionController *)self setCurrentPresentationController:presentationController];
        if (objc_opt_respondsToSelector())
        {
          [delegate previewInteractionController:self willPresentViewController:v11 forPosition:viewCopy inSourceView:{x, y}];
        }

        [(UIPreviewInteractionController *)self _configureCommitInteractionProgressForView:viewCopy, delegate];
        currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
        [currentPresentationController setForcePresentationControllerDelegate:self];

        v36 = [(UIPreviewInteractionController *)self configureRevealTransformSourceViewSnapshotSuppressionFromLocation:viewCopy inView:x, y];
        _usesPreviewPresentationController = [(UIPreviewInteractionController *)self _usesPreviewPresentationController];
        windowForPreviewPresentation = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
        windowScene = [windowForPreviewPresentation windowScene];
        [windowScene _setReachabilitySupported:0 forReason:@"UIPreviewInteractionController startInteractivePreviewAtLocation"];

        if (!_usesPreviewPresentationController)
        {
          view = [v57 view];
          window = [view window];
          [(UIPreviewInteractionController *)self setWindowForPreviewPresentation:window];

          windowForPreviewPresentation2 = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
          [windowForPreviewPresentation2 beginDisablingInterfaceAutorotation];

          windowForPreviewPresentation3 = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
          v44 = __UIStatusBarManagerForWindow(windowForPreviewPresentation3);
          isStatusBarHidden = [v44 isStatusBarHidden];

          [(UIPreviewInteractionController *)self setStatusBarWasHidden:isStatusBarHidden];
        }

        if (!v36)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [presentationController _prepareInitialSourceViewSnapshot];
          }
        }

        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __75__UIPreviewInteractionController_startInteractivePreviewAtLocation_inView___block_invoke;
        v58[3] = &unk_1E70F5AF0;
        v58[4] = self;
        v60 = _usesPreviewPresentationController;
        v12 = v57;
        v59 = v57;
        [v59 presentViewController:v11 animated:1 completion:v58];
        delegate2 = [(UIPreviewInteractionController *)self delegate];
        v47 = objc_opt_respondsToSelector();

        if (v47)
        {
          delegate3 = [(UIPreviewInteractionController *)self delegate];
          [delegate3 previewInteractionController:self willPresentViewController:v11];
        }

        delegate = v56;
        goto LABEL_25;
      }

      v51 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
LABEL_36:

        goto LABEL_9;
      }

      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138412290;
      v63 = v53;
      _os_log_fault_impl(&dword_188A29000, v51, OS_LOG_TYPE_FAULT, "The feedbackGenerator in %@ should not be nil!", buf, 0xCu);
    }

    else
    {
      if (feedbackGenerator)
      {
        goto LABEL_9;
      }

      v54 = *(__UILogGetCategoryCachedImpl("Assert", &startInteractivePreviewAtLocation_inView____s_category) + 8);
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v51 = v54;
      v55 = objc_opt_class();
      v53 = NSStringFromClass(v55);
      *buf = 138412290;
      v63 = v53;
      _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_ERROR, "The feedbackGenerator in %@ should not be nil!", buf, 0xCu);
    }

    goto LABEL_36;
  }

LABEL_25:

LABEL_27:
  return v13;
}

void __75__UIPreviewInteractionController_startInteractivePreviewAtLocation_inView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPreviewViewController];
  v3 = [v2 presentingViewController];

  if (v3 && (*(a1 + 48) & 1) == 0)
  {
    if (([*(a1 + 32) statusBarWasHidden] & 1) == 0)
    {
      [*(a1 + 32) _setStatusBarHidden:1];
    }

    v5 = [*(a1 + 40) view];
    v4 = [v5 keyboardSceneDelegate];
    [v4 forceOrderOutAutomaticAnimated:1];
  }
}

- (BOOL)configureRevealTransformSourceViewSnapshotSuppressionFromLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  delegate = [(UIPreviewInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate previewInteractionController:self shouldUseStandardRevealTransformForPreviewingAtLocation:viewCopy inView:{x, y}];
    currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
    v11 = v9 ^ 1;
    [currentPresentationController set_sourceViewSnapshotAndScaleTransformSuppressed:v9 ^ 1u];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)configureRevealTransformWithInteractionProgress:(id)progress forLocation:(CGPoint)location inView:(id)view containerView:(id)containerView
{
  y = location.y;
  x = location.x;
  progressCopy = progress;
  viewCopy = view;
  containerViewCopy = containerView;
  delegate = [(UIPreviewInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate previewInteractionController:self interactionProgress:progressCopy forRevealAtLocation:viewCopy inSourceView:containerViewCopy containerView:{x, y}];
  }
}

- (BOOL)startInteractivePreviewWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  [recognizerCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  LOBYTE(self) = [(UIPreviewInteractionController *)self startInteractivePreviewAtLocation:view inView:v7, v9];
  return self;
}

- (void)cancelInteractivePreview
{
  v18 = *MEMORY[0x1E69E9840];
  currentPreviewViewController = [(UIPreviewInteractionController *)self currentPreviewViewController];
  transitionCoordinator = [currentPreviewViewController transitionCoordinator];
  if ([transitionCoordinator isInteractive])
  {
    currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
    _currentInteractionController = [currentPresentationController _currentInteractionController];

    LODWORD(currentPresentationController) = os_variant_has_internal_diagnostics();
    v7 = [_currentInteractionController conformsToProtocol:&unk_1EFEC1100];
    if (currentPresentationController)
    {
      if (v7)
      {
LABEL_4:
        if ([_currentInteractionController conformsToProtocol:{&unk_1EFEC1100, *v17}])
        {
          if (objc_opt_respondsToSelector())
          {
            [_currentInteractionController cancelInteractiveTransition:&__block_literal_global_456];
          }

          else if (objc_opt_respondsToSelector())
          {
            [_currentInteractionController cancelInteractiveTransition];
          }

          else if (os_variant_has_internal_diagnostics())
          {
            v16 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *v17 = 138412290;
              *&v17[4] = _currentInteractionController;
              _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Interaction controller %@ does not implement -cancelInteractiveTransition or -cancelInteractiveTransition:", v17, 0xCu);
            }
          }

          else
          {
            v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FDA0) + 8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *v17 = 138412290;
              *&v17[4] = _currentInteractionController;
              _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Interaction controller %@ does not implement -cancelInteractiveTransition or -cancelInteractiveTransition:", v17, 0xCu);
            }
          }
        }

        goto LABEL_19;
      }

      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *v17 = 138412290;
        *&v17[4] = objc_opt_class();
        v13 = *&v17[4];
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Trying to cancel a preview interaction controller of class %@ that does not conform to UIForceInteractionController protocol", v17, 0xCu);
      }
    }

    else
    {
      if (v7)
      {
        goto LABEL_4;
      }

      v14 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1240) + 8);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v12 = v14;
      *v17 = 138412290;
      *&v17[4] = objc_opt_class();
      v15 = *&v17[4];
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Trying to cancel a preview interaction controller of class %@ that does not conform to UIForceInteractionController protocol", v17, 0xCu);
    }

    goto LABEL_4;
  }

  presentingViewController = [currentPreviewViewController presentingViewController];
  if (presentingViewController)
  {
    v9 = presentingViewController;
    if (transitionCoordinator)
    {
      isCancelled = [transitionCoordinator isCancelled];

      if (isCancelled)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    [currentPreviewViewController dismissViewControllerAnimated:1 completion:0];
    [(UIPreviewInteractionController *)self _previewPresentationControllerDidScheduleDismiss];
  }

LABEL_19:
}

- (void)commitInteractivePreview
{
  currentPreviewViewController = [(UIPreviewInteractionController *)self currentPreviewViewController];
  v4 = currentPreviewViewController;
  if (currentPreviewViewController)
  {
    transitionCoordinator = [currentPreviewViewController transitionCoordinator];
    if (!transitionCoordinator)
    {
      currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
      _canCommitPresentation = [currentPresentationController _canCommitPresentation];

      if (_canCommitPresentation)
      {
        self->_isCommitting = 1;
        currentPresentationController2 = [(UIPreviewInteractionController *)self currentPresentationController];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          currentPresentationController3 = [(UIPreviewInteractionController *)self currentPresentationController];
          [currentPresentationController3 _willCommitPresentation];
        }

        if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
        {
          feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];
          [feedbackGenerator transitionToState:@"commit" ended:1];
        }

        delegate = [(UIPreviewInteractionController *)self delegate];
        presentingViewController = [v4 presentingViewController];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __58__UIPreviewInteractionController_commitInteractivePreview__block_invoke;
        v16[3] = &unk_1E70F3590;
        v16[4] = self;
        v14 = [_UIPreviewTransitionController performCommitTransitionWithDelegate:delegate forViewController:presentingViewController previewViewController:v4 previewInteractionController:self completion:v16];
        [(UIPreviewInteractionController *)self setCurrentCommitTransition:v14];

        v15 = +[_UIStatistics previewInteractionPopCount];
        [v15 incrementValueBy:1];

        _UIPowerLogPopOccured();
      }
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  touchObservingGestureRecognizer = [(UIPreviewInteractionController *)self touchObservingGestureRecognizer];

  if (touchObservingGestureRecognizer != recognizerCopy)
  {
    delegate = [(UIPreviewInteractionController *)self delegate];
    revealGestureRecognizer = [(UIPreviewInteractionController *)self revealGestureRecognizer];

    if (revealGestureRecognizer != recognizerCopy)
    {
      goto LABEL_3;
    }

    if (_UIPreviewInteractionIsTextGestureRecognizer(gestureRecognizerCopy))
    {
      goto LABEL_12;
    }

    previewGestureRecognizer = [(UIPreviewInteractionController *)self previewGestureRecognizer];

    if (previewGestureRecognizer == gestureRecognizerCopy)
    {
      goto LABEL_12;
    }

    v12 = 1;
    if ([gestureRecognizerCopy _isGestureType:1])
    {
      goto LABEL_13;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_3:
      previewGestureRecognizer2 = [(UIPreviewInteractionController *)self previewGestureRecognizer];

      if (previewGestureRecognizer2 != recognizerCopy)
      {
LABEL_4:
        v12 = 0;
LABEL_13:

        goto LABEL_14;
      }

      if (_UIPreviewInteractionIsTextGestureRecognizer(gestureRecognizerCopy))
      {
LABEL_12:
        v12 = 1;
        goto LABEL_13;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v12 = [delegate previewInteractionController:self shouldStartPreviewingSimultaneouslyWithGestureRecognizer:gestureRecognizerCopy];
    goto LABEL_13;
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  v10[1] = *MEMORY[0x1E69E9840];
  failedCopy = failed;
  revealGestureRecognizer = [(UIPreviewInteractionController *)self revealGestureRecognizer];

  if (revealGestureRecognizer == failedCopy)
  {
    [(UIPreviewInteractionController *)self _deactivateFeedbackIfNeeded];
  }

  previewGestureRecognizer = [(UIPreviewInteractionController *)self previewGestureRecognizer];

  if (previewGestureRecognizer == failedCopy)
  {
    _gestureEnvironment = [UIApp _gestureEnvironment];
    revealGestureRecognizer2 = [(UIPreviewInteractionController *)self revealGestureRecognizer];
    v10[0] = revealGestureRecognizer2;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UIGestureEnvironment *)_gestureEnvironment _cancelGestureRecognizers:v9];
  }
}

- (void)interactionProgressDidUpdate:(id)update
{
  updateCopy = update;
  interactionProgressForCommit = [(UIPreviewInteractionController *)self interactionProgressForCommit];

  v5 = updateCopy;
  if (interactionProgressForCommit == updateCopy)
  {
    [updateCopy percentComplete];
    v7 = v6;
    currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
    _canCommitPresentation = [currentPresentationController _canCommitPresentation];

    if (v7 >= 1.0 && _canCommitPresentation)
    {
      [(UIPreviewInteractionController *)self setInteractionProgressForCommit:0];
      [(UIPreviewInteractionController *)self commitInteractivePreview];
    }

    else
    {
      [updateCopy percentComplete];
      if (v10 > 1.0)
      {
        v10 = 1.0;
      }

      v11 = fmax(v10, 0.0);
      feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];
      [feedbackGenerator transitionToState:@"commit" updated:v11];
    }

    v5 = updateCopy;
  }
}

- (void)interactionProgress:(id)progress didEnd:(BOOL)end
{
  endCopy = end;
  progressCopy = progress;
  interactionProgressForCommit = [(UIPreviewInteractionController *)self interactionProgressForCommit];

  if (interactionProgressForCommit == progressCopy && endCopy)
  {

    [(UIPreviewInteractionController *)self commitInteractivePreview];
  }
}

- (void)forcePresentationTransitionWillBegin:(id)begin
{
  beginCopy = begin;
  interactionProgressForPresentation = [(UIPreviewInteractionController *)self interactionProgressForPresentation];
  [(UIPreviewInteractionController *)self location];
  v6 = v5;
  v8 = v7;
  currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
  sourceView = [currentPresentationController sourceView];
  _revealContainerView = [beginCopy _revealContainerView];

  [(UIPreviewInteractionController *)self configureRevealTransformWithInteractionProgress:interactionProgressForPresentation forLocation:sourceView inView:_revealContainerView containerView:v6, v8];
}

- (void)forcePresentationControllerWillDismiss:(id)dismiss
{
  [(UIPreviewInteractionController *)self _resetCustomPresentationHooks];
  currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
  [currentPresentationController setPanningGestureRecognizer:0];

  revealGestureRecognizer = [(UIPreviewInteractionController *)self revealGestureRecognizer];
  [revealGestureRecognizer setEnabled:0];

  if (![(UIPreviewInteractionController *)self _usesPreviewPresentationController]&& ![(UIPreviewInteractionController *)self statusBarWasHidden])
  {

    [(UIPreviewInteractionController *)self _setStatusBarHidden:0];
  }
}

- (void)forcePresentationControllerDidDismiss:(id)dismiss
{
  v4 = +[_UIStatistics previewInteractionPeekDuration];
  currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
  [v4 recordTimingForObject:currentPresentationController];

  _UIPowerLogPeekEnded();
  delegate = [(UIPreviewInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentPreviewViewController = [(UIPreviewInteractionController *)self currentPreviewViewController];
    [delegate previewInteractionController:self didDismissViewController:currentPreviewViewController committing:self->_isCommitting];
  }

  [(UIPreviewInteractionController *)self _finalizeInteractivePreview];
}

- (void)forcePresentationController:(id)controller didSelectMenuItem:(id)item
{
  itemCopy = item;
  delegate = [(UIPreviewInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate previewInteractionController:self didSelectMenuItem:itemCopy];
  }
}

- (void)initGestureRecognizers
{
  v3 = objc_alloc_init(_UIRevealGestureRecognizer);
  [(UIGestureRecognizer *)v3 setName:@"Reveal mk1"];
  [(UILongPressGestureRecognizer *)v3 setMinimumPressDuration:0.1];
  [(UILongPressGestureRecognizer *)v3 setAllowableMovement:15.0];
  [(UIGestureRecognizer *)v3 setRequiredPreviewForceState:1];
  [(UIGestureRecognizer *)v3 setAllowedTouchTypes:&unk_1EFE2D1B0];
  [(_UIRevealGestureRecognizer *)v3 setDelegate:self];
  [(UIGestureRecognizer *)v3 addTarget:self action:sel__handleRevealGesture_];
  [(UIPreviewInteractionController *)self setRevealGestureRecognizer:v3];

  v4 = objc_alloc_init(_UIPreviewInteractionTouchObservingGestureRecognizer);
  [(UIGestureRecognizer *)v4 setName:@"TouchObserver mk1"];
  [(UIGestureRecognizer *)v4 setAllowedTouchTypes:&unk_1EFE2D1B0];
  [(UIGestureRecognizer *)v4 setCancelsTouchesInView:0];
  [(UIGestureRecognizer *)v4 setDelegate:self];
  [(UIGestureRecognizer *)v4 addTarget:self action:sel__handleTouchObservingGesture_];
  [(UIPreviewInteractionController *)self setTouchObservingGestureRecognizer:v4];

  v5 = objc_alloc_init(_UIPreviewGestureRecognizer);
  [(UIGestureRecognizer *)v5 setAllowedTouchTypes:&unk_1EFE2D1B0];
  [(UIGestureRecognizer *)v5 setRequiredPreviewForceState:2];
  [(UILongPressGestureRecognizer *)v5 setMinimumPressDuration:0.1];
  [(UILongPressGestureRecognizer *)v5 setAllowableMovement:15.0];
  [(UIGestureRecognizer *)v5 setDelegate:self];
  [(UIPreviewInteractionController *)self setPreviewGestureRecognizer:v5];

  if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    v6 = [UIPreviewForceInteractionProgress alloc];
    beginPreviewGestureRecognizer = [(UIPreviewInteractionController *)self beginPreviewGestureRecognizer];
    v8 = [(UIPreviewForceInteractionProgress *)v6 initWithGestureRecognizer:beginPreviewGestureRecognizer];

    [(UIPreviewForceInteractionProgress *)v8 setCompletesAtTargetState:1];
    [(UIPreviewInteractionController *)self setInteractionProgressForPresentation:v8];
  }
}

- (void)_handleRevealGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy isEnabled])
  {
    if ([gestureCopy state] == 1)
    {
      if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
      {
        if ([(UIPreviewInteractionController *)self startInteractivePreviewWithGestureRecognizer:gestureCopy])
        {
          [(UIPreviewInteractionController *)self _turnOnFeedbackGenerator];
        }

        else
        {
          [gestureCopy setEnabled:0];
          [gestureCopy setEnabled:1];
          previewGestureRecognizer = [(UIPreviewInteractionController *)self previewGestureRecognizer];
          [previewGestureRecognizer setEnabled:0];

          previewGestureRecognizer2 = [(UIPreviewInteractionController *)self previewGestureRecognizer];
          [previewGestureRecognizer2 setEnabled:1];
        }
      }
    }

    else if (([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4 || objc_msgSend(gestureCopy, "state") == 5) && !-[UIPreviewInteractionController _usesPreviewInteraction](self, "_usesPreviewInteraction"))
    {
      currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
      _canDismissPresentation = [currentPresentationController _canDismissPresentation];

      if (_canDismissPresentation)
      {
        [(UIPreviewInteractionController *)self cancelInteractivePreview];
      }
    }
  }
}

- (void)_handleTouchObservingGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    if ([gestureCopy state] == 1 || objc_msgSend(gestureCopy, "state") == 2)
    {
      [(UIPreviewInteractionController *)self _activateFeedbackIfNeeded];
    }

    if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4 || objc_msgSend(gestureCopy, "state") == 5)
    {
      [(UIPreviewInteractionController *)self _deactivateFeedbackIfNeeded];
    }
  }
}

- (void)_configureCommitInteractionProgressForView:(id)view
{
  viewCopy = view;
  interactionProgressForCommit = [(UIPreviewInteractionController *)self interactionProgressForCommit];
  [interactionProgressForCommit removeProgressObserver:self];

  v6 = [UIPreviewForceInteractionProgress alloc];
  window = [viewCopy window];

  v8 = [(UIPreviewForceInteractionProgress *)v6 initWithView:window targetState:3];
  [(UIPreviewForceInteractionProgress *)v8 setCompletesAtTargetState:0];
  [(UIInteractionProgress *)v8 addProgressObserver:self];
  [(UIPreviewInteractionController *)self setInteractionProgressForCommit:v8];
}

- (void)_setStatusBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  statusBar = [UIApp statusBar];
  if ([statusBar isHidden] != hiddenCopy)
  {
    [statusBar setHidden:hiddenCopy animated:1];
  }
}

- (id)_transitionDelegateForPreviewViewController:(id)controller atPosition:(CGPoint)position inView:(id)view
{
  y = position.y;
  x = position.x;
  v31 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewCopy = view;
  delegate = [(UIPreviewInteractionController *)self delegate];
  transitioningDelegate = [controllerCopy transitioningDelegate];
  v13 = [transitioningDelegate conformsToProtocol:&unk_1EFEC16B8];

  if (v13)
  {
    transitioningDelegate2 = [controllerCopy transitioningDelegate];
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    transitioningDelegate2 = [delegate previewInteractionController:self transitioningDelegateForPreviewingAtPosition:viewCopy inView:{x, y}];
LABEL_5:
    v15 = transitioningDelegate2;
    if (transitioningDelegate2)
    {
      goto LABEL_7;
    }
  }

  v15 = objc_alloc_init(_UIPreviewTransitionDelegate);
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];

    if (has_internal_diagnostics)
    {
      if (feedbackGenerator)
      {
LABEL_10:
        feedbackGenerator2 = [(UIPreviewInteractionController *)self feedbackGenerator];
        [(_UIPreviewTransitionDelegate *)v16 setFeedbackGenerator:feedbackGenerator2];

        goto LABEL_11;
      }

      v24 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
LABEL_24:

        goto LABEL_10;
      }

      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v29 = 138412290;
      v30 = v26;
      _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "The feedbackGenerator in %@ should not be nil!", &v29, 0xCu);
    }

    else
    {
      if (feedbackGenerator)
      {
        goto LABEL_10;
      }

      v27 = *(__UILogGetCategoryCachedImpl("Assert", &_transitionDelegateForPreviewViewController_atPosition_inView____s_category) + 8);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v24 = v27;
      v28 = objc_opt_class();
      v26 = NSStringFromClass(v28);
      v29 = 138412290;
      v30 = v26;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "The feedbackGenerator in %@ should not be nil!", &v29, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_11:
  interactionProgressForPresentation = [(UIPreviewInteractionController *)self interactionProgressForPresentation];
  if (([interactionProgressForPresentation didEnd] & 1) != 0 || (objc_msgSend(interactionProgressForPresentation, "percentComplete"), v21 >= 1.0))
  {
    [(_UIPreviewTransitionDelegate *)v15 setInteractionProgressForPresentation:0];
  }

  else
  {
    interactionProgressForPresentation2 = [(UIPreviewInteractionController *)self interactionProgressForPresentation];
    [(_UIPreviewTransitionDelegate *)v15 setInteractionProgressForPresentation:interactionProgressForPresentation2];
  }

  return v15;
}

- (void)_previewPresentationControllerDidScheduleDismiss
{
  if (![(UIPreviewInteractionController *)self didSendDelegateWillDismissViewController])
  {
    delegate = [(UIPreviewInteractionController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      currentPreviewViewController = [(UIPreviewInteractionController *)self currentPreviewViewController];
      [delegate previewInteractionController:self willDismissViewController:currentPreviewViewController];
    }

    [(UIPreviewInteractionController *)self setDidSendDelegateWillDismissViewController:1];
  }
}

- (void)_resetCustomPresentationHooks
{
  currentPreviewViewController = [(UIPreviewInteractionController *)self currentPreviewViewController];
  [currentPreviewViewController _setOverrideUseCustomPresentation:0];

  currentPreviewViewController2 = [(UIPreviewInteractionController *)self currentPreviewViewController];
  [currentPreviewViewController2 _setOverrideTransitioningDelegate:0];
}

- (void)_finalizeInteractivePreview
{
  [(UIPreviewInteractionController *)self setDidSendDelegateWillDismissViewController:0];
  windowForPreviewPresentation = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
  [windowForPreviewPresentation endDisablingInterfaceAutorotation];

  [(UIPreviewInteractionController *)self setWindowForPreviewPresentation:0];
  revealGestureRecognizer = [(UIPreviewInteractionController *)self revealGestureRecognizer];
  [revealGestureRecognizer setEnabled:1];

  windowForPreviewPresentation2 = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
  windowScene = [windowForPreviewPresentation2 windowScene];
  [windowScene _setReachabilitySupported:1 forReason:@"UIPreviewInteractionController _finalizeInteractivePreview"];

  [(UIPreviewInteractionController *)self _resetCustomPresentationHooks];
  [(UIPreviewInteractionController *)self setCurrentPreviewViewController:0];
  [(UIPreviewInteractionController *)self setCurrentPresentationController:0];
  [(UIPreviewInteractionController *)self setCurrentTransitionDelegate:0];
  [(UIPreviewInteractionController *)self setInteractionProgressForCommit:0];
  if ([(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    [(UIPreviewInteractionController *)self setInteractionProgressForPresentation:0];
  }

  previewInteraction = [(UIPreviewInteractionController *)self previewInteraction];
  [previewInteraction cancelInteraction];

  modalPanGestureRecognizer = [(UIPreviewInteractionController *)self modalPanGestureRecognizer];

  if (modalPanGestureRecognizer)
  {
    modalPanGestureRecognizer2 = [(UIPreviewInteractionController *)self modalPanGestureRecognizer];
    view = [modalPanGestureRecognizer2 view];
    modalPanGestureRecognizer3 = [(UIPreviewInteractionController *)self modalPanGestureRecognizer];
    [view removeGestureRecognizer:modalPanGestureRecognizer3];

    [(UIPreviewInteractionController *)self setModalPanGestureRecognizer:0];
  }

  [(UIPreviewInteractionController *)self _deactivateFeedbackIfNeeded];
}

- (void)_activateFeedbackIfNeeded
{
  if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];
    isActive = [feedbackGenerator isActive];

    if ((isActive & 1) == 0)
    {
      touchObservingGestureRecognizer = [(UIPreviewInteractionController *)self touchObservingGestureRecognizer];
      deepPressAnalyzer = self->_deepPressAnalyzer;
      v10 = touchObservingGestureRecognizer;
      if (!deepPressAnalyzer)
      {
        v7 = objc_alloc_init(_UIDeepPressAnalyzer);
        v8 = self->_deepPressAnalyzer;
        self->_deepPressAnalyzer = v7;

        touchObservingGestureRecognizer = v10;
        deepPressAnalyzer = self->_deepPressAnalyzer;
      }

      touches = [touchObservingGestureRecognizer touches];
      [(_UIDeepPressAnalyzer *)deepPressAnalyzer analyzeTouches:touches];

      if ([(_UIDeepPressAnalyzer *)self->_deepPressAnalyzer isDeepPressLikely])
      {
        [(UIPreviewInteractionController *)self _activateFeedback];
      }
    }
  }
}

- (void)_activateFeedback
{
  feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];
  if (!feedbackGenerator)
  {
    v4 = +[_UIStatesFeedbackGeneratorPreviewConfiguration defaultConfiguration];
    v5 = [v4 tweakedConfigurationForClass:objc_opt_class() usage:@"presentation"];

    touchObservingGestureRecognizer = [(UIPreviewInteractionController *)self touchObservingGestureRecognizer];
    v7 = [_UIStatesFeedbackGenerator alloc];
    view = [touchObservingGestureRecognizer view];
    v9 = [(_UIStatesFeedbackGenerator *)v7 initWithConfiguration:v5 view:view];

    [(UIPreviewInteractionController *)self setFeedbackGenerator:v9];
    feedbackGenerator = v9;
  }

  v10 = feedbackGenerator;
  if (([feedbackGenerator isActive] & 1) == 0)
  {
    [v10 activateWithCompletionBlock:0];
  }
}

- (void)_deactivateFeedbackIfNeeded
{
  currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];

  if (!currentPresentationController && ![(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    [(UIPreviewInteractionController *)self _turnOffFeedbackGenerator];
    feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];
    if ([feedbackGenerator isActive])
    {
      [feedbackGenerator deactivate];
    }
  }
}

- (void)_turnOnFeedbackGenerator
{
  if (!self->_generatorTurnedOn)
  {
    feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];
    [feedbackGenerator _activateWithStyle:2 completionBlock:0];

    self->_generatorTurnedOn = 1;
  }
}

- (void)_turnOffFeedbackGenerator
{
  if (self->_generatorTurnedOn)
  {
    feedbackGenerator = [(UIPreviewInteractionController *)self feedbackGenerator];
    [feedbackGenerator _deactivateWithStyle:2];

    self->_generatorTurnedOn = 0;
  }
}

- (BOOL)_usesPreviewPresentationController
{
  currentPresentationController = [(UIPreviewInteractionController *)self currentPresentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)previewInteraction:(id)interaction didUpdatePreviewTransition:(double)transition ended:(BOOL)ended
{
  endedCopy = ended;
  interactionProgressForPresentation = [(UIPreviewInteractionController *)self interactionProgressForPresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [interactionProgressForPresentation setPercentComplete:transition];
    if (endedCopy)
    {
      [interactionProgressForPresentation endInteraction:1];
    }
  }
}

- (BOOL)previewInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  [beginCopy locationInCoordinateSpace:view];
  v7 = v6;
  v9 = v8;

  LOBYTE(self) = [(UIPreviewInteractionController *)self startInteractivePreviewAtLocation:view inView:v7, v9];
  return self;
}

- (void)previewInteraction:(id)interaction didUpdateCommitTransition:(double)transition ended:(BOOL)ended
{
  endedCopy = ended;
  interactionProgressForCommit = [(UIPreviewInteractionController *)self interactionProgressForCommit];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [interactionProgressForCommit setPercentComplete:transition];
    if (endedCopy)
    {
      [interactionProgressForCommit endInteraction:1];
    }
  }
}

- (UIPreviewInteractionControllerDelegate)delegate
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

- (UIViewControllerPreviewing_Internal)previewingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_previewingContext);

  return WeakRetained;
}

void __59___UIPreviewInteractionController_commitInteractivePreview__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 previewInteractionController:*(a1 + 32) didDismissViewController:*(a1 + 40) committing:1];
  }

  [v2 previewInteractionController:*(a1 + 32) commitViewController:*(a1 + 40)];
}

uint64_t __59___UIPreviewInteractionController_commitInteractivePreview__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPerformingCommitTransition:0];
  [*(a1 + 32) setCurrentCommitTransition:0];
  v2 = *(a1 + 32);

  return [v2 _finalizeAfterPreviewViewControllerPresentation];
}

void __99___UIPreviewInteractionController__preparePreviewViewControllerPresentationFromPreviewInteraction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPerformingPreviewTransition:0];
  v2 = [*(a1 + 40) _hasAppeared];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 commitTransitionScheduled];
    v5 = *(a1 + 32);
    if (v4)
    {

      [v5 commitInteractivePreview];
    }

    else
    {
      v6 = [v5 previewActionsController];
      [v6 flashScrollAffordance];
    }
  }

  else
  {

    [v3 _finalizeAfterPreviewViewControllerPresentation];
  }
}

uint64_t __87___UIPreviewInteractionController__dismissPreviewViewControllerIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) previewInteractionController:*(a1 + 40) didDismissViewController:*(a1 + 48) committing:0];
  }

  [*(a1 + 40) _finalizeAfterPreviewViewControllerPresentation];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 40);

  return [v3 setDismissingPreview:0];
}

void __61___UIPreviewInteractionController__preparedInteractionEffect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained currentPresentationController];
  [v4 _updateFromInteractionEffect:v3];
}

void __84___UIPreviewInteractionController__preferredNavigationControllerForCommitTransition__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = v4;
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v7;
    if (isKindOfClass)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v5 = v7;
    }
  }
}

void __64___UIPreviewInteractionController__handlePreviewActionsGesture___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _dismissPreviewViewControllerIfNeeded];
  v2 = [*(a1 + 32) previewInteraction];
  [v2 cancelInteraction];
}

void __90___UIPreviewInteractionController_previewActionsController_didCompleteWithSelectedAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  if (v2)
  {
    v3 = [*(a1 + 32) handler];
    (*(v3 + 2))(v3, *(a1 + 32), *(a1 + 40));
  }
}

@end