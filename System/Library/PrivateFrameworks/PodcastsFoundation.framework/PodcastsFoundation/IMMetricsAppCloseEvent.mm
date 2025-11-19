@interface IMMetricsAppCloseEvent
- (IMMetricsAppCloseEvent)initWithReason:(int64_t)a3;
- (void)setExitTypeWithSuspendReason:(int64_t)a3;
@end

@implementation IMMetricsAppCloseEvent

- (IMMetricsAppCloseEvent)initWithReason:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = IMMetricsAppCloseEvent;
  v4 = [(IMAMSMetricsEvent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IMAMSMetricsEvent *)v4 setEventType:@"app_close"];
    [(IMMetricsAppCloseEvent *)v5 setExitTypeWithSuspendReason:a3];
  }

  return v5;
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

  [(AMSMetricsEvent *)self im_setName:v3];
}

@end