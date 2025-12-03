@interface _UITextChoiceAccelerationPassthroughView
- (BOOL)_hitTest:(CGPoint)test withEvent:(id)event withSourceView:(id)view;
- (BOOL)dismissalGestureRecognizer:(id)recognizer shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (_UITextChoiceAccelerationPassthroughDelegate)delegate;
- (_UITextChoiceAccelerationPassthroughView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (_UITouchFallbackView)touchFallbackView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_installDismissalGesture;
- (void)_passthroughViewDidChangeSize;
- (void)didMoveToWindow;
- (void)didRecognizeDismissalGestureRecognizer:(id)recognizer;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UITextChoiceAccelerationPassthroughView

- (_UITextChoiceAccelerationPassthroughView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = _UITextChoiceAccelerationPassthroughView;
  height = [(UIView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    [(_UITextChoiceAccelerationPassthroughView *)v11 _installDismissalGesture];
  }

  return v11;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  if (width != v9 || height != v8)
  {
    [(_UITextChoiceAccelerationPassthroughView *)self _passthroughViewDidChangeSize];
  }

  v11.receiver = self;
  v11.super_class = _UITextChoiceAccelerationPassthroughView;
  [(UIView *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  if (width != v9 || height != v8)
  {
    [(_UITextChoiceAccelerationPassthroughView *)self _passthroughViewDidChangeSize];
  }

  v11.receiver = self;
  v11.super_class = _UITextChoiceAccelerationPassthroughView;
  [(UIView *)&v11 setFrame:x, y, width, height];
}

- (void)_passthroughViewDidChangeSize
{
  delegate = [(_UITextChoiceAccelerationPassthroughView *)self delegate];
  [delegate passthruViewDidChangeSize];
}

- (_UITouchFallbackView)touchFallbackView
{
  touchFallbackView = self->_touchFallbackView;
  if (!touchFallbackView)
  {
    v4 = [_UITouchFallbackView alloc];
    [(UIView *)self bounds];
    v5 = [(_UITouchFallbackView *)v4 initWithFrame:?];
    v6 = self->_touchFallbackView;
    self->_touchFallbackView = v5;

    [(_UITouchFallbackView *)self->_touchFallbackView setDelegate:self];
    [(UIView *)self->_touchFallbackView setAutoresizingMask:18];
    touchFallbackView = self->_touchFallbackView;
  }

  return touchFallbackView;
}

- (void)_installDismissalGesture
{
  v3 = [[_UIEditMenuDismissalGestureRecognizer alloc] initWithTarget:self action:sel_didRecognizeDismissalGestureRecognizer_];
  [(_UIEditMenuDismissalGestureRecognizer *)v3 setInteractionDelegate:self];
  dismissalGestureRecognizer = self->_dismissalGestureRecognizer;
  self->_dismissalGestureRecognizer = v3;

  [(UIView *)self setUserInteractionEnabled:1];
}

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = _UITextChoiceAccelerationPassthroughView;
  [(UIView *)&v7 willMoveToWindow:window];
  dismissalGestureRecognizer = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];

  if (dismissalGestureRecognizer)
  {
    window = [(UIView *)self window];
    dismissalGestureRecognizer2 = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];
    [window removeGestureRecognizer:dismissalGestureRecognizer2];
  }

  [(UIView *)self->_touchFallbackView removeFromSuperview];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UITextChoiceAccelerationPassthroughView;
  [(UIView *)&v7 didMoveToWindow];
  window = [(UIView *)self window];
  if (window)
  {
    dismissalGestureRecognizer = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];

    if (dismissalGestureRecognizer)
    {
      dismissalGestureRecognizer2 = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];
      [window addGestureRecognizer:dismissalGestureRecognizer2];

      touchFallbackView = [(_UITextChoiceAccelerationPassthroughView *)self touchFallbackView];
      [window bounds];
      [touchFallbackView setFrame:?];
      [window insertSubview:touchFallbackView atIndex:0];
    }
  }
}

- (void)didRecognizeDismissalGestureRecognizer:(id)recognizer
{
  state = [recognizer state];
  if ((state - 2) >= 2)
  {
    if (state == 1)
    {
      self->_didDismissFromGesture = 0;
    }
  }

  else if (!self->_didDismissFromGesture)
  {
    self->_didDismissFromGesture = 1;
    delegate = [(_UITextChoiceAccelerationPassthroughView *)self delegate];
    [delegate didRecognizeDismissal];
  }
}

- (BOOL)dismissalGestureRecognizer:(id)recognizer shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  view = [recognizer view];
  [view convertPoint:self toView:{x, y}];
  v12 = v11;
  v14 = v13;

  delegate = [(_UITextChoiceAccelerationPassthroughView *)self delegate];
  sourceView = [delegate sourceView];
  LOBYTE(self) = [(_UITextChoiceAccelerationPassthroughView *)self _hitTest:eventCopy withEvent:sourceView withSourceView:v12, v14];

  return self;
}

- (BOOL)_hitTest:(CGPoint)test withEvent:(id)event withSourceView:(id)view
{
  if (!view)
  {
    return 1;
  }

  y = test.y;
  x = test.x;
  viewCopy = view;
  eventCopy = event;
  [(UIView *)self setUserInteractionEnabled:0];
  window = [(UIView *)self window];
  [(UIView *)self convertPoint:window toView:x, y];

  window2 = [(UIView *)self window];
  v13 = [window2 hitTest:eventCopy withEvent:{x, y}];

  [(UIView *)self setUserInteractionEnabled:1];
  LOBYTE(self) = [v13 isDescendantOfView:viewCopy];

  v14 = self ^ 1;
  return v14;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = _UITextChoiceAccelerationPassthroughView;
  v8 = [(UIView *)&v11 hitTest:eventCopy withEvent:x, y];
  if (v8 != self)
  {
    goto LABEL_2;
  }

  dismissalGestureRecognizer = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];

  if (dismissalGestureRecognizer)
  {
    if ([eventCopy type] != 9 && !+[_UIEditMenuDismissalGestureRecognizer canHandleEventForPassthrough:](_UIEditMenuDismissalGestureRecognizer, "canHandleEventForPassthrough:", eventCopy))
    {
LABEL_2:
      dismissalGestureRecognizer = v8;
      goto LABEL_7;
    }

    dismissalGestureRecognizer = 0;
  }

LABEL_7:

  return dismissalGestureRecognizer;
}

- (_UITextChoiceAccelerationPassthroughDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end