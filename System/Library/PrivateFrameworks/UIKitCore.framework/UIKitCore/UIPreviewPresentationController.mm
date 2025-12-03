@interface UIPreviewPresentationController
+ (id)_backgroundEffectForTraitCollection:(id)collection interactive:(BOOL)interactive;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview;
- (UIPreviewPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (UIPreviewPresentationControllerDelegate)previewPresentationDelegate;
- (UIResponder)currentPinnedResponder;
- (UIWindow)presentationWindow;
- (id)_presentationContainerView;
- (void)_animatePreviewTransitionIfNeeded:(id)needed;
- (void)_applyVisualEffectsForPresentationPhase:(unint64_t)phase;
- (void)_finalizeAfterDismissalTransition;
- (void)_handleDismissGestureRecognizer:(id)recognizer;
- (void)_prepareContainerViewForPresentationTransition;
- (void)_prepareDismissAnimationsForTransitionCoordinator:(id)coordinator;
- (void)_prepareDismissGestureRecognizersIfNeeded;
- (void)_prepareKeyboardForPresentationTransition;
- (void)_preparePresentationAnimationsForTransitionCoordinator:(id)coordinator;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation UIPreviewPresentationController

uint64_t __65___UIPreviewPresentationController_interactionProgressDidUpdate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) percentComplete];

  return [v1 _updateBreathingTransformWithProgress:1 animated:?];
}

void __89___UIPreviewPresentationController__preparePresentationContainerViewForPreviewTransition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 layoutIfNeeded];
}

void __80___UIPreviewPresentationController__unhighlightPreviewCellSnapshotViewsIfNeeded__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutForRevealUnhighlightTransition:a2];
  if (a2 >= 1.0)
  {
    [WeakRetained _stopUnhighlightPreviewCellSnapshotViewAnimationIfNeeded];
  }
}

void __88___UIPreviewPresentationController__updateVisibiltyOfPreviewActionChromeForCurrentState__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) actionSheetAvailableImageView];
  [v2 setAlpha:v1];
}

void __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) platterView];
  [v3 setCenter:{v1, v2}];
}

void __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPreviewActionSheet:*(a1 + 32)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_10;
  v3[3] = &unk_1E70F35B8;
  v4 = *(a1 + 40);
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) _configureDynamicsController];
  v2 = [*(a1 + 40) platterMenuController];
  [v2 _beginInYLockedStatePresented];

  v4 = [*(a1 + 40) containerView];
  v3 = [v4 window];
  [v3 setUserInteractionEnabled:1];
}

void __93___UIPreviewPresentationController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  if (v5 && ([v5 _actions], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93___UIPreviewPresentationController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke_4;
    v11[3] = &unk_1E70F35B8;
    v11[4] = v7;
    v10 = &v12;
    v12 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93___UIPreviewPresentationController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke_2;
    block[3] = &unk_1E711B1F8;
    block[4] = v7;
    v10 = &v14;
    v14 = v3;
    v15 = WeakRetained;
    objc_copyWeak(&v16, (a1 + 40));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v16);
  }
}

void __93___UIPreviewPresentationController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93___UIPreviewPresentationController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke_3;
  v5[3] = &unk_1E711B1F8;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  objc_copyWeak(&v9, (a1 + 56));
  [v2 _dismissForHandledActionWithCompletion:v5];
  objc_destroyWeak(&v9);
}

void __93___UIPreviewPresentationController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke_3(id *a1)
{
  v2 = [a1[4] handler];

  if (v2)
  {
    v3 = [a1[4] handler];
    (v3)[2](v3, a1[4], a1[5]);
  }

  v9 = [a1[6] forcePresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_alloc_init(UIPreviewMenuItem);
    v5 = [a1[4] identifier];
    [(UIPreviewMenuItem *)v4 setIdentifier:v5];

    v6 = [a1[4] title];
    [(UIPreviewMenuItem *)v4 setTitle:v6];

    [v9 forcePresentationController:a1[6] didSelectMenuItem:v4];
  }

  [a1[5] dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = [WeakRetained previewInteractionController];
  [v8 _previewPresentationControllerDidScheduleDismiss];
}

uint64_t __93___UIPreviewPresentationController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 40) _actions];
  [*(a1 + 32) setPreviewActionItems:v2];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _presentSubActionSheetForPreviewActionGroup:v4];
}

