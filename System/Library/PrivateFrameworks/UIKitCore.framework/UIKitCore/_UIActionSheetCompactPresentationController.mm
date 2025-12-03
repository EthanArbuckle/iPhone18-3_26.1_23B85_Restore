@interface _UIActionSheetCompactPresentationController
- ($12108E44556860A125E570C4E6FEF4BB)_currentLayoutGeometry;
- (BOOL)_shouldDisableAvoidsKeyboard;
- (BOOL)dismissActionUsesShorterHeightWhenCompactVertically;
- (BOOL)shouldPresentInFullscreen;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)_minimumSizeForDismissButton;
- (CGSize)preferredContentSize;
- (NSString)dismissActionTitle;
- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (_UIActionSheetCompactPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController visualStyle:(id)style;
- (_UIActionSheetCompactPresentationControllerDelegate)actionSheetDelegate;
- (void)_applyVisualAffordancesToViews;
- (void)_dismiss;
- (void)_handleDismiss:(id)dismiss;
- (void)_keyboardChanged:(id)changed;
- (void)_layoutViews;
- (void)_subscribeToKeyboardNotifications;
- (void)_transitionToPresentationController:(id)controller withTransitionCoordinator:(id)coordinator;
- (void)_unsubscribeFromKeyboardNotifications;
- (void)_updateForKeyboardStartFrame:(CGRect)frame endFrame:(CGRect)endFrame duration:(double)duration curve:(int64_t)curve;
- (void)_willRunTransitionForCurrentStateDeferred:(BOOL)deferred;
- (void)beginPseudoAlertPresentationMode;
- (void)dealloc;
- (void)dismissalTransitionWillBegin;
- (void)endPseudoAlertPresentationMode;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionWillBegin;
- (void)setDismissActionTitle:(id)title;
- (void)setDismissActionUsesShorterHeightWhenCompactVertically:(BOOL)vertically;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _UIActionSheetCompactPresentationController

- (_UIActionSheetCompactPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController visualStyle:(id)style
{
  styleCopy = style;
  v20.receiver = self;
  v20.super_class = _UIActionSheetCompactPresentationController;
  v9 = [(UIPresentationController *)&v20 initWithPresentedViewController:controller presentingViewController:viewController];
  v10 = v9;
  if (v9)
  {
    v9->_pseudoAlertPreferredTop = -1.0;
    dismissActionView = [styleCopy dismissActionView];
    [(_UIActionSheetCompactPresentationController *)v10 setDismissActionView:dismissActionView];
    v12 = [[UILongPressGestureRecognizer alloc] initWithTarget:v10 action:sel__handleDismiss_];
    [(UILongPressGestureRecognizer *)v12 setMinimumPressDuration:0.0];
    [(UIGestureRecognizer *)v12 setCancelsTouchesInView:1];
    [(UIGestureRecognizer *)v12 setDelaysTouchesBegan:1];
    [dismissActionView addGestureRecognizer:v12];
    [(_UIActionSheetCompactPresentationController *)v10 setDismissActionViewGestureRecognizer:v12];
    v13 = objc_alloc_init(UIView);
    dimmingViewColor = [styleCopy dimmingViewColor];
    [(UIView *)v13 setBackgroundColor:dimmingViewColor];

    [(_UIActionSheetCompactPresentationController *)v10 setDimmingView:v13];
    v15 = [[UITapGestureRecognizer alloc] initWithTarget:v10 action:sel__dismiss];
    dimmingViewDismissTapGestureRecognizer = v10->_dimmingViewDismissTapGestureRecognizer;
    v10->_dimmingViewDismissTapGestureRecognizer = v15;

    [(UIView *)v13 addGestureRecognizer:v10->_dimmingViewDismissTapGestureRecognizer];
    v17 = [[_UIDimmingKnockoutBackdropView alloc] initWithStyle:0];
    [styleCopy cornerRadius];
    [(_UIDimmingKnockoutBackdropView *)v17 setCornerRadius:?];
    [(_UIActionSheetCompactPresentationController *)v10 setBackdropView:v17];
    presentedView = [(UIPresentationController *)v10 presentedView];
    [presentedView setAutoresizingMask:0];

    [(_UIActionSheetCompactPresentationController *)v10 setVisualStyle:styleCopy];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v4 dealloc];
}

- (BOOL)shouldPresentInFullscreen
{
  selfCopy = self;
  actionSheetDelegate = [(_UIActionSheetCompactPresentationController *)self actionSheetDelegate];
  LOBYTE(selfCopy) = [actionSheetDelegate actionSheetCompactPresentationControllerShouldPresentInCurrentContext:selfCopy];

  return selfCopy ^ 1;
}

- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  v34.receiver = self;
  v34.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v34 _baseContentInsetsWithLeftMargin:margin rightMargin:rightMargin];
  if (self->_hasPendingAnimatedLayout)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    [presentedViewController _contentOverlayInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v17 = v5;
    v12 = v6;
    v16 = v7;
    [(_UIActionSheetCompactPresentationController *)self frameOfPresentedViewInContainerView];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    containerView = [(UIPresentationController *)self containerView];
    window = [containerView window];
    [window bounds];
    v33 = v28;

    v35.origin.x = v19;
    v35.origin.y = v21;
    v35.size.width = v23;
    v35.size.height = v25;
    v10 = fmax(v17 - CGRectGetMinY(v35), 0.0);
    v36.origin.x = v19;
    v36.origin.y = v21;
    v36.size.width = v23;
    v36.size.height = v25;
    v14 = fmax(CGRectGetMaxY(v36) - (v33 - v10), 0.0);
  }

  v29 = v10;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  result.right = v32;
  result.bottom = v31;
  result.left = v30;
  result.top = v29;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  self->_hasPendingAnimatedLayout = 1;
  v9.receiver = self;
  v9.super_class = _UIActionSheetCompactPresentationController;
  coordinatorCopy = coordinator;
  [(UIPresentationController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98___UIActionSheetCompactPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E70F3B98;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)_transitionToPresentationController:(id)controller withTransitionCoordinator:(id)coordinator
{
  self->_pseudoAlertPreferredTop = -1.0;
  v4.receiver = self;
  v4.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v4 _transitionToPresentationController:controller withTransitionCoordinator:coordinator];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  screen = [window screen];

  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  containerView2 = [(UIPresentationController *)self containerView];
  coordinateSpace = [screen coordinateSpace];
  v8 = UIActionSheetPresentationControllerCurrentKeyboardFrame(screen);
  v12 = UIActionSheetPresentationControllerFrameForPresentedView(&v23, containerView2, coordinateSpace, v8, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_layoutViews
{
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  screen = [window screen];

  presentedView = [(UIPresentationController *)self presentedView];
  backdropView = [(_UIActionSheetCompactPresentationController *)self backdropView];
  dismissActionView = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  dimmingView = [(_UIActionSheetCompactPresentationController *)self dimmingView];
  containerView2 = [(UIPresentationController *)self containerView];
  coordinateSpace = [screen coordinateSpace];
  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  v12 = UIActionSheetPresentationControllerCurrentKeyboardFrame(screen);
  UIActionSheetPresentationControllerLayoutViews(presentedView, backdropView, dismissActionView, dimmingView, containerView2, coordinateSpace, v16, v12, v13, v14, v15);
}

- (void)_applyVisualAffordancesToViews
{
  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  dimmingView = [(_UIActionSheetCompactPresentationController *)self dimmingView];
  v4 = dimmingView;
  v5 = 0.0;
  if (v6)
  {
    v5 = 1.0;
  }

  [dimmingView setAlpha:v5];
}

- (CGSize)preferredContentSize
{
  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  v2 = v4;
  v3 = v5;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)presentationTransitionWillBegin
{
  [(_UIActionSheetCompactPresentationController *)self _subscribeToKeyboardNotifications];
  containerView = [(UIPresentationController *)self containerView];
  dimmingView = [(_UIActionSheetCompactPresentationController *)self dimmingView];
  presentedView = [(UIPresentationController *)self presentedView];
  backdropView = [(_UIActionSheetCompactPresentationController *)self backdropView];
  dismissActionView = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  UIActionSheetPresentationControllerAddViewsToContainerView(containerView, dimmingView, presentedView, backdropView, dismissActionView);

  presentedView2 = [(UIPresentationController *)self presentedView];
  [presentedView2 setClipsToBounds:1];

  presentedView3 = [(UIPresentationController *)self presentedView];
  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  [visualStyle cornerRadius];
  [presentedView3 _setContinuousCornerRadius:?];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78___UIActionSheetCompactPresentationController_presentationTransitionWillBegin__block_invoke;
  aBlock[3] = &unk_1E70F5AC0;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  LODWORD(presentedView) = [presentedViewController isBeingPresented];

  v13 = v11[2];
  if (presentedView)
  {
    v13(v11, 0);
    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    transitionCoordinator = [presentedViewController2 transitionCoordinator];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78___UIActionSheetCompactPresentationController_presentationTransitionWillBegin__block_invoke_2;
    v16[3] = &unk_1E70F3770;
    v17 = v11;
    [transitionCoordinator animateAlongsideTransition:v16 completion:0];
  }

  else
  {
    v13(v11, 1);
  }
}

- (void)_willRunTransitionForCurrentStateDeferred:(BOOL)deferred
{
  v4.receiver = self;
  v4.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v4 _willRunTransitionForCurrentStateDeferred:deferred];
  if (![(UIPresentationController *)self presenting])
  {
    [(_UIActionSheetCompactPresentationController *)self _unsubscribeFromKeyboardNotifications];
  }
}

- (void)dismissalTransitionWillBegin
{
  [(_UIActionSheetCompactPresentationController *)self _unsubscribeFromKeyboardNotifications];
  [(_UIActionSheetCompactPresentationController *)self setShouldAdoptPresentedAppearance:0];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75___UIActionSheetCompactPresentationController_dismissalTransitionWillBegin__block_invoke;
  v5[3] = &unk_1E70F3B98;
  v5[4] = self;
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v33.receiver = self;
  v33.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v33 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  containerView = [(UIPresentationController *)self containerView];

  if (containerView)
  {
    objc_initWeak(&location, self);
    [containerCopy preferredContentSize];
    v7 = v6;
    v9 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __101___UIActionSheetCompactPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
    aBlock[3] = &unk_1E71007B0;
    objc_copyWeak(v31, &location);
    v31[1] = v7;
    v31[2] = v9;
    v10 = _Block_copy(aBlock);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __101___UIActionSheetCompactPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_2;
    v28[3] = &unk_1E70F5A28;
    objc_copyWeak(&v29, &location);
    v11 = _Block_copy(v28);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __101___UIActionSheetCompactPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_3;
    v26[3] = &unk_1E70F5A28;
    objc_copyWeak(&v27, &location);
    v12 = _Block_copy(v26);
    [(_UIActionSheetCompactPresentationController *)self frameOfPresentedViewInContainerView];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    presentedView = [(UIPresentationController *)self presentedView];
    containerView2 = [(UIPresentationController *)self containerView];
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    [(_UIActionSheetCompactPresentationController *)self _resizeAnimationDuration];
    v25 = UIActionSheetPresentationControllerAnimationCoordinatorForFrameChangeOfView(presentedView, containerView2, presentedViewController, v10, v11, v12, v14, v16, v18, v20, v24);

    [(_UIActionSheetCompactPresentationController *)self setAnimationCoordinator:v25];
    [v25 animate];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);

    objc_destroyWeak(v31);
    objc_destroyWeak(&location);
  }
}

- (void)_subscribeToKeyboardNotifications
{
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  screen = [window screen];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardChanged_ name:@"UIKeyboardPrivateWillChangeFrameNotification" object:screen];
}

