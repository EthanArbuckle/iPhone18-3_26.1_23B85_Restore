@interface CloudDevice
+ (CloudDevice)deviceWithIDSDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (CloudDevice)initWithIDSDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)stateString;
- (unint64_t)hash;
@end

@implementation CloudDevice

+ (CloudDevice)deviceWithIDSDevice:(id)device
{
  deviceCopy = device;
  v4 = [[CloudDevice alloc] initWithIDSDevice:deviceCopy];

  return v4;
}

- (CloudDevice)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = CloudDevice;
  v6 = [(CloudDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsDevice, device);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    idsDevice = [equalCopy idsDevice];
    uniqueID = [idsDevice uniqueID];
    idsDevice2 = [(CloudDevice *)self idsDevice];
    uniqueID2 = [idsDevice2 uniqueID];
    v9 = [uniqueID isEqualToString:uniqueID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  idsDevice = [(CloudDevice *)self idsDevice];
  uniqueID = [idsDevice uniqueID];
  v4 = [uniqueID hash];

  return v4;
}

- (id)description
{
  idsDevice = [(CloudDevice *)self idsDevice];
  cpDescription = [idsDevice cpDescription];

  return cpDescription;
}

- (id)stateString
{
  state = self->_state;
  if (state > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1002BAFA0[state];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [CloudDevice allocWithZone:zone];

  return [(CloudDevice *)v3 init];
}

@end