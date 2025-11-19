@interface TAAggressiveScanState
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TAAggressiveScanState)initWithCoder:(id)a3;
- (TAAggressiveScanState)initWithState:(unint64_t)a3 date:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TAAggressiveScanState

- (TAAggressiveScanState)initWithState:(unint64_t)a3 date:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = TAAggressiveScanState;
  v7 = [(TAAggressiveScanState *)&v13 init];
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v7->_state = a3;
    v9 = [v6 copy];
    date = v8->_date;
    v8->_date = v9;
  }

  v11 = v8;
LABEL_6:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(TAAggressiveScanState *)self date];
  v3 = [v2 hash];

  return v3;
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
      v8 = [(TAAggressiveScanState *)self date];
      v9 = [(TAAggressiveScanState *)v7 date];
      if (v8 == v9 || (-[TAAggressiveScanState date](self, "date"), v3 = objc_claimAutoreleasedReturnValue(), -[TAAggressiveScanState date](v7, "date"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(TAAggressiveScanState *)self state];
        v10 = v11 == [(TAAggressiveScanState *)v7 state];
        if (v8 == v9)
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
  v5 = [(TAAggressiveScanState *)self date];
  v6 = [v5 getDateString];
  v12[1] = v6;
  v11[2] = @"State";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAAggressiveScanState state](self, "state")}];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSString)description
{
  v3 = [(TAAggressiveScanState *)self descriptionDictionary];
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

- (TAAggressiveScanState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"State"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v7 = [(TAAggressiveScanState *)self initWithState:v5 date:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"State"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TAAggressiveScanState alloc];
  state = self->_state;
  date = self->_date;

  return [(TAAggressiveScanState *)v4 initWithState:state date:date];
}

@end