@interface SBAlwaysOnTelemetryEmitter
+ (id)new;
- (SBAlwaysOnPolicyCoordinator)alwaysOnPolicyCoordinator;
- (SBAlwaysOnTelemetryEmitter)init;
- (SBAlwaysOnTelemetryEmitter)initWithBacklightEnvironmentSessionProvider:(id)a3;
- (id)_analyticsPayloadForHistogram:(uint64_t)a1;
- (id)_mq_metrics;
- (id)_payloadForAlwaysOnEnabled:(uint64_t)a1;
- (uint64_t)_noteAlwaysOnEnabledReasonsMayHaveChanged;
- (uint64_t)_resolveTelemetryBacklightState;
- (uint64_t)_resolveTelemetryBacklightState:(uint64_t)a1;
- (void)_emitAnalyticsEventForBacklightStateTransitionWithEvent:(uint64_t)a1;
- (void)_emitBiomeEventsForAlwaysOnEnabled:(uint64_t)a1;
- (void)_emitEventsForAlwaysOnEnabled:(uint64_t)a1;
- (void)_emitEventsForAlwaysOnEnabled:(uint64_t)a1 ifPayloadChanged:(char)a2;
- (void)_emitPowerLogEventForBacklightStateTransitionWithEvent:(uint64_t)a3 telemetryBacklightState:;
- (void)_logAnalyticsEvent:(void *)a3 metrics:;
- (void)_logPowerlogEvent:(uint64_t)a3 payload:;
- (void)_logPowerlogEvent:(void *)a3 metrics:;
- (void)_logTelemetryForBacklightStateUpdate:(uint64_t)a1 event:(uint64_t)a2;
- (void)_logTelemetryForBacklightStateUpdateFromTelemetrySource:(void *)a3 event:;
- (void)_mq_triggerDeferredLogging;
- (void)_performDeferredLogging;
- (void)_significantTimeChange:(id)a3;
- (void)backlight:(id)a3 didChangeAlwaysOnEnabled:(BOOL)a4;
- (void)backlightEnvironmentSessionsProvider:(id)a3 didUpdatePresentation:(id)a4 withBundleIdentifiers:(id)a5;
- (void)backlightTelemetrySource:(id)a3 didCompleteUpdateToFlipbookState:(int64_t)a4 forEvent:(id)a5;
- (void)backlightTelemetrySource:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)completeIntializationAfterBLSStartup;
- (void)dealloc;
- (void)logTelemetryForInvalidation:(id)a3;
- (void)logTelemetryForRenderSession:(id)a3;
- (void)logTelemetryForRequestDates:(id)a3;
@end

@implementation SBAlwaysOnTelemetryEmitter

- (uint64_t)_noteAlwaysOnEnabledReasonsMayHaveChanged
{
  if (result)
  {
    OUTLINED_FUNCTION_1_4();
    return BSDispatchMain();
  }

  return result;
}

void __71__SBAlwaysOnTelemetryEmitter__noteAlwaysOnEnabledReasonsMayHaveChanged__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(v1 + 32) isAlwaysOnEnabled];

  [SBAlwaysOnTelemetryEmitter _emitEventsForAlwaysOnEnabled:v1 ifPayloadChanged:v2];
}

- (id)_mq_metrics
{
  if (a1)
  {
    v2 = a1;
    BSDispatchQueueAssert();
    [(SBAlwaysOnTelemetryEmitter *)v2 _mq_triggerDeferredLogging];
    a1 = v2[6];
    v1 = vars8;
  }

  return a1;
}

