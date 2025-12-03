@interface SMAnomalyAlertManager
+ (unint64_t)carPlayNotificationTypeForAnomalyManagerAlertOrdinal:(int64_t)ordinal;
- (SMAnomalyAlertManager)initWithQueue:(id)queue anomalyState:(id)state defaultsManager:(id)manager carPlayAlertManager:(id)alertManager toneDelay:(double)delay;
- (id)_alarmForAlertOrdinal:(int64_t)ordinal;
- (id)_alarmIdentifierForAlertOrdinal:(int64_t)ordinal;
- (id)_scheduleAlertForAlertOrdinal:(int64_t)ordinal;
- (id)_targetAlertDateForAlertOrdinal:(int64_t)ordinal;
- (id)_tlAlertConfigurationForAlertOrdinal:(int64_t)ordinal;
- (void)_executeAlertForAlertOrdinal:(int64_t)ordinal;
- (void)_invalidateTimer:(id)timer;
- (void)_playTLAlertForAlertOrdinal:(int64_t)ordinal;
- (void)_resume;
- (void)_scheduleSecondAlert;
- (void)_scheduleThirdAlert;
- (void)_start;
- (void)_stop;
- (void)_stopTLAlert;
- (void)_updateActivityWithState:(id)state;
- (void)resume;
- (void)start;
- (void)stop;
@end

@implementation SMAnomalyAlertManager

