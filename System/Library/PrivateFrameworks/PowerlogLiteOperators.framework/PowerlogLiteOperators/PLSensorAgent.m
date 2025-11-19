@interface PLSensorAgent
+ (BOOL)shouldLogRearLux;
+ (id)entryEventPointDefinitionALS;
+ (id)entryEventPointDefinitionActivity;
+ (id)entryEventPointDefinitionOrientation;
+ (id)entryEventPointDefinitionPocketState;
+ (id)entryEventPointDefinitionProximity;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLSensorAgent)init;
- (void)handleBrightnessClientNotification:(id)a3 withValue:(id)a4;
- (void)handleMotionActivityManagerNotification:(id)a3;
- (void)handleOrientationManagerNotification:(id)a3;
- (void)handlePocketStateManagerNotification:(int64_t)a3;
- (void)initTaskOperatorDependancies;
- (void)logEventPointALS:(id)a3;
- (void)logEventPointActivity:(id)a3;
- (void)logEventPointDeviceOrientation:(id)a3;
- (void)logEventPointPocketState:(id)a3;
- (void)logEventPointProximity:(id)a3;
- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4;
@end

@implementation PLSensorAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSensorAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"MotionActivity";
  v2 = +[PLSensorAgent entryEventPointDefinitionActivity];
  v11[0] = v2;
  v10[1] = @"DeviceOrientation";
  v3 = +[PLSensorAgent entryEventPointDefinitionOrientation];
  v11[1] = v3;
  v10[2] = @"PocketState";
  v4 = +[PLSensorAgent entryEventPointDefinitionPocketState];
  v11[2] = v4;
  v10[3] = @"Proximity";
  v5 = +[PLSensorAgent entryEventPointDefinitionProximity];
  v11[3] = v5;
  v10[4] = @"ALS";
  v6 = +[PLSensorAgent entryEventPointDefinitionALS];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionActivity
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CAF8;
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D3F580];
  v15[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Stationary";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"Confidence";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionOrientation
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1CAF8;
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = *MEMORY[0x277D3F580];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Orientation";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionPocketState
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1CAF8;
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = *MEMORY[0x277D3F580];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"State";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionProximity
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1CAF8;
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = *MEMORY[0x277D3F580];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"State";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionALS
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CB08;
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D3F580];
  v15[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Lux";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"RearLux";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PLSensorAgent)init
{
  v7.receiver = self;
  v7.super_class = PLSensorAgent;
  v2 = [(PLAgent *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    v5 = [(PLOperator *)v2 workQueue];
    [(NSOperationQueue *)v2->_operationQueue setUnderlyingQueue:v5];

    v2->_firstProximityEvent = 0;
  }

  return v2;
}

- (void)initTaskOperatorDependancies
{
  v3 = [MEMORY[0x277D3F220] sharedInstance];
  stateTracker = self->_stateTracker;
  self->_stateTracker = v3;

  v5 = objc_alloc_init(MEMORY[0x277CC1D28]);
  pocketStateManager = self->_pocketStateManager;
  self->_pocketStateManager = v5;

  v7 = objc_alloc_init(MEMORY[0x277CC1CD0]);
  motionActivityManager = self->_motionActivityManager;
  self->_motionActivityManager = v7;

  v9 = objc_alloc_init(MEMORY[0x277CC1C78]);
  deviceOrientationManager = self->_deviceOrientationManager;
  self->_deviceOrientationManager = v9;

  v11 = *MEMORY[0x277CBECE8];
  self->_proximityHIDClient = IOHIDEventSystemClientCreate();
  v12 = objc_alloc_init(MEMORY[0x277CFD390]);
  brightnessSystemClient = self->_brightnessSystemClient;
  self->_brightnessSystemClient = v12;

  v14 = self->_motionActivityManager;
  v15 = [(PLSensorAgent *)self operationQueue];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke;
  v33[3] = &unk_278261A98;
  v33[4] = self;
  [(CMMotionActivityManager *)v14 startActivityUpdatesToQueue:v15 withHandler:v33];

  v16 = self->_deviceOrientationManager;
  v17 = [(PLSensorAgent *)self operationQueue];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_2;
  v32[3] = &unk_278261AC0;
  v32[4] = self;
  [(CMDeviceOrientationManager *)v16 startDeviceOrientationUpdatesToQueue:v17 withHandler:v32];

  [(CMPocketStateManager *)self->_pocketStateManager setDelegate:self];
  v18 = self->_pocketStateManager;
  v19 = [(PLOperator *)self workQueue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_3;
  v31[3] = &unk_278261AE8;
  v31[4] = self;
  [(CMPocketStateManager *)v18 queryStateOntoQueue:v19 andMonitorFor:v31 withTimeout:0.0 andHandler:1.0];

  v20 = self->_brightnessSystemClient;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_4;
  v30[3] = &unk_27825D620;
  v30[4] = self;
  [(BrightnessSystemClient *)v20 registerNotificationBlock:v30 forProperties:&unk_282C168A8];
  proximityHIDClient = self->_proximityHIDClient;
  IOHIDEventSystemClientSetMatching();
  v22 = self->_proximityHIDClient;
  v23 = [(PLOperator *)self workQueue];
  IOHIDEventSystemClientScheduleWithDispatchQueue();

  v24 = self->_proximityHIDClient;
  IOHIDEventSystemClientRegisterEventCallback();
  if ([MEMORY[0x277D3F180] BOOLForKey:@"EnableALSProximity" ifNotSet:1])
  {
    v25 = objc_alloc(MEMORY[0x277D3F250]);
    v26 = [MEMORY[0x277CBEAA8] date];
    v27 = [(PLOperator *)self workQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_87;
    v29[3] = &unk_278259C40;
    v29[4] = self;
    v28 = [v25 initWithFireDate:v26 withInterval:1 withTolerance:0 repeats:v27 withUserInfo:v29 withQueue:60.0 withBlock:0.0];
    [(PLSensorAgent *)self setProximityTimer:v28];
  }
}

void __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_87(uint64_t a1)
{
  v2 = [*(a1 + 32) stateTracker];
  v3 = [v2 getCurrState:4];

  if (([v3 BOOLValue] & 1) == 0)
  {
    [*(a1 + 32) setFirstProximityEvent:1];
    BKSHIDServicesRequestProximityStatusEvent();
    v4 = PLLogSensor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Requested Proximity Status from BackBoardServices", buf, 2u);
    }

    v5 = [*(a1 + 32) brightnessSystemClient];
    [v5 setProperty:MEMORY[0x277CBEC38] forKey:@"ActivateALS"];

    v6 = PLLogSensor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Activated CoreBrightness ALS", v7, 2u);
    }
  }
}

- (void)logEventPointALS:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"ALS"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDeviceOrientation:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"DeviceOrientation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointActivity:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"MotionActivity"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointPocketState:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"PocketState"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointProximity:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"Proximity"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)handleBrightnessClientNotification:(id)a3 withValue:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 isEqual:@"Lux"];
  if (v6 && v7)
  {
    v8 = [(PLSensorAgent *)self stateTracker];
    v9 = [v8 getCurrState:4];

    if (([v9 BOOLValue] & 1) == 0)
    {
      v10 = [(PLSensorAgent *)self brightnessSystemClient];
      [v10 setProperty:MEMORY[0x277CBEC28] forKey:@"ActivateALS"];

      if (+[PLSensorAgent shouldLogRearLux])
      {
        v19 = 0;
        *&buf = &v22;
        *(&buf + 1) = &v21;
        v18 = &v23;
        v20 = 0x4E0000001;
        v11 = [(PLOperator *)self workQueue];
        ApplePhotonDetectorServicesGetLux();
      }

      v15 = @"Lux";
      v16 = v6;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [(PLSensorAgent *)self logEventPointALS:v12];

      v13 = PLLogSensor();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "Received ALS event (display-off) Front: %@", &buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLogRearLux
{
  v2 = [MEMORY[0x277D3F208] isiPhone];
  if (v2)
  {
    LOBYTE(v2) = [MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{102040, 102041, 0}];
  }

  return v2;
}

- (void)handleOrientationManagerNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = PLLogSensor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v13 = [v4 orientation];
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Device orientation event: %d", buf, 8u);
    }

    if ([v4 orientation] == 5)
    {
      v6 = 0;
    }

    else if ([v4 orientation] == 6)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v6, @"Orientation"}];
    v11 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [(PLSensorAgent *)self logEventPointDeviceOrientation:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleMotionActivityManagerNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = PLLogSensor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Device activity event: %@", buf, 0xCu);
    }

    if ([v4 confidence] >= 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "stationary", @"Stationary"}];
      v10[1] = @"Confidence";
      v11[0] = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "confidence")}];
      v11[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
      [(PLSensorAgent *)self logEventPointActivity:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handlePocketStateManagerNotification:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = PLLogSensor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v12 = a3;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Pocket state event: %d", buf, 8u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, @"State"}];
  v10 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(PLSensorAgent *)self logEventPointPocketState:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4
{
  if (a3)
  {
    [(PLSensorAgent *)self handlePocketStateManagerNotification:a4];
  }
}

@end