- (void)_mq_triggerDeferredLogging
{
  if (a1)
  {
    BSDispatchQueueAssert();
    if (!a1[7])
    {
      objc_initWeak(&location, a1);
      v2 = MEMORY[0x277CBEBB8];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __56__SBAlwaysOnTelemetryEmitter__mq_triggerDeferredLogging__block_invoke;
      v9[3] = &unk_2783AA438;
      objc_copyWeak(&v10, &location);
      v3 = [v2 timerWithTimeInterval:0 repeats:v9 block:1200.0];
      v4 = a1[7];
      a1[7] = v3;

      v5 = a1[7];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__SBAlwaysOnTelemetryEmitter__mq_triggerDeferredLogging__block_invoke_2;
      block[3] = &unk_2783A8C18;
      v8 = v5;
      v6 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithBacklightEnvironmentSessionProvider_);
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBAlwaysOnTelemetryEmitter.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "+[SBAlwaysOnTelemetryEmitter new]", v5}];

  return 0;
}

- (SBAlwaysOnTelemetryEmitter)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithBacklightEnvironmentSessionProvider_);
  [v4 handleFailureInMethod:a2 object:self file:@"SBAlwaysOnTelemetryEmitter.m" lineNumber:73 description:{@"%s is unavailable; use %@ instead", "-[SBAlwaysOnTelemetryEmitter init]", v5}];

  return 0;
}

- (SBAlwaysOnTelemetryEmitter)initWithBacklightEnvironmentSessionProvider:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31.receiver = self;
  v31.super_class = SBAlwaysOnTelemetryEmitter;
  v6 = [(SBAlwaysOnTelemetryEmitter *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backlightEnvironmentSessionProvider, a3);
    [(SBBacklightEnvironmentSessionProvider *)v7->_backlightEnvironmentSessionProvider addObserver:v7];
    v8 = objc_alloc_init(MEMORY[0x277D65D98]);
    alwaysOnDefaults = v7->_alwaysOnDefaults;
    v7->_alwaysOnDefaults = v8;

    objc_initWeak(&location, v7);
    v10 = v7->_alwaysOnDefaults;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showWallpaperInAlwaysOn"];
    v32[0] = v11;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showNotificationsInAlwaysOn"];
    v32[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v14 = MEMORY[0x277D85CD0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__SBAlwaysOnTelemetryEmitter_initWithBacklightEnvironmentSessionProvider___block_invoke;
    v28[3] = &unk_2783A8C68;
    objc_copyWeak(&v29, &location);
    v15 = [(SBAlwaysOnDefaults *)v10 observeDefaults:v13 onQueue:MEMORY[0x277D85CD0] withBlock:v28];
    alwaysOnDefaultsObserverToken = v7->_alwaysOnDefaultsObserverToken;
    v7->_alwaysOnDefaultsObserverToken = v15;

    v17 = [MEMORY[0x277CF0880] sharedBacklight];
    [v17 addObserver:v7];
    objc_storeStrong(&v7->_backlight, v17);
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    metricsQueue = v7->_metricsQueue;
    v7->_metricsQueue = SerialWithQoS;

    v20 = BSDispatchQueueCreateSerialWithQoS();
    powerlogSendQueue = v7->_powerlogSendQueue;
    v7->_powerlogSendQueue = v20;

    v22 = BSDispatchQueueCreateSerialWithQoS();
    biomeWriterQueue = v7->_biomeWriterQueue;
    v7->_biomeWriterQueue = v22;

    v24 = objc_alloc_init(SBAlwaysOnTelemetryMetrics);
    mq_metrics = v7->_mq_metrics;
    v7->_mq_metrics = v24;

    [(SBAlwaysOnTelemetryMetrics *)v7->_mq_metrics setBacklightState:[(SBAlwaysOnTelemetryEmitter *)v7 _resolveTelemetryBacklightState:?]];
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v7 selector:sel__significantTimeChange_ name:@"SBSignificantTimeChangedNotification" object:0];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __74__SBAlwaysOnTelemetryEmitter_initWithBacklightEnvironmentSessionProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBAlwaysOnTelemetryEmitter *)WeakRetained _noteAlwaysOnEnabledReasonsMayHaveChanged];
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_alwaysOnDefaultsObserverToken invalidate];
  v3 = [MEMORY[0x277CF0880] sharedBacklight];
  [v3 removeObserver:self];

  v4 = [SBApp blshService];
  v5 = [v4 localAssertionService];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = SBAlwaysOnTelemetryEmitter;
  [(SBAlwaysOnTelemetryEmitter *)&v7 dealloc];
}

