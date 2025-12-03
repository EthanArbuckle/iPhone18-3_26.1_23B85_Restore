@interface BKMousePointerScrollAnimationDriver
- (BKMousePointerScrollAnimationDriver)initWithRelativeTranslation:(CGPoint)translation initialVelocity:(CGPoint)velocity decelerationRate:(double)rate;
- (BOOL)isComplete;
- (CGPoint)currentTranslation;
- (void)applyForTime:(double)time;
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

- (void)applyForTime:(double)time
{
  v4 = (time - self->_elapsedTime) * 1000.0;
  self->_elapsedTime = time;
  if ((BSFloatIsZero() & 1) == 0)
  {
    v5 = 1.0 - pow(self->_decelerationRate, v4);
    v6 = vmlaq_n_f64(self->_intermediate, vsubq_f64(self->_target, self->_intermediate), v5);
    self->_currentTranslation = vmlaq_n_f64(self->_currentTranslation, vsubq_f64(v6, self->_currentTranslation), v5);
    self->_intermediate = v6;
  }
}

- (BKMousePointerScrollAnimationDriver)initWithRelativeTranslation:(CGPoint)translation initialVelocity:(CGPoint)velocity decelerationRate:(double)rate
{
  y = velocity.y;
  x = velocity.x;
  v5 = translation.y;
  v6 = translation.x;
  v12.receiver = self;
  v12.super_class = BKMousePointerScrollAnimationDriver;
  result = [(BKMousePointerAnimationDriver *)&v12 initWithRelativeTranslation:?];
  if (result)
  {
    v8.f64[0] = x;
    result->_initialVelocity.x = x;
    result->_initialVelocity.y = y;
    v8.f64[1] = y;
    result->_intermediate = vaddq_f64(vdivq_f64(vmulq_n_f64(vdivq_f64(v8, vdupq_n_s64(0x408F400000000000uLL)), rate), vdupq_lane_s64(COERCE__INT64(1.0 - rate), 0)), 0);
    result->_target.x = v6;
    result->_target.y = v5;
    result->_decelerationRate = rate;
  }

  return result;
}

@end