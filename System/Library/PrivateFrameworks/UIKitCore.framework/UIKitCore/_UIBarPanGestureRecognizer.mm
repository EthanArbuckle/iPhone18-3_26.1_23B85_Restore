@interface _UIBarPanGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (_UIBarPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (id)description;
- (void)_setDelegate:(id)delegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIBarPanGestureRecognizer

- (_UIBarPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIBarPanGestureRecognizer;
  v4 = [(UIPanGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIPanGestureRecognizer *)v4 setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v5 setMaximumNumberOfTouches:1];
  }

  return v5;
}

- (void)_setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = _UIBarPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v3 setDelegate:delegate];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  self->_barAction = 0;
  self->_bias = 0.0;
  v4.receiver = self;
  v4.super_class = _UIBarPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v4 touchesBegan:began withEvent:event];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = _UIBarPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v12 touchesMoved:moved withEvent:event];
  delegate = [(UIGestureRecognizer *)self delegate];
  isNavigationBarHidden = [delegate isNavigationBarHidden];

  if (!self->_barAction)
  {
    view = [(UIGestureRecognizer *)self view];
    [(UIPanGestureRecognizer *)self translationInView:view];
    v9 = v8;

    [(UIPanGestureRecognizer *)self _hysteresis];
    if (((v9 > v10) & isNavigationBarHidden) != 0)
    {
      v11 = 2;
    }

    else
    {
      if ((v9 >= -v10) | isNavigationBarHidden & 1)
      {
        return;
      }

      v11 = 1;
    }

    self->_bias = v9;
    self->_barAction = v11;
  }
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy _isGestureType:8])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIBarPanGestureRecognizer;
    v5 = [(UIGestureRecognizer *)&v7 canPreventGestureRecognizer:recognizerCopy];
  }

  return v5;
}

- (id)description
{
  barAction = self->_barAction;
  if (barAction > 2)
  {
    v3 = &stru_1EFB14550;
  }

  else
  {
    v3 = off_1E70F78F8[barAction];
  }

  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UIBarPanGestureRecognizer;
  v5 = [(UIGestureRecognizer *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ action=%@", v5, v3];

  return v6;
}

@end