- (void)completeIntializationAfterBLSStartup
{
  v5 = [MEMORY[0x277CF0A10] sharedTelemetrySource];
  [v5 setTelemetryDelegate:self];
  v3 = [SBApp blshService];
  v4 = [v3 localAssertionService];

  [v4 addObserver:self];
}

- (void)backlightTelemetrySource:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  if (a4 != 1)
  {
    [(SBAlwaysOnTelemetryEmitter *)self _logTelemetryForBacklightStateUpdateFromTelemetrySource:a3 event:a5];
  }
}

- (void)backlightTelemetrySource:(id)a3 didCompleteUpdateToFlipbookState:(int64_t)a4 forEvent:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (a4 && a4 != 3)
  {
    [(SBAlwaysOnTelemetryEmitter *)self _logTelemetryForBacklightStateUpdateFromTelemetrySource:v9 event:v8];
  }
}

- (void)logTelemetryForInvalidation:(id)a3
{
  v4 = a3;
  metricsQueue = self->_metricsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SBAlwaysOnTelemetryEmitter_logTelemetryForInvalidation___block_invoke;
  block[3] = &unk_2783A92D8;
  v6 = v4;
  v9 = v6;
  v10 = self;
  dispatch_async(metricsQueue, block);
  v7 = v6;
  AnalyticsSendEventLazy();
}

void __58__SBAlwaysOnTelemetryEmitter_logTelemetryForInvalidation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wasReset];
  v4 = [(SBAlwaysOnTelemetryEmitter *)*(a1 + 40) _mq_metrics];
  v3 = [*(a1 + 32) invalidatedFramesHistogram];
  if (v2)
  {
    [v4 accumulateDiscardHistogram:v3];
  }

  else
  {
    [v4 accumulateInvalidationHistogram:v3];
  }
}

id __58__SBAlwaysOnTelemetryEmitter_logTelemetryForInvalidation___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) invalidatedFramesHistogram];
  v4 = [(SBAlwaysOnTelemetryEmitter *)v2 _analyticsPayloadForHistogram:v3];
  v5 = [v4 mutableCopy];

  v6 = [*(a1 + 40) reason];
  [v5 setObject:v6 forKeyedSubscript:@"reason"];

  v7 = [*(a1 + 40) source];
  [v5 setObject:v7 forKeyedSubscript:@"source"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "didClearDateSpecifiers")}];
  [v5 setObject:v8 forKeyedSubscript:@"didClearDateSpecifiers"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "wasReset")}];
  [v5 setObject:v9 forKeyedSubscript:@"wasReset"];

  return v5;
}

- (void)logTelemetryForRenderSession:(id)a3
{
  v4 = a3;
  metricsQueue = self->_metricsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBAlwaysOnTelemetryEmitter_logTelemetryForRenderSession___block_invoke;
  block[3] = &unk_2783A92D8;
  block[4] = self;
  v6 = v4;
  v9 = v6;
  dispatch_async(metricsQueue, block);
  v7 = v6;
  AnalyticsSendEventLazy();
}

- (void)logTelemetryForRequestDates:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

