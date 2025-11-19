@interface STDeviceStateChange
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceStateChange:(id)a3;
- (STDeviceStateChange)initWithCoder:(id)a3;
- (STDeviceStateChange)initWithDeviceID:(id)a3 deviceName:(id)a4 devicePlatform:(int64_t)a5 installedApps:(id)a6 removedApps:(id)a7 associatedUser:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STDeviceStateChange

- (STDeviceStateChange)initWithDeviceID:(id)a3 deviceName:(id)a4 devicePlatform:(int64_t)a5 installedApps:(id)a6 removedApps:(id)a7 associatedUser:(id)a8
{
  v30.receiver = self;
  v30.super_class = STDeviceStateChange;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = [(STDeviceStateChange *)&v30 init];
  v19 = [v17 copy];

  deviceID = v18->_deviceID;
  v18->_deviceID = v19;

  v21 = [v16 copy];
  deviceName = v18->_deviceName;
  v18->_deviceName = v21;

  v18->_platform = a5;
  v23 = [v15 copy];

  installedApps = v18->_installedApps;
  v18->_installedApps = v23;

  v25 = [v14 copy];
  removedApps = v18->_removedApps;
  v18->_removedApps = v25;

  v27 = [v13 copy];
  associatedUser = v18->_associatedUser;
  v18->_associatedUser = v27;

  return v18;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STDeviceStateChange *)self deviceID];
  v5 = [(STDeviceStateChange *)self deviceName];
  v6 = [(STDeviceStateChange *)self platform]- 1;
  if (v6 > 4)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1001A3AB8[v6];
  }

  v8 = [(STDeviceStateChange *)self installedApps];
  v9 = [v8 count];
  v10 = [(STDeviceStateChange *)self removedApps];
  v11 = [v10 count];
  v12 = [(STDeviceStateChange *)self associatedUser];
  v13 = [NSString stringWithFormat:@"<%@ { DeviceID: %@, DeviceName: %@, Platform: %@, InstalledApp(Count): %lu, RemovedApp(Count): %lu, Associated User: %@ }>", v3, v4, v5, v7, v9, v11, v12];

  return v13;
}

- (STDeviceStateChange)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"encodingVersion"] < 1)
  {
    v14 = 0;
  }

  else
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    v7 = [v4 decodeIntegerForKey:@"platform"];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"installedApps"];
    v12 = [v4 decodeObjectOfClasses:v10 forKey:@"removedApps"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedUser"];
    self = [(STDeviceStateChange *)self initWithDeviceID:v5 deviceName:v6 devicePlatform:v7 installedApps:v11 removedApps:v12 associatedUser:v13];

    v14 = self;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:+[STDeviceStateChange encodingVersion](STDeviceStateChange forKey:{"encodingVersion"), @"encodingVersion"}];
  v5 = [(STDeviceStateChange *)self deviceID];
  [v4 encodeObject:v5 forKey:@"deviceID"];

  v6 = [(STDeviceStateChange *)self deviceName];
  [v4 encodeObject:v6 forKey:@"deviceName"];

  [v4 encodeInteger:-[STDeviceStateChange platform](self forKey:{"platform"), @"platform"}];
  v7 = [(STDeviceStateChange *)self installedApps];
  [v4 encodeObject:v7 forKey:@"installedApps"];

  v8 = [(STDeviceStateChange *)self removedApps];
  [v4 encodeObject:v8 forKey:@"removedApps"];

  v9 = [(STDeviceStateChange *)self associatedUser];
  [v4 encodeObject:v9 forKey:@"associatedUser"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  deviceID = self->_deviceID;
  deviceName = self->_deviceName;
  platform = self->_platform;
  installedApps = self->_installedApps;
  removedApps = self->_removedApps;
  associatedUser = self->_associatedUser;

  return [v4 initWithDeviceID:deviceID deviceName:deviceName devicePlatform:platform installedApps:installedApps removedApps:removedApps associatedUser:associatedUser];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STDeviceStateChange *)self isEqualToDeviceStateChange:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDeviceStateChange:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    v5 = [(STDeviceStateChange *)self deviceID];
    v6 = [(STDeviceStateChange *)v4 deviceID];
    if ([v5 isEqualToDeviceID:v6])
    {
      v7 = [(STDeviceStateChange *)self deviceName];
      v8 = [(STDeviceStateChange *)v4 deviceName];
      if ([v7 isEqualToString:v8] && (v9 = -[STDeviceStateChange platform](self, "platform"), v9 == -[STDeviceStateChange platform](v4, "platform")))
      {
        v10 = [(STDeviceStateChange *)self installedApps];
        v11 = [(STDeviceStateChange *)v4 installedApps];
        if ([v10 isEqualToSet:v11])
        {
          v12 = [(STDeviceStateChange *)self removedApps];
          v13 = [(STDeviceStateChange *)v4 removedApps];
          if ([v12 isEqualToSet:v13])
          {
            v17 = [(STDeviceStateChange *)self associatedUser];
            [(STDeviceStateChange *)v4 associatedUser];
            v14 = v18 = v12;
            v15 = [v17 isEqualToUserID:v14];

            v12 = v18;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(STDeviceStateChange *)self deviceID];
  v4 = [v3 hash];
  v5 = [(STDeviceStateChange *)self deviceName];
  v6 = [v5 hash] ^ v4;
  v7 = [(STDeviceStateChange *)self platform];
  v8 = [(STDeviceStateChange *)self installedApps];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(STDeviceStateChange *)self removedApps];
  v11 = [v10 hash];
  v12 = [(STDeviceStateChange *)self associatedUser];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

@end