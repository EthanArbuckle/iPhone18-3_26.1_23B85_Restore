@interface SXAutoPlacementAdvertisingSettings
- (SXAutoPlacementAdvertisingSettings)initWithFrequency:(unint64_t)a3 bannerType:(unint64_t)a4 layout:(id)a5 distanceFromMedia:(_SXConvertibleValue)a6;
- (_SXConvertibleValue)distanceFromMedia;
@end

@implementation SXAutoPlacementAdvertisingSettings

- (SXAutoPlacementAdvertisingSettings)initWithFrequency:(unint64_t)a3 bannerType:(unint64_t)a4 layout:(id)a5 distanceFromMedia:(_SXConvertibleValue)a6
{
  unit = a6.unit;
  value = a6.value;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = SXAutoPlacementAdvertisingSettings;
  v13 = [(SXAutoPlacementAdvertisingSettings *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_frequency = a3;
    v13->_bannerType = a4;
    objc_storeStrong(&v13->_layout, a5);
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