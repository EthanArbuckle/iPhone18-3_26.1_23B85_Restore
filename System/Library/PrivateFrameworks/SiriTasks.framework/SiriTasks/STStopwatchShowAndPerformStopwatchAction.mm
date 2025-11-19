@interface STStopwatchShowAndPerformStopwatchAction
- (STStopwatchShowAndPerformStopwatchAction)initWithCoder:(id)a3;
- (id)_initWithAction:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStopwatchShowAndPerformStopwatchAction

- (STStopwatchShowAndPerformStopwatchAction)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStopwatchShowAndPerformStopwatchAction;
  v5 = [(AFSiriRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_action = [v4 decodeIntegerForKey:@"_action"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStopwatchShowAndPerformStopwatchAction;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_action forKey:{@"_action", v5.receiver, v5.super_class}];
}

- (id)_initWithAction:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = STStopwatchShowAndPerformStopwatchAction;
  result = [(AFSiriRequest *)&v5 init];
  if (result)
  {
    *(result + 5) = a3;
  }

  return result;
}

@end