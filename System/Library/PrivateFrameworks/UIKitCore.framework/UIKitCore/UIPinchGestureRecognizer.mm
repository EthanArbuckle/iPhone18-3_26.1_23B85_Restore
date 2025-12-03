@interface UIPinchGestureRecognizer
- (BOOL)_endsOnSingleTouch;
- (BOOL)_shouldReceiveEvent:(id)event;
- (CGAffineTransform)transform;
- (CGFloat)scale;
- (CGFloat)velocity;
- (CGPoint)anchorPoint;
- (CGPoint)locationInView:(id)view;
- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view;
- (UIPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)_hysteresis;
- (double)scaleThreshold;
- (id)_driver;
- (unint64_t)numberOfTouches;
- (void)_evaluateTransformEventTouchCompatibility;
- (void)_resetGestureRecognizer;
- (void)_setEndsOnSingleTouch:(BOOL)touch;
- (void)_setHysteresis:(double)hysteresis;
- (void)setScaleThreshold:(double)threshold;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation UIPinchGestureRecognizer

- (id)_driver
{
  driver = self->_driver;
  if (driver)
  {
    v4 = driver;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = self->_driver;
  self->_driver = v4;

  v6 = self->_driver;

  return v6;
}

- (void)_resetGestureRecognizer
{
  *&self->_flags &= ~8u;
  v2.receiver = self;
  v2.super_class = UIPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v2 _resetGestureRecognizer];
}

- (UIPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v6.receiver = self;
  v6.super_class = UIPinchGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v6 initWithTarget:target action:action];
  if (v4)
  {
    *&v4->_flags = *&v4->_flags & 0xFE | _UIGestureRecognizerShouldConsiderPointingDeviceCompatibility();
  }

  return v4;
}

- (CGFloat)scale
{
  driver = self->_driver;
  if (driver)
  {
    return driver->_transform.a;
  }

  else
  {
    return 0.0;
  }
}

- (CGFloat)velocity
{
  driver = self->_driver;
  if (!driver)
  {
    return 0.0;
  }

  previousVelocity = driver->_previousVelocity;
  result = driver->_velocity;
  if (previousVelocity != 0.0)
  {
    return previousVelocity * 0.75 + result * 0.25;
  }

  return result;
}

- (CGPoint)anchorPoint
{
  driver = self->_driver;
  if (driver)
  {
    p_x = &driver->_anchorPoint.x;
    v4 = *p_x;
    v5 = p_x[1];
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (void)setScaleThreshold:(double)threshold
{
  driver = self->_driver;
  if (driver)
  {
    driver->_scaleThreshold = threshold;
  }
}

- (double)scaleThreshold
{
  driver = self->_driver;
  if (driver)
  {
    return driver->_scaleThreshold;
  }

  else
  {
    return 0.0;
  }
}

- (void)_setHysteresis:(double)hysteresis
{
  driver = self->_driver;
  if (driver)
  {
    driver->_hysteresis = hysteresis;
  }
}

- (double)_hysteresis
{
  driver = self->_driver;
  if (driver)
  {
    return driver->_hysteresis;
  }

  else
  {
    return 0.0;
  }
}

- (void)setTransform:(CGAffineTransform *)transform
{
  driver = self->_driver;
  if (driver)
  {
    p_a = &driver->_transform.a;
    v5 = *&transform->a;
    v6 = *&transform->tx;
    p_a[1] = *&transform->c;
    p_a[2] = v6;
    *p_a = v5;
  }
}

- (CGAffineTransform)transform
{
  ty = self[5].ty;
  if (ty == 0.0)
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  else
  {
    v4 = (*&ty + 96);
    v5 = v4[1];
    *&retstr->a = *v4;
    *&retstr->c = v5;
    *&retstr->tx = v4[2];
  }

  return self;
}

- (void)_setEndsOnSingleTouch:(BOOL)touch
{
  driver = self->_driver;
  if (driver)
  {
    *&driver->_flags = *&driver->_flags & 0xFE | touch;
  }
}

- (BOOL)_endsOnSingleTouch
{
  driver = self->_driver;
  if (driver)
  {
    return *&driver->_flags & 1;
  }

  else
  {
    return 0;
  }
}

- (void)_evaluateTransformEventTouchCompatibility
{
  if ((*&self->_flags & 2) == 0)
  {
    if (_UIGestureRecognizerShouldEnableTransformEventTouchCompatibility(self))
    {
      v3 = 6;
    }

    else
    {
      v3 = 2;
    }

    *&self->_flags = *&self->_flags & 0xFB | v3;
  }
}

- (BOOL)_shouldReceiveEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UIPinchGestureRecognizer;
  v5 = [(UIGestureRecognizer *)&v7 _shouldReceiveEvent:?];
  if ([event type] == 14)
  {
    [(UIPinchGestureRecognizer *)self _evaluateTransformEventTouchCompatibility];
  }

  return v5;
}

- (CGPoint)locationInView:(id)view
{
  _activeTouchesEvent = [(UIGestureRecognizer *)self _activeTouchesEvent];

  if (_activeTouchesEvent)
  {
    v12.receiver = self;
    v12.super_class = UIPinchGestureRecognizer;
    [(UIGestureRecognizer *)&v12 locationInView:view];
  }

  else
  {
    driver = self->_driver;
    if (driver)
    {
      p_x = &driver->_anchorPoint.x;
      v10 = *p_x;
      v11 = p_x[1];
    }

    else
    {
      v11 = 0.0;
      v10 = 0.0;
    }

    [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:v10, v11];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (unint64_t)numberOfTouches
{
  flags = self->_flags;
  if ((flags & 4) == 0)
  {
    selfCopy = self;
    v4 = &selfCopy;
LABEL_10:
    v4[1] = UIPinchGestureRecognizer;
    return objc_msgSendSuper2(v4, sel_numberOfTouches, selfCopy2);
  }

  if ((*&self->_flags & 8) == 0)
  {
    v5 = [(UIGestureRecognizer *)self _activeEventOfType:14];
    if (v5)
    {
      v6 = [(UIGestureRecognizer *)self _activeEventOfType:0];
      *&self->_flags = *&self->_flags & 0xF7 | (8 * (v6 == 0));
    }

    else
    {
      *&self->_flags &= ~8u;
    }

    flags = self->_flags;
  }

  if ((flags & 8) == 0)
  {
    selfCopy2 = self;
    v4 = &selfCopy2;
    goto LABEL_10;
  }

  return 2;
}

- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view
{
  if ((*&self->_flags & 8) != 0)
  {

    [(UIPinchGestureRecognizer *)self locationInView:view];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIPinchGestureRecognizer;
    [(UIGestureRecognizer *)&v7 locationOfTouch:touch inView:view];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

@end