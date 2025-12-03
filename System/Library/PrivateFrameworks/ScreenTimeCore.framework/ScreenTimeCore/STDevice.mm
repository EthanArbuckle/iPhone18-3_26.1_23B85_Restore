@interface STDevice
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (STDevice)deviceWithAppliedChange:(id)change;
- (STDevice)initWithCoder:(id)coder;
- (STDevice)initWithID:(id)d name:(id)name platform:(int64_t)platform apps:(id)apps;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STDevice

- (STDevice)initWithID:(id)d name:(id)name platform:(int64_t)platform apps:(id)apps
{
  v20.receiver = self;
  v20.super_class = STDevice;
  appsCopy = apps;
  nameCopy = name;
  dCopy = d;
  v12 = [(STDevice *)&v20 init];
  v13 = [dCopy copy];

  deviceID = v12->_deviceID;
  v12->_deviceID = v13;

  v15 = [nameCopy copy];
  name = v12->_name;
  v12->_name = v15;

  v12->_platform = platform;
  v17 = [appsCopy copy];

  apps = v12->_apps;
  v12->_apps = v17;

  return v12;
}

- (STDevice)deviceWithAppliedChange:(id)change
{
  changeCopy = change;
  deviceID = [changeCopy deviceID];
  deviceID2 = [(STDevice *)self deviceID];
  v7 = [deviceID isEqualToDeviceID:deviceID2];

  if (v7 && (v8 = [changeCopy platform], v8 == -[STDevice platform](self, "platform")))
  {
    v26 = v8;
    v28 = deviceID;
    installedApps = [changeCopy installedApps];
    removedApps = [changeCopy removedApps];
    v10 = [removedApps valueForKeyPath:@"bundleIdentifier"];
    apps = [(STDevice *)self apps];
    v12 = [apps mutableCopy];

    v27 = installedApps;
    [v12 unionSet:installedApps];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [v12 copy];
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          bundleIdentifier = [v18 bundleIdentifier];
          v20 = [v10 containsObject:bundleIdentifier];

          if (v20)
          {
            [v12 removeObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    v21 = [STDevice alloc];
    deviceName = [changeCopy deviceName];
    deviceID = v28;
    v23 = [(STDevice *)v21 initWithID:v28 name:deviceName platform:v26 apps:v12];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)description
{
  v3 = objc_opt_class();
  deviceID = [(STDevice *)self deviceID];
  name = [(STDevice *)self name];
  v6 = [(STDevice *)self platform]- 1;
  if (v6 > 4)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1001A3A90[v6];
  }

  apps = [(STDevice *)self apps];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { DeviceID: %@, Name: %@, Platform: %@, App Count: %lu }>", v3, deviceID, name, v7, [apps count]);

  return v9;
}

- (STDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeIntegerForKey:@"platform"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"apps"];

  v11 = [NSSet setWithArray:v10];

  v12 = [(STDevice *)self initWithID:v5 name:v6 platform:v7 apps:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceID = [(STDevice *)self deviceID];
  [coderCopy encodeObject:deviceID forKey:@"deviceID"];

  name = [(STDevice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInteger:-[STDevice platform](self forKey:{"platform"), @"platform"}];
  apps = [(STDevice *)self apps];
  allObjects = [apps allObjects];
  [coderCopy encodeObject:allObjects forKey:@"apps"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceID = self->_deviceID;
  name = self->_name;
  platform = self->_platform;
  apps = self->_apps;

  return [v4 initWithID:deviceID name:name platform:platform apps:apps];
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
      v5 = [(STDevice *)self isEqualToDevice:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy == self)
  {
    v12 = 1;
  }

  else
  {
    deviceID = [(STDevice *)self deviceID];
    deviceID2 = [(STDevice *)deviceCopy deviceID];
    if ([deviceID isEqualToDeviceID:deviceID2])
    {
      name = [(STDevice *)self name];
      name2 = [(STDevice *)deviceCopy name];
      if ([name isEqualToString:name2] && (v9 = -[STDevice platform](self, "platform"), v9 == -[STDevice platform](deviceCopy, "platform")))
      {
        apps = [(STDevice *)self apps];
        apps2 = [(STDevice *)deviceCopy apps];
        v12 = [apps isEqualToSet:apps2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  deviceID = [(STDevice *)self deviceID];
  v3 = [deviceID hash];

  return v3;
}

@end