- (void)_unsubscribeFromKeyboardNotifications
{
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  screen = [window screen];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:screen];
}

- (void)_keyboardChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo valueForKey:@"UIKeyboardFrameBeginUserInfoKey"];
  [v6 CGRectValue];
  v31 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  userInfo2 = [changedCopy userInfo];
  v15 = [userInfo2 valueForKey:@"UIKeyboardFrameEndUserInfoKey"];
  [v15 CGRectValue];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  userInfo3 = [changedCopy userInfo];
  v25 = [userInfo3 valueForKey:@"UIKeyboardAnimationDurationUserInfoKey"];
  [v25 doubleValue];
  v27 = v26;

  userInfo4 = [changedCopy userInfo];

  v29 = [userInfo4 valueForKey:@"UIKeyboardAnimationCurveUserInfoKey"];
  integerValue = [v29 integerValue];

  [(_UIActionSheetCompactPresentationController *)self _updateForKeyboardStartFrame:integerValue endFrame:v31 duration:v9 curve:v11, v13, v17, v19, v21, v23, v27];
}

- (void)_updateForKeyboardStartFrame:(CGRect)frame endFrame:(CGRect)endFrame duration:(double)duration curve:(int64_t)curve
{
  height = endFrame.size.height;
  width = endFrame.size.width;
  y = endFrame.origin.y;
  x = endFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  presentedView = [(UIPresentationController *)self presentedView];
  backdropView = [(_UIActionSheetCompactPresentationController *)self backdropView];
  dismissActionView = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  dimmingView = [(_UIActionSheetCompactPresentationController *)self dimmingView];
  containerView = [(UIPresentationController *)self containerView];
  containerView2 = [(UIPresentationController *)self containerView];
  window = [containerView2 window];
  screen = [window screen];
  coordinateSpace = [screen coordinateSpace];
  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  UIActionSheetPresentationControllerAdjustForKeyboardNotification(presentedView, backdropView, dismissActionView, dimmingView, containerView, coordinateSpace, v25, curve, v12, v11, v10, v9, x, y, width, height, duration);
}

