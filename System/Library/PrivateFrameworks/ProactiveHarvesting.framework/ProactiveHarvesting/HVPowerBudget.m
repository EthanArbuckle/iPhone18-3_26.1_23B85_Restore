@interface HVPowerBudget
+ (id)defaultBudget;
- (HVPowerBudget)init;
- (HVPowerBudget)initWithThrottleBudget:(id)a3;
- (id)throttlingState;
- (uint64_t)_canDoDiscretionaryWork:(uint64_t)a1;
- (uint64_t)_hasDuetBudgetRemaining;
- (unsigned)canDoExtraDiscretionaryWork;
- (void)dealloc;
- (void)didConsumeAnExtraBudgetedOperation;
- (void)doDiscretionaryWork:(id)a3 orElse:(id)a4;
@end

@implementation HVPowerBudget

+ (id)defaultBudget
{
  if (defaultBudget_onceToken != -1)
  {
    dispatch_once(&defaultBudget_onceToken, &__block_literal_global_115);
  }

  v3 = defaultBudget_instance;

  return v3;
}

- (uint64_t)_hasDuetBudgetRemaining
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = [MEMORY[0x277D06A30] sharedInstance];
    v2 = *MEMORY[0x277D06AB8];
    v7 = *MEMORY[0x277D06AC8];
    v8[0] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v4 = [v1 allowsDiscretionaryWorkForTask:@"com.apple.proactive.ProactiveHarvesting" withPriority:v2 withParameters:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)throttlingState
{
  v24[9] = *MEMORY[0x277D85DE8];
  v3 = [(HVPowerBudgetThrottlingState *)self->_throttlingState state];
  v21 = [v3 mutableCopy];

  v23[0] = @"isProcessing";
  v4 = MEMORY[0x277CCABB0];
  p_discretionaryWorkInProgress = &self->_discretionaryWorkInProgress;
  v6 = atomic_load(&self->_discretionaryWorkInProgress);
  v22 = [v4 numberWithBool:v6 & 1];
  v24[0] = v22;
  v23[1] = @"canDoDiscretionaryWork";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HVPowerBudget canDoDiscretionaryWork](self, "canDoDiscretionaryWork")}];
  v24[1] = v7;
  v23[2] = @"hasDuetBudgetRemaining";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:-[HVPowerBudget _hasDuetBudgetRemaining](self)];
  v24[2] = v8;
  v23[3] = @"lastPluginTime";
  v9 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_lastPlugInTime timeIntervalSince1970];
  v10 = [v9 numberWithDouble:?];
  v24[3] = v10;
  v23[4] = @"discretionaryWorkInProgress";
  v11 = MEMORY[0x277CCABB0];
  v12 = atomic_load(p_discretionaryWorkInProgress);
  v13 = [v11 numberWithBool:v12 & 1];
  v24[4] = v13;
  v23[5] = @"isConnectedToPower";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:HVIsConnectedToPower()];
  v24[5] = v14;
  v23[6] = @"disabled";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{+[HVUserDefaults harvestBudgetDisabled](HVUserDefaults, "harvestBudgetDisabled")}];
  v24[6] = v15;
  v23[7] = @"throttleBudgetDisabled";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{+[HVUserDefaults harvestBudgetThrottleBudgetDisabled](HVUserDefaults, "harvestBudgetThrottleBudgetDisabled")}];
  v24[7] = v16;
  v23[8] = @"refillDisabled";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{+[HVUserDefaults harvestBudgetRefillDisabled](HVUserDefaults, "harvestBudgetRefillDisabled")}];
  v24[8] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:9];
  [v21 addEntriesFromDictionary:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)didConsumeAnExtraBudgetedOperation
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2321EC000, log, OS_LOG_TYPE_DEFAULT, "Did consume one extra budgeted operation", v4, 2u);
  }

  if ((HVIsConnectedToPower() & 1) == 0)
  {
    [(HVPowerBudgetThrottlingState *)self->_throttlingState didConsumeAnExtraBudgetedOperation];
  }
}

- (unsigned)canDoExtraDiscretionaryWork
{
  if (HVIsConnectedToPower())
  {
    return 2;
  }

  if (!self)
  {
    return 0;
  }

  throttlingState = self->_throttlingState;

  return [(HVPowerBudgetThrottlingState *)throttlingState canDoExtraDiscretionaryWork];
}

- (void)doDiscretionaryWork:(id)a3 orElse:(id)a4
{
  v50[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v42 = 0;
  v8 = [(HVPowerBudget *)self _canDoDiscretionaryWork:?];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v42;
    v11 = log;
    if (v10 > 7)
    {
      v12 = @"Unknown reason";
    }

    else
    {
      v12 = off_278968BB0[v10];
    }

    v13 = v12;
    *buf = 67109378;
    *&buf[4] = v8 != 0;
    *&buf[8] = 2112;
    *&buf[10] = v13;
    _os_log_impl(&dword_2321EC000, v11, OS_LOG_TYPE_DEFAULT, "Can do discretionary work: %i - %@", buf, 0x12u);
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v14 = atomic_exchange(&self->_discretionaryWorkInProgress, 1u);
  v15 = self->_log;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "Discretionary work already in progress", buf, 2u);
    }

