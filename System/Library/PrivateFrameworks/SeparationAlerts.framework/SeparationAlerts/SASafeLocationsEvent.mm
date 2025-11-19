@interface SASafeLocationsEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SASafeLocationsEvent)initWithCoder:(id)a3;
- (SASafeLocationsEvent)initWithSafeLocations:(id)a3 date:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SASafeLocationsEvent

- (SASafeLocationsEvent)initWithCoder:(id)a3
{
  v13[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v13[5] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"kSASafeLocationsEventKeySafeLocations"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"kSASafeLocationsEventKeyDate"];

  v10 = [(SASafeLocationsEvent *)self initWithSafeLocations:v8 date:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SASafeLocationsEvent *)self safeLocations];
  [v4 encodeObject:v5 forKey:@"kSASafeLocationsEventKeySafeLocations"];

  v6 = [(SASafeLocationsEvent *)self date];
  [v4 encodeObject:v6 forKey:@"kSASafeLocationsEventKeyDate"];
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
  v4 = [SASafeLocationsEvent allocWithZone:a3];
  v5 = [(SASafeLocationsEvent *)self safeLocations];
  v6 = [(SASafeLocationsEvent *)self date];
  v7 = [(SASafeLocationsEvent *)v4 initWithSafeLocations:v5 date:v6];

  return v7;
}

- (SASafeLocationsEvent)initWithSafeLocations:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SASafeLocationsEvent;
  v8 = [(SASafeLocationsEvent *)&v15 init];
  if (v8)
  {
    if (!v7)
    {
      v13 = 0;
      goto LABEL_8;
    }

    if (v6)
    {
      v9 = [v6 copy];
      safeLocations = v8->_safeLocations;
      v8->_safeLocations = v9;
    }

    v11 = [v7 copy];
    date = v8->_date;
    v8->_date = v11;
  }

  v13 = v8;
LABEL_8:

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(SASafeLocationsEvent *)self safeLocations];
      v8 = [(SASafeLocationsEvent *)v6 safeLocations];
      if (v7 != v8)
      {
        v9 = [(SASafeLocationsEvent *)self safeLocations];
        v3 = [(SASafeLocationsEvent *)v6 safeLocations];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(SASafeLocationsEvent *)self date];
      v12 = [(SASafeLocationsEvent *)v6 date];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(SASafeLocationsEvent *)self date];
        v14 = [(SASafeLocationsEvent *)v6 date];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)descriptionDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10[1] = @"kSASafeLocationsEventKeySafeLocations";
  v11[0] = v4;
  v5 = [(SASafeLocationsEvent *)self safeLocations];
  if (v5)
  {
    self = [(SASafeLocationsEvent *)self safeLocations];
    v6 = [(SASafeLocationsEvent *)self description];
  }

  else
  {
    v6 = &stru_287709218;
  }

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v5)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)description
{
  v2 = [(SASafeLocationsEvent *)self descriptionDictionary];
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

@end