- (void)setDismissActionTitle:(id)title
{
  titleCopy = &stru_1EFB14550;
  if (title)
  {
    titleCopy = title;
  }

  v5 = titleCopy;
  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  dismissActionView = [visualStyle dismissActionView];
  [dismissActionView setTitle:v5];
}

- (NSString)dismissActionTitle
{
  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  dismissActionView = [visualStyle dismissActionView];
  title = [dismissActionView title];

  return title;
}

- (void)beginPseudoAlertPresentationMode
{
  presentedView = [(UIPresentationController *)self presentedView];
  if (![(UIPresentationController *)self _isAdapted])
  {
    [presentedView frame];
    self->_pseudoAlertPreferredTop = CGRectGetMinY(v8);
  }

  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  dismissActionView = [visualStyle dismissActionView];
  [dismissActionView setHidden:1];

  dimmingViewDismissTapGestureRecognizer = [(_UIActionSheetCompactPresentationController *)self dimmingViewDismissTapGestureRecognizer];
  [dimmingViewDismissTapGestureRecognizer setEnabled:0];
}

- (void)endPseudoAlertPresentationMode
{
  self->_pseudoAlertPreferredTop = -1.0;
  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  dismissActionView = [visualStyle dismissActionView];
  [dismissActionView setHidden:0];

  dimmingViewDismissTapGestureRecognizer = [(_UIActionSheetCompactPresentationController *)self dimmingViewDismissTapGestureRecognizer];
  [dimmingViewDismissTapGestureRecognizer setEnabled:1];
}

