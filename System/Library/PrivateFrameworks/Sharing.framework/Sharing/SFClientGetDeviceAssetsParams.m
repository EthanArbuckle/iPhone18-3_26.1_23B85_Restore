@interface SFClientGetDeviceAssetsParams
- (SFClientGetDeviceAssetsParams)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFClientGetDeviceAssetsParams

- (SFClientGetDeviceAssetsParams)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFClientGetDeviceAssetsParams;
  v5 = [(SFClientGetDeviceAssetsParams *)&v9 init];
  if (v5)
  {
    v10 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_bluetoothProductID = v10;
    }

    v10 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_colorCode = v10;
    }

    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_bluetoothProductID)
  {
    [v4 encodeInteger:? forKey:?];
    v4 = v7;
  }

  colorCode = self->_colorCode;
  if (colorCode)
  {
    [v7 encodeInt64:colorCode forKey:@"cc"];
    v4 = v7;
  }

  model = self->_model;
  if (model)
  {
    [v7 encodeObject:model forKey:@"model"];
    v4 = v7;
  }
}

@end