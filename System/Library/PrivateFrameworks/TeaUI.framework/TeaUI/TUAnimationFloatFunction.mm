@interface TUAnimationFloatFunction
- (TUAnimationFloatFunction)init;
- (TUAnimationFloatFunction)initWithTimingFunction:(id)function startValue:(double)value endValue:(double)endValue speed:(double)speed;
- (double)solveForTime:(double)time;
@end

@implementation TUAnimationFloatFunction

- (TUAnimationFloatFunction)init
{
  v6.receiver = self;
  v6.super_class = TUAnimationFloatFunction;
  v2 = [(TUAnimationFloatFunction *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    timingFunction = v2->_timingFunction;
    v2->_timingFunction = v3;

    v2->_speed = 1.0;
  }

  return v2;
}

- (TUAnimationFloatFunction)initWithTimingFunction:(id)function startValue:(double)value endValue:(double)endValue speed:(double)speed
{
  functionCopy = function;
  v15.receiver = self;
  v15.super_class = TUAnimationFloatFunction;
  v11 = [(TUAnimationFloatFunction *)&v15 init];
  if (v11)
  {
    if (functionCopy)
    {
      v12 = functionCopy;
    }

    else
    {
      v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    }

    timingFunction = v11->_timingFunction;
    v11->_timingFunction = v12;

    v11->_startValue = value;
    v11->_endValue = endValue;
    v11->_speed = speed;
  }

  return v11;
}

- (double)solveForTime:(double)time
{
  [(TUAnimationFloatFunction *)self startValue];
  v6 = v5;
  [(TUAnimationFloatFunction *)self endValue];
  v8 = v7;
  [(TUAnimationFloatFunction *)self startValue];
  v10 = v9;
  timingFunction = [(TUAnimationFloatFunction *)self timingFunction];
  [(TUAnimationFloatFunction *)self speed];
  v13 = v12 * time;
  v14 = 0.0;
  if (v13 >= 0.0)
  {
    v14 = v13;
    if (v13 > 1.0)
    {
      v14 = 1.0;
    }
  }

  *&v14 = v14;
  [timingFunction _solveForInput:v14];
  v16 = v6 + (v8 - v10) * v15;

  return v16;
}

@end