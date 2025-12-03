@interface PLThermalMonitorService
+ (void)load;
- (PLThermalMonitorService)init;
- (id)handlePowerHUDCallback:(id)callback;
- (id)handleSysdiagnoseCallback:(id)callback;
- (void)handleSMCCallback:(id)callback;
- (void)initOperatorDependancies;
- (void)performLogging:(id)logging;
- (void)performLoggingWithCadence:(int)cadence withDate:(id)date;
@end

@implementation PLThermalMonitorService

void __51__PLThermalMonitorService_initOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogThermal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Received ThermalChangeNotification from SMC Agent: %@", &v6, 0xCu);
  }

  [*(a1 + 32) handleSMCCallback:v3];
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLThermalMonitorService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLThermalMonitorService)init
{
  v3.receiver = self;
  v3.super_class = PLThermalMonitorService;
  return [(PLOperator *)&v3 init];
}

- (void)initOperatorDependancies
{
  [(PLThermalMonitorService *)self setSustainedStartDate:0];
  [(PLThermalMonitorService *)self setLastSMCThermalTrigger:0];
  v3 = objc_alloc(MEMORY[0x277D3F1F0]);
  v4 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__PLThermalMonitorService_initOperatorDependancies__block_invoke;
  v17[3] = &unk_2782597E8;
  v17[4] = self;
  v5 = [v3 initWithWorkQueue:v4 forNotification:@"ThermalEntryNotification" withBlock:v17];
  thermalNotification = self->_thermalNotification;
  self->_thermalNotification = v5;

  v7 = objc_alloc(MEMORY[0x277D3F278]);
  workQueue = [(PLOperator *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__PLThermalMonitorService_initOperatorDependancies__block_invoke_30;
  v16[3] = &unk_278259810;
  v16[4] = self;
  v9 = [v7 initWithWorkQueue:workQueue withRegistration:&unk_282C16C80 withBlock:v16];
  sysdiagnoseResponder = self->_sysdiagnoseResponder;
  self->_sysdiagnoseResponder = v9;

  v11 = objc_alloc(MEMORY[0x277D3F278]);
  workQueue2 = [(PLOperator *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__PLThermalMonitorService_initOperatorDependancies__block_invoke_41;
  v15[3] = &unk_278259810;
  v15[4] = self;
  v13 = [v11 initWithWorkQueue:workQueue2 withRegistration:&unk_282C16CA8 withBlock:v15];
  powerHUDResponder = self->_powerHUDResponder;
  self->_powerHUDResponder = v13;
}

- (void)performLoggingWithCadence:(int)cadence withDate:(id)date
{
  dateCopy = date;
  lastSMCThermalTrigger = [(PLThermalMonitorService *)self lastSMCThermalTrigger];

  if (!lastSMCThermalTrigger)
  {
    [(PLThermalMonitorService *)self setLastSMCThermalTrigger:dateCopy];
    v12 = &unk_282C16CD0;
LABEL_8:
    [(PLThermalMonitorService *)self performLogging:v12];
    goto LABEL_9;
  }

  lastSMCThermalTrigger2 = [(PLThermalMonitorService *)self lastSMCThermalTrigger];
  [lastSMCThermalTrigger2 timeIntervalSinceDate:dateCopy];
  v10 = fabs(v9);

  if (v10 >= cadence)
  {
    [(PLThermalMonitorService *)self setLastSMCThermalTrigger:dateCopy];
    v12 = &unk_282C16CF8;
    goto LABEL_8;
  }

  v11 = PLLogThermal();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "Too frequent thermal triggers, not notifying submodules", v13, 2u);
  }

LABEL_9:
}

- (void)handleSMCCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [MEMORY[0x277D3F180] BOOLForKey:@"EnableSMCNotification" ifNotSet:1];
  if (callbackCopy && v5)
  {
    v6 = [callbackCopy objectForKeyedSubscript:@"timestamp"];
    if (![MEMORY[0x277D3F208] isiPhone] || !_os_feature_enabled_impl())
    {
      v10 = [callbackCopy objectForKeyedSubscript:@"mTPL"];
      if (v10)
      {
        v11 = v10;
        v12 = [callbackCopy objectForKeyedSubscript:@"mTPL"];
        integerValue = [v12 integerValue];

        if (integerValue >= 1)
        {
          [(PLThermalMonitorService *)self performLoggingWithCadence:40 withDate:v6];
        }
      }

      goto LABEL_42;
    }

    v7 = [callbackCopy objectForKeyedSubscript:@"TVMx"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [callbackCopy objectForKeyedSubscript:@"TVRM"];
    }

    v14 = v9;

    v15 = [callbackCopy objectForKeyedSubscript:@"xDPE"];
    v16 = v15;
    if (v14)
    {
      [v14 doubleValue];
      v18 = v17 <= 35.0;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v18 = 1;
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    [v16 doubleValue];
    v20 = v19 < 2.3 || v18;
    if ((v20 & 1) == 0)
    {
      sustainedStartDate = [(PLThermalMonitorService *)self sustainedStartDate];

      if (!sustainedStartDate)
      {
        [(PLThermalMonitorService *)self setSustainedStartDate:v6];
      }

      sustainedStartDate2 = [(PLThermalMonitorService *)self sustainedStartDate];
      [sustainedStartDate2 timeIntervalSinceDate:v6];
      v34 = fabs(v33);

      v35 = PLLogThermal();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
      if (v34 < 40.0)
      {
        if (v36)
        {
          *v39 = 0;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "high Power not sustained", v39, 2u);
        }

        goto LABEL_41;
      }

      if (v36)
      {
        *v40 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "Increase logging if we are in high power and high thermal condition", v40, 2u);
      }

      selfCopy2 = self;
      v28 = 60;
      goto LABEL_40;
    }

LABEL_19:
    v21 = [callbackCopy objectForKeyedSubscript:@"mTPL"];
    if (!v21 || (v22 = v21, [callbackCopy objectForKeyedSubscript:@"mTPL"], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "integerValue"), v23, v22, v24 < 1))
    {
      sustainedStartDate3 = [(PLThermalMonitorService *)self sustainedStartDate];

      if (sustainedStartDate3)
      {
        [(PLThermalMonitorService *)self setSustainedStartDate:0];
      }

      v30 = PLLogThermal();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *v37 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "We are not in a thermal region, no logging expected ", v37, 2u);
      }

      goto LABEL_41;
    }

    sustainedStartDate4 = [(PLThermalMonitorService *)self sustainedStartDate];

    if (sustainedStartDate4)
    {
      [(PLThermalMonitorService *)self setSustainedStartDate:0];
    }

    v26 = PLLogThermal();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Increase logging if we are in thermal pressure regardless of power", buf, 2u);
    }

    selfCopy2 = self;
    v28 = 300;
