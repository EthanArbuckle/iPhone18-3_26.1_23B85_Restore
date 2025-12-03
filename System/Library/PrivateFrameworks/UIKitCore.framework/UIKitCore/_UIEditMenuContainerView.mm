@interface _UIEditMenuContainerView
- (BOOL)dismissalGestureRecognizer:(id)recognizer shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (BOOL)touchFallbackView:(id)view shouldHitTestAtLocation:(CGPoint)location withEvent:(id)event;
- (_UIEditMenuContainerView)initWithPresentation:(id)presentation enablePassthrough:(BOOL)passthrough;
- (_UIEditMenuPresentation)presentation;
- (_UITouchFallbackView)touchFallbackView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_dismissMenuPresentationForSizeChange;
- (void)_installDismissalGesture;
- (void)didMoveToWindow;
- (void)didRecognizeDismissalGestureRecognizer:(id)recognizer;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIEditMenuContainerView

- (_UIEditMenuContainerView)initWithPresentation:(id)presentation enablePassthrough:(BOOL)passthrough
{
  passthroughCopy = passthrough;
  presentationCopy = presentation;
  v10.receiver = self;
  v10.super_class = _UIEditMenuContainerView;
  v7 = [(UIView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_presentation, presentationCopy);
    if (passthroughCopy)
    {
      v8->_dismissesOnViewportResize = 1;
      [(_UIEditMenuContainerView *)v8 _installDismissalGesture];
    }
  }

  return v8;
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
    [(_UIEditMenuContainerView *)self _dismissMenuPresentationForSizeChange];
  }

  v11.receiver = self;
  v11.super_class = _UIEditMenuContainerView;
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
    presentation = [(_UIEditMenuContainerView *)self presentation];
    displayedMenu = [presentation displayedMenu];

    if (displayedMenu)
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

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = _UIEditMenuContainerView;
  [(UIView *)&v7 willMoveToWindow:window];
  dismissalGestureRecognizer = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];

  if (dismissalGestureRecognizer)
  {
    window = [(UIView *)self window];
    dismissalGestureRecognizer2 = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];
    [window removeGestureRecognizer:dismissalGestureRecognizer2];
  }

  [(UIView *)self->_touchFallbackView removeFromSuperview];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UIEditMenuContainerView;
  [(UIView *)&v7 didMoveToWindow];
  window = [(UIView *)self window];
  if (window)
  {
    dismissalGestureRecognizer = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];

    if (dismissalGestureRecognizer)
    {
      dismissalGestureRecognizer2 = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];
      [window addGestureRecognizer:dismissalGestureRecognizer2];

      touchFallbackView = [(_UIEditMenuContainerView *)self touchFallbackView];
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
    presentation = [(_UIEditMenuContainerView *)self presentation];
    [presentation hideMenuWithReason:0];
  }
}

- (BOOL)touchFallbackView:(id)view shouldHitTestAtLocation:(CGPoint)location withEvent:(id)event
{
  v5 = [(_UIEditMenuContainerView *)self presentation:view];
  displayedMenu = [v5 displayedMenu];
  v7 = displayedMenu != 0;

  return v7;
}

- (BOOL)dismissalGestureRecognizer:(id)recognizer shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  self->_lastHitTestPassedThrough = 0;
  view = [recognizer view];
  [view convertPoint:self toView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [(_UIEditMenuContainerView *)self hitTest:eventCopy withEvent:v12, v14];
  LOBYTE(view) = self->_lastHitTestPassedThrough;

  return view;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = _UIEditMenuContainerView;
  v8 = [(UIView *)&v17 hitTest:eventCopy withEvent:x, y];
  if (v8 != self)
  {
LABEL_2:
    dismissalGestureRecognizer = v8;
    goto LABEL_3;
  }

  dismissalGestureRecognizer = [(_UIEditMenuContainerView *)self dismissalGestureRecognizer];

  if (dismissalGestureRecognizer)
  {
    if ([eventCopy type] != 9)
    {
      if ([_UIEditMenuDismissalGestureRecognizer canHandleEventForPassthrough:eventCopy])
      {
        if ([(_UIEditMenuContainerView *)self ignoresPassthroughInPresentationSource])
        {
          presentation = [(_UIEditMenuContainerView *)self presentation];
          sourceView = [presentation sourceView];

          [(UIView *)self setUserInteractionEnabled:0];
          window = [(UIView *)self window];
          [(UIView *)self convertPoint:window toView:x, y];

          window2 = [(UIView *)self window];
          v15 = [window2 hitTest:eventCopy withEvent:{x, y}];

          [(UIView *)self setUserInteractionEnabled:1];
          v16 = [v15 isDescendantOfView:sourceView] ^ 1;
        }

        else
        {
          v16 = 1;
        }

        dismissalGestureRecognizer = 0;
        self->_lastHitTestPassedThrough = v16;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    dismissalGestureRecognizer = 0;
  }

LABEL_3:

  return dismissalGestureRecognizer;
}

- (_UIEditMenuPresentation)presentation
{
  WeakRetained = objc_loadWeakRetained(&self->_presentation);

  return WeakRetained;
}

@end