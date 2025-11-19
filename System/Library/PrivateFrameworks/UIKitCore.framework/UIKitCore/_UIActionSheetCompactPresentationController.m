@interface _UIActionSheetCompactPresentationController
- ($12108E44556860A125E570C4E6FEF4BB)_currentLayoutGeometry;
- (BOOL)_shouldDisableAvoidsKeyboard;
- (BOOL)dismissActionUsesShorterHeightWhenCompactVertically;
- (BOOL)shouldPresentInFullscreen;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)_minimumSizeForDismissButton;
- (CGSize)preferredContentSize;
- (NSString)dismissActionTitle;
- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)a3 rightMargin:(double *)a4;
- (_UIActionSheetCompactPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 visualStyle:(id)a5;
- (_UIActionSheetCompactPresentationControllerDelegate)actionSheetDelegate;
- (void)_applyVisualAffordancesToViews;
- (void)_dismiss;
- (void)_handleDismiss:(id)a3;
- (void)_keyboardChanged:(id)a3;
- (void)_layoutViews;
- (void)_subscribeToKeyboardNotifications;
- (void)_transitionToPresentationController:(id)a3 withTransitionCoordinator:(id)a4;
- (void)_unsubscribeFromKeyboardNotifications;
- (void)_updateForKeyboardStartFrame:(CGRect)a3 endFrame:(CGRect)a4 duration:(double)a5 curve:(int64_t)a6;
- (void)_willRunTransitionForCurrentStateDeferred:(BOOL)a3;
- (void)beginPseudoAlertPresentationMode;
- (void)dealloc;
- (void)dismissalTransitionWillBegin;
- (void)endPseudoAlertPresentationMode;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionWillBegin;
- (void)setDismissActionTitle:(id)a3;
- (void)setDismissActionUsesShorterHeightWhenCompactVertically:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UIActionSheetCompactPresentationController

- (_UIActionSheetCompactPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 visualStyle:(id)a5
{
  v8 = a5;
  v20.receiver = self;
  v20.super_class = _UIActionSheetCompactPresentationController;
  v9 = [(UIPresentationController *)&v20 initWithPresentedViewController:a3 presentingViewController:a4];
  v10 = v9;
  if (v9)
  {
    v9->_pseudoAlertPreferredTop = -1.0;
    v11 = [v8 dismissActionView];
    [(_UIActionSheetCompactPresentationController *)v10 setDismissActionView:v11];
    v12 = [[UILongPressGestureRecognizer alloc] initWithTarget:v10 action:sel__handleDismiss_];
    [(UILongPressGestureRecognizer *)v12 setMinimumPressDuration:0.0];
    [(UIGestureRecognizer *)v12 setCancelsTouchesInView:1];
    [(UIGestureRecognizer *)v12 setDelaysTouchesBegan:1];
    [v11 addGestureRecognizer:v12];
    [(_UIActionSheetCompactPresentationController *)v10 setDismissActionViewGestureRecognizer:v12];
    v13 = objc_alloc_init(UIView);
    v14 = [v8 dimmingViewColor];
    [(UIView *)v13 setBackgroundColor:v14];

    [(_UIActionSheetCompactPresentationController *)v10 setDimmingView:v13];
    v15 = [[UITapGestureRecognizer alloc] initWithTarget:v10 action:sel__dismiss];
    dimmingViewDismissTapGestureRecognizer = v10->_dimmingViewDismissTapGestureRecognizer;
    v10->_dimmingViewDismissTapGestureRecognizer = v15;

    [(UIView *)v13 addGestureRecognizer:v10->_dimmingViewDismissTapGestureRecognizer];
    v17 = [[_UIDimmingKnockoutBackdropView alloc] initWithStyle:0];
    [v8 cornerRadius];
    [(_UIDimmingKnockoutBackdropView *)v17 setCornerRadius:?];
    [(_UIActionSheetCompactPresentationController *)v10 setBackdropView:v17];
    v18 = [(UIPresentationController *)v10 presentedView];
    [v18 setAutoresizingMask:0];

    [(_UIActionSheetCompactPresentationController *)v10 setVisualStyle:v8];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v4 dealloc];
}

- (BOOL)shouldPresentInFullscreen
{
  v2 = self;
  v3 = [(_UIActionSheetCompactPresentationController *)self actionSheetDelegate];
  LOBYTE(v2) = [v3 actionSheetCompactPresentationControllerShouldPresentInCurrentContext:v2];

  return v2 ^ 1;
}

- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)a3 rightMargin:(double *)a4
{
  v34.receiver = self;
  v34.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v34 _baseContentInsetsWithLeftMargin:a3 rightMargin:a4];
  if (self->_hasPendingAnimatedLayout)
  {
    v8 = [(UIPresentationController *)self presentedViewController];
    [v8 _contentOverlayInsets];
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
    v26 = [(UIPresentationController *)self containerView];
    v27 = [v26 window];
    [v27 bounds];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  self->_hasPendingAnimatedLayout = 1;
  v9.receiver = self;
  v9.super_class = _UIActionSheetCompactPresentationController;
  v7 = a4;
  [(UIPresentationController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98___UIActionSheetCompactPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E70F3B98;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)_transitionToPresentationController:(id)a3 withTransitionCoordinator:(id)a4
{
  self->_pseudoAlertPreferredTop = -1.0;
  v4.receiver = self;
  v4.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v4 _transitionToPresentationController:a3 withTransitionCoordinator:a4];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(UIPresentationController *)self containerView];
  v4 = [v3 window];
  v5 = [v4 screen];

  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  v6 = [(UIPresentationController *)self containerView];
  v7 = [v5 coordinateSpace];
  v8 = UIActionSheetPresentationControllerCurrentKeyboardFrame(v5);
  v12 = UIActionSheetPresentationControllerFrameForPresentedView(&v23, v6, v7, v8, v9, v10, v11);
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
  v3 = [(UIPresentationController *)self containerView];
  v4 = [v3 window];
  v5 = [v4 screen];

  v6 = [(UIPresentationController *)self presentedView];
  v7 = [(_UIActionSheetCompactPresentationController *)self backdropView];
  v8 = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  v9 = [(_UIActionSheetCompactPresentationController *)self dimmingView];
  v10 = [(UIPresentationController *)self containerView];
  v11 = [v5 coordinateSpace];
  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  v12 = UIActionSheetPresentationControllerCurrentKeyboardFrame(v5);
  UIActionSheetPresentationControllerLayoutViews(v6, v7, v8, v9, v10, v11, v16, v12, v13, v14, v15);
}

- (void)_applyVisualAffordancesToViews
{
  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  v3 = [(_UIActionSheetCompactPresentationController *)self dimmingView];
  v4 = v3;
  v5 = 0.0;
  if (v6)
  {
    v5 = 1.0;
  }

  [v3 setAlpha:v5];
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
  v3 = [(UIPresentationController *)self containerView];
  v4 = [(_UIActionSheetCompactPresentationController *)self dimmingView];
  v5 = [(UIPresentationController *)self presentedView];
  v6 = [(_UIActionSheetCompactPresentationController *)self backdropView];
  v7 = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  UIActionSheetPresentationControllerAddViewsToContainerView(v3, v4, v5, v6, v7);

  v8 = [(UIPresentationController *)self presentedView];
  [v8 setClipsToBounds:1];

  v9 = [(UIPresentationController *)self presentedView];
  v10 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  [v10 cornerRadius];
  [v9 _setContinuousCornerRadius:?];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78___UIActionSheetCompactPresentationController_presentationTransitionWillBegin__block_invoke;
  aBlock[3] = &unk_1E70F5AC0;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  v12 = [(UIPresentationController *)self presentedViewController];
  LODWORD(v5) = [v12 isBeingPresented];

  v13 = v11[2];
  if (v5)
  {
    v13(v11, 0);
    v14 = [(UIPresentationController *)self presentedViewController];
    v15 = [v14 transitionCoordinator];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78___UIActionSheetCompactPresentationController_presentationTransitionWillBegin__block_invoke_2;
    v16[3] = &unk_1E70F3770;
    v17 = v11;
    [v15 animateAlongsideTransition:v16 completion:0];
  }

  else
  {
    v13(v11, 1);
  }
}

- (void)_willRunTransitionForCurrentStateDeferred:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v4 _willRunTransitionForCurrentStateDeferred:a3];
  if (![(UIPresentationController *)self presenting])
  {
    [(_UIActionSheetCompactPresentationController *)self _unsubscribeFromKeyboardNotifications];
  }
}

