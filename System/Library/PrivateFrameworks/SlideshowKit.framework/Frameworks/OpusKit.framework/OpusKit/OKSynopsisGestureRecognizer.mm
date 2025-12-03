@interface OKSynopsisGestureRecognizer
- (BOOL)shouldCompleteGesture;
- (OKSynopsisGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)progress;
- (void)handle:(id)handle;
@end

@implementation OKSynopsisGestureRecognizer

- (OKSynopsisGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v9.receiver = self;
  v9.super_class = OKSynopsisGestureRecognizer;
  v6 = [(UIPinchGestureRecognizer *)&v9 initWithTarget:self action:sel_handle_];
  v7 = v6;
  if (v6)
  {
    [(OKSynopsisGestureRecognizer *)v6 addTarget:target action:action];
  }

  return v7;
}

- (BOOL)shouldCompleteGesture
{
  gestureType = self->_gestureType;
  if (gestureType == 1)
  {
    if (self->_currentType == 1)
    {
      return 1;
    }
  }

  else if (gestureType == 2 && self->_currentType == 2)
  {
    return 1;
  }

  return 0;
}

- (void)handle:(id)handle
{
  if ([handle state] == 1 && (-[UIPinchGestureRecognizer scale](self, "scale"), v5 > 1.0))
  {
    v6 = 1;
  }

  else
  {
    if ([handle state] != 1)
    {
      return;
    }

    v6 = 2;
  }

  [(UIPinchGestureRecognizer *)self scale];
  self->_lastScale = v7;
  self->_gestureType = v6;
}

- (double)progress
{
  [(UIPinchGestureRecognizer *)self scale];
  v4 = v3;
  lastScale = self->_lastScale;
  [(UIPinchGestureRecognizer *)self scale];
  if (lastScale != v6)
  {
    v7 = self->_lastScale;
    [(UIPinchGestureRecognizer *)self scale];
    v8 = 2;
    if (v7 < v9)
    {
      v8 = 1;
    }

    self->_currentType = v8;
    [(UIPinchGestureRecognizer *)self scale];
    self->_lastScale = v10;
  }

  if (v4 < 1.0 && self->_gestureType == 2)
  {
    return 1.0 - v4;
  }

  if (v4 < 1.0 || (result = 0.0, self->_gestureType != 2))
  {
    if (v4 > 1.0 && self->_gestureType == 1)
    {
      return (v4 + -1.0) / -3.0 + 1.0;
    }

    else
    {
      result = v4;
      if (v4 <= 1.0)
      {
        result = 1.0;
        if (self->_gestureType != 1)
        {
          return v4;
        }
      }
    }
  }

  return result;
}

@end