id __58__SBAlwaysOnTelemetryEmitter_logTelemetryForRequestDates___block_invoke(uint64_t a1)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v19[0] = @"firstEnvironmentIdentifier";
  v18 = [*(a1 + 32) environmentIdentifiers];
  v2 = [v18 firstObject];
  v20[0] = v2;
  v19[1] = @"environmentCount";
  v3 = MEMORY[0x277CCABB0];
  v4 = [*(a1 + 32) environmentIdentifiers];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v20[1] = v5;
  v19[2] = @"shortestInterval";
  v6 = MEMORY[0x277CCABB0];
  [*(a1 + 32) shortestInterval];
  v7 = [v6 numberWithDouble:?];
  v20[2] = v7;
  v19[3] = @"averageInterval";
  v8 = MEMORY[0x277CCABB0];
  [*(a1 + 32) averageInterval];
  v9 = [v8 numberWithDouble:?];
  v20[3] = v9;
  v19[4] = @"longestInterval";
  v10 = MEMORY[0x277CCABB0];
  [*(a1 + 32) longestInterval];
  v11 = [v10 numberWithDouble:?];
  v20[4] = v11;
  v19[5] = @"completionDuration";
  v12 = MEMORY[0x277CCABB0];
  [*(a1 + 32) completionDuration];
  v13 = [v12 numberWithDouble:?];
  v20[5] = v13;
  v19[6] = @"didReset";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "didReset")}];
  v20[6] = v14;
  v19[7] = @"timedOutCount";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "timedOutCount")}];
  v20[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:8];

  return v16;
}

- (void)backlightEnvironmentSessionsProvider:(id)a3 didUpdatePresentation:(id)a4 withBundleIdentifiers:(id)a5
{
  v6 = a5;
  metricsQueue = self->_metricsQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __111__SBAlwaysOnTelemetryEmitter_backlightEnvironmentSessionsProvider_didUpdatePresentation_withBundleIdentifiers___block_invoke;
  v9[3] = &unk_2783A92D8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(metricsQueue, v9);
}

- (void)_significantTimeChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBSignificantTimeChangeWasMidnight"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(BLSBacklight *)self->_backlight isAlwaysOnEnabled];

    [SBAlwaysOnTelemetryEmitter _emitEventsForAlwaysOnEnabled:v7 ifPayloadChanged:?];
  }
}

void __56__SBAlwaysOnTelemetryEmitter__mq_triggerDeferredLogging__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBAlwaysOnTelemetryEmitter *)WeakRetained _performDeferredLogging];
}

void __56__SBAlwaysOnTelemetryEmitter__mq_triggerDeferredLogging__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v2 addTimer:*(a1 + 32) forMode:*MEMORY[0x277CBE738]];
}

uint64_t __56__SBAlwaysOnTelemetryEmitter__logPowerlogEvent_payload___block_invoke()
{
  result = PLShouldLogRegisteredEvent();
  if (result)
  {

    return PLLogRegisteredEvent();
  }

  return result;
}

id __109__SBAlwaysOnTelemetryEmitter__emitPowerLogEventForBacklightStateTransitionWithEvent_telemetryBacklightState___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = @"state";
  v2 = NSStringFromSBAlwaysOnTelemetryBacklightState(*(a1 + 40));
  v18[1] = @"explanation";
  v19[0] = v2;
  v3 = [*(a1 + 32) changeRequest];
  v4 = [v3 explanation];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v6 = v4;
  }

  v19[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v8 = [v7 mutableCopy];

  v9 = [*(a1 + 32) changeRequest];
  v10 = [v9 sourceEventMetadata];
  v11 = objc_opt_class();
  v12 = v10;
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

  v14 = v13;

  if (v14)
  {
    [v14 type];
    v15 = NSStringFromBLSAlwaysOnSuppressionType();
    [v8 setObject:v15 forKeyedSubscript:@"suppressionChangeType"];

    [v14 reason];
    v16 = NSStringFromBLSAlwaysOnSuppressionReason();
    [v8 setObject:v16 forKeyedSubscript:@"suppressionReasons"];
  }

  return v8;
}

