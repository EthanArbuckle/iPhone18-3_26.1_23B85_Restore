@interface SADevicesWithSafeLocationsEvent
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SADevicesWithSafeLocationsEvent)initWithCoder:(id)coder;
- (SADevicesWithSafeLocationsEvent)initWithDevices:(id)devices safeLocationUUIDs:(id)ds date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SADevicesWithSafeLocationsEvent

- (SADevicesWithSafeLocationsEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"kSADevicesWithSafeLocationsEventKeyDevices"];
  v6 = [coderCopy decodeObjectForKey:@"kSADevicesWithSafeLocationsEventKeySafeLocationIDs"];
  v7 = [coderCopy decodeObjectForKey:@"kSADevicesWithSafeLocationsEventKeyDate"];

  v8 = [(SADevicesWithSafeLocationsEvent *)self initWithDevices:v5 safeLocationUUIDs:v6 date:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  devices = [(SADevicesWithSafeLocationsEvent *)self devices];
  [coderCopy encodeObject:devices forKey:@"kSADevicesWithSafeLocationsEventKeyDevices"];

  safeLocations = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
  [coderCopy encodeObject:safeLocations forKey:@"kSADevicesWithSafeLocationsEventKeySafeLocationIDs"];

  date = [(SADevicesWithSafeLocationsEvent *)self date];
  [coderCopy encodeObject:date forKey:@"kSADevicesWithSafeLocationsEventKeyDate"];
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
  v4 = [SADevicesWithSafeLocationsEvent allocWithZone:zone];
  devices = [(SADevicesWithSafeLocationsEvent *)self devices];
  safeLocations = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
  date = [(SADevicesWithSafeLocationsEvent *)self date];
  v8 = [(SADevicesWithSafeLocationsEvent *)v4 initWithDevices:devices safeLocationUUIDs:safeLocations date:date];

  return v8;
}

- (SADevicesWithSafeLocationsEvent)initWithDevices:(id)devices safeLocationUUIDs:(id)ds date:(id)date
{
  devicesCopy = devices;
  dsCopy = ds;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = SADevicesWithSafeLocationsEvent;
  v11 = [(SADevicesWithSafeLocationsEvent *)&v19 init];
  if (v11)
  {
    v12 = [devicesCopy copy];
    devices = v11->_devices;
    v11->_devices = v12;

    v14 = [dsCopy copy];
    safeLocations = v11->_safeLocations;
    v11->_safeLocations = v14;

    v16 = [dateCopy copy];
    date = v11->_date;
    v11->_date = v16;
  }

  return v11;
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
      devices = [(SADevicesWithSafeLocationsEvent *)self devices];
      devices2 = [(SADevicesWithSafeLocationsEvent *)v7 devices];
      if (devices != devices2)
      {
        devices3 = [(SADevicesWithSafeLocationsEvent *)self devices];
        devices4 = [(SADevicesWithSafeLocationsEvent *)v7 devices];
        if (![devices3 isEqual:devices4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      safeLocations = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
      safeLocations2 = [(SADevicesWithSafeLocationsEvent *)v7 safeLocations];
      v13 = safeLocations2;
      if (safeLocations == safeLocations2)
      {
        v28 = safeLocations2;
      }

      else
      {
        safeLocations3 = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
        safeLocations4 = [(SADevicesWithSafeLocationsEvent *)v7 safeLocations];
        if (![safeLocations3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = safeLocations3;
        v28 = v13;
      }

      date = [(SADevicesWithSafeLocationsEvent *)self date];
      date2 = [(SADevicesWithSafeLocationsEvent *)v7 date];
      v17 = date2;
      if (date == date2)
      {

        v10 = 1;
      }

      else
      {
        [(SADevicesWithSafeLocationsEvent *)self date];
        v18 = v25 = devices3;
        [(SADevicesWithSafeLocationsEvent *)v7 date];
        v24 = safeLocations;
        v19 = devices4;
        v20 = devices2;
        v22 = v21 = devices;
        v10 = [v18 isEqual:v22];

        devices = v21;
        devices2 = v20;
        devices4 = v19;
        safeLocations = v24;

        devices3 = v25;
      }

      v13 = v28;
      safeLocations3 = v26;
      if (safeLocations == v28)
      {
LABEL_18:

        if (devices == devices2)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (id)descriptionDictionary
{
  v17[4] = *MEMORY[0x277D85DE8];
  v16[0] = @"EventType";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v17[0] = v6;
  v16[1] = @"kSADevicesWithSafeLocationsEventKeyDevices";
  devices = [(SADevicesWithSafeLocationsEvent *)self devices];
  if (devices)
  {
    devices2 = [(SADevicesWithSafeLocationsEvent *)self devices];
    v8 = [devices2 description];
  }

  else
  {
    v8 = &stru_287709218;
  }

  v17[1] = v8;
  v16[2] = @"kSADevicesWithSafeLocationsEventKeySafeLocationIDs";
  safeLocations = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
  if (safeLocations)
  {
    safeLocations2 = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
    v10 = [safeLocations2 description];
  }

  else
  {
    v10 = &stru_287709218;
  }

  v17[2] = v10;
  v16[3] = @"kSADevicesWithSafeLocationsEventKeyDate";
  date = [(SADevicesWithSafeLocationsEvent *)self date];
  getDateString = [date getDateString];
  v17[3] = getDateString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  if (safeLocations)
  {
  }

  if (devices)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  descriptionDictionary = [(SADevicesWithSafeLocationsEvent *)self descriptionDictionary];
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