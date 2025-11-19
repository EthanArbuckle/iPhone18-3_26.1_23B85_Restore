@interface VTVoiceTriggerEnabledPolicyHorseman
- (VTVoiceTriggerEnabledPolicyHorseman)init;
- (void)_subscribeEventMonitors;
@end

@implementation VTVoiceTriggerEnabledPolicyHorseman

uint64_t __72__VTVoiceTriggerEnabledPolicyHorseman__addVoiceTriggerEnabledConditions__block_invoke()
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
}

- (VTVoiceTriggerEnabledPolicyHorseman)init
{
  v5.receiver = self;
  v5.super_class = VTVoiceTriggerEnabledPolicyHorseman;
  v2 = [(VTPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VTVoiceTriggerEnabledPolicyHorseman *)v2 _addVoiceTriggerEnabledConditions];
    [(VTVoiceTriggerEnabledPolicyHorseman *)v3 _subscribeEventMonitors];
  }

  return v3;
}

@end