@interface OZFxPixelTransformsHandler
- (OZFxPixelTransformsHandler)init;
- (PCMatrix44Tmpl<double>)destinationInversePixelTransform;
- (PCMatrix44Tmpl<double>)destinationPixelTransform;
- (PCMatrix44Tmpl<double>)inversePixelTransform;
- (PCMatrix44Tmpl<double>)pixelTransform;
- (void)setPostTransform:(const void *)a3;
- (void)setPreTransform:(const void *)a3;
@end

@implementation OZFxPixelTransformsHandler

- (OZFxPixelTransformsHandler)init
{
  v3.receiver = self;
  v3.super_class = OZFxPixelTransformsHandler;
  return [(OZFxPixelTransformsHandler *)&v3 init];
}

- (void)setPreTransform:(const void *)a3
{
  v4 = getPixelTransformsAPIData() + 8;
  if (v4 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *&v4[j] = *(a3 + j);
      }

      v4 += 32;
      a3 = a3 + 32;
    }
  }
}

- (void)setPostTransform:(const void *)a3
{
  v4 = getPixelTransformsAPIData() + 136;
  if (v4 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *&v4[j] = *(a3 + j);
      }

      v4 += 32;
      a3 = a3 + 32;
    }
  }
}

- (PCMatrix44Tmpl<double>)pixelTransform
{
  PixelTransformsAPIData = getPixelTransformsAPIData();

  return OZFxPixelTransformsAPIData::pixelTransform(PixelTransformsAPIData, retstr);
}

- (PCMatrix44Tmpl<double>)inversePixelTransform
{
  PixelTransformsAPIData = getPixelTransformsAPIData();

  OZFxPixelTransformsAPIData::inversePixelTransform(PixelTransformsAPIData, retstr);
  return result;
}

- (PCMatrix44Tmpl<double>)destinationPixelTransform
{
  PixelTransformsAPIData = getPixelTransformsAPIData();

  return OZFxPixelTransformsAPIData::destinationPixelTransform(PixelTransformsAPIData, retstr);
}

- (PCMatrix44Tmpl<double>)destinationInversePixelTransform
{
  PixelTransformsAPIData = getPixelTransformsAPIData();

  OZFxPixelTransformsAPIData::destinationInversePixelTransform(PixelTransformsAPIData, retstr);
  return result;
}

@end