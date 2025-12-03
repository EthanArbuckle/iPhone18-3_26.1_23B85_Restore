@interface PXValueSpringAnimation
+ (double)durationOfSpringAnimationWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping velocity:(double)velocity epsilon:(double)epsilon;
- (PXValueSpringAnimation)initWithDuration:(double)duration currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec;
- (PXValueSpringAnimation)initWithFromValue:(double)value currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec;
- (double)approximateVelocity;
- (double)currentValue;
@end

@implementation PXValueSpringAnimation

- (double)approximateVelocity
{
  [(PXValueAnimation *)self elapsedTime];
  v4 = v3;
  B = self->_B;
  omega0 = self->_omega0;
  v7 = exp(-(omega0 * v3));
  return v7 * -(omega0 * (self->_A + B * v4)) + B * v7;
}

- (double)currentValue
{
  [(PXValueAnimation *)self elapsedTime];
  v4 = self->_A + self->_B * v3;
  v5 = v4 * exp(-(self->_omega0 * v3));
  [(PXValueAnimation *)self spec];
  return v7 * floor(v5 / v7);
}

- (PXValueSpringAnimation)initWithFromValue:(double)value currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = sqrt(spec->stiffness);
  v10 = (v9 + v9) * spec->dampingRatio;
  [objc_opt_class() durationOfSpringAnimationWithMass:1.0 stiffness:spec->stiffness damping:v10 velocity:spec->initialVelocity epsilon:spec->epsilon];
  v12 = v11;
  v13 = fabs(v11) == INFINITY;
  if (v11 > 10.0 || v13)
  {
    v15 = PFUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      stiffness = spec->stiffness;
      initialVelocity = spec->initialVelocity;
      *buf = 134219008;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = 0x3FF0000000000000;
      *&buf[22] = 2048;
      *&buf[24] = stiffness;
      *v23 = 2048;
      *&v23[2] = v10;
      *&v23[10] = 2048;
      *&v23[12] = initialVelocity;
      _os_log_impl(&dword_1B3F73000, v15, OS_LOG_TYPE_DEFAULT, "Got invalid duration:%.2f for spring with mass:%.3f stiffness:%.3f damping:%.3f velocity:%.3f", buf, 0x34u);
    }

    v12 = 1.0;
  }

  v21.receiver = self;
  v21.super_class = PXValueSpringAnimation;
  v18 = *&spec->initialVelocity;
  *v23 = *&spec->stiffness;
  *&v23[16] = v18;
  v24 = *&spec->controlPoint2x;
  v19 = *&spec->curve;
  *buf = *&spec->type;
  *&buf[16] = v19;
  result = [(PXValueAnimation *)&v21 initWithDuration:buf currentMediaTime:v12 spec:time];
  if (result)
  {
    result->_omega0 = sqrt(spec->stiffness);
    result->_A = value;
    result->_B = spec->initialVelocity + result->_omega0 * value;
  }

  return result;
}

- (PXValueSpringAnimation)initWithDuration:(double)duration currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:154 description:@"invalid initializer"];

  abort();
}

+ (double)durationOfSpringAnimationWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping velocity:(double)velocity epsilon:(double)epsilon
{
  v8 = sqrt(mass * stiffness);
  v9 = damping / (v8 + v8);
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  if (v10 < 1.0 && v10 == 0.0)
  {
    return INFINITY;
  }

  v12 = sqrt(stiffness / mass);
  if (v10 >= 1.0)
  {
    v10 = v12 - velocity;
    v15 = exp(-v12 / (v12 - velocity));
    v16 = -1.0 - log(fabs(v12 * v15 * epsilon / v10));
    v14 = -(v12 + v10 * (-1.0 - v16 + (-1.0 / (sqrt(v16 * 0.5) * 0.3361 / (v16 * -0.0042 * exp(sqrt(v16) * -0.0201) + 1.0) + 1.0) + 1.0) * -5.95060994));
    return v14 / (v12 * v10);
  }

  v13 = fabs(-(velocity - v10 * v12) / (v12 * sqrt(1.0 - v10 * v10)));
  if (v13 < 0.00000011920929)
  {
    v14 = log(1.0 / epsilon);
    return v14 / (v12 * v10);
  }

  return fmax(-log(epsilon / (v13 + 1.0)) / (v12 * v10), 0.0);
}

@end