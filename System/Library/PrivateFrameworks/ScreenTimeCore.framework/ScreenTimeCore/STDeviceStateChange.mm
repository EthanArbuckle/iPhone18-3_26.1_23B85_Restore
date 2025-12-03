@interface STDeviceStateChange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceStateChange:(id)change;
- (STDeviceStateChange)initWithCoder:(id)coder;
- (STDeviceStateChange)initWithDeviceID:(id)d deviceName:(id)name devicePlatform:(int64_t)platform installedApps:(id)apps removedApps:(id)removedApps associatedUser:(id)user;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STDeviceStateChange

- (STDeviceStateChange)initWithDeviceID:(id)d deviceName:(id)name devicePlatform:(int64_t)platform installedApps:(id)apps removedApps:(id)removedApps associatedUser:(id)user
{
  v30.receiver = self;
  v30.super_class = STDeviceStateChange;
  userCopy = user;
  removedAppsCopy = removedApps;
  appsCopy = apps;
  nameCopy = name;
  dCopy = d;
  v18 = [(STDeviceStateChange *)&v30 init];
  v19 = [dCopy copy];

  deviceID = v18->_deviceID;
  v18->_deviceID = v19;

  v21 = [nameCopy copy];
  deviceName = v18->_deviceName;
  v18->_deviceName = v21;

  v18->_platform = platform;
  v23 = [appsCopy copy];

  installedApps = v18->_installedApps;
  v18->_installedApps = v23;

  v25 = [removedAppsCopy copy];
  removedApps = v18->_removedApps;
  v18->_removedApps = v25;

  v27 = [userCopy copy];
  associatedUser = v18->_associatedUser;
  v18->_associatedUser = v27;

  return v18;
}

- (id)description
{
  v3 = objc_opt_class();
  deviceID = [(STDeviceStateChange *)self deviceID];
  deviceName = [(STDeviceStateChange *)self deviceName];
  v6 = [(STDeviceStateChange *)self platform]- 1;
  if (v6 > 4)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1001A3AB8[v6];
  }

  installedApps = [(STDeviceStateChange *)self installedApps];
  v9 = [installedApps count];
  removedApps = [(STDeviceStateChange *)self removedApps];
  v11 = [removedApps count];
  associatedUser = [(STDeviceStateChange *)self associatedUser];
  v13 = [NSString stringWithFormat:@"<%@ { DeviceID: %@, DeviceName: %@, Platform: %@, InstalledApp(Count): %lu, RemovedApp(Count): %lu, Associated User: %@ }>", v3, deviceID, deviceName, v7, v9, v11, associatedUser];

  return v13;
}

- (STDeviceStateChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"encodingVersion"] < 1)
  {
    selfCopy = 0;
  }

  else
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    v7 = [coderCopy decodeIntegerForKey:@"platform"];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"installedApps"];
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:@"removedApps"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedUser"];
    self = [(STDeviceStateChange *)self initWithDeviceID:v5 deviceName:v6 devicePlatform:v7 installedApps:v11 removedApps:v12 associatedUser:v13];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:+[STDeviceStateChange encodingVersion](STDeviceStateChange forKey:{"encodingVersion"), @"encodingVersion"}];
  deviceID = [(STDeviceStateChange *)self deviceID];
  [coderCopy encodeObject:deviceID forKey:@"deviceID"];

  deviceName = [(STDeviceStateChange *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];

  [coderCopy encodeInteger:-[STDeviceStateChange platform](self forKey:{"platform"), @"platform"}];
  installedApps = [(STDeviceStateChange *)self installedApps];
  [coderCopy encodeObject:installedApps forKey:@"installedApps"];

  removedApps = [(STDeviceStateChange *)self removedApps];
  [coderCopy encodeObject:removedApps forKey:@"removedApps"];

  associatedUser = [(STDeviceStateChange *)self associatedUser];
  [coderCopy encodeObject:associatedUser forKey:@"associatedUser"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceID = self->_deviceID;
  deviceName = self->_deviceName;
  platform = self->_platform;
  installedApps = self->_installedApps;
  removedApps = self->_removedApps;
  associatedUser = self->_associatedUser;

  return [v4 initWithDeviceID:deviceID deviceName:deviceName devicePlatform:platform installedApps:installedApps removedApps:removedApps associatedUser:associatedUser];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STDeviceStateChange *)self isEqualToDeviceStateChange:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDeviceStateChange:(id)change
{
  changeCopy = change;
  if (changeCopy == self)
  {
    v15 = 1;
  }

  else
  {
    deviceID = [(STDeviceStateChange *)self deviceID];
    deviceID2 = [(STDeviceStateChange *)changeCopy deviceID];
    if ([deviceID isEqualToDeviceID:deviceID2])
    {
      deviceName = [(STDeviceStateChange *)self deviceName];
      deviceName2 = [(STDeviceStateChange *)changeCopy deviceName];
      if ([deviceName isEqualToString:deviceName2] && (v9 = -[STDeviceStateChange platform](self, "platform"), v9 == -[STDeviceStateChange platform](changeCopy, "platform")))
      {
        installedApps = [(STDeviceStateChange *)self installedApps];
        installedApps2 = [(STDeviceStateChange *)changeCopy installedApps];
        if ([installedApps isEqualToSet:installedApps2])
        {
          removedApps = [(STDeviceStateChange *)self removedApps];
          removedApps2 = [(STDeviceStateChange *)changeCopy removedApps];
          if ([removedApps isEqualToSet:removedApps2])
          {
            associatedUser = [(STDeviceStateChange *)self associatedUser];
            [(STDeviceStateChange *)changeCopy associatedUser];
            v14 = v18 = removedApps;
            v15 = [associatedUser isEqualToUserID:v14];

            removedApps = v18;
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
  deviceID = [(STDeviceStateChange *)self deviceID];
  v4 = [deviceID hash];
  deviceName = [(STDeviceStateChange *)self deviceName];
  v6 = [deviceName hash] ^ v4;
  platform = [(STDeviceStateChange *)self platform];
  installedApps = [(STDeviceStateChange *)self installedApps];
  v9 = v6 ^ platform ^ [installedApps hash];
  removedApps = [(STDeviceStateChange *)self removedApps];
  v11 = [removedApps hash];
  associatedUser = [(STDeviceStateChange *)self associatedUser];
  v13 = v11 ^ [associatedUser hash];

  return v9 ^ v13;
}

@end