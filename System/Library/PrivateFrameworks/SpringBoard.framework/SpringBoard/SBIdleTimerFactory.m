@interface SBIdleTimerFactory
+ (id)_attentionAwareTimer;
+ (id)idleTimerForDescriptor:(id)a3 didLogDescriptor:(BOOL *)a4;
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

+ (id)idleTimerForDescriptor:(id)a3 didLogDescriptor:(BOOL *)a4
{
  v6 = a3;
  *a4 = 0;
  v7 = [v6 timerMode];
  if (v7 >= 3)
  {
    if (v7 == 3)
    {
      v8 = objc_alloc_init(SBDisabledIdleTimer);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [a1 _attentionAwareTimer];
    v9 = [(SBDisabledIdleTimer *)v8 descriptor];
    v10 = [v9 isEqual:v6];

    if ((v10 & 1) == 0)
    {
      [(SBDisabledIdleTimer *)v8 setDescriptor:v6];
      v11 = SBLogIdleTimer();
      [v6 logAuditReasons:v11];

      *a4 = 1;
    }
  }

  return v8;
}

void __42__SBIdleTimerFactory__attentionAwareTimer__block_invoke()
{
  v0 = [[SBBacklightIdleTimer alloc] initWithConfigurationIdentifier:@"com.apple.springboard.GlobalBacklightIdleTimer"];
  v1 = _attentionAwareTimer_idleTimer;
  _attentionAwareTimer_idleTimer = v0;
}

@end