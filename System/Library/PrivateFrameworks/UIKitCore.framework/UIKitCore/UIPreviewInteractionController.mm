@interface UIPreviewInteractionController
- (BOOL)_previewingIsPossibleForView:(id)a3;
- (BOOL)_usesPreviewPresentationController;
- (BOOL)_viewControllerIsChildOfExpandedSplitViewController:(id)a3;
- (BOOL)configureRevealTransformSourceViewSnapshotSuppressionFromLocation:(CGPoint)a3 inView:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)previewInteractionShouldBegin:(id)a3;
- (BOOL)startInteractivePreviewAtLocation:(CGPoint)a3 inView:(id)a4;
- (BOOL)startInteractivePreviewWithGestureRecognizer:(id)a3;
- (CGPoint)location;
- (NSArray)gestureRecognizers;
- (UIPreviewInteractionController)initWithView:(id)a3;
- (UIPreviewInteractionControllerDelegate)delegate;
- (UIView)sourceView;
- (UIViewController)presentingViewController;
- (UIViewControllerPreviewing_Internal)previewingContext;
- (id)_transitionDelegateForPreviewViewController:(id)a3 atPosition:(CGPoint)a4 inView:(id)a5;
- (void)_activateFeedback;
- (void)_activateFeedbackIfNeeded;
- (void)_configureCommitInteractionProgressForView:(id)a3;
- (void)_deactivateFeedbackIfNeeded;
- (void)_finalizeInteractivePreview;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_handleRevealGesture:(id)a3;
- (void)_handleTouchObservingGesture:(id)a3;
- (void)_previewPresentationControllerDidScheduleDismiss;
- (void)_resetCustomPresentationHooks;
- (void)_setStatusBarHidden:(BOOL)a3;
- (void)_turnOffFeedbackGenerator;
- (void)_turnOnFeedbackGenerator;
- (void)cancelInteractivePreview;
- (void)commitInteractivePreview;
- (void)configureRevealTransformWithInteractionProgress:(id)a3 forLocation:(CGPoint)a4 inView:(id)a5 containerView:(id)a6;
- (void)dealloc;
- (void)forcePresentationController:(id)a3 didSelectMenuItem:(id)a4;
- (void)forcePresentationControllerDidDismiss:(id)a3;
- (void)forcePresentationControllerWillDismiss:(id)a3;
- (void)forcePresentationTransitionWillBegin:(id)a3;
- (void)initGestureRecognizers;
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
- (void)previewInteraction:(id)a3 didUpdateCommitTransition:(double)a4 ended:(BOOL)a5;
- (void)previewInteraction:(id)a3 didUpdatePreviewTransition:(double)a4 ended:(BOOL)a5;
@end

@implementation UIPreviewInteractionController

