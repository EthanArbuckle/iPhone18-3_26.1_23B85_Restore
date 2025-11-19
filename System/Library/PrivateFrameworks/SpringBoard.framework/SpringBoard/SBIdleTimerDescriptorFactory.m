@interface SBIdleTimerDescriptorFactory
+ (id)disabledIdleTimerDescriptor;
- (BOOL)_isIdleDurationForever:(double)a3;
- (BOOL)_shouldUseAttentionSensor;
- (BOOL)sanitizeDescriptorForLockscreenDefaults:(id)a3;
- (BOOL)sanitizeSettingsAfterInitialSetup:(id)a3;
- (BOOL)sanitizeSettingsAfterSetup:(id)a3 duration:(int64_t)a4;
- (BOOL)sanitizeTotalDuration:(id)a3;
- (BOOL)sanitizeWarnInterval:(id)a3;
- (BOOL)updateIdleTimerSettingsForActiveClientConfiguration:(id)a3;
- (BOOL)updateIdleTimerSettingsForAutoLockTimeout:(id)a3;
- (BOOL)updateIdleTimerSettingsForBatterySaverMode:(id)a3;
- (BOOL)updateIdleTimerSettingsForDefaultWarnInterval:(id)a3;
- (BOOL)updateIdleTimerSettingsForDuration:(int64_t)a3 descriptor:(id)a4;
- (BOOL)updateIdleTimerSettingsForFaceDown:(id)a3;
- (BOOL)updateIdleTimerSettingsForPowerDefaults:(id)a3;
- (BOOL)updateIdleTimerSettingsForPrototypeSettingsDisable:(id)a3;
- (BOOL)updateIdleTimerSettingsForPrototypeSettingsOverride:(id)a3;
- (BOOL)updateIdleTimerSettingsForSecurityDefaults:(id)a3;
- (BOOL)updateIdleTimerSettingsForTelephony:(id)a3;
- (BOOL)updateIdleTimerSettingsForThermalBlockedMode:(id)a3;
- (BOOL)updateIdleTimerSettingsForUnlockedWithMesa:(id)a3;
- (BOOL)updateIdleTimerSettingsForWarnInterval:(id)a3;
- (BOOL)updateIdleTimerSettingsWithCustomTimeouts:(id)a3 fromBehavior:(id)a4;
- (SBBacklightController)_backlightController;
- (SBConferenceManager)_conferenceManager;
- (SBIdleTimerDescriptorFactory)initWithGlobalStateMonitor:(id)a3;
- (SBIdleTimerSettings)_idleTimerPrototypeSettings;
- (SBLockScreenManager)_lockScreenManager;
- (SBMainWorkspace)_mainWorkspace;
- (SBPrototypeController)_prototypeController;
- (SBTelephonyManager)_telephonyManager;
- (SBUIBiometricResource)_biometricResource;
- (id)idleTimerDescriptorForBehavior:(id)a3;
- (void)_updateIdleTimerSettingsWarnInterval:(id)a3 totalInterval:(double)a4;
@end

@implementation SBIdleTimerDescriptorFactory

- (SBTelephonyManager)_telephonyManager
{
  override_telephonyManager = self->_override_telephonyManager;
  if (override_telephonyManager)
  {
    v3 = override_telephonyManager;
  }

  else
  {
    v3 = [SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:0];
  }

  return v3;
}

- (SBConferenceManager)_conferenceManager
{
  override_conferenceManager = self->_override_conferenceManager;
  if (override_conferenceManager)
  {
    v3 = override_conferenceManager;
  }

  else
  {
    v3 = +[SBConferenceManager sharedInstance];
  }

  return v3;
}

- (SBLockScreenManager)_lockScreenManager
{
  override_lockScreenManager = self->_override_lockScreenManager;
  if (override_lockScreenManager)
  {
    v3 = override_lockScreenManager;
  }

  else
  {
    v3 = +[SBLockScreenManager sharedInstanceIfExists];
  }

  return v3;
}

- (SBIdleTimerSettings)_idleTimerPrototypeSettings
{
  override_idleTimerPrototypeSettings = self->_override_idleTimerPrototypeSettings;
  if (override_idleTimerPrototypeSettings)
  {
    v3 = override_idleTimerPrototypeSettings;
  }

  else
  {
    v3 = +[SBIdleTimerDomain rootSettings];
  }

  return v3;
}

- (SBMainWorkspace)_mainWorkspace
{
  override_mainWorkspace = self->_override_mainWorkspace;
  if (override_mainWorkspace)
  {
    v3 = override_mainWorkspace;
  }

  else
  {
    v3 = +[SBMainWorkspace sharedInstance];
  }

  return v3;
}

