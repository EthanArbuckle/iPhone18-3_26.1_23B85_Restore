@interface PLPMUMetricsAgent
+ (BOOL)isEnabled;
+ (id)buckNames;
+ (void)load;
- (PLPMUMetricsAgent)init;
- (id)getBuckNameFromProperty:(unsigned int)property;
- (void)connectToRailEnergyService;
- (void)initOperatorDependancies;
- (void)triggerRailEnergyLogging;
@end

@implementation PLPMUMetricsAgent

- (void)triggerRailEnergyLogging
{
  v3 = PLLogPMUMetrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Triggered RailEnergy logging", v6, 2u);
  }

  [(PLPMUMetricsAgent *)self connectToRailEnergyService];
  if (self->_railEnergyPMUConn)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v5 = 211;
    do
    {
      [(PLPMUMetricsAgent *)self parseAndLogRailEnergyMetrics:v5 withEntryDate:monotonicDate];
      v5 = (v5 + 1);
    }

    while (v5 != 222);
    [(PLPMUMetricsAgent *)self setLastEntryDate:monotonicDate];
  }
}

- (void)connectToRailEnergyService
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_railEnergyPMUConn)
  {
    goto LABEL_11;
  }

  v3 = IOServiceNameMatching("railenergypmu");
  if (!v3)
  {
    v8 = PLLogPMUMetrics();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v14[0]) = 0;
    v9 = "Could not find object for railenergypmu";
LABEL_16:
    v10 = v8;
    v11 = 2;
    goto LABEL_17;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v3);
  if (!MatchingService)
  {
    v8 = PLLogPMUMetrics();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v14[0]) = 0;
    v9 = "Could not find matching service for railenergypmu";
    goto LABEL_16;
  }

  v5 = MatchingService;
  v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &self->_railEnergyPMUConn);
  if (v6)
  {
    v7 = v6;
    v8 = PLLogPMUMetrics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = v7;
      v9 = "Could not create connection to railenergypmu service, ret: 0x%x";
      v10 = v8;
      v11 = 8;
LABEL_17:
      _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, v9, v14, v11);
    }

LABEL_10:

LABEL_11:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *MEMORY[0x277D85DE8];

  IOObjectRelease(v5);
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPMUMetricsAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLPMUMetricsAgent)init
{
  v6.receiver = self;
  v6.super_class = PLPMUMetricsAgent;
  v2 = [(PLAgent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    railEnergyTimer = v2->_railEnergyTimer;
    v2->_railEnergyTimer = 0;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLPMUMetricsAgent *)self setLastEntryDate:monotonicDate];

  v4 = objc_alloc(MEMORY[0x277D3F250]);
  date = [MEMORY[0x277CBEAA8] date];
  workQueue = [(PLOperator *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PLPMUMetricsAgent_initOperatorDependancies__block_invoke;
  v9[3] = &unk_278259C40;
  v9[4] = self;
  v7 = [v4 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v9 withQueue:300.0 withBlock:0.0];
  [(PLPMUMetricsAgent *)self setRailEnergyTimer:v7];

  railEnergyTimer = [(PLPMUMetricsAgent *)self railEnergyTimer];
  [railEnergyTimer arm];
}

- (id)getBuckNameFromProperty:(unsigned int)property
{
  v4 = +[PLPMUMetricsAgent buckNames];
  v5 = [v4 objectAtIndexedSubscript:property - 211];

  return v5;
}

+ (id)buckNames
{
  if (qword_2811F6D58 != -1)
  {
    dispatch_once(&qword_2811F6D58, &__block_literal_global_49_0);
  }

  v3 = qword_2811F6D50;

  return v3;
}

void __30__PLPMUMetricsAgent_buckNames__block_invoke()
{
  v0 = qword_2811F6D50;
  qword_2811F6D50 = &unk_282C16BD8;
}

+ (BOOL)isEnabled
{
  if (![MEMORY[0x277D3F208] isiPhone] || objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClass") <= 102051)
  {
    deviceBootArgs = PLLogPMUMetrics();
    if (os_log_type_enabled(deviceBootArgs, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "RailEnergy not available on this platform";
      v8 = buf;
      goto LABEL_15;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (([MEMORY[0x277D3F208] hasAOP] & 1) == 0)
  {
    deviceBootArgs = PLLogPMUMetrics();
    if (os_log_type_enabled(deviceBootArgs, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "RailEnergy not available on devices without AOP";
      v8 = &v10;
LABEL_15:
      _os_log_error_impl(&dword_21A4C6000, deviceBootArgs, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  deviceBootArgs = [MEMORY[0x277D3F258] deviceBootArgs];
  v3 = [deviceBootArgs containsString:@"rail-energy-in-pocket=0"];
  if (v3)
  {
    v4 = PLLogPMUMetrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "RailEnergy disabled in device boot-args", v9, 2u);
    }
  }

  v5 = v3 ^ 1;
LABEL_11:

  return v5;
}

@end