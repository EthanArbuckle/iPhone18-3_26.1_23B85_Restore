@interface PXValueAnimation
- (BOOL)completed;
- (PXValueAnimation)init;
- (PXValueAnimation)initWithDuration:(double)duration currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec;
- (PXValueAnimationSpec)spec;
- (double)approximateVelocity;
- (double)currentValue;
- (double)remainingTime;
- (double)valueForProgress:(double)progress;
- (id)description;
@end

@implementation PXValueAnimation

- (PXValueAnimationSpec)spec
{
  v3 = *&self[1].duration;
  *&retstr->stiffness = *&self->controlPoint2x;
  *&retstr->initialVelocity = v3;
  *&retstr->controlPoint2x = self[1].epsilon;
  v4 = *&self->initialVelocity;
  *&retstr->type = *&self->stiffness;
  *&retstr->curve = v4;
  return self;
}

- (double)valueForProgress:(double)progress
{
  [(PXValueAnimation *)self duration];
  v6 = progress / v5;
  [(PXValueAnimation *)self startTime];
  [(PXValueAnimation *)self setCurrentMediaTime:v7 + v6];

  [(PXValueAnimation *)self currentValue];
  return result;
}

- (BOOL)completed
{
  [(PXValueAnimation *)self elapsedTime];
  v4 = v3;
  [(PXValueAnimation *)self duration];
  return v4 > v5;
}

- (double)approximateVelocity
{
  [(PXValueAnimation *)self currentMediaTime];
  v4 = v3;
  [(PXValueAnimation *)self currentValue];
  v6 = v5;
  [(PXValueAnimation *)self setCurrentMediaTime:v4 + 0.00833333333];
  [(PXValueAnimation *)self currentValue];
  v8 = v7;
  [(PXValueAnimation *)self setCurrentMediaTime:v4];
  return (v8 - v6) / (v4 + 0.00833333333 - v4);
}

- (double)currentValue
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:52 description:@"concrete subclass must implement"];

  abort();
}

- (double)remainingTime
{
  [(PXValueAnimation *)self duration];
  v4 = v3;
  [(PXValueAnimation *)self elapsedTime];
  return fmax(v4 - v5, 0.0);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXValueAnimation *)self currentValue];
  v7 = v6;
  [(PXValueAnimation *)self duration];
  v9 = [v3 stringWithFormat:@"<%@:%p currentValue:%.2f duration:%.2f>", v5, self, v7, v8];;

  return v9;
}

- (PXValueAnimation)initWithDuration:(double)duration currentMediaTime:(double)time spec:(PXValueAnimationSpec *)spec
{
  v12.receiver = self;
  v12.super_class = PXValueAnimation;
  result = [(PXValueAnimation *)&v12 init];
  if (result)
  {
    result->_startTime = time;
    result->_currentMediaTime = time;
    result->_duration = duration;
    *&result->_spec.type = *&spec->type;
    v9 = *&spec->curve;
    v10 = *&spec->stiffness;
    v11 = *&spec->initialVelocity;
    *&result->_spec.controlPoint2x = *&spec->controlPoint2x;
    *&result->_spec.stiffness = v10;
    *&result->_spec.initialVelocity = v11;
    *&result->_spec.curve = v9;
  }

  return result;
}

- (PXValueAnimation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXValueAnimation.m" lineNumber:24 description:@"invalid initializer"];

  abort();
}

@end