- (SMAnomalyAlertManager)initWithQueue:(id)queue anomalyState:(id)state defaultsManager:(id)manager carPlayAlertManager:(id)alertManager toneDelay:(double)delay
{
  v36 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  stateCopy = state;
  managerCopy = manager;
  alertManagerCopy = alertManager;
  if (stateCopy && ([stateCopy isPromptState] & 1) != 0)
  {
    v27.receiver = self;
    v27.super_class = SMAnomalyAlertManager;
    v16 = [(SMAnomalyAlertManager *)&v27 init];
    v17 = v16;
    if (v16)
    {
      v16->_queue = queueCopy;
      v18 = [stateCopy copy];
      anomalyState = v17->_anomalyState;
      v17->_anomalyState = v18;

      objc_storeStrong(&v17->_defaultsManager, manager);
      v17->_toneDelay = delay;
      secondAlertAlarm = v17->_secondAlertAlarm;
      v17->_secondAlertAlarm = 0;

      thirdAlertAlarm = v17->_thirdAlertAlarm;
      v17->_thirdAlertAlarm = 0;

      objc_storeStrong(&v17->_carPlayAlertManager, alertManager);
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138413058;
      v29 = v26;
      v30 = 2080;
      v31 = "[SMAnomalyAlertManager initWithQueue:anomalyState:defaultsManager:carPlayAlertManager:toneDelay:]";
      v32 = 2112;
      v33 = stateCopy;
      v34 = 2048;
      delayCopy = delay;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %s, init invalid param, anomalyState, %@, toneDelay, %f", buf, 0x2Au);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)start
{
  queue = [(SMAnomalyAlertManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SMAnomalyAlertManager_start__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_start
{
  [(SMAnomalyAlertManager *)self _executeAlertForAlertOrdinal:1];
  [(SMAnomalyAlertManager *)self _scheduleSecondAlert];

  [(SMAnomalyAlertManager *)self _scheduleThirdAlert];
}

- (void)resume
{
  queue = [(SMAnomalyAlertManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SMAnomalyAlertManager_resume__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_resume
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(SMAnomalyAlertManager *)self _targetAlertDateForAlertOrdinal:2];
  v4 = [(SMAnomalyAlertManager *)self _targetAlertDateForAlertOrdinal:3];
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    stringFromDate = [v3 stringFromDate];
    stringFromDate2 = [v4 stringFromDate];
    v16 = 138413058;
    v17 = v7;
    v18 = 2080;
    v19 = "[SMAnomalyAlertManager _resume]";
    v20 = 2112;
    v21 = stringFromDate;
    v22 = 2112;
    v23 = stringFromDate2;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@, %s, resume, second alarm target, %@, third alarm target, %@", &v16, 0x2Au);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:v3];
  v12 = v11;

  if (v12 < 10.0)
  {
    [(SMAnomalyAlertManager *)self _scheduleSecondAlert];
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:v4];
  v15 = v14;

  if (v15 < 10.0)
  {
    [(SMAnomalyAlertManager *)self _scheduleThirdAlert];
  }
}

- (void)stop
{
  queue = [(SMAnomalyAlertManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SMAnomalyAlertManager_stop__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stop
{
  [(SMAnomalyAlertManager *)self _stopTLAlert];
  secondAlertAlarm = [(SMAnomalyAlertManager *)self secondAlertAlarm];
  [(SMAnomalyAlertManager *)self _invalidateTimer:secondAlertAlarm];

  thirdAlertAlarm = [(SMAnomalyAlertManager *)self thirdAlertAlarm];
  [(SMAnomalyAlertManager *)self _invalidateTimer:thirdAlertAlarm];

  [(SMAnomalyAlertManager *)self setSecondAlertAlarm:0];

  [(SMAnomalyAlertManager *)self setThirdAlertAlarm:0];
}

- (void)_scheduleSecondAlert
{
  secondAlertAlarm = [(SMAnomalyAlertManager *)self secondAlertAlarm];
  [(SMAnomalyAlertManager *)self _invalidateTimer:secondAlertAlarm];

  v4 = [(SMAnomalyAlertManager *)self _scheduleAlertForAlertOrdinal:2];
  [(SMAnomalyAlertManager *)self setSecondAlertAlarm:v4];
}

- (void)_scheduleThirdAlert
{
  thirdAlertAlarm = [(SMAnomalyAlertManager *)self thirdAlertAlarm];
  [(SMAnomalyAlertManager *)self _invalidateTimer:thirdAlertAlarm];

  v4 = [(SMAnomalyAlertManager *)self _scheduleAlertForAlertOrdinal:3];
  [(SMAnomalyAlertManager *)self setThirdAlertAlarm:v4];
}

- (id)_scheduleAlertForAlertOrdinal:(int64_t)ordinal
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = [(SMAnomalyAlertManager *)self _targetAlertDateForAlertOrdinal:?];
  v6 = [(SMAnomalyAlertManager *)self _alarmIdentifierForAlertOrdinal:ordinal];
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    stringFromDate = [v5 stringFromDate];
    *buf = 138413314;
    v35 = v9;
    v36 = 2080;
    v37 = "[SMAnomalyAlertManager _scheduleAlertForAlertOrdinal:]";
    v38 = 2048;
    ordinalCopy2 = ordinal;
    v40 = 2112;
    v41 = stringFromDate;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@, %s, ordinal, %lu, fireDate, %@, alarmIdentifier, %@", buf, 0x34u);
  }

  if (v5 && v6)
  {
    objc_initWeak(&location, self);
    v11 = [RTXPCTimerAlarm alloc];
    queue = [(SMAnomalyAlertManager *)self queue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __55__SMAnomalyAlertManager__scheduleAlertForAlertOrdinal___block_invoke;
    v31[3] = &unk_2788CE758;
    objc_copyWeak(v32, &location);
    v32[1] = ordinal;
    v31[4] = self;
    v13 = [(RTXPCTimerAlarm *)v11 initWithIdentifier:v6 queue:queue handler:v31];

    v30 = 0;
    [(RTXPCTimerAlarm *)v13 fireWithDate:v5 error:&v30];
    v14 = v30;
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      identifier = [(RTXPCTimerAlarm *)v13 identifier];
      stringFromDate2 = [v5 stringFromDate];
      *buf = 138413058;
      v35 = v17;
      v36 = 2080;
      v37 = "[SMAnomalyAlertManager _scheduleAlertForAlertOrdinal:]";
      v38 = 2112;
      ordinalCopy2 = identifier;
      v40 = 2112;
      v41 = stringFromDate2;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "%@, %s, %@, timer set with end date, %@", buf, 0x2Au);
    }

    if (v14)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        identifier2 = [(RTXPCTimerAlarm *)v13 identifier];
        localizedDescription = [v14 localizedDescription];
        *buf = 138413058;
        v35 = v27;
        v36 = 2080;
        v37 = "[SMAnomalyAlertManager _scheduleAlertForAlertOrdinal:]";
        v38 = 2112;
        ordinalCopy2 = identifier2;
        v40 = 2112;
        v41 = localizedDescription;
        _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "%@, %s, %@, fireWithDate hit error: %@", buf, 0x2Au);
      }

      v21 = 0;
    }

    else
    {
      v21 = v13;
    }

    objc_destroyWeak(v32);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138412802;
      v35 = v25;
      v36 = 2080;
      v37 = "[SMAnomalyAlertManager _scheduleAlertForAlertOrdinal:]";
      v38 = 2048;
      ordinalCopy2 = ordinal;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@, %s, ordinal, %lu, invalid fireDate or alarmIdentifier", buf, 0x20u);
    }

    v21 = 0;
  }

  return v21;
}

void __55__SMAnomalyAlertManager__scheduleAlertForAlertOrdinal___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _alarmForAlertOrdinal:*(a1 + 48)];
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 identifier];
    v8 = 138412802;
    v9 = v6;
    v10 = 2080;
    v11 = "[SMAnomalyAlertManager _scheduleAlertForAlertOrdinal:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@, %s, %@, expired", &v8, 0x20u);
  }

  [WeakRetained _invalidateTimer:v3];
  [WeakRetained _executeAlertForAlertOrdinal:*(a1 + 48)];
}

