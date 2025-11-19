@interface _UIBarPanGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (_UIBarPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (id)description;
- (void)_setDelegate:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIBarPanGestureRecognizer

- (_UIBarPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIBarPanGestureRecognizer;
  v4 = [(UIPanGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIPanGestureRecognizer *)v4 setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v5 setMaximumNumberOfTouches:1];
  }

  return v5;
}

- (void)_setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIBarPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v3 setDelegate:a3];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_barAction = 0;
  self->_bias = 0.0;
  v4.receiver = self;
  v4.super_class = _UIBarPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v4 touchesBegan:a3 withEvent:a4];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = _UIBarPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v12 touchesMoved:a3 withEvent:a4];
  v5 = [(UIGestureRecognizer *)self delegate];
  v6 = [v5 isNavigationBarHidden];

  if (!self->_barAction)
  {
    v7 = [(UIGestureRecognizer *)self view];
    [(UIPanGestureRecognizer *)self translationInView:v7];
    v9 = v8;

    [(UIPanGestureRecognizer *)self _hysteresis];
    if (((v9 > v10) & v6) != 0)
    {
      v11 = 2;
    }

    else
    {
      if ((v9 >= -v10) | v6 & 1)
      {
        return;
      }

      v11 = 1;
    }

    self->_bias = v9;
    self->_barAction = v11;
  }
}

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([v4 _isGestureType:8])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIBarPanGestureRecognizer;
    v5 = [(UIGestureRecognizer *)&v7 canPreventGestureRecognizer:v4];
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