- (void)dismissalTransitionWillBegin
{
  [(_UIActionSheetCompactPresentationController *)self _unsubscribeFromKeyboardNotifications];
  [(_UIActionSheetCompactPresentationController *)self setShouldAdoptPresentedAppearance:0];
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = [v3 transitionCoordinator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75___UIActionSheetCompactPresentationController_dismissalTransitionWillBegin__block_invoke;
  v5[3] = &unk_1E70F3B98;
  v5[4] = self;
  [v4 animateAlongsideTransition:v5 completion:0];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = _UIActionSheetCompactPresentationController;
  [(UIPresentationController *)&v33 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(UIPresentationController *)self containerView];

  if (v5)
  {
    objc_initWeak(&location, self);
    [v4 preferredContentSize];
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
    v21 = [(UIPresentationController *)self presentedView];
    v22 = [(UIPresentationController *)self containerView];
    v23 = [(UIPresentationController *)self presentedViewController];
    [(_UIActionSheetCompactPresentationController *)self _resizeAnimationDuration];
    v25 = UIActionSheetPresentationControllerAnimationCoordinatorForFrameChangeOfView(v21, v22, v23, v10, v11, v12, v14, v16, v18, v20, v24);

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
  v3 = [(UIPresentationController *)self containerView];
  v4 = [v3 window];
  v6 = [v4 screen];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__keyboardChanged_ name:@"UIKeyboardPrivateWillChangeFrameNotification" object:v6];
}

- (void)_unsubscribeFromKeyboardNotifications
{
  v3 = [(UIPresentationController *)self containerView];
  v4 = [v3 window];
  v6 = [v4 screen];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:v6];
}

