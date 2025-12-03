@interface SSVPlayActivityEnqueuerProperties
- (SSVPlayActivityEnqueuerProperties)initWithCoder:(id)coder;
- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  buildVersion = self->_buildVersion;
  coderCopy = coder;
  [coderCopy encodeObject:buildVersion forKey:@"buildVersion"];
  [coderCopy encodeObject:self->_deviceGUID forKey:@"deviceGUID"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_privateListeningEnabled forKey:@"privateListeningEnabled"];
  [coderCopy encodeBool:self->_SBEnabled forKey:@"SBEnabled"];
  [coderCopy encodeInt64:self->_storeAccountID forKey:@"storeAccountID"];
  [coderCopy encodeObject:self->_storeFrontID forKey:@"storeFrontID"];
  [coderCopy encodeInteger:self->_systemReleaseType forKey:@"internalBuild"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (SSVPlayActivityEnqueuerProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SSVPlayActivityEnqueuerProperties;
  v5 = [(SSVPlayActivityEnqueuerProperties *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceGUID"];
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateListeningEnabled"];
    privateListeningEnabled = v5->_privateListeningEnabled;
    v5->_privateListeningEnabled = v12;

    v5->_systemReleaseType = [coderCopy decodeIntegerForKey:@"internalBuild"];
    v5->_SBEnabled = [coderCopy decodeBoolForKey:@"SBEnabled"];
    v5->_storeAccountID = [coderCopy decodeInt64ForKey:@"storeAccountID"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeFrontID"];
    storeFrontID = v5->_storeFrontID;
    v5->_storeFrontID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v16;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(SSVPlayActivityEnqueuerProperties *)self _copyWithClass:v5 zone:zone];
}

- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone
{
  v6 = [[(objc_class *)class allocWithZone:zone] init];
  if (v6)
  {
    v7 = [(NSString *)self->_buildVersion copyWithZone:zone];
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    v9 = [(NSString *)self->_deviceGUID copyWithZone:zone];
    v10 = *(v6 + 2);
    *(v6 + 2) = v9;

    v11 = [(NSString *)self->_deviceName copyWithZone:zone];
    v12 = *(v6 + 3);
    *(v6 + 3) = v11;

    v13 = [(NSNumber *)self->_privateListeningEnabled copyWithZone:zone];
    v14 = *(v6 + 4);
    *(v6 + 4) = v13;

    *(v6 + 40) = self->_SBEnabled;
    *(v6 + 6) = self->_storeAccountID;
    v15 = [(NSString *)self->_storeFrontID copyWithZone:zone];
    v16 = *(v6 + 7);
    *(v6 + 7) = v15;

    *(v6 + 8) = self->_systemReleaseType;
    v17 = [(NSTimeZone *)self->_timeZone copyWithZone:zone];
    v18 = *(v6 + 9);
    *(v6 + 9) = v17;
  }

  return v6;
}

@end