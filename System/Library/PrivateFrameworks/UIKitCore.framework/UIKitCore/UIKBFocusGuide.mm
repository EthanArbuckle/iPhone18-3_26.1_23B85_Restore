@interface UIKBFocusGuide
- (UIKBFocusGuide)init;
- (UIKBFocusGuideDelegate)keyboardDelegate;
- (id)description;
- (void)_didUpdateFocusToPreferredFocusedView;
@end

@implementation UIKBFocusGuide

- (UIKBFocusGuide)init
{
  v9.receiver = self;
  v9.super_class = UIKBFocusGuide;
  v2 = [(UIFocusGuide *)&v9 init];
  v3 = v2;
  if (v2)
  {
    _impl = [(UIFocusGuide *)v2 _impl];
    [_impl _setIsUnoccludable:1];

    _impl2 = [(UIFocusGuide *)v3 _impl];
    [_impl2 _setIsUnclippable:1];

    _impl3 = [(UIFocusGuide *)v3 _impl];
    [_impl3 _setFocusPriorityRequired:1];

    _impl4 = [(UIFocusGuide *)v3 _impl];
    [_impl4 _setIgnoresSpeedBumpEdges:1];
  }

  return v3;
}

- (void)_didUpdateFocusToPreferredFocusedView
{
  v4.receiver = self;
  v4.super_class = UIKBFocusGuide;
  [(UIFocusGuide *)&v4 _didUpdateFocusToPreferredFocusedView];
  keyboardDelegate = [(UIKBFocusGuide *)self keyboardDelegate];
  [keyboardDelegate didFocusGuideWithHeading:{-[UIKBFocusGuide focusHeading](self, "focusHeading")}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = UIKBFocusGuide;
  v4 = [(UIFocusGuide *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, focusHeading = %u", v4, -[UIKBFocusGuide focusHeading](self, "focusHeading")];

  return v5;
}

- (UIKBFocusGuideDelegate)keyboardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardDelegate);

  return WeakRetained;
}

@end