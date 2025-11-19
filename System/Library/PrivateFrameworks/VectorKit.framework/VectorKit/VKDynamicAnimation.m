@interface VKDynamicAnimation
- (VKDynamicAnimation)init;
- (void)onTimerFired:(double)a3;
- (void)stopAnimation:(BOOL)a3;
@end

@implementation VKDynamicAnimation

- (void)onTimerFired:(double)a3
{
  state = self->super._state;
  if (state == 1)
  {
    if (self->_resuming)
    {
      self->_resuming = 0;
      lastTimestamp = a3;
    }

    else
    {
      lastTimestamp = self->_lastTimestamp;
    }

    self->_lastTimestamp = a3;
    dynamicStepHandler = self->_dynamicStepHandler;
    if (dynamicStepHandler && fmax(lastTimestamp, a3) - lastTimestamp > 0.0 && dynamicStepHandler[2](dynamicStepHandler, a2))
    {
      self->super._state = 3;
    }
  }

  else if (state == 3)
  {

    [(VKDynamicAnimation *)self stopAnimation:1, a3];
  }
}

- (void)stopAnimation:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VKDynamicAnimation;
  [(VKAnimation *)&v4 stopAnimation:a3];
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