@interface REActivityRelevanceProviderManager
+ (id)_features;
- (REActivityRelevanceProviderManager)initWithQueue:(id)queue;
- (id)_valueForProvider:(id)provider feature:(id)feature;
- (void)_prepareForUpdate;
- (void)pause;
- (void)predictorDidUpdate:(id)update;
- (void)resume;
@end

@implementation REActivityRelevanceProviderManager

- (REActivityRelevanceProviderManager)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = REActivityRelevanceProviderManager;
  result = [(RERelevanceProviderManager *)&v4 initWithQueue:queue];
  if (result)
  {
    result->_activeEnergy = 0.0;
    result->_exerciseTime = 0.0;
    result->_standHour = 0.0;
  }

  return result;
}

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature activitySummaryFeature];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_valueForProvider:(id)provider feature:(id)feature
{
  providerCopy = provider;
  activeEnergy = self->_activeEnergy;
  exerciseTime = self->_exerciseTime;
  standHour = self->_standHour;
  if (activeEnergy < 1.0 == [providerCopy closedActiveEngergy] || exerciseTime < 1.0 == objc_msgSend(providerCopy, "closedExerciseTime"))
  {
    v9 = 0;
  }

  else
  {
    v9 = (standHour < 1.0) ^ [providerCopy closedStandHour];
  }

  v10 = [REFeatureValue featureValueWithBool:v9];

  return v10;
}

- (void)resume
{
  v3 = +[(RESingleton *)REActivitySummaryPredictor];
  [v3 addObserver:self];
}

- (void)pause
{
  v3 = +[(RESingleton *)REActivitySummaryPredictor];
  [v3 removeObserver:self];
}

- (void)_prepareForUpdate
{
  v3 = +[(RESingleton *)REActivitySummaryPredictor];
  [v3 activeEnergyPercentComplete];
  self->_activeEnergy = v4;

  v5 = +[(RESingleton *)REActivitySummaryPredictor];
  [v5 exerciseTimePercentComplete];
  self->_exerciseTime = v6;

  v8 = +[(RESingleton *)REActivitySummaryPredictor];
  [v8 standHourPercentComplete];
  self->_standHour = v7;
}

- (void)predictorDidUpdate:(id)update
{
  v4 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v4];
}

@end