id __86__SBAlwaysOnTelemetryEmitter__emitAnalyticsEventForBacklightStateTransitionWithEvent___block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) reason];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v13 = __86__SBAlwaysOnTelemetryEmitter__emitAnalyticsEventForBacklightStateTransitionWithEvent___block_invoke_2;
  v14 = &unk_2783A95A0;
  v4 = v2;
  v15 = v4;
  v5 = v12;
  if (v3)
  {
    v6 = 0;
    v16 = 0;
    v7 = vcnt_s8(v3);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.i32[0];
    do
    {
      if (((1 << v6) & *&v3) != 0)
      {
        v13(v5);
        if (v16)
        {
          break;
        }

        --v8;
      }

      if (v6 > 0x3E)
      {
        break;
      }

      ++v6;
    }

    while (v8 > 0);
  }

  v17[0] = @"suppressionChangeType";
  [*(a1 + 32) type];
  v9 = NSStringFromBLSAlwaysOnSuppressionType();
  v17[1] = @"suppressionReasons";
  v18[0] = v9;
  v18[1] = v4;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v10;
}

void __86__SBAlwaysOnTelemetryEmitter__emitAnalyticsEventForBacklightStateTransitionWithEvent___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSStringFromBLSAlwaysOnSuppressionReason();
  [v1 addObject:v2];
}

void __65__SBAlwaysOnTelemetryEmitter__emitBiomeEventsForAlwaysOnEnabled___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) enableAlwaysOn])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*(a1 + 40))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = objc_alloc(MEMORY[0x277CF1170]);
  obj = [v4 initWithUserSetState:v2 resolvedState:v3 blockingPolicies:MEMORY[0x277CBEBF8]];
  v5 = *(*(a1 + 32) + 80);
  if (!v5 || ([v5 isEqual:obj] & 1) == 0)
  {
    v6 = BiomeLibrary();
    v7 = [v6 Device];
    v8 = [v7 Display];
    v9 = [v8 AlwaysOn];
    v10 = [v9 source];
    [v10 sendEvent:obj];

    objc_storeStrong((*(a1 + 32) + 80), obj);
  }
}

- (SBAlwaysOnPolicyCoordinator)alwaysOnPolicyCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_alwaysOnPolicyCoordinator);

  return WeakRetained;
}

- (uint64_t)_resolveTelemetryBacklightState
{
  if (result)
  {
    return [(SBAlwaysOnTelemetryEmitter *)result _resolveTelemetryBacklightState:?];
  }

  return result;
}

- (void)_logTelemetryForBacklightStateUpdateFromTelemetrySource:(void *)a3 event:
{
  if (a1)
  {
    v6 = a3;
    v5 = [(SBAlwaysOnTelemetryEmitter *)a1 _resolveTelemetryBacklightState:a2];
    [SBAlwaysOnTelemetryEmitter _logTelemetryForBacklightStateUpdate:a1 event:v5];
  }
}

- (void)backlight:(id)a3 didChangeAlwaysOnEnabled:(BOOL)a4
{
  if (self)
  {
    OUTLINED_FUNCTION_2_18(self, a4);
  }
}

- (void)_emitEventsForAlwaysOnEnabled:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_18(a1, a2);
  }
}

- (id)_analyticsPayloadForHistogram:(uint64_t)a1
{
  v21[10] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v20[0] = @"histogram_totalCount";
    v2 = MEMORY[0x277CCABB0];
    v3 = a2;
    v19 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "totalCount")}];
    v21[0] = v19;
    v20[1] = @"histogram_countLessThan1Min";
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "countLessThan1Min")}];
    v21[1] = v4;
    v20[2] = @"histogram_count1to2Min";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "count1to2Min")}];
    v21[2] = v5;
    v20[3] = @"histogram_count2to3Min";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "count2to3Min")}];
    v21[3] = v6;
    v20[4] = @"histogram_count3to4Min";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "count3to4Min")}];
    v21[4] = v7;
    v20[5] = @"histogram_count4to5Min";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "count4to5Min")}];
    v21[5] = v8;
    v20[6] = @"histogram_count5to6Min";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "count5to6Min")}];
    v21[6] = v9;
    v20[7] = @"histogram_countMoreThan6Min";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "countMoreThan6Min")}];
    v21[7] = v10;
    v20[8] = @"histogram_intervalUntilFirstFrame";
    v11 = MEMORY[0x277CCABB0];
    [v3 intervalUntilFirstFrame];
    v12 = [v11 numberWithDouble:?];
    v21[8] = v12;
    v20[9] = @"histogram_presentationDuration";
    v13 = MEMORY[0x277CCABB0];
    [v3 presentationDuration];
    v15 = v14;

    v16 = [v13 numberWithDouble:v15];
    v21[9] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:10];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __59__SBAlwaysOnTelemetryEmitter_logTelemetryForRenderSession___block_invoke(uint64_t a1)
{
  v3 = [(SBAlwaysOnTelemetryEmitter *)*(a1 + 32) _mq_metrics];
  v2 = [*(a1 + 40) sessionFramesHistogram];
  [v3 accumulateRenderHistogram:v2];
}

