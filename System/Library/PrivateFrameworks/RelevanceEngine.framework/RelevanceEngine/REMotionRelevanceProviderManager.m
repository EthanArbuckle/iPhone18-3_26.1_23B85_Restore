@interface REMotionRelevanceProviderManager
+ (id)_features;
- (REMotionRelevanceProviderManager)initWithQueue:(id)a3;
- (id)_valueForProvider:(id)a3 feature:(id)a4;
- (void)_prepareForUpdate;
- (void)pause;
- (void)predictorDidUpdate:(id)a3;
- (void)resume;
@end

@implementation REMotionRelevanceProviderManager

- (REMotionRelevanceProviderManager)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = REMotionRelevanceProviderManager;
  result = [(RERelevanceProviderManager *)&v4 initWithQueue:a3];
  if (result)
  {
    result->_type = 0;
  }

  return result;
}

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature motionFeature];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_valueForProvider:(id)a3 feature:(id)a4
{
  v4 = (self->_type & [a3 motionTypes]) != 0;

  return [REFeatureValue featureValueWithBool:v4];
}

- (void)resume
{
  v3 = +[(RESingleton *)REDeviceMotionPredictor];
  [v3 addObserver:self];
}

- (void)pause
{
  v3 = +[(RESingleton *)REDeviceMotionPredictor];
  [v3 removeObserver:self];
}

- (void)_prepareForUpdate
{
  v3 = +[(RESingleton *)REDeviceMotionPredictor];
  self->_type = [v3 motionType];
}

- (void)predictorDidUpdate:(id)a3
{
  v4 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v4];
}

@end