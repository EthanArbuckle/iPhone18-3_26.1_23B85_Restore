@interface CloudDevice
+ (CloudDevice)deviceWithIDSDevice:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CloudDevice)initWithIDSDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)stateString;
- (unint64_t)hash;
@end

@implementation CloudDevice

+ (CloudDevice)deviceWithIDSDevice:(id)a3
{
  v3 = a3;
  v4 = [[CloudDevice alloc] initWithIDSDevice:v3];

  return v4;
}

- (CloudDevice)initWithIDSDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CloudDevice;
  v6 = [(CloudDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsDevice, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 idsDevice];
    v6 = [v5 uniqueID];
    v7 = [(CloudDevice *)self idsDevice];
    v8 = [v7 uniqueID];
    v9 = [v6 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(CloudDevice *)self idsDevice];
  v3 = [v2 uniqueID];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v2 = [(CloudDevice *)self idsDevice];
  v3 = [v2 cpDescription];

  return v3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [CloudDevice allocWithZone:a3];

  return [(CloudDevice *)v3 init];
}

@end