- (UIPreviewInteractionController)initWithView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIPreviewInteractionController;
  v5 = [(UIPreviewInteractionController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceView, v4);
    if (v4)
    {
      v7 = [[UIPreviewInteraction alloc] initWithView:v4];
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
  v3 = [(UIPreviewInteractionController *)self gestureRecognizers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 view];

        if (v9)
        {
          v10 = [v8 view];
          [v10 removeGestureRecognizer:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(UIPreviewInteractionController *)self touchObservingGestureRecognizer];
  v4 = [(UIPreviewInteractionController *)self revealGestureRecognizer];
  v8[1] = v4;
  v5 = [(UIPreviewInteractionController *)self previewGestureRecognizer];
  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (BOOL)_viewControllerIsChildOfExpandedSplitViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 parentViewController];
    if (v6)
    {
      objc_opt_class();
      v7 = (objc_opt_isKindOfClass() & 1) != 0 && ![v6 _isCollapsed] || -[UIPreviewInteractionController _viewControllerIsChildOfExpandedSplitViewController:](self, "_viewControllerIsChildOfExpandedSplitViewController:", v6);
    }

    else
    {
      v8 = [v5 presentationController];
      v9 = v8;
      if (v8 && ([v8 shouldPresentInFullscreen] & 1) == 0)
      {
        v10 = [v9 presentingViewController];
        v7 = [(UIPreviewInteractionController *)self _viewControllerIsChildOfExpandedSplitViewController:v10];
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

- (BOOL)_previewingIsPossibleForView:(id)a3
{
  v4 = [a3 _viewControllerForAncestor];
  LOBYTE(self) = [(UIPreviewInteractionController *)self _viewControllerIsChildOfExpandedSplitViewController:v4];

  return self ^ 1;
}

- (BOOL)startInteractivePreviewAtLocation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v64 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(UIPreviewInteractionController *)self currentPreviewViewController];

  if (v9 || ([(UIPreviewInteractionController *)self setLocation:x, y], ![(UIPreviewInteractionController *)self _previewingIsPossibleForView:v8]))
  {
    v13 = 0;
    goto LABEL_27;
  }

  [(UIPreviewInteractionController *)self _activateFeedback];
  v10 = [(UIPreviewInteractionController *)self delegate];
  v61 = 0;
  v11 = [v10 previewInteractionController:self viewControllerForPreviewingAtPosition:v8 inView:&v61 presentingViewController:{x, y}];
  v12 = v61;
  v13 = v11 != 0;
  if (v11)
  {
    v14 = [v11 presentingViewController];
    v57 = v12;
    if (v14 || ([v11 isBeingPresented] & 1) != 0)
    {
    }

    else if (([v11 isBeingDismissed] & 1) == 0)
    {
      goto LABEL_7;
    }

    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"UIPreviewInteractionController.m" lineNumber:216 description:@"The view controller returned from -previewViewControllerForPosition:inSourceView: must not already be presented"];

LABEL_7:
    [v11 _setOverrideUseCustomPresentation:1];
    v15 = [(UIPreviewInteractionController *)self _transitionDelegateForPreviewViewController:v11 atPosition:v8 inView:x, y];
    [(UIPreviewInteractionController *)self setCurrentTransitionDelegate:v15];
    [v11 _setOverrideTransitioningDelegate:v15];

    v16 = [v11 presentationController];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v18 = [(UIPreviewInteractionController *)self feedbackGenerator];

    if (has_internal_diagnostics)
    {
      if (v18)
      {
LABEL_9:
        v19 = [(UIPreviewInteractionController *)self feedbackGenerator];
        [v16 setFeedbackGenerator:v19];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v16 setPreviewInteractionController:self];
          v20 = [(UIPreviewInteractionController *)self previewingContext];
          [v16 setPreviewingContext:v20];
        }

        [v8 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        if (objc_opt_respondsToSelector())
        {
          [v10 sourceRect];
          v22 = v29;
          v24 = v30;
          v26 = v31;
          v28 = v32;
        }

        [v16 setSourceRect:{v22, v24, v26, v28}];
        [v16 setSourceView:v8];
        v33 = [(UIPreviewInteractionController *)self revealGestureRecognizer];
        [v16 setPanningGestureRecognizer:v33];

        if ([(UIPreviewInteractionController *)self _usesPreviewInteraction])
        {
          v34 = objc_alloc_init(_UIPICSimpleInteractionProgress);
          [(UIPreviewInteractionController *)self setInteractionProgressForPresentation:v34];
        }

        [(UIPreviewInteractionController *)self setCurrentPreviewViewController:v11];
        [(UIPreviewInteractionController *)self setCurrentPresentationController:v16];
        if (objc_opt_respondsToSelector())
        {
          [v10 previewInteractionController:self willPresentViewController:v11 forPosition:v8 inSourceView:{x, y}];
        }

        [(UIPreviewInteractionController *)self _configureCommitInteractionProgressForView:v8, v10];
        v35 = [(UIPreviewInteractionController *)self currentPresentationController];
        [v35 setForcePresentationControllerDelegate:self];

        v36 = [(UIPreviewInteractionController *)self configureRevealTransformSourceViewSnapshotSuppressionFromLocation:v8 inView:x, y];
        v37 = [(UIPreviewInteractionController *)self _usesPreviewPresentationController];
        v38 = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
        v39 = [v38 windowScene];
        [v39 _setReachabilitySupported:0 forReason:@"UIPreviewInteractionController startInteractivePreviewAtLocation"];

        if (!v37)
        {
          v40 = [v57 view];
          v41 = [v40 window];
          [(UIPreviewInteractionController *)self setWindowForPreviewPresentation:v41];

          v42 = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
          [v42 beginDisablingInterfaceAutorotation];

          v43 = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
          v44 = __UIStatusBarManagerForWindow(v43);
          v45 = [v44 isStatusBarHidden];

          [(UIPreviewInteractionController *)self setStatusBarWasHidden:v45];
        }

        if (!v36)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 _prepareInitialSourceViewSnapshot];
          }
        }

        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __75__UIPreviewInteractionController_startInteractivePreviewAtLocation_inView___block_invoke;
        v58[3] = &unk_1E70F5AF0;
        v58[4] = self;
        v60 = v37;
        v12 = v57;
        v59 = v57;
        [v59 presentViewController:v11 animated:1 completion:v58];
        v46 = [(UIPreviewInteractionController *)self delegate];
        v47 = objc_opt_respondsToSelector();

        if (v47)
        {
          v48 = [(UIPreviewInteractionController *)self delegate];
          [v48 previewInteractionController:self willPresentViewController:v11];
        }

        v10 = v56;
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
      if (v18)
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

- (BOOL)configureRevealTransformSourceViewSnapshotSuppressionFromLocation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIPreviewInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 previewInteractionController:self shouldUseStandardRevealTransformForPreviewingAtLocation:v7 inView:{x, y}];
    v10 = [(UIPreviewInteractionController *)self currentPresentationController];
    v11 = v9 ^ 1;
    [v10 set_sourceViewSnapshotAndScaleTransformSuppressed:v9 ^ 1u];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)configureRevealTransformWithInteractionProgress:(id)a3 forLocation:(CGPoint)a4 inView:(id)a5 containerView:(id)a6
{
  y = a4.y;
  x = a4.x;
  v14 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(UIPreviewInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 previewInteractionController:self interactionProgress:v14 forRevealAtLocation:v11 inSourceView:v12 containerView:{x, y}];
  }
}

