@interface SBSystemActionAnalyticsTracker
+ (id)sharedTracker;
- (SBSystemActionAnalyticsTracker)init;
- (id)_openCameraActionIdentifier;
- (uint64_t)trackPressDownForLatencyMeasurement:(uint64_t)result;
- (void)_logSignificantTimeChanged;
- (void)_sendEventToPowerLog:(id)log payload:(id)payload;
- (void)trackInteractionWithType:(void *)type forAction:(void *)action suppressionStatus:;
- (void)trackPerformedAction:(double)action executionTime:;
- (void)trackPocketStateQueryWithExecutionTime:(double)time error:;
- (void)trackPressUpForLatencyMeasurement:(int)measurement cancelled:(int)cancelled longPressTriggered:(void *)triggered selectedActionIdentifier:;
- (void)trackSelectedActionChanged:(void *)changed;
- (void)trackSuppressionStatusUpdate:(uint64_t)update;
@end

@implementation SBSystemActionAnalyticsTracker

+ (id)sharedTracker
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBSystemActionAnalyticsTracker_sharedTracker__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (sharedTracker_onceToken != -1)
  {
    dispatch_once(&sharedTracker_onceToken, block);
  }

  v1 = sharedTracker_tracker;

  return v1;
}

void __47__SBSystemActionAnalyticsTracker_sharedTracker__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedTracker_tracker;
  sharedTracker_tracker = v1;
}

- (SBSystemActionAnalyticsTracker)init
{
  v9.receiver = self;
  v9.super_class = SBSystemActionAnalyticsTracker;
  v2 = [(SBSystemActionAnalyticsTracker *)&v9 init];
  if (v2)
  {
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    powerLogSendQueue = v2->_powerLogSendQueue;
    v2->_powerLogSendQueue = SerialWithQoS;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v7 = [defaultCenter addObserverForName:@"SBSignificantTimeChangedNotification" object:0 queue:mainQueue usingBlock:&__block_literal_global_319];
  }

  return v2;
}

void __38__SBSystemActionAnalyticsTracker_init__block_invoke()
{
  v0 = +[SBSystemActionAnalyticsTracker sharedTracker];
  [v0 _logSignificantTimeChanged];
}

- (void)trackInteractionWithType:(void *)type forAction:(void *)action suppressionStatus:
{
  typeCopy = type;
  actionCopy = action;
  if (self)
  {
    if (!typeCopy)
    {
      [SBSystemActionAnalyticsTracker trackInteractionWithType:? forAction:? suppressionStatus:?];
    }

    analyticsData = [typeCopy analyticsData];
    v8 = analyticsData;
    v10 = v9;
    if (analyticsData)
    {
      v11 = analyticsData;
    }

    else
    {
      v11 = @"null";
    }

    objc_storeStrong((self + 16), v11);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"null";
    }

    objc_storeStrong((self + 24), v12);
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = *(self + 32);
    *(self + 32) = v13;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v16 = NSStringFromSBSAnalyticsActionButtonInteractionType();
    [dictionary setObject:v16 forKeyedSubscript:@"type"];

    [dictionary setObject:*(self + 16) forKeyedSubscript:@"action"];
    [dictionary setObject:*(self + 24) forKeyedSubscript:@"param_value"];
    v17 = [dictionary copy];
    v18 = NSStringFromAnalyticsEventType();
    [self _sendEventToPowerLog:v18 payload:v17];

    listener = [(SBHomeScreenConfigurationServer *)actionCopy listener];
    SBAddSuppressionMetricsIntoEventPayload(dictionary, listener, 0);

    mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
    [mEMORY[0x277D65DD0] emitEvent:61 withPayload:dictionary];
  }
}

- (void)trackPerformedAction:(double)action executionTime:
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    analyticsData = [v5 analyticsData];
    v9 = v8;
    mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
    v11 = @"null";
    v15[0] = @"action";
    v15[1] = @"param_value";
    if (analyticsData)
    {
      v12 = analyticsData;
    }

    else
    {
      v12 = @"null";
    }

    if (v9)
    {
      v11 = v9;
    }

    v16[0] = v12;
    v16[1] = v11;
    v15[2] = @"execution_time";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:action];
    v16[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    [mEMORY[0x277D65DD0] emitEvent:65 withPayload:v14];
  }
}

