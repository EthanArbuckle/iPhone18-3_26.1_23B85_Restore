@interface TASystemState
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TASystemState)initWithCoder:(id)a3;
- (TASystemState)initWithSystemStateType:(unint64_t)a3 isOn:(BOOL)a4 date:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
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
  v7 = [(TASystemState *)self date];
  v8 = [v7 getDateString];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSString)description
{
  v3 = [(TASystemState *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
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

- (TASystemState)initWithSystemStateType:(unint64_t)a3 isOn:(BOOL)a4 date:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = TASystemState;
  v9 = [(TASystemState *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (!v8)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v9->_systemStateType = a3;
    v9->_isOn = a4;
    v11 = [v8 copy];
    date = v10->_date;
    v10->_date = v11;
  }

  v13 = v10;
LABEL_6:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(TASystemState *)self systemStateType];
  v4 = [(TASystemState *)self isOn];
  v5 = [(TASystemState *)self date];
  v6 = v3 ^ [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TASystemState *)self systemStateType];
      if (v6 == [(TASystemState *)v5 systemStateType]&& (v7 = [(TASystemState *)self isOn], v7 == [(TASystemState *)v5 isOn]))
      {
        v9 = [(TASystemState *)self date];
        v10 = [(TASystemState *)v5 date];
        if (v9 == v10)
        {
          v8 = 1;
        }

        else
        {
          v11 = [(TASystemState *)self date];
          v12 = [(TASystemState *)v5 date];
          v8 = [v11 isEqual:v12];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TASystemState alloc];
  isOn = self->_isOn;
  systemStateType = self->_systemStateType;
  date = self->_date;

  return [(TASystemState *)v4 initWithSystemStateType:systemStateType isOn:isOn date:date];
}

- (TASystemState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"SystemStateType"];
  v6 = [v4 decodeBoolForKey:@"IsOn"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v8 = [(TASystemState *)self initWithSystemStateType:v5 isOn:v6 date:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  systemStateType = self->_systemStateType;
  v5 = a3;
  [v5 encodeInteger:systemStateType forKey:@"SystemStateType"];
  [v5 encodeBool:self->_isOn forKey:@"IsOn"];
  [v5 encodeObject:self->_date forKey:@"Date"];
}

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

@end