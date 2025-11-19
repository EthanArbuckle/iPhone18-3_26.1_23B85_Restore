@interface SSVPlayActivityEnqueuerProperties
- (SSVPlayActivityEnqueuerProperties)initWithCoder:(id)a3;
- (id)_copyWithClass:(Class)a3 zone:(_NSZone *)a4;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSVPlayActivityEnqueuerProperties

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  if ([(NSString *)self->_buildVersion length])
  {
    [v6 appendFormat:@" buildVersion: %@", self->_buildVersion];
  }

  if ([(NSString *)self->_deviceGUID length])
  {
    [v6 appendFormat:@" deviceGUID: %@", self->_deviceGUID];
  }

  if ([(NSString *)self->_deviceName length])
  {
    [v6 appendFormat:@" deviceName: %@", self->_deviceName];
  }

  privateListeningEnabled = self->_privateListeningEnabled;
  if (privateListeningEnabled)
  {
    if ([(NSNumber *)privateListeningEnabled BOOLValue])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    [v6 appendFormat:@" privateListeningEnabled: %@", v8];
  }

  if (self->_systemReleaseType)
  {
    [v6 appendFormat:@" systemReleaseType: %li", self->_systemReleaseType];
  }

  if (self->_SBEnabled)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@" SBEnabled: %@", v9];
  if (self->_storeAccountID)
  {
    [v6 appendFormat:@" storeAccountID: %llu", self->_storeAccountID];
  }

  if ([(NSString *)self->_storeFrontID length])
  {
    [v6 appendFormat:@" storeFrontID: %@", self->_storeFrontID];
  }

  if (self->_timeZone)
  {
    [v6 appendFormat:@" timeZone:%@", self->_timeZone];
  }

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  buildVersion = self->_buildVersion;
  v5 = a3;
  [v5 encodeObject:buildVersion forKey:@"buildVersion"];
  [v5 encodeObject:self->_deviceGUID forKey:@"deviceGUID"];
  [v5 encodeObject:self->_deviceName forKey:@"deviceName"];
  [v5 encodeObject:self->_privateListeningEnabled forKey:@"privateListeningEnabled"];
  [v5 encodeBool:self->_SBEnabled forKey:@"SBEnabled"];
  [v5 encodeInt64:self->_storeAccountID forKey:@"storeAccountID"];
  [v5 encodeObject:self->_storeFrontID forKey:@"storeFrontID"];
  [v5 encodeInteger:self->_systemReleaseType forKey:@"internalBuild"];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (SSVPlayActivityEnqueuerProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SSVPlayActivityEnqueuerProperties;
  v5 = [(SSVPlayActivityEnqueuerProperties *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceGUID"];
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateListeningEnabled"];
    privateListeningEnabled = v5->_privateListeningEnabled;
    v5->_privateListeningEnabled = v12;

    v5->_systemReleaseType = [v4 decodeIntegerForKey:@"internalBuild"];
    v5->_SBEnabled = [v4 decodeBoolForKey:@"SBEnabled"];
    v5->_storeAccountID = [v4 decodeInt64ForKey:@"storeAccountID"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeFrontID"];
    storeFrontID = v5->_storeFrontID;
    v5->_storeFrontID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v16;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(SSVPlayActivityEnqueuerProperties *)self _copyWithClass:v5 zone:a3];
}

- (id)_copyWithClass:(Class)a3 zone:(_NSZone *)a4
{
  v6 = [[(objc_class *)a3 allocWithZone:a4] init];
  if (v6)
  {
    v7 = [(NSString *)self->_buildVersion copyWithZone:a4];
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    v9 = [(NSString *)self->_deviceGUID copyWithZone:a4];
    v10 = *(v6 + 2);
    *(v6 + 2) = v9;

    v11 = [(NSString *)self->_deviceName copyWithZone:a4];
    v12 = *(v6 + 3);
    *(v6 + 3) = v11;

    v13 = [(NSNumber *)self->_privateListeningEnabled copyWithZone:a4];
    v14 = *(v6 + 4);
    *(v6 + 4) = v13;

    *(v6 + 40) = self->_SBEnabled;
    *(v6 + 6) = self->_storeAccountID;
    v15 = [(NSString *)self->_storeFrontID copyWithZone:a4];
    v16 = *(v6 + 7);
    *(v6 + 7) = v15;

    *(v6 + 8) = self->_systemReleaseType;
    v17 = [(NSTimeZone *)self->_timeZone copyWithZone:a4];
    v18 = *(v6 + 9);
    *(v6 + 9) = v17;
  }

  return v6;
}

@end