- (void)trackSuppressionStatusUpdate:(uint64_t)update
{
  v3 = a2;
  v4 = v3;
  if (update)
  {
    if (!v3)
    {
      [SBSystemActionAnalyticsTracker trackSuppressionStatusUpdate:?];
    }

    v5 = v3;
    [(SBSystemActionAnalyticsTracker *)update trackSuppressionStatusUpdate:v3];
    v4 = v5;
  }
}

- (void)trackSelectedActionChanged:(void *)changed
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (changed)
  {
    analyticsData = [v3 analyticsData];
    v7 = analyticsData;
    v8 = v6;
    v9 = @"null";
    v14[0] = @"action";
    v14[1] = @"param_value";
    if (analyticsData)
    {
      v10 = analyticsData;
    }

    else
    {
      v10 = @"null";
    }

    if (v6)
    {
      v9 = v6;
    }

    v15[0] = v10;
    v15[1] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
    [mEMORY[0x277D65DD0] emitEvent:63 withPayload:v11];

    v13 = NSStringFromAnalyticsEventType();
    [changed _sendEventToPowerLog:v13 payload:v11];
  }
}

id __122__SBSystemActionAnalyticsTracker_trackPressUpForLatencyMeasurement_cancelled_longPressTriggered_selectedActionIdentifier___block_invoke(uint64_t a1)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"deliveryLatency";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v11[0] = v2;
  v10[1] = @"pressDuration";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v11[1] = v3;
  v10[2] = @"canceled";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v11[2] = v4;
  v10[3] = @"suppressionState";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v11[3] = v5;
  v10[4] = @"longPressTriggered";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 57)];
  v11[4] = v6;
  v10[5] = @"cameraActionSelected";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 58)];
  v11[5] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

- (void)_logSignificantTimeChanged
{
  v13[2] = *MEMORY[0x277D85DE8];
  systemActionControl = [SBApp systemActionControl];
  selectedActionAnalyticsData = [(SBSystemActionControl *)systemActionControl selectedActionAnalyticsData];
  v6 = v5;

  if (selectedActionAnalyticsData)
  {
    v7 = selectedActionAnalyticsData;
  }

  else
  {
    v7 = @"null";
  }

  v12[0] = @"action";
  v12[1] = @"param_value";
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"null";
  }

  v13[0] = v7;
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  [mEMORY[0x277D65DD0] emitEvent:62 withPayload:v9];

  v11 = NSStringFromAnalyticsEventType();
  [(SBSystemActionAnalyticsTracker *)self _sendEventToPowerLog:v11 payload:v9];
}

- (void)_sendEventToPowerLog:(id)log payload:(id)payload
{
  logCopy = log;
  payloadCopy = payload;
  powerLogSendQueue = self->_powerLogSendQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__SBSystemActionAnalyticsTracker__sendEventToPowerLog_payload___block_invoke;
  v11[3] = &unk_2783A92D8;
  v12 = logCopy;
  v13 = payloadCopy;
  v9 = payloadCopy;
  v10 = logCopy;
  dispatch_async(powerLogSendQueue, v11);
}

uint64_t __63__SBSystemActionAnalyticsTracker__sendEventToPowerLog_payload___block_invoke()
{
  result = PLShouldLogRegisteredEvent();
  if (result)
  {

    return PLLogRegisteredEvent();
  }

  return result;
}

- (id)_openCameraActionIdentifier
{
  if (_openCameraActionIdentifier___onceToken != -1)
  {
    [SBSystemActionAnalyticsTracker _openCameraActionIdentifier];
  }

  v3 = _openCameraActionIdentifier___openCameraActionIdentifier;

  return v3;
}

void __61__SBSystemActionAnalyticsTracker__openCameraActionIdentifier__block_invoke()
{
  v0 = [@"com.apple.springboard" stringByAppendingFormat:@".%@", *MEMORY[0x277D66960]];
  v1 = _openCameraActionIdentifier___openCameraActionIdentifier;
  _openCameraActionIdentifier___openCameraActionIdentifier = v0;
}

