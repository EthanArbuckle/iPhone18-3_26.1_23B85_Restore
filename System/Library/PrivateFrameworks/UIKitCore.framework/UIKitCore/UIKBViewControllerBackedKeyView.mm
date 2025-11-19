@interface UIKBViewControllerBackedKeyView
- (UIKBViewControllerBackedKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6;
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (void)addChildViewControllerIfNeeded;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDrawFrame:(CGRect)a3;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
@end

@implementation UIKBViewControllerBackedKeyView

- (UIKBViewControllerBackedKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = UIKBViewControllerBackedKeyView;
  v14 = [(UIKBKeyView *)&v17 initWithFrame:a4 keyplane:a5 key:v13 screenTraits:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    [(UIView *)v14 setUserInteractionEnabled:1];
    [(UIKBKeyView *)v15 setScreenTraits:v13];
  }

  return v15;
}

- (void)dealloc
{
  if (self->_hasAncestorViewController)
  {
    [(UIViewController *)self->_childViewController willMoveToParentViewController:0];
  }

  v3 = [(UIViewController *)self->_childViewController view];
  [v3 removeFromSuperview];

  if (self->_hasAncestorViewController)
  {
    [(UIViewController *)self->_childViewController removeFromParentViewController];
  }

  v4.receiver = self;
  v4.super_class = UIKBViewControllerBackedKeyView;
  [(UIKBKeyView *)&v4 dealloc];
}

- (void)setDrawFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = UIKBViewControllerBackedKeyView;
  [(UIKBKeyView *)&v4 setDrawFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self setNeedsLayout];
}

- (void)addChildViewControllerIfNeeded
{
  v28[4] = *MEMORY[0x1E69E9840];
  if (!self->_childViewController)
  {
    v3 = [(UIKBViewControllerBackedKeyView *)self contentViewController];
    childViewController = self->_childViewController;
    self->_childViewController = v3;
  }

  v5 = [(UIView *)self _viewControllerForAncestor];
  v6 = [(UIView *)self window];
  self->_hasAncestorViewController = v5 != 0;
  v7 = [(UIViewController *)self->_childViewController view];
  v8 = v7;
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
  }

  else
  {
    v10 = [(UIViewController *)self->_childViewController view];
    v11 = [v10 window];
    v12 = [(UIView *)self window];

    if (v11 != v12)
    {
      v27 = v6;
      if (self->_hasAncestorViewController)
      {
        [v5 addChildViewController:self->_childViewController];
      }

      v13 = [(UIViewController *)self->_childViewController view];
      [(UIView *)self addSubview:v13];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      v26 = [v13 topAnchor];
      v25 = [(UIView *)self topAnchor];
      v24 = [v26 constraintEqualToAnchor:v25];
      v28[0] = v24;
      v23 = [v13 leadingAnchor];
      v22 = [(UIView *)self leadingAnchor];
      v21 = [v23 constraintEqualToAnchor:v22];
      v28[1] = v21;
      v20 = [v13 trailingAnchor];
      v14 = [(UIView *)self trailingAnchor];
      v15 = [v20 constraintEqualToAnchor:v14];
      v28[2] = v15;
      v16 = [v13 bottomAnchor];
      v17 = [(UIView *)self bottomAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v28[3] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];

      [MEMORY[0x1E69977A0] activateConstraints:v19];
      if (self->_hasAncestorViewController)
      {
        [(UIViewController *)self->_childViewController didMoveToParentViewController:v5];
      }

      v6 = v27;
    }
  }
}

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  v5.receiver = self;
  v5.super_class = UIKBViewControllerBackedKeyView;
  [(UIKBKeyView *)&v5 updateForKeyplane:a3 key:a4];
  [(UIKBViewControllerBackedKeyView *)self addChildViewControllerIfNeeded];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIKBViewControllerBackedKeyView;
  [(UIKBKeyView *)&v3 layoutSubviews];
  [(UIKBViewControllerBackedKeyView *)self addChildViewControllerIfNeeded];
}

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if (_UIApplicationIsStickerPickerService() && +[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService]&& ([(UIView *)self window], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != v10))
  {
    v12 = [(UIView *)self window];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UIKBViewControllerBackedKeyView;
    v12 = [(UIView *)&v15 _hitTest:v9 withEvent:v10 windowServerHitTestWindow:x, y];
  }

  v13 = v12;

  return v13;
}

@end