- (BOOL)startInteractivePreviewWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  LOBYTE(self) = [(UIPreviewInteractionController *)self startInteractivePreviewAtLocation:v5 inView:v7, v9];
  return self;
}

- (void)cancelInteractivePreview
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(UIPreviewInteractionController *)self currentPreviewViewController];
  v4 = [v3 transitionCoordinator];
  if ([v4 isInteractive])
  {
    v5 = [(UIPreviewInteractionController *)self currentPresentationController];
    v6 = [v5 _currentInteractionController];

    LODWORD(v5) = os_variant_has_internal_diagnostics();
    v7 = [v6 conformsToProtocol:&unk_1EFEC1100];
    if (v5)
    {
      if (v7)
      {
LABEL_4:
        if ([v6 conformsToProtocol:{&unk_1EFEC1100, *v17}])
        {
          if (objc_opt_respondsToSelector())
          {
            [v6 cancelInteractiveTransition:&__block_literal_global_456];
          }

          else if (objc_opt_respondsToSelector())
          {
            [v6 cancelInteractiveTransition];
          }

          else if (os_variant_has_internal_diagnostics())
          {
            v16 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *v17 = 138412290;
              *&v17[4] = v6;
              _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Interaction controller %@ does not implement -cancelInteractiveTransition or -cancelInteractiveTransition:", v17, 0xCu);
            }
          }

          else
          {
            v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FDA0) + 8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *v17 = 138412290;
              *&v17[4] = v6;
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

  v8 = [v3 presentingViewController];
  if (v8)
  {
    v9 = v8;
    if (v4)
    {
      v10 = [v4 isCancelled];

      if (v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    [v3 dismissViewControllerAnimated:1 completion:0];
    [(UIPreviewInteractionController *)self _previewPresentationControllerDidScheduleDismiss];
  }

LABEL_19:
}

- (void)commitInteractivePreview
{
  v3 = [(UIPreviewInteractionController *)self currentPreviewViewController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 transitionCoordinator];
    if (!v5)
    {
      v6 = [(UIPreviewInteractionController *)self currentPresentationController];
      v7 = [v6 _canCommitPresentation];

      if (v7)
      {
        self->_isCommitting = 1;
        v8 = [(UIPreviewInteractionController *)self currentPresentationController];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = [(UIPreviewInteractionController *)self currentPresentationController];
          [v10 _willCommitPresentation];
        }

        if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
        {
          v11 = [(UIPreviewInteractionController *)self feedbackGenerator];
          [v11 transitionToState:@"commit" ended:1];
        }

        v12 = [(UIPreviewInteractionController *)self delegate];
        v13 = [v4 presentingViewController];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __58__UIPreviewInteractionController_commitInteractivePreview__block_invoke;
        v16[3] = &unk_1E70F3590;
        v16[4] = self;
        v14 = [_UIPreviewTransitionController performCommitTransitionWithDelegate:v12 forViewController:v13 previewViewController:v4 previewInteractionController:self completion:v16];
        [(UIPreviewInteractionController *)self setCurrentCommitTransition:v14];

        v15 = +[_UIStatistics previewInteractionPopCount];
        [v15 incrementValueBy:1];

        _UIPowerLogPopOccured();
      }
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIPreviewInteractionController *)self touchObservingGestureRecognizer];

  if (v8 != v6)
  {
    v9 = [(UIPreviewInteractionController *)self delegate];
    v10 = [(UIPreviewInteractionController *)self revealGestureRecognizer];

    if (v10 != v6)
    {
      goto LABEL_3;
    }

    if (_UIPreviewInteractionIsTextGestureRecognizer(v7))
    {
      goto LABEL_12;
    }

    v13 = [(UIPreviewInteractionController *)self previewGestureRecognizer];

    if (v13 == v7)
    {
      goto LABEL_12;
    }

    v12 = 1;
    if ([v7 _isGestureType:1])
    {
      goto LABEL_13;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_3:
      v11 = [(UIPreviewInteractionController *)self previewGestureRecognizer];

      if (v11 != v6)
      {
LABEL_4:
        v12 = 0;
LABEL_13:

        goto LABEL_14;
      }

      if (_UIPreviewInteractionIsTextGestureRecognizer(v7))
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

    v12 = [v9 previewInteractionController:self shouldStartPreviewingSimultaneouslyWithGestureRecognizer:v7];
    goto LABEL_13;
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIPreviewInteractionController *)self revealGestureRecognizer];

  if (v5 == v4)
  {
    [(UIPreviewInteractionController *)self _deactivateFeedbackIfNeeded];
  }

  v6 = [(UIPreviewInteractionController *)self previewGestureRecognizer];

  if (v6 == v4)
  {
    v7 = [UIApp _gestureEnvironment];
    v8 = [(UIPreviewInteractionController *)self revealGestureRecognizer];
    v10[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UIGestureEnvironment *)v7 _cancelGestureRecognizers:v9];
  }
}

- (void)interactionProgressDidUpdate:(id)a3
{
  v13 = a3;
  v4 = [(UIPreviewInteractionController *)self interactionProgressForCommit];

  v5 = v13;
  if (v4 == v13)
  {
    [v13 percentComplete];
    v7 = v6;
    v8 = [(UIPreviewInteractionController *)self currentPresentationController];
    v9 = [v8 _canCommitPresentation];

    if (v7 >= 1.0 && v9)
    {
      [(UIPreviewInteractionController *)self setInteractionProgressForCommit:0];
      [(UIPreviewInteractionController *)self commitInteractivePreview];
    }

    else
    {
      [v13 percentComplete];
      if (v10 > 1.0)
      {
        v10 = 1.0;
      }

      v11 = fmax(v10, 0.0);
      v12 = [(UIPreviewInteractionController *)self feedbackGenerator];
      [v12 transitionToState:@"commit" updated:v11];
    }

    v5 = v13;
  }
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIPreviewInteractionController *)self interactionProgressForCommit];

  if (v7 == v6 && v4)
  {

    [(UIPreviewInteractionController *)self commitInteractivePreview];
  }
}

