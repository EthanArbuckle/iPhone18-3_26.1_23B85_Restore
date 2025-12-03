@interface SMCurrentWorkoutSnapshot
- (SMCurrentWorkoutSnapshot)initWithCoder:(id)coder;
- (SMCurrentWorkoutSnapshot)initWithSessionIdentifier:(id)identifier activityType:(unint64_t)type sessionType:(int64_t)sessionType isWorkoutOngoing:(BOOL)ongoing isFirstPartyWorkout:(BOOL)workout;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMCurrentWorkoutSnapshot

- (SMCurrentWorkoutSnapshot)initWithSessionIdentifier:(id)identifier activityType:(unint64_t)type sessionType:(int64_t)sessionType isWorkoutOngoing:(BOOL)ongoing isFirstPartyWorkout:(BOOL)workout
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = SMCurrentWorkoutSnapshot;
  v14 = [(SMCurrentWorkoutSnapshot *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sessionIdentifier, identifier);
    v15->_activityType = type;
    v15->_sessionType = sessionType;
    v15->_isWorkoutOngoing = ongoing;
    v15->_isFirstPartyWorkout = workout;
  }

  return v15;
}

- (SMCurrentWorkoutSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutSessionIdentifierKey"];
  v6 = [coderCopy decodeIntegerForKey:@"__kSMWorkoutActivityTypeKey"];
  v7 = [coderCopy decodeIntegerForKey:@"__kSMWorkoutSessionTypeKey"];
  v8 = [coderCopy decodeBoolForKey:@"__kSMIsWorkoutOngoingKey"];
  v9 = [coderCopy decodeBoolForKey:@"__kSMIsFirstPartyWorkoutKey"];

  v10 = [(SMCurrentWorkoutSnapshot *)self initWithSessionIdentifier:v5 activityType:v6 sessionType:v7 isWorkoutOngoing:v8 isFirstPartyWorkout:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"__kSMWorkoutSessionIdentifierKey"];
  [coderCopy encodeInteger:self->_activityType forKey:@"__kSMWorkoutActivityTypeKey"];
  [coderCopy encodeInteger:self->_sessionType forKey:@"__kSMWorkoutSessionTypeKey"];
  [coderCopy encodeBool:self->_isWorkoutOngoing forKey:@"__kSMIsWorkoutOngoingKey"];
  [coderCopy encodeBool:self->_isFirstPartyWorkout forKey:@"__kSMIsFirstPartyWorkoutKey"];
}

@end