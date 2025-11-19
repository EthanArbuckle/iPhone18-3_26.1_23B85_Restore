@interface WorkoutDeviceWatchScanner
- (void)workoutDevicePairedWatchControllerDidUpdateStatus:(BOOL)a3;
@end

@implementation WorkoutDeviceWatchScanner

- (void)workoutDevicePairedWatchControllerDidUpdateStatus:(BOOL)a3
{
  v4 = self;
  WorkoutDeviceWatchScanner.workoutDevicePairedWatchControllerDidUpdateStatus(_:)(a3);
}

@end