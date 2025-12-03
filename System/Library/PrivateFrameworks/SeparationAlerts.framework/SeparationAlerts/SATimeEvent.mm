@interface SATimeEvent
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SATimeEvent)initWithCoder:(id)coder;
- (SATimeEvent)initWithDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SATimeEvent

- (SATimeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SATimeEventDate"];

  v6 = [(SATimeEvent *)self initWithDate:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(SATimeEvent *)self date];
  [coderCopy encodeObject:date forKey:@"SATimeEventDate"];
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
  v4 = [SATimeEvent allocWithZone:zone];
  date = [(SATimeEvent *)self date];
  v6 = [(SATimeEvent *)v4 initWithDate:date];

  return v6;
}

- (SATimeEvent)initWithDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = SATimeEvent;
  v5 = [(SATimeEvent *)&v10 init];
  if (v5)
  {
    if (!dateCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [dateCopy copy];
    date = v5->_date;
    v5->_date = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
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
      v5 = equalCopy;
      date = [(SATimeEvent *)self date];
      date2 = [(SATimeEvent *)v5 date];
      if (date == date2)
      {
        v10 = 1;
      }

      else
      {
        date3 = [(SATimeEvent *)self date];
        date4 = [(SATimeEvent *)v5 date];
        v10 = [date3 isEqual:date4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)descriptionDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10[1] = @"SATimeEventDate";
  v11[0] = v4;
  date = [(SATimeEvent *)self date];
  getDateString = [date getDateString];
  v11[1] = getDateString;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)description
{
  descriptionDictionary = [(SATimeEvent *)self descriptionDictionary];
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