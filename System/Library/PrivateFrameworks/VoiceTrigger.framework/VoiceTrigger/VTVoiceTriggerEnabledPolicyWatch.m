@interface VTVoiceTriggerEnabledPolicyWatch
- (VTVoiceTriggerEnabledPolicyWatch)init;
- (void)_addVoiceTriggerEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation VTVoiceTriggerEnabledPolicyWatch

- (void)_addVoiceTriggerEnabledConditions
{
  [(VTPolicy *)self addConditions:&__block_literal_global_410];
  [(VTPolicy *)self addConditions:&__block_literal_global_7];
  [(VTPolicy *)self addConditions:&__block_literal_global_10];
  [(VTPolicy *)self addConditions:&__block_literal_global_13];

  [(VTPolicy *)self addConditions:&__block_literal_global_16];
}

uint64_t __69__VTVoiceTriggerEnabledPolicyWatch__addVoiceTriggerEnabledConditions__block_invoke_14()
{
  v0 = +[VTSiriAssertionMonitor sharedInstance];
  v1 = [v0 isEnabled];

  if ((v1 & 1) == 0)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since Siri assertion is disabled", v4, 2u);
    }
  }

  return v1;
}

uint64_t __69__VTVoiceTriggerEnabledPolicyWatch__addVoiceTriggerEnabledConditions__block_invoke_11()
{
  v0 = +[VTFirstUnlockMonitor sharedInstance];
  v1 = [v0 isFirstUnlocked];

  if ((v1 & 1) == 0)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since device is not unlocked after restart", v4, 2u);
    }
  }

  return v1;
}

uint64_t __69__VTVoiceTriggerEnabledPolicyWatch__addVoiceTriggerEnabledConditions__block_invoke_8()
{
  v0 = +[VTSpringboardStartMonitor sharedInstance];
  v1 = [v0 isSpringboardStarted];

  if ((v1 & 1) == 0)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since SpringBoard is not started", v4, 2u);
    }
  }

  return v1;
}

uint64_t __69__VTVoiceTriggerEnabledPolicyWatch__addVoiceTriggerEnabledConditions__block_invoke_5()
{
  v0 = +[VTSiriEnabledMonitor sharedInstance];
  v1 = [v0 isEnabled];

  if ((v1 & 1) == 0)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since Siri is disabled", v4, 2u);
    }
  }

  return v1;
}

uint64_t __69__VTVoiceTriggerEnabledPolicyWatch__addVoiceTriggerEnabledConditions__block_invoke()
{
  v0 = +[VTVoiceTriggerEnabledMonitor sharedInstance];
  v1 = [v0 isEnabled];

  if ((v1 & 1) == 0)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since VoiceTrigger is disabled", v4, 2u);
    }
  }

  return v1;
}

- (void)_subscribeEventMonitors
{
  v3 = +[VTVoiceTriggerEnabledMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v3];

  v4 = +[VTSiriAssertionMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v4];

  v5 = +[VTSiriEnabledMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v5];

  v6 = +[VTSpringboardStartMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v6];

  v7 = +[VTFirstUnlockMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v7];
}

- (VTVoiceTriggerEnabledPolicyWatch)init
{
  v5.receiver = self;
  v5.super_class = VTVoiceTriggerEnabledPolicyWatch;
  v2 = [(VTPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VTVoiceTriggerEnabledPolicyWatch *)v2 _addVoiceTriggerEnabledConditions];
    [(VTVoiceTriggerEnabledPolicyWatch *)v3 _subscribeEventMonitors];
  }

  return v3;
}

@end