id __59__SBAlwaysOnTelemetryEmitter_logTelemetryForRenderSession___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sessionFramesHistogram];
  v4 = [(SBAlwaysOnTelemetryEmitter *)v2 _analyticsPayloadForHistogram:v3];
  v5 = [v4 mutableCopy];

  v6 = [*(a1 + 40) environmentIdentifiers];
  v7 = [v6 firstObject];
  [OUTLINED_FUNCTION_3_15() setObject:? forKeyedSubscript:?];

  v8 = [*(a1 + 40) reasonEnded];
  [v5 setObject:v8 forKeyedSubscript:@"reasonEnded"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 40) environmentIdentifiers];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  [v5 setObject:v11 forKeyedSubscript:@"environmentCount"];

  v12 = MEMORY[0x277CCABB0];
  [*(a1 + 40) totalPreparationDuration];
  v13 = [v12 numberWithDouble:?];
  [OUTLINED_FUNCTION_3_15() setObject:? forKeyedSubscript:?];

  [OUTLINED_FUNCTION_5_4() accumulatedLayoutDuration];
  v14 = [v13 numberWithDouble:?];
  [OUTLINED_FUNCTION_3_15() setObject:? forKeyedSubscript:?];

  [OUTLINED_FUNCTION_5_4() accumulatedRenderDuration];
  v15 = [v14 numberWithDouble:?];
  [OUTLINED_FUNCTION_3_15() setObject:? forKeyedSubscript:?];

  v16 = [v15 numberWithBool:{objc_msgSend(OUTLINED_FUNCTION_5_4(), "didFailToRender")}];
  [OUTLINED_FUNCTION_3_15() setObject:? forKeyedSubscript:?];

  v17 = [v16 numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_5_4(), "timedOutEnvironmentCount")}];
  [OUTLINED_FUNCTION_3_15() setObject:? forKeyedSubscript:?];

  [OUTLINED_FUNCTION_5_4() totalPreparationDuration];
  v18 = [v17 numberWithDouble:?];
  [v5 setObject:v18 forKeyedSubscript:@"totalPreparationDuration"];

  return v5;
}

void __111__SBAlwaysOnTelemetryEmitter_backlightEnvironmentSessionsProvider_didUpdatePresentation_withBundleIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [(SBAlwaysOnTelemetryEmitter *)*(a1 + 32) _mq_metrics];
  [v2 accumulatePresentationSources:*(a1 + 40)];
}

- (void)_performDeferredLogging
{
  if (a1)
  {
    v1 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SBAlwaysOnTelemetryEmitter__performDeferredLogging__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

- (uint64_t)_resolveTelemetryBacklightState:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 backlightState];
    v6 = [v4 flipbookState];
    if (v5 == 1)
    {
      if ((v6 - 1) > 4)
      {
        a1 = 4;
      }

      else
      {
        a1 = qword_21F8A6AC0[v6 - 1];
      }
    }

    else
    {
      v7 = v6 == 3;
      if (v5 == 3)
      {
        v7 = 6;
      }

      if (v5 == 2)
      {
        a1 = 5;
      }

      else
      {
        a1 = v7;
      }
    }
  }

  return a1;
}

