@interface RPStatusDevice
- (RPStatusDevice)initWithCoder:(id)a3;
- (RPStatusDevice)initWithDevice:(id)a3;
- (id)getIdentifier;
@end

@implementation RPStatusDevice

- (RPStatusDevice)initWithDevice:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RPStatusDevice;
  v6 = [(RPStatusDevice *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = v7;
  }

  return v7;
}

- (id)getIdentifier
{
  v3 = [(RPEndpoint *)self->_device idsDeviceIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(RPEndpoint *)self->_device identifier];
  }

  v6 = v5;

  return v6;
}

- (RPStatusDevice)initWithCoder:(id)a3
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