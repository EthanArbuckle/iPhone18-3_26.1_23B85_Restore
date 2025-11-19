@interface STWorkoutSetStateRequest
- (STWorkoutSetStateRequest)initWithCoder:(id)a3;
- (id)_initWithState:(int64_t)a3;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STWorkoutSetStateRequest

- (STWorkoutSetStateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STWorkoutSetStateRequest;
  v5 = [(AFSiriRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_workoutState = [v4 decodeIntegerForKey:@"_workoutState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STWorkoutSetStateRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_workoutState forKey:{@"_workoutState", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = STWorkoutSetStateRequest;
  result = [(AFSiriRequest *)&v5 init];
  if (result)
  {
    *(result + 5) = a3;
  }

  return result;
}

@end