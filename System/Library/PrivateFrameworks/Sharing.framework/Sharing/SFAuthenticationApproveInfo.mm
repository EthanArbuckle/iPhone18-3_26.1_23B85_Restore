@interface SFAuthenticationApproveInfo
- (SFAuthenticationApproveInfo)initWithCoder:(id)a3;
- (SFAuthenticationApproveInfo)initWithType:(unint64_t)a3 idsDeviceID:(id)a4 appName:(id)a5 bundleID:(id)a6 biometricOnly:(BOOL)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAuthenticationApproveInfo

- (SFAuthenticationApproveInfo)initWithType:(unint64_t)a3 idsDeviceID:(id)a4 appName:(id)a5 bundleID:(id)a6 biometricOnly:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = SFAuthenticationApproveInfo;
  v15 = [(SFAuthenticationApproveInfo *)&v22 init];
  idsDeviceID = v15->_idsDeviceID;
  v15->_type = a3;
  v15->_idsDeviceID = v12;
  v17 = v12;

  appName = v15->_appName;
  v15->_appName = v13;
  v19 = v13;

  bundleID = v15->_bundleID;
  v15->_bundleID = v14;

  v15->_biometricOnly = a7;
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  type = self->_type;
  v9 = v4;
  if (type)
  {
    [v4 encodeInteger:type forKey:@"AuthType"];
    v4 = v9;
  }

  idsDeviceID = self->_idsDeviceID;
  if (idsDeviceID)
  {
    [v9 encodeObject:idsDeviceID forKey:@"idsDeviceID"];
    v4 = v9;
  }

  appName = self->_appName;
  if (appName)
  {
    [v9 encodeObject:appName forKey:@"AppName"];
    v4 = v9;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v9 encodeObject:bundleID forKey:@"BundleID"];
    v4 = v9;
  }

  if (self->_biometricOnly)
  {
    [v9 encodeBool:1 forKey:@"BiometricOnly"];
    v4 = v9;
  }
}

- (SFAuthenticationApproveInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFAuthenticationApproveInfo;
  v5 = [(SFAuthenticationApproveInfo *)&v13 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"AuthType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceID"];
    idsDeviceID = v5->_idsDeviceID;
    v5->_idsDeviceID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppName"];
    appName = v5->_appName;
    v5->_appName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v5->_biometricOnly = [v4 decodeBoolForKey:@"BiometricOnly"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = SFAuthenticationTypeToString(self->_type);
  v7 = v6;
  bundleID = self->_bundleID;
  if (self->_biometricOnly)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"<%@: type: %@, idsDeviceID: %@, appName: %@, bundleID: %@, biometricOnly: %@>", v5, v6, *&self->_idsDeviceID, self->_bundleID, v9];

  return v10;
}

@end