- (SBUIBiometricResource)_biometricResource
{
  override_biometricResource = self->_override_biometricResource;
  if (override_biometricResource)
  {
    v3 = override_biometricResource;
  }

  else
  {
    v3 = [MEMORY[0x277D67C98] sharedInstance];
  }

  return v3;
}

- (BOOL)_shouldUseAttentionSensor
{
  v3 = [(SBIdleTimerDescriptorFactory *)self _prototypeController];
  v4 = [v3 rootSettings];
  v5 = [v4 attentionAwarenessSettings];

  if ([v5 shouldUseAttentionSensor])
  {
    if ([(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor disableAttentionAwareness])
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 1;
  }

  if (self->_previousShouldUseAttentionSensorAccess != v6)
  {
    self->_previousShouldUseAttentionSensorAccess = v6;
    v7 = SBLogIdleTimer();
    v8 = v7;
    if (v6 == 3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = 0;
        v9 = "_shouldUseAttentionSensor: YES";
        v10 = &v14;
        v11 = v8;
        v12 = OS_LOG_TYPE_INFO;
LABEL_16:
        _os_log_impl(&dword_21ED4E000, v11, v12, v9, v10, 2u);
      }
    }

    else if (v6 == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v9 = "_shouldUseAttentionSensor: NO because SBDisableAttentionAwareness is set";
        v10 = &v15;
LABEL_15:
        v11 = v8;
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_16;
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "_shouldUseAttentionSensor: NO because not supported on this hardware, turned off in accessibility or turned off by managed config";
      v10 = buf;
      goto LABEL_15;
    }
  }

  return v6 == 3;
}

- (SBPrototypeController)_prototypeController
{
  override_prototypeController = self->_override_prototypeController;
  if (override_prototypeController)
  {
    v3 = override_prototypeController;
  }

  else
  {
    v3 = +[SBPrototypeController sharedInstance];
  }

  return v3;
}

+ (id)disabledIdleTimerDescriptor
{
  v2 = [[SBIdleTimerDescriptor alloc] initWithTimerMode:3 warnInterval:1.79769313e308 totalInterval:1.79769313e308];

  return v2;
}

- (SBIdleTimerDescriptorFactory)initWithGlobalStateMonitor:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SBIdleTimerDescriptorFactory;
  v6 = [(SBIdleTimerDescriptorFactory *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stateMonitor, a3);
    v8 = +[SBDefaults localDefaults];
    v9 = [v8 idleTimerDefaults];
    override_idleTimerDefaults = v7->_override_idleTimerDefaults;
    v7->_override_idleTimerDefaults = v9;
  }

  return v7;
}