- (void)_executeAlertForAlertOrdinal:(int64_t)ordinal
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412802;
    v21 = v7;
    v22 = 2080;
    v23 = "[SMAnomalyAlertManager _executeAlertForAlertOrdinal:]";
    v24 = 2048;
    ordinalCopy = ordinal;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@, %s, executing alert for ordinal, %lu", buf, 0x20u);
  }

  anomalyState = [(SMAnomalyAlertManager *)self anomalyState];
  [(SMAnomalyAlertManager *)self _updateActivityWithState:anomalyState];

  v9 = [objc_opt_class() carPlayNotificationTypeForAnomalyManagerAlertOrdinal:ordinal];
  anomalyState2 = [(SMAnomalyAlertManager *)self anomalyState];
  configuration = [anomalyState2 configuration];
  if ([configuration sessionType] == 1)
  {
    anomalyState3 = [(SMAnomalyAlertManager *)self anomalyState];
    v13 = [anomalyState3 isTimerExtensionValid:*MEMORY[0x277D4AE00]];

    if ((v13 & 1) == 0)
    {
      v9 = 4;
    }
  }

  else
  {
  }

  carPlayAlertManager = [(SMAnomalyAlertManager *)self carPlayAlertManager];
  anomalyState4 = [(SMAnomalyAlertManager *)self anomalyState];
  [carPlayAlertManager postCarPlayNotificationForNotificationType:v9 sessionManagerState:anomalyState4 handler:0];

  if ([MEMORY[0x277D4AA60] hasActivity])
  {
    [(SMAnomalyAlertManager *)self toneDelay];
    v17 = dispatch_time(0, (v16 * 1000000000.0));
    queue = [(SMAnomalyAlertManager *)self queue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__SMAnomalyAlertManager__executeAlertForAlertOrdinal___block_invoke;
    v19[3] = &unk_2788C52E8;
    v19[4] = self;
    v19[5] = ordinal;
    dispatch_after(v17, queue, v19);
  }
}

