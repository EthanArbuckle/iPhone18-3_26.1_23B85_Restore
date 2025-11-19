@interface SBFSteppedAnimationTimingFunctionCalculator
- (SBFSteppedAnimationTimingFunctionCalculator)init;
- (double)valueForFunctionWithName:(id)a3;
- (void)addTimingFunction:(id)a3 withName:(id)a4 constrainedToIntervalBetween:(double)a5 and:(double)a6;
- (void)addTimingFunctionWithName:(id)a3 fromNormalizedAnimationSettings:(id)a4;
@end

@implementation SBFSteppedAnimationTimingFunctionCalculator

- (SBFSteppedAnimationTimingFunctionCalculator)init
{
  v6.receiver = self;
  v6.super_class = SBFSteppedAnimationTimingFunctionCalculator;
  v2 = [(SBFSteppedAnimationTimingFunctionCalculator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    functionsByName = v2->_functionsByName;
    v2->_functionsByName = v3;
  }

  return v2;
}

- (void)addTimingFunction:(id)a3 withName:(id)a4 constrainedToIntervalBetween:(double)a5 and:(double)a6
{
  v10 = a4;
  v11 = [_SBSteppedAnimationTimingFunction timingFunctionWithTimingFunction:a3 constrainedToIntervalBetween:a5 and:a6];
  [(NSMutableDictionary *)self->_functionsByName setObject:v11 forKey:v10];
}

- (void)addTimingFunctionWithName:(id)a3 fromNormalizedAnimationSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [v6 timingFunction];
  [v6 delay];
  v9 = v8;
  [v6 duration];
  v11 = v10;

  [(SBFSteppedAnimationTimingFunctionCalculator *)self addTimingFunction:v12 withName:v7 constrainedToIntervalBetween:v9 and:v11];
}

- (double)valueForFunctionWithName:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_functionsByName objectForKey:a3];
  [v4 valueAtPercentage:self->_percentComplete];
  v6 = v5;

  return v6;
}

@end