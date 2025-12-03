@interface SBIdleTimerDescriptorFactory
+ (id)disabledIdleTimerDescriptor;
- (BOOL)_isIdleDurationForever:(double)forever;
- (BOOL)_shouldUseAttentionSensor;
- (BOOL)sanitizeDescriptorForLockscreenDefaults:(id)defaults;
- (BOOL)sanitizeSettingsAfterInitialSetup:(id)setup;
- (BOOL)sanitizeSettingsAfterSetup:(id)setup duration:(int64_t)duration;
- (BOOL)sanitizeTotalDuration:(id)duration;
- (BOOL)sanitizeWarnInterval:(id)interval;
- (BOOL)updateIdleTimerSettingsForActiveClientConfiguration:(id)configuration;
- (BOOL)updateIdleTimerSettingsForAutoLockTimeout:(id)timeout;
- (BOOL)updateIdleTimerSettingsForBatterySaverMode:(id)mode;
- (BOOL)updateIdleTimerSettingsForDefaultWarnInterval:(id)interval;
- (BOOL)updateIdleTimerSettingsForDuration:(int64_t)duration descriptor:(id)descriptor;
- (BOOL)updateIdleTimerSettingsForFaceDown:(id)down;
- (BOOL)updateIdleTimerSettingsForPowerDefaults:(id)defaults;
- (BOOL)updateIdleTimerSettingsForPrototypeSettingsDisable:(id)disable;
- (BOOL)updateIdleTimerSettingsForPrototypeSettingsOverride:(id)override;
- (BOOL)updateIdleTimerSettingsForSecurityDefaults:(id)defaults;
- (BOOL)updateIdleTimerSettingsForTelephony:(id)telephony;
- (BOOL)updateIdleTimerSettingsForThermalBlockedMode:(id)mode;
- (BOOL)updateIdleTimerSettingsForUnlockedWithMesa:(id)mesa;
- (BOOL)updateIdleTimerSettingsForWarnInterval:(id)interval;
- (BOOL)updateIdleTimerSettingsWithCustomTimeouts:(id)timeouts fromBehavior:(id)behavior;
- (SBBacklightController)_backlightController;
- (SBConferenceManager)_conferenceManager;
- (SBIdleTimerDescriptorFactory)initWithGlobalStateMonitor:(id)monitor;
- (SBIdleTimerSettings)_idleTimerPrototypeSettings;
- (SBLockScreenManager)_lockScreenManager;
- (SBMainWorkspace)_mainWorkspace;
- (SBPrototypeController)_prototypeController;
- (SBTelephonyManager)_telephonyManager;
- (SBUIBiometricResource)_biometricResource;
- (id)idleTimerDescriptorForBehavior:(id)behavior;
- (void)_updateIdleTimerSettingsWarnInterval:(id)interval totalInterval:(double)totalInterval;
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
    mEMORY[0x277D67C98] = override_biometricResource;
  }

  else
  {
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  }

  return mEMORY[0x277D67C98];
}