- (void)trackPocketStateQueryWithExecutionTime:(double)time error:
{
  v12 = a2;
  if (self)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [dictionary setObject:v6 forKeyedSubscript:@"execution_time"];

    if (v12)
    {
      v7 = MEMORY[0x277CCACA8];
      domain = [v12 domain];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "code")}];
      v10 = [v7 stringWithFormat:@"%@: %@", domain, v9];
      [dictionary setObject:v10 forKeyedSubscript:@"error"];
    }

    mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
    [mEMORY[0x277D65DD0] emitEvent:66 withPayload:dictionary];
  }
}

- (uint64_t)trackPressDownForLatencyMeasurement:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    *(result + 40) = a2;
    result = BSAbsoluteMachTimeNow();
    *(v2 + 48) = v3;
  }

  return result;
}

- (void)trackPressUpForLatencyMeasurement:(int)measurement cancelled:(int)cancelled longPressTriggered:(void *)triggered selectedActionIdentifier:
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  triggeredCopy = triggered;
  if (self && (_os_feature_enabled_impl() & 1) == 0)
  {
    BSAbsoluteMachTimeNow();
    v12 = v11;
    v13 = self[6];
    v14 = self + 5;
    v15 = v13 - self[5];
    workspace = [(SBCameraActivationManager *)v9 workspace];
    _openCameraActionIdentifier = [self _openCameraActionIdentifier];
    v18 = [triggeredCopy containsString:_openCameraActionIdentifier];

    if (v15 > 0.0)
    {
      v19 = v12 - v13;
      AnalyticsSendEventLazy();
      v20 = SBLogButtonsAction();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219264;
        v22 = v15;
        v23 = 2048;
        v24 = v19;
        v25 = 1024;
        measurementCopy = measurement;
        v27 = 2048;
        v28 = workspace;
        v29 = 1024;
        cancelledCopy = cancelled;
        v31 = 1024;
        v32 = v18;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Action Button press event delivery latency analytics: %f, duration: %f, cancelled: %{BOOL}d, suppression state: %lu, longPressTriggered: %{BOOL}d, cameraActionSelected: %{BOOL}d", buf, 0x32u);
      }
    }

    *v14 = 0;
    v14[1] = 0;
  }
}

- (void)trackInteractionWithType:(const char *)a1 forAction:suppressionStatus:.cold.1(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"action != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v9 = @"SBSystemActionAnalyticsTracker.m";
    v10 = 1024;
    v11 = 80;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)trackSuppressionStatusUpdate:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"status != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionAnalyticsTracker.m";
    v9 = 1024;
    v10 = 113;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)trackSuppressionStatusUpdate:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  v18 = *(a1 + 8);
  objc_storeStrong(v4, a2);
  if (v18)
  {
    if (*(a1 + 16))
    {
      if (*(a1 + 32))
      {
        v5 = [(SBCameraActivationManager *)a2 workspace]== 1;
        if (((v5 ^ ([(SBCameraActivationManager *)v18 workspace]!= 1)) & 1) == 0)
        {
          v6 = [MEMORY[0x277CBEAA8] now];
          [v6 timeIntervalSinceDate:*(a1 + 32)];
          v8 = v7;

          if (v8 <= 0.5)
          {
            v9 = [MEMORY[0x277CBEB38] dictionary];
            [v9 setObject:*(a1 + 16) forKeyedSubscript:@"action"];
            [v9 setObject:*(a1 + 24) forKeyedSubscript:@"param_value"];
            v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
            [v9 setObject:v10 forKeyedSubscript:@"time_delta"];

            v11 = [(SBCameraActivationManager *)a2 workspace];
            v12 = NSStringFromSBSystemActionSuppressionState(v11);
            [v9 setObject:v12 forKeyedSubscript:@"state"];

            v13 = [(SBHomeScreenConfigurationServer *)a2 listener];
            SBAddSuppressionMetricsIntoEventPayload(v9, v13, 0);

            v14 = [(SBCameraActivationManager *)v18 workspace];
            v15 = NSStringFromSBSystemActionSuppressionState(v14);
            [v9 setObject:v15 forKeyedSubscript:@"prev_state"];

            v16 = [(SBHomeScreenConfigurationServer *)v18 listener];
            SBAddSuppressionMetricsIntoEventPayload(v9, v16, @"prev_");

            v17 = [MEMORY[0x277D65DD0] sharedInstance];
            [v17 emitEvent:64 withPayload:v9];
          }
        }
      }
    }
  }
}

@end