- (void)forcePresentationTransitionWillBegin:(id)a3
{
  v4 = a3;
  v12 = [(UIPreviewInteractionController *)self interactionProgressForPresentation];
  [(UIPreviewInteractionController *)self location];
  v6 = v5;
  v8 = v7;
  v9 = [(UIPreviewInteractionController *)self currentPresentationController];
  v10 = [v9 sourceView];
  v11 = [v4 _revealContainerView];

  [(UIPreviewInteractionController *)self configureRevealTransformWithInteractionProgress:v12 forLocation:v10 inView:v11 containerView:v6, v8];
}

- (void)forcePresentationControllerWillDismiss:(id)a3
{
  [(UIPreviewInteractionController *)self _resetCustomPresentationHooks];
  v4 = [(UIPreviewInteractionController *)self currentPresentationController];
  [v4 setPanningGestureRecognizer:0];

  v5 = [(UIPreviewInteractionController *)self revealGestureRecognizer];
  [v5 setEnabled:0];

  if (![(UIPreviewInteractionController *)self _usesPreviewPresentationController]&& ![(UIPreviewInteractionController *)self statusBarWasHidden])
  {

    [(UIPreviewInteractionController *)self _setStatusBarHidden:0];
  }
}

- (void)forcePresentationControllerDidDismiss:(id)a3
{
  v4 = +[_UIStatistics previewInteractionPeekDuration];
  v5 = [(UIPreviewInteractionController *)self currentPresentationController];
  [v4 recordTimingForObject:v5];

  _UIPowerLogPeekEnded();
  v7 = [(UIPreviewInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UIPreviewInteractionController *)self currentPreviewViewController];
    [v7 previewInteractionController:self didDismissViewController:v6 committing:self->_isCommitting];
  }

  [(UIPreviewInteractionController *)self _finalizeInteractivePreview];
}