- (BOOL)_shouldUseAttentionSensor
{
  _prototypeController = [(SBIdleTimerDescriptorFactory *)self _prototypeController];
  rootSettings = [_prototypeController rootSettings];
  attentionAwarenessSettings = [rootSettings attentionAwarenessSettings];

  if ([attentionAwarenessSettings shouldUseAttentionSensor])
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

- (SBIdleTimerDescriptorFactory)initWithGlobalStateMonitor:(id)monitor
{
  monitorCopy = monitor;
  v12.receiver = self;
  v12.super_class = SBIdleTimerDescriptorFactory;
  v6 = [(SBIdleTimerDescriptorFactory *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stateMonitor, monitor);
    v8 = +[SBDefaults localDefaults];
    idleTimerDefaults = [v8 idleTimerDefaults];
    override_idleTimerDefaults = v7->_override_idleTimerDefaults;
    v7->_override_idleTimerDefaults = idleTimerDefaults;
  }

  return v7;
}

- (id)idleTimerDescriptorForBehavior:(id)behavior
{
  v30 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  if ([behaviorCopy idleTimerMode] == 3)
  {
    disabledIdleTimerDescriptor = [objc_opt_class() disabledIdleTimerDescriptor];
    v6 = [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForThermalBlockedMode:disabledIdleTimerDescriptor];
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
      *&v28[14] = behaviorCopy;
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
      *&v28[14] = behaviorCopy;
      v9 = *&v28[4];
      v10 = "idleTimerDescriptorForBehavior: <%{public}@: 0x%p> returning disabled idle timer descriptor because behavior provider proposed SBFIdleTimerModeDisabled";
    }

    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v10, v28, 0x16u);
  }

  else
  {
    v11 = objc_opt_class();
    v12 = behaviorCopy;
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

    idleTimerDuration = [v7 idleTimerDuration];
    idleTimerMode = [v7 idleTimerMode];
    v19 = [v7 idleWarnMode]== 2 && idleTimerMode != 3;
    disabledIdleTimerDescriptor = [[SBIdleTimerDescriptor alloc] initWithTimerMode:idleTimerMode warnInterval:0.0 totalInterval:0.0];
    if (idleTimerDuration == 3)
    {
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForDuration:3 descriptor:disabledIdleTimerDescriptor];
    }

    else
    {
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForSecurityDefaults:disabledIdleTimerDescriptor];
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForAutoLockTimeout:disabledIdleTimerDescriptor];
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForTelephony:disabledIdleTimerDescriptor];
      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForPrototypeSettingsDisable:disabledIdleTimerDescriptor];
      [(SBIdleTimerDescriptorFactory *)self sanitizeSettingsAfterInitialSetup:disabledIdleTimerDescriptor];
      if ((idleTimerDuration & 0xFFFFFFFFFFFFFFFELL) == 0x10)
      {
        if (idleTimerDuration == 17)
        {
          _idleTimerPrototypeSettings = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
          [_idleTimerPrototypeSettings unlockedIdleTimerCap];
          v22 = v21;

          [(SBIdleTimerDescriptor *)disabledIdleTimerDescriptor totalInterval];
          if (v22 < v23)
          {
            v23 = v22;
          }

          [(SBIdleTimerDescriptor *)disabledIdleTimerDescriptor setTotalInterval:v23, *v28, *&v28[16], v29];
        }

        else
        {
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForPowerDefaults:disabledIdleTimerDescriptor];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForDefaultWarnInterval:disabledIdleTimerDescriptor];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsWithCustomTimeouts:disabledIdleTimerDescriptor fromBehavior:v7];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForUnlockedWithMesa:disabledIdleTimerDescriptor];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForPrototypeSettingsOverride:disabledIdleTimerDescriptor];
        }

        if (![(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForBatterySaverMode:disabledIdleTimerDescriptor, *v28, *&v28[8]])
        {
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForFaceDown:disabledIdleTimerDescriptor];
          [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForWarnInterval:disabledIdleTimerDescriptor];
        }
      }

      else
      {
        [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForDuration:idleTimerDuration descriptor:disabledIdleTimerDescriptor];
        [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsWithCustomTimeouts:disabledIdleTimerDescriptor fromBehavior:v7];
        [(SBIdleTimerDescriptorFactory *)self sanitizeDescriptorForLockscreenDefaults:disabledIdleTimerDescriptor];
        [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForDefaultWarnInterval:disabledIdleTimerDescriptor];
      }

      [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForThermalBlockedMode:disabledIdleTimerDescriptor, *v28, *&v28[8]];
      if ([(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForActiveClientConfiguration:disabledIdleTimerDescriptor])
      {
        [(SBIdleTimerDescriptorFactory *)self updateIdleTimerSettingsForWarnInterval:disabledIdleTimerDescriptor];
      }

      if (!v19)
      {
        [(SBIdleTimerDescriptor *)disabledIdleTimerDescriptor setWarnInterval:1.79769313e308];
        [(SBIdleTimerDescriptor *)disabledIdleTimerDescriptor setQuickUnwarnInterval:1.79769313e308];
        [(SBIdleTimerDescriptor *)disabledIdleTimerDescriptor addAuditReason:@"should not warn"];
      }

      [(SBIdleTimerDescriptorFactory *)self sanitizeSettingsAfterSetup:disabledIdleTimerDescriptor duration:idleTimerDuration];
      if ((idleTimerDuration & 0xFFFFFFFFFFFFFFFELL) == 0x10 && [(SBIdleTimerDescriptorFactory *)self _shouldUseAttentionSensor]&& [(SBIdleTimerDescriptor *)disabledIdleTimerDescriptor timerMode]!= 3)
      {
        _prototypeController = [(SBIdleTimerDescriptorFactory *)self _prototypeController];
        rootSettings = [_prototypeController rootSettings];
        attentionAwarenessSettings = [rootSettings attentionAwarenessSettings];

        [attentionAwarenessSettings sampleInterval];
        [(SBIdleTimerDescriptor *)disabledIdleTimerDescriptor setSampleInterval:?];
        [(SBIdleTimerDescriptor *)disabledIdleTimerDescriptor addAuditReason:@"should use attention awareness"];
      }
    }
  }

