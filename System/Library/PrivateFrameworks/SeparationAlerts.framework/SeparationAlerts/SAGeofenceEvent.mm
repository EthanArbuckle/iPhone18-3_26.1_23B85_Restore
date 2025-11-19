@interface SAGeofenceEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SAGeofenceEvent)initWithCoder:(id)a3;
- (SAGeofenceEvent)initWithRegion:(id)a3 eventType:(unint64_t)a4 eventDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SAGeofenceEvent

- (SAGeofenceEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GeofenceEventRegion"];
  v6 = [v4 decodeIntegerForKey:@"GeofenceEventType"];
  v7 = [v4 decodeObjectForKey:@"GeofenceEventDate"];

  v8 = [(SAGeofenceEvent *)self initWithRegion:v5 eventType:v6 eventDate:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SAGeofenceEvent *)self region];
  [v4 encodeObject:v5 forKey:@"GeofenceEventRegion"];

  [v4 encodeInteger:-[SAGeofenceEvent eventType](self forKey:{"eventType"), @"GeofenceEventType"}];
  v6 = [(SAGeofenceEvent *)self eventDate];
  [v4 encodeObject:v6 forKey:@"GeofenceEventDate"];
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
  v4 = [SAGeofenceEvent allocWithZone:a3];
  v5 = [(SAGeofenceEvent *)self region];
  v6 = [(SAGeofenceEvent *)self eventType];
  v7 = [(SAGeofenceEvent *)self eventDate];
  v8 = [(SAGeofenceEvent *)v4 initWithRegion:v5 eventType:v6 eventDate:v7];

  return v8;
}

- (SAGeofenceEvent)initWithRegion:(id)a3 eventType:(unint64_t)a4 eventDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = SAGeofenceEvent;
  v10 = [(SAGeofenceEvent *)&v17 init];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (v8 && v9)
  {
    v12 = [v8 copy];
    region = v10->_region;
    v10->_region = v12;

    v10->_eventType = a4;
    v14 = [v9 copy];
    eventDate = v10->_eventDate;
    v10->_eventDate = v14;

LABEL_5:
    v11 = v10;
  }

  return v11;
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
      v8 = [(SAGeofenceEvent *)self region];
      v9 = [(SAGeofenceEvent *)v7 region];
      if (v8 == v9 || (-[SAGeofenceEvent region](self, "region"), v3 = objc_claimAutoreleasedReturnValue(), -[SAGeofenceEvent region](v7, "region"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(SAGeofenceEvent *)self eventType];
        if (v11 == [(SAGeofenceEvent *)v7 eventType])
        {
          v12 = [(SAGeofenceEvent *)self eventDate];
          v13 = [(SAGeofenceEvent *)v7 eventDate];
          v14 = v13;
          if (v12 == v13)
          {

            v10 = 1;
          }

          else
          {
            v15 = [(SAGeofenceEvent *)self eventDate];
            [(SAGeofenceEvent *)v7 eventDate];
            v16 = v18 = v3;
            v10 = [v15 isEqual:v16];

            v3 = v18;
          }
        }

        else
        {
          v10 = 0;
        }

        if (v8 == v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_15:
      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (id)descriptionDictionary
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v14[0] = v4;
  v13[1] = @"GeofenceEventDate";
  v5 = [(SAGeofenceEvent *)self eventDate];
  v6 = [v5 getDateString];
  v14[1] = v6;
  v13[2] = @"GeofenceEventType";
  v7 = SAGeofenceEventTypeToString([(SAGeofenceEvent *)self eventType]);
  v14[2] = v7;
  v13[3] = @"GeofenceEventRegion";
  v8 = [(SAGeofenceEvent *)self region];
  v9 = [v8 description];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)description
{
  v3 = [(SAGeofenceEvent *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SAConnectionEvent *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

@end