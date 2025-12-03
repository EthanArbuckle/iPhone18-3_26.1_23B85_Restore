@interface PLAggregateUsageService
+ (void)load;
- (PLAggregateUsageService)init;
- (int)numIntervalsToFill;
- (void)handleAudioStateChange:(id)change;
- (void)handleChargingChange:(id)change;
- (void)handleConnectedChange:(id)change;
- (void)handleExternalConnectedChange:(id)change;
- (void)handleLargeTimeGap;
- (void)handleLockStateChange:(id)change;
- (void)initOperatorDependancies;
- (void)initializeMetrics;
- (void)instantiateMetrics;
- (void)registerForEntryNotifications;
- (void)scheduleSubmissionAfter:(unint64_t)after;
- (void)submitMetricsToAggd;
- (void)updateSampledMetrics;
@end

@implementation PLAggregateUsageService

- (void)submitMetricsToAggd
{
  numIntervalsToFill = [(PLAggregateUsageService *)self numIntervalsToFill];
  if (numIntervalsToFill >= 1)
  {
    v4 = numIntervalsToFill;
    do
    {
      if (v4 == 1)
      {
        [(PLAggregateUsageService *)self updateSampledMetrics];
      }

      intervalData = [(PLAggregateUsageService *)self intervalData];
      [intervalData submitIntervalData];

      --v4;
    }

    while (v4);
  }
}

- (int)numIntervalsToFill
{
  v30 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  intervalData = [(PLAggregateUsageService *)self intervalData];
  currentInterval = [intervalData currentInterval];
  [date timeIntervalSinceDate:currentInterval];
  v7 = v6;

  if (v7 < 0)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __45__PLAggregateUsageService_numIntervalsToFill__block_invoke;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v17;
    if (qword_2811F4F58 != -1)
    {
      dispatch_once(&qword_2811F4F58, v27);
    }

    if (byte_2811F4EB6 != 1)
    {
LABEL_22:
      LODWORD(v8) = 0;
      goto LABEL_23;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intervals to fill = 0"];
    v18 = MEMORY[0x277D3F178];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
    lastPathComponent = [v19 lastPathComponent];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService numIntervalsToFill]"];
    [v18 logMessage:v11 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:724];

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    LODWORD(v8) = 0;
    goto LABEL_21;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PLAggregateUsageService_numIntervalsToFill__block_invoke_307;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F4F60 != -1)
  {
    dispatch_once(&qword_2811F4F60, block);
  }

  v8 = (v7 / *&qword_2811F4F68 + 1);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __45__PLAggregateUsageService_numIntervalsToFill__block_invoke_2;
  v25[3] = &unk_2782591D0;
  v25[4] = self;
  if (qword_2811F4F70 != -1)
  {
    dispatch_once(&qword_2811F4F70, v25);
  }

  v9 = 86400.0 / *&qword_2811F4F78;
  if (86400.0 / *&qword_2811F4F78 < v8)
  {
    [(PLAggregateUsageService *)self handleLargeTimeGap];
    v8 = 0;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__PLAggregateUsageService_numIntervalsToFill__block_invoke_3;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v10;
    if (qword_2811F4F80 != -1)
    {
      dispatch_once(&qword_2811F4F80, v24);
    }

    if (byte_2811F4EB7 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intervals to fill = %d", v8];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
      lastPathComponent2 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService numIntervalsToFill]"];
      [v12 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:732];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_21:
    }
  }

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAggregateUsageService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAggregateUsageService)init
{
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "nonUIBuild"))
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLAggregateUsageService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  [(PLAggregateUsageService *)self instantiateMetrics];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = v4;

  [(PLOperator *)self defaultDoubleForKey:@"IntervalDuration"];
  v7 = v6 + v5 / v6 * v6 - v5;
  v8 = v6 + v5 / v6 * v6;
  intervalData = [(PLAggregateUsageService *)self intervalData];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
  [intervalData setCurrentInterval:v10];

  [(PLAggregateUsageService *)self initializeMetrics];
  [(PLAggregateUsageService *)self registerForEntryNotifications];

  [(PLAggregateUsageService *)self scheduleSubmissionAfter:v7];
}

