@interface VKNavigationPuckLocationTracingEvent
- (VKNavigationPuckLocationTracingEvent)initWithEventType:(int64_t)type timestamp:(double)timestamp locationUUID:(id)d;
@end

@implementation VKNavigationPuckLocationTracingEvent

- (VKNavigationPuckLocationTracingEvent)initWithEventType:(int64_t)type timestamp:(double)timestamp locationUUID:(id)d
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = VKNavigationPuckLocationTracingEvent;
  v10 = [(VKNavigationPuckLocationTracingEvent *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_eventType = type;
    v10->_timestamp = timestamp;
    objc_storeStrong(&v10->_locationUUID, d);
    v12 = v11;
  }

  return v11;
}

@end