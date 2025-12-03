@interface KTIDMSDevice
- (KTIDMSDevice)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTIDMSDevice

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceID = [(KTIDMSDevice *)self deviceID];

  if (deviceID)
  {
    deviceID2 = [(KTIDMSDevice *)self deviceID];
    [coderCopy encodeObject:deviceID2 forKey:@"deviceID"];
  }

  name = [(KTIDMSDevice *)self name];

  if (name)
  {
    name2 = [(KTIDMSDevice *)self name];
    [coderCopy encodeObject:name2 forKey:@"name"];
  }

  model = [(KTIDMSDevice *)self model];

  if (model)
  {
    model2 = [(KTIDMSDevice *)self model];
    [coderCopy encodeObject:model2 forKey:@"model"];
  }

  name3 = [(KTIDMSDevice *)self name];

  if (name3)
  {
    pushToken = [(KTIDMSDevice *)self pushToken];
    [coderCopy encodeObject:pushToken forKey:@"pushToken"];
  }

  osVersion = [(KTIDMSDevice *)self osVersion];

  if (osVersion)
  {
    osVersion2 = [(KTIDMSDevice *)self osVersion];
    [coderCopy encodeObject:osVersion2 forKey:@"osVersion"];
  }

  build = [(KTIDMSDevice *)self build];

  if (build)
  {
    build2 = [(KTIDMSDevice *)self build];
    [coderCopy encodeObject:build2 forKey:@"build"];
  }

  serial = [(KTIDMSDevice *)self serial];

  v17 = coderCopy;
  if (serial)
  {
    serial2 = [(KTIDMSDevice *)self serial];
    [coderCopy encodeObject:serial2 forKey:@"serial"];

    v17 = coderCopy;
  }
}

- (KTIDMSDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = KTIDMSDevice;
  v5 = [(KTIDMSDevice *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    [(KTIDMSDevice *)v5 setDeviceID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(KTIDMSDevice *)v5 setName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    [(KTIDMSDevice *)v5 setModel:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    [(KTIDMSDevice *)v5 setPushToken:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    [(KTIDMSDevice *)v5 setOsVersion:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    [(KTIDMSDevice *)v5 setBuild:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serial"];
    [(KTIDMSDevice *)v5 setSerial:v12];

    v13 = v5;
  }

  return v5;
}

@end