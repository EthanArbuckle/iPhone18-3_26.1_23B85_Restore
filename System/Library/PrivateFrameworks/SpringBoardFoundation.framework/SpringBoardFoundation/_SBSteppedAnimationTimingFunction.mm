@interface _SBSteppedAnimationTimingFunction
+ (id)timingFunctionWithTimingFunction:(id)function constrainedToIntervalBetween:(double)between and:(double)and;
- (SBNormalizedTransitionInterval)constrainedRange;
- (_SBSteppedAnimationTimingFunction)initWithTimingFunction:(id)function constrainedToIntervalBetween:(double)between and:(double)and;
- (double)valueAtPercentage:(double)percentage;
@end

@implementation _SBSteppedAnimationTimingFunction

+ (id)timingFunctionWithTimingFunction:(id)function constrainedToIntervalBetween:(double)between and:(double)and
{
  functionCopy = function;
  v9 = [[self alloc] initWithTimingFunction:functionCopy constrainedToIntervalBetween:between and:and];

  return v9;
}

- (_SBSteppedAnimationTimingFunction)initWithTimingFunction:(id)function constrainedToIntervalBetween:(double)between and:(double)and
{
  functionCopy = function;
  v14.receiver = self;
  v14.super_class = _SBSteppedAnimationTimingFunction;
  v11 = [(_SBSteppedAnimationTimingFunction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timingFunction, function);
    if (between >= and)
    {
      [(_SBSteppedAnimationTimingFunction *)a2 initWithTimingFunction:v12 constrainedToIntervalBetween:between and:and];
    }

    v12->_constrainedRange.start = fmin(fmax(between, 0.0), 1.0);
    v12->_constrainedRange.duration = fmin(fmax(and, 0.0), 1.0) - between;
  }

  return v12;
}

- (double)valueAtPercentage:(double)percentage
{
  timingFunction = self->_timingFunction;
  start = self->_constrainedRange.start;
  percentageCopy = 0.0;
  if (start <= percentage)
  {
    duration = self->_constrainedRange.duration;
    percentageCopy = 1.0;
    if (start + duration >= percentage)
    {
      percentage = (fmin(fmax(percentage, 0.0), 1.0) - start) / duration;
      percentageCopy = percentage;
    }
  }

  *&percentage = percentageCopy;
  [(CAMediaTimingFunction *)timingFunction _solveForInput:percentage, v3, v4];
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