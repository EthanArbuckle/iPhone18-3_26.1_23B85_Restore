@interface RTHealthKitManagerWorkoutSnapshotUpdateNotification
- (RTHealthKitManagerWorkoutSnapshotUpdateNotification)initWithWorkoutSnapshot:(id)a3;
@end

@implementation RTHealthKitManagerWorkoutSnapshotUpdateNotification

- (RTHealthKitManagerWorkoutSnapshotUpdateNotification)initWithWorkoutSnapshot:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTHealthKitManagerWorkoutSnapshotUpdateNotification;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    workoutSnapshot = v5->_workoutSnapshot;
    v5->_workoutSnapshot = v6;
  }

  return v5;
}

@end