- (void)forcePresentationController:(id)a3 didSelectMenuItem:(id)a4
{
  v6 = a4;
  v5 = [(UIPreviewInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 previewInteractionController:self didSelectMenuItem:v6];
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
    v7 = [(UIPreviewInteractionController *)self beginPreviewGestureRecognizer];
    v8 = [(UIPreviewForceInteractionProgress *)v6 initWithGestureRecognizer:v7];

    [(UIPreviewForceInteractionProgress *)v8 setCompletesAtTargetState:1];
    [(UIPreviewInteractionController *)self setInteractionProgressForPresentation:v8];
  }
}

- (void)_handleRevealGesture:(id)a3
{
  v8 = a3;
  if ([v8 isEnabled])
  {
    if ([v8 state] == 1)
    {
      if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
      {
        if ([(UIPreviewInteractionController *)self startInteractivePreviewWithGestureRecognizer:v8])
        {
          [(UIPreviewInteractionController *)self _turnOnFeedbackGenerator];
        }

        else
        {
          [v8 setEnabled:0];
          [v8 setEnabled:1];
          v6 = [(UIPreviewInteractionController *)self previewGestureRecognizer];
          [v6 setEnabled:0];

          v7 = [(UIPreviewInteractionController *)self previewGestureRecognizer];
          [v7 setEnabled:1];
        }
      }
    }

    else if (([v8 state] == 3 || objc_msgSend(v8, "state") == 4 || objc_msgSend(v8, "state") == 5) && !-[UIPreviewInteractionController _usesPreviewInteraction](self, "_usesPreviewInteraction"))
    {
      v4 = [(UIPreviewInteractionController *)self currentPresentationController];
      v5 = [v4 _canDismissPresentation];

      if (v5)
      {
        [(UIPreviewInteractionController *)self cancelInteractivePreview];
      }
    }
  }
}

- (void)_handleTouchObservingGesture:(id)a3
{
  v4 = a3;
  if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    if ([v4 state] == 1 || objc_msgSend(v4, "state") == 2)
    {
      [(UIPreviewInteractionController *)self _activateFeedbackIfNeeded];
    }

    if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5)
    {
      [(UIPreviewInteractionController *)self _deactivateFeedbackIfNeeded];
    }
  }
}

- (void)_configureCommitInteractionProgressForView:(id)a3
{
  v4 = a3;
  v5 = [(UIPreviewInteractionController *)self interactionProgressForCommit];
  [v5 removeProgressObserver:self];

  v6 = [UIPreviewForceInteractionProgress alloc];
  v7 = [v4 window];

  v8 = [(UIPreviewForceInteractionProgress *)v6 initWithView:v7 targetState:3];
  [(UIPreviewForceInteractionProgress *)v8 setCompletesAtTargetState:0];
  [(UIInteractionProgress *)v8 addProgressObserver:self];
  [(UIPreviewInteractionController *)self setInteractionProgressForCommit:v8];
}

