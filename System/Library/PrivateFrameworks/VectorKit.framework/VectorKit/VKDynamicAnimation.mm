@interface VKDynamicAnimation
- (VKDynamicAnimation)init;
- (void)onTimerFired:(double)fired;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation VKDynamicAnimation

- (void)onTimerFired:(double)fired
{
  state = self->super._state;
  if (state == 1)
  {
    if (self->_resuming)
    {
      self->_resuming = 0;
      lastTimestamp = fired;
    }

    else
    {
      lastTimestamp = self->_lastTimestamp;
    }

    self->_lastTimestamp = fired;
    dynamicStepHandler = self->_dynamicStepHandler;
    if (dynamicStepHandler && fmax(lastTimestamp, fired) - lastTimestamp > 0.0 && dynamicStepHandler[2](dynamicStepHandler, a2))
    {
      self->super._state = 3;
    }
  }

  else if (state == 3)
  {

    [(VKDynamicAnimation *)self stopAnimation:1, fired];
  }
}

- (void)stopAnimation:(BOOL)animation
{
  v4.receiver = self;
  v4.super_class = VKDynamicAnimation;
  [(VKAnimation *)&v4 stopAnimation:animation];
  self->_resuming = 0;
}

- (VKDynamicAnimation)init
{
  v3.receiver = self;
  v3.super_class = VKDynamicAnimation;
  result = [(VKDynamicAnimation *)&v3 init];
  if (result)
  {
    result->_resuming = 1;
    result->super._state = 0;
  }

  return result;
}

@end