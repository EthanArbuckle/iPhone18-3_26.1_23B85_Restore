@interface RPStatusDevice
- (RPStatusDevice)initWithCoder:(id)coder;
- (RPStatusDevice)initWithDevice:(id)device;
- (id)getIdentifier;
@end

@implementation RPStatusDevice

- (RPStatusDevice)initWithDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = RPStatusDevice;
  v6 = [(RPStatusDevice *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = v7;
  }

  return v7;
}

- (id)getIdentifier
{
  idsDeviceIdentifier = [(RPEndpoint *)self->_device idsDeviceIdentifier];
  v4 = idsDeviceIdentifier;
  if (idsDeviceIdentifier)
  {
    identifier = idsDeviceIdentifier;
  }

  else
  {
    identifier = [(RPEndpoint *)self->_device identifier];
  }

  v6 = identifier;

  return v6;
}

- (RPStatusDevice)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = RPStatusDevice;
  v3 = [(RPStatusDevice *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end