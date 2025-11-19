@interface SiriIntentEvent
- (SiriIntentEvent)initWithIntentId:(id)a3 eventType:(int64_t)a4 eventData:(id)a5 createdAt:(id)a6;
@end

@implementation SiriIntentEvent

- (SiriIntentEvent)initWithIntentId:(id)a3 eventType:(int64_t)a4 eventData:(id)a5 createdAt:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = SiriIntentEvent;
  v14 = [(SiriIntentEvent *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_intentId, a3);
    v15->_eventType = a4;
    v16 = [v12 copy];
    eventData = v15->_eventData;
    v15->_eventData = v16;

    objc_storeStrong(&v15->_createdAt, a6);
  }

  return v15;
}

@end