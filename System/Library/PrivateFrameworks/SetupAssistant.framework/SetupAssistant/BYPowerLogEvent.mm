@interface BYPowerLogEvent
- (BYPowerLogEvent)initWithType:(unint64_t)type andPayload:(id)payload;
@end

@implementation BYPowerLogEvent

- (BYPowerLogEvent)initWithType:(unint64_t)type andPayload:(id)payload
{
  payloadCopy = payload;
  v11.receiver = self;
  v11.super_class = BYPowerLogEvent;
  v8 = [(BYPowerLogEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_payload, payload);
  }

  return v9;
}

@end