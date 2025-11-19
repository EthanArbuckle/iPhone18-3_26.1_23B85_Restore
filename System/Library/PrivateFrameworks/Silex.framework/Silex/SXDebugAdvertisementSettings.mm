@interface SXDebugAdvertisementSettings
- (SXDebugAdvertisementSettings)initWithFrequency:(unint64_t)a3 bannerType:(id)a4 layout:(id)a5 distanceFromMedia:(_SXConvertibleValue)a6;
- (_SXConvertibleValue)distanceFromMedia;
@end

@implementation SXDebugAdvertisementSettings

- (SXDebugAdvertisementSettings)initWithFrequency:(unint64_t)a3 bannerType:(id)a4 layout:(id)a5 distanceFromMedia:(_SXConvertibleValue)a6
{
  unit = a6.unit;
  value = a6.value;
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = SXDebugAdvertisementSettings;
  v13 = [(SXDebugAdvertisementSettings *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_frequency = a3;
    v15 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v15 isEqualToString:@"any"])
      {
        v16 = 1;
      }

      else if ([v15 isEqualToString:@"standard"])
      {
        v16 = 2;
      }

      else if ([v15 isEqualToString:@"double_height"])
      {
        v16 = 3;
      }

      else if ([v15 isEqualToString:@"large"])
      {
        v16 = 4;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v14->_bannerType = v16;
    objc_storeStrong(&v14->_layout, a5);
    v14->_distanceFromMedia.value = value;
    v14->_distanceFromMedia.unit = unit;
  }

  return v14;
}

- (_SXConvertibleValue)distanceFromMedia
{
  unit = self->_distanceFromMedia.unit;
  value = self->_distanceFromMedia.value;
  result.unit = unit;
  result.value = value;
  return result;
}

@end