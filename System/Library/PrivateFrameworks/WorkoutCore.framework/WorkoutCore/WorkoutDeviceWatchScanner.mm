@interface WorkoutDeviceWatchScanner
- (void)workoutDevicePairedWatchControllerDidUpdateStatus:(BOOL)status;
@end

@implementation WorkoutDeviceWatchScanner

- (void)workoutDevicePairedWatchControllerDidUpdateStatus:(BOOL)status
{
  selfCopy = self;
  WorkoutDeviceWatchScanner.workoutDevicePairedWatchControllerDidUpdateStatus(_:)(status);
}

@end