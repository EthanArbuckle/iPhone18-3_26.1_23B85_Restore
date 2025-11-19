@interface VKSpringAnimation
- (BOOL)_calculateFractionForTimeElapsed:(double)a3 result:(float *)a4;
- (VKSpringAnimation)initWithTension:(float)a3 friction:(float)a4 name:(id)a5;
- (void)onTimerFired:(double)a3;
- (void)pause;
- (void)resume;
- (void)stopAnimation:(BOOL)a3;
@end

@implementation VKSpringAnimation

- (void)onTimerFired:(double)a3
{
  v9.receiver = self;
  v9.super_class = VKSpringAnimation;
  [(VKAnimation *)&v9 onTimerFired:?];
  if (self->_startTimestampSet)
  {
    lastTimestamp = self->_lastTimestamp;
  }

  else
  {
    self->_startTimestampSet = 1;
    self->_startTimestamp = a3;
    self->_lastTimestamp = a3;
    lastTimestamp = a3;
  }

  if (self->_resuming)
  {
    self->_startTimestamp = a3 - lastTimestamp + self->_startTimestamp;
    self->_resuming = 0;
    lastTimestamp = a3;
  }

  self->_lastTimestamp = a3;
  v8 = 0.0;
  v6 = [(VKSpringAnimation *)self _calculateFractionForTimeElapsed:&v8 result:a3 - lastTimestamp];
  stepHandler = self->_stepHandler;
  if (stepHandler)
  {
    stepHandler[2](v8);
  }

  if (v6)
  {
    self->super._state = 3;
  }
}

- (BOOL)_calculateFractionForTimeElapsed:(double)a3 result:(float *)a4
{
  v6 = self->_lastFraction + -1.0;
  lastVelocity = self->_lastVelocity;
  friction = self->_friction;
  tension = self->_tension;
  if ((fabsf((friction * lastVelocity) / tension) + fabsf(v6)) < 0.001)
  {
    *a4 = 1.0;
    return 1;
  }

  v12 = sqrtf(tension);
  v13 = friction * 0.5;
  if ((friction * 0.5) >= v12)
  {
    if ((friction * 0.5) <= v12)
    {
      v30 = -v13;
      v31 = exp(v30 * a3);
      v32 = (lastVelocity + (v13 * v6));
      v33 = v6 + v32 * a3;
      v20 = v33 * v31;
      v29 = (v32 + v33 * v30) * v31;
      goto LABEL_9;
    }

    v16 = sqrtf(-(tension - (v13 * v13)));
    v38 = -v13;
    v15 = exp(v38 * a3);
    v23 = v6;
    v24 = v16 * a3;
    v25 = cosh(v24);
    v26 = (lastVelocity + (v13 * v6)) / v16;
    v27 = sinh(v24);
    v28 = v27 * v26 + v25 * v23;
    v20 = v28 * v15;
    v21 = v25 * v26 + v27 * v23;
    v22 = v28 * v38;
  }

  else
  {
    v14 = sqrtf(tension - (v13 * v13));
    v37 = -v13;
    v15 = exp(v37 * a3);
    v16 = v14;
    v17 = __sincos_stret(v14 * a3);
    v18 = ((lastVelocity + (v13 * v6)) / v14);
    v19 = v17.__sinval * v18 + v17.__cosval * v6;
    v20 = v19 * v15;
    v21 = -(v17.__sinval * v6 - v17.__cosval * v18);
    v22 = v19 * v37;
  }

  v29 = (v22 + v21 * v16) * v15;
LABEL_9:
  v34 = v20;
  v35 = v29;
  v36 = v34 + 1.0;
  self->_lastFraction = v36;
  self->_lastVelocity = v35;
  *a4 = v36;
  return (fabsf((self->_friction * self->_lastVelocity) / self->_tension) + fabsf(self->_lastFraction + -1.0)) < 0.001;
}

- (void)resume
{
  self->_resuming = 1;
  v2.receiver = self;
  v2.super_class = VKSpringAnimation;
  [(VKAnimation *)&v2 resume];
}

- (void)pause
{
  self->_resuming = 0;
  v2.receiver = self;
  v2.super_class = VKSpringAnimation;
  [(VKAnimation *)&v2 pause];
}

- (void)stopAnimation:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VKSpringAnimation;
  [(VKAnimation *)&v5 stopAnimation:a3];
  stepHandler = self->_stepHandler;
  self->_stepHandler = 0;
}

- (VKSpringAnimation)initWithTension:(float)a3 friction:(float)a4 name:(id)a5
{
  v11.receiver = self;
  v11.super_class = VKSpringAnimation;
  v7 = [(VKAnimation *)&v11 initWithName:a5];
  v8 = v7;
  if (v7)
  {
    v7->_tension = a3;
    v7->_friction = a4;
    v9 = v7;
  }

  return v8;
}

@end