@interface VKNavigationPuckLocationTracingEvent
- (VKNavigationPuckLocationTracingEvent)initWithEventType:(int64_t)a3 timestamp:(double)a4 locationUUID:(id)a5;
@end

@implementation VKNavigationPuckLocationTracingEvent

- (VKNavigationPuckLocationTracingEvent)initWithEventType:(int64_t)a3 timestamp:(double)a4 locationUUID:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = VKNavigationPuckLocationTracingEvent;
  v10 = [(VKNavigationPuckLocationTracingEvent *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_eventType = a3;
    v10->_timestamp = a4;
    objc_storeStrong(&v10->_locationUUID, a5);
    v12 = v11;
  }

  return v11;
}

@end