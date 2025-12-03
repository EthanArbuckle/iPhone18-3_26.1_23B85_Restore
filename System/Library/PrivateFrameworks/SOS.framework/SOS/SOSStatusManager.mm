@interface SOSStatusManager
+ (SOSStatusManager)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SOSStatusManager)init;
- (void)_cancelCurrentDeviceClearStatusTimer;
- (void)_cancelHandoffFallbackTimer;
- (void)_cancelPairedDeviceClearStatusTimer;
- (void)_reportSOSEvent:(id)event callDuration:(int64_t)duration;
- (void)_startCurrentDeviceClearStatusTimer;
- (void)_startHandoffFallbackTimer;
- (void)_startPairedDeviceClearStatusTimer;
- (void)cancelCurrentDeviceClearStatusTimer;
- (void)cancelHandoffFallbackTimer;
- (void)cancelPairedDeviceClearStatusTimer;
- (void)checkHandoffFallback;
- (void)checkSOSStatusOnLaunch;
- (void)clearHandoffFallbackState;
- (void)endAudioSession;
- (void)flowEnded;
- (void)flowEndedOnBothDevices;
- (void)flowEndedOnCurrentDevice;
- (void)flowStarted;
- (void)handleLostStatusReporterConnection;
- (void)handleSOSCallStatusChange:(id)change;
- (void)pairedDeviceSOSStatusDidUpdate:(id)update progression:(int64_t)progression shouldHandleThirdParty:(BOOL)party;
- (void)sosTriggerDisabledWithUUID:(id)d trigger:(int64_t)trigger;
- (void)sosTriggerPushedToPairedDeviceWithUUID:(id)d trigger:(int64_t)trigger;
- (void)sosTriggeredOnPairedDevice:(id)device;
- (void)sosTriggeredWithUUID:(id)d trigger:(int64_t)trigger source:(int64_t)source;
- (void)startCurrentDeviceClearStatusTimer;
- (void)startHandoffFallbackTimer;
- (void)startPairedDeviceClearStatusTimer;
- (void)triggerHandoffFallback;
- (void)updatePairedDeviceSOSStatus:(id)status;
- (void)updateSOSFlowState:(int64_t)state;
@end

@implementation SOSStatusManager

+ (SOSStatusManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SOSStatusManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_7 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7, block);
  }

  v2 = sharedInstance_inst_1;

  return v2;
}

uint64_t __34__SOSStatusManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_inst_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SOSStatusManager)init
{
  v8.receiver = self;
  v8.super_class = SOSStatusManager;
  v2 = [(SOSStatusManager *)&v8 init];
  if (v2)
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, init", v7, 2u);
    }

    v4 = +[SOSCoreAnalyticsReporter sharedInstance];
    coreAnalyticsReporter = v2->_coreAnalyticsReporter;
    v2->_coreAnalyticsReporter = v4;
  }

  return v2;
}

