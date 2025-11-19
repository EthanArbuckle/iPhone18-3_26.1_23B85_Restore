@interface SSMetricsExitEvent
- (SSMetricsExitEvent)init;
- (id)description;
- (void)setExitTypeWithSuspendReason:(int64_t)a3;
@end

@implementation SSMetricsExitEvent

- (SSMetricsExitEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsExitEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"exit"];
  }

  return v3;
}

- (void)setExitTypeWithSuspendReason:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = @"taskSwitch";
  }

  else
  {
    v3 = @"quit";
  }

  [(SSMetricsExitEvent *)self setExitType:v3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SSMetricsExitEvent;
  v4 = [(SSMetricsBaseEvent *)&v8 description];
  v5 = [(SSMetricsExitEvent *)self exitType];
  v6 = [v3 stringWithFormat:@"%@: Type: %@", v4, v5];

  return v6;
}

@end