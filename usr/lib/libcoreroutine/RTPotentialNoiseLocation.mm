@interface RTPotentialNoiseLocation
- (RTPotentialNoiseLocation)initWithLocation:(id)location;
@end

@implementation RTPotentialNoiseLocation

- (RTPotentialNoiseLocation)initWithLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v11.receiver = self;
    v11.super_class = RTPotentialNoiseLocation;
    v6 = [(RTPotentialNoiseLocation *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_location, location);
      v7->_isNoise = 0;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location != nil", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end