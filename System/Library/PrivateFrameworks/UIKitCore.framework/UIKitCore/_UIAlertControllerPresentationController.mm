@interface _UIAlertControllerPresentationController
- (BOOL)_canDismissPresentation;
- (BOOL)_preserveResponderAcrossWindows;
- (BOOL)_shouldOccludeDuringPresentation;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3;
- (_UIAlertControllerPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (_UIForcePresentationControllerDelegate)forcePresentationControllerDelegate;
- (id)_createVisualStyleForProvider:(id)a3;
- (id)_presentedAlertController;
- (void)_prepareConstraintsIfNecessary;
- (void)_prepareDimmingViewIfNecessary;
- (void)_presentedAlertControllerDidAdapt;
- (void)_setChromeHidden:(BOOL)a3;
- (void)_updateConstraintsIfNecessary;
- (void)_willRunTransitionForCurrentStateDeferred:(BOOL)a3;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionWillBegin;
- (void)setDelegate:(id)a3;
- (void)setPanningGestureRecognizer:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UIAlertControllerPresentationController

- (BOOL)_canDismissPresentation
{
  v2 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  v3 = [v2 transitionCoordinator];
  if (v3)
  {
    v4 = [v2 transitionCoordinator];
    v5 = [v4 isInteractive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIAlertControllerPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v6 = a4;
  v24.receiver = self;
  v24.super_class = _UIAlertControllerPresentationController;
  v7 = [(UIPresentationController *)&v24 initWithPresentedViewController:a3 presentingViewController:v6];
  v8 = v7;
  if (v7)
  {
    [(_UIAlertControllerPresentationController *)v7 setDelegate:v7];
    v9 = [_UIKeyboardLayoutAlignmentView alloc];
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v14 = [(_UIKeyboardLayoutAlignmentView *)v9 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
    keyboardLayoutAlignmentView = v8->keyboardLayoutAlignmentView;
    v8->keyboardLayoutAlignmentView = v14;

    v16 = [[UIView alloc] initWithFrame:v10, v11, v12, v13];
    keyboardLayoutAlignmentAvailableSpaceView = v8->keyboardLayoutAlignmentAvailableSpaceView;
    v8->keyboardLayoutAlignmentAvailableSpaceView = v16;

    [(UIView *)v8->keyboardLayoutAlignmentAvailableSpaceView setUserInteractionEnabled:0];
    [(UIView *)v8->keyboardLayoutAlignmentAvailableSpaceView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[_UIStatesFeedbackGeneratorPreviewConfiguration defaultConfiguration];
    v19 = [v18 tweakedConfigurationForClass:objc_opt_class() usage:@"previewInteractionPresentation"];

    v20 = [_UIStatesFeedbackGenerator alloc];
    v21 = [v6 view];
    v22 = [(_UIStatesFeedbackGenerator *)v20 initWithConfiguration:v19 view:v21];
    [(_UIAlertControllerPresentationController *)v8 setFeedbackGenerator:v22];
  }

  return v8;
}

- (void)containerViewWillLayoutSubviews
{
  [(_UIAlertControllerPresentationController *)self _prepareDimmingViewIfNecessary];
  [(_UIAlertControllerPresentationController *)self _prepareConstraintsIfNecessary];

  [(_UIAlertControllerPresentationController *)self _updateConstraintsIfNecessary];
}

- (void)containerViewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIAlertControllerPresentationController;
  [(UIPresentationController *)&v5 containerViewDidLayoutSubviews];
  dimmingView = self->_dimmingView;
  if (dimmingView)
  {
    v4 = [(UIPresentationController *)self containerView];
    [v4 bounds];
    [(UIView *)dimmingView setFrame:?];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v24.receiver = self;
  v24.super_class = _UIAlertControllerPresentationController;
  [(UIPresentationController *)&v24 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  [v4 preferredContentSize];
  v7 = v6;
  v8 = v5;
  if (v6 != *MEMORY[0x1E695F060] || v5 != *(MEMORY[0x1E695F060] + 8))
  {
    v10 = [v4 _visualStyle];
    v11 = [(UIPresentationController *)self containerView];
    [v10 contentInsetsForContainerView:v11];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = v7 + v15 + v19;
    v21 = v8 + v13 + v17;
    [(UIPresentationController *)self preferredContentSize];
    if (v20 >= v22)
    {
      v22 = v20;
    }

    if (v21 >= v23)
    {
      v23 = v21;
    }

    [(UIPresentationController *)self _setPreferredContentSize:v22, v23];
  }
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3
{
  [a3 bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_prepareDimmingViewIfNecessary
{
  v12 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  v3 = [v12 _visualStyle];
  v4 = [(_UIAlertControllerPresentationController *)self _dimmingView];
  if (v12 && !v4 && v3)
  {
    if (![v12 _allowsShowingDimmingView])
    {
      goto LABEL_10;
    }

    v4 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
    v5 = [(UIPresentationController *)self containerView];
    v6 = [(_UIAlertControllerPresentationController *)self _dimmingView];
    [v6 removeFromSuperview];

    v7 = [v4 _visualStyle];
    v8 = [v7 dimmingViewForAlertController:v4];
    dimmingView = self->_dimmingView;
    self->_dimmingView = v8;

    [(UIView *)self->_dimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = self->_dimmingView;
    if (v10)
    {
      [v5 insertSubview:v10 atIndex:0];
      [v5 sendSubviewToBack:v10];
      if ([v4 _canDismissWithGestureRecognizer])
      {
        v11 = [v4 _dismissGestureRecognizer];
        [(UIView *)v10 addGestureRecognizer:v11];
      }
    }
  }

LABEL_10:
}

- (void)_willRunTransitionForCurrentStateDeferred:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIAlertControllerPresentationController;
  [(UIPresentationController *)&v4 _willRunTransitionForCurrentStateDeferred:a3];
  if (![(UIPresentationController *)self presenting])
  {
    [(_UIKeyboardLayoutAlignmentView *)self->keyboardLayoutAlignmentView setAutomaticKeyboardFrameTrackingDisabled:1];
  }
}

- (void)presentationTransitionWillBegin
{
  v12 = [(UIPresentationController *)self containerView];
  v3 = [(UIPresentationController *)self presentingViewController];
  v4 = [v3 _transitionCoordinator];

  [v12 insertSubview:self->keyboardLayoutAlignmentView atIndex:0];
  [v12 insertSubview:self->keyboardLayoutAlignmentAvailableSpaceView atIndex:0];
  v5 = [(UIPresentationController *)self presentedView];
  [v12 addSubview:v5];

  v6 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  v7 = [(UIPresentationController *)self presentedViewController];
  v8 = [v7 traitCollection];
  [v6 _updateProvidedStyleWithTraitCollection:v8];

  [(_UIAlertControllerPresentationController *)self _prepareDimmingViewIfNecessary];
  [(_UIAlertControllerPresentationController *)self _prepareConstraintsIfNecessary];
  [v12 layoutIfNeeded];
  v9 = [(_UIAlertControllerPresentationController *)self forcePresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 forcePresentationTransitionWillBegin:self];
    v10 = +[_UIStatistics previewInteractionTapCount];
    [v10 setSampleRate:0.0];

    v11 = +[_UIStatistics previewInteractionAlertPresentationCount];
    [v11 incrementValueBy:1];
  }
}

- (BOOL)_preserveResponderAcrossWindows
{
  v2 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  v3 = [v2 _visualStyle];
  v4 = [v3 shouldPreserveRespondersAcrossWindows];

  return v4;
}

- (BOOL)_shouldOccludeDuringPresentation
{
  v2 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  v3 = [v2 _visualStyle];
  v4 = [v3 shouldOccludeDuringPresentation];

  return v4;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = _UIAlertControllerPresentationController;
  v7 = a4;
  [(UIPresentationController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95___UIAlertControllerPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E70F3B98;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)_prepareConstraintsIfNecessary
{
  if (!self->constraintsPrepared)
  {
    v3 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
    v4 = [v3 view];
    v5 = [(UIPresentationController *)self containerView];
    v6 = [v3 _visualStyle];
    if ([v4 isDescendantOfView:v5])
    {
      if ([(UIView *)self->keyboardLayoutAlignmentAvailableSpaceView isDescendantOfView:v5]&& v6 != 0)
      {
        self->constraintsPrepared = 1;
        v8 = objc_opt_new();
        visualStyleUpdatableConstraints = self->_visualStyleUpdatableConstraints;
        self->_visualStyleUpdatableConstraints = v8;

        v10 = [MEMORY[0x1E695DF70] array];
        v11 = [MEMORY[0x1E69977A0] constraintWithItem:self->keyboardLayoutAlignmentAvailableSpaceView attribute:3 relatedBy:0 toItem:v5 attribute:3 multiplier:1.0 constant:0.0];
        [v10 addObject:v11];

        v12 = [MEMORY[0x1E69977A0] constraintWithItem:self->keyboardLayoutAlignmentAvailableSpaceView attribute:4 relatedBy:0 toItem:self->keyboardLayoutAlignmentView attribute:3 multiplier:1.0 constant:0.0];
        [v10 addObject:v12];

        v13 = [MEMORY[0x1E69977A0] constraintWithItem:self->keyboardLayoutAlignmentAvailableSpaceView attribute:7 relatedBy:0 toItem:v5 attribute:7 multiplier:1.0 constant:0.0];
        [v10 addObject:v13];

        v14 = [MEMORY[0x1E69977A0] constraintWithItem:self->keyboardLayoutAlignmentAvailableSpaceView attribute:1 relatedBy:0 toItem:v5 attribute:1 multiplier:1.0 constant:0.0];
        [v10 addObject:v14];

        v15 = [v3 _alignsToKeyboard];
        keyboardLayoutAlignmentAvailableSpaceView = v5;
        if (v15)
        {
          keyboardLayoutAlignmentAvailableSpaceView = self->keyboardLayoutAlignmentAvailableSpaceView;
        }

        v17 = keyboardLayoutAlignmentAvailableSpaceView;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __74___UIAlertControllerPresentationController__prepareConstraintsIfNecessary__block_invoke;
        v20[3] = &unk_1E70F4570;
        v21 = v6;
        v22 = v3;
        v23 = v4;
        v24 = v17;
        v25 = self;
        v26 = v10;
        v27 = v5;
        v18 = v10;
        v19 = v17;
        [UIView performWithoutAnimation:v20];
      }
    }
  }
}

- (void)_updateConstraintsIfNecessary
{
  v3 = [(UIPresentationController *)self containerView];
  if (self->constraintsPrepared)
  {
    v17 = v3;
    v4 = ![(UIAlertVisualStyleUpdatableConstraints *)self->_visualStyleUpdatableConstraints hasUpdatableConstraints];
    v3 = v17;
    v4 = v4 || v17 == 0;
    if (!v4)
    {
      v5 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
      v6 = [v5 view];
      v7 = [v6 window];

      if (v7)
      {
        v8 = [v5 _alignsToKeyboard];
        keyboardLayoutAlignmentAvailableSpaceView = v17;
        if (v8)
        {
          keyboardLayoutAlignmentAvailableSpaceView = self->keyboardLayoutAlignmentAvailableSpaceView;
        }

        v10 = keyboardLayoutAlignmentAvailableSpaceView;
        v11 = [v5 _visualStyle];
        [objc_opt_class() positionContentsOfAlertController:v5 alertContentView:v6 availableSpaceView:v10 visualStyle:v11 updatableConstraints:self->_visualStyleUpdatableConstraints];
        v12 = [(UIPresentationController *)self containerView];
        [v11 contentInsetsForContainerView:v12];
        v14 = v13;
        v16 = v15;

        [(NSLayoutConstraint *)self->_topAvailableSpaceConstraint setConstant:v14];
        [(NSLayoutConstraint *)self->_bottomAvailableSpaceConstraint setConstant:-v16];
      }

      v3 = v17;
    }
  }
}

- (void)_presentedAlertControllerDidAdapt
{
  self->constraintsPrepared = 0;
  visualStyleUpdatableConstraints = self->_visualStyleUpdatableConstraints;
  self->_visualStyleUpdatableConstraints = 0;

  topAvailableSpaceConstraint = self->_topAvailableSpaceConstraint;
  self->_topAvailableSpaceConstraint = 0;

  bottomAvailableSpaceConstraint = self->_bottomAvailableSpaceConstraint;
  self->_bottomAvailableSpaceConstraint = 0;
}

- (id)_createVisualStyleForProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 styleForAlertPresentationController:self];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = _UIAlertControllerPresentationController;
    v5 = [(UIPresentationController *)&v7 _createVisualStyleForProvider:v4];
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  if (v5 != self)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIAlertControllerPresentationController.m" lineNumber:346 description:@"The presentation controller of an alert controller presenting as an alert must not have its delegate modified"];
  }

  v7.receiver = self;
  v7.super_class = _UIAlertControllerPresentationController;
  [(UIPresentationController *)&v7 setDelegate:v5];
}

- (id)_presentedAlertController
{
  v4 = [(UIPresentationController *)self presentedViewController];
  if (([v4 conformsToProtocol:&unk_1EFEC3198] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIAlertControllerPresentationController.m" lineNumber:369 description:@"presentedViewController of _UIAlertControllerPresentationController does not contain an alert controller"];
  }

  v5 = [v4 _containedAlertController];

  return v5;
}

- (void)setPanningGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  [v5 _setSystemProvidedGestureRecognizer:v4];
}

- (void)_setChromeHidden:(BOOL)a3
{
  if (self->_chromeHidden != a3)
  {
    self->_chromeHidden = a3;
    [(UIView *)self->_dimmingView setHidden:?];
  }
}

- (_UIForcePresentationControllerDelegate)forcePresentationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forcePresentationControllerDelegate);

  return WeakRetained;
}

@end