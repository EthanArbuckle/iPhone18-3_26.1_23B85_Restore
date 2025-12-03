@interface STStopwatchShowAndPerformStopwatchAction
- (STStopwatchShowAndPerformStopwatchAction)initWithCoder:(id)coder;
- (id)_initWithAction:(unint64_t)action;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStopwatchShowAndPerformStopwatchAction

- (STStopwatchShowAndPerformStopwatchAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStopwatchShowAndPerformStopwatchAction;
  v5 = [(AFSiriRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_action = [coderCopy decodeIntegerForKey:@"_action"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStopwatchShowAndPerformStopwatchAction;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_action forKey:{@"_action", v5.receiver, v5.super_class}];
}

- (id)_initWithAction:(unint64_t)action
{
  v5.receiver = self;
  v5.super_class = STStopwatchShowAndPerformStopwatchAction;
  result = [(AFSiriRequest *)&v5 init];
  if (result)
  {
    *(result + 5) = action;
  }

  return result;
}

@end