LABEL_43:

  return disabledIdleTimerDescriptor;
}

- (BOOL)updateIdleTimerSettingsForSecurityDefaults:(id)defaults
{
  defaultsCopy = defaults;
  dontLockEver = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor dontLockEver];
  if (dontLockEver)
  {
    [defaultsCopy setTotalInterval:1.79769313e308];
    [defaultsCopy setWarnInterval:1.79769313e308];
    [defaultsCopy setTimerMode:3];
    [defaultsCopy addAuditReason:@"securityDefaults dontLockEver is YES"];
  }

  return dontLockEver;
}

- (BOOL)updateIdleTimerSettingsForPowerDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if ([(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor dontDimOrLockOnAC]&& [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor isOnACPower])
  {
    [defaultsCopy setTotalInterval:1.79769313e308];
    [defaultsCopy setWarnInterval:1.79769313e308];
    [defaultsCopy setTimerMode:3];
    [defaultsCopy addAuditReason:@"idleTimerDefaults dontDimOrLockWhileConnectedToPower is YES and device is on AC"];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)updateIdleTimerSettingsForAutoLockTimeout:(id)timeout
{
  timeoutCopy = timeout;
  autoLockTimeout = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor autoLockTimeout];
  v7 = autoLockTimeout;
  if (autoLockTimeout)
  {
    [autoLockTimeout floatValue];
    v9 = v8;
    if (BSFloatLessThanOrEqualToFloat())
    {
      [timeoutCopy setTotalInterval:v9];
      v10 = @"MCFeatureAutoLockTime (%@) is lte MAX (%@)";
    }

    else
    {
      [timeoutCopy setTotalInterval:1.79769313e308];
      [timeoutCopy setWarnInterval:1.79769313e308];
      v10 = @"MCFeatureAutoLockTime (%@) is gt MAX (%@)";
    }

    currentDevice = SBIdleTimerIntervalToNSString(v9);
    v13 = SBIdleTimerIntervalToNSString(3600.0);
    [timeoutCopy addAuditReason:{v10, currentDevice, v13}];

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

    [timeoutCopy setTotalInterval:v12];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v15 = 60.0;
    if (userInterfaceIdiom == 1)
    {
      v15 = 300.0;
    }

    [timeoutCopy setTotalInterval:v15];
  }

  v16 = __sb__runningInSpringBoard();
  v17 = v16;
  if (v16)
  {
    v18 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v18 = [currentDevice userInterfaceIdiom] == 1;
  }

  v19 = 60.0;
  if (v18)
  {
    v19 = 300.0;
  }

  v20 = SBIdleTimerIntervalToNSString(v19);
  [timeoutCopy addAuditReason:{@"ERROR: MCFeatureAutoLockTime is <nil>; setting totalInterval to DEFAULT: %@", v20}];

  if ((v17 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:

  return 1;
}

- (BOOL)updateIdleTimerSettingsForActiveClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  aggregatedClientConfiguration = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor aggregatedClientConfiguration];
  v6 = aggregatedClientConfiguration;
  if (aggregatedClientConfiguration)
  {
    disableTimerSetting = [aggregatedClientConfiguration disableTimerSetting];
    maxExpirationTimeoutSettings = [v6 maxExpirationTimeoutSettings];
    minExpirationTimeoutSettings = [v6 minExpirationTimeoutSettings];
    v10 = disableTimerSetting != 0;
    if (!disableTimerSetting || ([configurationCopy setTimerMode:3], objc_msgSend(configurationCopy, "setTotalInterval:", 1.79769313e308), objc_msgSend(configurationCopy, "setWarnInterval:", 1.79769313e308), objc_msgSend(configurationCopy, "addAuditReason:", @"Active client configuration: [%@]", v6), maxExpirationTimeoutSettings) && (v11 = objc_msgSend(maxExpirationTimeoutSettings, "highestPrecedence"), v11 >= objc_msgSend(disableTimerSetting, "precedence")))
    {
      resolvedExpirationTimeoutRange = [v6 resolvedExpirationTimeoutRange];
      [resolvedExpirationTimeoutRange lowerTimeout];
      v14 = v13;
      [resolvedExpirationTimeoutRange upperTimeout];
      v16 = v15;
      [configurationCopy totalInterval];
      if (minExpirationTimeoutSettings && BSFloatLessThanFloat())
      {
        if (BSFloatLessThanOrEqualToFloat())
        {
          [configurationCopy setTotalInterval:v14];
          v17 = @"MinExpirationTimeoutFromService (%@) is lte MAX_TOTAL_INTERVAL (%@)";
        }

        else
        {
          [configurationCopy setTotalInterval:1.79769313e308];
          [configurationCopy setWarnInterval:1.79769313e308];
          v17 = @"MinExpirationTimeoutFromService (%@) is gt MAX_TOTAL_INTERVAL (%@)";
        }

        v18 = SBIdleTimerIntervalToNSString(v14);
        v19 = SBIdleTimerIntervalToNSString(3600.0);
        [configurationCopy addAuditReason:{v17, v18, v19}];

        v10 = 1;
      }

      [configurationCopy totalInterval];
      if (maxExpirationTimeoutSettings)
      {
        v21 = v20;
        if (BSFloatGreaterThanFloat())
        {
          [configurationCopy setTotalInterval:v16];
          if ([configurationCopy timerMode] == 3)
          {
            [configurationCopy setWarnInterval:v21 * 0.666666667];
            [configurationCopy setTimerMode:1];
          }

          v22 = SBIdleTimerIntervalToNSString(v14);
          v23 = SBIdleTimerIntervalToNSString(3600.0);
          [configurationCopy addAuditReason:{@"MaxExpirationTimeoutFromService", v22, v23}];

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

- (BOOL)updateIdleTimerSettingsForDefaultWarnInterval:(id)interval
{
  intervalCopy = interval;
  [intervalCopy totalInterval];
  v6 = v5;
  v7 = BSFloatGreaterThanFloat();
  if (v7)
  {
    [(SBIdleTimerDescriptorFactory *)self _updateIdleTimerSettingsWarnInterval:intervalCopy totalInterval:v6];
  }

  return v7;
}

- (BOOL)updateIdleTimerSettingsForPrototypeSettingsDisable:(id)disable
{
  disableCopy = disable;
  _idleTimerPrototypeSettings = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
  disableIdleTimer = [_idleTimerPrototypeSettings disableIdleTimer];

  if (disableIdleTimer)
  {
    [disableCopy setTotalInterval:1.79769313e308];
    [disableCopy setWarnInterval:1.79769313e308];
    [disableCopy setTimerMode:3];
    [disableCopy addAuditReason:@"SBIdleTimerSettings disableIdleTimer is YES"];
  }

  return disableIdleTimer;
}

- (BOOL)updateIdleTimerSettingsForPrototypeSettingsOverride:(id)override
{
  overrideCopy = override;
  _idleTimerPrototypeSettings = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
  overrideIdleTimer = [_idleTimerPrototypeSettings overrideIdleTimer];

  if (overrideIdleTimer)
  {
    _idleTimerPrototypeSettings2 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
    [_idleTimerPrototypeSettings2 durationInterval];
    [overrideCopy setTotalInterval:?];

    _idleTimerPrototypeSettings3 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
    [_idleTimerPrototypeSettings3 warnInterval];
    [overrideCopy setWarnInterval:?];

    _idleTimerPrototypeSettings4 = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
    [_idleTimerPrototypeSettings4 samplingStartBeforeFirstTimeout];
    [overrideCopy setSamplingStartBeforeFirstTimeout:?];

    [overrideCopy addAuditReason:@"SBIdleTimerSettings override is YES"];
  }

  return overrideIdleTimer;
}

- (BOOL)updateIdleTimerSettingsForTelephony:(id)telephony
{
  telephonyCopy = telephony;
  _telephonyManager = [(SBIdleTimerDescriptorFactory *)self _telephonyManager];
  _conferenceManager = [(SBIdleTimerDescriptorFactory *)self _conferenceManager];
  if ([_telephonyManager isInEmergencyCallbackMode])
  {
    [telephonyCopy setTotalInterval:1.79769313e308];
    [telephonyCopy setWarnInterval:1.79769313e308];
    [telephonyCopy setTimerMode:3];
    [telephonyCopy addAuditReason:@"SBTelephonyManager is in emergency call"];
    v7 = 1;
  }

  else
  {
    inCallUsingSpeakerOrReceiver = [_telephonyManager inCallUsingSpeakerOrReceiver];
    activeFaceTimeCallExists = [_conferenceManager activeFaceTimeCallExists];
    _lockScreenManager = [(SBIdleTimerDescriptorFactory *)self _lockScreenManager];
    v11 = _lockScreenManager;
    if (_lockScreenManager)
    {
      v7 = 0;
      if (![_lockScreenManager isUILocked] && ((inCallUsingSpeakerOrReceiver | activeFaceTimeCallExists) & 1) != 0)
      {
        [telephonyCopy setTotalInterval:1.79769313e308];
        if (inCallUsingSpeakerOrReceiver)
        {
          [telephonyCopy addAuditReason:@"normal call"];
        }

        if (activeFaceTimeCallExists)
        {
          [telephonyCopy addAuditReason:@"FaceTime call"];
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

- (BOOL)sanitizeSettingsAfterInitialSetup:(id)setup
{
  setupCopy = setup;
  [setupCopy totalInterval];
  v5 = v4;
  [setupCopy warnInterval];
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

      [setupCopy setTotalInterval:v9];
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];
      v12 = 60.0;
      if (userInterfaceIdiom == 1)
      {
        v12 = 300.0;
      }

      [setupCopy setTotalInterval:v12];
    }

    if (__sb__runningInSpringBoard())
    {
      v13 = SBFEffectiveDeviceClass();
      v14 = 40.0;
      if (v13 == 2)
      {
        v14 = 280.0;
      }

      [setupCopy setWarnInterval:v14];
    }

    else
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
      v17 = 40.0;
      if (userInterfaceIdiom2 == 1)
      {
        v17 = 280.0;
      }

      [setupCopy setWarnInterval:v17];
    }

    if ([setupCopy timerMode] != 3)
    {
      [setupCopy setTimerMode:1];
    }

    v18 = SBIdleTimerIntervalToNSString(v5);
    v19 = SBIdleTimerIntervalToNSString(v7);
    [setupCopy addAuditReason:{@"totalInterval (%@) and/or warnInterval (%@) is not sane", v18, v19}];

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)sanitizeTotalDuration:(id)duration
{
  durationCopy = duration;
  [durationCopy totalInterval];
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

      [durationCopy setTotalInterval:v8];
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];
      v11 = 60.0;
      if (userInterfaceIdiom == 1)
      {
        v11 = 300.0;
      }

      [durationCopy setTotalInterval:v11];
    }

    v12 = SBIdleTimerIntervalToNSString(v5);
    [durationCopy addAuditReason:{@"totalInterval (%@) is float equals to 0", v12}];
  }

  return IsZero;
}

- (BOOL)sanitizeWarnInterval:(id)interval
{
  intervalCopy = interval;
  [intervalCopy warnInterval];
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

      [intervalCopy setWarnInterval:v8];
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];
      v11 = 40.0;
      if (userInterfaceIdiom == 1)
      {
        v11 = 280.0;
      }

      [intervalCopy setWarnInterval:v11];
    }

    v12 = SBIdleTimerIntervalToNSString(v5);
    [intervalCopy addAuditReason:{@"warnInterval (%@) is float equals to 0", v12}];
  }

  return IsZero;
}

- (BOOL)sanitizeSettingsAfterSetup:(id)setup duration:(int64_t)duration
{
  setupCopy = setup;
  [setupCopy addAuditReason:@"after setup"];
  [setupCopy totalInterval];
  if (BSFloatEqualToFloat())
  {
    [setupCopy warnInterval];
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

        [setupCopy setWarnInterval:v7];
      }

      else
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];
        v10 = 40.0;
        if (userInterfaceIdiom == 1)
        {
          v10 = 280.0;
        }

        [setupCopy setWarnInterval:v10];
      }

      [setupCopy addAuditReason:{@"after setup, setting default warn interval"}];
    }
  }

  [setupCopy warnInterval];
  v12 = v11;
  if ([setupCopy shouldWarn])
  {
    if ([setupCopy timerMode] == 2)
    {
      [setupCopy setTimerMode:1];
      [setupCopy addAuditReason:{@"after setup, timer mode was: Manual"}];
    }
  }

  else if (BSFloatLessThanOrEqualToFloat())
  {
    [setupCopy setWarnInterval:1.79769313e308];
    v13 = SBIdleTimerIntervalToNSString(v12);
    [setupCopy addAuditReason:{@"after setup, warnInterval was %@", v13}];
  }

  shouldWarn = [setupCopy shouldWarn];
  [setupCopy totalInterval];
  if (shouldWarn)
  {
    [setupCopy warnInterval];
  }

  if (duration == 18 || BSFloatEqualToFloat())
  {
    [setupCopy setTotalInterval:1.79769313e308];
    [setupCopy addAuditReason:{@"after setup, should not expire"}];
  }

  if (([setupCopy shouldWarn] & 1) == 0 && BSFloatEqualToFloat())
  {
    [setupCopy setTimerMode:3];
    [setupCopy addAuditReason:{@"after setup, shouldWarn is NO and expireInterval is <never>"}];
  }

  [setupCopy warnInterval];
  if (BSFloatEqualToFloat())
  {
    [setupCopy totalInterval];
    if (BSFloatEqualToFloat())
    {
      [setupCopy setTimerMode:3];
      [setupCopy addAuditReason:{@"after setup, warnInterval is <never> and totalInterval is <never>"}];
    }
  }

  return 0;
}

