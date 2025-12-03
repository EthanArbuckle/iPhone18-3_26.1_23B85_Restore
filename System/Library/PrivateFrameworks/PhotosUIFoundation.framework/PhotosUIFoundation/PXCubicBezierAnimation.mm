@interface PXCubicBezierAnimation
- (PXCubicBezierAnimation)initWithDuration:(double)duration currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec;
- (PXCubicBezierAnimation)initWithFromValue:(double)value currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec;
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

- (PXCubicBezierAnimation)initWithFromValue:(double)value currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec
{
  duration = spec->duration;
  v21.receiver = self;
  v21.super_class = PXCubicBezierAnimation;
  v8 = *&spec->curve;
  v9 = *&spec->initialVelocity;
  v19[2] = *&spec->stiffness;
  v19[3] = v9;
  v20 = *&spec->controlPoint2x;
  v19[0] = *&spec->type;
  v19[1] = v8;
  v10 = [(PXValueAnimation *)&v21 initWithDuration:v19 currentMediaTime:duration spec:time];
  v15 = v10;
  if (v10)
  {
    v10->_initialValue = value;
    *&v11 = spec->controlPoint1x;
    *&v12 = spec->controlPoint1y;
    *&v13 = spec->controlPoint2x;
    *&v14 = spec->controlPoint2y;
    v16 = [MEMORY[0x1E69793D0] functionWithControlPoints:v11 :v12 :v13 :v14];
    mediaTimingFunction = v15->_mediaTimingFunction;
    v15->_mediaTimingFunction = v16;
  }

  return v15;
}

- (PXCubicBezierAnimation)initWithDuration:(double)duration currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:239 description:{@"%s is not available as initializer", "-[PXCubicBezierAnimation initWithDuration:currentMediaTime:spec:]"}];

  abort();
}

@end