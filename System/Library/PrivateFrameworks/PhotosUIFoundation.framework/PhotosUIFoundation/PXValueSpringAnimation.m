@interface PXValueSpringAnimation
+ (double)durationOfSpringAnimationWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 velocity:(double)a6 epsilon:(double)a7;
- (PXValueSpringAnimation)initWithDuration:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5;
- (PXValueSpringAnimation)initWithFromValue:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5;
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

- (PXValueSpringAnimation)initWithFromValue:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = sqrt(a5->stiffness);
  v10 = (v9 + v9) * a5->dampingRatio;
  [objc_opt_class() durationOfSpringAnimationWithMass:1.0 stiffness:a5->stiffness damping:v10 velocity:a5->initialVelocity epsilon:a5->epsilon];
  v12 = v11;
  v13 = fabs(v11) == INFINITY;
  if (v11 > 10.0 || v13)
  {
    v15 = PFUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      stiffness = a5->stiffness;
      initialVelocity = a5->initialVelocity;
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
  v18 = *&a5->initialVelocity;
  *v23 = *&a5->stiffness;
  *&v23[16] = v18;
  v24 = *&a5->controlPoint2x;
  v19 = *&a5->curve;
  *buf = *&a5->type;
  *&buf[16] = v19;
  result = [(PXValueAnimation *)&v21 initWithDuration:buf currentMediaTime:v12 spec:a4];
  if (result)
  {
    result->_omega0 = sqrt(a5->stiffness);
    result->_A = a3;
    result->_B = a5->initialVelocity + result->_omega0 * a3;
  }

  return result;
}

- (PXValueSpringAnimation)initWithDuration:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:154 description:@"invalid initializer"];

  abort();
}

+ (double)durationOfSpringAnimationWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 velocity:(double)a6 epsilon:(double)a7
{
  v8 = sqrt(a3 * a4);
  v9 = a5 / (v8 + v8);
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

  v12 = sqrt(a4 / a3);
  if (v10 >= 1.0)
  {
    v10 = v12 - a6;
    v15 = exp(-v12 / (v12 - a6));
    v16 = -1.0 - log(fabs(v12 * v15 * a7 / v10));
    v14 = -(v12 + v10 * (-1.0 - v16 + (-1.0 / (sqrt(v16 * 0.5) * 0.3361 / (v16 * -0.0042 * exp(sqrt(v16) * -0.0201) + 1.0) + 1.0) + 1.0) * -5.95060994));
    return v14 / (v12 * v10);
  }

  v13 = fabs(-(a6 - v10 * v12) / (v12 * sqrt(1.0 - v10 * v10)));
  if (v13 < 0.00000011920929)
  {
    v14 = log(1.0 / a7);
    return v14 / (v12 * v10);
  }

  return fmax(-log(a7 / (v13 + 1.0)) / (v12 * v10), 0.0);
}

@end