- (BOOL)sanitizeDescriptorForLockscreenDefaults:(id)defaults
{
  defaultsCopy = defaults;
  [defaultsCopy totalInterval];
  v6 = v5;
  v7 = BSFloatGreaterThanOrEqualToFloat();
  if (v7)
  {
    [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor minimumLockscreenIdleTime];
    if (v6 >= v8)
    {
      v8 = v6;
    }

    [defaultsCopy setTotalInterval:v8];
    v9 = SBIdleTimerIntervalToNSString(v6);
    [defaultsCopy addAuditReason:{@"totalInterval (%@) is gte 0", v9}];
  }

  return v7;
}

- (BOOL)updateIdleTimerSettingsForDuration:(int64_t)duration descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy timerMode] == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    switch(duration)
    {
      case 0:
      case 1:
        v8 = 6.0;
        goto LABEL_19;
      case 2:
        v8 = 2.0;
        goto LABEL_19;
      case 3:
        accidentalActivationMitigationSessionCoordinator = [SBApp accidentalActivationMitigationSessionCoordinator];
        currentSession = [accidentalActivationMitigationSessionCoordinator currentSession];
        [currentSession duration];
        [descriptorCopy setTotalInterval:?];

        [descriptorCopy setWarnInterval:0.01];
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
        _idleTimerPrototypeSettings = [(SBIdleTimerDescriptorFactory *)self _idleTimerPrototypeSettings];
        [_idleTimerPrototypeSettings unlockedIdleTimerCap];
        v13 = v12;

        [descriptorCopy totalInterval];
        if (v13 < v8)
        {
          v8 = v13;
        }

LABEL_19:
        [descriptorCopy setTotalInterval:v8];
        goto LABEL_20;
      case 18:
        [descriptorCopy setTotalInterval:1.79769313e308];
        [descriptorCopy setTimerMode:3];
LABEL_20:
        v14 = NSStringFromIdleTimerDuration();
        [descriptorCopy addAuditReason:{@"duration is %@", v14}];

        v7 = 1;
        break;
      default:
        break;
    }
  }

  return v7;
}

