@interface TAUserActivity
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TAUserActivity)initWithActivityType:(unint64_t)a3 date:(id)a4;
- (TAUserActivity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TAUserActivity

- (TAUserActivity)initWithActivityType:(unint64_t)a3 date:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = TAUserActivity;
  v7 = [(TAUserActivity *)&v13 init];
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v7->_activityType = a3;
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
  v3 = [(TAUserActivity *)self activityType];
  v4 = [(TAUserActivity *)self date];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TAUserActivity *)self activityType];
      if (v6 == [(TAUserActivity *)v5 activityType])
      {
        v7 = [(TAUserActivity *)self date];
        v8 = [(TAUserActivity *)v5 date];
        if (v7 == v8)
        {
          v11 = 1;
        }

        else
        {
          v9 = [(TAUserActivity *)self date];
          v10 = [(TAUserActivity *)v5 date];
          v11 = [v9 isEqual:v10];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)descriptionDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v13[0] = v4;
  v12[1] = @"ActivityType";
  v5 = self->_activityType - 1;
  if (v5 > 3)
  {
    v6 = @"<unknown>";
  }

  else
  {
    v6 = off_279DD1E70[v5];
  }

  v13[1] = v6;
  v12[2] = @"Date";
  v7 = [(TAUserActivity *)self date];
  v8 = [v7 getDateString];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSString)description
{
  v3 = [(TAUserActivity *)self descriptionDictionary];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TAUserActivity alloc];
  activityType = self->_activityType;
  date = self->_date;

  return [(TAUserActivity *)v4 initWithActivityType:activityType date:date];
}

- (TAUserActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"ActivityType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v7 = [(TAUserActivity *)self initWithActivityType:v5 date:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  activityType = self->_activityType;
  v5 = a3;
  [v5 encodeInteger:activityType forKey:@"ActivityType"];
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