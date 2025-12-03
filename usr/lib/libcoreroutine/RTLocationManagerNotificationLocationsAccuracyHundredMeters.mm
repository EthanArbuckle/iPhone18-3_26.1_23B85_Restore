@interface RTLocationManagerNotificationLocationsAccuracyHundredMeters
- (RTLocationManagerNotificationLocationsAccuracyHundredMeters)initWithLocations:(id)locations;
@end

@implementation RTLocationManagerNotificationLocationsAccuracyHundredMeters

- (RTLocationManagerNotificationLocationsAccuracyHundredMeters)initWithLocations:(id)locations
{
  locationsCopy = locations;
  v9.receiver = self;
  v9.super_class = RTLocationManagerNotificationLocationsAccuracyHundredMeters;
  v6 = [(RTNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locations, locations);
  }

  return v7;
}

@end