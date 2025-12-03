@interface SXDebugAdvertisementSettings
- (SXDebugAdvertisementSettings)initWithFrequency:(unint64_t)frequency bannerType:(id)type layout:(id)layout distanceFromMedia:(_SXConvertibleValue)media;
- (_SXConvertibleValue)distanceFromMedia;
@end

@implementation SXDebugAdvertisementSettings

- (SXDebugAdvertisementSettings)initWithFrequency:(unint64_t)frequency bannerType:(id)type layout:(id)layout distanceFromMedia:(_SXConvertibleValue)media
{
  unit = media.unit;
  value = media.value;
  typeCopy = type;
  layoutCopy = layout;
  v18.receiver = self;
  v18.super_class = SXDebugAdvertisementSettings;
  v13 = [(SXDebugAdvertisementSettings *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_frequency = frequency;
    v15 = typeCopy;
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
    objc_storeStrong(&v14->_layout, layout);
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