- (void)setDismissActionUsesShorterHeightWhenCompactVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  dismissActionView = [visualStyle dismissActionView];
  [dismissActionView setUsesShortCompactVerticalLayout:verticallyCopy];
}

- (BOOL)dismissActionUsesShorterHeightWhenCompactVertically
{
  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  dismissActionView = [visualStyle dismissActionView];
  usesShortCompactVerticalLayout = [dismissActionView usesShortCompactVerticalLayout];

  return usesShortCompactVerticalLayout;
}

- (void)_dismiss
{
  actionSheetDelegate = [(_UIActionSheetCompactPresentationController *)self actionSheetDelegate];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55___UIActionSheetCompactPresentationController__dismiss__block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = actionSheetDelegate;
  selfCopy = self;
  v5 = actionSheetDelegate;
  [presentedViewController dismissViewControllerAnimated:1 completion:v6];
}

- (void)_handleDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  dismissActionView = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  [dismissCopy locationInView:dismissActionView];
  v5 = [dismissActionView pointInside:0 withEvent:?];
  state = [dismissCopy state];

  if (state > 3)
  {
    v7 = dismissActionView;
    if ((state - 4) >= 2)
    {
      goto LABEL_13;
    }

    v8 = dismissActionView;
    v9 = 0;
    goto LABEL_11;
  }

  if (state == 1)
  {
    v8 = dismissActionView;
    v9 = 1;
LABEL_11:
    [v8 setHighlighted:v9];
    goto LABEL_12;
  }

  v7 = dismissActionView;
  if (state == 2)
  {
    v8 = dismissActionView;
    v9 = v5;
    goto LABEL_11;
  }

  if (state == 3)
  {
    [dismissActionView setHighlighted:0];
    v7 = dismissActionView;
    if (v5)
    {
      [(_UIActionSheetCompactPresentationController *)self _dismiss];
LABEL_12:
      v7 = dismissActionView;
    }
  }

