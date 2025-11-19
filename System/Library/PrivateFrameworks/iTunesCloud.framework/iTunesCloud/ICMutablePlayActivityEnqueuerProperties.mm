@interface ICMutablePlayActivityEnqueuerProperties
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setBuildVersion:(id)a3;
- (void)setDeviceGUID:(id)a3;
- (void)setDeviceName:(id)a3;
- (void)setPrivateListeningEnabled:(id)a3;
- (void)setStoreFrontID:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation ICMutablePlayActivityEnqueuerProperties

- (void)setTimeZone:(id)a3
{
  if (self->super._timeZone != a3)
  {
    v5 = [a3 copy];
    timeZone = self->super._timeZone;
    self->super._timeZone = v5;

    MEMORY[0x1EEE66BB8](v5, timeZone);
  }
}

- (void)setStoreFrontID:(id)a3
{
  if (self->super._storeFrontID != a3)
  {
    v5 = [a3 copy];
    storeFrontID = self->super._storeFrontID;
    self->super._storeFrontID = v5;

    MEMORY[0x1EEE66BB8](v5, storeFrontID);
  }
}

- (void)setPrivateListeningEnabled:(id)a3
{
  if (self->super._privateListeningEnabled != a3)
  {
    v5 = [a3 copy];
    privateListeningEnabled = self->super._privateListeningEnabled;
    self->super._privateListeningEnabled = v5;

    MEMORY[0x1EEE66BB8](v5, privateListeningEnabled);
  }
}

- (void)setDeviceName:(id)a3
{
  if (self->super._deviceName != a3)
  {
    v5 = [a3 copy];
    deviceName = self->super._deviceName;
    self->super._deviceName = v5;

    MEMORY[0x1EEE66BB8](v5, deviceName);
  }
}

- (void)setDeviceGUID:(id)a3
{
  if (self->super._deviceGUID != a3)
  {
    v5 = [a3 copy];
    deviceGUID = self->super._deviceGUID;
    self->super._deviceGUID = v5;

    MEMORY[0x1EEE66BB8](v5, deviceGUID);
  }
}

- (void)setBuildVersion:(id)a3
{
  if (self->super._buildVersion != a3)
  {
    v5 = [a3 copy];
    buildVersion = self->super._buildVersion;
    self->super._buildVersion = v5;

    MEMORY[0x1EEE66BB8](v5, buildVersion);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ICPlayActivityEnqueuerProperties *)self _copyWithClass:v5 zone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ICPlayActivityEnqueuerProperties *)self _copyWithClass:v5 zone:a3];
}

@end