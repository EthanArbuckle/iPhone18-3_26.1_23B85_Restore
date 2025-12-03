@interface SBIdleTimerFactory
+ (id)_attentionAwareTimer;
+ (id)idleTimerForDescriptor:(id)descriptor didLogDescriptor:(BOOL *)logDescriptor;
@end

@implementation SBIdleTimerFactory

+ (id)_attentionAwareTimer
{
  if (_attentionAwareTimer_onceToken != -1)
  {
    +[SBIdleTimerFactory _attentionAwareTimer];
  }

  v3 = _attentionAwareTimer_idleTimer;

  return v3;
}

+ (id)idleTimerForDescriptor:(id)descriptor didLogDescriptor:(BOOL *)logDescriptor
{
  descriptorCopy = descriptor;
  *logDescriptor = 0;
  timerMode = [descriptorCopy timerMode];
  if (timerMode >= 3)
  {
    if (timerMode == 3)
    {
      _attentionAwareTimer = objc_alloc_init(SBDisabledIdleTimer);
    }

    else
    {
      _attentionAwareTimer = 0;
    }
  }

  else
  {
    _attentionAwareTimer = [self _attentionAwareTimer];
    descriptor = [(SBDisabledIdleTimer *)_attentionAwareTimer descriptor];
    v10 = [descriptor isEqual:descriptorCopy];

    if ((v10 & 1) == 0)
    {
      [(SBDisabledIdleTimer *)_attentionAwareTimer setDescriptor:descriptorCopy];
      v11 = SBLogIdleTimer();
      [descriptorCopy logAuditReasons:v11];

      *logDescriptor = 1;
    }
  }

  return _attentionAwareTimer;
}

void __42__SBIdleTimerFactory__attentionAwareTimer__block_invoke()
{
  v0 = [[SBBacklightIdleTimer alloc] initWithConfigurationIdentifier:@"com.apple.springboard.GlobalBacklightIdleTimer"];
  v1 = _attentionAwareTimer_idleTimer;
  _attentionAwareTimer_idleTimer = v0;
}

@end