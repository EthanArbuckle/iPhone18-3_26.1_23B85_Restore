@interface SADeviceUpdateEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SADeviceUpdateEvent)initWithCoder:(id)a3;
- (SADeviceUpdateEvent)initWithDevice:(id)a3 eventType:(unint64_t)a4 lastEvent:(BOOL)a5 date:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SADeviceUpdateEvent

- (SADeviceUpdateEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"SADeviceUpdateEventDevice"];
  v6 = [v4 decodeIntegerForKey:@"SADeviceUpdateEventType"];
  v7 = [v4 decodeBoolForKey:@"SADeviceUpdateEventLast"];
  v8 = [v4 decodeObjectForKey:@"SADeviceUpdateEventDate"];

  v9 = [(SADeviceUpdateEvent *)self initWithDevice:v5 eventType:v6 lastEvent:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SADeviceUpdateEvent *)self device];
  [v4 encodeObject:v5 forKey:@"SADeviceUpdateEventDevice"];

  [v4 encodeInteger:-[SADeviceUpdateEvent eventType](self forKey:{"eventType"), @"SADeviceUpdateEventType"}];
  [v4 encodeBool:-[SADeviceUpdateEvent lastEvent](self forKey:{"lastEvent"), @"SADeviceUpdateEventLast"}];
  v6 = [(SADeviceUpdateEvent *)self date];
  [v4 encodeObject:v6 forKey:@"SADeviceUpdateEventDate"];
}

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SADeviceUpdateEvent allocWithZone:a3];
  v5 = [(SADeviceUpdateEvent *)self device];
  v6 = [(SADeviceUpdateEvent *)self eventType];
  v7 = [(SADeviceUpdateEvent *)self lastEvent];
  v8 = [(SADeviceUpdateEvent *)self date];
  v9 = [(SADeviceUpdateEvent *)v4 initWithDevice:v5 eventType:v6 lastEvent:v7 date:v8];

  return v9;
}

- (SADeviceUpdateEvent)initWithDevice:(id)a3 eventType:(unint64_t)a4 lastEvent:(BOOL)a5 date:(id)a6
{
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = SADeviceUpdateEvent;
  v12 = [(SADeviceUpdateEvent *)&v19 init];
  if (v12)
  {
    if (!v11)
    {
      v17 = 0;
      goto LABEL_8;
    }

    if (v10)
    {
      v13 = [v10 copy];
      device = v12->_device;
      v12->_device = v13;
    }

    v12->_eventType = a4;
    v12->_lastEvent = a5;
    v15 = [v11 copy];
    date = v12->_date;
    v12->_date = v15;
  }

  v17 = v12;
LABEL_8:

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SADeviceUpdateEvent *)self device];
      v9 = [(SADeviceUpdateEvent *)v7 device];
      if (v8 == v9 || (-[SADeviceUpdateEvent device](self, "device"), v3 = objc_claimAutoreleasedReturnValue(), -[SADeviceUpdateEvent device](v7, "device"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(SADeviceUpdateEvent *)self eventType];
        if (v11 == [(SADeviceUpdateEvent *)v7 eventType]&& (v12 = [(SADeviceUpdateEvent *)self lastEvent], v12 == [(SADeviceUpdateEvent *)v7 lastEvent]))
        {
          v14 = [(SADeviceUpdateEvent *)self date];
          v15 = [(SADeviceUpdateEvent *)v7 date];
          v16 = v15;
          if (v14 == v15)
          {

            v10 = 1;
          }

          else
          {
            v17 = [(SADeviceUpdateEvent *)self date];
            [(SADeviceUpdateEvent *)v7 date];
            v18 = v19 = v14;
            v10 = [v17 isEqual:v18];
          }
        }

        else
        {
          v10 = 0;
        }

        if (v8 == v9)
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
  v6 = [(SADeviceUpdateEvent *)self device];
  if (v6)
  {
    v2 = [(SADeviceUpdateEvent *)self device];
    v7 = [v2 description];
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
  v10 = [(SADeviceUpdateEvent *)self date];
  v11 = [v10 getDateString];
  v16[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  if (v6)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)description
{
  v2 = [(SADeviceUpdateEvent *)self descriptionDictionary];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v2 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SASafeLocationUpdateEvent *)v5 description];
    }

    v6 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

@end