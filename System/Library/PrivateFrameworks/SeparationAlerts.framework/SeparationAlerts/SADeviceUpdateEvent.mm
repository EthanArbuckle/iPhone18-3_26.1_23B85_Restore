@interface SADeviceUpdateEvent
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SADeviceUpdateEvent)initWithCoder:(id)coder;
- (SADeviceUpdateEvent)initWithDevice:(id)device eventType:(unint64_t)type lastEvent:(BOOL)event date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SADeviceUpdateEvent

- (SADeviceUpdateEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"SADeviceUpdateEventDevice"];
  v6 = [coderCopy decodeIntegerForKey:@"SADeviceUpdateEventType"];
  v7 = [coderCopy decodeBoolForKey:@"SADeviceUpdateEventLast"];
  v8 = [coderCopy decodeObjectForKey:@"SADeviceUpdateEventDate"];

  v9 = [(SADeviceUpdateEvent *)self initWithDevice:v5 eventType:v6 lastEvent:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  device = [(SADeviceUpdateEvent *)self device];
  [coderCopy encodeObject:device forKey:@"SADeviceUpdateEventDevice"];

  [coderCopy encodeInteger:-[SADeviceUpdateEvent eventType](self forKey:{"eventType"), @"SADeviceUpdateEventType"}];
  [coderCopy encodeBool:-[SADeviceUpdateEvent lastEvent](self forKey:{"lastEvent"), @"SADeviceUpdateEventLast"}];
  date = [(SADeviceUpdateEvent *)self date];
  [coderCopy encodeObject:date forKey:@"SADeviceUpdateEventDate"];
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SADeviceUpdateEvent allocWithZone:zone];
  device = [(SADeviceUpdateEvent *)self device];
  eventType = [(SADeviceUpdateEvent *)self eventType];
  lastEvent = [(SADeviceUpdateEvent *)self lastEvent];
  date = [(SADeviceUpdateEvent *)self date];
  v9 = [(SADeviceUpdateEvent *)v4 initWithDevice:device eventType:eventType lastEvent:lastEvent date:date];

  return v9;
}

- (SADeviceUpdateEvent)initWithDevice:(id)device eventType:(unint64_t)type lastEvent:(BOOL)event date:(id)date
{
  deviceCopy = device;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = SADeviceUpdateEvent;
  v12 = [(SADeviceUpdateEvent *)&v19 init];
  if (v12)
  {
    if (!dateCopy)
    {
      v17 = 0;
      goto LABEL_8;
    }

    if (deviceCopy)
    {
      v13 = [deviceCopy copy];
      device = v12->_device;
      v12->_device = v13;
    }

    v12->_eventType = type;
    v12->_lastEvent = event;
    v15 = [dateCopy copy];
    date = v12->_date;
    v12->_date = v15;
  }

  v17 = v12;
LABEL_8:

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      device = [(SADeviceUpdateEvent *)self device];
      device2 = [(SADeviceUpdateEvent *)v7 device];
      if (device == device2 || (-[SADeviceUpdateEvent device](self, "device"), v3 = objc_claimAutoreleasedReturnValue(), -[SADeviceUpdateEvent device](v7, "device"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        eventType = [(SADeviceUpdateEvent *)self eventType];
        if (eventType == [(SADeviceUpdateEvent *)v7 eventType]&& (v12 = [(SADeviceUpdateEvent *)self lastEvent], v12 == [(SADeviceUpdateEvent *)v7 lastEvent]))
        {
          date = [(SADeviceUpdateEvent *)self date];
          date2 = [(SADeviceUpdateEvent *)v7 date];
          v16 = date2;
          if (date == date2)
          {

            v10 = 1;
          }

          else
          {
            date3 = [(SADeviceUpdateEvent *)self date];
            [(SADeviceUpdateEvent *)v7 date];
            v18 = v19 = date;
            v10 = [date3 isEqual:v18];
          }
        }

        else
        {
          v10 = 0;
        }

        if (device == device2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)descriptionDictionary
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"EventType";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v16[0] = v5;
  v15[1] = @"SADeviceUpdateEventDevice";
  device = [(SADeviceUpdateEvent *)self device];
  if (device)
  {
    device2 = [(SADeviceUpdateEvent *)self device];
    v7 = [device2 description];
  }

  else
  {
    v7 = &stru_287709218;
  }

  v16[1] = v7;
  v15[2] = @"SADeviceUpdateEventType";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SADeviceUpdateEvent eventType](self, "eventType")}];
  v16[2] = v8;
  v15[3] = @"SADeviceUpdateEventLast";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SADeviceUpdateEvent lastEvent](self, "lastEvent")}];
  v16[3] = v9;
  v15[4] = @"SADeviceUpdateEventDate";
  date = [(SADeviceUpdateEvent *)self date];
  getDateString = [date getDateString];
  v16[4] = getDateString;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  if (device)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)description
{
  descriptionDictionary = [(SADeviceUpdateEvent *)self descriptionDictionary];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SASafeLocationUpdateEvent *)v5 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  return v7;
}

@end