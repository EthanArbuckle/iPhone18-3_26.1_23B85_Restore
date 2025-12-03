@interface TAAggressiveScanState
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TAAggressiveScanState)initWithCoder:(id)coder;
- (TAAggressiveScanState)initWithState:(unint64_t)state date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TAAggressiveScanState

- (TAAggressiveScanState)initWithState:(unint64_t)state date:(id)date
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = TAAggressiveScanState;
  v7 = [(TAAggressiveScanState *)&v13 init];
  v8 = v7;
  if (v7)
  {
    if (!dateCopy)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v7->_state = state;
    v9 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v9;
  }

  v11 = v8;
LABEL_6:

  return v11;
}

- (unint64_t)hash
{
  date = [(TAAggressiveScanState *)self date];
  v3 = [date hash];

  return v3;
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
      date = [(TAAggressiveScanState *)self date];
      date2 = [(TAAggressiveScanState *)v7 date];
      if (date == date2 || (-[TAAggressiveScanState date](self, "date"), v3 = objc_claimAutoreleasedReturnValue(), -[TAAggressiveScanState date](v7, "date"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        state = [(TAAggressiveScanState *)self state];
        v10 = state == [(TAAggressiveScanState *)v7 state];
        if (date == date2)
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)descriptionDictionary
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v12[0] = v4;
  v11[1] = @"Date";
  date = [(TAAggressiveScanState *)self date];
  getDateString = [date getDateString];
  v12[1] = getDateString;
  v11[2] = @"State";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAAggressiveScanState state](self, "state")}];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSString)description
{
  descriptionDictionary = [(TAAggressiveScanState *)self descriptionDictionary];
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

- (TAAggressiveScanState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"State"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v7 = [(TAAggressiveScanState *)self initWithState:v5 date:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"State"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TAAggressiveScanState alloc];
  state = self->_state;
  date = self->_date;

  return [(TAAggressiveScanState *)v4 initWithState:state date:date];
}

@end