- (void)_logTelemetryForBacklightStateUpdate:(uint64_t)a1 event:(uint64_t)a2
{
  if (a1)
  {
    v4 = *(a1 + 40);
    OUTLINED_FUNCTION_0_29();
    OUTLINED_FUNCTION_4_8();
    v9[2] = __73__SBAlwaysOnTelemetryEmitter__logTelemetryForBacklightStateUpdate_event___block_invoke;
    v9[3] = &unk_2783A8BC8;
    v9[4] = v5;
    v9[5] = v6;
    v8 = v7;
    dispatch_async(v4, v9);
    [(SBAlwaysOnTelemetryEmitter *)a1 _emitPowerLogEventForBacklightStateTransitionWithEvent:v8 telemetryBacklightState:a2];
    [(SBAlwaysOnTelemetryEmitter *)a1 _emitAnalyticsEventForBacklightStateTransitionWithEvent:v8];
  }
}

void __73__SBAlwaysOnTelemetryEmitter__logTelemetryForBacklightStateUpdate_event___block_invoke(uint64_t a1)
{
  v2 = [(SBAlwaysOnTelemetryEmitter *)*(a1 + 32) _mq_metrics];
  [v2 setBacklightState:*(a1 + 40)];
}

- (void)_emitPowerLogEventForBacklightStateTransitionWithEvent:(uint64_t)a3 telemetryBacklightState:
{
  v5 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_0_29();
    OUTLINED_FUNCTION_4_8();
    v6[2] = __109__SBAlwaysOnTelemetryEmitter__emitPowerLogEventForBacklightStateTransitionWithEvent_telemetryBacklightState___block_invoke;
    v6[3] = &unk_2783B1160;
    v8 = a3;
    v7 = v5;
    [(SBAlwaysOnTelemetryEmitter *)a1 _logPowerlogEvent:v6 payload:?];
  }
}

- (void)_emitAnalyticsEventForBacklightStateTransitionWithEvent:(uint64_t)a1
{
  if (a1)
  {
    v2 = [a2 changeRequest];
    v3 = [v2 sourceEventMetadata];
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      OUTLINED_FUNCTION_1_4();
      v8 = v7;
      AnalyticsSendEventLazy();
    }
  }
}

- (void)_logPowerlogEvent:(uint64_t)a3 payload:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = (*(a3 + 16))(a3);
    v7 = SBLogBacklight();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Reporting to powerlog. eventName: %{public}@; payload: %{public}@", buf, 0x16u);
    }

    v8 = *(a1 + 64);
    OUTLINED_FUNCTION_0_29();
    OUTLINED_FUNCTION_4_8();
    v10[2] = __56__SBAlwaysOnTelemetryEmitter__logPowerlogEvent_payload___block_invoke;
    v10[3] = &unk_2783A92D8;
    v11 = v5;
    v12 = v6;
    v9 = v6;
    dispatch_async(v8, v10);
  }
}

- (void)_logPowerlogEvent:(void *)a3 metrics:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_0_29();
    OUTLINED_FUNCTION_4_8();
    v7[2] = __56__SBAlwaysOnTelemetryEmitter__logPowerlogEvent_metrics___block_invoke;
    v7[3] = &unk_2783B47B0;
    v8 = v6;
    v9 = v5;
    [(SBAlwaysOnTelemetryEmitter *)a1 _logPowerlogEvent:v9 payload:v7];
  }
}

- (void)_logAnalyticsEvent:(void *)a3 metrics:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_0_29();
    OUTLINED_FUNCTION_4_8();
    v7 = v6;
    v8 = v5;
    AnalyticsSendEventLazy();
  }
}