- (void)instantiateMetrics
{
  v3 = objc_alloc_init(PLIntervalData);
  intervalData = self->_intervalData;
  self->_intervalData = v3;

  v5 = self->_intervalData;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PLAggregateUsageService_instantiateMetrics__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F4EE0 != -1)
  {
    dispatch_once(&qword_2811F4EE0, block);
  }

  [(PLIntervalData *)v5 setIntervalDuration:*&qword_2811F4EE8];
  v6 = self->_intervalData;
  v7 = [[PLMetric alloc] initWithKey:@"ScreenOnDuration" withPosition:1 withNumBits:3 withDefault:0 andType:0];
  [(PLIntervalData *)v6 addMetric:v7];

  v8 = self->_intervalData;
  v9 = [[PLMetric alloc] initWithKey:@"WakeDuration" withPosition:4 withNumBits:3 withDefault:0 andType:0];
  [(PLIntervalData *)v8 addMetric:v9];

  v10 = self->_intervalData;
  v11 = [[PLMetric alloc] initWithKey:@"AudioOnDuration" withPosition:7 withNumBits:3 withDefault:0 andType:0];
  [(PLIntervalData *)v10 addMetric:v11];

  v12 = self->_intervalData;
  v13 = [[PLMetric alloc] initWithKey:@"ConnectedState" withPosition:17 withNumBits:1 withDefault:0 andType:1];
  [(PLIntervalData *)v12 addMetric:v13];

  v14 = self->_intervalData;
  v15 = [[PLMetric alloc] initWithKey:@"ChargingState" withPosition:18 withNumBits:1 withDefault:0 andType:1];
  [(PLIntervalData *)v14 addMetric:v15];

  v16 = self->_intervalData;
  v17 = [[PLMetric alloc] initWithKey:@"AdapterType" withPosition:19 withNumBits:3 withDefault:0 andType:1];
  [(PLIntervalData *)v16 addMetric:v17];

  v18 = self->_intervalData;
  v19 = [[PLMetric alloc] initWithKey:@"ChargerCurrent" withPosition:22 withNumBits:5 withDefault:0 andType:1];
  [(PLIntervalData *)v18 addMetric:v19];

  v20 = self->_intervalData;
  v21 = [[PLMetric alloc] initWithKey:@"ChargerVoltage" withPosition:27 withNumBits:5 withDefault:0 andType:1];
  [(PLIntervalData *)v20 addMetric:v21];

  v22 = self->_intervalData;
  v23 = [[PLMetric alloc] initWithKey:@"LockState" withPosition:32 withNumBits:1 withDefault:0 andType:1];
  [(PLIntervalData *)v22 addMetric:v23];

  v24 = self->_intervalData;
  v25 = [[PLMetric alloc] initWithKey:@"BatteryLevel" withPosition:10 withNumBits:7 withDefault:127 andType:2];
  [(PLIntervalData *)v24 addMetric:v25];

  v26 = self->_intervalData;
  v27 = [[PLMetric alloc] initWithKey:@"PowerlogInit" withPosition:0 withNumBits:1 withDefault:0 andType:2];
  [(PLIntervalData *)v26 addMetric:v27];

  v28 = self->_intervalData;
  v29 = [[PLMetric alloc] initWithKey:@"BatteryTemperature" withPosition:33 withNumBits:4 withDefault:1000 andType:2];
  [(PLIntervalData *)v28 addMetric:v29];
}

uint64_t __45__PLAggregateUsageService_instantiateMetrics__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"IntervalDuration"];
  qword_2811F4EE8 = v2;
  return result;
}

