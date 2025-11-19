@interface UIAutoRespondingScrollViewControllerKeyboardSupport
- (UIAutoRespondingScrollViewControllerKeyboardSupport)initWithViewController:(id)a3;
- (void)_adjustScrollViewForKeyboardInfo:(id)a3;
- (void)_keyboardDidChangeFrame:(id)a3;
- (void)_keyboardDidHide:(id)a3;
- (void)_keyboardDidShow:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)setRegisteredForNotifications:(BOOL)a3;
@end

@implementation UIAutoRespondingScrollViewControllerKeyboardSupport

- (void)setRegisteredForNotifications:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 24) = *(self + 24) & 0xFD | v3;
}

- (UIAutoRespondingScrollViewControllerKeyboardSupport)initWithViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIAutoRespondingScrollViewControllerKeyboardSupport;
  v5 = [(UIAutoRespondingScrollViewControllerKeyboardSupport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, v4);
  }

  return v6;
}

- (void)_adjustScrollViewForKeyboardInfo:(id)a3
{
  v4 = a3;
  if ((*(self + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v6 = [WeakRetained viewIfLoaded];
    v7 = [v6 window];

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_viewController);
      v9 = [v8 _isInViewControllerThatHandlesKeyboardAvoidance];

      if ((v9 & 1) == 0)
      {
        adjustmentForKeyboard = self->_adjustmentForKeyboard;
        v10 = objc_loadWeakRetained(&self->_viewController);
        v11 = [v10 _scrollView];
        [v11 _adjustForAutomaticKeyboardInfo:v4 animated:1 lastAdjustment:&adjustmentForKeyboard];

        self->_adjustmentForKeyboard = adjustmentForKeyboard;
      }
    }
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self _adjustScrollViewForKeyboardInfo:v4];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = [WeakRetained _isInViewControllerThatHandlesKeyboardAvoidance];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_viewController);
    v8 = [v7 _scrollView];
    [v8 _setKeepsFirstResponderVisibleOnBoundsChange:1];
  }

  v9 = objc_opt_class();

  [v9 cancelPreviousPerformRequestsWithTarget:self selector:sel__adjustScrollViewForKeyboardInfo_ object:0];
}

- (void)_keyboardDidShow:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v3 = [WeakRetained _scrollView];
  [v3 _setKeepsFirstResponderVisibleOnBoundsChange:0];
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DA28]];
  [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self performSelector:sel__adjustScrollViewForKeyboardInfo_ withObject:0 afterDelay:v4 inModes:0.0];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  LODWORD(v4) = [WeakRetained _isInViewControllerThatHandlesKeyboardAvoidance];

  if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_viewController);
    v6 = [v7 _scrollView];
    [v6 _setKeepsFirstResponderVisibleOnBoundsChange:1];
  }
}

- (void)_keyboardDidHide:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v3 = [WeakRetained _scrollView];
  [v3 _setKeepsFirstResponderVisibleOnBoundsChange:0];
}

- (void)_keyboardDidChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self _adjustScrollViewForKeyboardInfo:v4];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel__adjustScrollViewForKeyboardInfo_ object:0];
}

@end