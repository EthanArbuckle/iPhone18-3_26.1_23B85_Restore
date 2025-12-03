@interface SFAuthenticationApproveInfo
- (SFAuthenticationApproveInfo)initWithCoder:(id)coder;
- (SFAuthenticationApproveInfo)initWithType:(unint64_t)type idsDeviceID:(id)d appName:(id)name bundleID:(id)iD biometricOnly:(BOOL)only;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAuthenticationApproveInfo

- (SFAuthenticationApproveInfo)initWithType:(unint64_t)type idsDeviceID:(id)d appName:(id)name bundleID:(id)iD biometricOnly:(BOOL)only
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  v22.receiver = self;
  v22.super_class = SFAuthenticationApproveInfo;
  v15 = [(SFAuthenticationApproveInfo *)&v22 init];
  idsDeviceID = v15->_idsDeviceID;
  v15->_type = type;
  v15->_idsDeviceID = dCopy;
  v17 = dCopy;

  appName = v15->_appName;
  v15->_appName = nameCopy;
  v19 = nameCopy;

  bundleID = v15->_bundleID;
  v15->_bundleID = iDCopy;

  v15->_biometricOnly = only;
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = self->_type;
  v9 = coderCopy;
  if (type)
  {
    [coderCopy encodeInteger:type forKey:@"AuthType"];
    coderCopy = v9;
  }

  idsDeviceID = self->_idsDeviceID;
  if (idsDeviceID)
  {
    [v9 encodeObject:idsDeviceID forKey:@"idsDeviceID"];
    coderCopy = v9;
  }

  appName = self->_appName;
  if (appName)
  {
    [v9 encodeObject:appName forKey:@"AppName"];
    coderCopy = v9;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v9 encodeObject:bundleID forKey:@"BundleID"];
    coderCopy = v9;
  }

  if (self->_biometricOnly)
  {
    [v9 encodeBool:1 forKey:@"BiometricOnly"];
    coderCopy = v9;
  }
}

- (SFAuthenticationApproveInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFAuthenticationApproveInfo;
  v5 = [(SFAuthenticationApproveInfo *)&v13 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"AuthType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceID"];
    idsDeviceID = v5->_idsDeviceID;
    v5->_idsDeviceID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppName"];
    appName = v5->_appName;
    v5->_appName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v5->_biometricOnly = [coderCopy decodeBoolForKey:@"BiometricOnly"];
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