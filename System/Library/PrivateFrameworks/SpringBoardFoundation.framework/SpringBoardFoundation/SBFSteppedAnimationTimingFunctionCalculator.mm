@interface SBFSteppedAnimationTimingFunctionCalculator
- (SBFSteppedAnimationTimingFunctionCalculator)init;
- (double)valueForFunctionWithName:(id)name;
- (void)addTimingFunction:(id)function withName:(id)name constrainedToIntervalBetween:(double)between and:(double)and;
- (void)addTimingFunctionWithName:(id)name fromNormalizedAnimationSettings:(id)settings;
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

- (void)addTimingFunction:(id)function withName:(id)name constrainedToIntervalBetween:(double)between and:(double)and
{
  nameCopy = name;
  v11 = [_SBSteppedAnimationTimingFunction timingFunctionWithTimingFunction:function constrainedToIntervalBetween:between and:and];
  [(NSMutableDictionary *)self->_functionsByName setObject:v11 forKey:nameCopy];
}

- (void)addTimingFunctionWithName:(id)name fromNormalizedAnimationSettings:(id)settings
{
  settingsCopy = settings;
  nameCopy = name;
  timingFunction = [settingsCopy timingFunction];
  [settingsCopy delay];
  v9 = v8;
  [settingsCopy duration];
  v11 = v10;

  [(SBFSteppedAnimationTimingFunctionCalculator *)self addTimingFunction:timingFunction withName:nameCopy constrainedToIntervalBetween:v9 and:v11];
}

- (double)valueForFunctionWithName:(id)name
{
  v4 = [(NSMutableDictionary *)self->_functionsByName objectForKey:name];
  [v4 valueAtPercentage:self->_percentComplete];
  v6 = v5;

  return v6;
}

@end