@interface SBNumberPadWithDelegate
- (BOOL)touchAtPoint:(CGPoint)a3 isCloseToButton:(id)a4;
- (SBNumberPadDelegate)delegate;
- (SBNumberPadWithDelegate)initWithButtons:(id)a3;
- (id)buttonForPoint:(CGPoint)a3 forEvent:(id)a4;
- (void)buttonCancelled:(id)a3;
- (void)buttonDown:(id)a3;
- (void)buttonUp:(id)a3;
@end

@implementation SBNumberPadWithDelegate

- (SBNumberPadWithDelegate)initWithButtons:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBNumberPadWithDelegate;
  return [(TPNumberPad *)&v4 initWithButtons:a3];
}

- (void)buttonUp:(id)a3
{
  v6 = a3;
  v4 = [(SBNumberPadWithDelegate *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained buttonUp:v6];
  }
}

- (void)buttonDown:(id)a3
{
  v6 = a3;
  v4 = [(SBNumberPadWithDelegate *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained buttonDown:v6];
  }
}

- (void)buttonCancelled:(id)a3
{
  v5 = a3;
  v4 = [(SBNumberPadWithDelegate *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 buttonCancelled:v5];
  }
}

- (id)buttonForPoint:(CGPoint)a3 forEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBNumberPadWithDelegate;
  v4 = [(SBNumberPadWithDelegate *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v4)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        break;
      }

      v5 = [v4 superview];

      v4 = v5;
    }

    while (v5);
  }

  return v4;
}

- (BOOL)touchAtPoint:(CGPoint)a3 isCloseToButton:(id)a4
{
  y = a3.y;
  x = a3.x;
  [a4 frame];
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