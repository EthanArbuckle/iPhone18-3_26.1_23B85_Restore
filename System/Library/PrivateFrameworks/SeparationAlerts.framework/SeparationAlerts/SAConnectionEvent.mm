@interface SAConnectionEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SAConnectionEvent)initWithCoder:(id)a3;
- (SAConnectionEvent)initWithDeviceUUID:(id)a3 state:(int64_t)a4 date:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)description;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SAConnectionEvent

- (SAConnectionEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SAConnectionEventIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"SAConnectionEventState"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SAConnectionEventDate"];

  v8 = [(SAConnectionEvent *)self initWithDeviceUUID:v5 state:v6 date:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SAConnectionEvent *)self identifier];
  [v4 encodeObject:v5 forKey:@"SAConnectionEventIdentifier"];

  [v4 encodeInteger:-[SAConnectionEvent state](self forKey:{"state"), @"SAConnectionEventState"}];
  v6 = [(SAConnectionEvent *)self date];
  [v4 encodeObject:v6 forKey:@"SAConnectionEventDate"];
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
  v4 = [SAConnectionEvent allocWithZone:a3];
  v5 = [(SAConnectionEvent *)self identifier];
  v6 = [(SAConnectionEvent *)self state];
  v7 = [(SAConnectionEvent *)self date];
  v8 = [(SAConnectionEvent *)v4 initWithDeviceUUID:v5 state:v6 date:v7];

  return v8;
}

- (SAConnectionEvent)initWithDeviceUUID:(id)a3 state:(int64_t)a4 date:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = SAConnectionEvent;
  v10 = [(SAConnectionEvent *)&v17 init];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (v8 && v9)
  {
    v12 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    v10->_state = a4;
    v14 = [v9 copy];
    date = v10->_date;
    v10->_date = v14;

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
      v8 = [(SAConnectionEvent *)self identifier];
      v9 = [(SAConnectionEvent *)v7 identifier];
      if (v8 == v9 || (-[SAConnectionEvent identifier](self, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SAConnectionEvent identifier](v7, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(SAConnectionEvent *)self state];
        if (v11 == [(SAConnectionEvent *)v7 state])
        {
          v12 = [(SAConnectionEvent *)self date];
          v13 = [(SAConnectionEvent *)v7 date];
          v14 = v13;
          if (v12 == v13)
          {

            v10 = 1;
          }

          else
          {
            v15 = [(SAConnectionEvent *)self date];
            [(SAConnectionEvent *)v7 date];
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
  v13[1] = @"SAConnectionEventIdentifier";
  v5 = [(SAConnectionEvent *)self identifier];
  v6 = [v5 description];
  v14[1] = v6;
  v13[2] = @"SAConnectionEventState";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SAConnectionEvent state](self, "state")}];
  v14[2] = v7;
  v13[3] = @"SAConnectionEventDate";
  v8 = [(SAConnectionEvent *)self date];
  v9 = [v8 getDateString];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)description
{
  v3 = [(SAConnectionEvent *)self descriptionDictionary];
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

- (void)description
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_2656EA000, v4, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end