- (void)_setStatusBarHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [UIApp statusBar];
  if ([v4 isHidden] != v3)
  {
    [v4 setHidden:v3 animated:1];
  }
}

- (id)_transitionDelegateForPreviewViewController:(id)a3 atPosition:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [(UIPreviewInteractionController *)self delegate];
  v12 = [v9 transitioningDelegate];
  v13 = [v12 conformsToProtocol:&unk_1EFEC16B8];

  if (v13)
  {
    v14 = [v9 transitioningDelegate];
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v11 previewInteractionController:self transitioningDelegateForPreviewingAtPosition:v10 inView:{x, y}];
LABEL_5:
    v15 = v14;
    if (v14)
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
    v18 = [(UIPreviewInteractionController *)self feedbackGenerator];

    if (has_internal_diagnostics)
    {
      if (v18)
      {
LABEL_10:
        v19 = [(UIPreviewInteractionController *)self feedbackGenerator];
        [(_UIPreviewTransitionDelegate *)v16 setFeedbackGenerator:v19];

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
      if (v18)
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
  v20 = [(UIPreviewInteractionController *)self interactionProgressForPresentation];
  if (([v20 didEnd] & 1) != 0 || (objc_msgSend(v20, "percentComplete"), v21 >= 1.0))
  {
    [(_UIPreviewTransitionDelegate *)v15 setInteractionProgressForPresentation:0];
  }

  else
  {
    v22 = [(UIPreviewInteractionController *)self interactionProgressForPresentation];
    [(_UIPreviewTransitionDelegate *)v15 setInteractionProgressForPresentation:v22];
  }

  return v15;
}

- (void)_previewPresentationControllerDidScheduleDismiss
{
  if (![(UIPreviewInteractionController *)self didSendDelegateWillDismissViewController])
  {
    v4 = [(UIPreviewInteractionController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [(UIPreviewInteractionController *)self currentPreviewViewController];
      [v4 previewInteractionController:self willDismissViewController:v3];
    }

    [(UIPreviewInteractionController *)self setDidSendDelegateWillDismissViewController:1];
  }
}

- (void)_resetCustomPresentationHooks
{
  v3 = [(UIPreviewInteractionController *)self currentPreviewViewController];
  [v3 _setOverrideUseCustomPresentation:0];

  v4 = [(UIPreviewInteractionController *)self currentPreviewViewController];
  [v4 _setOverrideTransitioningDelegate:0];
}

- (void)_finalizeInteractivePreview
{
  [(UIPreviewInteractionController *)self setDidSendDelegateWillDismissViewController:0];
  v3 = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
  [v3 endDisablingInterfaceAutorotation];

  [(UIPreviewInteractionController *)self setWindowForPreviewPresentation:0];
  v4 = [(UIPreviewInteractionController *)self revealGestureRecognizer];
  [v4 setEnabled:1];

  v5 = [(UIPreviewInteractionController *)self windowForPreviewPresentation];
  v6 = [v5 windowScene];
  [v6 _setReachabilitySupported:1 forReason:@"UIPreviewInteractionController _finalizeInteractivePreview"];

  [(UIPreviewInteractionController *)self _resetCustomPresentationHooks];
  [(UIPreviewInteractionController *)self setCurrentPreviewViewController:0];
  [(UIPreviewInteractionController *)self setCurrentPresentationController:0];
  [(UIPreviewInteractionController *)self setCurrentTransitionDelegate:0];
  [(UIPreviewInteractionController *)self setInteractionProgressForCommit:0];
  if ([(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    [(UIPreviewInteractionController *)self setInteractionProgressForPresentation:0];
  }

  v7 = [(UIPreviewInteractionController *)self previewInteraction];
  [v7 cancelInteraction];

  v8 = [(UIPreviewInteractionController *)self modalPanGestureRecognizer];

  if (v8)
  {
    v9 = [(UIPreviewInteractionController *)self modalPanGestureRecognizer];
    v10 = [v9 view];
    v11 = [(UIPreviewInteractionController *)self modalPanGestureRecognizer];
    [v10 removeGestureRecognizer:v11];

    [(UIPreviewInteractionController *)self setModalPanGestureRecognizer:0];
  }

  [(UIPreviewInteractionController *)self _deactivateFeedbackIfNeeded];
}

- (void)_activateFeedbackIfNeeded
{
  if (![(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    v3 = [(UIPreviewInteractionController *)self feedbackGenerator];
    v4 = [v3 isActive];

    if ((v4 & 1) == 0)
    {
      v5 = [(UIPreviewInteractionController *)self touchObservingGestureRecognizer];
      deepPressAnalyzer = self->_deepPressAnalyzer;
      v10 = v5;
      if (!deepPressAnalyzer)
      {
        v7 = objc_alloc_init(_UIDeepPressAnalyzer);
        v8 = self->_deepPressAnalyzer;
        self->_deepPressAnalyzer = v7;

        v5 = v10;
        deepPressAnalyzer = self->_deepPressAnalyzer;
      }

      v9 = [v5 touches];
      [(_UIDeepPressAnalyzer *)deepPressAnalyzer analyzeTouches:v9];

      if ([(_UIDeepPressAnalyzer *)self->_deepPressAnalyzer isDeepPressLikely])
      {
        [(UIPreviewInteractionController *)self _activateFeedback];
      }
    }
  }
}

- (void)_activateFeedback
{
  v3 = [(UIPreviewInteractionController *)self feedbackGenerator];
  if (!v3)
  {
    v4 = +[_UIStatesFeedbackGeneratorPreviewConfiguration defaultConfiguration];
    v5 = [v4 tweakedConfigurationForClass:objc_opt_class() usage:@"presentation"];

    v6 = [(UIPreviewInteractionController *)self touchObservingGestureRecognizer];
    v7 = [_UIStatesFeedbackGenerator alloc];
    v8 = [v6 view];
    v9 = [(_UIStatesFeedbackGenerator *)v7 initWithConfiguration:v5 view:v8];

    [(UIPreviewInteractionController *)self setFeedbackGenerator:v9];
    v3 = v9;
  }

  v10 = v3;
  if (([v3 isActive] & 1) == 0)
  {
    [v10 activateWithCompletionBlock:0];
  }
}

- (void)_deactivateFeedbackIfNeeded
{
  v3 = [(UIPreviewInteractionController *)self currentPresentationController];

  if (!v3 && ![(UIPreviewInteractionController *)self _usesPreviewInteraction])
  {
    [(UIPreviewInteractionController *)self _turnOffFeedbackGenerator];
    v4 = [(UIPreviewInteractionController *)self feedbackGenerator];
    if ([v4 isActive])
    {
      [v4 deactivate];
    }
  }
}

- (void)_turnOnFeedbackGenerator
{
  if (!self->_generatorTurnedOn)
  {
    v3 = [(UIPreviewInteractionController *)self feedbackGenerator];
    [v3 _activateWithStyle:2 completionBlock:0];

    self->_generatorTurnedOn = 1;
  }
}

- (void)_turnOffFeedbackGenerator
{
  if (self->_generatorTurnedOn)
  {
    v3 = [(UIPreviewInteractionController *)self feedbackGenerator];
    [v3 _deactivateWithStyle:2];

    self->_generatorTurnedOn = 0;
  }
}

- (BOOL)_usesPreviewPresentationController
{
  v2 = [(UIPreviewInteractionController *)self currentPresentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)previewInteraction:(id)a3 didUpdatePreviewTransition:(double)a4 ended:(BOOL)a5
{
  v5 = a5;
  v7 = [(UIPreviewInteractionController *)self interactionProgressForPresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setPercentComplete:a4];
    if (v5)
    {
      [v7 endInteraction:1];
    }
  }
}

- (BOOL)previewInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInCoordinateSpace:v5];
  v7 = v6;
  v9 = v8;

  LOBYTE(self) = [(UIPreviewInteractionController *)self startInteractivePreviewAtLocation:v5 inView:v7, v9];
  return self;
}

- (void)previewInteraction:(id)a3 didUpdateCommitTransition:(double)a4 ended:(BOOL)a5
{
  v5 = a5;
  v7 = [(UIPreviewInteractionController *)self interactionProgressForCommit];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setPercentComplete:a4];
    if (v5)
    {
      [v7 endInteraction:1];
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