@interface TAPlaySoundSuccess
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TAPlaySoundSuccess)initWithCoder:(id)coder;
- (TAPlaySoundSuccess)initWithUUID:(id)d address:(id)address successType:(unint64_t)type date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TAPlaySoundSuccess

- (TAPlaySoundSuccess)initWithUUID:(id)d address:(id)address successType:(unint64_t)type date:(id)date
{
  dCopy = d;
  addressCopy = address;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = TAPlaySoundSuccess;
  v14 = [(TAPlaySoundSuccess *)&v18 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

  v16 = 0;
  if (dCopy && addressCopy && dateCopy)
  {
    objc_storeStrong(&v14->_uuid, d);
    objc_storeStrong(&v15->_address, address);
    v15->_successType = type;
    objc_storeStrong(&v15->_date, date);
LABEL_6:
    v16 = v15;
  }

  return v16;
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
      uuid = [(TAPlaySoundSuccess *)self uuid];
      uuid2 = [(TAPlaySoundSuccess *)v7 uuid];
      if (uuid != uuid2)
      {
        uuid3 = [(TAPlaySoundSuccess *)self uuid];
        uuid4 = [(TAPlaySoundSuccess *)v7 uuid];
        if (![uuid3 isEqual:uuid4])
        {
          v10 = 0;
          goto LABEL_21;
        }
      }

      address = [(TAPlaySoundSuccess *)self address];
      address2 = [(TAPlaySoundSuccess *)v7 address];
      if (address != address2)
      {
        address3 = [(TAPlaySoundSuccess *)self address];
        address4 = [(TAPlaySoundSuccess *)v7 address];
        if (![address3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v25 = address3;
      }

      successType = [(TAPlaySoundSuccess *)self successType];
      if (successType == [(TAPlaySoundSuccess *)v7 successType])
      {
        v24 = uuid4;
        date = [(TAPlaySoundSuccess *)self date];
        date2 = [(TAPlaySoundSuccess *)v7 date];
        v17 = date2;
        if (date == date2)
        {

          v10 = 1;
        }

        else
        {
          [(TAPlaySoundSuccess *)self date];
          v18 = v23 = uuid3;
          [(TAPlaySoundSuccess *)v7 date];
          v19 = v22 = date;
          v10 = [v18 isEqual:v19];

          uuid3 = v23;
        }

        v20 = address == address2;
        uuid4 = v24;
      }

      else
      {
        v10 = 0;
        v20 = address == address2;
      }

      address3 = v25;
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
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v16[0] = v4;
  v15[1] = @"uuid";
  uuid = [(TAPlaySoundSuccess *)self uuid];
  uUIDString = [uuid UUIDString];
  v16[1] = uUIDString;
  v15[2] = @"add";
  address = [(TAPlaySoundSuccess *)self address];
  hexString = [address hexString];
  v16[2] = hexString;
  v15[3] = @"type";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAPlaySoundSuccess successType](self, "successType")}];
  v16[3] = v9;
  v15[4] = @"date";
  date = [(TAPlaySoundSuccess *)self date];
  getDateString = [date getDateString];
  v16[4] = getDateString;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)description
{
  descriptionDictionary = [(TAPlaySoundSuccess *)self descriptionDictionary];
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
  v4 = [TAPlaySoundSuccess alloc];
  uuid = self->_uuid;
  address = self->_address;
  successType = self->_successType;
  date = self->_date;

  return [(TAPlaySoundSuccess *)v4 initWithUUID:uuid address:address successType:successType date:date];
}

- (TAPlaySoundSuccess)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"add"];
  v7 = [coderCopy decodeIntegerForKey:@"type"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v9 = [(TAPlaySoundSuccess *)self initWithUUID:v5 address:v6 successType:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_address forKey:@"add"];
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