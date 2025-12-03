@interface TAAISFetchSuccess
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TAAISFetchSuccess)initWithCoder:(id)coder;
- (TAAISFetchSuccess)initWithUUID:(id)d withAISInfo:(id)info successType:(unint64_t)type date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TAAISFetchSuccess

- (TAAISFetchSuccess)initWithUUID:(id)d withAISInfo:(id)info successType:(unint64_t)type date:(id)date
{
  dCopy = d;
  infoCopy = info;
  dateCopy = date;
  v22.receiver = self;
  v22.super_class = TAAISFetchSuccess;
  v13 = [(TAAISFetchSuccess *)&v22 init];
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = 0;
  if (dCopy && dateCopy)
  {
    v15 = [dCopy copy];
    uuid = v13->_uuid;
    v13->_uuid = v15;

    v17 = [infoCopy copy];
    info = v13->_info;
    v13->_info = v17;

    v13->_successType = type;
    v19 = [dateCopy copy];
    date = v13->_date;
    v13->_date = v19;

LABEL_5:
    v14 = v13;
  }

  return v14;
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
      uuid = [(TAAISFetchSuccess *)self uuid];
      uuid2 = [(TAAISFetchSuccess *)v7 uuid];
      if (uuid != uuid2)
      {
        uuid3 = [(TAAISFetchSuccess *)self uuid];
        uuid4 = [(TAAISFetchSuccess *)v7 uuid];
        if (![uuid3 isEqual:uuid4])
        {
          v10 = 0;
          goto LABEL_21;
        }
      }

      info = [(TAAISFetchSuccess *)self info];
      info2 = [(TAAISFetchSuccess *)v7 info];
      if (info != info2)
      {
        info3 = [(TAAISFetchSuccess *)self info];
        info4 = [(TAAISFetchSuccess *)v7 info];
        if (![info3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v25 = info3;
      }

      successType = [(TAAISFetchSuccess *)self successType];
      if (successType == [(TAAISFetchSuccess *)v7 successType])
      {
        v24 = uuid4;
        date = [(TAAISFetchSuccess *)self date];
        date2 = [(TAAISFetchSuccess *)v7 date];
        v17 = date2;
        if (date == date2)
        {

          v10 = 1;
        }

        else
        {
          [(TAAISFetchSuccess *)self date];
          v18 = v23 = uuid3;
          [(TAAISFetchSuccess *)v7 date];
          v19 = v22 = date;
          v10 = [v18 isEqual:v19];

          uuid3 = v23;
        }

        v20 = info == info2;
        uuid4 = v24;
      }

      else
      {
        v10 = 0;
        v20 = info == info2;
      }

      info3 = v25;
      if (v20)
      {
LABEL_20:

        if (uuid == uuid2)
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
  uuid = [(TAAISFetchSuccess *)self uuid];
  uUIDString = [uuid UUIDString];
  v17[1] = uUIDString;
  v16[2] = @"info";
  info = [(TAAISFetchSuccess *)self info];
  if (info)
  {
    info2 = [(TAAISFetchSuccess *)self info];
    descriptionDictionary = [info2 descriptionDictionary];
  }

  else
  {
    descriptionDictionary = &stru_287F632C0;
  }

  v17[2] = descriptionDictionary;
  v16[3] = @"type";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAAISFetchSuccess successType](self, "successType")}];
  v17[3] = v10;
  v16[4] = @"date";
  date = [(TAAISFetchSuccess *)self date];
  getDateString = [date getDateString];
  v17[4] = getDateString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  if (info)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  descriptionDictionary = [(TAAISFetchSuccess *)self descriptionDictionary];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TAAISFetchSuccess alloc];
  uuid = self->_uuid;
  info = self->_info;
  successType = self->_successType;
  date = self->_date;

  return [(TAAISFetchSuccess *)v4 initWithUUID:uuid withAISInfo:info successType:successType date:date];
}

- (TAAISFetchSuccess)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"info"];
  v7 = [coderCopy decodeIntegerForKey:@"type"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v9 = [(TAAISFetchSuccess *)self initWithUUID:v5 withAISInfo:v6 successType:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_info forKey:@"info"];
  [coderCopy encodeInteger:self->_successType forKey:@"type"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
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