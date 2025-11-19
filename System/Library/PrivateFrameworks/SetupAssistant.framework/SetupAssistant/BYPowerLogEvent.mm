@interface BYPowerLogEvent
- (BYPowerLogEvent)initWithType:(unint64_t)a3 andPayload:(id)a4;
@end

@implementation BYPowerLogEvent

- (BYPowerLogEvent)initWithType:(unint64_t)a3 andPayload:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BYPowerLogEvent;
  v8 = [(BYPowerLogEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_payload, a4);
  }

  return v9;
}

@end