- (void)initializeMetrics
{
  v3 = *MEMORY[0x277D3F5D0];
  v4 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"PowerState"];
  storage = [(PLOperator *)self storage];
  v6 = [storage lastEntryForKey:v4];

  if (v6)
  {
    v7 = MEMORY[0x277CBEAA8];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLAggregateUsageService_initializeMetrics__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    if (qword_2811F4EF0 != -1)
    {
      dispatch_once(&qword_2811F4EF0, block);
    }

    v8 = -*&qword_2811F4EF8;
    intervalData = [(PLAggregateUsageService *)self intervalData];
    currentInterval = [intervalData currentInterval];
    v11 = [v7 dateWithTimeInterval:currentInterval sinceDate:v8];

    v12 = [v6 objectForKeyedSubscript:@"State"];
    v13 = [v12 intValue] == 0;

    intervalData2 = [(PLAggregateUsageService *)self intervalData];
    [intervalData2 updateMetric:@"WakeDuration" withTimestamp:v11 forEvent:v13 withValue:0xFFFFFFFFLL];
  }

  v15 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];
  storage2 = [(PLOperator *)self storage];
  v17 = [storage2 lastEntryForKey:v15];

  if (v17)
  {
    intervalData3 = [(PLAggregateUsageService *)self intervalData];
    v19 = [v17 objectForKeyedSubscript:@"Level"];
    [intervalData3 updateMetric:@"BatteryLevel" withTimestamp:0 forEvent:1 withValue:{objc_msgSend(v19, "intValue")}];

    intervalData4 = [(PLAggregateUsageService *)self intervalData];
    v21 = [v17 objectForKeyedSubscript:@"Temperature"];
    [intervalData4 updateMetric:@"BatteryTemperature" withTimestamp:0 forEvent:1 withValue:{objc_msgSend(v21, "intValue")}];
  }

  v22 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:v3 andName:@"SBLock"];
  storage3 = [(PLOperator *)self storage];
  v24 = [storage3 lastEntryForKey:v22];

  if (v24)
  {
    v25 = [v24 objectForKeyedSubscript:@"Locked"];
    v37 = v17;
    v26 = v6;
    bOOLValue = [v25 BOOLValue];
    intervalData5 = [(PLAggregateUsageService *)self intervalData];
    [v24 entryDate];
    v29 = v36 = self;
    [v29 convertFromMonotonicToSystem];
    v30 = v15;
    v32 = v31 = v4;
    bOOLValue2 = [v25 BOOLValue];
    v34 = bOOLValue ^ 1u;
    v6 = v26;
    v17 = v37;
    [intervalData5 updateMetric:@"LockState" withTimestamp:v32 forEvent:v34 withValue:bOOLValue2 ^ 1u];

    v4 = v31;
    v15 = v30;

    self = v36;
  }

  intervalData6 = [(PLAggregateUsageService *)self intervalData];
  [intervalData6 updateMetric:@"PowerlogInit" withTimestamp:0 forEvent:1 withValue:1];
}

uint64_t __44__PLAggregateUsageService_initializeMetrics__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"IntervalDuration"];
  qword_2811F4EF8 = v2;
  return result;
}

- (void)registerForEntryNotifications
{
  v59[1] = *MEMORY[0x277D85DE8];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke;
  v43[3] = &unk_2782597E8;
  v43[4] = self;
  v3 = [MEMORY[0x277D3F1A8] displayOnNotificationWithOperator:self withBlock:v43];
  [(PLAggregateUsageService *)self setDisplayOnNotification:v3];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke_2;
  v42[3] = &unk_2782597E8;
  v42[4] = self;
  v4 = [MEMORY[0x277D3F1A8] displayOffNotificationWithOperator:self withBlock:v42];
  [(PLAggregateUsageService *)self setDisplayOffNotification:v4];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke_3;
  v41[3] = &unk_2782597E8;
  v41[4] = self;
  v5 = [MEMORY[0x277D3F1A8] wakeEntryNotificationWithOperator:self withBlock:v41];
  [(PLAggregateUsageService *)self setWakeEntryNotification:v5];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke_4;
  v40[3] = &unk_2782597E8;
  v40[4] = self;
  v6 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v40];
  [(PLAggregateUsageService *)self setSleepEntryNotification:v6];

  v7 = *MEMORY[0x277D3F5D0];
  v34 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Routing"];
  v8 = objc_alloc(MEMORY[0x277D3F1A8]);
  v58 = @"Active";
  v56 = &unk_282C11B98;
  null = [MEMORY[0x277CBEB68] null];
  v57 = null;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v59[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke_230;
  v39[3] = &unk_2782597E8;
  v39[4] = self;
  v12 = [v8 initWithOperator:self forEntryKey:v34 withFilter:v11 withBlock:v39];
  [(PLAggregateUsageService *)self setAudioEntryNotification:v12];

  v33 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:v7 andName:@"SBLock"];
  v13 = objc_alloc(MEMORY[0x277D3F1A8]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke_2_231;
  v38[3] = &unk_2782597E8;
  v38[4] = self;
  v14 = [v13 initWithOperator:self forEntryKey:v33 withBlock:v38];
  [(PLAggregateUsageService *)self setLockStateEntryNotification:v14];

  v32 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ChargingInfo"];
  v15 = objc_alloc(MEMORY[0x277D3F1A8]);
  v54 = @"Connected";
  v52 = &unk_282C11B98;
  null2 = [MEMORY[0x277CBEB68] null];
  v53 = null2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v55 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke_3_235;
  v37[3] = &unk_2782597E8;
  v37[4] = self;
  v19 = [v15 initWithOperator:self forEntryKey:v32 withFilter:v18 withBlock:v37];
  [(PLAggregateUsageService *)self setChargingEntryNotification:v19];

  v20 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];
  v21 = objc_alloc(MEMORY[0x277D3F1A8]);
  v50 = @"IsCharging";
  v48 = &unk_282C11B98;
  null3 = [MEMORY[0x277CBEB68] null];
  v49 = null3;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v51 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke_4_239;
  v36[3] = &unk_2782597E8;
  v36[4] = self;
  v25 = [v21 initWithOperator:self forEntryKey:v20 withFilter:v24 withBlock:v36];
  [(PLAggregateUsageService *)self setBatteryIsChargingEntryNotification:v25];

  v26 = objc_alloc(MEMORY[0x277D3F1A8]);
  v46 = @"ExternalConnected";
  v44 = &unk_282C11B98;
  null4 = [MEMORY[0x277CBEB68] null];
  v45 = null4;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v47 = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __56__PLAggregateUsageService_registerForEntryNotifications__block_invoke_5;
  v35[3] = &unk_2782597E8;
  v35[4] = self;
  v30 = [v26 initWithOperator:self forEntryKey:v20 withFilter:v29 withBlock:v35];
  [(PLAggregateUsageService *)self setBatteryExternalConnectedEntryNotification:v30];

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __61__PLAggregateUsageService_handleScreenStateChange_withState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EAD = result;
  return result;
}