- (BOOL)updateIdleTimerSettingsWithCustomTimeouts:(id)timeouts fromBehavior:(id)behavior
{
  timeoutsCopy = timeouts;
  behaviorCopy = behavior;
  [behaviorCopy customIdleExpirationTimeout];
  v9 = v8;
  IsZero = BSFloatIsZero();
  if ((IsZero & 1) == 0)
  {
    if ([(SBIdleTimerDescriptorFactory *)self _isIdleDurationForever:v9])
    {
      [timeoutsCopy setTotalInterval:1.79769313e308];
      v11 = SBIdleTimerIntervalToNSString(v9);
      [timeoutsCopy addAuditReason:{@"customIdleExpirationTimeout (%@) lt 0", v11}];
    }

    else
    {
      [timeoutsCopy setTotalInterval:v9];
      if ([behaviorCopy idleWarnMode] == 1)
      {
        [timeoutsCopy setWarnInterval:0.0];
        v12 = @"Setting totalInterval to custom customIdleExpirationTimeout gte 0";
LABEL_15:
        [timeoutsCopy addAuditReason:v12];
        goto LABEL_16;
      }

      [timeoutsCopy addAuditReason:@"Setting totalInterval to custom customIdleExpirationTimeout gte 0"];
    }

    [behaviorCopy customIdleWarningTimeout];
    v14 = v13;
    if ((BSFloatIsZero() & 1) == 0 && (BSFloatGreaterThanFloat() & 1) == 0)
    {
      if ([(SBIdleTimerDescriptorFactory *)self _isIdleDurationForever:v14])
      {
        [timeoutsCopy setWarnInterval:1.79769313e308];
        v15 = SBIdleTimerIntervalToNSString(v14);
        [timeoutsCopy addAuditReason:{@"customIdleWarningTimeout (%@) lt 0", v15}];
      }

      else
      {
        [timeoutsCopy setWarnInterval:v14];
        [timeoutsCopy addAuditReason:@"Setting warnInterval to custom customIdleWarningTimeout"];
      }

      [timeoutsCopy warnInterval];
      if (v16 == 1.79769313e308)
      {
        [timeoutsCopy totalInterval];
        if (v17 == 1.79769313e308)
        {
          [timeoutsCopy setTimerMode:3];
          v12 = @"warnInterval is <never> and totalInterval is <never>";
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:

  return IsZero ^ 1;
}

- (BOOL)updateIdleTimerSettingsForUnlockedWithMesa:(id)mesa
{
  mesaCopy = mesa;
  _mainWorkspace = [(SBIdleTimerDescriptorFactory *)self _mainWorkspace];
  isSpringBoardActive = [_mainWorkspace isSpringBoardActive];

  _biometricResource = [(SBIdleTimerDescriptorFactory *)self _biometricResource];
  LODWORD(_mainWorkspace) = [_biometricResource hasBiometricAuthenticationCapabilityEnabled];

  [mesaCopy totalInterval];
  v8 = (BSFloatEqualToFloat() ^ 1) & isSpringBoardActive & _mainWorkspace;
  if (v8 == 1)
  {
    [mesaCopy totalInterval];
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

    [mesaCopy setTotalInterval:v11];
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
    [mesaCopy addAuditReason:{@"sbIsActive and mesaEnabled are YES; calculating totalInterval as half (%@) or MIN_TOTAL_INTERVAL_HOMESCREEN_MESA (%@), whichever is greater", v12, v14}];
  }

  return v8;
}

- (BOOL)updateIdleTimerSettingsForThermalBlockedMode:(id)mode
{
  modeCopy = mode;
  isThermalBlocked = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor isThermalBlocked];
  if (isThermalBlocked)
  {
    [modeCopy totalInterval];
    v7 = v6;
    [modeCopy warnInterval];
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

    [modeCopy setTotalInterval:v11];
    [modeCopy setWarnInterval:v12];
    if ([modeCopy timerMode] == 3)
    {
      [modeCopy setTimerMode:1];
    }

    v14 = SBIdleTimerIntervalToNSString(30.0);
    v15 = SBIdleTimerIntervalToNSString(10.0);
    [modeCopy addAuditReason:{@"thermally blocked - applying max total interval: %@ and max warn interval: %@ thermal block limits", v14, v15}];
  }

  return isThermalBlocked;
}

- (BOOL)updateIdleTimerSettingsForBatterySaverMode:(id)mode
{
  modeCopy = mode;
  isBatterySaverModeActive = [(SBIdleTimerGlobalStateMonitor *)self->_stateMonitor isBatterySaverModeActive];
  if (isBatterySaverModeActive)
  {
    [modeCopy totalInterval];
    v7 = v6;
    [modeCopy warnInterval];
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

    [modeCopy setTotalInterval:v11];
    v15 = v14;
    [modeCopy setWarnInterval:v15];
    [modeCopy addAuditReason:@"isBatterySaverModeActive is YES"];
    if (BSFloatLessThanFloat())
    {
      [modeCopy setWarnInterval:v11 * 0.666666667];
      v16 = SBIdleTimerIntervalToNSString(v15);
      v17 = SBIdleTimerIntervalToNSString(10.0);
      [modeCopy addAuditReason:{@"isBatterySaverModeActive is YES and warnInterval (%@) lt MAX_WARNING_INTERVAL_DELTA_BATTERY_SAVER (%@)", v16, v17}];
    }
  }

  return isBatterySaverModeActive;
}

- (BOOL)updateIdleTimerSettingsForFaceDown:(id)down
{
  downCopy = down;
  if (-[SBIdleTimerGlobalStateMonitor isFaceDownOnTable](self->_stateMonitor, "isFaceDownOnTable") && ([downCopy totalInterval], (BSFloatEqualToFloat() & 1) == 0))
  {
    [downCopy totalInterval];
    [downCopy setTotalInterval:v6 * 0.25];
    [downCopy addAuditReason:{@"facedown on a table - reducing total time by the factor %g", 0x3FD0000000000000}];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateIdleTimerSettingsWarnInterval:(id)interval totalInterval:(double)totalInterval
{
  intervalCopy = interval;
  [intervalCopy totalInterval];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    if (BSFloatLessThanOrEqualToFloat())
    {
      [intervalCopy setWarnInterval:?];
      [intervalCopy setQuickUnwarnInterval:totalInterval * 0.666666667 + totalInterval * 0.666666667 * 0.1];
      v5 = SBIdleTimerIntervalToNSString(totalInterval);
      [intervalCopy addAuditReason:{@"totalInterval (%@) lte 30; applying factor (%g) to calculate warnInterval", v5, 0x3FE5555555555555}];
    }

    else
    {
      [intervalCopy setWarnInterval:?];
      [intervalCopy setQuickUnwarnInterval:totalInterval + -20.0 + 2.0];
      v5 = SBIdleTimerIntervalToNSString(totalInterval);
      [intervalCopy addAuditReason:{@"totalInterval (%@) lte 30; subtracting delta (%g) to calculate warnInterval", v5, 0x4034000000000000}];
    }
  }
}

- (BOOL)updateIdleTimerSettingsForWarnInterval:(id)interval
{
  intervalCopy = interval;
  if ([intervalCopy shouldWarn] && (objc_msgSend(intervalCopy, "warnInterval"), BSFloatGreaterThanOrEqualToFloat()))
  {
    [intervalCopy totalInterval];
    [(SBIdleTimerDescriptorFactory *)self _updateIdleTimerSettingsWarnInterval:intervalCopy totalInterval:?];
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

- (BOOL)_isIdleDurationForever:(double)forever
{
  if (forever == 1.79769313e308)
  {
    return 1;
  }

  else
  {
    return BSFloatLessThanFloat();
  }
}

@end