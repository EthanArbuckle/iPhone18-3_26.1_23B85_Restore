@interface PXValueDefaultAnimation
- (PXValueDefaultAnimation)initWithDuration:(double)duration currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec;
- (PXValueDefaultAnimation)initWithFromValue:(double)value currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:128 description:@"Code which should be unreachable has been reached"];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:103 description:@"Code which should be unreachable has been reached"];

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

- (PXValueDefaultAnimation)initWithFromValue:(double)value currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec
{
  duration = spec->duration;
  v13.receiver = self;
  v13.super_class = PXValueDefaultAnimation;
  v8 = *&spec->curve;
  v9 = *&spec->initialVelocity;
  v11[2] = *&spec->stiffness;
  v11[3] = v9;
  v12 = *&spec->controlPoint2x;
  v11[0] = *&spec->type;
  v11[1] = v8;
  result = [(PXValueAnimation *)&v13 initWithDuration:v11 currentMediaTime:duration spec:time];
  if (result)
  {
    result->_initialValue = value;
    result->_curve = spec->curve;
  }

  return result;
}

- (PXValueDefaultAnimation)initWithDuration:(double)duration currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:86 description:{@"%s is not available as initializer", "-[PXValueDefaultAnimation initWithDuration:currentMediaTime:spec:]"}];

  abort();
}

@end