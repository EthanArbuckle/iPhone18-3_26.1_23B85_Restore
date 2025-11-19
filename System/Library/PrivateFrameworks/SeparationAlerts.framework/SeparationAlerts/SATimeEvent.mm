@interface SATimeEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SATimeEvent)initWithCoder:(id)a3;
- (SATimeEvent)initWithDate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SATimeEvent

- (SATimeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SATimeEventDate"];

  v6 = [(SATimeEvent *)self initWithDate:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SATimeEvent *)self date];
  [v4 encodeObject:v5 forKey:@"SATimeEventDate"];
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
  v4 = [SATimeEvent allocWithZone:a3];
  v5 = [(SATimeEvent *)self date];
  v6 = [(SATimeEvent *)v4 initWithDate:v5];

  return v6;
}

- (SATimeEvent)initWithDate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SATimeEvent;
  v5 = [(SATimeEvent *)&v10 init];
  if (v5)
  {
    if (!v4)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [v4 copy];
    date = v5->_date;
    v5->_date = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SATimeEvent *)self date];
      v7 = [(SATimeEvent *)v5 date];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(SATimeEvent *)self date];
        v9 = [(SATimeEvent *)v5 date];
        v10 = [v8 isEqual:v9];
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
  v5 = [(SATimeEvent *)self date];
  v6 = [v5 getDateString];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)description
{
  v3 = [(SATimeEvent *)self descriptionDictionary];
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