LABEL_10:
    v7[2](v7);
    goto LABEL_38;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "Starting discretionary work", buf, 2u);
  }

  v17 = +[HVUserDefaults harvestBudgetDisabled];
  v18 = MEMORY[0x277D06AC0];
  if (v17)
  {
    self->_isScheduled = 0;
  }

  else
  {
    self->_isScheduled = 1;
    v19 = objc_autoreleasePoolPush();
    scheduler = self->_scheduler;
    v50[0] = *v18;
    v21 = [MEMORY[0x277CCAC38] processInfo];
    v22 = [v21 processName];
    v49 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    *buf = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v50 count:1];
    [(_DASScheduler *)scheduler activityStartedWithParameters:v24];

    v18 = MEMORY[0x277D06AC0];
    objc_autoreleasePoolPop(v19);
  }

  [(HVPowerBudgetThrottlingState *)self->_throttlingState startWork];
  v6[2](v6);
  v25 = atomic_load(&self->_discretionaryWorkInProgress);
  if ((v25 & 1) == 0)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:sel__endWork object:self file:@"HVPowerBudget.m" lineNumber:318 description:@"Not doing discretionary work!"];
  }

  v26 = self->_log;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v26, OS_LOG_TYPE_DEFAULT, "Ending discretionary work", buf, 2u);
  }

  [(HVPowerBudgetThrottlingState *)self->_throttlingState endWork];
  if (self->_isScheduled)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self->_scheduler;
    v49 = *v18;
    v29 = [MEMORY[0x277CCAC38] processInfo];
    v30 = [v29 processName];
    v48 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v50[0] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    [(_DASScheduler *)v28 activityStoppedWithParameters:v32];

    objc_autoreleasePoolPop(v27);
    self->_isScheduled = 0;
  }

  v33 = self->_log;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    v35 = "YES";
    if ((HVIsConnectedToPower() & 1) == 0)
    {
      v35 = "YES";
      if (([(HVPowerBudget *)self _hasDuetBudgetRemaining]& 1) == 0 && !+[HVUserDefaults harvestBudgetDisabled])
      {
        v35 = "NO";
      }
    }

    if (HVIsConnectedToPower())
    {
      v36 = "YES";
    }

    else
    {
      v36 = "NO";
    }

    if (+[HVUserDefaults harvestBudgetDisabled])
    {
      v37 = "YES";
    }

    else
    {
      v37 = "NO";
    }

    hasDuetBudget = [(HVPowerBudget *)self _hasDuetBudgetRemaining];
    *buf = 136315906;
    if (hasDuetBudget)
    {
      v39 = "YES";
    }

    else
    {
      v39 = "NO";
    }

    *&buf[4] = v35;
    *&buf[12] = 2080;
    *&buf[14] = v36;
    v44 = 2080;
    v45 = v37;
    v46 = 2080;
    v47 = v39;
    _os_log_impl(&dword_2321EC000, v34, OS_LOG_TYPE_DEFAULT, "Ending Duet work; Further duet processing allowed: %s  Connected to power: %s disabled: %s Duet Budget: %s", buf, 0x2Au);
  }

  atomic_store(0, &self->_discretionaryWorkInProgress);
LABEL_38:

  v40 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_canDoDiscretionaryWork:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 8) checkBatteryStateForRefill];
  v8 = 0;
  if (canDoWorkOverrideForTesting)
  {
    v4 = 6;
    v8 = 6;
    if ([canDoWorkOverrideForTesting BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else if (+[HVUserDefaults harvestBudgetDisabled])
  {
    v4 = 6;
    v8 = 6;
    v5 = 2;
  }

  else
  {
    v5 = [*(a1 + 8) canDoDiscretionaryWork:&v8];
    v4 = v8;
    if (v5)
    {
      if (!v8)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        [v7 handleFailureInMethod:sel__checkCanDoDiscretionaryWork_ object:a1 file:@"HVPowerBudget.m" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"*state != HVPowerBudgetStateNotSet"}];
      }

      if (([(HVPowerBudget *)a1 _hasDuetBudgetRemaining]& 1) != 0)
      {
        if (v5 >= 2)
        {
          v5 = 2;
        }

        else
        {
          v5 = v5;
        }

        v4 = v8;
      }

      else
      {
        v5 = 0;
        v4 = 5;
        v8 = 5;
      }
    }
  }

  [*(a1 + 8) updateState:v4];
  if (a2)
  {
    *a2 = v8;
  }

  return v5;
}

- (void)dealloc
{
  if (self->_batteryObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_batteryObserver];
  }

  v4.receiver = self;
  v4.super_class = HVPowerBudget;
  [(HVPowerBudget *)&v4 dealloc];
}

- (HVPowerBudget)init
{
  v3 = [(HVPathsBase *)HVPaths filename:@"throttle-state"];
  v4 = [[HVPowerBudgetThrottlingState alloc] initWithPath:v3 log:self->_log];
  v5 = [(HVPowerBudget *)self initWithThrottleBudget:v4];

  return v5;
}

- (HVPowerBudget)initWithThrottleBudget:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = HVPowerBudget;
  v6 = [(HVPowerBudget *)&v18 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.suggestions", "HVPowerBudget");
    log = v6->_log;
    v6->_log = v7;

    v9 = [MEMORY[0x277D06A28] sharedScheduler];
    scheduler = v6->_scheduler;
    v6->_scheduler = v9;

    objc_storeStrong(&v6->_throttlingState, a3);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__HVPowerBudget_initWithThrottleBudget___block_invoke;
    v16[3] = &unk_278968B08;
    v12 = v6;
    v17 = v12;
    v13 = [v11 addObserverForName:@"kHVBatteryStateChangedNotification" object:0 queue:0 usingBlock:v16];
    batteryObserver = v12->_batteryObserver;
    v12->_batteryObserver = v13;
  }

  return v6;
}

uint64_t __30__HVPowerBudget_defaultBudget__block_invoke()
{
  defaultBudget_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end