@interface VKLabelMarkerShield
- ($C28CD4A45FD07A4F97CC9D5F91F25271)color;
- (VKLabelMarkerShield)initWithImageKey:(id)key;
@end

@implementation VKLabelMarkerShield

- ($C28CD4A45FD07A4F97CC9D5F91F25271)color
{
  [(VKImageSourceKey *)self->_imageKey transitLineColor];
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (VKLabelMarkerShield)initWithImageKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = VKLabelMarkerShield;
  v6 = [(VKLabelMarkerShield *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageKey, key);
  }

  return v7;
}

@end