uint64_t __59__PLAggregateUsageService_handleWakeStateChange_withState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EAE = result;
  return result;
}

- (void)handleAudioStateChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(PLAggregateUsageService *)self submitMetricsToAggd];
  v5 = [changeCopy objectForKey:@"entry"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"Active"];
    bOOLValue = [v6 BOOLValue];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __50__PLAggregateUsageService_handleAudioStateChange___block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v8;
      if (qword_2811F4F10 != -1)
      {
        dispatch_once(&qword_2811F4F10, &block);
      }

      if (byte_2811F4EAF == 1)
      {
        v9 = @"OFF";
        if (bOOLValue)
        {
          v9 = @"ON";
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handle audio %@", v9, block, v21, v22, v23, v24];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService handleAudioStateChange:]"];
        [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:609];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v10;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    intervalData = [(PLAggregateUsageService *)self intervalData];
    entryDate = [v5 entryDate];
    convertFromMonotonicToSystem = [entryDate convertFromMonotonicToSystem];
    [intervalData updateMetric:@"AudioOnDuration" withTimestamp:convertFromMonotonicToSystem forEvent:bOOLValue withValue:0xFFFFFFFFLL];
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLAggregateUsageService_handleAudioStateChange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EAF = result;
  return result;
}

- (void)handleLockStateChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(PLAggregateUsageService *)self submitMetricsToAggd];
  v5 = [changeCopy objectForKey:@"entry"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"Locked"];
    bOOLValue = [v6 BOOLValue];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __49__PLAggregateUsageService_handleLockStateChange___block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v8;
      if (qword_2811F4F18 != -1)
      {
        dispatch_once(&qword_2811F4F18, &block);
      }

      if (byte_2811F4EB0 == 1)
      {
        v9 = @"Unlock";
        if (bOOLValue)
        {
          v9 = @"Lock";
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handle device %@", v9, block, v21, v22, v23, v24];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService handleLockStateChange:]"];
        [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:621];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v10;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    intervalData = [(PLAggregateUsageService *)self intervalData];
    entryDate = [v5 entryDate];
    convertFromMonotonicToSystem = [entryDate convertFromMonotonicToSystem];
    [intervalData updateMetric:@"LockState" withTimestamp:convertFromMonotonicToSystem forEvent:bOOLValue ^ 1u withValue:bOOLValue ^ 1u];
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLAggregateUsageService_handleLockStateChange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EB0 = result;
  return result;
}

