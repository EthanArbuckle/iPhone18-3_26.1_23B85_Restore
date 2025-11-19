@interface VKQuickDynamicAnimation
- (void)onTimerFired:(double)a3;
@end

@implementation VKQuickDynamicAnimation

- (void)onTimerFired:(double)a3
{
  state = self->super.super._state;
  if (state == 3)
  {
LABEL_10:

    [(VKDynamicAnimation *)self stopAnimation:1];
    return;
  }

  if (state == 1)
  {
    if (self->super._resuming)
    {
      self->super._resuming = 0;
      lastTimestamp = a3;
    }

    else
    {
      lastTimestamp = self->super._lastTimestamp;
    }

    self->super._lastTimestamp = a3;
    dynamicStepHandler = self->super._dynamicStepHandler;
    if (dynamicStepHandler)
    {
      if (fmax(lastTimestamp, a3) - lastTimestamp > 0.0 && dynamicStepHandler[2](dynamicStepHandler, a2))
      {
        self->super.super._state = 3;
        goto LABEL_10;
      }
    }
  }
}

@end