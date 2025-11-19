@interface VUICachedMetricsEvent
- (VUICachedMetricsEvent)initWithEventType:(id)a3 eventData:(id)a4;
@end

@implementation VUICachedMetricsEvent

- (VUICachedMetricsEvent)initWithEventType:(id)a3 eventData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VUICachedMetricsEvent;
  v8 = [(VUICachedMetricsEvent *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    eventType = v8->_eventType;
    v8->_eventType = v9;

    v11 = [v7 copy];
    eventData = v8->_eventData;
    v8->_eventData = v11;
  }

  return v8;
}

@end