- (void)handleConnectedChange:(id)change
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(PLAggregateUsageService *)self submitMetricsToAggd];
  v5 = [changeCopy objectForKey:@"entry"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"Connected"];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __49__PLAggregateUsageService_handleConnectedChange___block_invoke;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v7;
      if (qword_2811F4F20 != -1)
      {
        dispatch_once(&qword_2811F4F20, &block);
      }

      if (byte_2811F4EB1 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handle charger change: %@", v6, block, v20, v21, v22, v23];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService handleConnectedChange:]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:632];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (([v6 intValue] & 0x80000000) == 0)
    {
      bOOLValue = [v6 BOOLValue];
      intervalData = [(PLAggregateUsageService *)self intervalData];
      entryDate = [v5 entryDate];
      convertFromMonotonicToSystem = [entryDate convertFromMonotonicToSystem];
      [intervalData updateMetric:@"AdapterType" withTimestamp:convertFromMonotonicToSystem forEvent:bOOLValue withValue:{objc_msgSend(v6, "intValue")}];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLAggregateUsageService_handleConnectedChange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EB1 = result;
  return result;
}

- (void)handleChargingChange:(id)change
{
  v37 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(PLAggregateUsageService *)self submitMetricsToAggd];
  v5 = [changeCopy objectForKey:@"entry"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"IsCharging"];
    bOOLValue = [v6 BOOLValue];

    v8 = [v5 objectForKeyedSubscript:@"Amperage"];
    intValue = [v8 intValue];

    v10 = [v5 objectForKeyedSubscript:@"AdapterVoltage"];
    intValue2 = [v10 intValue];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __48__PLAggregateUsageService_handleChargingChange___block_invoke;
      v33 = &__block_descriptor_40_e5_v8__0lu32l8;
      v34 = v12;
      if (qword_2811F4F28 != -1)
      {
        dispatch_once(&qword_2811F4F28, &block);
      }

      if (byte_2811F4EB2 == 1)
      {
        v13 = @"Stop";
        if (bOOLValue)
        {
          v13 = @"Start";
        }

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handle charging: %@ Current: %d, Voltage: %d", v13, intValue, intValue2, block, v31, v32, v33, v34];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
        lastPathComponent = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService handleChargingChange:]"];
        [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:649];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v36 = v14;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    intervalData = [(PLAggregateUsageService *)self intervalData];
    entryDate = [v5 entryDate];
    convertFromMonotonicToSystem = [entryDate convertFromMonotonicToSystem];
    [intervalData updateMetric:@"ChargingState" withTimestamp:convertFromMonotonicToSystem forEvent:bOOLValue withValue:bOOLValue];

    intervalData2 = [(PLAggregateUsageService *)self intervalData];
    entryDate2 = [v5 entryDate];
    convertFromMonotonicToSystem2 = [entryDate2 convertFromMonotonicToSystem];
    [intervalData2 updateMetric:@"ChargerCurrent" withTimestamp:convertFromMonotonicToSystem2 forEvent:bOOLValue withValue:intValue];

    intervalData3 = [(PLAggregateUsageService *)self intervalData];
    entryDate3 = [v5 entryDate];
    convertFromMonotonicToSystem3 = [entryDate3 convertFromMonotonicToSystem];
    [intervalData3 updateMetric:@"ChargerVoltage" withTimestamp:convertFromMonotonicToSystem3 forEvent:bOOLValue withValue:intValue2];
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLAggregateUsageService_handleChargingChange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EB2 = result;
  return result;
}

- (void)handleExternalConnectedChange:(id)change
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(PLAggregateUsageService *)self submitMetricsToAggd];
  v5 = [changeCopy objectForKey:@"entry"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"ExternalConnected"];
    bOOLValue = [v6 BOOLValue];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __57__PLAggregateUsageService_handleExternalConnectedChange___block_invoke;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v8;
      if (qword_2811F4F30 != -1)
      {
        dispatch_once(&qword_2811F4F30, &block);
      }

      if (byte_2811F4EB3 == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handle external connected change: %d", bOOLValue, block, v20, v21, v22, v23];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService handleExternalConnectedChange:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:663];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    intervalData = [(PLAggregateUsageService *)self intervalData];
    entryDate = [v5 entryDate];
    convertFromMonotonicToSystem = [entryDate convertFromMonotonicToSystem];
    [intervalData updateMetric:@"ConnectedState" withTimestamp:convertFromMonotonicToSystem forEvent:bOOLValue withValue:bOOLValue];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PLAggregateUsageService_handleExternalConnectedChange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EB3 = result;
  return result;
}

