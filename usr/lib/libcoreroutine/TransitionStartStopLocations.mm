@interface TransitionStartStopLocations
- (TransitionStartStopLocations)initWithStartLocation:(id)location stopLocation:(id)stopLocation;
@end

@implementation TransitionStartStopLocations

- (TransitionStartStopLocations)initWithStartLocation:(id)location stopLocation:(id)stopLocation
{
  locationCopy = location;
  stopLocationCopy = stopLocation;
  v12.receiver = self;
  v12.super_class = TransitionStartStopLocations;
  v9 = [(TransitionStartStopLocations *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startLocation, location);
    objc_storeStrong(&v10->_stopLocation, stopLocation);
  }

  return v10;
}

@end