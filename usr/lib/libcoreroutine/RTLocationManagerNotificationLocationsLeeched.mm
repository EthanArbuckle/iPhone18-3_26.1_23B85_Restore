@interface RTLocationManagerNotificationLocationsLeeched
- (RTLocationManagerNotificationLocationsLeeched)initWithLocations:(id)locations;
@end

@implementation RTLocationManagerNotificationLocationsLeeched

- (RTLocationManagerNotificationLocationsLeeched)initWithLocations:(id)locations
{
  locationsCopy = locations;
  v9.receiver = self;
  v9.super_class = RTLocationManagerNotificationLocationsLeeched;
  v6 = [(RTNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_leechedLocations, locations);
  }

  return v7;
}

@end