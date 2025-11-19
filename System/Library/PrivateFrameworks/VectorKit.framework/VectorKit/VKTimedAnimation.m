@interface VKTimedAnimation
+ (void)setDragCoefficientGetter:(id)a3;
- (VKTimedAnimation)initWithDuration:(double)a3;
- (VKTimedAnimation)initWithDuration:(double)a3 name:(id)a4;
- (VKTimedAnimation)initWithDuration:(double)a3 priority:(int64_t)a4 name:(id)a5;
- (VKTimedAnimation)initWithName:(id)a3;
- (void)onTimerFired:(double)a3;
- (void)pause;
- (void)resume;
- (void)setDuration:(double)a3;
- (void)setTimingFunction:(id)a3;
- (void)stopAnimation:(BOOL)a3;
@end

@implementation VKTimedAnimation

- (void)onTimerFired:(double)a3
{
  v11.receiver = self;
  v11.super_class = VKTimedAnimation;
  [(VKAnimation *)&v11 onTimerFired:?];
  if (!self->_startTimestampSet)
  {
    self->_startTimestampSet = 1;
    self->_startTimestamp = a3;
    self->_lastTimestamp = a3;
  }

  if (self->_resuming)
  {
    self->_startTimestamp = a3 - self->_lastTimestamp + self->_startTimestamp;
    self->_resuming = 0;
  }

  self->_lastTimestamp = a3;
  duration = self->_duration;
  if (duration <= 0.0)
  {
    v8 = 1;
    v7 = 1.0;
  }

  else
  {
    v6 = (a3 - self->_startTimestamp) / duration;
    v7 = modff(v6, &v10);
    if (v6 >= 1.0 && ![(VKAnimation *)self runsForever])
    {
      v7 = 1.0;
    }

    v8 = v6 >= 1.0;
  }

  (*(self->_timingFunction + 2))(fminf(fmaxf(v7, 0.0), 1.0));
  stepHandler = self->_stepHandler;
  if (stepHandler)
  {
    stepHandler[2]();
  }

  if (v8 && ![(VKAnimation *)self runsForever])
  {
    self->super._state = 3;
  }
}

- (void)resume
{
  self->_resuming = 1;
  v2.receiver = self;
  v2.super_class = VKTimedAnimation;
  [(VKAnimation *)&v2 resume];
}

- (void)pause
{
  self->_resuming = 0;
  v2.receiver = self;
  v2.super_class = VKTimedAnimation;
  [(VKAnimation *)&v2 pause];
}

- (void)stopAnimation:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VKTimedAnimation;
  [(VKAnimation *)&v5 stopAnimation:a3];
  stepHandler = self->_stepHandler;
  self->_stepHandler = 0;

  self->_startTimestampSet = 0;
  self->_resuming = 0;
}

- (VKTimedAnimation)initWithName:(id)a3
{
  v4 = a3;
  v5 = [(VKTimedAnimation *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->super._name;
    v5->super._name = v6;
  }

  return v5;
}

- (VKTimedAnimation)initWithDuration:(double)a3 name:(id)a4
{
  v6 = a4;
  v7 = [(VKTimedAnimation *)self initWithDuration:a3];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->super._name;
    v7->super._name = v8;
  }

  return v7;
}

- (VKTimedAnimation)initWithDuration:(double)a3
{
  v10.receiver = self;
  v10.super_class = VKTimedAnimation;
  v4 = [(VKTimedAnimation *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(VKTimedAnimation *)v4 setDuration:a3];
    v6 = [VKAnimationCurveEaseInOut copy];
    timingFunction = v5->_timingFunction;
    v5->_timingFunction = v6;

    v8 = v5;
  }

  return v5;
}

- (VKTimedAnimation)initWithDuration:(double)a3 priority:(int64_t)a4 name:(id)a5
{
  result = [(VKTimedAnimation *)self initWithDuration:a5 name:a3];
  if (result)
  {
    result->super._priority = a4;
  }

  return result;
}

- (void)setTimingFunction:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  timingFunction = self->_timingFunction;
  self->_timingFunction = v4;
}

- (void)setDuration:(double)a3
{
  v8 = +[VKDebugSettings sharedSettings];
  [v8 animationTimeMultiplier];
  v6 = v5;
  if (sDragCoefficientGetter)
  {
    v7 = (*(sDragCoefficientGetter + 16))();
  }

  else
  {
    v7 = 1.0;
  }

  self->_duration = v6 * (a3 * v7);
}

+ (void)setDragCoefficientGetter:(id)a3
{
  v5 = a3;
  v3 = [v5 copy];
  v4 = sDragCoefficientGetter;
  sDragCoefficientGetter = v3;
}

@end