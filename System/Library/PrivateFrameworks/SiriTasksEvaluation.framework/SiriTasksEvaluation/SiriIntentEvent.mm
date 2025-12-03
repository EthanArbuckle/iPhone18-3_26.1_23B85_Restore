@interface SiriIntentEvent
- (SiriIntentEvent)initWithIntentId:(id)id eventType:(int64_t)type eventData:(id)data createdAt:(id)at;
@end

@implementation SiriIntentEvent

- (SiriIntentEvent)initWithIntentId:(id)id eventType:(int64_t)type eventData:(id)data createdAt:(id)at
{
  idCopy = id;
  dataCopy = data;
  atCopy = at;
  v19.receiver = self;
  v19.super_class = SiriIntentEvent;
  v14 = [(SiriIntentEvent *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_intentId, id);
    v15->_eventType = type;
    v16 = [dataCopy copy];
    eventData = v15->_eventData;
    v15->_eventData = v16;

    objc_storeStrong(&v15->_createdAt, at);
  }

  return v15;
}

@end