@interface BKMousePointerScrollAnimationDriver
- (BKMousePointerScrollAnimationDriver)initWithRelativeTranslation:(CGPoint)a3 initialVelocity:(CGPoint)a4 decelerationRate:(double)a5;
- (BOOL)isComplete;
- (CGPoint)currentTranslation;
- (void)applyForTime:(double)a3;
@end

@implementation BKMousePointerScrollAnimationDriver

- (CGPoint)currentTranslation
{
  x = self->_currentTranslation.x;
  y = self->_currentTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isComplete
{
  p_currentTranslation = &self->_currentTranslation;
  x = self->_currentTranslation.x;
  p_target = &self->_target;
  v5 = self->_target.x;
  v6 = BSFloatApproximatelyEqualToFloat();
  if (v6)
  {
    y = p_currentTranslation->y;
    v8 = p_target->y;

    LOBYTE(v6) = BSFloatApproximatelyEqualToFloat();
  }

  return v6;
}

- (void)applyForTime:(double)a3
{
  v4 = (a3 - self->_elapsedTime) * 1000.0;
  self->_elapsedTime = a3;
  if ((BSFloatIsZero() & 1) == 0)
  {
    v5 = 1.0 - pow(self->_decelerationRate, v4);
    v6 = vmlaq_n_f64(self->_intermediate, vsubq_f64(self->_target, self->_intermediate), v5);
    self->_currentTranslation = vmlaq_n_f64(self->_currentTranslation, vsubq_f64(v6, self->_currentTranslation), v5);
    self->_intermediate = v6;
  }
}

- (BKMousePointerScrollAnimationDriver)initWithRelativeTranslation:(CGPoint)a3 initialVelocity:(CGPoint)a4 decelerationRate:(double)a5
{
  y = a4.y;
  x = a4.x;
  v5 = a3.y;
  v6 = a3.x;
  v12.receiver = self;
  v12.super_class = BKMousePointerScrollAnimationDriver;
  result = [(BKMousePointerAnimationDriver *)&v12 initWithRelativeTranslation:?];
  if (result)
  {
    v8.f64[0] = x;
    result->_initialVelocity.x = x;
    result->_initialVelocity.y = y;
    v8.f64[1] = y;
    result->_intermediate = vaddq_f64(vdivq_f64(vmulq_n_f64(vdivq_f64(v8, vdupq_n_s64(0x408F400000000000uLL)), a5), vdupq_lane_s64(COERCE__INT64(1.0 - a5), 0)), 0);
    result->_target.x = v6;
    result->_target.y = v5;
    result->_decelerationRate = a5;
  }

  return result;
}

@end