- (void)sosTriggeredWithUUID:(id)d trigger:(int64_t)trigger source:(int64_t)source
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [SOSStatus alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [(SOSStatus *)v9 initWithUUID:dCopy trigger:trigger timeOfDetection:date];

  [(SOSStatus *)v11 setFlowState:14];
  [SOSUtilities setCurrentDeviceSOSStatus:v11];
  [(SOSStatusManager *)self setMostRecentTriggerSource:source];
  v12 = sos_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v11;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, sosTriggeredWithUUID: %@", &v17, 0xCu);
  }

  [(SOSStatusManager *)self flowStarted];
  v13 = +[SOSCoordinator sharedInstance];
  v14 = +[SOSUtilities currentDeviceSOSStatus];
  [v13 syncProgressionWithPairedDevice:1 sosStatus:v14];

  v15 = +[SOSEngine sharedInstance];
  [v15 broadcastUpdatedSOSStatus:v11];

  [(SOSStatusManager *)self startCurrentDeviceClearStatusTimer];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)sosTriggerDisabledWithUUID:(id)d trigger:(int64_t)trigger
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [SOSStatus alloc];
  date = [MEMORY[0x277CBEAA8] date];
  date2 = [MEMORY[0x277CBEAA8] date];
  v10 = [(SOSStatus *)v7 initWithUUID:dCopy trigger:trigger timeOfDetection:date timeOfResolution:date2 resolution:4];

  [SOSUtilities setCurrentDeviceSOSStatus:v10];
  v11 = sos_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, sosTriggerDisabledWithUUID: %@", &v14, 0xCu);
  }

  if (trigger == 7)
  {
    v12 = +[SOSEngine sharedInstance];
    [v12 handleNotifyThirdPartyClientsWithSOSStatus:v10];
  }

  [(SOSStatusManager *)self _reportSOSEvent:v10 callDuration:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateSOSFlowState:(int64_t)state
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = +[SOSUtilities currentDeviceSOSStatus];
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109120;
    LODWORD(v21) = [v5 flowState];
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, previousState: %d", &v20, 8u);
  }

  v7 = sos_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109120;
    LODWORD(v21) = state;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, updateSOSFlowState: %d", &v20, 8u);
  }

  v8 = [v5 copy];
  [v8 setFlowState:state];
  if ([v8 isFlowActive] && !-[SOSStatusManager hasActiveSOSCall](self, "hasActiveSOSCall"))
  {
    [(SOSStatusManager *)self startCurrentDeviceClearStatusTimer];
  }

  else
  {
    [(SOSStatusManager *)self cancelCurrentDeviceClearStatusTimer];
  }

  if (![v8 resolution])
  {
    if (state != 6)
    {
      if (state != 4)
      {
        if (state == 3 || (v9 = [v5 isFlowActive], state == 10) && (v9 & 1) != 0)
        {
          v10 = 2;
LABEL_19:
          [v8 setResolution:v10];
          date = [MEMORY[0x277CBEAA8] date];
          [v8 setTimeOfResolution:date];

LABEL_20:
          if ([v8 resolution] == 3)
          {
            [(SOSStatusManager *)self _reportSOSEvent:v8 callDuration:0];
          }

          goto LABEL_22;
        }

        if (state)
        {
          goto LABEL_20;
        }
      }

      v10 = 1;
      goto LABEL_19;
    }

    v10 = 3;
    goto LABEL_19;
  }

LABEL_22:
  v12 = sos_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v8;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, updating currentDeviceSOSStatus to %@", &v20, 0xCu);
  }

  [SOSUtilities setCurrentDeviceSOSStatus:v8];
  if ([v8 isFlowActive] && !-[SOSStatusManager inSOSFlowOnCurrentDevice](self, "inSOSFlowOnCurrentDevice"))
  {
    [(SOSStatusManager *)self flowStarted];
  }

  else if (([v8 isFlowActive] & 1) == 0 && -[SOSStatusManager inSOSFlowOnCurrentDevice](self, "inSOSFlowOnCurrentDevice"))
  {
    [(SOSStatusManager *)self flowEnded];
  }

  v13 = +[SOSCoordinator sharedInstance];
  v14 = +[SOSUtilities currentDeviceSOSStatus];
  [v13 syncProgressionWithPairedDevice:3 sosStatus:v14];

  v15 = +[SOSEngine sharedInstance];
  v16 = +[SOSUtilities currentDeviceSOSStatus];
  [v15 broadcastUpdatedSOSStatus:v16];

  if ([v8 trigger] == 7 && objc_msgSend(v5, "isFlowActiveAndNotResting") && (objc_msgSend(v8, "isFlowActiveAndNotResting") & 1) == 0)
  {
    v17 = +[SOSEngine sharedInstance];
    v18 = +[SOSUtilities currentDeviceSOSStatus];
    [v17 handleNotifyThirdPartyClientsWithSOSStatus:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleSOSCallStatusChange:(id)change
{
  changeCopy = change;
  hasActiveSOSCall = [(SOSStatusManager *)self hasActiveSOSCall];
  if (!changeCopy || hasActiveSOSCall)
  {
    hasActiveSOSCall2 = [(SOSStatusManager *)self hasActiveSOSCall];
    if (!changeCopy && hasActiveSOSCall2)
    {
      v8 = +[SOSUtilities currentDeviceSOSStatus];
      activeSOSCall = [(SOSStatusManager *)self activeSOSCall];
      [activeSOSCall callDuration];
      [(SOSStatusManager *)self _reportSOSEvent:v8 callDuration:v10];

      v11 = sos_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,SOS call ended", v12, 2u);
      }

      [(SOSStatusManager *)self setHasActiveSOSCall:0];
      [(SOSStatusManager *)self startCurrentDeviceClearStatusTimer];
      [(SOSStatusManager *)self startPairedDeviceClearStatusTimer];
    }
  }

  else
  {
    v6 = sos_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,SOS call started", buf, 2u);
    }

    [(SOSStatusManager *)self setHasActiveSOSCall:1];
    [(SOSStatusManager *)self cancelCurrentDeviceClearStatusTimer];
    [(SOSStatusManager *)self cancelPairedDeviceClearStatusTimer];
  }

  [(SOSStatusManager *)self setActiveSOSCall:changeCopy];
}

