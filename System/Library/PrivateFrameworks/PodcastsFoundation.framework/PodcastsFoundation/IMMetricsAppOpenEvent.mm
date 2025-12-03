@interface IMMetricsAppOpenEvent
- (IMMetricsAppOpenEvent)initWithReason:(int64_t)reason;
- (void)setEnterTypeWithLaunchReason:(int64_t)reason;
@end

@implementation IMMetricsAppOpenEvent

- (IMMetricsAppOpenEvent)initWithReason:(int64_t)reason
{
  v7.receiver = self;
  v7.super_class = IMMetricsAppOpenEvent;
  v4 = [(IMAMSMetricsEvent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IMAMSMetricsEvent *)v4 setEventType:@"app_open"];
    [(IMMetricsAppOpenEvent *)v5 setEnterTypeWithLaunchReason:reason];
  }

  return v5;
}

- (void)setEnterTypeWithLaunchReason:(int64_t)reason
{
  if (reason <= 3)
  {
    [(AMSMetricsEvent *)self im_setName:off_1E8569D88[reason]];
  }
}

@end