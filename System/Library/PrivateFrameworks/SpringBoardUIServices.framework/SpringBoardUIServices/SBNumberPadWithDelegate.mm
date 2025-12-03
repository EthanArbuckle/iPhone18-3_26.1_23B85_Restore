@interface SBNumberPadWithDelegate
- (BOOL)touchAtPoint:(CGPoint)point isCloseToButton:(id)button;
- (SBNumberPadDelegate)delegate;
- (SBNumberPadWithDelegate)initWithButtons:(id)buttons;
- (id)buttonForPoint:(CGPoint)point forEvent:(id)event;
- (void)buttonCancelled:(id)cancelled;
- (void)buttonDown:(id)down;
- (void)buttonUp:(id)up;
@end

@implementation SBNumberPadWithDelegate

- (SBNumberPadWithDelegate)initWithButtons:(id)buttons
{
  v4.receiver = self;
  v4.super_class = SBNumberPadWithDelegate;
  return [(TPNumberPad *)&v4 initWithButtons:buttons];
}

- (void)buttonUp:(id)up
{
  upCopy = up;
  delegate = [(SBNumberPadWithDelegate *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained buttonUp:upCopy];
  }
}

- (void)buttonDown:(id)down
{
  downCopy = down;
  delegate = [(SBNumberPadWithDelegate *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained buttonDown:downCopy];
  }
}

- (void)buttonCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  delegate = [(SBNumberPadWithDelegate *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate buttonCancelled:cancelledCopy];
  }
}

- (id)buttonForPoint:(CGPoint)point forEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBNumberPadWithDelegate;
  v4 = [(SBNumberPadWithDelegate *)&v7 hitTest:event withEvent:point.x, point.y];
  if (v4)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        break;
      }

      superview = [v4 superview];

      v4 = superview;
    }

    while (superview);
  }

  return v4;
}

- (BOOL)touchAtPoint:(CGPoint)point isCloseToButton:(id)button
{
  y = point.y;
  x = point.x;
  [button frame];
  v11 = CGRectInset(v10, -20.0, -20.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (SBNumberPadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end