- (id)idleTimerDescriptorForBehavior:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 idleTimerMode] == 3)
  {
    v5 = [objc_opt_class() disabledIdleTimerDescriptor];
    v6 = [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForThermalBlockedMode:v5];
    v7 = SBLogIdleTimer();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_43;
      }

      *v28 = 138543618;
      *&v28[4] = objc_opt_class();
      *&v28[12] = 2048;
      *&v28[14] = v4;
      v9 = *&v28[4];
      v10 = "idleTimerDescriptorForBehavior: <%{public}@: 0x%p> disabled proposed SBFIdleTimerModeDisabled but it was overriden due to thermal block";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_43;
      }

      *v28 = 138543618;
      *&v28[4] = objc_opt_class();
      *&v28[12] = 2048;
      *&v28[14] = v4;
      v9 = *&v28[4];
      v10 = "idleTimerDescriptorForBehavior: <%{public}@: 0x%p> returning disabled idle timer descriptor because behavior provider proposed SBFIdleTimerModeDisabled";
    }

    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v10, v28, 0x16u);
  }

  else
  {
    v11 = objc_opt_class();
    v12 = v4;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v7 = v13;

    if (v7)
    {
      v14 = SBLogIdleTimer();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 138543362;
        *&v28[4] = v7;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "idleTimerDescriptorForBehavior: %{public}@", v28, 0xCu);
      }
    }

    else
    {
      v7 = [SBIdleTimerBehavior behaviorForBehaviorProvider:v12];
      v14 = SBLogIdleTimer();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 138543874;
        *&v28[4] = objc_opt_class();
        *&v28[12] = 2048;
        *&v28[14] = v12;
        *&v28[22] = 2114;
        v29 = v7;
        v15 = *&v28[4];
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "idleTimerDescriptorForBehavior: <%{public}@: 0x%p> behavior: %{public}@", v28, 0x20u);
      }
    }

    v16 = [v7 idleTimerDuration];
    v17 = [v7 idleTimerMode];
    v19 = [v7 idleWarnMode]== 2 && v17 != 3;
    v5 = [[SBIdleTimerDescriptor alloc] initWithTimerMode:v17 warnInterval:0.0 totalInterval:0.0];
    if (v16 == 3)
    {
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForDuration:3 descriptor:v5];
    }

    else
    {
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForSecurityDefaults:v5];
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForAutoLockTimeout:v5];
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForTelephony:v5];
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForPrototypeSettingsDisable:v5];
      [(SBIdleTimerDescriptorFactory *)self sanitizeSettingsAfterInitialSetup:v5];
      if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
      {
        if (v16 == 17)
        {
          v20 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
          [v20 unlockedIdleTimerCap];
          v22 = v21;

          [(SBIdleTimerDescriptor *)v5 totalInterval];
          if (v22 < v23)
          {
            v23 = v22;
          }

          [(SBIdleTimerDescriptor *)v5 setTotalInterval:v23, *v28, *&v28[16], v29];
        }

        else
        {
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForPowerDefaults:v5];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForDefaultWarnInterval:v5];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsWithCustomTimeouts:v5 fromBehavior:v7];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForUnlockedWithMesa:v5];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForPrototypeSettingsOverride:v5];
        }

        if (![(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForBatterySaverMode:v5, *v28, *&v28[8]])
        {
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForFaceDown:v5];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForWarnInterval:v5];
        }
      }

      else
      {
        [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForDuration:v16 descriptor:v5];
        [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsWithCustomTimeouts:v5 fromBehavior:v7];
        [(SBIdleTimerDescriptorFactory *)self sanitizeDescriptorForLockscreenDefaults:v5];
        [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForDefaultWarnInterval:v5];
      }

      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForThermalBlockedMode:v5, *v28, *&v28[8]];
      if ([(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForActiveClientConfiguration:v5])
      {
        [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForWarnInterval:v5];
      }

      if (!v19)
      {
        [(SBIdleTimerDescriptor *)v5 setWarnInterval:1.79769313e308];
        [(SBIdleTimerDescriptor *)v5 setQuickUnwarnInterval:1.79769313e308];
        [(SBIdleTimerDescriptor *)v5 addAuditReason:@"should not warn"];
      }

      [(SBIdleTimerDescriptorFactory *)self sanitizeSettingsAfterSetup:v5 duration:v16];
      if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 0x10 && [(SBIdleTimerDescriptorFactory *)self _shouldUseAttentionSensor]&& [(SBIdleTimerDescriptor *)v5 timerMode]!= 3)
      {
        v24 = [(SBIdleTimerDescriptorFactory *)self _prototypeController];
        v25 = [v24 rootSettings];
        v26 = [v25 attentionAwarenessSettings];

        [v26 sampleInterval];
        [(SBIdleTimerDescriptor *)v5 setSampleInterval:?];
        [(SBIdleTimerDescriptor *)v5 addAuditReason:@"should use attention awareness"];
      }
    }
  }

LABEL_43:

  return v5;
}

- (BOOL)updateIdleTimerSettingsForSecurityDefaults:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor dontLockEver];
  if (v5)
  {
    [v4 setTotalInterval:1.79769313e308];
    [v4 setWarnInterval:1.79769313e308];
    [v4 setTimerMode:3];
    [v4 addAuditReason:@"securityDefaults dontLockEver is YES"];
  }

  return v5;
}

