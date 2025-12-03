@interface UIAutoRespondingScrollViewControllerKeyboardSupport
- (UIAutoRespondingScrollViewControllerKeyboardSupport)initWithViewController:(id)controller;
- (void)_adjustScrollViewForKeyboardInfo:(id)info;
- (void)_keyboardDidChangeFrame:(id)frame;
- (void)_keyboardDidHide:(id)hide;
- (void)_keyboardDidShow:(id)show;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)setRegisteredForNotifications:(BOOL)notifications;
@end

@implementation UIAutoRespondingScrollViewControllerKeyboardSupport

- (void)setRegisteredForNotifications:(BOOL)notifications
{
  if (notifications)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 24) = *(self + 24) & 0xFD | v3;
}

- (UIAutoRespondingScrollViewControllerKeyboardSupport)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = UIAutoRespondingScrollViewControllerKeyboardSupport;
  v5 = [(UIAutoRespondingScrollViewControllerKeyboardSupport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, controllerCopy);
  }

  return v6;
}

- (void)_adjustScrollViewForKeyboardInfo:(id)info
{
  infoCopy = info;
  if ((*(self + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    viewIfLoaded = [WeakRetained viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      v8 = objc_loadWeakRetained(&self->_viewController);
      _isInViewControllerThatHandlesKeyboardAvoidance = [v8 _isInViewControllerThatHandlesKeyboardAvoidance];

      if ((_isInViewControllerThatHandlesKeyboardAvoidance & 1) == 0)
      {
        adjustmentForKeyboard = self->_adjustmentForKeyboard;
        v10 = objc_loadWeakRetained(&self->_viewController);
        _scrollView = [v10 _scrollView];
        [_scrollView _adjustForAutomaticKeyboardInfo:infoCopy animated:1 lastAdjustment:&adjustmentForKeyboard];

        self->_adjustmentForKeyboard = adjustmentForKeyboard;
      }
    }
  }
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self _adjustScrollViewForKeyboardInfo:userInfo];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  _isInViewControllerThatHandlesKeyboardAvoidance = [WeakRetained _isInViewControllerThatHandlesKeyboardAvoidance];

  if (_isInViewControllerThatHandlesKeyboardAvoidance)
  {
    v7 = objc_loadWeakRetained(&self->_viewController);
    _scrollView = [v7 _scrollView];
    [_scrollView _setKeepsFirstResponderVisibleOnBoundsChange:1];
  }

  v9 = objc_opt_class();

  [v9 cancelPreviousPerformRequestsWithTarget:self selector:sel__adjustScrollViewForKeyboardInfo_ object:0];
}

- (void)_keyboardDidShow:(id)show
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  _scrollView = [WeakRetained _scrollView];
  [_scrollView _setKeepsFirstResponderVisibleOnBoundsChange:0];
}

- (void)_keyboardWillHide:(id)hide
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DA28]];
  [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self performSelector:sel__adjustScrollViewForKeyboardInfo_ withObject:0 afterDelay:v4 inModes:0.0];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  LODWORD(v4) = [WeakRetained _isInViewControllerThatHandlesKeyboardAvoidance];

  if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_viewController);
    _scrollView = [v7 _scrollView];
    [_scrollView _setKeepsFirstResponderVisibleOnBoundsChange:1];
  }
}

- (void)_keyboardDidHide:(id)hide
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  _scrollView = [WeakRetained _scrollView];
  [_scrollView _setKeepsFirstResponderVisibleOnBoundsChange:0];
}

- (void)_keyboardDidChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self _adjustScrollViewForKeyboardInfo:userInfo];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel__adjustScrollViewForKeyboardInfo_ object:0];
}

@end