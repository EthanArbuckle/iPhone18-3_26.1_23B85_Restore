@interface STStartWorkoutRequest
- (STStartWorkoutRequest)initWithCoder:(id)coder;
- (id)_initWithType:(int64_t)type location:(int64_t)location goal:(id)goal goalType:(int64_t)goalType userMode:(int64_t)mode isOpenGoal:(BOOL)openGoal skipActivitySetup:(BOOL)setup;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStartWorkoutRequest

- (STStartWorkoutRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = STStartWorkoutRequest;
  v5 = [(AFSiriRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_locationType = [coderCopy decodeIntegerForKey:@"kSTStartWorkoutRequestLocationTypeKey"];
    v5->_activityType = [coderCopy decodeIntegerForKey:@"kSTStartWorkoutRequestActivityTypeKey"];
    v5->_userMode = [coderCopy decodeIntegerForKey:@"kSTStartWorkoutRequestUserModeTypeKey"];
    v5->_goalType = [coderCopy decodeIntegerForKey:@"kSTStartWorkoutRequestGoalTypeKey"];
    HKQuantityClass = getHKQuantityClass();
    if (HKQuantityClass)
    {
      v7 = [coderCopy decodeObjectOfClass:HKQuantityClass forKey:@"kSTStartWorkoutRequestGoalKey"];
      goal = v5->_goal;
      v5->_goal = v7;
    }

    v5->_skipActivitySetup = [coderCopy decodeBoolForKey:@"kSTStartWorkoutRequestSkipActivitySetupKey"];
    v5->_isOpenGoal = [coderCopy decodeBoolForKey:@"kSTStartWorkoutRequestIsOpenGoalKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStartWorkoutRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_locationType forKey:{@"kSTStartWorkoutRequestLocationTypeKey", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_activityType forKey:@"kSTStartWorkoutRequestActivityTypeKey"];
  [coderCopy encodeInteger:self->_userMode forKey:@"kSTStartWorkoutRequestUserModeTypeKey"];
  [coderCopy encodeInteger:self->_goalType forKey:@"kSTStartWorkoutRequestGoalTypeKey"];
  [coderCopy encodeObject:self->_goal forKey:@"kSTStartWorkoutRequestGoalKey"];
  [coderCopy encodeBool:self->_skipActivitySetup forKey:@"kSTStartWorkoutRequestSkipActivitySetupKey"];
  [coderCopy encodeBool:self->_isOpenGoal forKey:@"kSTStartWorkoutRequestIsOpenGoalKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithType:(int64_t)type location:(int64_t)location goal:(id)goal goalType:(int64_t)goalType userMode:(int64_t)mode isOpenGoal:(BOOL)openGoal skipActivitySetup:(BOOL)setup
{
  goalCopy = goal;
  v19.receiver = self;
  v19.super_class = STStartWorkoutRequest;
  v17 = [(AFSiriRequest *)&v19 init];
  if (v17)
  {
    initHKQuantity();
    v17->_activityType = type;
    v17->_locationType = location;
    v17->_userMode = mode;
    objc_storeStrong(&v17->_goal, goal);
    v17->_goalType = goalType;
    v17->_isOpenGoal = openGoal;
    v17->_skipActivitySetup = setup;
  }

  return v17;
}

@end