@interface RTCurrentWorkoutSnapshot
- (RTCurrentWorkoutSnapshot)initWithHKCurrentWorkoutSnapshot:(id)snapshot;
- (RTCurrentWorkoutSnapshot)initWithSessionIdentifier:(id)identifier activityType:(unint64_t)type locationType:(int64_t)locationType swimmingLocationType:(int64_t)swimmingLocationType sessionType:(int64_t)sessionType isFirstPartyWorkout:(BOOL)workout sessionState:(unint64_t)state workoutStartDate:(id)self0 snapshotDate:(id)self1 sessionError:(id)self2;
- (id)description;
@end

@implementation RTCurrentWorkoutSnapshot

- (RTCurrentWorkoutSnapshot)initWithSessionIdentifier:(id)identifier activityType:(unint64_t)type locationType:(int64_t)locationType swimmingLocationType:(int64_t)swimmingLocationType sessionType:(int64_t)sessionType isFirstPartyWorkout:(BOOL)workout sessionState:(unint64_t)state workoutStartDate:(id)self0 snapshotDate:(id)self1 sessionError:(id)self2
{
  identifierCopy = identifier;
  dateCopy = date;
  snapshotDateCopy = snapshotDate;
  errorCopy = error;
  v26.receiver = self;
  v26.super_class = RTCurrentWorkoutSnapshot;
  v19 = [(RTCurrentWorkoutSnapshot *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionIdentifier, identifier);
    v20->_activityType = type;
    v20->_locationType = locationType;
    v20->_swimmingLocationType = swimmingLocationType;
    v20->_sessionType = sessionType;
    v20->_isFirstPartyWorkout = workout;
    v20->_sessionState = state;
    objc_storeStrong(&v20->_workoutStartDate, date);
    objc_storeStrong(&v20->_snapshotDate, snapshotDate);
    objc_storeStrong(&v20->_sessionError, error);
  }

  return v20;
}

- (RTCurrentWorkoutSnapshot)initWithHKCurrentWorkoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  sessionIdentifier = [snapshotCopy sessionIdentifier];
  configuration = [snapshotCopy configuration];
  activityType = [configuration activityType];
  configuration2 = [snapshotCopy configuration];
  locationType = [configuration2 locationType];
  configuration3 = [snapshotCopy configuration];
  swimmingLocationType = [configuration3 swimmingLocationType];
  sessionType = [snapshotCopy sessionType];
  isFirstPartyWorkout = [snapshotCopy isFirstPartyWorkout];
  v9 = +[RTHealthKitManager RTHealthKitWorkoutSessionStateFromHKWorkoutSessionState:](RTHealthKitManager, "RTHealthKitWorkoutSessionStateFromHKWorkoutSessionState:", [snapshotCopy sessionState]);
  builderStartDate = [snapshotCopy builderStartDate];
  snapshotDate = [snapshotCopy snapshotDate];
  sessionError = [snapshotCopy sessionError];

  v13 = [(RTCurrentWorkoutSnapshot *)self initWithSessionIdentifier:sessionIdentifier activityType:activityType locationType:locationType swimmingLocationType:swimmingLocationType sessionType:sessionType isFirstPartyWorkout:isFirstPartyWorkout sessionState:v9 workoutStartDate:builderStartDate snapshotDate:snapshotDate sessionError:sessionError];
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
  stringFromDate = [(NSDate *)self->_workoutStartDate stringFromDate];
  domain = [(NSError *)self->_sessionError domain];
  v9 = [v3 stringWithFormat:@"sessionIdentifier, %@, activityType, %lu, locationType, %lu, swimmingLocationType, %lu, sessionType, %lu, isFirstPartyWorkout, %@, sessionState, %@, workoutStartDate, %@, sessionErrorDomain, %@, sessionErrorCode, %ld", v12, v11, sessionType, v4, v6, stringFromDate, domain, -[NSError code](self->_sessionError, "code")];

  return v9;
}

@end