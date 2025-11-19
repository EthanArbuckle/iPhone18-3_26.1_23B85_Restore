@interface _TVRUIDeviceListItem
+ (id)itemWithDevice:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_TVRUIDeviceListItem)initWithDevice:(id)a3;
- (unint64_t)hash;
@end

@implementation _TVRUIDeviceListItem

- (_TVRUIDeviceListItem)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TVRUIDeviceListItem;
  v6 = [(_TVRUIDeviceListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

+ (id)itemWithDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDevice:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 device];
    v6 = [(_TVRUIDeviceListItem *)self device];
    v7 = [v5 isEqualToDevice:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(_TVRUIDeviceListItem *)self device];
  v3 = [v2 hash];

  return v3;
}

@end