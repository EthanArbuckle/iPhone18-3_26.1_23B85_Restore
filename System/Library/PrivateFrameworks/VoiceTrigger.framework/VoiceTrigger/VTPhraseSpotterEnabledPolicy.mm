@interface VTPhraseSpotterEnabledPolicy
- (VTPhraseSpotterEnabledPolicy)init;
- (void)_addVoiceTriggerEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation VTPhraseSpotterEnabledPolicy

- (void)_addVoiceTriggerEnabledConditions
{
  [(VTPolicy *)self addConditions:&__block_literal_global_393];

  [(VTPolicy *)self addConditions:&__block_literal_global_3];
}

uint64_t __65__VTPhraseSpotterEnabledPolicy__addVoiceTriggerEnabledConditions__block_invoke_2()
{
  v0 = +[VTFirstUnlockMonitor sharedInstance];
  v1 = [v0 isFirstUnlocked];

  return v1;
}

uint64_t __65__VTPhraseSpotterEnabledPolicy__addVoiceTriggerEnabledConditions__block_invoke()
{
  v0 = +[VTSpringboardStartMonitor sharedInstance];
  v1 = [v0 isSpringboardStarted];

  return v1;
}

- (void)_subscribeEventMonitors
{
  v3 = +[VTSpringboardStartMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v3];

  v4 = +[VTFirstUnlockMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v4];
}

- (VTPhraseSpotterEnabledPolicy)init
{
  v5.receiver = self;
  v5.super_class = VTPhraseSpotterEnabledPolicy;
  v2 = [(VTPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VTPhraseSpotterEnabledPolicy *)v2 _addVoiceTriggerEnabledConditions];
    [(VTPhraseSpotterEnabledPolicy *)v3 _subscribeEventMonitors];
  }

  return v3;
}

@end