@interface STStartWorkoutRequest
- (STStartWorkoutRequest)initWithCoder:(id)a3;
- (id)_initWithType:(int64_t)a3 location:(int64_t)a4 goal:(id)a5 goalType:(int64_t)a6 userMode:(int64_t)a7 isOpenGoal:(BOOL)a8 skipActivitySetup:(BOOL)a9;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStartWorkoutRequest

- (STStartWorkoutRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = STStartWorkoutRequest;
  v5 = [(AFSiriRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_locationType = [v4 decodeIntegerForKey:@"kSTStartWorkoutRequestLocationTypeKey"];
    v5->_activityType = [v4 decodeIntegerForKey:@"kSTStartWorkoutRequestActivityTypeKey"];
    v5->_userMode = [v4 decodeIntegerForKey:@"kSTStartWorkoutRequestUserModeTypeKey"];
    v5->_goalType = [v4 decodeIntegerForKey:@"kSTStartWorkoutRequestGoalTypeKey"];
    HKQuantityClass = getHKQuantityClass();
    if (HKQuantityClass)
    {
      v7 = [v4 decodeObjectOfClass:HKQuantityClass forKey:@"kSTStartWorkoutRequestGoalKey"];
      goal = v5->_goal;
      v5->_goal = v7;
    }

    v5->_skipActivitySetup = [v4 decodeBoolForKey:@"kSTStartWorkoutRequestSkipActivitySetupKey"];
    v5->_isOpenGoal = [v4 decodeBoolForKey:@"kSTStartWorkoutRequestIsOpenGoalKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStartWorkoutRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_locationType forKey:{@"kSTStartWorkoutRequestLocationTypeKey", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_activityType forKey:@"kSTStartWorkoutRequestActivityTypeKey"];
  [v4 encodeInteger:self->_userMode forKey:@"kSTStartWorkoutRequestUserModeTypeKey"];
  [v4 encodeInteger:self->_goalType forKey:@"kSTStartWorkoutRequestGoalTypeKey"];
  [v4 encodeObject:self->_goal forKey:@"kSTStartWorkoutRequestGoalKey"];
  [v4 encodeBool:self->_skipActivitySetup forKey:@"kSTStartWorkoutRequestSkipActivitySetupKey"];
  [v4 encodeBool:self->_isOpenGoal forKey:@"kSTStartWorkoutRequestIsOpenGoalKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithType:(int64_t)a3 location:(int64_t)a4 goal:(id)a5 goalType:(int64_t)a6 userMode:(int64_t)a7 isOpenGoal:(BOOL)a8 skipActivitySetup:(BOOL)a9
{
  v16 = a5;
  v19.receiver = self;
  v19.super_class = STStartWorkoutRequest;
  v17 = [(AFSiriRequest *)&v19 init];
  if (v17)
  {
    initHKQuantity();
    v17->_activityType = a3;
    v17->_locationType = a4;
    v17->_userMode = a7;
    objc_storeStrong(&v17->_goal, a5);
    v17->_goalType = a6;
    v17->_isOpenGoal = a8;
    v17->_skipActivitySetup = a9;
  }

  return v17;
}

@end