LABEL_40:
    [(PLThermalMonitorService *)selfCopy2 performLoggingWithCadence:v28 withDate:v6];
LABEL_41:

LABEL_42:
  }
}

- (id)handleSysdiagnoseCallback:(id)callback
{
  v10 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = PLLogThermal();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = callbackCopy;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Received event from Sysdiagnose: %@", &v8, 0xCu);
  }

  [(PLThermalMonitorService *)self performLogging:&unk_282C16D20];
  v6 = *MEMORY[0x277D85DE8];
  return &unk_282C16D48;
}

- (id)handlePowerHUDCallback:(id)callback
{
  v10 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = PLLogThermal();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = callbackCopy;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Received event from PowerHUD: %@", &v8, 0xCu);
  }

  [(PLThermalMonitorService *)self performLogging:&unk_282C16D70];
  v6 = *MEMORY[0x277D85DE8];
  return &unk_282C16D98;
}

- (void)performLogging:(id)logging
{
  v9 = *MEMORY[0x277D85DE8];
  loggingCopy = logging;
  v5 = PLLogThermal();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = loggingCopy;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "Sent notification to submodules: %{public}@", &v7, 0xCu);
  }

  [MEMORY[0x277D3F258] postNotificationName:@"PLThermalMonitorNotification" object:self userInfo:loggingCopy];
  v6 = *MEMORY[0x277D85DE8];
}

@end