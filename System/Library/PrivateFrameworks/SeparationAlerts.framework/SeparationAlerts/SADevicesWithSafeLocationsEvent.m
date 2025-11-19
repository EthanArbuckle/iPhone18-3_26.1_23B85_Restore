@interface SADevicesWithSafeLocationsEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SADevicesWithSafeLocationsEvent)initWithCoder:(id)a3;
- (SADevicesWithSafeLocationsEvent)initWithDevices:(id)a3 safeLocationUUIDs:(id)a4 date:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SADevicesWithSafeLocationsEvent

- (SADevicesWithSafeLocationsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"kSADevicesWithSafeLocationsEventKeyDevices"];
  v6 = [v4 decodeObjectForKey:@"kSADevicesWithSafeLocationsEventKeySafeLocationIDs"];
  v7 = [v4 decodeObjectForKey:@"kSADevicesWithSafeLocationsEventKeyDate"];

  v8 = [(SADevicesWithSafeLocationsEvent *)self initWithDevices:v5 safeLocationUUIDs:v6 date:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SADevicesWithSafeLocationsEvent *)self devices];
  [v4 encodeObject:v5 forKey:@"kSADevicesWithSafeLocationsEventKeyDevices"];

  v6 = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
  [v4 encodeObject:v6 forKey:@"kSADevicesWithSafeLocationsEventKeySafeLocationIDs"];

  v7 = [(SADevicesWithSafeLocationsEvent *)self date];
  [v4 encodeObject:v7 forKey:@"kSADevicesWithSafeLocationsEventKeyDate"];
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
  v4 = [SADevicesWithSafeLocationsEvent allocWithZone:a3];
  v5 = [(SADevicesWithSafeLocationsEvent *)self devices];
  v6 = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
  v7 = [(SADevicesWithSafeLocationsEvent *)self date];
  v8 = [(SADevicesWithSafeLocationsEvent *)v4 initWithDevices:v5 safeLocationUUIDs:v6 date:v7];

  return v8;
}

- (SADevicesWithSafeLocationsEvent)initWithDevices:(id)a3 safeLocationUUIDs:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SADevicesWithSafeLocationsEvent;
  v11 = [(SADevicesWithSafeLocationsEvent *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    devices = v11->_devices;
    v11->_devices = v12;

    v14 = [v9 copy];
    safeLocations = v11->_safeLocations;
    v11->_safeLocations = v14;

    v16 = [v10 copy];
    date = v11->_date;
    v11->_date = v16;
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
      v8 = [(SADevicesWithSafeLocationsEvent *)self devices];
      v9 = [(SADevicesWithSafeLocationsEvent *)v7 devices];
      if (v8 != v9)
      {
        v3 = [(SADevicesWithSafeLocationsEvent *)self devices];
        v4 = [(SADevicesWithSafeLocationsEvent *)v7 devices];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
      v12 = [(SADevicesWithSafeLocationsEvent *)v7 safeLocations];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
        v27 = [(SADevicesWithSafeLocationsEvent *)v7 safeLocations];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(SADevicesWithSafeLocationsEvent *)self date];
      v16 = [(SADevicesWithSafeLocationsEvent *)v7 date];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(SADevicesWithSafeLocationsEvent *)self date];
        v18 = v25 = v3;
        [(SADevicesWithSafeLocationsEvent *)v7 date];
        v24 = v11;
        v19 = v4;
        v20 = v9;
        v22 = v21 = v8;
        v10 = [v18 isEqual:v22];

        v8 = v21;
        v9 = v20;
        v4 = v19;
        v11 = v24;

        v3 = v25;
      }

      v13 = v28;
      v14 = v26;
      if (v11 == v28)
      {
LABEL_18:

        if (v8 == v9)
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
  v7 = [(SADevicesWithSafeLocationsEvent *)self devices];
  if (v7)
  {
    v2 = [(SADevicesWithSafeLocationsEvent *)self devices];
    v8 = [v2 description];
  }

  else
  {
    v8 = &stru_287709218;
  }

  v17[1] = v8;
  v16[2] = @"kSADevicesWithSafeLocationsEventKeySafeLocationIDs";
  v9 = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
  if (v9)
  {
    v3 = [(SADevicesWithSafeLocationsEvent *)self safeLocations];
    v10 = [v3 description];
  }

  else
  {
    v10 = &stru_287709218;
  }

  v17[2] = v10;
  v16[3] = @"kSADevicesWithSafeLocationsEventKeyDate";
  v11 = [(SADevicesWithSafeLocationsEvent *)self date];
  v12 = [v11 getDateString];
  v17[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  if (v9)
  {
  }

  if (v7)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  v2 = [(SADevicesWithSafeLocationsEvent *)self descriptionDictionary];
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