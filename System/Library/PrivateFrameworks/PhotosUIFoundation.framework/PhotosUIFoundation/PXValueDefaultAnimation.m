@interface PXValueDefaultAnimation
- (PXValueDefaultAnimation)initWithDuration:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5;
- (PXValueDefaultAnimation)initWithFromValue:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5;
- (double)approximateVelocity;
- (double)currentValue;
@end

@implementation PXValueDefaultAnimation

- (double)approximateVelocity
{
  [(PXValueAnimation *)self duration];
  v5 = v4;
  [(PXValueAnimation *)self elapsedTime];
  v7 = fmin(v6 / v5, 1.0);
  v8 = 0.0;
  v9 = fmax(v7, 0.0);
  curve = self->_curve;
  if (curve <= 2)
  {
    if (curve == 1)
    {
      v8 = 1.0;
      return -(v8 * self->_initialValue) / v5;
    }

    if (curve == 2)
    {
      v8 = v9 + v9;
      return -(v8 * self->_initialValue) / v5;
    }

    if (curve)
    {
      return -(v8 * self->_initialValue) / v5;
    }

LABEL_15:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:128 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (curve == 3)
  {
    v8 = 1.0 - v9 + 1.0 - v9;
    return -(v8 * self->_initialValue) / v5;
  }

  if (curve != 4)
  {
    if (curve != 5)
    {
      return -(v8 * self->_initialValue) / v5;
    }

    goto LABEL_15;
  }

  v11 = 1.0 - v9;
  if (v9 < 0.5)
  {
    v11 = v9;
  }

  v8 = v11 * 4.0;
  return -(v8 * self->_initialValue) / v5;
}

- (double)currentValue
{
  [(PXValueAnimation *)self elapsedTime];
  v5 = v4;
  [(PXValueAnimation *)self duration];
  v7 = fmax(fmin(v5 / v6, 1.0), 0.0);
  curve = self->_curve;
  if (curve <= 2)
  {
    if (curve == 2)
    {
      v7 = v7 * v7;
      return (1.0 - v7) * self->_initialValue;
    }

    if (curve)
    {
      return (1.0 - v7) * self->_initialValue;
    }

LABEL_13:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:103 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (curve == 3)
  {
    v7 = v7 * (2.0 - v7);
    return (1.0 - v7) * self->_initialValue;
  }

  if (curve != 4)
  {
    if (curve != 5)
    {
      return (1.0 - v7) * self->_initialValue;
    }

    goto LABEL_13;
  }

  if (v7 >= 0.5)
  {
    v7 = (v7 * -2.0 + 4.0) * v7 + -1.0;
  }

  else
  {
    v7 = v7 * (v7 + v7);
  }

  return (1.0 - v7) * self->_initialValue;
}

- (PXValueDefaultAnimation)initWithFromValue:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5
{
  duration = a5->duration;
  v13.receiver = self;
  v13.super_class = PXValueDefaultAnimation;
  v8 = *&a5->curve;
  v9 = *&a5->initialVelocity;
  v11[2] = *&a5->stiffness;
  v11[3] = v9;
  v12 = *&a5->controlPoint2x;
  v11[0] = *&a5->type;
  v11[1] = v8;
  result = [(PXValueAnimation *)&v13 initWithDuration:v11 currentMediaTime:duration spec:a4];
  if (result)
  {
    result->_initialValue = a3;
    result->_curve = a5->curve;
  }

  return result;
}

- (PXValueDefaultAnimation)initWithDuration:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:86 description:{@"%s is not available as initializer", "-[PXValueDefaultAnimation initWithDuration:currentMediaTime:spec:]"}];

  abort();
}

@end