- (void)_keyboardChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 valueForKey:@"UIKeyboardFrameBeginUserInfoKey"];
  [v6 CGRectValue];
  v31 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 userInfo];
  v15 = [v14 valueForKey:@"UIKeyboardFrameEndUserInfoKey"];
  [v15 CGRectValue];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [v4 userInfo];
  v25 = [v24 valueForKey:@"UIKeyboardAnimationDurationUserInfoKey"];
  [v25 doubleValue];
  v27 = v26;

  v28 = [v4 userInfo];

  v29 = [v28 valueForKey:@"UIKeyboardAnimationCurveUserInfoKey"];
  v30 = [v29 integerValue];

  [(_UIActionSheetCompactPresentationController *)self _updateForKeyboardStartFrame:v30 endFrame:v31 duration:v9 curve:v11, v13, v17, v19, v21, v23, v27];
}

- (void)_updateForKeyboardStartFrame:(CGRect)a3 endFrame:(CGRect)a4 duration:(double)a5 curve:(int64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v14 = [(UIPresentationController *)self presentedView];
  v15 = [(_UIActionSheetCompactPresentationController *)self backdropView];
  v16 = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  v17 = [(_UIActionSheetCompactPresentationController *)self dimmingView];
  v18 = [(UIPresentationController *)self containerView];
  v19 = [(UIPresentationController *)self containerView];
  v20 = [v19 window];
  v21 = [v20 screen];
  v22 = [v21 coordinateSpace];
  [(_UIActionSheetCompactPresentationController *)self _currentLayoutGeometry];
  UIActionSheetPresentationControllerAdjustForKeyboardNotification(v14, v15, v16, v17, v18, v22, v25, a6, v12, v11, v10, v9, x, y, width, height, a5);
}

- (void)setDismissActionTitle:(id)a3
{
  v4 = &stru_1EFB14550;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v7 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  v6 = [v7 dismissActionView];
  [v6 setTitle:v5];
}

- (NSString)dismissActionTitle
{
  v2 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  v3 = [v2 dismissActionView];
  v4 = [v3 title];

  return v4;
}

- (void)beginPseudoAlertPresentationMode
{
  v6 = [(UIPresentationController *)self presentedView];
  if (![(UIPresentationController *)self _isAdapted])
  {
    [v6 frame];
    self->_pseudoAlertPreferredTop = CGRectGetMinY(v8);
  }

  v3 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  v4 = [v3 dismissActionView];
  [v4 setHidden:1];

  v5 = [(_UIActionSheetCompactPresentationController *)self dimmingViewDismissTapGestureRecognizer];
  [v5 setEnabled:0];
}

