@interface SMAnomalyAlertManager
+ (unint64_t)carPlayNotificationTypeForAnomalyManagerAlertOrdinal:(int64_t)a3;
- (SMAnomalyAlertManager)initWithQueue:(id)a3 anomalyState:(id)a4 defaultsManager:(id)a5 carPlayAlertManager:(id)a6 toneDelay:(double)a7;
- (id)_alarmForAlertOrdinal:(int64_t)a3;
- (id)_alarmIdentifierForAlertOrdinal:(int64_t)a3;
- (id)_scheduleAlertForAlertOrdinal:(int64_t)a3;
- (id)_targetAlertDateForAlertOrdinal:(int64_t)a3;
- (id)_tlAlertConfigurationForAlertOrdinal:(int64_t)a3;
- (void)_executeAlertForAlertOrdinal:(int64_t)a3;
- (void)_invalidateTimer:(id)a3;
- (void)_playTLAlertForAlertOrdinal:(int64_t)a3;
- (void)_resume;
- (void)_scheduleSecondAlert;
- (void)_scheduleThirdAlert;
- (void)_start;
- (void)_stop;
- (void)_stopTLAlert;
- (void)_updateActivityWithState:(id)a3;
- (void)resume;
- (void)start;
- (void)stop;
@end

@implementation SMAnomalyAlertManager

- (SMAnomalyAlertManager)initWithQueue:(id)a3 anomalyState:(id)a4 defaultsManager:(id)a5 carPlayAlertManager:(id)a6 toneDelay:(double)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v13 && ([v13 isPromptState] & 1) != 0)
  {
    v27.receiver = self;
    v27.super_class = SMAnomalyAlertManager;
    v16 = [(SMAnomalyAlertManager *)&v27 init];
    v17 = v16;
    if (v16)
    {
      v16->_queue = v12;
      v18 = [v13 copy];
      anomalyState = v17->_anomalyState;
      v17->_anomalyState = v18;

      objc_storeStrong(&v17->_defaultsManager, a5);
      v17->_toneDelay = a7;
      secondAlertAlarm = v17->_secondAlertAlarm;
      v17->_secondAlertAlarm = 0;

      thirdAlertAlarm = v17->_thirdAlertAlarm;
      v17->_thirdAlertAlarm = 0;

      objc_storeStrong(&v17->_carPlayAlertManager, a6);
    }

    self = v17;
    v22 = self;
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
      v33 = v13;
      v34 = 2048;
      v35 = a7;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %s, init invalid param, anomalyState, %@, toneDelay, %f", buf, 0x2Au);
    }

    v22 = 0;
  }

  return v22;
}

