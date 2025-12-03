@interface STWorkoutSetStateRequest
- (STWorkoutSetStateRequest)initWithCoder:(id)coder;
- (id)_initWithState:(int64_t)state;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STWorkoutSetStateRequest

- (STWorkoutSetStateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STWorkoutSetStateRequest;
  v5 = [(AFSiriRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_workoutState = [coderCopy decodeIntegerForKey:@"_workoutState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STWorkoutSetStateRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_workoutState forKey:{@"_workoutState", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = STWorkoutSetStateRequest;
  result = [(AFSiriRequest *)&v5 init];
  if (result)
  {
    *(result + 5) = state;
  }

  return result;
}

@end