- (void)checkSOSStatusOnLaunch
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[SOSUtilities pairedDeviceSOSStatus];
  v4 = v3;
  if (v3 && [v3 isFlowActive])
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,found active paired device flow on launch: %@", &v16, 0xCu);
    }

    [(SOSStatusManager *)self updatePairedDeviceSOSStatus:v4];
  }

  else
  {
    v6 = sos_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,paired device status not active on launch", &v16, 2u);
    }
  }

  v7 = +[SOSUtilities currentDeviceSOSStatus];
  v8 = v7;
  if (!v7)
  {
    v10 = sos_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,current device status was nil on launch", &v16, 2u);
    }

    goto LABEL_16;
  }

  if ([v7 shouldRetriggerSOS])
  {
    v9 = sos_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,retriggering unresolved SOS event on launch: %@", &v16, 0xCu);
    }

    v10 = +[SOSEngine sharedInstance];
    uuid = [v8 uuid];
    -[NSObject retriggerSOSWithUUID:trigger:](v10, "retriggerSOSWithUUID:trigger:", uuid, [v8 trigger]);

LABEL_16:
    goto LABEL_17;
  }

  isFlowActive = [v8 isFlowActive];
  v14 = sos_default_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (isFlowActive)
  {
    if (v15)
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,found active current device flow on launch: %@", &v16, 0xCu);
    }

    -[SOSStatusManager updateSOSFlowState:](self, "updateSOSFlowState:", [v8 flowState]);
  }

  else
  {
    if (v15)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,current device status not active on launch", &v16, 2u);
    }
  }