- (void)scheduleSubmissionAfter:(unint64_t)after
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = dispatch_walltime(0, 1000000000 * after);
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PLAggregateUsageService_scheduleSubmissionAfter___block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_after(v4, workQueue, block);

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__PLAggregateUsageService_scheduleSubmissionAfter___block_invoke_2_299;
    v16[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v16[4] = v6;
    if (qword_2811F4F50 != -1)
    {
      dispatch_once(&qword_2811F4F50, v16);
    }

    if (byte_2811F4EB5 == 1)
    {
      v7 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      v9 = [v7 stringWithFormat:@"Scheduled submission at %@!", date];

      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService scheduleSubmissionAfter:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:683];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __51__PLAggregateUsageService_scheduleSubmissionAfter___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__PLAggregateUsageService_scheduleSubmissionAfter___block_invoke_2;
    v18[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v18[4] = v3;
    if (qword_2811F4F38 != -1)
    {
      dispatch_once(&qword_2811F4F38, v18);
    }

    if (byte_2811F4EB4 == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [MEMORY[0x277CBEAA8] date];
      v6 = [v4 stringWithFormat:@"Submit metrics triggered at %@!", v5];

      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAggregateUsageService scheduleSubmissionAfter:]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:673];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) submitMetricsToAggd];
  v12 = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSince1970];
  v14 = v13;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PLAggregateUsageService_scheduleSubmissionAfter___block_invoke_298;
  block[3] = &unk_2782591D0;
  block[4] = *(a1 + 32);
  if (qword_2811F4F40 != -1)
  {
    dispatch_once(&qword_2811F4F40, block);
  }

  result = [*(a1 + 32) scheduleSubmissionAfter:*&qword_2811F4F48 + v14 / *&qword_2811F4F48 * *&qword_2811F4F48 - v14];
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __51__PLAggregateUsageService_scheduleSubmissionAfter___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EB4 = result;
  return result;
}

uint64_t __51__PLAggregateUsageService_scheduleSubmissionAfter___block_invoke_298(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"IntervalDuration"];
  qword_2811F4F48 = v2;
  return result;
}

uint64_t __51__PLAggregateUsageService_scheduleSubmissionAfter___block_invoke_2_299(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EB5 = result;
  return result;
}

- (void)updateSampledMetrics
{
  v20 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];
  storage = [(PLOperator *)self storage];
  v4 = [storage lastEntryForKey:v20];

  if (v4)
  {
    intervalData = [(PLAggregateUsageService *)self intervalData];
    v6 = [v4 objectForKeyedSubscript:@"Level"];
    [intervalData updateMetric:@"BatteryLevel" withTimestamp:0 forEvent:1 withValue:{objc_msgSend(v6, "intValue")}];

    intervalData2 = [(PLAggregateUsageService *)self intervalData];
    v8 = [v4 objectForKeyedSubscript:@"Temperature"];
    [intervalData2 updateMetric:@"BatteryTemperature" withTimestamp:0 forEvent:1 withValue:{objc_msgSend(v8, "intValue")}];

    v9 = [v4 objectForKeyedSubscript:@"IsCharging"];
    LODWORD(v8) = [v9 BOOLValue];

    if (v8)
    {
      v10 = [v4 objectForKeyedSubscript:@"Amperage"];
      intValue = [v10 intValue];

      intervalData3 = [(PLAggregateUsageService *)self intervalData];
      entryDate = [v4 entryDate];
      convertFromMonotonicToSystem = [entryDate convertFromMonotonicToSystem];
      [intervalData3 updateMetric:@"ChargerCurrent" withTimestamp:convertFromMonotonicToSystem forEvent:1 withValue:intValue];

      v15 = [v4 objectForKeyedSubscript:@"AdapterVoltage"];
      intValue2 = [v15 intValue];

      intervalData4 = [(PLAggregateUsageService *)self intervalData];
      entryDate2 = [v4 entryDate];
      convertFromMonotonicToSystem2 = [entryDate2 convertFromMonotonicToSystem];
      [intervalData4 updateMetric:@"ChargerVoltage" withTimestamp:convertFromMonotonicToSystem2 forEvent:1 withValue:intValue2];
    }
  }
}

uint64_t __45__PLAggregateUsageService_numIntervalsToFill__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EB6 = result;
  return result;
}

uint64_t __45__PLAggregateUsageService_numIntervalsToFill__block_invoke_307(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"IntervalDuration"];
  qword_2811F4F68 = v2;
  return result;
}

uint64_t __45__PLAggregateUsageService_numIntervalsToFill__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"IntervalDuration"];
  qword_2811F4F78 = v2;
  return result;
}

uint64_t __45__PLAggregateUsageService_numIntervalsToFill__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EB7 = result;
  return result;
}

- (void)handleLargeTimeGap
{
  intervalData = [(PLAggregateUsageService *)self intervalData];
  [intervalData resetMetrics];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v6 = v5;

  [(PLOperator *)self defaultDoubleForKey:@"IntervalDuration"];
  v8 = v7 + v6 / v7 * v7;
  intervalData2 = [(PLAggregateUsageService *)self intervalData];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
  [intervalData2 setCurrentInterval:v9];
}

@end