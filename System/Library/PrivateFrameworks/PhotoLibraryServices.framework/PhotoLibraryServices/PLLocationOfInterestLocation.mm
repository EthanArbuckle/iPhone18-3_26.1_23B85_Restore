@interface PLLocationOfInterestLocation
- (PLLocationOfInterestLocation)initWithLocation:(id)a3 uncertainty:(double)a4;
- (double)distanceFromLocation:(id)a3 withTypeRadius:(double)a4;
- (id)description;
@end

@implementation PLLocationOfInterestLocation

- (double)distanceFromLocation:(id)a3 withTypeRadius:(double)a4
{
  [(CLLocation *)self->_location distanceFromLocation:a3];
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

  result = v6 - a4;
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

- (PLLocationOfInterestLocation)initWithLocation:(id)a3 uncertainty:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PLLocationOfInterestLocation;
  v8 = [(PLLocationOfInterestLocation *)&v13 init];
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [v7 coordinate];
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
      objc_storeStrong(&v8->_location, a3);
      v8->_uncertainty = a4;
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