- (BOOL)updateIdleTimerSettingsForPowerDefaults:(id)a3
{
  v4 = a3;
  if ([(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor dontDimOrLockOnAC]&& [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor isOnACPower])
  {
    [v4 setTotalInterval:1.79769313e308];
    [v4 setWarnInterval:1.79769313e308];
    [v4 setTimerMode:3];
    [v4 addAuditReason:@"idleTimerDefaults dontDimOrLockWhileConnectedToPower is YES and device is on AC"];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)updateIdleTimerSettingsForAutoLockTimeout:(id)a3
{
  v5 = a3;
  v6 = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor autoLockTimeout];
  v7 = v6;
  if (v6)
  {
    [v6 floatValue];
    v9 = v8;
    if (BSFloatLessThanOrEqualToFloat())
    {
      [v5 setTotalInterval:v9];
      v10 = @"MCFeatureAutoLockTime (%@) is lte MAX (%@)";
    }

    else
    {
      [v5 setTotalInterval:1.79769313e308];
      [v5 setWarnInterval:1.79769313e308];
      v10 = @"MCFeatureAutoLockTime (%@) is gt MAX (%@)";
    }

    v3 = SBIdleTimerIntervalToNSString(v9);
    v13 = SBIdleTimerIntervalToNSString(3600.0);
    [v5 addAuditReason:{v10, v3, v13}];

LABEL_19:
    goto LABEL_20;
  }

  if (__sb__runningInSpringBoard())
  {
    v11 = SBFEffectiveDeviceClass();
    v12 = 60.0;
    if (v11 == 2)
    {
      v12 = 300.0;
    }

    [v5 setTotalInterval:v12];
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v14 = [v3 userInterfaceIdiom];
    v15 = 60.0;
    if (v14 == 1)
    {
      v15 = 300.0;
    }

    [v5 setTotalInterval:v15];
  }

  v16 = __sb__runningInSpringBoard();
  v17 = v16;
  if (v16)
  {
    v18 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v18 = [v3 userInterfaceIdiom] == 1;
  }

  v19 = 60.0;
  if (v18)
  {
    v19 = 300.0;
  }

  v20 = SBIdleTimerIntervalToNSString(v19);
  [v5 addAuditReason:{@"ERROR: MCFeatureAutoLockTime is <nil>; setting totalInterval to DEFAULT: %@", v20}];

  if ((v17 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:

  return 1;
}

- (BOOL)updateIdleTimerSettingsForActiveClientConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor aggregatedClientConfiguration];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 disableTimerSetting];
    v8 = [v6 maxExpirationTimeoutSettings];
    v9 = [v6 minExpirationTimeoutSettings];
    v10 = v7 != 0;
    if (!v7 || ([v4 setTimerMode:3], objc_msgSend(v4, "setTotalInterval:", 1.79769313e308), objc_msgSend(v4, "setWarnInterval:", 1.79769313e308), objc_msgSend(v4, "addAuditReason:", @"Active client configuration: [%@]", v6), v8) && (v11 = objc_msgSend(v8, "highestPrecedence"), v11 >= objc_msgSend(v7, "precedence")))
    {
      v12 = [v6 resolvedExpirationTimeoutRange];
      [v12 lowerTimeout];
      v14 = v13;
      [v12 upperTimeout];
      v16 = v15;
      [v4 totalInterval];
      if (v9 && BSFloatLessThanFloat())
      {
        if (BSFloatLessThanOrEqualToFloat())
        {
          [v4 setTotalInterval:v14];
          v17 = @"MinExpirationTimeoutFromService (%@) is lte MAX_TOTAL_INTERVAL (%@)";
        }

        else
        {
          [v4 setTotalInterval:1.79769313e308];
          [v4 setWarnInterval:1.79769313e308];
          v17 = @"MinExpirationTimeoutFromService (%@) is gt MAX_TOTAL_INTERVAL (%@)";
        }

        v18 = SBIdleTimerIntervalToNSString(v14);
        v19 = SBIdleTimerIntervalToNSString(3600.0);
        [v4 addAuditReason:{v17, v18, v19}];

        v10 = 1;
      }

      [v4 totalInterval];
      if (v8)
      {
        v21 = v20;
        if (BSFloatGreaterThanFloat())
        {
          [v4 setTotalInterval:v16];
          if ([v4 timerMode] == 3)
          {
            [v4 setWarnInterval:v21 * 0.666666667];
            [v4 setTimerMode:1];
          }

          v22 = SBIdleTimerIntervalToNSString(v14);
          v23 = SBIdleTimerIntervalToNSString(3600.0);
          [v4 addAuditReason:{@"MaxExpirationTimeoutFromService", v22, v23}];

          v10 = 1;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)updateIdleTimerSettingsForDefaultWarnInterval:(id)a3
{
  v4 = a3;
  [v4 totalInterval];
  v6 = v5;
  v7 = BSFloatGreaterThanFloat();
  if (v7)
  {
    [(SBIdleTimerDescriptorFactory *)self _updateIdleTimerSettingsWarnInterval:v4 totalInterval:v6];
  }

  return v7;
}

- (BOOL)updateIdleTimerSettingsForPrototypeSettingsDisable:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
  v6 = [v5 disableIdleTimer];

  if (v6)
  {
    [v4 setTotalInterval:1.79769313e308];
    [v4 setWarnInterval:1.79769313e308];
    [v4 setTimerMode:3];
    [v4 addAuditReason:@"SBIdleTimerSettings disableIdleTimer is YES"];
  }

  return v6;
}

- (BOOL)updateIdleTimerSettingsForPrototypeSettingsOverride:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
  v6 = [v5 overrideIdleTimer];

  if (v6)
  {
    v7 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
    [v7 durationInterval];
    [v4 setTotalInterval:?];

    v8 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
    [v8 warnInterval];
    [v4 setWarnInterval:?];

    v9 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
    [v9 samplingStartBeforeFirstTimeout];
    [v4 setSamplingStartBeforeFirstTimeout:?];

    [v4 addAuditReason:@"SBIdleTimerSettings override is YES"];
  }

  return v6;
}

- (BOOL)updateIdleTimerSettingsForTelephony:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerDescriptorFactory *)self _telephonyManager];
  v6 = [(SBIdleTimerDescriptorFactory *)self _conferenceManager];
  if ([v5 isInEmergencyCallbackMode])
  {
    [v4 setTotalInterval:1.79769313e308];
    [v4 setWarnInterval:1.79769313e308];
    [v4 setTimerMode:3];
    [v4 addAuditReason:@"SBTelephonyManager is in emergency call"];
    v7 = 1;
  }

  else
  {
    v8 = [v5 inCallUsingSpeakerOrReceiver];
    v9 = [v6 activeFaceTimeCallExists];
    v10 = [(SBIdleTimerDescriptorFactory *)self _lockScreenManager];
    v11 = v10;
    if (v10)
    {
      v7 = 0;
      if (![v10 isUILocked] && ((v8 | v9) & 1) != 0)
      {
        [v4 setTotalInterval:1.79769313e308];
        if (v8)
        {
          [v4 addAuditReason:@"normal call"];
        }

        if (v9)
        {
          [v4 addAuditReason:@"FaceTime call"];
        }

        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)sanitizeSettingsAfterInitialSetup:(id)a3
{
  v3 = a3;
  [v3 totalInterval];
  v5 = v4;
  [v3 warnInterval];
  v7 = v6;
  if ((BSFloatLessThanFloat() & 1) != 0 || BSFloatIsZero())
  {
    if (__sb__runningInSpringBoard())
    {
      v8 = SBFEffectiveDeviceClass();
      v9 = 60.0;
      if (v8 == 2)
      {
        v9 = 300.0;
      }

      [v3 setTotalInterval:v9];
    }

    else
    {
      v10 = [MEMORY[0x277D75418] currentDevice];
      v11 = [v10 userInterfaceIdiom];
      v12 = 60.0;
      if (v11 == 1)
      {
        v12 = 300.0;
      }

      [v3 setTotalInterval:v12];
    }

    if (__sb__runningInSpringBoard())
    {
      v13 = SBFEffectiveDeviceClass();
      v14 = 40.0;
      if (v13 == 2)
      {
        v14 = 280.0;
      }

      [v3 setWarnInterval:v14];
    }

    else
    {
      v15 = [MEMORY[0x277D75418] currentDevice];
      v16 = [v15 userInterfaceIdiom];
      v17 = 40.0;
      if (v16 == 1)
      {
        v17 = 280.0;
      }

      [v3 setWarnInterval:v17];
    }

    if ([v3 timerMode] != 3)
    {
      [v3 setTimerMode:1];
    }

    v18 = SBIdleTimerIntervalToNSString(v5);
    v19 = SBIdleTimerIntervalToNSString(v7);
    [v3 addAuditReason:{@"totalInterval (%@) and/or warnInterval (%@) is not sane", v18, v19}];

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)sanitizeTotalDuration:(id)a3
{
  v3 = a3;
  [v3 totalInterval];
  v5 = v4;
  IsZero = BSFloatIsZero();
  if (IsZero)
  {
    if (__sb__runningInSpringBoard())
    {
      v7 = SBFEffectiveDeviceClass();
      v8 = 60.0;
      if (v7 == 2)
      {
        v8 = 300.0;
      }

      [v3 setTotalInterval:v8];
    }

    else
    {
      v9 = [MEMORY[0x277D75418] currentDevice];
      v10 = [v9 userInterfaceIdiom];
      v11 = 60.0;
      if (v10 == 1)
      {
        v11 = 300.0;
      }

      [v3 setTotalInterval:v11];
    }

    v12 = SBIdleTimerIntervalToNSString(v5);
    [v3 addAuditReason:{@"totalInterval (%@) is float equals to 0", v12}];
  }

  return IsZero;
}

- (BOOL)sanitizeWarnInterval:(id)a3
{
  v3 = a3;
  [v3 warnInterval];
  v5 = v4;
  IsZero = BSFloatIsZero();
  if (IsZero)
  {
    if (__sb__runningInSpringBoard())
    {
      v7 = SBFEffectiveDeviceClass();
      v8 = 40.0;
      if (v7 == 2)
      {
        v8 = 280.0;
      }

      [v3 setWarnInterval:v8];
    }

    else
    {
      v9 = [MEMORY[0x277D75418] currentDevice];
      v10 = [v9 userInterfaceIdiom];
      v11 = 40.0;
      if (v10 == 1)
      {
        v11 = 280.0;
      }

      [v3 setWarnInterval:v11];
    }

    v12 = SBIdleTimerIntervalToNSString(v5);
    [v3 addAuditReason:{@"warnInterval (%@) is float equals to 0", v12}];
  }

  return IsZero;
}

- (BOOL)sanitizeSettingsAfterSetup:(id)a3 duration:(int64_t)a4
{
  v5 = a3;
  [v5 addAuditReason:@"after setup"];
  [v5 totalInterval];
  if (BSFloatEqualToFloat())
  {
    [v5 warnInterval];
    if (BSFloatEqualToFloat())
    {
      if (__sb__runningInSpringBoard())
      {
        v6 = SBFEffectiveDeviceClass();
        v7 = 40.0;
        if (v6 == 2)
        {
          v7 = 280.0;
        }

        [v5 setWarnInterval:v7];
      }

      else
      {
        v8 = [MEMORY[0x277D75418] currentDevice];
        v9 = [v8 userInterfaceIdiom];
        v10 = 40.0;
        if (v9 == 1)
        {
          v10 = 280.0;
        }

        [v5 setWarnInterval:v10];
      }

      [v5 addAuditReason:{@"after setup, setting default warn interval"}];
    }
  }

  [v5 warnInterval];
  v12 = v11;
  if ([v5 shouldWarn])
  {
    if ([v5 timerMode] == 2)
    {
      [v5 setTimerMode:1];
      [v5 addAuditReason:{@"after setup, timer mode was: Manual"}];
    }
  }

  else if (BSFloatLessThanOrEqualToFloat())
  {
    [v5 setWarnInterval:1.79769313e308];
    v13 = SBIdleTimerIntervalToNSString(v12);
    [v5 addAuditReason:{@"after setup, warnInterval was %@", v13}];
  }

  v14 = [v5 shouldWarn];
  [v5 totalInterval];
  if (v14)
  {
    [v5 warnInterval];
  }

  if (a4 == 18 || BSFloatEqualToFloat())
  {
    [v5 setTotalInterval:1.79769313e308];
    [v5 addAuditReason:{@"after setup, should not expire"}];
  }

  if (([v5 shouldWarn] & 1) == 0 && BSFloatEqualToFloat())
  {
    [v5 setTimerMode:3];
    [v5 addAuditReason:{@"after setup, shouldWarn is NO and expireInterval is <never>"}];
  }

  [v5 warnInterval];
  if (BSFloatEqualToFloat())
  {
    [v5 totalInterval];
    if (BSFloatEqualToFloat())
    {
      [v5 setTimerMode:3];
      [v5 addAuditReason:{@"after setup, warnInterval is <never> and totalInterval is <never>"}];
    }
  }

  return 0;
}

- (BOOL)sanitizeDescriptorForLockscreenDefaults:(id)a3
{
  v4 = a3;
  [v4 totalInterval];
  v6 = v5;
  v7 = BSFloatGreaterThanOrEqualToFloat();
  if (v7)
  {
    [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor minimumLockscreenIdleTime];
    if (v6 >= v8)
    {
      v8 = v6;
    }

    [v4 setTotalInterval:v8];
    v9 = SBIdleTimerIntervalToNSString(v6);
    [v4 addAuditReason:{@"totalInterval (%@) is gte 0", v9}];
  }

  return v7;
}

- (BOOL)updateIdleTimerSettingsForDuration:(int64_t)a3 descriptor:(id)a4
{
  v6 = a4;
  if ([v6 timerMode] == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    switch(a3)
    {
      case 0:
      case 1:
        v8 = 6.0;
        goto LABEL_19;
      case 2:
        v8 = 2.0;
        goto LABEL_19;
      case 3:
        v9 = [SBApp accidentalActivationMitigationSessionCoordinator];
        v10 = [v9 currentSession];
        [v10 duration];
        [v6 setTotalInterval:?];

        [v6 setWarnInterval:0.01];
        goto LABEL_20;
      case 4:
        [(SBIdleTimerDefaults *)self->_override_idleTimerDefaults notificationVisibleIdleTimer];
        goto LABEL_19;
      case 5:
        v8 = 5.0;
        goto LABEL_19;
      case 6:
      case 8:
      case 13:
        v8 = 10.0;
        goto LABEL_19;
      case 7:
        v8 = 15.0;
        goto LABEL_19;
      case 9:
      case 10:
        v8 = 20.0;
        goto LABEL_19;
      case 11:
        v8 = 120.0;
        goto LABEL_19;
      case 12:
        v8 = 25.0;
        goto LABEL_19;
      case 14:
        v8 = 30.0;
        goto LABEL_19;
      case 15:
        v8 = 8.0;
        goto LABEL_19;
      case 17:
        v11 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
        [v11 unlockedIdleTimerCap];
        v13 = v12;

        [v6 totalInterval];
        if (v13 < v8)
        {
          v8 = v13;
        }

LABEL_19:
        [v6 setTotalInterval:v8];
        goto LABEL_20;
      case 18:
        [v6 setTotalInterval:1.79769313e308];
        [v6 setTimerMode:3];
LABEL_20:
        v14 = NSStringFromIdleTimerDuration();
        [v6 addAuditReason:{@"duration is %@", v14}];

        v7 = 1;
        break;
      default:
        break;
    }
  }

  return v7;
}

- (BOOL)updateIdleTimerSettingsWithCustomTimeouts:(id)a3 fromBehavior:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 customIdleExpirationTimeout];
  v9 = v8;
  IsZero = BSFloatIsZero();
  if ((IsZero & 1) == 0)
  {
    if ([(SBIdleTimerDescriptorFactory *)self _isIdleDurationForever:v9])
    {
      [v6 setTotalInterval:1.79769313e308];
      v11 = SBIdleTimerIntervalToNSString(v9);
      [v6 addAuditReason:{@"customIdleExpirationTimeout (%@) lt 0", v11}];
    }

    else
    {
      [v6 setTotalInterval:v9];
      if ([v7 idleWarnMode] == 1)
      {
        [v6 setWarnInterval:0.0];
        v12 = @"Setting totalInterval to custom customIdleExpirationTimeout gte 0";
LABEL_15:
        [v6 addAuditReason:v12];
        goto LABEL_16;
      }

      [v6 addAuditReason:@"Setting totalInterval to custom customIdleExpirationTimeout gte 0"];
    }

    [v7 customIdleWarningTimeout];
    v14 = v13;
    if ((BSFloatIsZero() & 1) == 0 && (BSFloatGreaterThanFloat() & 1) == 0)
    {
      if ([(SBIdleTimerDescriptorFactory *)self _isIdleDurationForever:v14])
      {
        [v6 setWarnInterval:1.79769313e308];
        v15 = SBIdleTimerIntervalToNSString(v14);
        [v6 addAuditReason:{@"customIdleWarningTimeout (%@) lt 0", v15}];
      }

      else
      {
        [v6 setWarnInterval:v14];
        [v6 addAuditReason:@"Setting warnInterval to custom customIdleWarningTimeout"];
      }

      [v6 warnInterval];
      if (v16 == 1.79769313e308)
      {
        [v6 totalInterval];
        if (v17 == 1.79769313e308)
        {
          [v6 setTimerMode:3];
          v12 = @"warnInterval is <never> and totalInterval is <never>";
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:

  return IsZero ^ 1;
}

- (BOOL)updateIdleTimerSettingsForUnlockedWithMesa:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerDescriptorFactory *)self _mainWorkspace];
  v6 = [v5 isSpringBoardActive];

  v7 = [(SBIdleTimerDescriptorFactory *)self _biometricResource];
  LODWORD(v5) = [v7 hasBiometricAuthenticationCapabilityEnabled];

  [v4 totalInterval];
  v8 = (BSFloatEqualToFloat() ^ 1) & v6 & v5;
  if (v8 == 1)
  {
    [v4 totalInterval];
    v10 = v9 * 0.5;
    if (_AXSAttentionAwarenessFeaturesEnabled())
    {
      v11 = 26.0;
    }

    else
    {
      v11 = 30.0;
    }

    if (v10 >= v11)
    {
      v11 = v10;
    }

    [v4 setTotalInterval:v11];
    v12 = SBIdleTimerIntervalToNSString(v10);
    if (_AXSAttentionAwarenessFeaturesEnabled())
    {
      v13 = 26.0;
    }

    else
    {
      v13 = 30.0;
    }

    v14 = SBIdleTimerIntervalToNSString(v13);
    [v4 addAuditReason:{@"sbIsActive and mesaEnabled are YES; calculating totalInterval as half (%@) or MIN_TOTAL_INTERVAL_HOMESCREEN_MESA (%@), whichever is greater", v12, v14}];
  }

  return v8;
}

- (BOOL)updateIdleTimerSettingsForThermalBlockedMode:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor isThermalBlocked];
  if (v5)
  {
    [v4 totalInterval];
    v7 = v6;
    [v4 warnInterval];
    v9 = v8;
    v10 = BSFloatEqualToFloat();
    v11 = 30.0;
    if (v10)
    {
      v12 = 20.0;
    }

    else
    {
      if (v7 <= 30.0)
      {
        v11 = v7;
      }

      v13 = v11 + -10.0;
      if (v9 <= v11 + -10.0)
      {
        v13 = v9;
      }

      if (v13 >= 2.0)
      {
        v12 = v13;
      }

      else
      {
        v12 = 2.0;
      }
    }

    [v4 setTotalInterval:v11];
    [v4 setWarnInterval:v12];
    if ([v4 timerMode] == 3)
    {
      [v4 setTimerMode:1];
    }

    v14 = SBIdleTimerIntervalToNSString(30.0);
    v15 = SBIdleTimerIntervalToNSString(10.0);
    [v4 addAuditReason:{@"thermally blocked - applying max total interval: %@ and max warn interval: %@ thermal block limits", v14, v15}];
  }

  return v5;
}

