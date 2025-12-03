@interface RCPEvent
+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)event;
+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)event deliveryTimeStamp:(unint64_t)stamp;
+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)event deliveryTimeStamp:(unint64_t)stamp senderProperties:(id)properties preActions:(id)actions;
- (RCPEvent)init;
- (RCPEvent)initWithCoder:(id)coder;
- (RCPEvent)initWithDeliveryTimeStamp:(unint64_t)stamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)eventAdjustedForDeliveryTimeInterval:(double)interval eventEnvironment:(id)environment;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (RCPEvent)initWithDeliveryTimeStamp:(unint64_t)stamp
{
  v5.receiver = self;
  v5.super_class = RCPEvent;
  result = [(RCPEvent *)&v5 init];
  if (result)
  {
    result->_deliveryTimestamp = stamp;
  }

  return result;
}

- (RCPEvent)init
{
  v3 = mach_absolute_time();

  return [(RCPEvent *)self initWithDeliveryTimeStamp:v3];
}

- (RCPEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RCPEvent;
  v5 = [(RCPEvent *)&v13 init];
  if (v5)
  {
    v5->_deliveryTimestamp = [coderCopy decodeInt64ForKey:@"deliveryTimestamp"];
    [coderCopy decodeObjectForKey:@"hidEventData"];
    v5->_hidEvent = IOHIDEventCreateWithData();
    v6 = [coderCopy decodeObjectForKey:@"preActions"];
    preActions = v5->_preActions;
    v5->_preActions = v6;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = v5->_preActions;
      v5->_preActions = 0;
    }

    v9 = [coderCopy decodeObjectForKey:@"senderProperties"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_deliveryTimestamp forKey:@"deliveryTimestamp"];
  Data = IOHIDEventCreateData();
  [coderCopy encodeObject:CFAutorelease(Data) forKey:@"hidEventData"];
  senderProperties = self->_senderProperties;
  if (senderProperties)
  {
    [coderCopy encodeObject:senderProperties forKey:@"senderProperties"];
  }

  preActions = self->_preActions;
  if (preActions)
  {
    [coderCopy encodeObject:preActions forKey:@"preActions"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self];
  v5 = [v3 unarchiveObjectWithData:v4];

  return v5;
}

+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)event
{
  v4 = objc_opt_new();
  CFRetain(event);
  v4[3] = event;

  return v4;
}

+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)event deliveryTimeStamp:(unint64_t)stamp
{
  v5 = [[self alloc] initWithDeliveryTimeStamp:stamp];
  CFRetain(event);
  v5[3] = event;

  return v5;
}

+ (RCPEvent)eventWithHIDEvent:(__IOHIDEvent *)event deliveryTimeStamp:(unint64_t)stamp senderProperties:(id)properties preActions:(id)actions
{
  propertiesCopy = properties;
  actionsCopy = actions;
  v12 = [[self alloc] initWithDeliveryTimeStamp:stamp];
  CFRetain(event);
  v13 = v12[2];
  v12[2] = propertiesCopy;
  v12[3] = event;
  v14 = propertiesCopy;

  v15 = v12[4];
  v12[4] = actionsCopy;

  return v12;
}

- (id)eventAdjustedForDeliveryTimeInterval:(double)interval eventEnvironment:(id)environment
{
  environmentCopy = environment;
  v7 = [(RCPEvent *)self copy];
  [environmentCopy timeIntervalForMachAbsoluteTime:{-[RCPEvent deliveryTimestamp](self, "deliveryTimestamp")}];
  v9 = interval - v8;
  [v7 setDeliveryTimestamp:{objc_msgSend(environmentCopy, "machAbsoluteTimeForTimeInterval:", interval)}];
  [v7 hidEvent];
  [environmentCopy timeIntervalForMachAbsoluteTime:{-[RCPEvent timestamp](self, "timestamp")}];
  [environmentCopy machAbsoluteTimeForTimeInterval:v9 + v10];

  IOHIDEventSetTimeStamp();

  return v7;
}

@end