- (void)start
{
  v3 = [(SMAnomalyAlertManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SMAnomalyAlertManager_start__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_start
{
  [(SMAnomalyAlertManager *)self _executeAlertForAlertOrdinal:1];
  [(SMAnomalyAlertManager *)self _scheduleSecondAlert];

  [(SMAnomalyAlertManager *)self _scheduleThirdAlert];
}

- (void)resume
{
  v3 = [(SMAnomalyAlertManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SMAnomalyAlertManager_resume__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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
    v8 = [v3 stringFromDate];
    v9 = [v4 stringFromDate];
    v16 = 138413058;
    v17 = v7;
    v18 = 2080;
    v19 = "[SMAnomalyAlertManager _resume]";
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@, %s, resume, second alarm target, %@, third alarm target, %@", &v16, 0x2Au);
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSinceDate:v3];
  v12 = v11;

  if (v12 < 10.0)
  {
    [(SMAnomalyAlertManager *)self _scheduleSecondAlert];
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  [v13 timeIntervalSinceDate:v4];
  v15 = v14;

  if (v15 < 10.0)
  {
    [(SMAnomalyAlertManager *)self _scheduleThirdAlert];
  }
}

- (void)stop
{
  v3 = [(SMAnomalyAlertManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SMAnomalyAlertManager_stop__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_stop
{
  [(SMAnomalyAlertManager *)self _stopTLAlert];
  v3 = [(SMAnomalyAlertManager *)self secondAlertAlarm];
  [(SMAnomalyAlertManager *)self _invalidateTimer:v3];

  v4 = [(SMAnomalyAlertManager *)self thirdAlertAlarm];
  [(SMAnomalyAlertManager *)self _invalidateTimer:v4];

  [(SMAnomalyAlertManager *)self setSecondAlertAlarm:0];

  [(SMAnomalyAlertManager *)self setThirdAlertAlarm:0];
}

- (void)_scheduleSecondAlert
{
  v3 = [(SMAnomalyAlertManager *)self secondAlertAlarm];
  [(SMAnomalyAlertManager *)self _invalidateTimer:v3];

  v4 = [(SMAnomalyAlertManager *)self _scheduleAlertForAlertOrdinal:2];
  [(SMAnomalyAlertManager *)self setSecondAlertAlarm:v4];
}

- (void)_scheduleThirdAlert
{
  v3 = [(SMAnomalyAlertManager *)self thirdAlertAlarm];
  [(SMAnomalyAlertManager *)self _invalidateTimer:v3];

  v4 = [(SMAnomalyAlertManager *)self _scheduleAlertForAlertOrdinal:3];
  [(SMAnomalyAlertManager *)self setThirdAlertAlarm:v4];
}

- (id)_scheduleAlertForAlertOrdinal:(int64_t)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = [(SMAnomalyAlertManager *)self _targetAlertDateForAlertOrdinal:?];
  v6 = [(SMAnomalyAlertManager *)self _alarmIdentifierForAlertOrdinal:a3];
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 stringFromDate];
    *buf = 138413314;
    v35 = v9;
    v36 = 2080;
    v37 = "[SMAnomalyAlertManager _scheduleAlertForAlertOrdinal:]";
    v38 = 2048;
    v39 = a3;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@, %s, ordinal, %lu, fireDate, %@, alarmIdentifier, %@", buf, 0x34u);
  }

  if (v5 && v6)
  {
    objc_initWeak(&location, self);
    v11 = [RTXPCTimerAlarm alloc];
    v12 = [(SMAnomalyAlertManager *)self queue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __55__SMAnomalyAlertManager__scheduleAlertForAlertOrdinal___block_invoke;
    v31[3] = &unk_2788CE758;
    objc_copyWeak(v32, &location);
    v32[1] = a3;
    v31[4] = self;
    v13 = [(RTXPCTimerAlarm *)v11 initWithIdentifier:v6 queue:v12 handler:v31];

    v30 = 0;
    [(RTXPCTimerAlarm *)v13 fireWithDate:v5 error:&v30];
    v14 = v30;
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [(RTXPCTimerAlarm *)v13 identifier];
      v19 = [v5 stringFromDate];
      *buf = 138413058;
      v35 = v17;
      v36 = 2080;
      v37 = "[SMAnomalyAlertManager _scheduleAlertForAlertOrdinal:]";
      v38 = 2112;
      v39 = v18;
      v40 = 2112;
      v41 = v19;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "%@, %s, %@, timer set with end date, %@", buf, 0x2Au);
    }

    if (v14)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [(RTXPCTimerAlarm *)v13 identifier];
        v29 = [v14 localizedDescription];
        *buf = 138413058;
        v35 = v27;
        v36 = 2080;
        v37 = "[SMAnomalyAlertManager _scheduleAlertForAlertOrdinal:]";
        v38 = 2112;
        v39 = v28;
        v40 = 2112;
        v41 = v29;
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
      v39 = a3;
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

- (void)_executeAlertForAlertOrdinal:(int64_t)a3
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
    v25 = a3;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@, %s, executing alert for ordinal, %lu", buf, 0x20u);
  }

  v8 = [(SMAnomalyAlertManager *)self anomalyState];
  [(SMAnomalyAlertManager *)self _updateActivityWithState:v8];

  v9 = [objc_opt_class() carPlayNotificationTypeForAnomalyManagerAlertOrdinal:a3];
  v10 = [(SMAnomalyAlertManager *)self anomalyState];
  v11 = [v10 configuration];
  if ([v11 sessionType] == 1)
  {
    v12 = [(SMAnomalyAlertManager *)self anomalyState];
    v13 = [v12 isTimerExtensionValid:*MEMORY[0x277D4AE00]];

    if ((v13 & 1) == 0)
    {
      v9 = 4;
    }
  }

  else
  {
  }

  v14 = [(SMAnomalyAlertManager *)self carPlayAlertManager];
  v15 = [(SMAnomalyAlertManager *)self anomalyState];
  [v14 postCarPlayNotificationForNotificationType:v9 sessionManagerState:v15 handler:0];

  if ([MEMORY[0x277D4AA60] hasActivity])
  {
    [(SMAnomalyAlertManager *)self toneDelay];
    v17 = dispatch_time(0, (v16 * 1000000000.0));
    v18 = [(SMAnomalyAlertManager *)self queue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__SMAnomalyAlertManager__executeAlertForAlertOrdinal___block_invoke;
    v19[3] = &unk_2788C52E8;
    v19[4] = self;
    v19[5] = a3;
    dispatch_after(v17, v18, v19);
  }
}

- (void)_updateActivityWithState:(id)a3
{
  v4 = a3;
  v5 = [(SMAnomalyAlertManager *)self defaultsManager];
  v6 = [v5 objectForKey:@"RTDefaultsSessionManagerUnsupportedDeviceSeparationKey"];
  v7 = [v6 BOOLValue];

  v8 = [(SMAnomalyAlertManager *)self defaultsManager];
  v9 = [v8 objectForKey:@"RTDefaultsSessionManagerSeparatedLowPowerModeKey"];
  v10 = [v9 BOOLValue];

  v11 = [objc_alloc(MEMORY[0x277D4AB20]) initWithUnsupportedDeviceSeparationState:v7 userDisabledConnectivity:0 separatedLPMConnectivityWarningState:v10];
  [MEMORY[0x277D4AA60] updateActivityWithState:v4 localState:v11 shouldNotify:1];
}

- (void)_playTLAlertForAlertOrdinal:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(SMAnomalyAlertManager *)self _stopTLAlert];
  v5 = [(SMAnomalyAlertManager *)self _tlAlertConfigurationForAlertOrdinal:a3];
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
  v8 = [(SMAnomalyAlertManager *)self tlAlert];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SMAnomalyAlertManager__playTLAlertForAlertOrdinal___block_invoke;
  v9[3] = &unk_2788CFB48;
  objc_copyWeak(&v10, buf);
  [v8 playWithCompletionHandler:v9];

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
  v3 = [(SMAnomalyAlertManager *)self tlAlert];

  if (v3)
  {
    v4 = [(SMAnomalyAlertManager *)self tlAlert];
    [v4 stop];

    [(SMAnomalyAlertManager *)self setTlAlert:0];
  }
}

- (id)_tlAlertConfigurationForAlertOrdinal:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:18];
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v6 = 1;
      v7 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level3_urgent_ML.plist";
      v8 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level3_urgent_ML.wav";
      goto LABEL_9;
    }

    if (a3 == 2)
    {
      v6 = 1;
      v7 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level2_urgent_ML.plist";
      v8 = @"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level2_urgent_ML.wav";
      goto LABEL_9;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    if (a3 == 1)
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

  v11 = [(SMAnomalyAlertManager *)self defaultsManager];
  v12 = [v11 objectForKey:@"RTDefaultsSessionManagerShouldIgnoreRingerSwitchKey"];

  if (v12)
  {
    [v5 setShouldIgnoreRingerSwitch:{objc_msgSend(v12, "BOOLValue")}];
  }

  a3 = v5;

LABEL_13:

  return a3;
}

- (void)_invalidateTimer:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [v3 identifier];
        v6 = 136315394;
        v7 = "[SMAnomalyAlertManager _invalidateTimer:]";
        v8 = 2112;
        v9 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, invalidating timer with identifier, %@", &v6, 0x16u);
      }
    }

    [v3 invalidate];
  }
}

