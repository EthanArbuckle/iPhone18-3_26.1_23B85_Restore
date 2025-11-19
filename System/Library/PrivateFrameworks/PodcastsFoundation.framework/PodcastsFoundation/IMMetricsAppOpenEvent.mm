@interface IMMetricsAppOpenEvent
- (IMMetricsAppOpenEvent)initWithReason:(int64_t)a3;
- (void)setEnterTypeWithLaunchReason:(int64_t)a3;
@end

@implementation IMMetricsAppOpenEvent

- (IMMetricsAppOpenEvent)initWithReason:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = IMMetricsAppOpenEvent;
  v4 = [(IMAMSMetricsEvent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IMAMSMetricsEvent *)v4 setEventType:@"app_open"];
    [(IMMetricsAppOpenEvent *)v5 setEnterTypeWithLaunchReason:a3];
  }

  return v5;
}

- (void)setEnterTypeWithLaunchReason:(int64_t)a3
{
  if (a3 <= 3)
  {
    [(AMSMetricsEvent *)self im_setName:off_1E8569D88[a3]];
  }
}

@end