LABEL_13:
}

- ($12108E44556860A125E570C4E6FEF4BB)_currentLayoutGeometry
{
  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  *&retstr->var0 = 0u;
  retstr->var2.origin = 0u;
  retstr->var2.size = 0u;
  retstr->var3 = 0u;
  *&retstr->var4.top = 0u;
  *&retstr->var4.bottom = 0u;
  *&retstr->var5 = 0u;
  retstr->var0 = [(_UIActionSheetCompactPresentationController *)self shouldAdoptPresentedAppearance];
  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
  retstr->var2.origin.x = v6;
  retstr->var2.origin.y = v7;
  retstr->var2.size.width = v8;
  retstr->var2.size.height = v9;

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  retstr->var3.width = v11;
  retstr->var3.height = v12;

  [(_UIActionSheetCompactPresentationController *)self pseudoAlertPreferredTop];
  retstr->var1 = v13;
  containerView2 = [(UIPresentationController *)self containerView];
  [visualStyle contentInsetsForContainerView:containerView2];
  retstr->var4.top = v15;
  retstr->var4.left = v16;
  retstr->var4.bottom = v17;
  retstr->var4.right = v18;

  [visualStyle dismissToContentSpacing];
  retstr->var5 = v19;
  [(_UIActionSheetCompactPresentationController *)self _minimumSizeForDismissButton];
  retstr->var8.width = v20;
  retstr->var8.height = v21;
  dismissActionView = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  retstr->var7 = [dismissActionView isHidden];

  retstr->var6 = [(_UIActionSheetCompactPresentationController *)self _shouldDisableAvoidsKeyboard];

  return result;
}

- (BOOL)_shouldDisableAvoidsKeyboard
{
  if ([(_UIActionSheetCompactPresentationController *)self avoidsKeyboardDisabled])
  {
    v3 = 1;
  }

  else
  {
    containerView = [(UIPresentationController *)self containerView];
    window = [containerView window];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    _isSceneSized = [window _isSceneSized];
    if (UIKeyboardAutomaticIsOnScreen())
    {
      v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v9 = [v8 keyboardActive] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    v3 = isKindOfClass & _isSceneSized & v9;
  }

  return v3 & 1;
}

- (CGSize)_minimumSizeForDismissButton
{
  visualStyle = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  dismissActionView = [visualStyle dismissActionView];
  [dismissActionView sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_UIActionSheetCompactPresentationControllerDelegate)actionSheetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionSheetDelegate);

  return WeakRetained;
}

@end