void __53__SBAlwaysOnTelemetryEmitter__performDeferredLogging__block_invoke(uint64_t a1)
{
  v2 = SBLogBacklight();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Deferred analytics timer fired", v12, 2u);
  }

  v3 = *(*(a1 + 32) + 48);
  v4 = objc_alloc_init(SBAlwaysOnTelemetryMetrics);
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  [*(*(a1 + 32) + 48) setBacklightState:{-[SBAlwaysOnTelemetryEmitter _resolveTelemetryBacklightState:](*(a1 + 32), *(*(a1 + 32) + 32))}];
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  v9 = [*(v7 + 8) currentPresentationBundleIdentifiers];
  [v8 accumulatePresentationSources:v9];

  [*(*(a1 + 32) + 56) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 56);
  *(v10 + 56) = 0;

  [(SBAlwaysOnTelemetryEmitter *)*(a1 + 32) _logPowerlogEvent:v3 metrics:?];
  [(SBAlwaysOnTelemetryEmitter *)*(a1 + 32) _logAnalyticsEvent:v3 metrics:?];
}

- (id)_payloadForAlwaysOnEnabled:(uint64_t)a1
{
  v48[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v47[0] = @"alwaysOnResolvedEnabled";
    v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v48[0] = v3;
    v47[1] = @"alwaysOnEnabledSetting";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 16), "enableAlwaysOn")}];
    v48[1] = v4;
    v47[2] = @"showWallpaperInAlwaysOnSetting";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 16), "showWallpaperInAlwaysOn")}];
    v48[2] = v5;
    v47[3] = @"showNotificationsInAlwaysOnSetting";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 16), "showNotificationsInAlwaysOn")}];
    v48[3] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];
    v8 = [v7 mutableCopy];

    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v10 = [WeakRetained activePolicies];

    v19 = OUTLINED_FUNCTION_6_2(v11, v12, v13, v14, v15, v16, v17, v18, 0, 0, 0, 0, 0, 0, 0, 0, v43, v45);
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v10);
          }

          v23 = *(v36 + 8 * i);
          v24 = [v23 analyticsPolicyValue];
          v25 = [v23 analyticsPolicyName];
          [v8 setObject:v24 forKeyedSubscript:v25];
        }

        v20 = OUTLINED_FUNCTION_6_2(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v44, v46);
      }

      while (v20);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_emitEventsForAlwaysOnEnabled:(uint64_t)a1 ifPayloadChanged:(char)a2
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_29();
    OUTLINED_FUNCTION_4_8();
    BSDispatchMain();
    [(SBAlwaysOnTelemetryEmitter *)a1 _emitBiomeEventsForAlwaysOnEnabled:a2];
  }
}

void __77__SBAlwaysOnTelemetryEmitter__emitEventsForAlwaysOnEnabled_ifPayloadChanged___block_invoke(uint64_t a1)
{
  v2 = [(SBAlwaysOnTelemetryEmitter *)*(a1 + 32) _payloadForAlwaysOnEnabled:?];
  v3 = *(a1 + 32);
  if (*(a1 + 41) != 1)
  {
    goto LABEL_6;
  }

  v4 = *(v3 + 88);
  if (!v4)
  {
    goto LABEL_6;
  }

  if (([v4 isEqualToDictionary:v2] & 1) == 0)
  {
    v3 = *(a1 + 32);
LABEL_6:
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__SBAlwaysOnTelemetryEmitter__emitEventsForAlwaysOnEnabled_ifPayloadChanged___block_invoke_2;
    v10[3] = &unk_2783AC3E8;
    v5 = v2;
    v11 = v5;
    [(SBAlwaysOnTelemetryEmitter *)v3 _logPowerlogEvent:v10 payload:?];
    OUTLINED_FUNCTION_0_29();
    v9 = v5;
    AnalyticsSendEventLazy();
    v6 = [v9 copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;
  }
}

- (void)_emitBiomeEventsForAlwaysOnEnabled:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 72);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __65__SBAlwaysOnTelemetryEmitter__emitBiomeEventsForAlwaysOnEnabled___block_invoke;
    v3[3] = &unk_2783A9F58;
    v3[4] = a1;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

@end