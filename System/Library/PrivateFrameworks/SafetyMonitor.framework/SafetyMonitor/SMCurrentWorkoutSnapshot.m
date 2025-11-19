@interface SMCurrentWorkoutSnapshot
- (SMCurrentWorkoutSnapshot)initWithCoder:(id)a3;
- (SMCurrentWorkoutSnapshot)initWithSessionIdentifier:(id)a3 activityType:(unint64_t)a4 sessionType:(int64_t)a5 isWorkoutOngoing:(BOOL)a6 isFirstPartyWorkout:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMCurrentWorkoutSnapshot

- (SMCurrentWorkoutSnapshot)initWithSessionIdentifier:(id)a3 activityType:(unint64_t)a4 sessionType:(int64_t)a5 isWorkoutOngoing:(BOOL)a6 isFirstPartyWorkout:(BOOL)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = SMCurrentWorkoutSnapshot;
  v14 = [(SMCurrentWorkoutSnapshot *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sessionIdentifier, a3);
    v15->_activityType = a4;
    v15->_sessionType = a5;
    v15->_isWorkoutOngoing = a6;
    v15->_isFirstPartyWorkout = a7;
  }

  return v15;
}

- (SMCurrentWorkoutSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutSessionIdentifierKey"];
  v6 = [v4 decodeIntegerForKey:@"__kSMWorkoutActivityTypeKey"];
  v7 = [v4 decodeIntegerForKey:@"__kSMWorkoutSessionTypeKey"];
  v8 = [v4 decodeBoolForKey:@"__kSMIsWorkoutOngoingKey"];
  v9 = [v4 decodeBoolForKey:@"__kSMIsFirstPartyWorkoutKey"];

  v10 = [(SMCurrentWorkoutSnapshot *)self initWithSessionIdentifier:v5 activityType:v6 sessionType:v7 isWorkoutOngoing:v8 isFirstPartyWorkout:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"__kSMWorkoutSessionIdentifierKey"];
  [v5 encodeInteger:self->_activityType forKey:@"__kSMWorkoutActivityTypeKey"];
  [v5 encodeInteger:self->_sessionType forKey:@"__kSMWorkoutSessionTypeKey"];
  [v5 encodeBool:self->_isWorkoutOngoing forKey:@"__kSMIsWorkoutOngoingKey"];
  [v5 encodeBool:self->_isFirstPartyWorkout forKey:@"__kSMIsFirstPartyWorkoutKey"];
}

@end