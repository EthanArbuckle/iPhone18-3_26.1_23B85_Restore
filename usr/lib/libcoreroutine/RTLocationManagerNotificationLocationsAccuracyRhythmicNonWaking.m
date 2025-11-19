@interface RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking
- (RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking)initWithLocations:(id)a3;
@end

@implementation RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking

- (RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking)initWithLocations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking;
  v6 = [(RTNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locations, a3);
  }

  return v7;
}

@end