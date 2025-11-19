@interface IMPageAMSMetricsEvent
- (IMPageAMSMetricsEvent)init;
@end

@implementation IMPageAMSMetricsEvent

- (IMPageAMSMetricsEvent)init
{
  v5.receiver = self;
  v5.super_class = IMPageAMSMetricsEvent;
  v2 = [(IMAMSMetricsEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMAMSMetricsEvent *)v2 setEventType:@"page"];
  }

  return v3;
}

@end