LABEL_17:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleLostStatusReporterConnection
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = +[SOSUtilities currentDeviceSOSStatus];
  v4 = v3;
  if (v3)
  {
    shouldRetriggerSOS = [v3 shouldRetriggerSOS];
    v6 = sos_default_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (shouldRetriggerSOS)
    {
      if (v7)
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,retriggering unresolved SOS event due to lost status reporter connection: %@", buf, 0xCu);
      }

      v8 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SOSStatusManager_handleLostStatusReporterConnection__block_invoke;
      block[3] = &unk_279B532A0;
      v12 = v4;
      dispatch_after(v8, MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (v7)
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,no need to retrigger SOS event due to lost status reporter connection: %@", buf, 0xCu);
      }

      [(SOSStatusManager *)self updateSOSFlowState:0];
    }
  }

  else
  {
    v9 = sos_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,nil status on lost status reporter connection", buf, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__SOSStatusManager_handleLostStatusReporterConnection__block_invoke(uint64_t a1)
{
  v3 = +[SOSEngine sharedInstance];
  v2 = [*(a1 + 32) uuid];
  [v3 retriggerSOSWithUUID:v2 trigger:{objc_msgSend(*(a1 + 32), "trigger")}];
}

- (void)startCurrentDeviceClearStatusTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SOSStatusManager_startCurrentDeviceClearStatusTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startCurrentDeviceClearStatusTimer
{
  v14 = *MEMORY[0x277D85DE8];
  [(SOSStatusManager *)self _cancelCurrentDeviceClearStatusTimer];
  v3 = +[SOSUtilities currentDeviceSOSStatus];
  v4 = v3;
  if (v3 && [v3 isFlowActive] && !-[SOSStatusManager hasActiveSOSCall](self, "hasActiveSOSCall"))
  {
    v7 = sos_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = 0x4044000000000000;
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,starting current device clear status timer: %.1f s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = MEMORY[0x277CBEBB8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__SOSStatusManager__startCurrentDeviceClearStatusTimer__block_invoke;
    v10[3] = &unk_279B53798;
    objc_copyWeak(&v11, buf);
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:40.0];
    [(SOSStatusManager *)self setCurrentDeviceStatusClearTimer:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,not starting current device clear status timer", buf, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __55__SOSStatusManager__startCurrentDeviceClearStatusTimer__block_invoke(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__SOSStatusManager__startCurrentDeviceClearStatusTimer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSOSFlowState:0];
}

- (void)cancelCurrentDeviceClearStatusTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SOSStatusManager_cancelCurrentDeviceClearStatusTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_cancelCurrentDeviceClearStatusTimer
{
  currentDeviceStatusClearTimer = [(SOSStatusManager *)self currentDeviceStatusClearTimer];

  if (currentDeviceStatusClearTimer)
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,canceling current device clear status timer", v6, 2u);
    }

    currentDeviceStatusClearTimer2 = [(SOSStatusManager *)self currentDeviceStatusClearTimer];
    [currentDeviceStatusClearTimer2 invalidate];

    [(SOSStatusManager *)self setCurrentDeviceStatusClearTimer:0];
  }
}

- (void)flowStarted
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = +[SOSUtilities currentDeviceSOSStatus];
  v4 = +[SOSUtilities pairedDeviceSOSStatus];
  if (([v3 isFlowActive] & 1) != 0 || objc_msgSend(v4, "isFlowActive"))
  {
    if (![(SOSStatusManager *)self inSOSFlow])
    {
      [(SOSStatusManager *)self setInSOSFlow:1];
      v5 = sos_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,flowStartedOnEitherDevice", v10, 2u);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = @"SOSHasActiveTriggerValueKey";
      v12[0] = MEMORY[0x277CBEC38];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [defaultCenter postNotificationName:@"SOSHasActiveTriggerChangedNotification" object:0 userInfo:v7];

      [MEMORY[0x277D7A8D8] requestPhraseSpotterBypassing:1 timeout:20.0];
      -[SOSStatusManager startAudioSessionForFlowOnCurrentDevice:](self, "startAudioSessionForFlowOnCurrentDevice:", [v3 isFlowActive]);
    }

    if ([v3 isFlowActive] && !-[SOSStatusManager inSOSFlowOnCurrentDevice](self, "inSOSFlowOnCurrentDevice"))
    {
      [(SOSStatusManager *)self setInSOSFlowOnCurrentDevice:1];
      v8 = sos_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,flowStartedOnCurrentDevice", v10, 2u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)flowEnded
{
  v4 = +[SOSUtilities currentDeviceSOSStatus];
  v3 = +[SOSUtilities pairedDeviceSOSStatus];
  if (([v4 isFlowActive] & 1) == 0)
  {
    [(SOSStatusManager *)self flowEndedOnCurrentDevice];
  }

  if (([v4 isFlowActive] & 1) == 0 && (objc_msgSend(v3, "isFlowActive") & 1) == 0)
  {
    [(SOSStatusManager *)self flowEndedOnBothDevices];
  }
}

- (void)flowEndedOnBothDevices
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(SOSStatusManager *)self inSOSFlow])
  {
    [(SOSStatusManager *)self setInSOSFlow:0];
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,flowEndedOnBothDevices", v7, 2u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = @"SOSHasActiveTriggerValueKey";
    v9[0] = MEMORY[0x277CBEC28];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"SOSHasActiveTriggerChangedNotification" object:0 userInfo:v5];

    [MEMORY[0x277D7A8D8] requestPhraseSpotterBypassing:0 timeout:0.0];
    [(SOSStatusManager *)self endAudioSession];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)flowEndedOnCurrentDevice
{
  if ([(SOSStatusManager *)self inSOSFlowOnCurrentDevice])
  {
    [(SOSStatusManager *)self setInSOSFlowOnCurrentDevice:0];
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,flowEndedOnCurrentDevice", v4, 2u);
    }
  }
}

- (void)endAudioSession
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_reportSOSEvent:(id)event callDuration:(int64_t)duration
{
  eventCopy = event;
  v7 = [(SOSStatusManager *)self mostRecentTriggerSource]== 1;
  coreAnalyticsReporter = [(SOSStatusManager *)self coreAnalyticsReporter];
  [coreAnalyticsReporter reportSOSEvent:eventCopy callDuration:duration isHandoffTrigger:v7 onWristState:0];
}