void __71___UIPreviewPresentationController__dismissPresentationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasAskedForDismissalInternally:1];
  v2 = [*(a1 + 32) previewActionSheet];
  [v2 setHidden:1];

  v3 = [*(a1 + 32) presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:*(a1 + 40)];

  v4 = [*(a1 + 32) previewInteractionController];
  [v4 _previewPresentationControllerDidScheduleDismiss];
}

void __96___UIPreviewPresentationController__restorePlatterToInitialStatePositionAnimatedWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) centerForPlatterWithMenuViewDismissed];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) platterView];
  [v6 setCenter:{v3, v5}];

  [*(a1 + 32) centerForMenuDismissed];
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) previewActionSheet];
  [v11 setCenter:{v8, v10}];
}

uint64_t __96___UIPreviewPresentationController__restorePlatterToInitialStatePositionAnimatedWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v3 = [v2 window];
  [v3 setUserInteractionEnabled:1];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __75___UIPreviewPresentationController__dismissForSelectionQuickActionAnimated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v3 = v2[13];

  v4 = [*(a1 + 32) leadingQuickActionViewSelected];
  v5 = *(a1 + 32);
  if (!v4)
  {
    if (![v5 trailingQuickActionViewSelected])
    {
      return;
    }

    v31 = [*(a1 + 32) leadingQuickActionView];
    [v31 center];
    v33 = v32;

    v34 = [*(a1 + 32) containerView];
    [v34 bounds];
    v10 = 0.5;
    v35 = CGRectGetWidth(v54) * 0.5;

    v36 = *(a1 + 32);
    v37 = [v36 trailingQuickActionView];
    [v36 _trailingQuickActionOffsetForCenterPosition:v37 swipeView:{v35, v33}];
    v39 = v38;
    v40 = [*(a1 + 32) trailingQuickActionViewEdgeConstraint];
    [v40 setConstant:v39];

    v41 = [*(a1 + 32) trailingQuickActionView];
    v42 = [v41 superview];
    [v42 setNeedsLayout];

    v43 = [*(a1 + 32) trailingQuickActionView];
    v44 = [v43 superview];
    [v44 layoutIfNeeded];

    v45 = [*(a1 + 32) presentationContainerView];
    v46 = [v45 platterView];
    [v46 center];
    v24 = v47;

    v25 = *(a1 + 32);
    if ((v3 & 0x400000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26 = [v25 presentationContainerView];
    v28 = [v26 platterView];
    [v28 bounds];
    v30 = CGRectGetWidth(v55) * -0.5;
    goto LABEL_7;
  }

  v6 = [v5 leadingQuickActionView];
  [v6 center];
  v8 = v7;

  v9 = [*(a1 + 32) containerView];
  [v9 bounds];
  v10 = 0.5;
  v11 = CGRectGetWidth(v51) * 0.5;

  v12 = *(a1 + 32);
  v13 = [v12 leadingQuickActionView];
  [v12 _leadingQuickActionOffsetForCenterPosition:v13 swipeView:{v11, v8}];
  v15 = v14;
  v16 = [*(a1 + 32) leadingQuickActionViewEdgeConstraint];
  [v16 setConstant:v15];

  v17 = [*(a1 + 32) leadingQuickActionView];
  v18 = [v17 superview];
  [v18 setNeedsLayout];

  v19 = [*(a1 + 32) leadingQuickActionView];
  v20 = [v19 superview];
  [v20 layoutIfNeeded];

  v21 = [*(a1 + 32) presentationContainerView];
  v22 = [v21 platterView];
  [v22 center];
  v24 = v23;

  v25 = *(a1 + 32);
  if ((v3 & 0x400000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v26 = [v25 containerView];
  [v26 bounds];
  Width = CGRectGetWidth(v52);
  v28 = [*(a1 + 32) presentationContainerView];
  v29 = [v28 platterView];
  [v29 bounds];
  v30 = Width + CGRectGetWidth(v53) * v10;

LABEL_7:
  v49 = [*(a1 + 32) presentationContainerView];
  v48 = [v49 platterView];
  [v48 setCenter:{v30, v24}];
}

void __75___UIPreviewPresentationController__dismissForSelectionQuickActionAnimated__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContainerView];
  v3 = [v2 platterView];
  [v3 setHidden:1];

  v4 = [*(a1 + 32) previewActionSheet];
  [v4 setHidden:1];

  [*(a1 + 32) setHasAskedForDismissalInternally:1];
  v5 = [*(a1 + 32) presentedViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];

  v6 = [*(a1 + 32) previewInteractionController];
  [v6 _previewPresentationControllerDidScheduleDismiss];
}

void __75___UIPreviewPresentationController__dismissForSelectionQuickActionAnimated__block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, 150000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75___UIPreviewPresentationController__dismissForSelectionQuickActionAnimated__block_invoke_4;
  block[3] = &unk_1E70F0F78;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __75___UIPreviewPresentationController__dismissForHandledActionWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) platterContainerBounds];
  MidX = CGRectGetMidX(v12);
  [*(a1 + 32) platterBounds];
  v3 = CGRectGetHeight(v13) * -0.5;
  v4 = [*(a1 + 32) presentationContainerView];
  v5 = [v4 platterView];
  [v5 setCenter:{MidX, v3}];

  [*(a1 + 32) centerForMenuDismissed];
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) previewActionSheet];
  [v10 setCenter:{v7, v9}];
}

