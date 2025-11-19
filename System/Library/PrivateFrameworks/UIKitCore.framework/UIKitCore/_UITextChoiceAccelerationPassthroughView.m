@interface _UITextChoiceAccelerationPassthroughView
- (BOOL)_hitTest:(CGPoint)a3 withEvent:(id)a4 withSourceView:(id)a5;
- (BOOL)dismissalGestureRecognizer:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (_UITextChoiceAccelerationPassthroughDelegate)delegate;
- (_UITextChoiceAccelerationPassthroughView)initWithFrame:(CGRect)a3 delegate:(id)a4;
- (_UITouchFallbackView)touchFallbackView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_installDismissalGesture;
- (void)_passthroughViewDidChangeSize;
- (void)didMoveToWindow;
- (void)didRecognizeDismissalGestureRecognizer:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UITextChoiceAccelerationPassthroughView

- (_UITextChoiceAccelerationPassthroughView)initWithFrame:(CGRect)a3 delegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = _UITextChoiceAccelerationPassthroughView;
  v10 = [(UIView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v9);
    [(_UITextChoiceAccelerationPassthroughView *)v11 _installDismissalGesture];
  }

  return v11;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  if (width != v9 || height != v8)
  {
    [(_UITextChoiceAccelerationPassthroughView *)self _passthroughViewDidChangeSize];
  }

  v11.receiver = self;
  v11.super_class = _UITextChoiceAccelerationPassthroughView;
  [(UIView *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v2 = [(_UITextChoiceAccelerationPassthroughView *)self delegate];
  [v2 passthruViewDidChangeSize];
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

- (void)willMoveToWindow:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UITextChoiceAccelerationPassthroughView;
  [(UIView *)&v7 willMoveToWindow:a3];
  v4 = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];

  if (v4)
  {
    v5 = [(UIView *)self window];
    v6 = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];
    [v5 removeGestureRecognizer:v6];
  }

  [(UIView *)self->_touchFallbackView removeFromSuperview];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UITextChoiceAccelerationPassthroughView;
  [(UIView *)&v7 didMoveToWindow];
  v3 = [(UIView *)self window];
  if (v3)
  {
    v4 = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];

    if (v4)
    {
      v5 = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];
      [v3 addGestureRecognizer:v5];

      v6 = [(_UITextChoiceAccelerationPassthroughView *)self touchFallbackView];
      [v3 bounds];
      [v6 setFrame:?];
      [v3 insertSubview:v6 atIndex:0];
    }
  }
}

- (void)didRecognizeDismissalGestureRecognizer:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 2) >= 2)
  {
    if (v4 == 1)
    {
      self->_didDismissFromGesture = 0;
    }
  }

  else if (!self->_didDismissFromGesture)
  {
    self->_didDismissFromGesture = 1;
    v5 = [(_UITextChoiceAccelerationPassthroughView *)self delegate];
    [v5 didRecognizeDismissal];
  }
}

- (BOOL)dismissalGestureRecognizer:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = [a3 view];
  [v10 convertPoint:self toView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [(_UITextChoiceAccelerationPassthroughView *)self delegate];
  v16 = [v15 sourceView];
  LOBYTE(self) = [(_UITextChoiceAccelerationPassthroughView *)self _hitTest:v9 withEvent:v16 withSourceView:v12, v14];

  return self;
}

- (BOOL)_hitTest:(CGPoint)a3 withEvent:(id)a4 withSourceView:(id)a5
{
  if (!a5)
  {
    return 1;
  }

  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = a4;
  [(UIView *)self setUserInteractionEnabled:0];
  v11 = [(UIView *)self window];
  [(UIView *)self convertPoint:v11 toView:x, y];

  v12 = [(UIView *)self window];
  v13 = [v12 hitTest:v10 withEvent:{x, y}];

  [(UIView *)self setUserInteractionEnabled:1];
  LOBYTE(self) = [v13 isDescendantOfView:v9];

  v14 = self ^ 1;
  return v14;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UITextChoiceAccelerationPassthroughView;
  v8 = [(UIView *)&v11 hitTest:v7 withEvent:x, y];
  if (v8 != self)
  {
    goto LABEL_2;
  }

  v9 = [(_UITextChoiceAccelerationPassthroughView *)self dismissalGestureRecognizer];

  if (v9)
  {
    if ([v7 type] != 9 && !+[_UIEditMenuDismissalGestureRecognizer canHandleEventForPassthrough:](_UIEditMenuDismissalGestureRecognizer, "canHandleEventForPassthrough:", v7))
    {
LABEL_2:
      v9 = v8;
      goto LABEL_7;
    }

    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (_UITextChoiceAccelerationPassthroughDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end