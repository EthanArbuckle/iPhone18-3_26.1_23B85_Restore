@interface REWorkoutRelevanceProviderManager
+ (id)_features;
- (REWorkoutRelevanceProviderManager)initWithQueue:(id)queue;
- (id)_valueForProvider:(id)provider feature:(id)feature;
- (void)_prepareForUpdate;
- (void)pause;
- (void)predictorDidUpdate:(id)update;
- (void)resume;
@end

@implementation REWorkoutRelevanceProviderManager

- (REWorkoutRelevanceProviderManager)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = REWorkoutRelevanceProviderManager;
  result = [(RERelevanceProviderManager *)&v4 initWithQueue:queue];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature workoutStateFeature];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_valueForProvider:(id)provider feature:(id)feature
{
  v5 = [provider state] == self->_state;
  v6 = [(NSDate *)self->_lastWorkoutDate dateByAddingTimeInterval:*&kLastWorkoutWorkoutSuggestionDelay];
  v7 = v6;
  if (v6)
  {
    [v6 timeIntervalSinceNow];
    if (v8 > 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v5;
    }
  }

  v9 = [REFeatureValue featureValueWithBool:v5];

  return v9;
}

- (void)resume
{
  v3 = +[(RESingleton *)REActiveWorkoutPredictor];
  [v3 addObserver:self];
}

- (void)pause
{
  v3 = +[(RESingleton *)REActiveWorkoutPredictor];
  [v3 removeObserver:self];
}

- (void)_prepareForUpdate
{
  v3 = +[(RESingleton *)REActiveWorkoutPredictor];
  self->_state = [v3 isActiveWorkout];

  v6 = +[(RESingleton *)REActiveWorkoutPredictor];
  lastWorkoutDate = [v6 lastWorkoutDate];
  lastWorkoutDate = self->_lastWorkoutDate;
  self->_lastWorkoutDate = lastWorkoutDate;
}

- (void)predictorDidUpdate:(id)update
{
  v4 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v4];

  v5 = +[(RESingleton *)REActiveWorkoutPredictor];
  lastWorkoutDate = [v5 lastWorkoutDate];

  v10 = [lastWorkoutDate dateByAddingTimeInterval:*&kLastWorkoutWorkoutSuggestionDelay];

  v7 = v10;
  if (v10)
  {
    [v10 timeIntervalSinceNow];
    v7 = v10;
    if (v8 > 0.0)
    {
      v9 = [RERelevanceProviderManagerUpdate scheduledUpdateForAllProvidersAtDate:v10];
      [(RERelevanceProviderManager *)self _scheduleUpdate:v9];

      v7 = v10;
    }
  }
}

@end