- (void)endPseudoAlertPresentationMode
{
  self->_pseudoAlertPreferredTop = -1.0;
  v3 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  v4 = [v3 dismissActionView];
  [v4 setHidden:0];

  v5 = [(_UIActionSheetCompactPresentationController *)self dimmingViewDismissTapGestureRecognizer];
  [v5 setEnabled:1];
}

- (void)setDismissActionUsesShorterHeightWhenCompactVertically:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  v4 = [v5 dismissActionView];
  [v4 setUsesShortCompactVerticalLayout:v3];
}

- (BOOL)dismissActionUsesShorterHeightWhenCompactVertically
{
  v2 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  v3 = [v2 dismissActionView];
  v4 = [v3 usesShortCompactVerticalLayout];

  return v4;
}

- (void)_dismiss
{
  v3 = [(_UIActionSheetCompactPresentationController *)self actionSheetDelegate];
  v4 = [(UIPresentationController *)self presentedViewController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55___UIActionSheetCompactPresentationController__dismiss__block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v3;
  v8 = self;
  v5 = v3;
  [v4 dismissViewControllerAnimated:1 completion:v6];
}

- (void)_handleDismiss:(id)a3
{
  v4 = a3;
  v10 = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  [v4 locationInView:v10];
  v5 = [v10 pointInside:0 withEvent:?];
  v6 = [v4 state];

  if (v6 > 3)
  {
    v7 = v10;
    if ((v6 - 4) >= 2)
    {
      goto LABEL_13;
    }

    v8 = v10;
    v9 = 0;
    goto LABEL_11;
  }

  if (v6 == 1)
  {
    v8 = v10;
    v9 = 1;
LABEL_11:
    [v8 setHighlighted:v9];
    goto LABEL_12;
  }

  v7 = v10;
  if (v6 == 2)
  {
    v8 = v10;
    v9 = v5;
    goto LABEL_11;
  }

  if (v6 == 3)
  {
    [v10 setHighlighted:0];
    v7 = v10;
    if (v5)
    {
      [(_UIActionSheetCompactPresentationController *)self _dismiss];
LABEL_12:
      v7 = v10;
    }
  }

LABEL_13:
}

- ($12108E44556860A125E570C4E6FEF4BB)_currentLayoutGeometry
{
  v24 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  *&retstr->var0 = 0u;
  retstr->var2.origin = 0u;
  retstr->var2.size = 0u;
  retstr->var3 = 0u;
  *&retstr->var4.top = 0u;
  *&retstr->var4.bottom = 0u;
  *&retstr->var5 = 0u;
  retstr->var0 = [(_UIActionSheetCompactPresentationController *)self shouldAdoptPresentedAppearance];
  v5 = [(UIPresentationController *)self containerView];
  [v5 bounds];
  retstr->var2.origin.x = v6;
  retstr->var2.origin.y = v7;
  retstr->var2.size.width = v8;
  retstr->var2.size.height = v9;

  v10 = [(UIPresentationController *)self presentedViewController];
  [v10 preferredContentSize];
  retstr->var3.width = v11;
  retstr->var3.height = v12;

  [(_UIActionSheetCompactPresentationController *)self pseudoAlertPreferredTop];
  retstr->var1 = v13;
  v14 = [(UIPresentationController *)self containerView];
  [v24 contentInsetsForContainerView:v14];
  retstr->var4.top = v15;
  retstr->var4.left = v16;
  retstr->var4.bottom = v17;
  retstr->var4.right = v18;

  [v24 dismissToContentSpacing];
  retstr->var5 = v19;
  [(_UIActionSheetCompactPresentationController *)self _minimumSizeForDismissButton];
  retstr->var8.width = v20;
  retstr->var8.height = v21;
  v22 = [(_UIActionSheetCompactPresentationController *)self dismissActionView];
  retstr->var7 = [v22 isHidden];

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
    v4 = [(UIPresentationController *)self containerView];
    v5 = [v4 window];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = [v5 _isSceneSized];
    if (UIKeyboardAutomaticIsOnScreen())
    {
      v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v9 = [v8 keyboardActive] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    v3 = isKindOfClass & v7 & v9;
  }

  return v3 & 1;
}

- (CGSize)_minimumSizeForDismissButton
{
  v2 = [(_UIActionSheetCompactPresentationController *)self visualStyle];
  v3 = [v2 dismissActionView];
  [v3 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
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