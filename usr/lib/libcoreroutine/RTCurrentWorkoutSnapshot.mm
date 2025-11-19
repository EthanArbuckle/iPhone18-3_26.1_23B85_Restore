@interface RTCurrentWorkoutSnapshot
- (RTCurrentWorkoutSnapshot)initWithHKCurrentWorkoutSnapshot:(id)a3;
- (RTCurrentWorkoutSnapshot)initWithSessionIdentifier:(id)a3 activityType:(unint64_t)a4 locationType:(int64_t)a5 swimmingLocationType:(int64_t)a6 sessionType:(int64_t)a7 isFirstPartyWorkout:(BOOL)a8 sessionState:(unint64_t)a9 workoutStartDate:(id)a10 snapshotDate:(id)a11 sessionError:(id)a12;
- (id)description;
@end

@implementation RTCurrentWorkoutSnapshot

- (RTCurrentWorkoutSnapshot)initWithSessionIdentifier:(id)a3 activityType:(unint64_t)a4 locationType:(int64_t)a5 swimmingLocationType:(int64_t)a6 sessionType:(int64_t)a7 isFirstPartyWorkout:(BOOL)a8 sessionState:(unint64_t)a9 workoutStartDate:(id)a10 snapshotDate:(id)a11 sessionError:(id)a12
{
  v16 = a3;
  v17 = a10;
  v18 = a11;
  v25 = a12;
  v26.receiver = self;
  v26.super_class = RTCurrentWorkoutSnapshot;
  v19 = [(RTCurrentWorkoutSnapshot *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionIdentifier, a3);
    v20->_activityType = a4;
    v20->_locationType = a5;
    v20->_swimmingLocationType = a6;
    v20->_sessionType = a7;
    v20->_isFirstPartyWorkout = a8;
    v20->_sessionState = a9;
    objc_storeStrong(&v20->_workoutStartDate, a10);
    objc_storeStrong(&v20->_snapshotDate, a11);
    objc_storeStrong(&v20->_sessionError, a12);
  }

  return v20;
}

- (RTCurrentWorkoutSnapshot)initWithHKCurrentWorkoutSnapshot:(id)a3
{
  v3 = a3;
  v17 = [v3 sessionIdentifier];
  v19 = [v3 configuration];
  v16 = [v19 activityType];
  v4 = [v3 configuration];
  v15 = [v4 locationType];
  v5 = [v3 configuration];
  v6 = [v5 swimmingLocationType];
  v7 = [v3 sessionType];
  v8 = [v3 isFirstPartyWorkout];
  v9 = +[RTHealthKitManager RTHealthKitWorkoutSessionStateFromHKWorkoutSessionState:](RTHealthKitManager, "RTHealthKitWorkoutSessionStateFromHKWorkoutSessionState:", [v3 sessionState]);
  v10 = [v3 builderStartDate];
  v11 = [v3 snapshotDate];
  v12 = [v3 sessionError];

  v13 = [(RTCurrentWorkoutSnapshot *)self initWithSessionIdentifier:v17 activityType:v16 locationType:v15 swimmingLocationType:v6 sessionType:v7 isFirstPartyWorkout:v8 sessionState:v9 workoutStartDate:v10 snapshotDate:v11 sessionError:v12];
  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12 = *&self->_sessionIdentifier;
  v11 = *&self->_locationType;
  if (self->_isFirstPartyWorkout)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  sessionType = self->_sessionType;
  v6 = [RTHealthKitManager workoutSessionStateToString:self->_sessionState];
  v7 = [(NSDate *)self->_workoutStartDate stringFromDate];
  v8 = [(NSError *)self->_sessionError domain];
  v9 = [v3 stringWithFormat:@"sessionIdentifier, %@, activityType, %lu, locationType, %lu, swimmingLocationType, %lu, sessionType, %lu, isFirstPartyWorkout, %@, sessionState, %@, workoutStartDate, %@, sessionErrorDomain, %@, sessionErrorCode, %ld", v12, v11, sessionType, v4, v6, v7, v8, -[NSError code](self->_sessionError, "code")];

  return v9;
}

@end