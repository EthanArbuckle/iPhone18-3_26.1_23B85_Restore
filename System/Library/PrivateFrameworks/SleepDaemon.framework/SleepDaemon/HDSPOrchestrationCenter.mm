@interface HDSPOrchestrationCenter
- (HDSPEnvironment)environment;
- (HDSPOrchestrationCenter)initWithEnvironment:(id)a3;
- (void)publishNotificationForEvent:(id)a3;
@end

@implementation HDSPOrchestrationCenter

- (HDSPOrchestrationCenter)initWithEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSPOrchestrationCenter;
  v5 = [(HDSPOrchestrationCenter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = v6;
  }

  return v6;
}

- (void)publishNotificationForEvent:(id)a3
{
  v3 = [a3 identifier];
  v4 = HKSHSleepScoreResultsNotificationEventIdentifier();
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {

    +[HDSPOrchestrationClientWrapper kickOffBackgroundGeneration];
  }
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end