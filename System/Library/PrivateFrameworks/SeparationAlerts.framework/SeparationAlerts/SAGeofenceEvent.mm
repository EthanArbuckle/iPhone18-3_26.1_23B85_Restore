@interface SAGeofenceEvent
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SAGeofenceEvent)initWithCoder:(id)coder;
- (SAGeofenceEvent)initWithRegion:(id)region eventType:(unint64_t)type eventDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SAGeofenceEvent

- (SAGeofenceEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GeofenceEventRegion"];
  v6 = [coderCopy decodeIntegerForKey:@"GeofenceEventType"];
  v7 = [coderCopy decodeObjectForKey:@"GeofenceEventDate"];

  v8 = [(SAGeofenceEvent *)self initWithRegion:v5 eventType:v6 eventDate:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  region = [(SAGeofenceEvent *)self region];
  [coderCopy encodeObject:region forKey:@"GeofenceEventRegion"];

  [coderCopy encodeInteger:-[SAGeofenceEvent eventType](self forKey:{"eventType"), @"GeofenceEventType"}];
  eventDate = [(SAGeofenceEvent *)self eventDate];
  [coderCopy encodeObject:eventDate forKey:@"GeofenceEventDate"];
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
  v4 = [SAGeofenceEvent allocWithZone:zone];
  region = [(SAGeofenceEvent *)self region];
  eventType = [(SAGeofenceEvent *)self eventType];
  eventDate = [(SAGeofenceEvent *)self eventDate];
  v8 = [(SAGeofenceEvent *)v4 initWithRegion:region eventType:eventType eventDate:eventDate];

  return v8;
}

- (SAGeofenceEvent)initWithRegion:(id)region eventType:(unint64_t)type eventDate:(id)date
{
  regionCopy = region;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = SAGeofenceEvent;
  v10 = [(SAGeofenceEvent *)&v17 init];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (regionCopy && dateCopy)
  {
    v12 = [regionCopy copy];
    region = v10->_region;
    v10->_region = v12;

    v10->_eventType = type;
    v14 = [dateCopy copy];
    eventDate = v10->_eventDate;
    v10->_eventDate = v14;

LABEL_5:
    v11 = v10;
  }

  return v11;
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
      region = [(SAGeofenceEvent *)self region];
      region2 = [(SAGeofenceEvent *)v7 region];
      if (region == region2 || (-[SAGeofenceEvent region](self, "region"), v3 = objc_claimAutoreleasedReturnValue(), -[SAGeofenceEvent region](v7, "region"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        eventType = [(SAGeofenceEvent *)self eventType];
        if (eventType == [(SAGeofenceEvent *)v7 eventType])
        {
          eventDate = [(SAGeofenceEvent *)self eventDate];
          eventDate2 = [(SAGeofenceEvent *)v7 eventDate];
          v14 = eventDate2;
          if (eventDate == eventDate2)
          {

            v10 = 1;
          }

          else
          {
            eventDate3 = [(SAGeofenceEvent *)self eventDate];
            [(SAGeofenceEvent *)v7 eventDate];
            v16 = v18 = v3;
            v10 = [eventDate3 isEqual:v16];

            v3 = v18;
          }
        }

        else
        {
          v10 = 0;
        }

        if (region == region2)
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
  eventDate = [(SAGeofenceEvent *)self eventDate];
  getDateString = [eventDate getDateString];
  v14[1] = getDateString;
  v13[2] = @"GeofenceEventType";
  v7 = SAGeofenceEventTypeToString([(SAGeofenceEvent *)self eventType]);
  v14[2] = v7;
  v13[3] = @"GeofenceEventRegion";
  region = [(SAGeofenceEvent *)self region];
  v9 = [region description];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)description
{
  descriptionDictionary = [(SAGeofenceEvent *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SAConnectionEvent *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

@end