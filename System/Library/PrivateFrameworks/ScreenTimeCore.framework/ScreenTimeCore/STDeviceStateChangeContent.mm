@interface STDeviceStateChangeContent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceStateChangeContent:(id)a3;
- (NSString)description;
- (STDeviceStateChangeContent)initWithCoder:(id)a3;
- (STDeviceStateChangeContent)initWithDeviceStateChange:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STDeviceStateChangeContent

- (STDeviceStateChangeContent)initWithDeviceStateChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = STDeviceStateChangeContent;
  v3 = a3;
  v4 = [(STDeviceStateChangeContent *)&v8 init];
  v5 = [v3 copy];

  deviceStateChange = v4->_deviceStateChange;
  v4->_deviceStateChange = v5;

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(STDeviceStateChangeContent *)self deviceStateChange];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { Device State Change: %@, Type: %ld }>", v3, v4, [objc_opt_class() contentType]);

  return v5;
}

- (STDeviceStateChangeContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceStateChange"];

  v6 = [(STDeviceStateChangeContent *)self initWithDeviceStateChange:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STDeviceStateChangeContent *)self deviceStateChange];
  [v4 encodeObject:v5 forKey:@"deviceStateChange"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  deviceStateChange = self->_deviceStateChange;

  return [v4 initWithDeviceStateChange:deviceStateChange];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STDeviceStateChangeContent *)self isEqualToDeviceStateChangeContent:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDeviceStateChangeContent:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(STDeviceStateChangeContent *)self deviceStateChange];
  v6 = [v4 deviceStateChange];

  LOBYTE(v4) = [v5 isEqualToDeviceStateChange:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(STDeviceStateChangeContent *)self deviceStateChange];
  v3 = [v2 hash];

  return v3;
}

@end