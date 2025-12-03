@interface HDSPOrchestrationCenter
- (HDSPEnvironment)environment;
- (HDSPOrchestrationCenter)initWithEnvironment:(id)environment;
- (void)publishNotificationForEvent:(id)event;
@end

@implementation HDSPOrchestrationCenter

- (HDSPOrchestrationCenter)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPOrchestrationCenter;
  v5 = [(HDSPOrchestrationCenter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = v6;
  }

  return v6;
}

- (void)publishNotificationForEvent:(id)event
{
  identifier = [event identifier];
  v4 = HKSHSleepScoreResultsNotificationEventIdentifier();
  v5 = [identifier isEqualToString:v4];

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