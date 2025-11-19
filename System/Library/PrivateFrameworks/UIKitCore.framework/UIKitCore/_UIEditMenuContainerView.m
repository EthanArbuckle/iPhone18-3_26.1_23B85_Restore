@interface _UIEditMenuContainerView
- (BOOL)dismissalGestureRecognizer:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (BOOL)touchFallbackView:(id)a3 shouldHitTestAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (_UIEditMenuContainerView)initWithPresentation:(id)a3 enablePassthrough:(BOOL)a4;
- (_UIEditMenuPresentation)presentation;
- (_UITouchFallbackView)touchFallbackView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_dismissMenuPresentationForSizeChange;
- (void)_installDismissalGesture;
- (void)didMoveToWindow;
- (void)didRecognizeDismissalGestureRecognizer:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIEditMenuContainerView

- (_UIEditMenuContainerView)initWithPresentation:(id)a3 enablePassthrough:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = _UIEditMenuContainerView;
  v7 = [(UIView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_presentation, v6);
    if (v4)
    {
      v8->_dismissesOnViewportResize = 1;
      [(_UIEditMenuContainerView *)v8 _installDismissalGesture];
    }
  }

  return v8;
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
    [(_UIEditMenuContainerView *)self _dismissMenuPresentationForSizeChange];
  }

  v11.receiver = self;
  v11.super_class = _UIEditMenuContainerView;
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
    [(_UIEditMenuContainerView *)self _dismissMenuPresentationForSizeChange];
  }

  v11.receiver = self;
  v11.super_class = _UIEditMenuContainerView;
  [(UIView *)&v11 setFrame:x, y, width, height];
}

- (void)_dismissMenuPresentationForSizeChange
{
  if ([(_UIEditMenuContainerView *)self dismissesOnViewportResize])
  {
    v3 = [(_UIEditMenuContainerView *)self presentation];
    v4 = [v3 displayedMenu];

    if (v4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65___UIEditMenuContainerView__dismissMenuPresentationForSizeChange__block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
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

  self->_ignoresPassthroughInPresentationSource = 0;

  [(UIView *)self setUserInteractionEnabled:1];
}

- (void)willMoveToWindow:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIEditMenuContainerView;
  [(UIView *)&v7 willMoveToWindow:a3];
  v4 = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];

  if (v4)
  {
    v5 = [(UIView *)self window];
    v6 = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];
    [v5 removeGestureRecognizer:v6];
  }

  [(UIView *)self->_touchFallbackView removeFromSuperview];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UIEditMenuContainerView;
  [(UIView *)&v7 didMoveToWindow];
  v3 = [(UIView *)self window];
  if (v3)
  {
    v4 = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];

    if (v4)
    {
      v5 = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];
      [v3 addGestureRecognizer:v5];

      v6 = [(_UIEditMenuContainerView *)self touchFallbackView];
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
    v5 = [(_UIEditMenuContainerView *)self presentation];
    [v5 hideMenuWithReason:0];
  }
}

- (BOOL)touchFallbackView:(id)a3 shouldHitTestAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  v5 = [(_UIEditMenuContainerView *)self presentation:a3];
  v6 = [v5 displayedMenu];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)dismissalGestureRecognizer:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  self->_lastHitTestPassedThrough = 0;
  v10 = [a3 view];
  [v10 convertPoint:self toView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [(_UIEditMenuContainerView *)self hitTest:v9 withEvent:v12, v14];
  LOBYTE(v10) = self->_lastHitTestPassedThrough;

  return v10;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _UIEditMenuContainerView;
  v8 = [(UIView *)&v17 hitTest:v7 withEvent:x, y];
  if (v8 != self)
  {
LABEL_2:
    v9 = v8;
    goto LABEL_3;
  }

  v9 = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];

  if (v9)
  {
    if ([v7 type] != 9)
    {
      if ([_UIEditMenuDismissalGestureRecognizer canHandleEventForPassthrough:v7])
      {
        if ([(_UIEditMenuContainerView *)self ignoresPassthroughInPresentationSource])
        {
          v11 = [(_UIEditMenuContainerView *)self presentation];
          v12 = [v11 sourceView];

          [(UIView *)self setUserInteractionEnabled:0];
          v13 = [(UIView *)self window];
          [(UIView *)self convertPoint:v13 toView:x, y];

          v14 = [(UIView *)self window];
          v15 = [v14 hitTest:v7 withEvent:{x, y}];

          [(UIView *)self setUserInteractionEnabled:1];
          v16 = [v15 isDescendantOfView:v12] ^ 1;
        }

        else
        {
          v16 = 1;
        }

        v9 = 0;
        self->_lastHitTestPassedThrough = v16;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v9 = 0;
  }

LABEL_3:

  return v9;
}

- (_UIEditMenuPresentation)presentation
{
  WeakRetained = objc_loadWeakRetained(&self->_presentation);

  return WeakRetained;
}

@end