void __75___UIPreviewPresentationController__dismissForHandledActionWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContainerView];
  v3 = [v2 platterView];
  [v3 setHidden:1];

  v4 = [*(a1 + 32) previewActionSheet];
  [v4 setHidden:1];

  [*(a1 + 40) dismissViewControllerAnimated:1 completion:*(a1 + 48)];
  v5 = [*(a1 + 32) previewInteractionController];
  [v5 _previewPresentationControllerDidScheduleDismiss];
}

- (UIPreviewPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v8.receiver = self;
  v8.super_class = UIPreviewPresentationController;
  v4 = [(UIPresentationController *)&v8 initWithPresentedViewController:controller presentingViewController:viewController];
  v5 = v4;
  if (v4)
  {
    v4->_appliesVisualEffectsToPresentingView = 1;
    v6 = v4;
  }

  return v5;
}

- (void)presentationTransitionWillBegin
{
  v9.receiver = self;
  v9.super_class = UIPreviewPresentationController;
  [(UIPresentationController *)&v9 presentationTransitionWillBegin];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__UIPreviewPresentationController_presentationTransitionWillBegin__block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  [UIView performWithoutAnimation:v8];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];

  [(UIPreviewPresentationController *)self _preparePresentationAnimationsForTransitionCoordinator:transitionCoordinator];
  [(UIPreviewPresentationController *)self _prepareDismissGestureRecognizersIfNeeded];
  containerViewConfigurationBlock = [(UIPreviewPresentationController *)self containerViewConfigurationBlock];

  if (containerViewConfigurationBlock)
  {
    containerViewConfigurationBlock2 = [(UIPreviewPresentationController *)self containerViewConfigurationBlock];
    containerView = [(UIPresentationController *)self containerView];
    (containerViewConfigurationBlock2)[2](containerViewConfigurationBlock2, containerView);
  }
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  v5.receiver = self;
  v5.super_class = UIPreviewPresentationController;
  [(UIPresentationController *)&v5 presentationTransitionDidEnd:?];
  if (!end)
  {
    [(UIPreviewPresentationController *)self _finalizeAfterDismissalTransition];
  }
}

