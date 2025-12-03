@interface PLLocationOfInterestLocation
- (PLLocationOfInterestLocation)initWithLocation:(id)location uncertainty:(double)uncertainty;
- (double)distanceFromLocation:(id)location withTypeRadius:(double)radius;
- (id)description;
@end

@implementation PLLocationOfInterestLocation

- (double)distanceFromLocation:(id)location withTypeRadius:(double)radius
{
  [(CLLocation *)self->_location distanceFromLocation:location];
  uncertainty = self->_uncertainty;
  v8 = v6 - fmin(uncertainty, 1500.0);
  if (uncertainty == 1.79769313e308)
  {
    v9 = 1.79769313e308;
  }

  else
  {
    v9 = v8;
  }

  result = v6 - radius;
  if (v9 < result)
  {
    return v9;
  }

  return result;
}

- (id)description
{
  location = self->_location;
  v4 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = PLLocationOfInterestLocation;
  v5 = location;
  v6 = [(PLLocationOfInterestLocation *)&v13 description];
  [(CLLocation *)v5 coordinate];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.8f, %.8f}", v7, v8];
  uncertainty = self->_uncertainty;

  v11 = [v4 stringWithFormat:@"%@ - %@ – %.2f", v6, v9, *&uncertainty];

  return v11;
}

- (PLLocationOfInterestLocation)initWithLocation:(id)location uncertainty:(double)uncertainty
{
  locationCopy = location;
  v13.receiver = self;
  v13.super_class = PLLocationOfInterestLocation;
  v8 = [(PLLocationOfInterestLocation *)&v13 init];
  if (v8)
  {
    if (!locationCopy)
    {
      goto LABEL_9;
    }

    [locationCopy coordinate];
    latitude = v14.latitude;
    longitude = v14.longitude;
    if (!CLLocationCoordinate2DIsValid(v14))
    {
      goto LABEL_9;
    }

    v11 = latitude != 0.0;
    if (longitude != 0.0)
    {
      v11 = 1;
    }

    if (v11 && (latitude != 40.0 || longitude != -100.0))
    {
      objc_storeStrong(&v8->_location, location);
      v8->_uncertainty = uncertainty;
    }

    else
    {
LABEL_9:

      v8 = 0;
    }
  }

  return v8;
}

@end