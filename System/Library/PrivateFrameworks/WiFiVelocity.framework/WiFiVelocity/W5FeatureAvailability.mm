@interface W5FeatureAvailability
+ (id)_featureAvailabilityDefaults;
@end

@implementation W5FeatureAvailability

+ (id)_featureAvailabilityDefaults
{
  v2 = _featureAvailabilityDefaults;
  if (!_featureAvailabilityDefaults)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults persistentDomainForName:@"com.apple.wifivelocity.features"];
    v5 = _featureAvailabilityDefaults;
    _featureAvailabilityDefaults = v4;

    v2 = _featureAvailabilityDefaults;
  }

  return v2;
}

@end