- (void)pairedDeviceSOSStatusDidUpdate:(id)update progression:(int64_t)progression shouldHandleThirdParty:(BOOL)party
{
  partyCopy = party;
  v15 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v9 = sos_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, pairedDeviceSOSStatusDidUpdate", v14, 2u);
  }

  if (!updateCopy)
  {
    v12 = sos_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SOSStatusManager pairedDeviceSOSStatusDidUpdate:progression:shouldHandleThirdParty:];
    }

LABEL_12:

    goto LABEL_17;
  }

  [updateCopy setIsPairedDeviceStatus:1];
  switch(progression)
  {
    case 3:
      [(SOSStatusManager *)self updatePairedDeviceSOSStatus:updateCopy];
      break;
    case 2:
      if (partyCopy)
      {
        if ([updateCopy trigger] != 7)
        {
          break;
        }

        v12 = +[SOSEngine sharedInstance];
        [v12 handleNotifyThirdPartyClientsWithSOSStatus:updateCopy];
      }

      else
      {
        v12 = sos_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14[0]) = 0;
          _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, third party handoff message missing info, notify failed", v14, 2u);
        }
      }

      goto LABEL_12;
    case 1:
      v10 = sos_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        trigger = [updateCopy trigger];
        v14[0] = 67109120;
        v14[1] = trigger;
        _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, received message with SOSProgressionSOSTriggered, trigger: %d", v14, 8u);
      }

      [(SOSStatusManager *)self sosTriggeredOnPairedDevice:updateCopy];
      break;
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sosTriggeredOnPairedDevice:(id)device
{
  v10 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = deviceCopy;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,sosTriggeredOnPairedDevice: %@", &v8, 0xCu);
    }

    [SOSUtilities setPairedDeviceSOSStatus:deviceCopy];
    [(SOSStatusManager *)self checkHandoffFallback];
    [(SOSStatusManager *)self flowStarted];
    v6 = +[SOSEngine sharedInstance];
    [v6 broadcastUpdatedSOSStatus:deviceCopy];

    [(SOSStatusManager *)self startPairedDeviceClearStatusTimer];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updatePairedDeviceSOSStatus:(id)status
{
  v10 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (statusCopy)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = statusCopy;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,updatePairedDeviceSOSStatus: %@", &v8, 0xCu);
    }

    [SOSUtilities setPairedDeviceSOSStatus:statusCopy];
    [(SOSStatusManager *)self checkHandoffFallback];
    if ([statusCopy isFlowActive] && !-[SOSStatusManager hasActiveSOSCall](self, "hasActiveSOSCall"))
    {
      [(SOSStatusManager *)self startPairedDeviceClearStatusTimer];
    }

    else
    {
      [(SOSStatusManager *)self cancelPairedDeviceClearStatusTimer];
    }

    if ([statusCopy isFlowActive] && !-[SOSStatusManager inSOSFlow](self, "inSOSFlow"))
    {
      [(SOSStatusManager *)self flowStarted];
    }

    else if (([statusCopy isFlowActive] & 1) == 0 && -[SOSStatusManager inSOSFlow](self, "inSOSFlow"))
    {
      [(SOSStatusManager *)self flowEnded];
    }

    v6 = +[SOSEngine sharedInstance];
    [v6 broadcastUpdatedSOSStatus:statusCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startPairedDeviceClearStatusTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SOSStatusManager_startPairedDeviceClearStatusTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startPairedDeviceClearStatusTimer
{
  v14 = *MEMORY[0x277D85DE8];
  [(SOSStatusManager *)self _cancelPairedDeviceClearStatusTimer];
  v3 = +[SOSUtilities pairedDeviceSOSStatus];
  v4 = v3;
  if (v3 && [v3 isFlowActive] && !-[SOSStatusManager hasActiveSOSCall](self, "hasActiveSOSCall"))
  {
    v7 = sos_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = 0x4044000000000000;
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,starting paired device clear status timer: %.1f s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = MEMORY[0x277CBEBB8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__SOSStatusManager__startPairedDeviceClearStatusTimer__block_invoke;
    v10[3] = &unk_279B53798;
    objc_copyWeak(&v11, buf);
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:40.0];
    [(SOSStatusManager *)self setPairedDeviceStatusClearTimer:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,not starting paired device clear status timer", buf, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __54__SOSStatusManager__startPairedDeviceClearStatusTimer__block_invoke(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__SOSStatusManager__startPairedDeviceClearStatusTimer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = +[SOSUtilities pairedDeviceSOSStatus];
  [v4 setFlowState:0];
  [WeakRetained updatePairedDeviceSOSStatus:v4];
}

- (void)cancelPairedDeviceClearStatusTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SOSStatusManager_cancelPairedDeviceClearStatusTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_cancelPairedDeviceClearStatusTimer
{
  pairedDeviceStatusClearTimer = [(SOSStatusManager *)self pairedDeviceStatusClearTimer];

  if (pairedDeviceStatusClearTimer)
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,canceling paired device clear status timer", v6, 2u);
    }

    pairedDeviceStatusClearTimer2 = [(SOSStatusManager *)self pairedDeviceStatusClearTimer];
    [pairedDeviceStatusClearTimer2 invalidate];

    [(SOSStatusManager *)self setPairedDeviceStatusClearTimer:0];
  }
}

- (void)sosTriggerPushedToPairedDeviceWithUUID:(id)d trigger:(int64_t)trigger
{
  if (d)
  {
    [(SOSStatusManager *)self setHandoffTriggerUUID:?];
    [(SOSStatusManager *)self setHandoffTrigger:trigger];
    [(SOSStatusManager *)self startHandoffFallbackTimer];

    [(SOSStatusManager *)self checkHandoffFallback];
  }

  else
  {
    v6 = sos_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SOSStatusManager sosTriggerPushedToPairedDeviceWithUUID:trigger:];
    }
  }
}