- (void)dismissalTransitionWillBegin
{
  v5.receiver = self;
  v5.super_class = UIPreviewPresentationController;
  [(UIPresentationController *)&v5 dismissalTransitionWillBegin];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];

  [(UIPreviewPresentationController *)self _prepareDismissAnimationsForTransitionCoordinator:transitionCoordinator];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v6.receiver = self;
  v6.super_class = UIPreviewPresentationController;
  [(UIPresentationController *)&v6 dismissalTransitionDidEnd:?];
  if (endCopy)
  {
    [(UIPreviewPresentationController *)self _finalizeAfterDismissalTransition];
    dismissalTransitionDidEndBlock = self->_dismissalTransitionDidEndBlock;
    if (dismissalTransitionDidEndBlock)
    {
      dismissalTransitionDidEndBlock[2]();
    }
  }
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview
{
  [superview bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (id)_backgroundEffectForTraitCollection:(id)collection interactive:(BOOL)interactive
{
  if (interactive)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return [UIForcePresentationHelper visualEffectForPresentationPhase:v5 traitCollection:collection variant:0];
}

- (void)_prepareContainerViewForPresentationTransition
{
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  [(UIPreviewPresentationController *)self setPresentationWindow:window];

  if (![(UIPreviewPresentationController *)self _allowsAutorotation])
  {
    presentationWindow = [(UIPreviewPresentationController *)self presentationWindow];
    [presentationWindow beginDisablingInterfaceAutorotation];
  }

  v5 = [[UIVisualEffectView alloc] initWithEffect:0];
  [containerView bounds];
  [(UIView *)v5 setFrame:?];
  [(UIView *)v5 setAutoresizingMask:18];
  objc_storeStrong(&self->_presentationContainerEffectView, v5);
  [containerView addSubview:v5];
  if ([(UIPreviewPresentationController *)self appliesVisualEffectsToPresentingView])
  {
    [(UIPreviewPresentationController *)self _prepareStatusBarForPresentationTransition];
    [(UIPreviewPresentationController *)self _prepareKeyboardForPresentationTransition];
  }

  presentedView = [(UIPresentationController *)self presentedView];
  _presentationContainerView = [(UIPreviewPresentationController *)self _presentationContainerView];
  [(UIPresentationController *)self frameOfPresentedViewInContainerView];
  [containerView convertRect:_presentationContainerView toView:?];
  [presentedView setFrame:?];
  [_presentationContainerView addSubview:presentedView];
  [(UIPreviewPresentationController *)self _presentationTransitionWillBeginForContainerEffectView:v5];
  if ([(UIPreviewPresentationController *)self appliesVisualEffectsToPresentingView])
  {
    [UIWindow _synchronizeDrawingWithPreCommitHandler:0];
  }
}

- (void)_prepareKeyboardForPresentationTransition
{
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  _keyboardSceneDelegate = [(UIViewController *)presentingViewController _keyboardSceneDelegate];

  responder = [_keyboardSceneDelegate responder];
  if (responder)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    _rootInputWindowController = [v6 _rootInputWindowController];
    isChangingPlacement = [_rootInputWindowController isChangingPlacement];

    if ((isChangingPlacement & 1) == 0)
    {
      [(UIPreviewPresentationController *)self setCurrentPinnedResponder:responder];
      [_keyboardSceneDelegate _beginPinningInputViewsOnBehalfOfResponder:responder];
      v9 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__160;
      v32 = __Block_byref_object_dispose__160;
      array = [MEMORY[0x1E695DF70] array];
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__160;
      v26 = __Block_byref_object_dispose__160;
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      containerView = [(UIPresentationController *)self containerView];
      presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __76__UIPreviewPresentationController__prepareKeyboardForPresentationTransition__block_invoke;
      v17 = &unk_1E711B708;
      v12 = containerView;
      v18 = v12;
      v13 = presentationContainerEffectView;
      v19 = v13;
      v20 = &v28;
      v21 = &v22;
      [v9 enumerateObjectsUsingBlock:&v14];
      [(UIPreviewPresentationController *)self setKeyboardSnapshotters:v29[5], v14, v15, v16, v17];
      [(UIPreviewPresentationController *)self setKeyboardWindows:v23[5]];

      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v28, 8);
    }
  }
}

