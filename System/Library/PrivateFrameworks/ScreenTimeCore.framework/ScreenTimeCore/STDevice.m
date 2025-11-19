@interface STDevice
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDevice:(id)a3;
- (STDevice)deviceWithAppliedChange:(id)a3;
- (STDevice)initWithCoder:(id)a3;
- (STDevice)initWithID:(id)a3 name:(id)a4 platform:(int64_t)a5 apps:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STDevice

- (STDevice)initWithID:(id)a3 name:(id)a4 platform:(int64_t)a5 apps:(id)a6
{
  v20.receiver = self;
  v20.super_class = STDevice;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(STDevice *)&v20 init];
  v13 = [v11 copy];

  deviceID = v12->_deviceID;
  v12->_deviceID = v13;

  v15 = [v10 copy];
  name = v12->_name;
  v12->_name = v15;

  v12->_platform = a5;
  v17 = [v9 copy];

  apps = v12->_apps;
  v12->_apps = v17;

  return v12;
}

- (STDevice)deviceWithAppliedChange:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceID];
  v6 = [(STDevice *)self deviceID];
  v7 = [v5 isEqualToDeviceID:v6];

  if (v7 && (v8 = [v4 platform], v8 == -[STDevice platform](self, "platform")))
  {
    v26 = v8;
    v28 = v5;
    v9 = [v4 installedApps];
    v25 = [v4 removedApps];
    v10 = [v25 valueForKeyPath:@"bundleIdentifier"];
    v11 = [(STDevice *)self apps];
    v12 = [v11 mutableCopy];

    v27 = v9;
    [v12 unionSet:v9];
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
          v19 = [v18 bundleIdentifier];
          v20 = [v10 containsObject:v19];

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
    v22 = [v4 deviceName];
    v5 = v28;
    v23 = [(STDevice *)v21 initWithID:v28 name:v22 platform:v26 apps:v12];
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
  v4 = [(STDevice *)self deviceID];
  v5 = [(STDevice *)self name];
  v6 = [(STDevice *)self platform]- 1;
  if (v6 > 4)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1001A3A90[v6];
  }

  v8 = [(STDevice *)self apps];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { DeviceID: %@, Name: %@, Platform: %@, App Count: %lu }>", v3, v4, v5, v7, [v8 count]);

  return v9;
}

- (STDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeIntegerForKey:@"platform"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"apps"];

  v11 = [NSSet setWithArray:v10];

  v12 = [(STDevice *)self initWithID:v5 name:v6 platform:v7 apps:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STDevice *)self deviceID];
  [v4 encodeObject:v5 forKey:@"deviceID"];

  v6 = [(STDevice *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  [v4 encodeInteger:-[STDevice platform](self forKey:{"platform"), @"platform"}];
  v8 = [(STDevice *)self apps];
  v7 = [v8 allObjects];
  [v4 encodeObject:v7 forKey:@"apps"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  deviceID = self->_deviceID;
  name = self->_name;
  platform = self->_platform;
  apps = self->_apps;

  return [v4 initWithID:deviceID name:name platform:platform apps:apps];
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
      v5 = [(STDevice *)self isEqualToDevice:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = [(STDevice *)self deviceID];
    v6 = [(STDevice *)v4 deviceID];
    if ([v5 isEqualToDeviceID:v6])
    {
      v7 = [(STDevice *)self name];
      v8 = [(STDevice *)v4 name];
      if ([v7 isEqualToString:v8] && (v9 = -[STDevice platform](self, "platform"), v9 == -[STDevice platform](v4, "platform")))
      {
        v10 = [(STDevice *)self apps];
        v11 = [(STDevice *)v4 apps];
        v12 = [v10 isEqualToSet:v11];
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
  v2 = [(STDevice *)self deviceID];
  v3 = [v2 hash];

  return v3;
}

@end