@interface TASystemState
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TASystemState)initWithCoder:(id)coder;
- (TASystemState)initWithSystemStateType:(unint64_t)type isOn:(BOOL)on date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TASystemState

- (id)descriptionDictionary
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v13[0] = v4;
  v12[1] = @"SystemStateType";
  v5 = TASystemStateTypeToString(self->_systemStateType);
  v13[1] = v5;
  v12[2] = @"IsOn";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOn];
  v13[2] = v6;
  v12[3] = @"Date";
  date = [(TASystemState *)self date];
  getDateString = [date getDateString];
  v13[3] = getDateString;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSString)description
{
  descriptionDictionary = [(TASystemState *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
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

- (TASystemState)initWithSystemStateType:(unint64_t)type isOn:(BOOL)on date:(id)date
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = TASystemState;
  v9 = [(TASystemState *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (!dateCopy)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v9->_systemStateType = type;
    v9->_isOn = on;
    v11 = [dateCopy copy];
    date = v10->_date;
    v10->_date = v11;
  }

  v13 = v10;
LABEL_6:

  return v13;
}

- (unint64_t)hash
{
  systemStateType = [(TASystemState *)self systemStateType];
  isOn = [(TASystemState *)self isOn];
  date = [(TASystemState *)self date];
  v6 = systemStateType ^ [date hash];

  return v6 ^ isOn;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      systemStateType = [(TASystemState *)self systemStateType];
      if (systemStateType == [(TASystemState *)v5 systemStateType]&& (v7 = [(TASystemState *)self isOn], v7 == [(TASystemState *)v5 isOn]))
      {
        date = [(TASystemState *)self date];
        date2 = [(TASystemState *)v5 date];
        if (date == date2)
        {
          v8 = 1;
        }

        else
        {
          date3 = [(TASystemState *)self date];
          date4 = [(TASystemState *)v5 date];
          v8 = [date3 isEqual:date4];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TASystemState alloc];
  isOn = self->_isOn;
  systemStateType = self->_systemStateType;
  date = self->_date;

  return [(TASystemState *)v4 initWithSystemStateType:systemStateType isOn:isOn date:date];
}

- (TASystemState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"SystemStateType"];
  v6 = [coderCopy decodeBoolForKey:@"IsOn"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v8 = [(TASystemState *)self initWithSystemStateType:v5 isOn:v6 date:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  systemStateType = self->_systemStateType;
  coderCopy = coder;
  [coderCopy encodeInteger:systemStateType forKey:@"SystemStateType"];
  [coderCopy encodeBool:self->_isOn forKey:@"IsOn"];
  [coderCopy encodeObject:self->_date forKey:@"Date"];
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

@end