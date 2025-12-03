@interface RTStateTransitionOneTimeTrans
- (RTStateTransitionOneTimeTrans)initWithCoder:(id)coder;
- (RTStateTransitionOneTimeTrans)initWithStart:(double)start stop:(double)stop motionActivityType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStateTransitionOneTimeTrans

- (RTStateTransitionOneTimeTrans)initWithStart:(double)start stop:(double)stop motionActivityType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = RTStateTransitionOneTimeTrans;
  result = [(RTStateTransitionOneTimeTrans *)&v9 init];
  if (result)
  {
    result->_start_s = start;
    result->_stop_s = stop;
    result->_motionActivityType = type;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  start_s = self->_start_s;
  coderCopy = coder;
  [coderCopy encodeDouble:@"start_s" forKey:start_s];
  [coderCopy encodeDouble:@"stop_s" forKey:self->_stop_s];
  [coderCopy encodeInteger:self->_motionActivityType forKey:@"motionActivityType"];
}

- (RTStateTransitionOneTimeTrans)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RTStateTransitionOneTimeTrans;
  v5 = [(RTStateTransitionOneTimeTrans *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"start_s"];
    v5->_start_s = v6;
    [coderCopy decodeDoubleForKey:@"stop_s"];
    v5->_stop_s = v7;
    if ([coderCopy containsValueForKey:@"motionActivityType"])
    {
      v8 = [coderCopy decodeIntegerForKey:@"motionActivityType"];
    }

    else
    {
      v8 = 0;
    }

    v5->_motionActivityType = v8;
  }

  return v5;
}

@end