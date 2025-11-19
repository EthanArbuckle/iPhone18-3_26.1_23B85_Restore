@interface IMAMSMetricsEvent
- (IMAMSMetricsEvent)init;
@end

@implementation IMAMSMetricsEvent

- (IMAMSMetricsEvent)init
{
  v3 = [MEMORY[0x1E698CA08] im_defaultTopicForEvents];
  v6.receiver = self;
  v6.super_class = IMAMSMetricsEvent;
  v4 = [(IMAMSMetricsEvent *)&v6 initWithTopic:v3];

  return v4;
}

@end