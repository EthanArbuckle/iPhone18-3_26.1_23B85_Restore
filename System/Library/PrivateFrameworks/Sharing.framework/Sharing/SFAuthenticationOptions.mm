@interface SFAuthenticationOptions
- (SFAuthenticationOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAuthenticationOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  acmContext = self->_acmContext;
  v11 = coderCopy;
  if (acmContext)
  {
    [coderCopy encodeObject:acmContext forKey:@"ACMContext"];
    coderCopy = v11;
  }

  appName = self->_appName;
  if (appName)
  {
    [v11 encodeObject:appName forKey:@"AppName"];
    coderCopy = v11;
  }

  authorizationToken = self->_authorizationToken;
  if (authorizationToken)
  {
    [v11 encodeObject:authorizationToken forKey:@"AuthToken"];
    coderCopy = v11;
  }

  if (self->_checkLocally)
  {
    [v11 encodeBool:1 forKey:@"CheckLocally"];
    coderCopy = v11;
  }

  if (self->_biometricOnly)
  {
    [v11 encodeBool:1 forKey:@"BiometricOnly"];
    coderCopy = v11;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v11 encodeObject:bundleID forKey:@"BundleID"];
    coderCopy = v11;
  }

  idsDeviceID = self->_idsDeviceID;
  if (idsDeviceID)
  {
    [v11 encodeObject:idsDeviceID forKey:@"idsDeviceID"];
    coderCopy = v11;
  }

  if (self->_scanForever)
  {
    [v11 encodeBool:1 forKey:@"scanForever"];
    coderCopy = v11;
  }

  scanTimeout = self->_scanTimeout;
  if (scanTimeout)
  {
    [v11 encodeInteger:scanTimeout forKey:@"scanTimeout"];
    coderCopy = v11;
  }
}

- (SFAuthenticationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SFAuthenticationOptions;
  v5 = [(SFAuthenticationOptions *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ACMContext"];
    v7 = [v6 copy];
    acmContext = v5->_acmContext;
    v5->_acmContext = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppName"];
    appName = v5->_appName;
    v5->_appName = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AuthToken"];
    v12 = [v11 copy];
    authorizationToken = v5->_authorizationToken;
    v5->_authorizationToken = v12;

    v5->_checkLocally = [coderCopy decodeBoolForKey:@"CheckLocally"];
    v5->_biometricOnly = [coderCopy decodeBoolForKey:@"BiometricOnly"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceID"];
    idsDeviceID = v5->_idsDeviceID;
    v5->_idsDeviceID = v16;

    v5->_scanForever = [coderCopy decodeBoolForKey:@"scanForever"];
    v5->_scanTimeout = [coderCopy decodeIntegerForKey:@"scanTimeout"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  idsDeviceID = [(SFAuthenticationOptions *)self idsDeviceID];
  authorizationToken = [(SFAuthenticationOptions *)self authorizationToken];
  if (authorizationToken)
  {
    v8 = @", authToken";
  }

  else
  {
    v8 = &stru_1F1D30528;
  }

  acmContext = [(SFAuthenticationOptions *)self acmContext];
  if (acmContext)
  {
    v10 = @", acmContext";
  }

  else
  {
    v10 = &stru_1F1D30528;
  }

  checkLocally = [(SFAuthenticationOptions *)self checkLocally];
  v12 = @", checkLocally";
  if (!checkLocally)
  {
    v12 = &stru_1F1D30528;
  }

  v13 = [v3 stringWithFormat:@"<%@: IDSDeviceID: %@ %@ %@ %@>", v5, idsDeviceID, v8, v10, v12];

  return v13;
}

@end