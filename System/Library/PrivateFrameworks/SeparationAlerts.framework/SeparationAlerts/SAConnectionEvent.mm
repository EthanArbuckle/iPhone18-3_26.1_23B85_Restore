@interface SAConnectionEvent
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SAConnectionEvent)initWithCoder:(id)coder;
- (SAConnectionEvent)initWithDeviceUUID:(id)d state:(int64_t)state date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)description;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SAConnectionEvent

- (SAConnectionEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SAConnectionEventIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"SAConnectionEventState"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SAConnectionEventDate"];

  v8 = [(SAConnectionEvent *)self initWithDeviceUUID:v5 state:v6 date:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SAConnectionEvent *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"SAConnectionEventIdentifier"];

  [coderCopy encodeInteger:-[SAConnectionEvent state](self forKey:{"state"), @"SAConnectionEventState"}];
  date = [(SAConnectionEvent *)self date];
  [coderCopy encodeObject:date forKey:@"SAConnectionEventDate"];
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
  v4 = [SAConnectionEvent allocWithZone:zone];
  identifier = [(SAConnectionEvent *)self identifier];
  state = [(SAConnectionEvent *)self state];
  date = [(SAConnectionEvent *)self date];
  v8 = [(SAConnectionEvent *)v4 initWithDeviceUUID:identifier state:state date:date];

  return v8;
}

- (SAConnectionEvent)initWithDeviceUUID:(id)d state:(int64_t)state date:(id)date
{
  dCopy = d;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = SAConnectionEvent;
  v10 = [(SAConnectionEvent *)&v17 init];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (dCopy && dateCopy)
  {
    v12 = [dCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    v10->_state = state;
    v14 = [dateCopy copy];
    date = v10->_date;
    v10->_date = v14;

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
      identifier = [(SAConnectionEvent *)self identifier];
      identifier2 = [(SAConnectionEvent *)v7 identifier];
      if (identifier == identifier2 || (-[SAConnectionEvent identifier](self, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SAConnectionEvent identifier](v7, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        state = [(SAConnectionEvent *)self state];
        if (state == [(SAConnectionEvent *)v7 state])
        {
          date = [(SAConnectionEvent *)self date];
          date2 = [(SAConnectionEvent *)v7 date];
          v14 = date2;
          if (date == date2)
          {

            v10 = 1;
          }

          else
          {
            date3 = [(SAConnectionEvent *)self date];
            [(SAConnectionEvent *)v7 date];
            v16 = v18 = v3;
            v10 = [date3 isEqual:v16];

            v3 = v18;
          }
        }

        else
        {
          v10 = 0;
        }

        if (identifier == identifier2)
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
  v13[1] = @"SAConnectionEventIdentifier";
  identifier = [(SAConnectionEvent *)self identifier];
  v6 = [identifier description];
  v14[1] = v6;
  v13[2] = @"SAConnectionEventState";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SAConnectionEvent state](self, "state")}];
  v14[2] = v7;
  v13[3] = @"SAConnectionEventDate";
  date = [(SAConnectionEvent *)self date];
  getDateString = [date getDateString];
  v14[3] = getDateString;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)description
{
  descriptionDictionary = [(SAConnectionEvent *)self descriptionDictionary];
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

- (void)description
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_2656EA000, selfCopy, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end