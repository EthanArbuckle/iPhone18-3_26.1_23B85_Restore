@interface RCPEvent
+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)a3;
+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)a3 deliveryTimeStamp:(unint64_t)a4;
+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)a3 deliveryTimeStamp:(unint64_t)a4 senderProperties:(id)a5 preActions:(id)a6;
- (RCPEvent)init;
- (RCPEvent)initWithCoder:(id)a3;
- (RCPEvent)initWithDeliveryTimeStamp:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)eventAdjustedForDeliveryTimeInterval:(double)a3 eventEnvironment:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCPEvent

- (void)dealloc
{
  hidEvent = self->_hidEvent;
  if (hidEvent)
  {
    CFRelease(hidEvent);
  }

  v4.receiver = self;
  v4.super_class = RCPEvent;
  [(RCPEvent *)&v4 dealloc];
}

- (RCPEvent)initWithDeliveryTimeStamp:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RCPEvent;
  result = [(RCPEvent *)&v5 init];
  if (result)
  {
    result->_deliveryTimestamp = a3;
  }

  return result;
}

- (RCPEvent)init
{
  v3 = mach_absolute_time();

  return [(RCPEvent *)self initWithDeliveryTimeStamp:v3];
}

- (RCPEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RCPEvent;
  v5 = [(RCPEvent *)&v13 init];
  if (v5)
  {
    v5->_deliveryTimestamp = [v4 decodeInt64ForKey:@"deliveryTimestamp"];
    [v4 decodeObjectForKey:@"hidEventData"];
    v5->_hidEvent = IOHIDEventCreateWithData();
    v6 = [v4 decodeObjectForKey:@"preActions"];
    preActions = v5->_preActions;
    v5->_preActions = v6;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = v5->_preActions;
      v5->_preActions = 0;
    }

    v9 = [v4 decodeObjectForKey:@"senderProperties"];
    senderProperties = v5->_senderProperties;
    v5->_senderProperties = v9;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = v5->_senderProperties;
      v5->_senderProperties = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInt64:self->_deliveryTimestamp forKey:@"deliveryTimestamp"];
  Data = IOHIDEventCreateData();
  [v7 encodeObject:CFAutorelease(Data) forKey:@"hidEventData"];
  senderProperties = self->_senderProperties;
  if (senderProperties)
  {
    [v7 encodeObject:senderProperties forKey:@"senderProperties"];
  }

  preActions = self->_preActions;
  if (preActions)
  {
    [v7 encodeObject:preActions forKey:@"preActions"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self];
  v5 = [v3 unarchiveObjectWithData:v4];

  return v5;
}

+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)a3
{
  v4 = objc_opt_new();
  CFRetain(a3);
  v4[3] = a3;

  return v4;
}

+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)a3 deliveryTimeStamp:(unint64_t)a4
{
  v5 = [[a1 alloc] initWithDeliveryTimeStamp:a4];
  CFRetain(a3);
  v5[3] = a3;

  return v5;
}

+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)a3 deliveryTimeStamp:(unint64_t)a4 senderProperties:(id)a5 preActions:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [[a1 alloc] initWithDeliveryTimeStamp:a4];
  CFRetain(a3);
  v13 = v12[2];
  v12[2] = v10;
  v12[3] = a3;
  v14 = v10;

  v15 = v12[4];
  v12[4] = v11;

  return v12;
}

- (id)eventAdjustedForDeliveryTimeInterval:(double)a3 eventEnvironment:(id)a4
{
  v6 = a4;
  v7 = [(RCPEvent *)self copy];
  [v6 timeIntervalForMachAbsoluteTime:{-[RCPEvent deliveryTimestamp](self, "deliveryTimestamp")}];
  v9 = a3 - v8;
  [v7 setDeliveryTimestamp:{objc_msgSend(v6, "machAbsoluteTimeForTimeInterval:", a3)}];
  [v7 hidEvent];
  [v6 timeIntervalForMachAbsoluteTime:{-[RCPEvent timestamp](self, "timestamp")}];
  [v6 machAbsoluteTimeForTimeInterval:v9 + v10];

  IOHIDEventSetTimeStamp();

  return v7;
}

@end