void __76__UIPreviewPresentationController__prepareKeyboardForPresentationTransition__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [UIKBViewTreeSnapshotter snapshotterForKeyboardView:v7 afterScreenUpdates:0];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 snapshotView];
      v6 = *(a1 + 32);
      [v7 bounds];
      [v6 convertRect:v7 fromCoordinateSpace:?];
      [v5 setFrame:?];
      [*(a1 + 32) insertSubview:v5 belowSubview:*(a1 + 40)];
      [*(*(*(a1 + 48) + 8) + 40) addObject:v4];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v7];
      [v7 setAlpha:0.0];
    }
  }
}

- (void)_finalizeAfterDismissalTransition
{
  v19 = *MEMORY[0x1E69E9840];
  localStatusBar = [(UIPreviewPresentationController *)self localStatusBar];
  [localStatusBar removeFromSuperview];

  [(UIPreviewPresentationController *)self setLocalStatusBar:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyboardWindows = [(UIPreviewPresentationController *)self keyboardWindows];
  v5 = [keyboardWindows countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(keyboardWindows);
        }

        [*(*(&v14 + 1) + 8 * v8++) setAlpha:1.0];
      }

      while (v6 != v8);
      v6 = [keyboardWindows countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(UIPreviewPresentationController *)self setKeyboardWindows:0];
  keyboardSnapshotters = [(UIPreviewPresentationController *)self keyboardSnapshotters];
  [keyboardSnapshotters enumerateObjectsUsingBlock:&__block_literal_global_466];

  [(UIPreviewPresentationController *)self setKeyboardSnapshotters:0];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  _keyboardSceneDelegate = [(UIViewController *)presentingViewController _keyboardSceneDelegate];

  currentPinnedResponder = [(UIPreviewPresentationController *)self currentPinnedResponder];
  if (currentPinnedResponder && [_keyboardSceneDelegate _isPinningInputViewsOnBehalfOfResponder:currentPinnedResponder])
  {
    [_keyboardSceneDelegate _stopPinningInputViewsOnBehalfOfResponder:currentPinnedResponder];
    [currentPinnedResponder becomeFirstResponder];
  }

  presentationWindow = [(UIPreviewPresentationController *)self presentationWindow];
  [presentationWindow endDisablingInterfaceAutorotationAnimated:1];

  [(UIPreviewPresentationController *)self setPresentationWindow:0];
}

void __68__UIPreviewPresentationController__finalizeAfterDismissalTransition__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 snapshotView];
  [v2 removeFromSuperview];
}

- (id)_presentationContainerView
{
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  contentView = [presentationContainerEffectView contentView];

  return contentView;
}

- (void)_preparePresentationAnimationsForTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if ([(UIPreviewPresentationController *)self appliesVisualEffectsToPresentingView])
  {
    if (coordinatorCopy)
    {
      v5[4] = self;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __90__UIPreviewPresentationController__preparePresentationAnimationsForTransitionCoordinator___block_invoke;
      v6[3] = &unk_1E70F3B98;
      v6[4] = self;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __90__UIPreviewPresentationController__preparePresentationAnimationsForTransitionCoordinator___block_invoke_2;
      v5[3] = &unk_1E70F3B98;
      [coordinatorCopy animateAlongsideTransition:v6 completion:v5];
    }

    else
    {
      [(UIPreviewPresentationController *)self _layoutForPreview];
    }
  }
}

