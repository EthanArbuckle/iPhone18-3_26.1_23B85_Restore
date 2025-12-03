@interface VKTimedAnimation
+ (void)setDragCoefficientGetter:(id)getter;
- (VKTimedAnimation)initWithDuration:(double)duration;
- (VKTimedAnimation)initWithDuration:(double)duration name:(id)name;
- (VKTimedAnimation)initWithDuration:(double)duration priority:(int64_t)priority name:(id)name;
- (VKTimedAnimation)initWithName:(id)name;
- (void)onTimerFired:(double)fired;
- (void)pause;
- (void)resume;
- (void)setDuration:(double)duration;
- (void)setTimingFunction:(id)function;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation VKTimedAnimation

- (void)onTimerFired:(double)fired
{
  v11.receiver = self;
  v11.super_class = VKTimedAnimation;
  [(VKAnimation *)&v11 onTimerFired:?];
  if (!self->_startTimestampSet)
  {
    self->_startTimestampSet = 1;
    self->_startTimestamp = fired;
    self->_lastTimestamp = fired;
  }

  if (self->_resuming)
  {
    self->_startTimestamp = fired - self->_lastTimestamp + self->_startTimestamp;
    self->_resuming = 0;
  }

  self->_lastTimestamp = fired;
  duration = self->_duration;
  if (duration <= 0.0)
  {
    v8 = 1;
    v7 = 1.0;
  }

  else
  {
    v6 = (fired - self->_startTimestamp) / duration;
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

- (void)stopAnimation:(BOOL)animation
{
  v5.receiver = self;
  v5.super_class = VKTimedAnimation;
  [(VKAnimation *)&v5 stopAnimation:animation];
  stepHandler = self->_stepHandler;
  self->_stepHandler = 0;

  self->_startTimestampSet = 0;
  self->_resuming = 0;
}

- (VKTimedAnimation)initWithName:(id)name
{
  nameCopy = name;
  v5 = [(VKTimedAnimation *)self init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->super._name;
    v5->super._name = v6;
  }

  return v5;
}

- (VKTimedAnimation)initWithDuration:(double)duration name:(id)name
{
  nameCopy = name;
  v7 = [(VKTimedAnimation *)self initWithDuration:duration];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->super._name;
    v7->super._name = v8;
  }

  return v7;
}

- (VKTimedAnimation)initWithDuration:(double)duration
{
  v10.receiver = self;
  v10.super_class = VKTimedAnimation;
  v4 = [(VKTimedAnimation *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(VKTimedAnimation *)v4 setDuration:duration];
    v6 = [VKAnimationCurveEaseInOut copy];
    timingFunction = v5->_timingFunction;
    v5->_timingFunction = v6;

    v8 = v5;
  }

  return v5;
}

- (VKTimedAnimation)initWithDuration:(double)duration priority:(int64_t)priority name:(id)name
{
  result = [(VKTimedAnimation *)self initWithDuration:name name:duration];
  if (result)
  {
    result->super._priority = priority;
  }

  return result;
}

- (void)setTimingFunction:(id)function
{
  functionCopy = function;
  v4 = [functionCopy copy];
  timingFunction = self->_timingFunction;
  self->_timingFunction = v4;
}

- (void)setDuration:(double)duration
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

  self->_duration = v6 * (duration * v7);
}

+ (void)setDragCoefficientGetter:(id)getter
{
  getterCopy = getter;
  v3 = [getterCopy copy];
  v4 = sDragCoefficientGetter;
  sDragCoefficientGetter = v3;
}

@end