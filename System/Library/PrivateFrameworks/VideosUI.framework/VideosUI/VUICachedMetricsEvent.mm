@interface VUICachedMetricsEvent
- (VUICachedMetricsEvent)initWithEventType:(id)type eventData:(id)data;
@end

@implementation VUICachedMetricsEvent

- (VUICachedMetricsEvent)initWithEventType:(id)type eventData:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = VUICachedMetricsEvent;
  v8 = [(VUICachedMetricsEvent *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    eventType = v8->_eventType;
    v8->_eventType = v9;

    v11 = [dataCopy copy];
    eventData = v8->_eventData;
    v8->_eventData = v11;
  }

  return v8;
}

@end