- (void)startHandoffFallbackTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SOSStatusManager_startHandoffFallbackTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startHandoffFallbackTimer
{
  v14 = *MEMORY[0x277D85DE8];
  [(SOSStatusManager *)self _cancelHandoffFallbackTimer];
  handoffTriggerUUID = [(SOSStatusManager *)self handoffTriggerUUID];
  v4 = handoffTriggerUUID == 0;

  v5 = sos_default_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,not starting handoff fallback timer", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 134217984;
      v13 = 0x4024000000000000;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,starting handoff fallback timer: %.1f s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v7 = MEMORY[0x277CBEBB8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__SOSStatusManager__startHandoffFallbackTimer__block_invoke;
    v10[3] = &unk_279B53798;
    objc_copyWeak(&v11, buf);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:10.0];
    [(SOSStatusManager *)self setHandoffFallbackTimer:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __46__SOSStatusManager__startHandoffFallbackTimer__block_invoke(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__SOSStatusManager__startHandoffFallbackTimer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerHandoffFallback];
}

- (void)cancelHandoffFallbackTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SOSStatusManager_cancelHandoffFallbackTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_cancelHandoffFallbackTimer
{
  handoffFallbackTimer = [(SOSStatusManager *)self handoffFallbackTimer];

  if (handoffFallbackTimer)
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,canceling handoff fallback timer", v6, 2u);
    }

    handoffFallbackTimer2 = [(SOSStatusManager *)self handoffFallbackTimer];
    [handoffFallbackTimer2 invalidate];

    [(SOSStatusManager *)self setHandoffFallbackTimer:0];
  }
}

- (void)triggerHandoffFallback
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkHandoffFallback
{
  handoffTriggerUUID = [(SOSStatusManager *)self handoffTriggerUUID];

  if (handoffTriggerUUID)
  {
    v4 = +[SOSUtilities pairedDeviceSOSStatus];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_11;
    }

    uuid = [v4 uuid];
    uUIDString = [uuid UUIDString];
    handoffTriggerUUID2 = [(SOSStatusManager *)self handoffTriggerUUID];
    uUIDString2 = [handoffTriggerUUID2 UUIDString];
    v10 = [uUIDString isEqualToString:uUIDString2];

    if (!v10)
    {
LABEL_11:
      v13 = sos_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow not yet active", buf, 2u);
      }

      goto LABEL_25;
    }

    if ([v5 isFlowActive])
    {
      v11 = sos_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow is active", buf, 2u);
      }

      [(SOSStatusManager *)self cancelHandoffFallbackTimer];
      if ([v5 isPreCall])
      {
        goto LABEL_25;
      }

      v12 = sos_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow progressed to call", buf, 2u);
      }
    }

    else
    {
      flowState = [v5 flowState];
      v16 = sos_default_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (!flowState)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow not running", buf, 2u);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __40__SOSStatusManager_checkHandoffFallback__block_invoke;
        block[3] = &unk_279B532A0;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
        goto LABEL_25;
      }

      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow ended", buf, 2u);
      }

      [(SOSStatusManager *)self cancelHandoffFallbackTimer];
    }

    [(SOSStatusManager *)self clearHandoffFallbackState];
