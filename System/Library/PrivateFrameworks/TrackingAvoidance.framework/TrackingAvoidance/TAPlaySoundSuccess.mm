@interface TAPlaySoundSuccess
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TAPlaySoundSuccess)initWithCoder:(id)a3;
- (TAPlaySoundSuccess)initWithUUID:(id)a3 address:(id)a4 successType:(unint64_t)a5 date:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TAPlaySoundSuccess

- (TAPlaySoundSuccess)initWithUUID:(id)a3 address:(id)a4 successType:(unint64_t)a5 date:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = TAPlaySoundSuccess;
  v14 = [(TAPlaySoundSuccess *)&v18 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

  v16 = 0;
  if (v11 && v12 && v13)
  {
    objc_storeStrong(&v14->_uuid, a3);
    objc_storeStrong(&v15->_address, a4);
    v15->_successType = a5;
    objc_storeStrong(&v15->_date, a6);
LABEL_6:
    v16 = v15;
  }

  return v16;
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
      v8 = [(TAPlaySoundSuccess *)self uuid];
      v9 = [(TAPlaySoundSuccess *)v7 uuid];
      if (v8 != v9)
      {
        v3 = [(TAPlaySoundSuccess *)self uuid];
        v4 = [(TAPlaySoundSuccess *)v7 uuid];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_21;
        }
      }

      v11 = [(TAPlaySoundSuccess *)self address];
      v12 = [(TAPlaySoundSuccess *)v7 address];
      if (v11 != v12)
      {
        v13 = [(TAPlaySoundSuccess *)self address];
        v26 = [(TAPlaySoundSuccess *)v7 address];
        if (![v13 isEqual:?])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v25 = v13;
      }

      v14 = [(TAPlaySoundSuccess *)self successType];
      if (v14 == [(TAPlaySoundSuccess *)v7 successType])
      {
        v24 = v4;
        v15 = [(TAPlaySoundSuccess *)self date];
        v16 = [(TAPlaySoundSuccess *)v7 date];
        v17 = v16;
        if (v15 == v16)
        {

          v10 = 1;
        }

        else
        {
          [(TAPlaySoundSuccess *)self date];
          v18 = v23 = v3;
          [(TAPlaySoundSuccess *)v7 date];
          v19 = v22 = v15;
          v10 = [v18 isEqual:v19];

          v3 = v23;
        }

        v20 = v11 == v12;
        v4 = v24;
      }

      else
      {
        v10 = 0;
        v20 = v11 == v12;
      }

      v13 = v25;
      if (v20)
      {
LABEL_20:

        if (v8 == v9)
        {
LABEL_22:

          goto LABEL_23;
        }

LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v10 = 0;
  }

LABEL_23:

  return v10;
}

- (id)descriptionDictionary
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v16[0] = v4;
  v15[1] = @"uuid";
  v5 = [(TAPlaySoundSuccess *)self uuid];
  v6 = [v5 UUIDString];
  v16[1] = v6;
  v15[2] = @"add";
  v7 = [(TAPlaySoundSuccess *)self address];
  v8 = [v7 hexString];
  v16[2] = v8;
  v15[3] = @"type";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAPlaySoundSuccess successType](self, "successType")}];
  v16[3] = v9;
  v15[4] = @"date";
  v10 = [(TAPlaySoundSuccess *)self date];
  v11 = [v10 getDateString];
  v16[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)description
{
  v3 = [(TAPlaySoundSuccess *)self descriptionDictionary];
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
  v4 = [TAPlaySoundSuccess alloc];
  uuid = self->_uuid;
  address = self->_address;
  successType = self->_successType;
  date = self->_date;

  return [(TAPlaySoundSuccess *)v4 initWithUUID:uuid address:address successType:successType date:date];
}

- (TAPlaySoundSuccess)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"add"];
  v7 = [v4 decodeIntegerForKey:@"type"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v9 = [(TAPlaySoundSuccess *)self initWithUUID:v5 address:v6 successType:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_address forKey:@"add"];
  [v5 encodeInteger:self->_successType forKey:@"type"];
  [v5 encodeObject:self->_date forKey:@"date"];
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