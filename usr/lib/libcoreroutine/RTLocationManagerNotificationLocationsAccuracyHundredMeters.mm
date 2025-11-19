@interface RTLocationManagerNotificationLocationsAccuracyHundredMeters
- (RTLocationManagerNotificationLocationsAccuracyHundredMeters)initWithLocations:(id)a3;
@end

@implementation RTLocationManagerNotificationLocationsAccuracyHundredMeters

- (RTLocationManagerNotificationLocationsAccuracyHundredMeters)initWithLocations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTLocationManagerNotificationLocationsAccuracyHundredMeters;
  v6 = [(RTNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locations, a3);
  }

  return v7;
}

@end