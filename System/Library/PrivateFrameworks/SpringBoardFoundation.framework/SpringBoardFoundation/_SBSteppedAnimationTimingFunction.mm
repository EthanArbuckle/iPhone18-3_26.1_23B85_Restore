@interface _SBSteppedAnimationTimingFunction
+ (id)timingFunctionWithTimingFunction:(id)a3 constrainedToIntervalBetween:(double)a4 and:(double)a5;
- (SBNormalizedTransitionInterval)constrainedRange;
- (_SBSteppedAnimationTimingFunction)initWithTimingFunction:(id)a3 constrainedToIntervalBetween:(double)a4 and:(double)a5;
- (double)valueAtPercentage:(double)a3;
@end

@implementation _SBSteppedAnimationTimingFunction

+ (id)timingFunctionWithTimingFunction:(id)a3 constrainedToIntervalBetween:(double)a4 and:(double)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithTimingFunction:v8 constrainedToIntervalBetween:a4 and:a5];

  return v9;
}

- (_SBSteppedAnimationTimingFunction)initWithTimingFunction:(id)a3 constrainedToIntervalBetween:(double)a4 and:(double)a5
{
  v10 = a3;
  v14.receiver = self;
  v14.super_class = _SBSteppedAnimationTimingFunction;
  v11 = [(_SBSteppedAnimationTimingFunction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timingFunction, a3);
    if (a4 >= a5)
    {
      [(_SBSteppedAnimationTimingFunction *)a2 initWithTimingFunction:v12 constrainedToIntervalBetween:a4 and:a5];
    }

    v12->_constrainedRange.start = fmin(fmax(a4, 0.0), 1.0);
    v12->_constrainedRange.duration = fmin(fmax(a5, 0.0), 1.0) - a4;
  }

  return v12;
}

- (double)valueAtPercentage:(double)a3
{
  timingFunction = self->_timingFunction;
  start = self->_constrainedRange.start;
  v8 = 0.0;
  if (start <= a3)
  {
    duration = self->_constrainedRange.duration;
    v8 = 1.0;
    if (start + duration >= a3)
    {
      a3 = (fmin(fmax(a3, 0.0), 1.0) - start) / duration;
      v8 = a3;
    }
  }

  *&a3 = v8;
  [(CAMediaTimingFunction *)timingFunction _solveForInput:a3, v3, v4];
  return v10;
}

- (SBNormalizedTransitionInterval)constrainedRange
{
  start = self->_constrainedRange.start;
  duration = self->_constrainedRange.duration;
  result.duration = duration;
  result.start = start;
  return result;
}

- (void)initWithTimingFunction:(double)a3 constrainedToIntervalBetween:(double)a4 and:.cold.1(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBFSteppedAnimationTimingFunctionCalculator.m" lineNumber:91 description:{@"Invalid timing interval for function (%f, %f)", *&a3, *&a4}];
}

@end