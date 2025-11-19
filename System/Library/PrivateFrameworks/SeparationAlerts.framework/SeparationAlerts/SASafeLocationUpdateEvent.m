@interface SASafeLocationUpdateEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SASafeLocationUpdateEvent)initWithCoder:(id)a3;
- (SASafeLocationUpdateEvent)initWithSafeLocation:(id)a3 eventType:(unint64_t)a4 lastEvent:(BOOL)a5 date:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)description;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SASafeLocationUpdateEvent

- (SASafeLocationUpdateEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"SASafeLocationUpdateEventSafeLocation"];
  v6 = [v4 decodeIntegerForKey:@"SASafeLocationUpdateEventType"];
  v7 = [v4 decodeBoolForKey:@"SASafeLocationUpdateEventLast"];
  v8 = [v4 decodeObjectForKey:@"SASafeLocationUpdateEventDate"];

  v9 = [(SASafeLocationUpdateEvent *)self initWithSafeLocation:v5 eventType:v6 lastEvent:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SASafeLocationUpdateEvent *)self safeLocation];
  [v4 encodeObject:v5 forKey:@"SASafeLocationUpdateEventSafeLocation"];

  [v4 encodeInteger:-[SASafeLocationUpdateEvent eventType](self forKey:{"eventType"), @"SASafeLocationUpdateEventType"}];
  [v4 encodeBool:-[SASafeLocationUpdateEvent lastEvent](self forKey:{"lastEvent"), @"SASafeLocationUpdateEventLast"}];
  v6 = [(SASafeLocationUpdateEvent *)self date];
  [v4 encodeObject:v6 forKey:@"SASafeLocationUpdateEventDate"];
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
  v4 = [SASafeLocationUpdateEvent allocWithZone:a3];
  v5 = [(SASafeLocationUpdateEvent *)self safeLocation];
  v6 = [(SASafeLocationUpdateEvent *)self eventType];
  v7 = [(SASafeLocationUpdateEvent *)self lastEvent];
  v8 = [(SASafeLocationUpdateEvent *)self date];
  v9 = [(SASafeLocationUpdateEvent *)v4 initWithSafeLocation:v5 eventType:v6 lastEvent:v7 date:v8];

  return v9;
}

- (SASafeLocationUpdateEvent)initWithSafeLocation:(id)a3 eventType:(unint64_t)a4 lastEvent:(BOOL)a5 date:(id)a6
{
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = SASafeLocationUpdateEvent;
  v12 = [(SASafeLocationUpdateEvent *)&v19 init];
  if (v12)
  {
    if (!v11)
    {
      v17 = 0;
      goto LABEL_8;
    }

    if (v10)
    {
      v13 = [v10 copy];
      safeLocation = v12->_safeLocation;
      v12->_safeLocation = v13;
    }

    v12->_eventType = a4;
    v12->_lastEvent = a5;
    v15 = [v11 copy];
    date = v12->_date;
    v12->_date = v15;
  }

  v17 = v12;
LABEL_8:

  return v17;
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
      v8 = [(SASafeLocationUpdateEvent *)self safeLocation];
      v9 = [(SASafeLocationUpdateEvent *)v7 safeLocation];
      if (v8 == v9 || (-[SASafeLocationUpdateEvent safeLocation](self, "safeLocation"), v3 = objc_claimAutoreleasedReturnValue(), -[SASafeLocationUpdateEvent safeLocation](v7, "safeLocation"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(SASafeLocationUpdateEvent *)self eventType];
        if (v11 == [(SASafeLocationUpdateEvent *)v7 eventType]&& (v12 = [(SASafeLocationUpdateEvent *)self lastEvent], v12 == [(SASafeLocationUpdateEvent *)v7 lastEvent]))
        {
          v14 = [(SASafeLocationUpdateEvent *)self date];
          v15 = [(SASafeLocationUpdateEvent *)v7 date];
          v16 = v15;
          if (v14 == v15)
          {

            v10 = 1;
          }

          else
          {
            v17 = [(SASafeLocationUpdateEvent *)self date];
            [(SASafeLocationUpdateEvent *)v7 date];
            v18 = v19 = v14;
            v10 = [v17 isEqual:v18];
          }
        }

        else
        {
          v10 = 0;
        }

        if (v8 == v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)descriptionDictionary
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"EventType";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v16[0] = v5;
  v15[1] = @"SASafeLocationUpdateEventSafeLocation";
  v6 = [(SASafeLocationUpdateEvent *)self safeLocation];
  if (v6)
  {
    v2 = [(SASafeLocationUpdateEvent *)self safeLocation];
    v7 = [v2 description];
  }

  else
  {
    v7 = &stru_287709218;
  }

  v16[1] = v7;
  v15[2] = @"SASafeLocationUpdateEventType";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SASafeLocationUpdateEvent eventType](self, "eventType")}];
  v16[2] = v8;
  v15[3] = @"SASafeLocationUpdateEventLast";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SASafeLocationUpdateEvent lastEvent](self, "lastEvent")}];
  v16[3] = v9;
  v15[4] = @"SASafeLocationUpdateEventDate";
  v10 = [(SASafeLocationUpdateEvent *)self date];
  v11 = [v10 getDateString];
  v16[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  if (v6)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)description
{
  v2 = [(SASafeLocationUpdateEvent *)self descriptionDictionary];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v2 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SASafeLocationUpdateEvent *)v5 description];
    }

    v6 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (void)description
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2656EA000, v4, v5, "%@ instance failed to create description:%@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end