@interface RTStateTransitionOneTimeTrans
- (RTStateTransitionOneTimeTrans)initWithCoder:(id)a3;
- (RTStateTransitionOneTimeTrans)initWithStart:(double)a3 stop:(double)a4 motionActivityType:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStateTransitionOneTimeTrans

- (RTStateTransitionOneTimeTrans)initWithStart:(double)a3 stop:(double)a4 motionActivityType:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = RTStateTransitionOneTimeTrans;
  result = [(RTStateTransitionOneTimeTrans *)&v9 init];
  if (result)
  {
    result->_start_s = a3;
    result->_stop_s = a4;
    result->_motionActivityType = a5;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  start_s = self->_start_s;
  v5 = a3;
  [v5 encodeDouble:@"start_s" forKey:start_s];
  [v5 encodeDouble:@"stop_s" forKey:self->_stop_s];
  [v5 encodeInteger:self->_motionActivityType forKey:@"motionActivityType"];
}

- (RTStateTransitionOneTimeTrans)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RTStateTransitionOneTimeTrans;
  v5 = [(RTStateTransitionOneTimeTrans *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"start_s"];
    v5->_start_s = v6;
    [v4 decodeDoubleForKey:@"stop_s"];
    v5->_stop_s = v7;
    if ([v4 containsValueForKey:@"motionActivityType"])
    {
      v8 = [v4 decodeIntegerForKey:@"motionActivityType"];
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