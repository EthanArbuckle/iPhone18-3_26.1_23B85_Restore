@interface UIKBViewControllerBackedKeyView
- (UIKBViewControllerBackedKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (void)addChildViewControllerIfNeeded;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDrawFrame:(CGRect)frame;
- (void)updateForKeyplane:(id)keyplane key:(id)key;
@end

@implementation UIKBViewControllerBackedKeyView

- (UIKBViewControllerBackedKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  traitsCopy = traits;
  v17.receiver = self;
  v17.super_class = UIKBViewControllerBackedKeyView;
  height = [(UIKBKeyView *)&v17 initWithFrame:keyplane keyplane:key key:traitsCopy screenTraits:x, y, width, height];
  v15 = height;
  if (height)
  {
    [(UIView *)height setUserInteractionEnabled:1];
    [(UIKBKeyView *)v15 setScreenTraits:traitsCopy];
  }

  return v15;
}

- (void)dealloc
{
  if (self->_hasAncestorViewController)
  {
    [(UIViewController *)self->_childViewController willMoveToParentViewController:0];
  }

  view = [(UIViewController *)self->_childViewController view];
  [view removeFromSuperview];

  if (self->_hasAncestorViewController)
  {
    [(UIViewController *)self->_childViewController removeFromParentViewController];
  }

  v4.receiver = self;
  v4.super_class = UIKBViewControllerBackedKeyView;
  [(UIKBKeyView *)&v4 dealloc];
}

- (void)setDrawFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = UIKBViewControllerBackedKeyView;
  [(UIKBKeyView *)&v4 setDrawFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)self setNeedsLayout];
}

- (void)addChildViewControllerIfNeeded
{
  v28[4] = *MEMORY[0x1E69E9840];
  if (!self->_childViewController)
  {
    contentViewController = [(UIKBViewControllerBackedKeyView *)self contentViewController];
    childViewController = self->_childViewController;
    self->_childViewController = contentViewController;
  }

  _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
  window = [(UIView *)self window];
  self->_hasAncestorViewController = _viewControllerForAncestor != 0;
  view = [(UIViewController *)self->_childViewController view];
  v8 = view;
  if (view)
  {
    v9 = window == 0;
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
    view2 = [(UIViewController *)self->_childViewController view];
    window2 = [view2 window];
    window3 = [(UIView *)self window];

    if (window2 != window3)
    {
      v27 = window;
      if (self->_hasAncestorViewController)
      {
        [_viewControllerForAncestor addChildViewController:self->_childViewController];
      }

      view3 = [(UIViewController *)self->_childViewController view];
      [(UIView *)self addSubview:view3];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
      topAnchor = [view3 topAnchor];
      topAnchor2 = [(UIView *)self topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v28[0] = v24;
      leadingAnchor = [view3 leadingAnchor];
      leadingAnchor2 = [(UIView *)self leadingAnchor];
      v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v28[1] = v21;
      trailingAnchor = [view3 trailingAnchor];
      trailingAnchor2 = [(UIView *)self trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v28[2] = v15;
      bottomAnchor = [view3 bottomAnchor];
      bottomAnchor2 = [(UIView *)self bottomAnchor];
      v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v28[3] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];

      [MEMORY[0x1E69977A0] activateConstraints:v19];
      if (self->_hasAncestorViewController)
      {
        [(UIViewController *)self->_childViewController didMoveToParentViewController:_viewControllerForAncestor];
      }

      window = v27;
    }
  }
}

- (void)updateForKeyplane:(id)keyplane key:(id)key
{
  v5.receiver = self;
  v5.super_class = UIKBViewControllerBackedKeyView;
  [(UIKBKeyView *)&v5 updateForKeyplane:keyplane key:key];
  [(UIKBViewControllerBackedKeyView *)self addChildViewControllerIfNeeded];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIKBViewControllerBackedKeyView;
  [(UIKBKeyView *)&v3 layoutSubviews];
  [(UIKBViewControllerBackedKeyView *)self addChildViewControllerIfNeeded];
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  windowCopy = window;
  if (_UIApplicationIsStickerPickerService() && +[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService]&& ([(UIView *)self window], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != windowCopy))
  {
    window = [(UIView *)self window];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UIKBViewControllerBackedKeyView;
    window = [(UIView *)&v15 _hitTest:eventCopy withEvent:windowCopy windowServerHitTestWindow:x, y];
  }

  v13 = window;

  return v13;
}

@end