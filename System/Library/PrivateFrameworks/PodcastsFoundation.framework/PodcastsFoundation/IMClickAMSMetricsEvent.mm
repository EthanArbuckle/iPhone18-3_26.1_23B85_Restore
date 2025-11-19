@interface IMClickAMSMetricsEvent
- (IMClickAMSMetricsEvent)init;
@end

@implementation IMClickAMSMetricsEvent

- (IMClickAMSMetricsEvent)init
{
  v5.receiver = self;
  v5.super_class = IMClickAMSMetricsEvent;
  v2 = [(IMAMSMetricsEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMAMSMetricsEvent *)v2 setEventType:@"click"];
  }

  return v3;
}

@end