@interface PLHomeKitAgent
+ (id)entryAggregateDefinitionIDSPushMessageTypes;
+ (id)entryAggregateDefinitions;
+ (id)entryEventForwardDefinitionCameraConfiguration;
+ (id)entryEventForwardDefinitionHomeConfiguration;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionHomeKitAdvt;
+ (id)entryEventPointDefinitionHomeKitEvents;
+ (id)entryEventPointDefinitionHomeKitRegistration;
+ (id)entryEventPointDefinitionHomeKitSummary;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)isAllowedMessageType:(id)a3;
- (PLHomeKitAgent)init;
- (int64_t)eventTypeStringToEnum:(id)a3;
- (int64_t)registrationTypeStringToEnum:(id)a3;
- (void)initOperatorDependancies;
- (void)logAggregateIDSPushMessageTypes:(id)a3;
- (void)logEventForwardCameraConfiguration:(id)a3;
- (void)logEventForwardHomeConfiguration:(id)a3;
- (void)logEventPointHomeKitEvents:(id)a3;
- (void)logEventPointHomeKitRegistration:(id)a3;
- (void)writeAggregateCounters:(id)a3;
@end

@implementation PLHomeKitAgent

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKey:@"entry"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"Reason"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"Reason"];
        if ([v6 containsObject:@"bluetooth"])
        {
          ++*(*(a1 + 32) + 176);
          v7 = [v4 entryDate];
          [v7 timeIntervalSince1970];
          *(*(a1 + 32) + 184) = v8;

          [*(a1 + 32) writeAggregateCounters:@"btwake"];
        }
      }
    }

    else
    {
      v9 = PLLogHomeKit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "WARNING: No entry object associated with SleepWake entry", v10, 2u);
      }
    }
  }
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLHomeKitAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"HomeKitBTLE";
  v3 = [a1 entryEventPointDefinitionHomeKitAdvt];
  v11[0] = v3;
  v10[1] = @"HomeKitEvents";
  v4 = [a1 entryEventPointDefinitionHomeKitEvents];
  v11[1] = v4;
  v10[2] = @"HomeKitSummary";
  v5 = [a1 entryEventPointDefinitionHomeKitSummary];
  v11[2] = v5;
  v10[3] = @"HomeKitRegistration";
  v6 = [a1 entryEventPointDefinitionHomeKitRegistration];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionHomeKitEvents
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1BC28;
  v17[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"eventType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v15[0] = v5;
  v14[1] = @"kHMFPowerLogDeviceIdentiferKey";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v15[1] = v7;
  v14[2] = @"accessoryCategory";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionHomeKitAdvt
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1BC28;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"kHMFPowerLogEventType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"kHMFPowerLogDeviceIdentiferKey";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionHomeKitRegistration
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1BC38;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"Enabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v15[0] = v5;
  v14[1] = @"BundleID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withBundleID];
  v15[1] = v7;
  v14[2] = @"RegistrationType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionHomeKitSummary
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_282C1BC38;
  v33[1] = MEMORY[0x277CBEC28];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"numBTPushes";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v31[0] = v27;
  v30[1] = @"numConnections";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v31[1] = v25;
  v30[2] = @"numBTConnections";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v31[2] = v23;
  v30[3] = @"numIPConnections";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v31[3] = v21;
  v30[4] = @"numIPEvents";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v31[4] = v19;
  v30[5] = @"numIDSPushes";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v31[5] = v17;
  v30[6] = @"numCloudPushes";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v31[6] = v15;
  v30[7] = @"numBonjour";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v31[7] = v4;
  v30[8] = @"numBTWakeAdvt";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v31[8] = v6;
  v30[9] = @"numBTWakes";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v31[9] = v8;
  v30[10] = @"Reason";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v31[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"HomeConfiguration";
  v3 = [a1 entryEventForwardDefinitionHomeConfiguration];
  v8[1] = @"CameraConfiguration";
  v9[0] = v3;
  v4 = [a1 entryEventForwardDefinitionCameraConfiguration];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventForwardDefinitionHomeConfiguration
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v23 = *MEMORY[0x277D3F568];
  v24 = &unk_282C1BC48;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"numHomes";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v22[0] = v18;
  v21[1] = @"numNonEmptyHomes";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v22[1] = v16;
  v21[2] = @"numUsers";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v22[2] = v14;
  v21[3] = @"numHAPAccessories";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v22[3] = v3;
  v21[4] = @"numEnabledResidents";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v22[4] = v5;
  v21[5] = @"isCurrentDevicePrimaryResident";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v22[5] = v7;
  v21[6] = @"HomeHubVersion";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v22[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionCameraConfiguration
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1BC28;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"numCameras";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v20[0] = v16;
  v19[1] = @"numCamerasRecordingEnabled";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v20[1] = v14;
  v19[2] = @"numCamerasSmartBulletinNotificationEnabled";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v20[2] = v3;
  v19[3] = @"numCamerasReachabilityNotificationEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[3] = v5;
  v19[4] = @"numCamerasAnyMotionEventEnabled";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[4] = v7;
  v19[5] = @"numCamerasHSVMotionEventEnabled";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v20[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"IDSPushMessageTypes";
  v2 = [a1 entryAggregateDefinitionIDSPushMessageTypes];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryAggregateDefinitionIDSPushMessageTypes
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1BC38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v2;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"MessageType";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = @"Count";
  v20[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v24[1] = v7;
  v23[2] = *MEMORY[0x277D3F478];
  v17 = &unk_282C1BC58;
  v15 = *MEMORY[0x277D3F470];
  v16 = &unk_282C1BC68;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v24[2] = v9;
  v23[3] = *MEMORY[0x277D3F488];
  v14 = @"Count";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v24[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLHomeKitAgent)init
{
  v3.receiver = self;
  v3.super_class = PLHomeKitAgent;
  result = [(PLAgent *)&v3 init];
  if (result)
  {
    result->_numBTPushes = 0;
    result->_numConnections = 0;
    result->_numPrevBTPushes = 0;
    result->_numPrevConnections = 0;
    result->_numBTConnections = 0;
    result->_numIPConnections = 0;
    result->_numBonjour = 0;
    result->_numIPEvents = 0;
    result->_numIDSPushes = 0;
    result->_numCloudPushes = 0;
    result->_numBTWakeAdvt = 0;
    result->_numBTWakes = 0;
    result->_lastapwake = 0.0;
    result->_enablelog = 0;
    result->_numaggregatelines = 0;
    result->_numBTlines = 0;
  }

  return result;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke;
  v32[3] = &unk_27825A1D8;
  v32[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C16F00 withBlock:v32];
  homeKitEventsListener = self->_homeKitEventsListener;
  self->_homeKitEventsListener = v4;

  v6 = objc_alloc(MEMORY[0x277D3F270]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_308;
  v31[3] = &unk_27825A1D8;
  v31[4] = self;
  v7 = [v6 initWithOperator:self withRegistration:&unk_282C16F28 withBlock:v31];
  homeConfigurationListener = self->_homeConfigurationListener;
  self->_homeConfigurationListener = v7;

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_313;
  v30[3] = &unk_27825A1D8;
  v30[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C16F50 withBlock:v30];
  cameraConfigurationListener = self->_cameraConfigurationListener;
  self->_cameraConfigurationListener = v10;

  v12 = objc_alloc(MEMORY[0x277D3F270]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_318;
  v29[3] = &unk_27825A1D8;
  v29[4] = self;
  v13 = [v12 initWithOperator:self withRegistration:&unk_282C16F78 withBlock:v29];
  homeKitRegistrationListener = self->_homeKitRegistrationListener;
  self->_homeKitRegistrationListener = v13;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_320;
  v28[3] = &unk_2782597E8;
  v28[4] = self;
  v15 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v28];
  sbcLevelChanged = self->_sbcLevelChanged;
  self->_sbcLevelChanged = v15;

  v17 = objc_alloc(MEMORY[0x277D3F1A8]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_2;
  v27[3] = &unk_2782597E8;
  v27[4] = self;
  v18 = [v17 initWithOperator:self forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withBlock:v27];
  [(PLHomeKitAgent *)self setDeviceWake:v18];
  [(PLOperator *)self defaultDoubleForKey:@"RunTimeAggregatorTimerCadence"];
  v20 = v19;
  v21 = objc_alloc(MEMORY[0x277D3F250]);
  v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v20];
  v23 = [(PLOperator *)self workQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_339;
  v26[3] = &unk_278259C40;
  v26[4] = self;
  v24 = [v21 initWithFireDate:v22 withInterval:1 withTolerance:0 repeats:v23 withUserInfo:v26 withQueue:v20 withBlock:0.0];
  runTimeAggregatorTimer = self->_runTimeAggregatorTimer;
  self->_runTimeAggregatorTimer = v24;
}

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHomeKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HomeKitEvent callback for PLHomeKitAgent_EventPoint_HomeKitEvents: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointHomeKitEvents:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHomeKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HomeConfiguration payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardHomeConfiguration:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_313(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHomeKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CameraConfiguration payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardCameraConfiguration:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHomeKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HomeKitRegistration payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointHomeKitRegistration:v6];
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_339(uint64_t result)
{
  *(*(result + 32) + 216) = 0;
  *(*(result + 32) + 224) = 0;
  return result;
}

- (int64_t)eventTypeStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HomeKit BLE Advertisement"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HomeKit Connection"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HomeKit IDS Push"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HomeKit Cloud Push"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HomeKit IP Event"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"HomeKit Loxy Event"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"HomeKit Bonjour"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"HomeKit Disconnection"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)registrationTypeStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HomeKit Remote Reachability Registration Event"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HomeKit Characteristic Registration Event"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAllowedMessageType:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"HMDFetchHomeDataMessage", @"RemoteEventRouterRequestMessage", @"kModifyCharacterisiticNotificationsRequestKey", @"HMDHouseholdMetricsHomeDataLogEventRequest", @"kEnableAccessoryReachabilityNotificationRequestKey", @"kDisableAccessoryReachabilityNotificationRequestKey", @"kPingInternalRequestKey", @"RemoteEventRouterUpdateMessageName", @"primaryResidentDiscovery", @"kMultipleCharacteristicReadRequestKey", @"kCharacterisiticsChangedInternalNotificationKey", @"kRemoteReachabilityChangedNotificationKey", @"kDeviceMeshUpdateKey", @"kMultipleCharacteristicWriteRequestKey", @"kDeviceMeshUpdateRequestKey", @"mesh.requestCapabilities", @"kHomeLocationUpdatedNotificationKey", @"kElectDeviceForIDSSessionKey", @"kEventTriggerUserPermissionRemoveDialogKey", @"mesh.currentPrimaryUpdate", @"kTakeSnapshotRemoteRequestKey", @"kCurrentHomeChangedNotificationKey", @"mesh.meshInformationRequest", @"HMDRemotePersonDataMessengerPerformCloudPullMessage", @"kTakeSnapshotRemoteReceivedKey", @"HMDMAR.RouteMediaAction", @"HMDUCM.rRepr", @"kStartRecordingSessionRequestKey", @"HMDRemoteCameraReachabilityDidChangeMessage", @"kNegotitateRemoteStreamRequestKey", @"kStopRemoteStreamRequestKey", @"HMAccessoryFetchManagedConfigurationProfilesMessage", @"kStreamStoppedRemoteNotificationKey", @"HMDCloudShareInviteMessage", @"HMDCloudShareRequestInviteMessage", @"kStartRemoteStreamRequestKey", @"HMDMediaProfileSetPowerRequestKey", @"HMDCameraAnalysisStatePublisherStateUpdateMessage", @"kSetAppDataRequestKey", @"kTakeSnapshotSendFailedNotificationKey", @"kRenameAccessoryRequestKey", @"kUpdateRoomForAccessoryRequestKey", @"kMediaPropertiesReadRequestKey", @"kPredicateEvaluatePredicateRequestKey", @"HMDUCM.rsr", @"kReconfigureRemoteStreamRequestKey", @"kRenameServiceRequestKey", @"HMAccessorySettingsUpdateRequestMessage", @"kRemoveAccessoryRequestKey", @"kHomeDataFragmentedSyncRequestKey", @"kSecureClientIDSMessageRequestKey", @"kRemoveTriggerRequestKey", @"HMDHomeQueryResidentReachabilityForAccessoriesMessageKey", @"kRequestForCompanionKeysSyncInternalRequestKey", @"HMDHomeCHIPSendReportMessage", @"HMAccessoryFetchCHIPPairingsMessage", @"kAddRoomRequestKey", @"kSetAssociatedServiceTypeRequestKey", @"HMAccessorySettingsFetchRequestMessage", @"HMDHomeResolveLockNotificationContextIdentifierMessage", @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessage"}];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)logEventPointHomeKitEvents:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kHMFPowerLogEventType"];
  v6 = [(PLHomeKitAgent *)self eventTypeStringToEnum:v5];
  if (v6 == 2)
  {
    v7 = [v4 objectForKeyedSubscript:@"kHMFPowerLogLinkTypeKey"];
    if ([v7 isEqualToString:@"HomeKitLinkTypeBluetoothLE"])
    {
      v6 = 8;
    }

    else if ([v7 isEqualToString:@"HomeKitLinkTypeIP"])
    {
      v6 = 9;
    }

    else
    {
      v6 = 2;
    }
  }

  v8 = PLLogHomeKit();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Logging for type HomeKit %@\n", buf, 0xCu);
  }

  if (!self->_enablelog)
  {
    self->_enablelog = 1;
  }

  v9 = *MEMORY[0x277D3F5E8];
  v10 = [(PLOperator *)PLHomeKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HomeKitEvents"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = [v4 objectForKeyedSubscript:@"accessoryCategory"];
  [v11 setObject:v12 forKeyedSubscript:@"accessoryCategory"];

  v13 = [v4 objectForKeyedSubscript:@"kHMFPowerLogDeviceIdentiferKey"];
  [v11 setObject:v13 forKeyedSubscript:@"kHMFPowerLogDeviceIdentiferKey"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  [v11 setObject:v14 forKeyedSubscript:@"eventType"];

  if (v6 == 3)
  {
    v15 = [v4 objectForKeyedSubscript:@"kHMFPowerLogMessageTypeKey"];
    if (v15)
    {
      v16 = v15;
      if (![(PLHomeKitAgent *)self isAllowedMessageType:v15])
      {
        v17 = PLLogHomeKit();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@ is not an allowed Message Type, changing to 'Unknown'", buf, 0xCu);
        }

        v16 = @"Unknown";
      }

      v29[0] = @"MessageType";
      v29[1] = @"Count";
      v30[0] = v16;
      v30[1] = &unk_282C0D0B0;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      v19 = PLLogHomeKit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Got callback for IDSPushMessageTypes: %@", buf, 0xCu);
      }

      [(PLHomeKitAgent *)self logAggregateIDSPushMessageTypes:v18];
    }
  }

  [(PLOperator *)self logEntry:v11];
  if ([(__CFString *)v5 isEqualToString:@"HomeKit BLE Advertisement"])
  {
    v20 = [(PLOperator *)PLHomeKitAgent entryKeyForType:v9 andName:@"HomeKitBTLE"];
    v21 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v20 withRawData:v4];
    v22 = [v21 entryDate];
    [v22 timeIntervalSince1970];
    v24 = v23;

    ++self->_numBTPushes;
    if (self->_lastapwake + 2.0 >= v24)
    {
      ++self->_numBTWakeAdvt;
    }

    v25 = self->_numBTlines + 1;
    self->_numBTlines = v25;
    if (v25 <= 0xA)
    {
      [(PLOperator *)self logEntry:v21];
    }

    goto LABEL_27;
  }

  if ([(__CFString *)v5 isEqualToString:@"HomeKit IP Event"])
  {
    v26 = 144;
LABEL_30:
    ++*(&self->super.super.super.isa + v26);
    goto LABEL_31;
  }

  if (![(__CFString *)v5 isEqualToString:@"HomeKit Connection"])
  {
    if ([(__CFString *)v5 isEqualToString:@"HomeKit Cloud Push"])
    {
      v26 = 160;
    }

    else if ([(__CFString *)v5 isEqualToString:@"HomeKit IDS Push"])
    {
      v26 = 152;
    }

    else
    {
      if (![(__CFString *)v5 isEqualToString:@"HomeKit Bonjour"])
      {
        goto LABEL_31;
      }

      v26 = 136;
    }

    goto LABEL_30;
  }

  v28 = &OBJC_IVAR___PLHomeKitAgent__numBTConnections;
  ++self->_numConnections;
  v20 = [v4 objectForKeyedSubscript:@"kHMFPowerLogLinkTypeKey"];
  if ([v20 isEqualToString:@"HomeKitLinkTypeBluetoothLE"])
  {
    goto LABEL_36;
  }

  if ([v20 isEqualToString:@"HomeKitLinkTypeIP"])
  {
    v28 = &OBJC_IVAR___PLHomeKitAgent__numIPConnections;
LABEL_36:
    ++*(&self->super.super.super.isa + *v28);
  }

LABEL_27:

LABEL_31:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointHomeKitRegistration:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kHMFPowerLogEventType"];
  v6 = [(PLHomeKitAgent *)self registrationTypeStringToEnum:v5];

  v11 = [(PLOperator *)PLHomeKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HomeKitRegistration"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11 withRawData:v4];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  [v7 setObject:v8 forKeyedSubscript:@"RegistrationType"];

  v9 = [v4 objectForKeyedSubscript:@"kHMFPowerLogClientIdentifierKey"];
  [v7 setObject:v9 forKeyedSubscript:@"BundleID"];

  v10 = [v4 objectForKeyedSubscript:@"kHMFPowerLogEnabledKey"];

  [v7 setObject:v10 forKeyedSubscript:@"Enabled"];
  [(PLOperator *)self logEntry:v7];
}

- (void)writeAggregateCounters:(id)a3
{
  v28[11] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLHomeKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HomeKitSummary"];
  if (self->_enablelog)
  {
    v19 = [v4 isEqualToString:@"btwake"];
    v25 = v5;
    v26 = v4;
    if (v19)
    {
      v20 = 0;
      v6 = 1;
    }

    else
    {
      v20 = [v4 isEqualToString:@"sbc"];
      if (v20)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    v27[0] = @"numBTPushes";
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:{self->_numBTPushes, 88}];
    v28[0] = v24;
    v27[1] = @"numConnections";
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numConnections];
    v28[1] = v23;
    v27[2] = @"numBTConnections";
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numBTConnections];
    v28[2] = v22;
    v27[3] = @"numIPConnections";
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numIPConnections];
    v28[3] = v21;
    v27[4] = @"numIPEvents";
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numIPEvents];
    v28[4] = v7;
    v27[5] = @"numIDSPushes";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numIDSPushes];
    v28[5] = v8;
    v27[6] = @"numCloudPushes";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numCloudPushes];
    v28[6] = v9;
    v27[7] = @"numBonjour";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numBonjour];
    v28[7] = v10;
    v27[8] = @"numBTWakeAdvt";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numBTWakeAdvt];
    v28[8] = v11;
    v27[9] = @"numBTWakes";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numBTWakes];
    v28[9] = v12;
    v27[10] = @"Reason";
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v28[10] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:11];

    v5 = v25;
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v25 withRawData:v14];
    v16 = self->_numaggregatelines + 1;
    self->_numaggregatelines = v16;
    if (v16 <= 0x1D)
    {
      if (v20)
      {
        [(PLOperator *)self logEntry:v15];
      }

      else if (v19 && *(&self->super.super.super.isa + v18) > self->_numPrevBTPushes)
      {
        [(PLOperator *)self logEntry:v15];
        self->_numPrevBTPushes = *(&self->super.super.super.isa + v18);
      }
    }

    v4 = v26;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardHomeConfiguration:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v9 = [(PLOperator *)PLHomeKitAgent entryKeyForType:v4 andName:@"HomeConfiguration"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"isCurrentDeviceHH2Enabled"];

  LODWORD(v5) = [v7 isEqual:MEMORY[0x277CBEC38]];
  if (v5)
  {
    v8 = &unk_282C0D0C8;
  }

  else
  {
    v8 = &unk_282C0D0B0;
  }

  [v6 setObject:v8 forKeyedSubscript:@"HomeHubVersion"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardCameraConfiguration:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLHomeKitAgent entryKeyForType:v4 andName:@"CameraConfiguration"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateIDSPushMessageTypes:(id)a3
{
  v4 = *MEMORY[0x277D3F5B8];
  v5 = a3;
  v7 = [(PLOperator *)PLHomeKitAgent entryKeyForType:v4 andName:@"IDSPushMessageTypes"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

@end