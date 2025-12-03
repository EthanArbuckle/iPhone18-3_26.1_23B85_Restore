@interface STDeviceStateChangeContent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceStateChangeContent:(id)content;
- (NSString)description;
- (STDeviceStateChangeContent)initWithCoder:(id)coder;
- (STDeviceStateChangeContent)initWithDeviceStateChange:(id)change;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STDeviceStateChangeContent

- (STDeviceStateChangeContent)initWithDeviceStateChange:(id)change
{
  v8.receiver = self;
  v8.super_class = STDeviceStateChangeContent;
  changeCopy = change;
  v4 = [(STDeviceStateChangeContent *)&v8 init];
  v5 = [changeCopy copy];

  deviceStateChange = v4->_deviceStateChange;
  v4->_deviceStateChange = v5;

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  deviceStateChange = [(STDeviceStateChangeContent *)self deviceStateChange];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { Device State Change: %@, Type: %ld }>", v3, deviceStateChange, [objc_opt_class() contentType]);

  return v5;
}

- (STDeviceStateChangeContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceStateChange"];

  v6 = [(STDeviceStateChangeContent *)self initWithDeviceStateChange:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceStateChange = [(STDeviceStateChangeContent *)self deviceStateChange];
  [coderCopy encodeObject:deviceStateChange forKey:@"deviceStateChange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceStateChange = self->_deviceStateChange;

  return [v4 initWithDeviceStateChange:deviceStateChange];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STDeviceStateChangeContent *)self isEqualToDeviceStateChangeContent:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDeviceStateChangeContent:(id)content
{
  if (content == self)
  {
    return 1;
  }

  contentCopy = content;
  deviceStateChange = [(STDeviceStateChangeContent *)self deviceStateChange];
  deviceStateChange2 = [contentCopy deviceStateChange];

  LOBYTE(contentCopy) = [deviceStateChange isEqualToDeviceStateChange:deviceStateChange2];
  return contentCopy;
}

- (unint64_t)hash
{
  deviceStateChange = [(STDeviceStateChangeContent *)self deviceStateChange];
  v3 = [deviceStateChange hash];

  return v3;
}

@end