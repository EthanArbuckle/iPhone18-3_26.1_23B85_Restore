@interface _UITransformGestureRecognizer
- (CGAffineTransform)transform;
- (CGAffineTransform)transformInView:(SEL)view;
- (CGPoint)locationInView:(id)view;
- (CGPoint)translation;
- (CGPoint)translationInView:(id)view;
- (double)rotation;
- (double)scale;
- (float64x2_t)_anchorPoint;
- (id)_driver;
- (void)_stateUpdatedForDriver:(id)driver previousState:(int64_t)state;
- (void)_transformChangedWithEvent:(id)event;
- (void)reset;
@end

@implementation _UITransformGestureRecognizer

- (id)_driver
{
  v14[2] = *MEMORY[0x1E69E9840];
  composedDriver = self->_composedDriver;
  if (!composedDriver)
  {
    v4 = objc_opt_new();
    pinchDriver = self->_pinchDriver;
    self->_pinchDriver = v4;

    v6 = objc_opt_new();
    rotationDriver = self->_rotationDriver;
    self->_rotationDriver = v6;

    v8 = self->_rotationDriver;
    v14[0] = self->_pinchDriver;
    v14[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v10 = _UIGestureRecognizerComposeParallelDrivers(v9);
    v11 = self->_composedDriver;
    self->_composedDriver = v10;

    v12 = self->_pinchDriver;
    if (v12)
    {
      *&v12->_flags |= 1u;
    }

    composedDriver = self->_composedDriver;
  }

  return composedDriver;
}

- (CGPoint)locationInView:(id)view
{
  *&v5 = *&[(_UITransformGestureRecognizer *)self _anchorPoint];

  [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:v5];
  result.y = v7;
  result.x = v6;
  return result;
}

- (float64x2_t)_anchorPoint
{
  if (self)
  {
    v1 = *(self + 280);
    v2 = 0uLL;
    v3 = 0uLL;
    if (v1)
    {
      v3 = *(v1 + 168);
    }

    v4 = *(self + 288);
    if (v4)
    {
      v2 = v4[8];
    }

    v5 = vaddq_f64(v3, v2);
    __asm { FMOV            V1.2D, #0.5 }

    return vaddq_f64(vmulq_f64(v5, _Q1), *(self + 304));
  }

  else
  {
    return 0;
  }
}

- (void)reset
{
  pinchDriver = self->_pinchDriver;
  if (pinchDriver)
  {
    pinchDriver->_hysteresis = 8.0;
  }

  rotationDriver = self->_rotationDriver;
  if (rotationDriver)
  {
    rotationDriver->_hysteresisEnabled = 1;
  }

  self->_eventTranslation = *MEMORY[0x1E695EFF8];
}

- (void)_stateUpdatedForDriver:(id)driver previousState:(int64_t)state
{
  state = [driver state];
  if ((state - 1) >= 2 && (state - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (([(_UIGestureRecognizerDriver *)self->_pinchDriver state]- 1) <= 1 && ([(_UIGestureRecognizerDriver *)self->_rotationDriver state]- 1) >= 2)
    {
      rotationDriver = self->_rotationDriver;
      if (rotationDriver)
      {
        rotationDriver->_hysteresisEnabled = 0;
      }
    }

    else if (([(_UIGestureRecognizerDriver *)self->_rotationDriver state]- 1) <= 1 && ([(_UIGestureRecognizerDriver *)self->_rotationDriver state]- 1) >= 2)
    {
      pinchDriver = self->_pinchDriver;
      if (pinchDriver)
      {
        pinchDriver->_hysteresis = 0.0;
      }
    }
  }
}

- (void)_transformChangedWithEvent:(id)event
{
  p_eventTranslation = &self->_eventTranslation;
  [event translation];
  p_eventTranslation->x = v4;
  p_eventTranslation->y = v5;
}

- (double)scale
{
  pinchDriver = self->_pinchDriver;
  if (pinchDriver)
  {
    return pinchDriver->_transform.a;
  }

  else
  {
    return 0.0;
  }
}

- (double)rotation
{
  rotationDriver = self->_rotationDriver;
  if (rotationDriver)
  {
    return rotationDriver->_initialTouchAngle - rotationDriver->_currentTouchAngle + rotationDriver->_currentRotationCount * 6.28318531;
  }

  else
  {
    return 0.0;
  }
}

- (CGPoint)translation
{
  view = [(UIGestureRecognizer *)self view];
  [(_UITransformGestureRecognizer *)self translationInView:view];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGAffineTransform)transform
{
  view = [(UIGestureRecognizer *)self view];
  [(_UITransformGestureRecognizer *)self transformInView:view];

  return result;
}

- (CGAffineTransform)transformInView:(SEL)view
{
  [(_UITransformGestureRecognizer *)self scale];
  v8 = v7;
  [(_UITransformGestureRecognizer *)self translationInView:a4];
  v10 = v9;
  v12 = v11;
  v13 = MEMORY[0x1E695EFD0];
  v14 = *MEMORY[0x1E695EFD0];
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v15;
  v16 = *(v13 + 32);
  *&retstr->tx = v16;
  *&v24.a = v14;
  *&v24.c = v15;
  *&v24.tx = v16;
  CGAffineTransformScale(retstr, &v24, v8, v8);
  [(_UITransformGestureRecognizer *)self rotation];
  v17 = *&retstr->c;
  *&v23.a = *&retstr->a;
  *&v23.c = v17;
  *&v23.tx = *&retstr->tx;
  CGAffineTransformRotate(&v24, &v23, v18);
  v19 = *&v24.c;
  *&retstr->a = *&v24.a;
  *&retstr->c = v19;
  *&retstr->tx = *&v24.tx;
  v20 = *&retstr->c;
  *&v23.a = *&retstr->a;
  *&v23.c = v20;
  *&v23.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v24, &v23, v10, v12);
  v22 = *&v24.c;
  *&retstr->a = *&v24.a;
  *&retstr->c = v22;
  *&retstr->tx = *&v24.tx;
  return result;
}

- (CGPoint)translationInView:(id)view
{
  if (self)
  {
    pinchDriver = self->_pinchDriver;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if (pinchDriver)
    {
      p_x = &pinchDriver->_initialAnchorPoint.x;
      v8 = *p_x;
      v7 = p_x[1];
    }

    rotationDriver = self->_rotationDriver;
    v11 = 0.0;
    if (rotationDriver)
    {
      v12 = &rotationDriver->_initialAnchorPoint.x;
      v11 = *v12;
      v6 = v12[1];
    }

    v13 = (v8 + v11) * 0.5;
    v14 = (v7 + v6) * 0.5;
  }

  else
  {
    v14 = 0.0;
    v13 = 0.0;
  }

  [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:v13, v14];
  v16 = v15;
  v18 = v17;
  [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:[(_UITransformGestureRecognizer *)self _anchorPoint].f64[0]];
  v20 = v19 - v16;
  v22 = v21 - v18;
  result.y = v22;
  result.x = v20;
  return result;
}

@end