uint64_t __90__UIPreviewPresentationController__preparePresentationAnimationsForTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 initiallyInteractive];
  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 _layoutForInteractiveHighlight];
  }

  else
  {

    return [v4 _layoutForPreview];
  }
}

void __90__UIPreviewPresentationController__preparePresentationAnimationsForTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isCancelled] & 1) == 0)
  {
    [*(a1 + 32) _animatePreviewTransitionIfNeeded:v3];
  }
}

- (void)_prepareDismissAnimationsForTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if ([(UIPreviewPresentationController *)self appliesVisualEffectsToPresentingView])
  {
    if (coordinatorCopy)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __85__UIPreviewPresentationController__prepareDismissAnimationsForTransitionCoordinator___block_invoke;
      v5[3] = &unk_1E70F3B98;
      v5[4] = self;
      [coordinatorCopy animateAlongsideTransition:v5 completion:0];
    }

    else
    {
      [(UIPreviewPresentationController *)self _layoutForCancel];
    }
  }
}

- (void)_prepareDismissGestureRecognizersIfNeeded
{
  previewPresentationDelegate = [(UIPreviewPresentationController *)self previewPresentationDelegate];

  if (previewPresentationDelegate)
  {
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleDismissGestureRecognizer_];
    [(UIGestureRecognizer *)v5 setDelegate:self];
    containerView = [(UIPresentationController *)self containerView];
    [containerView addGestureRecognizer:v5];

    [(UIPreviewPresentationController *)self setDismissGestureRecognizer:v5];
  }
}

- (void)_handleDismissGestureRecognizer:(id)recognizer
{
  previewPresentationDelegate = [(UIPreviewPresentationController *)self previewPresentationDelegate];
  if (objc_opt_respondsToSelector())
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    [previewPresentationDelegate previewPresentationController:self shouldDismissViewController:presentedViewController];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ([(UIPresentationController *)self presenting]|| [(UIPresentationController *)self dismissing])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    dismissGestureRecognizer = [(UIPreviewPresentationController *)self dismissGestureRecognizer];

    if (dismissGestureRecognizer == recognizerCopy)
    {
      presentedView = [(UIPresentationController *)self presentedView];
      [touchCopy locationInView:presentedView];
      v8 = [presentedView pointInside:0 withEvent:?] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (void)_applyVisualEffectsForPresentationPhase:(unint64_t)phase
{
  if (phase)
  {
    v4 = phase == 1;
    v5 = objc_opt_class();
    traitCollection = [(UIPresentationController *)self traitCollection];
    v8 = [v5 _backgroundEffectForTraitCollection:traitCollection interactive:v4];
  }

  else
  {
    v8 = 0;
  }

  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  [presentationContainerEffectView setEffect:v8];
}

- (void)_animatePreviewTransitionIfNeeded:(id)needed
{
  neededCopy = needed;
  if (([neededCopy isCancelled] & 1) == 0 && objc_msgSend(neededCopy, "initiallyInteractive"))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__UIPreviewPresentationController__animatePreviewTransitionIfNeeded___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    if (_AXSReduceMotionEnabled())
    {
      [UIView animateKeyframesWithDuration:0 delay:v5 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      objc_opt_self();
      _durationOfSpringAnimation(2.0, 1500.0, 93.0, 0.0);
      [UIView _animateUsingSpringWithDuration:"_animateUsingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:animations:completion:" delay:0 options:v5 mass:0 stiffness:? damping:? initialVelocity:? animations:? completion:?];
    }
  }
}

- (UIPreviewPresentationControllerDelegate)previewPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_previewPresentationDelegate);

  return WeakRetained;
}

- (UIResponder)currentPinnedResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_currentPinnedResponder);

  return WeakRetained;
}

- (UIWindow)presentationWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationWindow);

  return WeakRetained;
}

@end