@interface _UIEditMenuDismissalGestureRecognizer
+ (BOOL)canHandleEventForPassthrough:(id)passthrough;
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)shouldReceiveEvent:(id)event;
- (_UIEditMenuDismissalGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (_UIEditMenuDismissalGestureRecognizerDelegate)interactionDelegate;
- (void)_scrollingChangedWithEvent:(id)event;
- (void)_transformChangedWithEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIEditMenuDismissalGestureRecognizer

- (_UIEditMenuDismissalGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIEditMenuDismissalGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    *(&v5->super._gestureFlags + 4) &= ~0x10u;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesMoved:moved withEvent:event];
  [(UIGestureRecognizer *)self setState:2];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(UIGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(UIGestureRecognizer *)self setState:4];
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  interactionDelegate = [(_UIEditMenuDismissalGestureRecognizer *)self interactionDelegate];
  if (interactionDelegate)
  {
    view = [(UIGestureRecognizer *)self view];
    [touchCopy locationInView:view];
    v11 = v10;
    v13 = v12;

    interactionDelegate2 = [(_UIEditMenuDismissalGestureRecognizer *)self interactionDelegate];
    v15 = [interactionDelegate2 dismissalGestureRecognizer:self shouldInteractAtLocation:eventCopy withEvent:{v11, v13}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)shouldReceiveEvent:(id)event
{
  eventCopy = event;
  if ([objc_opt_class() canHandleEventForPassthrough:eventCopy])
  {
    interactionDelegate = [(_UIEditMenuDismissalGestureRecognizer *)self interactionDelegate];
    if (interactionDelegate)
    {
      if ([eventCopy type] == 10)
      {
        v6 = eventCopy;
        view = [(UIGestureRecognizer *)self view];
        [v6 locationInView:view];
        v9 = v8;
        v11 = v10;

        v12 = [interactionDelegate dismissalGestureRecognizer:self shouldInteractAtLocation:v6 withEvent:{v9, v11}];
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIEditMenuDismissalGestureRecognizer;
    v12 = [(UIGestureRecognizer *)&v14 shouldReceiveEvent:eventCopy];
  }

  return v12;
}

- (void)_scrollingChangedWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase] == 2)
  {
    v4 = 1;
  }

  else if ([eventCopy phase] == 5)
  {
    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateEnded)
    {
      goto LABEL_10;
    }

    v4 = 4;
  }

  else if ([eventCopy phase] == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [(UIGestureRecognizer *)self setState:v4];
LABEL_10:
}

- (void)_transformChangedWithEvent:(id)event
{
  v4 = [event phase] - 1;
  if (v4 <= 3)
  {
    v5 = qword_18A682BA0[v4];

    [(UIGestureRecognizer *)self setState:v5];
  }
}

+ (BOOL)canHandleEventForPassthrough:(id)passthrough
{
  passthroughCopy = passthrough;
  v4 = ![passthroughCopy type] || objc_msgSend(passthroughCopy, "type") == 10 || objc_msgSend(passthroughCopy, "type") == 14;

  return v4;
}

- (_UIEditMenuDismissalGestureRecognizerDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end