- (void)_updateActivityWithState:(id)state
{
  stateCopy = state;
  defaultsManager = [(SMAnomalyAlertManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerUnsupportedDeviceSeparationKey"];
  bOOLValue = [v6 BOOLValue];

  defaultsManager2 = [(SMAnomalyAlertManager *)self defaultsManager];
  v9 = [defaultsManager2 objectForKey:@"RTDefaultsSessionManagerSeparatedLowPowerModeKey"];
  bOOLValue2 = [v9 BOOLValue];

  v11 = [objc_alloc(MEMORY[0x277D4AB20]) initWithUnsupportedDeviceSeparationState:bOOLValue userDisabledConnectivity:0 separatedLPMConnectivityWarningState:bOOLValue2];
  [MEMORY[0x277D4AA60] updateActivityWithState:stateCopy localState:v11 shouldNotify:1];
}

- (void)_playTLAlertForAlertOrdinal:(int64_t)ordinal
{
  v15 = *MEMORY[0x277D85DE8];
  [(SMAnomalyAlertManager *)self _stopTLAlert];
  v5 = [(SMAnomalyAlertManager *)self _tlAlertConfigurationForAlertOrdinal:ordinal];
  v6 = [MEMORY[0x277D71F50] alertWithConfiguration:v5];
  [(SMAnomalyAlertManager *)self setTlAlert:v6];

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SMAnomalyAlertManager _playTLAlertForAlertOrdinal:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%s,playing alertConfiguration,%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  tlAlert = [(SMAnomalyAlertManager *)self tlAlert];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SMAnomalyAlertManager__playTLAlertForAlertOrdinal___block_invoke;
  v9[3] = &unk_2788CFB48;
  objc_copyWeak(&v10, buf);
  [tlAlert playWithCompletionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __53__SMAnomalyAlertManager__playTLAlertForAlertOrdinal___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromTLAlertPlaybackCompletionType();
    v10 = 138413058;
    v11 = v8;
    v12 = 2080;
    v13 = "[SMAnomalyAlertManager _playTLAlertForAlertOrdinal:]_block_invoke";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@, %s, play completion called, playbackCompletionType, %@, error, %@", &v10, 0x2Au);
  }

  [WeakRetained setTlAlert:0];
}

- (void)_stopTLAlert
{
  tlAlert = [(SMAnomalyAlertManager *)self tlAlert];

  if (tlAlert)
  {
    tlAlert2 = [(SMAnomalyAlertManager *)self tlAlert];
    [tlAlert2 stop];

    [(SMAnomalyAlertManager *)self setTlAlert:0];
  }
}

- (id)_tlAlertConfigurationForAlertOrdinal:(int64_t)ordinal
{
  v5 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:18];
  if (ordinal > 1)
  {
    if (ordinal == 3)
    {
      v6 = 1;
      v7 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level3_urgent_ML.plist";
      v8 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level3_urgent_ML.wav";
      goto LABEL_9;
    }

    if (ordinal == 2)
    {
      v6 = 1;
      v7 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level2_urgent_ML.plist";
      v8 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level2_urgent_ML.wav";
      goto LABEL_9;
    }
  }

  else
  {
    if (!ordinal)
    {
      goto LABEL_13;
    }

    if (ordinal == 1)
    {
      v6 = 0;
      v7 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level1_urgent_ML.plist";
      v8 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level1_urgent_ML.wav";
LABEL_9:
      v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
      [v5 setExternalToneFileURL:v9];

      v10 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      [v5 setExternalVibrationPatternFileURL:v10];

      [v5 setShouldIgnoreRingerSwitch:v6];
    }
  }

  defaultsManager = [(SMAnomalyAlertManager *)self defaultsManager];
  v12 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerShouldIgnoreRingerSwitchKey"];

  if (v12)
  {
    [v5 setShouldIgnoreRingerSwitch:{objc_msgSend(v12, "BOOLValue")}];
  }

  ordinal = v5;

LABEL_13:

  return ordinal;
}

- (void)_invalidateTimer:(id)timer
{
  v10 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  if (timerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        identifier = [timerCopy identifier];
        v6 = 136315394;
        v7 = "[SMAnomalyAlertManager _invalidateTimer:]";
        v8 = 2112;
        v9 = identifier;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, invalidating timer with identifier, %@", &v6, 0x16u);
      }
    }

    [timerCopy invalidate];
  }
}

- (id)_alarmForAlertOrdinal:(int64_t)ordinal
{
  if (ordinal == 3)
  {
    thirdAlertAlarm = [(SMAnomalyAlertManager *)self thirdAlertAlarm];
  }

  else if (ordinal == 2)
  {
    thirdAlertAlarm = [(SMAnomalyAlertManager *)self secondAlertAlarm];
  }

  else
  {
    thirdAlertAlarm = 0;
  }

  return thirdAlertAlarm;
}

- (id)_alarmIdentifierForAlertOrdinal:(int64_t)ordinal
{
  v3 = @"com.apple.routined.safetyMonitor.sessionManager.smAnomalyAlertManager.thirdAlarm";
  if (ordinal != 3)
  {
    v3 = 0;
  }

  if (ordinal == 2)
  {
    return @"com.apple.routined.safetyMonitor.sessionManager.smAnomalyAlertManager.secondAlarm";
  }

  else
  {
    return v3;
  }
}

- (id)_targetAlertDateForAlertOrdinal:(int64_t)ordinal
{
  if (ordinal < 2)
  {
    anomalyState = [(SMAnomalyAlertManager *)self anomalyState];
    sessionStateTransitionDate = [anomalyState sessionStateTransitionDate];
  }

  else
  {
    if (ordinal == 3)
    {
      v4 = MEMORY[0x277CBEAA8];
      anomalyState = [(SMAnomalyAlertManager *)self anomalyState];
      sessionStateTransitionDate2 = [anomalyState sessionStateTransitionDate];
      v7 = 600.0;
    }

    else
    {
      if (ordinal != 2)
      {
        goto LABEL_9;
      }

      v4 = MEMORY[0x277CBEAA8];
      anomalyState = [(SMAnomalyAlertManager *)self anomalyState];
      sessionStateTransitionDate2 = [anomalyState sessionStateTransitionDate];
      v7 = 300.0;
    }

    sessionStateTransitionDate = [v4 dateWithTimeInterval:sessionStateTransitionDate2 sinceDate:v7];
  }

LABEL_9:

  return sessionStateTransitionDate;
}

+ (unint64_t)carPlayNotificationTypeForAnomalyManagerAlertOrdinal:(int64_t)ordinal
{
  if (ordinal > 3)
  {
    return 2;
  }

  else
  {
    return qword_230B01680[ordinal];
  }
}

@end