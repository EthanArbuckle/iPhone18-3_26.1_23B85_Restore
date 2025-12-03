@interface UIRotationGestureRecognizer
- (CGFloat)rotation;
- (CGFloat)velocity;
- (CGPoint)anchorPoint;
- (CGPoint)locationInView:(id)view;
- (double)_postRecognitionWeight;
- (double)_preRecognitionWeight;
- (id)_driver;
@end

@implementation UIRotationGestureRecognizer

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

- (CGFloat)rotation
{
  driver = self->_driver;
  if (driver)
  {
    return driver->_initialTouchAngle - driver->_currentTouchAngle + driver->_currentRotationCount * 6.28318531;
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

- (double)_preRecognitionWeight
{
  driver = self->_driver;
  if (driver)
  {
    return driver->_preRecognitionWeight;
  }

  else
  {
    return 0.0;
  }
}

- (double)_postRecognitionWeight
{
  driver = self->_driver;
  if (driver)
  {
    return driver->_postRecognitionWeight;
  }

  else
  {
    return 0.0;
  }
}

- (CGPoint)locationInView:(id)view
{
  _activeTouchesEvent = [(UIGestureRecognizer *)self _activeTouchesEvent];

  if (_activeTouchesEvent)
  {
    v12.receiver = self;
    v12.super_class = UIRotationGestureRecognizer;
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

@end