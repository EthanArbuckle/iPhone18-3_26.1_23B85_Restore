@interface _UIFormSheetPresentationController
- (BOOL)_presentationPotentiallyUnderlapsStatusBar;
- (BOOL)_shouldHideBottomCorner;
- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance;
- (BOOL)shouldSubscribeToKeyboardNotifications;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (int64_t)_defaultPresentationStyleForTraitCollection:(id)collection;
- (void)_changeLayoutModeToAvoidKeyboard:(BOOL)keyboard withOrigin:(double)origin;
- (void)_keyboardWillShow:(id)show;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation _UIFormSheetPresentationController

- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  if (v4)
  {
    v6.receiver = self;
    v6.super_class = _UIFormSheetPresentationController;
    return [(UISheetPresentationController *)&v6 _shouldPresentedViewControllerControlStatusBarAppearance];
  }

  else
  {

    return [(UIPresentationController *)self _isAdapted];
  }
}

- (void)presentationTransitionWillBegin
{
  v10.receiver = self;
  v10.super_class = _UIFormSheetPresentationController;
  [(UISheetPresentationController *)&v10 presentationTransitionWillBegin];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  if ((v4 & 1) == 0)
  {
    dropShadowView = [(UISheetPresentationController *)self dropShadowView];
    [dropShadowView setAutoresizingMask:45];
  }

  presentedViewController2 = [(UIPresentationController *)self presentedViewController];
  disablesAutomaticKeyboardDismissal = [presentedViewController2 disablesAutomaticKeyboardDismissal];

  if (disablesAutomaticKeyboardDismissal)
  {
    presentedViewController3 = [(UIPresentationController *)self presentedViewController];
    [presentedViewController3 _beginPinningInputViews];
  }

  if ([(_UIFormSheetPresentationController *)self shouldSubscribeToKeyboardNotifications])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:0];
    [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:0];
  }
}

- (BOOL)shouldSubscribeToKeyboardNotifications
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v3 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  return v3 ^ 1;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  if (v4)
  {
    v43.receiver = self;
    v43.super_class = _UIFormSheetPresentationController;
    [(UISheetPresentationController *)&v43 frameOfPresentedViewInContainerView];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    containerView = [(UIPresentationController *)self containerView];
    [containerView bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    containerView2 = [(UIPresentationController *)self containerView];
    [containerView2 safeAreaInsets];

    presentingViewController = [(UIPresentationController *)self presentingViewController];
    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    v23 = _UISheetContentContainerSize(presentingViewController, presentedViewController2, v17, v19);
    v25 = v24;

    presentedViewController3 = [(UIPresentationController *)self presentedViewController];
    containerView3 = [(UIPresentationController *)self containerView];
    _screen = [containerView3 _screen];
    [_screen bounds];
    [presentedViewController3 _formSheetSizeForWindowWithSize:v23 screenSize:v25];
    v8 = v29;
    v10 = v30;

    _shouldHideBottomCorner = [(_UIFormSheetPresentationController *)self _shouldHideBottomCorner];
    dropShadowView = [(UISheetPresentationController *)self dropShadowView];
    [dropShadowView setMasksTopCornersOnly:_shouldHideBottomCorner];

    if ([(_UIFormSheetPresentationController *)self _shouldHideBottomCorner])
    {
      v10 = v25 + -20.0;
      v6 = 20.0;
    }

    else if (self->_layoutStateShouldAvoidKeyboard && (-[UIPresentationController presentedViewController](self, "presentedViewController"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 interfaceOrientation] - 5, v33, v34 > 0xFFFFFFFFFFFFFFFDLL))
    {
      v35 = v15 + (self->_keyboardYOrigin - v10) * 0.5;
      containerView4 = [(UIPresentationController *)self containerView];
      window = [containerView4 window];
      v38 = __UIStatusBarManagerForWindow(window);
      [v38 defaultStatusBarHeightInOrientation:1];
      v40 = v39;

      if (v40 >= v35)
      {
        v6 = v40;
      }

      else
      {
        v6 = v35;
      }
    }

    else
    {
      v6 = v15 + (v25 - v10) * 0.5;
    }

    v5 = v13 + (v23 - v8) * 0.5;
  }

  v41 = v8;
  v42 = v10;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)dismissalTransitionWillBegin
{
  v7.receiver = self;
  v7.super_class = _UIFormSheetPresentationController;
  [(UISheetPresentationController *)&v7 dismissalTransitionWillBegin];
  if ([(_UIFormSheetPresentationController *)self shouldSubscribeToKeyboardNotifications])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillShowNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillHideNotification" object:0];
  }

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  disablesAutomaticKeyboardDismissal = [presentedViewController disablesAutomaticKeyboardDismissal];

  if (disablesAutomaticKeyboardDismissal)
  {
    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    [presentedViewController2 _endPinningInputViews];
  }
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo valueForKey:@"UIKeyboardFrameEndUserInfoKey"];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  MinY = CGRectGetMinY(v16);

  [(_UIFormSheetPresentationController *)self _changeLayoutModeToAvoidKeyboard:1 withOrigin:MinY];
}

- (void)_changeLayoutModeToAvoidKeyboard:(BOOL)keyboard withOrigin:(double)origin
{
  if (self->_layoutStateShouldAvoidKeyboard != keyboard || self->_keyboardYOrigin != origin)
  {
    self->_layoutStateShouldAvoidKeyboard = keyboard;
    self->_keyboardYOrigin = origin;
    containerView = [(UIPresentationController *)self containerView];
    [containerView setNeedsLayout];

    if ([(UIPresentationController *)self presented])
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __82___UIFormSheetPresentationController__changeLayoutModeToAvoidKeyboard_withOrigin___block_invoke;
      v6[3] = &unk_1E70F3590;
      v6[4] = self;
      [UIView animateWithDuration:v6 animations:0.3833];
    }
  }
}

- (BOOL)_shouldHideBottomCorner
{
  traitCollection = [(UIPresentationController *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 0;

  return v3;
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  presentedViewController = [(UIPresentationController *)self presentedViewController];

  if (presentedViewController == containerCopy)
  {
    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    containerView = [(UIPresentationController *)self containerView];
    _screen = [containerView _screen];
    [_screen bounds];
    [presentedViewController2 _formSheetSizeForWindowWithSize:width screenSize:height];
    v10 = v16;
    v12 = v17;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _UIFormSheetPresentationController;
    [(UIPresentationController *)&v20 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
    v10 = v9;
    v12 = v11;
  }

  v18 = v10;
  v19 = v12;
  result.height = v19;
  result.width = v18;
  return result;
}

- (int64_t)_defaultPresentationStyleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  if (_UISheetPresentationControllerStylesSheetsAsCards(presentedViewController))
  {

LABEL_5:
    v9.receiver = self;
    v9.super_class = _UIFormSheetPresentationController;
    v7 = [(UIPresentationController *)&v9 _defaultPresentationStyleForTraitCollection:collectionCopy];
    goto LABEL_6;
  }

  horizontalSizeClass = [collectionCopy horizontalSizeClass];

  if (horizontalSizeClass != 1)
  {
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (BOOL)_presentationPotentiallyUnderlapsStatusBar
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v3 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  return v3;
}

@end