- (id)_alarmForAlertOrdinal:(int64_t)a3
{
  if (a3 == 3)
  {
    v3 = [(SMAnomalyAlertManager *)self thirdAlertAlarm];
  }

  else if (a3 == 2)
  {
    v3 = [(SMAnomalyAlertManager *)self secondAlertAlarm];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_alarmIdentifierForAlertOrdinal:(int64_t)a3
{
  v3 = @"com.apple.routined.safetyMonitor.sessionManager.smAnomalyAlertManager.thirdAlarm";
  if (a3 != 3)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return @"com.apple.routined.safetyMonitor.sessionManager.smAnomalyAlertManager.secondAlarm";
  }

  else
  {
    return v3;
  }
}

- (id)_targetAlertDateForAlertOrdinal:(int64_t)a3
{
  if (a3 < 2)
  {
    v5 = [(SMAnomalyAlertManager *)self anomalyState];
    v3 = [v5 sessionStateTransitionDate];
  }

  else
  {
    if (a3 == 3)
    {
      v4 = MEMORY[0x277CBEAA8];
      v5 = [(SMAnomalyAlertManager *)self anomalyState];
      v6 = [v5 sessionStateTransitionDate];
      v7 = 600.0;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_9;
      }

      v4 = MEMORY[0x277CBEAA8];
      v5 = [(SMAnomalyAlertManager *)self anomalyState];
      v6 = [v5 sessionStateTransitionDate];
      v7 = 300.0;
    }

    v3 = [v4 dateWithTimeInterval:v6 sinceDate:v7];
  }

LABEL_9:

  return v3;
}

+ (unint64_t)carPlayNotificationTypeForAnomalyManagerAlertOrdinal:(int64_t)a3
{
  if (a3 > 3)
  {
    return 2;
  }

  else
  {
    return qword_230B01680[a3];
  }
}

@end