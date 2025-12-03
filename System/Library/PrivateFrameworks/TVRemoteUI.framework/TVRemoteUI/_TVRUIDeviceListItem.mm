@interface _TVRUIDeviceListItem
+ (id)itemWithDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (_TVRUIDeviceListItem)initWithDevice:(id)device;
- (unint64_t)hash;
@end

@implementation _TVRUIDeviceListItem

- (_TVRUIDeviceListItem)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = _TVRUIDeviceListItem;
  v6 = [(_TVRUIDeviceListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

+ (id)itemWithDevice:(id)device
{
  deviceCopy = device;
  v4 = [objc_alloc(objc_opt_class()) initWithDevice:deviceCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    device = [equalCopy device];
    device2 = [(_TVRUIDeviceListItem *)self device];
    v7 = [device isEqualToDevice:device2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  device = [(_TVRUIDeviceListItem *)self device];
  v3 = [device hash];

  return v3;
}

@end