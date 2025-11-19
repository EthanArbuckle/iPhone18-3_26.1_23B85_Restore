@interface PXCubicBezierAnimation
- (PXCubicBezierAnimation)initWithDuration:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5;
- (PXCubicBezierAnimation)initWithFromValue:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5;
- (double)currentValue;
@end

@implementation PXCubicBezierAnimation

- (double)currentValue
{
  [(PXValueAnimation *)self elapsedTime];
  v4 = v3;
  [(PXValueAnimation *)self duration];
  v6 = fmax(fmin(v4 / v5, 1.0), 0.0);
  *&v6 = v6;
  [(CAMediaTimingFunction *)self->_mediaTimingFunction _solveForInput:v6];
  return self->_initialValue * (1.0 - v7);
}

- (PXCubicBezierAnimation)initWithFromValue:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5
{
  duration = a5->duration;
  v21.receiver = self;
  v21.super_class = PXCubicBezierAnimation;
  v8 = *&a5->curve;
  v9 = *&a5->initialVelocity;
  v19[2] = *&a5->stiffness;
  v19[3] = v9;
  v20 = *&a5->controlPoint2x;
  v19[0] = *&a5->type;
  v19[1] = v8;
  v10 = [(PXValueAnimation *)&v21 initWithDuration:v19 currentMediaTime:duration spec:a4];
  v15 = v10;
  if (v10)
  {
    v10->_initialValue = a3;
    *&v11 = a5->controlPoint1x;
    *&v12 = a5->controlPoint1y;
    *&v13 = a5->controlPoint2x;
    *&v14 = a5->controlPoint2y;
    v16 = [MEMORY[0x1E69793D0] functionWithControlPoints:v11 :v12 :v13 :v14];
    mediaTimingFunction = v15->_mediaTimingFunction;
    v15->_mediaTimingFunction = v16;
  }

  return v15;
}

- (PXCubicBezierAnimation)initWithDuration:(double)a3 currentMediaTime:(double)a4 spec:(PXValueAnimationSpec *)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:239 description:{@"%s is not available as initializer", "-[PXCubicBezierAnimation initWithDuration:currentMediaTime:spec:]"}];

  abort();
}

@end