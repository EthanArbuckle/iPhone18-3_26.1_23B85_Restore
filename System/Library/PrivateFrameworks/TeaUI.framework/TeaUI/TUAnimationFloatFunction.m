@interface TUAnimationFloatFunction
- (TUAnimationFloatFunction)init;
- (TUAnimationFloatFunction)initWithTimingFunction:(id)a3 startValue:(double)a4 endValue:(double)a5 speed:(double)a6;
- (double)solveForTime:(double)a3;
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

- (TUAnimationFloatFunction)initWithTimingFunction:(id)a3 startValue:(double)a4 endValue:(double)a5 speed:(double)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = TUAnimationFloatFunction;
  v11 = [(TUAnimationFloatFunction *)&v15 init];
  if (v11)
  {
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    }

    timingFunction = v11->_timingFunction;
    v11->_timingFunction = v12;

    v11->_startValue = a4;
    v11->_endValue = a5;
    v11->_speed = a6;
  }

  return v11;
}

- (double)solveForTime:(double)a3
{
  [(TUAnimationFloatFunction *)self startValue];
  v6 = v5;
  [(TUAnimationFloatFunction *)self endValue];
  v8 = v7;
  [(TUAnimationFloatFunction *)self startValue];
  v10 = v9;
  v11 = [(TUAnimationFloatFunction *)self timingFunction];
  [(TUAnimationFloatFunction *)self speed];
  v13 = v12 * a3;
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
  [v11 _solveForInput:v14];
  v16 = v6 + (v8 - v10) * v15;

  return v16;
}

@end