@interface SXAutoPlacementAdvertisingSettings
- (SXAutoPlacementAdvertisingSettings)initWithFrequency:(unint64_t)frequency bannerType:(unint64_t)type layout:(id)layout distanceFromMedia:(_SXConvertibleValue)media;
- (_SXConvertibleValue)distanceFromMedia;
@end

@implementation SXAutoPlacementAdvertisingSettings

- (SXAutoPlacementAdvertisingSettings)initWithFrequency:(unint64_t)frequency bannerType:(unint64_t)type layout:(id)layout distanceFromMedia:(_SXConvertibleValue)media
{
  unit = media.unit;
  value = media.value;
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = SXAutoPlacementAdvertisingSettings;
  v13 = [(SXAutoPlacementAdvertisingSettings *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_frequency = frequency;
    v13->_bannerType = type;
    objc_storeStrong(&v13->_layout, layout);
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