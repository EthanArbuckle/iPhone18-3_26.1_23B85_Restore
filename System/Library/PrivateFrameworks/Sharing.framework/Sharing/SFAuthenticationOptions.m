@interface SFAuthenticationOptions
- (SFAuthenticationOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAuthenticationOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  acmContext = self->_acmContext;
  v11 = v4;
  if (acmContext)
  {
    [v4 encodeObject:acmContext forKey:@"ACMContext"];
    v4 = v11;
  }

  appName = self->_appName;
  if (appName)
  {
    [v11 encodeObject:appName forKey:@"AppName"];
    v4 = v11;
  }

  authorizationToken = self->_authorizationToken;
  if (authorizationToken)
  {
    [v11 encodeObject:authorizationToken forKey:@"AuthToken"];
    v4 = v11;
  }

  if (self->_checkLocally)
  {
    [v11 encodeBool:1 forKey:@"CheckLocally"];
    v4 = v11;
  }

  if (self->_biometricOnly)
  {
    [v11 encodeBool:1 forKey:@"BiometricOnly"];
    v4 = v11;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v11 encodeObject:bundleID forKey:@"BundleID"];
    v4 = v11;
  }

  idsDeviceID = self->_idsDeviceID;
  if (idsDeviceID)
  {
    [v11 encodeObject:idsDeviceID forKey:@"idsDeviceID"];
    v4 = v11;
  }

  if (self->_scanForever)
  {
    [v11 encodeBool:1 forKey:@"scanForever"];
    v4 = v11;
  }

  scanTimeout = self->_scanTimeout;
  if (scanTimeout)
  {
    [v11 encodeInteger:scanTimeout forKey:@"scanTimeout"];
    v4 = v11;
  }
}

- (SFAuthenticationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SFAuthenticationOptions;
  v5 = [(SFAuthenticationOptions *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ACMContext"];
    v7 = [v6 copy];
    acmContext = v5->_acmContext;
    v5->_acmContext = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppName"];
    appName = v5->_appName;
    v5->_appName = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AuthToken"];
    v12 = [v11 copy];
    authorizationToken = v5->_authorizationToken;
    v5->_authorizationToken = v12;

    v5->_checkLocally = [v4 decodeBoolForKey:@"CheckLocally"];
    v5->_biometricOnly = [v4 decodeBoolForKey:@"BiometricOnly"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceID"];
    idsDeviceID = v5->_idsDeviceID;
    v5->_idsDeviceID = v16;

    v5->_scanForever = [v4 decodeBoolForKey:@"scanForever"];
    v5->_scanTimeout = [v4 decodeIntegerForKey:@"scanTimeout"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SFAuthenticationOptions *)self idsDeviceID];
  v7 = [(SFAuthenticationOptions *)self authorizationToken];
  if (v7)
  {
    v8 = @", authToken";
  }

  else
  {
    v8 = &stru_1F1D30528;
  }

  v9 = [(SFAuthenticationOptions *)self acmContext];
  if (v9)
  {
    v10 = @", acmContext";
  }

  else
  {
    v10 = &stru_1F1D30528;
  }

  v11 = [(SFAuthenticationOptions *)self checkLocally];
  v12 = @", checkLocally";
  if (!v11)
  {
    v12 = &stru_1F1D30528;
  }

  v13 = [v3 stringWithFormat:@"<%@: IDSDeviceID: %@ %@ %@ %@>", v5, v6, v8, v10, v12];

  return v13;
}

@end