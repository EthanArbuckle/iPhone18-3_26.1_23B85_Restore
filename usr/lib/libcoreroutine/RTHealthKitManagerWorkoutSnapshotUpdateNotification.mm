@interface RTHealthKitManagerWorkoutSnapshotUpdateNotification
- (RTHealthKitManagerWorkoutSnapshotUpdateNotification)initWithWorkoutSnapshot:(id)snapshot;
@end

@implementation RTHealthKitManagerWorkoutSnapshotUpdateNotification

- (RTHealthKitManagerWorkoutSnapshotUpdateNotification)initWithWorkoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v9.receiver = self;
  v9.super_class = RTHealthKitManagerWorkoutSnapshotUpdateNotification;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [snapshotCopy copy];
    workoutSnapshot = v5->_workoutSnapshot;
    v5->_workoutSnapshot = v6;
  }

  return v5;
}

@end