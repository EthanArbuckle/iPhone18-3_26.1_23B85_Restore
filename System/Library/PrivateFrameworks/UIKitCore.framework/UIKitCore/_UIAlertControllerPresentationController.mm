@interface _UIAlertControllerPresentationController
- (BOOL)_canDismissPresentation;
- (BOOL)_preserveResponderAcrossWindows;
- (BOOL)_shouldOccludeDuringPresentation;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview;
- (_UIAlertControllerPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (_UIForcePresentationControllerDelegate)forcePresentationControllerDelegate;
- (id)_createVisualStyleForProvider:(id)provider;
- (id)_presentedAlertController;
- (void)_prepareConstraintsIfNecessary;
- (void)_prepareDimmingViewIfNecessary;
- (void)_presentedAlertControllerDidAdapt;
- (void)_setChromeHidden:(BOOL)hidden;
- (void)_updateConstraintsIfNecessary;
- (void)_willRunTransitionForCurrentStateDeferred:(BOOL)deferred;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionWillBegin;
- (void)setDelegate:(id)delegate;
- (void)setPanningGestureRecognizer:(id)recognizer;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _UIAlertControllerPresentationController

- (BOOL)_canDismissPresentation
{
  _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  transitionCoordinator = [_presentedAlertController transitionCoordinator];
  if (transitionCoordinator)
  {
    transitionCoordinator2 = [_presentedAlertController transitionCoordinator];
    isInteractive = [transitionCoordinator2 isInteractive];
  }

  else
  {
    isInteractive = 0;
  }

  return isInteractive;
}

- (_UIAlertControllerPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  viewControllerCopy = viewController;
  v24.receiver = self;
  v24.super_class = _UIAlertControllerPresentationController;
  v7 = [(UIPresentationController *)&v24 initWithPresentedViewController:controller presentingViewController:viewControllerCopy];
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
    view = [viewControllerCopy view];
    v22 = [(_UIStatesFeedbackGenerator *)v20 initWithConfiguration:v19 view:view];
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
    containerView = [(UIPresentationController *)self containerView];
    [containerView bounds];
    [(UIView *)dimmingView setFrame:?];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v24.receiver = self;
  v24.super_class = _UIAlertControllerPresentationController;
  [(UIPresentationController *)&v24 preferredContentSizeDidChangeForChildContentContainer:container];
  _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  [_presentedAlertController preferredContentSize];
  v7 = v6;
  v8 = v5;
  if (v6 != *MEMORY[0x1E695F060] || v5 != *(MEMORY[0x1E695F060] + 8))
  {
    _visualStyle = [_presentedAlertController _visualStyle];
    containerView = [(UIPresentationController *)self containerView];
    [_visualStyle contentInsetsForContainerView:containerView];
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

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview
{
  [superview bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_prepareDimmingViewIfNecessary
{
  _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  _visualStyle = [_presentedAlertController _visualStyle];
  _dimmingView = [(_UIAlertControllerPresentationController *)self _dimmingView];
  if (_presentedAlertController && !_dimmingView && _visualStyle)
  {
    if (![_presentedAlertController _allowsShowingDimmingView])
    {
      goto LABEL_10;
    }

    _dimmingView = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
    containerView = [(UIPresentationController *)self containerView];
    _dimmingView2 = [(_UIAlertControllerPresentationController *)self _dimmingView];
    [_dimmingView2 removeFromSuperview];

    _visualStyle2 = [_dimmingView _visualStyle];
    v8 = [_visualStyle2 dimmingViewForAlertController:_dimmingView];
    dimmingView = self->_dimmingView;
    self->_dimmingView = v8;

    [(UIView *)self->_dimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = self->_dimmingView;
    if (v10)
    {
      [containerView insertSubview:v10 atIndex:0];
      [containerView sendSubviewToBack:v10];
      if ([_dimmingView _canDismissWithGestureRecognizer])
      {
        _dismissGestureRecognizer = [_dimmingView _dismissGestureRecognizer];
        [(UIView *)v10 addGestureRecognizer:_dismissGestureRecognizer];
      }
    }
  }

LABEL_10:
}

- (void)_willRunTransitionForCurrentStateDeferred:(BOOL)deferred
{
  v4.receiver = self;
  v4.super_class = _UIAlertControllerPresentationController;
  [(UIPresentationController *)&v4 _willRunTransitionForCurrentStateDeferred:deferred];
  if (![(UIPresentationController *)self presenting])
  {
    [(_UIKeyboardLayoutAlignmentView *)self->keyboardLayoutAlignmentView setAutomaticKeyboardFrameTrackingDisabled:1];
  }
}

- (void)presentationTransitionWillBegin
{
  containerView = [(UIPresentationController *)self containerView];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  _transitionCoordinator = [presentingViewController _transitionCoordinator];

  [containerView insertSubview:self->keyboardLayoutAlignmentView atIndex:0];
  [containerView insertSubview:self->keyboardLayoutAlignmentAvailableSpaceView atIndex:0];
  presentedView = [(UIPresentationController *)self presentedView];
  [containerView addSubview:presentedView];

  _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  traitCollection = [presentedViewController traitCollection];
  [_presentedAlertController _updateProvidedStyleWithTraitCollection:traitCollection];

  [(_UIAlertControllerPresentationController *)self _prepareDimmingViewIfNecessary];
  [(_UIAlertControllerPresentationController *)self _prepareConstraintsIfNecessary];
  [containerView layoutIfNeeded];
  forcePresentationControllerDelegate = [(_UIAlertControllerPresentationController *)self forcePresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [forcePresentationControllerDelegate forcePresentationTransitionWillBegin:self];
    v10 = +[_UIStatistics previewInteractionTapCount];
    [v10 setSampleRate:0.0];

    v11 = +[_UIStatistics previewInteractionAlertPresentationCount];
    [v11 incrementValueBy:1];
  }
}

- (BOOL)_preserveResponderAcrossWindows
{
  _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  _visualStyle = [_presentedAlertController _visualStyle];
  shouldPreserveRespondersAcrossWindows = [_visualStyle shouldPreserveRespondersAcrossWindows];

  return shouldPreserveRespondersAcrossWindows;
}

- (BOOL)_shouldOccludeDuringPresentation
{
  _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  _visualStyle = [_presentedAlertController _visualStyle];
  shouldOccludeDuringPresentation = [_visualStyle shouldOccludeDuringPresentation];

  return shouldOccludeDuringPresentation;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = _UIAlertControllerPresentationController;
  coordinatorCopy = coordinator;
  [(UIPresentationController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95___UIAlertControllerPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E70F3B98;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)_prepareConstraintsIfNecessary
{
  if (!self->constraintsPrepared)
  {
    _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
    view = [_presentedAlertController view];
    containerView = [(UIPresentationController *)self containerView];
    _visualStyle = [_presentedAlertController _visualStyle];
    if ([view isDescendantOfView:containerView])
    {
      if ([(UIView *)self->keyboardLayoutAlignmentAvailableSpaceView isDescendantOfView:containerView]&& _visualStyle != 0)
      {
        self->constraintsPrepared = 1;
        v8 = objc_opt_new();
        visualStyleUpdatableConstraints = self->_visualStyleUpdatableConstraints;
        self->_visualStyleUpdatableConstraints = v8;

        array = [MEMORY[0x1E695DF70] array];
        v11 = [MEMORY[0x1E69977A0] constraintWithItem:self->keyboardLayoutAlignmentAvailableSpaceView attribute:3 relatedBy:0 toItem:containerView attribute:3 multiplier:1.0 constant:0.0];
        [array addObject:v11];

        v12 = [MEMORY[0x1E69977A0] constraintWithItem:self->keyboardLayoutAlignmentAvailableSpaceView attribute:4 relatedBy:0 toItem:self->keyboardLayoutAlignmentView attribute:3 multiplier:1.0 constant:0.0];
        [array addObject:v12];

        v13 = [MEMORY[0x1E69977A0] constraintWithItem:self->keyboardLayoutAlignmentAvailableSpaceView attribute:7 relatedBy:0 toItem:containerView attribute:7 multiplier:1.0 constant:0.0];
        [array addObject:v13];

        v14 = [MEMORY[0x1E69977A0] constraintWithItem:self->keyboardLayoutAlignmentAvailableSpaceView attribute:1 relatedBy:0 toItem:containerView attribute:1 multiplier:1.0 constant:0.0];
        [array addObject:v14];

        _alignsToKeyboard = [_presentedAlertController _alignsToKeyboard];
        keyboardLayoutAlignmentAvailableSpaceView = containerView;
        if (_alignsToKeyboard)
        {
          keyboardLayoutAlignmentAvailableSpaceView = self->keyboardLayoutAlignmentAvailableSpaceView;
        }

        v17 = keyboardLayoutAlignmentAvailableSpaceView;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __74___UIAlertControllerPresentationController__prepareConstraintsIfNecessary__block_invoke;
        v20[3] = &unk_1E70F4570;
        v21 = _visualStyle;
        v22 = _presentedAlertController;
        v23 = view;
        v24 = v17;
        selfCopy = self;
        v26 = array;
        v27 = containerView;
        v18 = array;
        v19 = v17;
        [UIView performWithoutAnimation:v20];
      }
    }
  }
}

- (void)_updateConstraintsIfNecessary
{
  containerView = [(UIPresentationController *)self containerView];
  if (self->constraintsPrepared)
  {
    v17 = containerView;
    v4 = ![(UIAlertVisualStyleUpdatableConstraints *)self->_visualStyleUpdatableConstraints hasUpdatableConstraints];
    containerView = v17;
    v4 = v4 || v17 == 0;
    if (!v4)
    {
      _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
      view = [_presentedAlertController view];
      window = [view window];

      if (window)
      {
        _alignsToKeyboard = [_presentedAlertController _alignsToKeyboard];
        keyboardLayoutAlignmentAvailableSpaceView = v17;
        if (_alignsToKeyboard)
        {
          keyboardLayoutAlignmentAvailableSpaceView = self->keyboardLayoutAlignmentAvailableSpaceView;
        }

        v10 = keyboardLayoutAlignmentAvailableSpaceView;
        _visualStyle = [_presentedAlertController _visualStyle];
        [objc_opt_class() positionContentsOfAlertController:_presentedAlertController alertContentView:view availableSpaceView:v10 visualStyle:_visualStyle updatableConstraints:self->_visualStyleUpdatableConstraints];
        containerView2 = [(UIPresentationController *)self containerView];
        [_visualStyle contentInsetsForContainerView:containerView2];
        v14 = v13;
        v16 = v15;

        [(NSLayoutConstraint *)self->_topAvailableSpaceConstraint setConstant:v14];
        [(NSLayoutConstraint *)self->_bottomAvailableSpaceConstraint setConstant:-v16];
      }

      containerView = v17;
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

- (id)_createVisualStyleForProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy styleForAlertPresentationController:self];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = _UIAlertControllerPresentationController;
    v5 = [(UIPresentationController *)&v7 _createVisualStyleForProvider:providerCopy];
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAlertControllerPresentationController.m" lineNumber:346 description:@"The presentation controller of an alert controller presenting as an alert must not have its delegate modified"];
  }

  v7.receiver = self;
  v7.super_class = _UIAlertControllerPresentationController;
  [(UIPresentationController *)&v7 setDelegate:delegateCopy];
}

- (id)_presentedAlertController
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  if (([presentedViewController conformsToProtocol:&unk_1EFEC3198] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAlertControllerPresentationController.m" lineNumber:369 description:@"presentedViewController of _UIAlertControllerPresentationController does not contain an alert controller"];
  }

  _containedAlertController = [presentedViewController _containedAlertController];

  return _containedAlertController;
}

- (void)setPanningGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _presentedAlertController = [(_UIAlertControllerPresentationController *)self _presentedAlertController];
  [_presentedAlertController _setSystemProvidedGestureRecognizer:recognizerCopy];
}

- (void)_setChromeHidden:(BOOL)hidden
{
  if (self->_chromeHidden != hidden)
  {
    self->_chromeHidden = hidden;
    [(UIView *)self->_dimmingView setHidden:?];
  }
}

- (_UIForcePresentationControllerDelegate)forcePresentationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forcePresentationControllerDelegate);

  return WeakRetained;
}

@end