- (BOOL)updateIdleTimerSettingsForBatterySaverMode:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor isBatterySaverModeActive];
  if (v5)
  {
    [v4 totalInterval];
    v7 = v6;
    [v4 warnInterval];
    v9 = 30.0;
    if (v7 <= 30.0)
    {
      v9 = v7;
    }

    v10 = v9;
    v11 = v10;
    v12 = v10 + -10.0;
    if (v8 > v12)
    {
      v8 = v12;
    }

    v13 = v8;
    if (v13 >= 2.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 2.0;
    }

    [v4 setTotalInterval:v11];
    v15 = v14;
    [v4 setWarnInterval:v15];
    [v4 addAuditReason:@"isBatterySaverModeActive is YES"];
    if (BSFloatLessThanFloat())
    {
      [v4 setWarnInterval:v11 * 0.666666667];
      v16 = SBIdleTimerIntervalToNSString(v15);
      v17 = SBIdleTimerIntervalToNSString(10.0);
      [v4 addAuditReason:{@"isBatterySaverModeActive is YES and warnInterval (%@) lt MAX_WARNING_INTERVAL_DELTA_BATTERY_SAVER (%@)", v16, v17}];
    }
  }

  return v5;
}

- (BOOL)updateIdleTimerSettingsForFaceDown:(id)a3
{
  v4 = a3;
  if (-[SBIdleTimerGlobalStateMonitor isFaceDownOnTable](self->_stateMonitor, "isFaceDownOnTable") && ([v4 totalInterval], (BSFloatEqualToFloat() & 1) == 0))
  {
    [v4 totalInterval];
    [v4 setTotalInterval:v6 * 0.25];
    [v4 addAuditReason:{@"facedown on a table - reducing total time by the factor %g", 0x3FD0000000000000}];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateIdleTimerSettingsWarnInterval:(id)a3 totalInterval:(double)a4
{
  v6 = a3;
  [v6 totalInterval];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    if (BSFloatLessThanOrEqualToFloat())
    {
      [v6 setWarnInterval:?];
      [v6 setQuickUnwarnInterval:a4 * 0.666666667 + a4 * 0.666666667 * 0.1];
      v5 = SBIdleTimerIntervalToNSString(a4);
      [v6 addAuditReason:{@"totalInterval (%@) lte 30; applying factor (%g) to calculate warnInterval", v5, 0x3FE5555555555555}];
    }

    else
    {
      [v6 setWarnInterval:?];
      [v6 setQuickUnwarnInterval:a4 + -20.0 + 2.0];
      v5 = SBIdleTimerIntervalToNSString(a4);
      [v6 addAuditReason:{@"totalInterval (%@) lte 30; subtracting delta (%g) to calculate warnInterval", v5, 0x4034000000000000}];
    }
  }
}

- (BOOL)updateIdleTimerSettingsForWarnInterval:(id)a3
{
  v4 = a3;
  if ([v4 shouldWarn] && (objc_msgSend(v4, "warnInterval"), BSFloatGreaterThanOrEqualToFloat()))
  {
    [v4 totalInterval];
    [(SBIdleTimerDescriptorFactory *)self _updateIdleTimerSettingsWarnInterval:v4 totalInterval:?];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBBacklightController)_backlightController
{
  override_backlightController = self->_override_backlightController;
  if (override_backlightController)
  {
    v3 = override_backlightController;
  }

  else
  {
    v3 = +[SBBacklightController sharedInstance];
  }

  return v3;
}

- (BOOL)_isIdleDurationForever:(double)a3
{
  if (a3 == 1.79769313e308)
  {
    return 1;
  }

  else
  {
    return BSFloatLessThanFloat();
  }
}

@end