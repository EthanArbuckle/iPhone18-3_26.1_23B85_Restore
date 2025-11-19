@interface VTVoiceTriggerEnabledPolicyAOP
- (VTVoiceTriggerEnabledPolicyAOP)init;
- (void)_addVoiceTriggerEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation VTVoiceTriggerEnabledPolicyAOP

uint64_t __67__VTVoiceTriggerEnabledPolicyAOP__addVoiceTriggerEnabledConditions__block_invoke()
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

- (void)_addVoiceTriggerEnabledConditions
{
  [(VTPolicy *)self addConditions:&__block_literal_global_5770];
  [(VTPolicy *)self addConditions:&__block_literal_global_8];
  [(VTPolicy *)self addConditions:&__block_literal_global_11_5771];
  [(VTPolicy *)self addConditions:&__block_literal_global_14_5772];

  [(VTPolicy *)self addConditions:&__block_literal_global_17_5773];
}

uint64_t __67__VTVoiceTriggerEnabledPolicyAOP__addVoiceTriggerEnabledConditions__block_invoke_15()
{
  v0 = +[VTLockScreenMonitor sharedInstance];
  v1 = [v0 lockScreenState];

  v2 = +[VTSiriRestrictionOnLockScreenMonitor sharedInstance];
  v3 = [v2 isRestricted];

  if (v1)
  {
    v4 = v1 == 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 1;
  }

  if (v3)
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since Siri is restricted on lock screen", v7, 2u);
    }
  }

  return v3 ^ 1u;
}

uint64_t __67__VTVoiceTriggerEnabledPolicyAOP__addVoiceTriggerEnabledConditions__block_invoke_12()
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

uint64_t __67__VTVoiceTriggerEnabledPolicyAOP__addVoiceTriggerEnabledConditions__block_invoke_9()
{
  v0 = +[VTSpringboardStartMonitor sharedInstance];
  v1 = [v0 isSpringboardStarted];

  if ((v1 & 1) == 0)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since SpringBoard is not started yet", v4, 2u);
    }
  }

  return v1;
}

uint64_t __67__VTVoiceTriggerEnabledPolicyAOP__addVoiceTriggerEnabledConditions__block_invoke_6()
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

- (void)_subscribeEventMonitors
{
  v3 = +[VTVoiceTriggerEnabledMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v3];

  v4 = +[VTSiriEnabledMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v4];

  v5 = +[VTSpringboardStartMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v5];

  v6 = +[VTFirstUnlockMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v6];

  v7 = +[VTLockScreenMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v7];

  v8 = +[VTSiriRestrictionOnLockScreenMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v8];
}

- (VTVoiceTriggerEnabledPolicyAOP)init
{
  v5.receiver = self;
  v5.super_class = VTVoiceTriggerEnabledPolicyAOP;
  v2 = [(VTPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VTVoiceTriggerEnabledPolicyAOP *)v2 _addVoiceTriggerEnabledConditions];
    [(VTVoiceTriggerEnabledPolicyAOP *)v3 _subscribeEventMonitors];
  }

  return v3;
}

@end