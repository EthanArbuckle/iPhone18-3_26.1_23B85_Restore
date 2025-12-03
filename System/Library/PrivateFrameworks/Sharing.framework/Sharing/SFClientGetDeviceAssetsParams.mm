@interface SFClientGetDeviceAssetsParams
- (SFClientGetDeviceAssetsParams)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFClientGetDeviceAssetsParams

- (SFClientGetDeviceAssetsParams)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = coderCopy;
  if (self->_bluetoothProductID)
  {
    [coderCopy encodeInteger:? forKey:?];
    coderCopy = v7;
  }

  colorCode = self->_colorCode;
  if (colorCode)
  {
    [v7 encodeInt64:colorCode forKey:@"cc"];
    coderCopy = v7;
  }

  model = self->_model;
  if (model)
  {
    [v7 encodeObject:model forKey:@"model"];
    coderCopy = v7;
  }
}

@end