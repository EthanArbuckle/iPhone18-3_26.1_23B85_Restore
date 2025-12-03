@interface SSVMutablePlayActivityEnqueuerProperties
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setBuildVersion:(id)version;
- (void)setDeviceGUID:(id)d;
- (void)setDeviceName:(id)name;
- (void)setPrivateListeningEnabled:(id)enabled;
- (void)setStoreFrontID:(id)d;
- (void)setTimeZone:(id)zone;
@end

@implementation SSVMutablePlayActivityEnqueuerProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(SSVPlayActivityEnqueuerProperties *)self _copyWithClass:v5 zone:zone];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(SSVPlayActivityEnqueuerProperties *)self _copyWithClass:v5 zone:zone];
}

- (void)setBuildVersion:(id)version
{
  if (self->super._buildVersion != version)
  {
    v5 = [version copy];
    buildVersion = self->super._buildVersion;
    self->super._buildVersion = v5;
  }
}

- (void)setDeviceGUID:(id)d
{
  if (self->super._deviceGUID != d)
  {
    v5 = [d copy];
    deviceGUID = self->super._deviceGUID;
    self->super._deviceGUID = v5;
  }
}

- (void)setDeviceName:(id)name
{
  if (self->super._deviceName != name)
  {
    v5 = [name copy];
    deviceName = self->super._deviceName;
    self->super._deviceName = v5;
  }
}

- (void)setPrivateListeningEnabled:(id)enabled
{
  if (self->super._privateListeningEnabled != enabled)
  {
    v5 = [enabled copy];
    privateListeningEnabled = self->super._privateListeningEnabled;
    self->super._privateListeningEnabled = v5;
  }
}

- (void)setStoreFrontID:(id)d
{
  if (self->super._storeFrontID != d)
  {
    v5 = [d copy];
    storeFrontID = self->super._storeFrontID;
    self->super._storeFrontID = v5;
  }
}

- (void)setTimeZone:(id)zone
{
  if (self->super._timeZone != zone)
  {
    v5 = [zone copy];
    timeZone = self->super._timeZone;
    self->super._timeZone = v5;
  }
}

@end