LABEL_25:

    return;
  }

  v14 = sos_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,no handoff trigger UUID", buf, 2u);
  }

  [(SOSStatusManager *)self cancelHandoffFallbackTimer];
}

void __40__SOSStatusManager_checkHandoffFallback__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handoffFallbackTimer];

  if (!v2)
  {
    v3 = *(a1 + 32);

    [v3 _startHandoffFallbackTimer];
  }
}

- (void)clearHandoffFallbackState
{
  [(SOSStatusManager *)self setHandoffTriggerUUID:0];

  [(SOSStatusManager *)self setHandoffTrigger:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, shouldAcceptNewConnection", buf, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.sos.trigger"];
  bOOLValue = [v7 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v10 = sos_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v22 = connectionCopy;
      *&v22[8] = 2112;
      *&v22[10] = @"com.apple.sos.trigger";
      v11 = "[WARN] SOSStatusManager,New connection %@ missing entitlement: %@";
      v12 = v10;
      v13 = 22;
      goto LABEL_9;
    }

LABEL_10:

    v14 = 0;
    goto LABEL_11;
  }

  clientConnection = [(SOSStatusManager *)self clientConnection];

  if (clientConnection)
  {
    v10 = sos_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v22 = connectionCopy;
      v11 = "[WARN] SOSStatusManager,Cannot accept new connection %@ because of existing client connection";
      v12 = v10;
      v13 = 12;
LABEL_9:
      _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke;
  v19[3] = &unk_279B53BA0;
  v19[4] = self;
  v17 = connectionCopy;
  v20 = v17;
  dispatch_async(MEMORY[0x277D85CD0], v19);
  v18 = sos_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v22 = 1;
    *&v22[4] = 2112;
    *&v22[6] = v17;
    _os_log_impl(&dword_264323000, v18, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,shouldAcceptNewConnection: %d for connection: %@", buf, 0x12u);
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setClientConnection:*(a1 + 40)];
  v2 = SOSStatusManagerClientInterface();
  [*(a1 + 40) setRemoteObjectInterface:v2];

  v3 = SOSStatusManagerServerInterface();
  [*(a1 + 40) setExportedInterface:v3];

  [*(a1 + 40) setExportedObject:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke_2;
  v8[3] = &unk_279B53930;
  objc_copyWeak(&v9, &location);
  [*(a1 + 40) setInterruptionHandler:v8];
  objc_initWeak(&from, *(a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke_310;
  v4[3] = &unk_279B53B78;
  objc_copyWeak(&v5, &location);
  objc_copyWeak(&v6, &from);
  [*(a1 + 40) setInvalidationHandler:v4];
  [*(a1 + 40) resume];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,SOS client connection interrupted", buf, 2u);
  }

  objc_copyWeak(&to, (a1 + 32));
  v3 = objc_loadWeakRetained(&to);
  [v3 invalidate];

  objc_destroyWeak(&to);
}

void __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke_310(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained(&to);

  if (v3)
  {
    [WeakRetained setClientConnection:0];
  }

  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,SOS client connection invalidated", v6, 2u);
  }

  v5 = +[SOSEngine sharedInstance];
  [v5 updateCurrentSOSInitiationState:0];

  [WeakRetained handleLostStatusReporterConnection];
  objc_destroyWeak(&to);
}

void __55__SOSStatusManager__startCurrentDeviceClearStatusTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startAudioSessionForFlowOnCurrentDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startAudioSessionForFlowOnCurrentDevice:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pairedDeviceSOSStatusDidUpdate:progression:shouldHandleThirdParty:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__SOSStatusManager__startPairedDeviceClearStatusTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sosTriggerPushedToPairedDeviceWithUUID:trigger:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__SOSStatusManager__startHandoffFallbackTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end