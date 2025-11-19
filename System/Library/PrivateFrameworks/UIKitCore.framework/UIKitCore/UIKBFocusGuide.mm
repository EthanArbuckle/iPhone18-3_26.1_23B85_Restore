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
    v4 = [(UIFocusGuide *)v2 _impl];
    [v4 _setIsUnoccludable:1];

    v5 = [(UIFocusGuide *)v3 _impl];
    [v5 _setIsUnclippable:1];

    v6 = [(UIFocusGuide *)v3 _impl];
    [v6 _setFocusPriorityRequired:1];

    v7 = [(UIFocusGuide *)v3 _impl];
    [v7 _setIgnoresSpeedBumpEdges:1];
  }

  return v3;
}

- (void)_didUpdateFocusToPreferredFocusedView
{
  v4.receiver = self;
  v4.super_class = UIKBFocusGuide;
  [(UIFocusGuide *)&v4 _didUpdateFocusToPreferredFocusedView];
  v3 = [(UIKBFocusGuide *)self keyboardDelegate];
  [v3 didFocusGuideWithHeading:{-[UIKBFocusGuide focusHeading](self, "focusHeading")}];
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