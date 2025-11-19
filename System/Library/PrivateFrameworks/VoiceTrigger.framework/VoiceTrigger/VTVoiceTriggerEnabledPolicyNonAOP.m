@interface VTVoiceTriggerEnabledPolicyNonAOP
- (VTVoiceTriggerEnabledPolicyNonAOP)init;
- (void)_addVoiceTriggerEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation VTVoiceTriggerEnabledPolicyNonAOP

- (void)_addVoiceTriggerEnabledConditions
{
  [(VTPolicy *)self addConditions:&__block_literal_global_1127];
  [(VTPolicy *)self addConditions:&__block_literal_global_11];
  [(VTPolicy *)self addConditions:&__block_literal_global_14];
  [(VTPolicy *)self addConditions:&__block_literal_global_17];
  [(VTPolicy *)self addConditions:&__block_literal_global_20];
  [(VTPolicy *)self addConditions:&__block_literal_global_23];

  [(VTPolicy *)self addConditions:&__block_literal_global_26];
}

uint64_t __70__VTVoiceTriggerEnabledPolicyNonAOP__addVoiceTriggerEnabledConditions__block_invoke_24()
{
  v0 = +[VTSoftwareUpdateCheckingMonitor sharedInstance];
  v1 = [v0 isSoftwareUpdateCheckingRunning];

  if (v1)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since Software Update Checking is running", v4, 2u);
    }
  }

  return v1 ^ 1u;
}

uint64_t __70__VTVoiceTriggerEnabledPolicyNonAOP__addVoiceTriggerEnabledConditions__block_invoke_21()
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

uint64_t __70__VTVoiceTriggerEnabledPolicyNonAOP__addVoiceTriggerEnabledConditions__block_invoke_18()
{
  v0 = +[VTSiriAssertionMonitor sharedInstance];
  v1 = [v0 isEnabled];

  if (v1)
  {
    return 1;
  }

  v2 = +[VTBatteryMonitor sharedInstance];
  v3 = [v2 batteryState];

  if (v3 != 2)
  {
    return 1;
  }

  v4 = VTLogContextFacilityVoiceTrigger;
  v5 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v5)
  {
    *v7 = 0;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "VoiceTrigger cannot be turned on since device is on battery", v7, 2u);
    return 0;
  }

  return result;
}

uint64_t __70__VTVoiceTriggerEnabledPolicyNonAOP__addVoiceTriggerEnabledConditions__block_invoke_15()
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

uint64_t __70__VTVoiceTriggerEnabledPolicyNonAOP__addVoiceTriggerEnabledConditions__block_invoke_12()
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

uint64_t __70__VTVoiceTriggerEnabledPolicyNonAOP__addVoiceTriggerEnabledConditions__block_invoke_9()
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

uint64_t __70__VTVoiceTriggerEnabledPolicyNonAOP__addVoiceTriggerEnabledConditions__block_invoke()
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

  v8 = +[VTBatteryMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v8];

  v9 = +[VTLockScreenMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v9];

  v10 = +[VTSiriRestrictionOnLockScreenMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v10];

  v11 = +[VTSoftwareUpdateCheckingMonitor sharedInstance];
  [(VTPolicy *)self subscribeEventMonitor:v11];
}

- (VTVoiceTriggerEnabledPolicyNonAOP)init
{
  v5.receiver = self;
  v5.super_class = VTVoiceTriggerEnabledPolicyNonAOP;
  v2 = [(VTPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VTVoiceTriggerEnabledPolicyNonAOP *)v2 _addVoiceTriggerEnabledConditions];
    [(VTVoiceTriggerEnabledPolicyNonAOP *)v3 _subscribeEventMonitors];
  }

  return v3;
}

@end