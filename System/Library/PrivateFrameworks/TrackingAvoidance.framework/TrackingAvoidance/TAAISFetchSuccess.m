@interface TAAISFetchSuccess
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TAAISFetchSuccess)initWithCoder:(id)a3;
- (TAAISFetchSuccess)initWithUUID:(id)a3 withAISInfo:(id)a4 successType:(unint64_t)a5 date:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TAAISFetchSuccess

- (TAAISFetchSuccess)initWithUUID:(id)a3 withAISInfo:(id)a4 successType:(unint64_t)a5 date:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = TAAISFetchSuccess;
  v13 = [(TAAISFetchSuccess *)&v22 init];
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = 0;
  if (v10 && v12)
  {
    v15 = [v10 copy];
    uuid = v13->_uuid;
    v13->_uuid = v15;

    v17 = [v11 copy];
    info = v13->_info;
    v13->_info = v17;

    v13->_successType = a5;
    v19 = [v12 copy];
    date = v13->_date;
    v13->_date = v19;

LABEL_5:
    v14 = v13;
  }

  return v14;
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
      v8 = [(TAAISFetchSuccess *)self uuid];
      v9 = [(TAAISFetchSuccess *)v7 uuid];
      if (v8 != v9)
      {
        v3 = [(TAAISFetchSuccess *)self uuid];
        v4 = [(TAAISFetchSuccess *)v7 uuid];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_21;
        }
      }

      v11 = [(TAAISFetchSuccess *)self info];
      v12 = [(TAAISFetchSuccess *)v7 info];
      if (v11 != v12)
      {
        v13 = [(TAAISFetchSuccess *)self info];
        v26 = [(TAAISFetchSuccess *)v7 info];
        if (![v13 isEqual:?])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v25 = v13;
      }

      v14 = [(TAAISFetchSuccess *)self successType];
      if (v14 == [(TAAISFetchSuccess *)v7 successType])
      {
        v24 = v4;
        v15 = [(TAAISFetchSuccess *)self date];
        v16 = [(TAAISFetchSuccess *)v7 date];
        v17 = v16;
        if (v15 == v16)
        {

          v10 = 1;
        }

        else
        {
          [(TAAISFetchSuccess *)self date];
          v18 = v23 = v3;
          [(TAAISFetchSuccess *)v7 date];
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
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = @"EventType";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v17[0] = v5;
  v16[1] = @"uuid";
  v6 = [(TAAISFetchSuccess *)self uuid];
  v7 = [v6 UUIDString];
  v17[1] = v7;
  v16[2] = @"info";
  v8 = [(TAAISFetchSuccess *)self info];
  if (v8)
  {
    v2 = [(TAAISFetchSuccess *)self info];
    v9 = [v2 descriptionDictionary];
  }

  else
  {
    v9 = &stru_287F632C0;
  }

  v17[2] = v9;
  v16[3] = @"type";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAAISFetchSuccess successType](self, "successType")}];
  v17[3] = v10;
  v16[4] = @"date";
  v11 = [(TAAISFetchSuccess *)self date];
  v12 = [v11 getDateString];
  v17[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  if (v8)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  v3 = [(TAAISFetchSuccess *)self descriptionDictionary];
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
  v4 = [TAAISFetchSuccess alloc];
  uuid = self->_uuid;
  info = self->_info;
  successType = self->_successType;
  date = self->_date;

  return [(TAAISFetchSuccess *)v4 initWithUUID:uuid withAISInfo:info successType:successType date:date];
}

- (TAAISFetchSuccess)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"info"];
  v7 = [v4 decodeIntegerForKey:@"type"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v9 = [(TAAISFetchSuccess *)self initWithUUID:v5 withAISInfo:v6 successType:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_info forKey:@"info"];
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