@interface SASafeLocationsEvent
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SASafeLocationsEvent)initWithCoder:(id)coder;
- (SASafeLocationsEvent)initWithSafeLocations:(id)locations date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SASafeLocationsEvent

- (SASafeLocationsEvent)initWithCoder:(id)coder
{
  v13[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v13[5] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"kSASafeLocationsEventKeySafeLocations"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSASafeLocationsEventKeyDate"];

  v10 = [(SASafeLocationsEvent *)self initWithSafeLocations:v8 date:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  safeLocations = [(SASafeLocationsEvent *)self safeLocations];
  [coderCopy encodeObject:safeLocations forKey:@"kSASafeLocationsEventKeySafeLocations"];

  date = [(SASafeLocationsEvent *)self date];
  [coderCopy encodeObject:date forKey:@"kSASafeLocationsEventKeyDate"];
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
  v4 = [SASafeLocationsEvent allocWithZone:zone];
  safeLocations = [(SASafeLocationsEvent *)self safeLocations];
  date = [(SASafeLocationsEvent *)self date];
  v7 = [(SASafeLocationsEvent *)v4 initWithSafeLocations:safeLocations date:date];

  return v7;
}

- (SASafeLocationsEvent)initWithSafeLocations:(id)locations date:(id)date
{
  locationsCopy = locations;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = SASafeLocationsEvent;
  v8 = [(SASafeLocationsEvent *)&v15 init];
  if (v8)
  {
    if (!dateCopy)
    {
      v13 = 0;
      goto LABEL_8;
    }

    if (locationsCopy)
    {
      v9 = [locationsCopy copy];
      safeLocations = v8->_safeLocations;
      v8->_safeLocations = v9;
    }

    v11 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v11;
  }

  v13 = v8;
LABEL_8:

  return v13;
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
      v6 = equalCopy;
      safeLocations = [(SASafeLocationsEvent *)self safeLocations];
      safeLocations2 = [(SASafeLocationsEvent *)v6 safeLocations];
      if (safeLocations != safeLocations2)
      {
        safeLocations3 = [(SASafeLocationsEvent *)self safeLocations];
        safeLocations4 = [(SASafeLocationsEvent *)v6 safeLocations];
        if (![safeLocations3 isEqual:safeLocations4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = safeLocations3;
      }

      date = [(SASafeLocationsEvent *)self date];
      date2 = [(SASafeLocationsEvent *)v6 date];
      if (date == date2)
      {
        v10 = 1;
      }

      else
      {
        date3 = [(SASafeLocationsEvent *)self date];
        date4 = [(SASafeLocationsEvent *)v6 date];
        v10 = [date3 isEqual:date4];
      }

      safeLocations3 = v16;
      if (safeLocations == safeLocations2)
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
  safeLocations = [(SASafeLocationsEvent *)self safeLocations];
  if (safeLocations)
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
  if (safeLocations)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)description
{
  descriptionDictionary = [(SASafeLocationsEvent *)self descriptionDictionary];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SASafeLocationUpdateEvent *)v5 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  return v7;
}

@end