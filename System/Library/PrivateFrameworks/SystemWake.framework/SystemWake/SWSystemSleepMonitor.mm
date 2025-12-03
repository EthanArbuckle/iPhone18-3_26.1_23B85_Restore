@interface SWSystemSleepMonitor
+ (id)monitorUsingMainQueue;
- (BOOL)hasSleepBeenRequested;
- (BOOL)isAwakeOrAbortingSleep;
- (BOOL)isSleepImminent;
- (NSString)description;
- (SWSystemSleepMonitor)initWithIdentifier:(id)identifier queue:(id)queue;
- (SWSystemSleepMonitor)initWithIdentifier:(id)identifier queue:(id)queue allowsInvalidation:(BOOL)invalidation monitorProvider:(id)provider sleepAssertionProvider:(id)assertionProvider activeSystemActivityRegistry:(id)registry;
- (SWSystemSleepMonitorAggregateState)aggregateState;
- (id)observersRespondingToSelector:(uint64_t)selector;
- (void)_lock_setSleepSlateAbortingSleepForSystemActivity;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)invalidate;
- (void)observersOfSelector:(void *)selector performObserverBlock:(void *)block completion:;
- (void)removeObserver:(id)observer;
- (void)setSleepSlate:(uint64_t)slate forPowerManagementNotificationID:(uint64_t)d notificationTimestamp:(__CFString *)timestamp;
- (void)setSleepSlate:(uint64_t)slate powerManagementPhase:(uint64_t)phase notificationID:;
- (void)systemActivityRegistryCountDidDecrementToZero:(id)zero;
- (void)systemActivityRegistryCountDidIncrementToOne:(id)one;
- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d;
@end

@implementation SWSystemSleepMonitor

+ (id)monitorUsingMainQueue
{
  if (qword_280D3F8E8 != -1)
  {
    dispatch_once(&qword_280D3F8E8, &__block_literal_global);
  }

  v3 = _MergedGlobals;

  return v3;
}

- (BOOL)isAwakeOrAbortingSleep
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state < 3;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isSleepImminent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state > 3;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasSleepBeenRequested
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state > 2;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

void __45__SWSystemSleepMonitor_monitorUsingMainQueue__block_invoke()
{
  v0 = [SWSystemSleepMonitor alloc];
  v1 = MEMORY[0x277D85CD0];
  v2 = objc_alloc_init(SWSystemSleepMonitorProvider);
  v3 = +[SWSystemSleepAssertionProvider sharedProvider];
  v4 = +[SWActiveSystemActivityRegistry sharedRegistry];
  v5 = [(SWSystemSleepMonitor *)v0 initWithIdentifier:@"SWSystemSleepMonitor-mainQueue" queue:MEMORY[0x277D85CD0] allowsInvalidation:0 monitorProvider:v2 sleepAssertionProvider:v3 activeSystemActivityRegistry:v4];
  v6 = _MergedGlobals;
  _MergedGlobals = v5;

  v7 = MEMORY[0x277D85CD0];
}

- (SWSystemSleepMonitor)initWithIdentifier:(id)identifier queue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v8 = objc_alloc_init(SWSystemSleepMonitorProvider);
  v9 = +[SWSystemSleepAssertionProvider sharedProvider];
  v10 = +[SWActiveSystemActivityRegistry sharedRegistry];
  v11 = [(SWSystemSleepMonitor *)self initWithIdentifier:identifierCopy queue:queueCopy allowsInvalidation:1 monitorProvider:v8 sleepAssertionProvider:v9 activeSystemActivityRegistry:v10];

  return v11;
}

- (SWSystemSleepMonitor)initWithIdentifier:(id)identifier queue:(id)queue allowsInvalidation:(BOOL)invalidation monitorProvider:(id)provider sleepAssertionProvider:(id)assertionProvider activeSystemActivityRegistry:(id)registry
{
  identifierCopy = identifier;
  queueCopy = queue;
  providerCopy = provider;
  assertionProviderCopy = assertionProvider;
  registryCopy = registry;
  v29.receiver = self;
  v29.super_class = SWSystemSleepMonitor;
  v17 = [(SWSystemSleepMonitor *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    v18->_allowsInvalidation = invalidation;
    objc_storeStrong(&v18->_queue, queue);
    v18->_lock._os_unfair_lock_opaque = 0;
    v19 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    lock_observers = v18->_lock_observers;
    v18->_lock_observers = v19;

    objc_storeStrong(&v18->_sleepAssertionProvider, assertionProvider);
    objc_storeStrong(&v18->_monitorProvider, provider);
    objc_storeStrong(&v18->_activeSystemActivityRegistry, registry);
    [(SWActiveSystemActivityRegistry *)v18->_activeSystemActivityRegistry addObserver:v18];
    [providerCopy registerForSystemPowerOnQueue:queueCopy withDelegate:v18];
    objc_initWeak(&location, v18);
    objc_copyWeak(&v27, &location);
    v21 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandler = v18->_stateCaptureHandler;
    v18->_stateCaptureHandler = v21;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v18;
}

id __136__SWSystemSleepMonitor_initWithIdentifier_queue_allowsInvalidation_monitorProvider_sleepAssertionProvider_activeSystemActivityRegistry___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(SWActiveSystemActivityRegistry *)self->_activeSystemActivityRegistry removeObserver:self];
  [(BSInvalidatable *)self->_stateCaptureHandler invalidate];
  v3.receiver = self;
  v3.super_class = SWSystemSleepMonitor;
  [(SWSystemSleepMonitor *)&v3 dealloc];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  mach_continuous_time();
  v4 = self->_lock_state - 1;
  if (v4 > 4)
  {
    v5 = @"waking";
  }

  else
  {
    v5 = off_279D43230[v4];
  }

  [v3 appendString:v5 withName:@"state"];
  lock_stateTimestamp = self->_lock_stateTimestamp;
  BSTimeDifferenceFromMachTimeToMachTime();
  v7 = [v3 appendTimeInterval:@"elapsedState" withName:1 decomposeUnits:?];
  v8 = __ROR8__(self->_lock_powerManagementPhase - 3758097008u, 4);
  if (v8 > 0xB)
  {
    v9 = @"initialized";
  }

  else
  {
    v9 = off_279D43258[v8];
  }

  [v3 appendString:v9 withName:@"phase"];
  powerManagementPhaseTimestamp = self->_powerManagementPhaseTimestamp;
  BSTimeDifferenceFromMachTimeToMachTime();
  v11 = [v3 appendTimeInterval:@"elapsedPhase" withName:1 decomposeUnits:?];
  v12 = self->_lock_systemActivityAbortSleepPhase - 1;
  if (v12 > 2)
  {
    v13 = @"idle";
  }

  else
  {
    v13 = off_279D431F8[v12];
  }

  [v3 appendString:v13 withName:@"systemActivityAborting"];
  v14 = [v3 appendUnsignedInteger:-[NSHashTable count](self->_lock_observers withName:{"count"), @"observerCount"}];
  os_unfair_lock_unlock(&self->_lock);
  build = [v3 build];

  return build;
}

- (void)systemActivityRegistryCountDidIncrementToOne:(id)one
{
  v45 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_systemActivitiesAreActive = 1;
  if (self->_lock_systemActivityAbortSleepPhase > 1)
  {
    v4 = SWLogPower();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = self->_lock_state - 1;
      if (v5 > 4)
      {
        v6 = @"waking";
      }

      else
      {
        v6 = off_279D43230[v5];
      }

      lock_stateTimestamp = self->_lock_stateTimestamp;
      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      v23 = v22;
      lock_powerManagementPhase = self->_lock_powerManagementPhase;
      v25 = __ROR8__(lock_powerManagementPhase - 3758097008u, 4);
      if (v25 > 0xB)
      {
        v26 = @"initialized";
      }

      else
      {
        v26 = off_279D43258[v25];
      }

      powerManagementPhaseTimestamp = self->_powerManagementPhaseTimestamp;
      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      v29 = self->_lock_systemActivityAbortSleepPhase - 1;
      if (v29 > 2)
      {
        v30 = @"idle";
      }

      else
      {
        v30 = off_279D431F8[v29];
      }

      v31 = 134219522;
      selfCopy2 = self;
      v33 = 2114;
      v34 = v6;
      v35 = 2048;
      v36 = v23;
      v37 = 2114;
      v38 = v26;
      v39 = 1024;
      v40 = lock_powerManagementPhase;
      v41 = 2048;
      v42 = v28;
      v43 = 2114;
      v44 = v30;
      _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p state:%{public}@ elapsed:%.3lfs phase:%{public}@(%u) elapsedPhase:%.3lfs systemActivityAborting:%{public}@", &v31, 0x44u);
    }

LABEL_18:

    goto LABEL_19;
  }

  self->_lock_systemActivityAbortSleepPhase = 2;
  if (self->_lock_state < 3)
  {
    mach_continuous_time();
    v7 = self->_powerManagementPhaseTimestamp;
    BSTimeDifferenceFromMachTimeToMachTime();
    v9 = v8;
    v10 = self->_lock_stateTimestamp;
    BSTimeDifferenceFromMachTimeToMachTime();
    v12 = v11;
    v4 = SWLogPower();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13 = self->_lock_state - 1;
      if (v13 > 4)
      {
        v14 = @"waking";
      }

      else
      {
        v14 = off_279D43230[v13];
      }

      v15 = self->_lock_powerManagementPhase;
      v16 = __ROR8__(v15 - 3758097008u, 4);
      if (v16 > 0xB)
      {
        v17 = @"initialized";
      }

      else
      {
        v17 = off_279D43258[v16];
      }

      v18 = self->_lock_systemActivityAbortSleepPhase - 1;
      if (v18 > 2)
      {
        v19 = @"idle";
      }

      else
      {
        v19 = off_279D431F8[v18];
      }

      v31 = 134219522;
      selfCopy2 = self;
      v33 = 2114;
      v34 = v14;
      v35 = 2048;
      v36 = v12;
      v37 = 2114;
      v38 = v17;
      v39 = 1024;
      v40 = v15;
      v41 = 2048;
      v42 = v9;
      v43 = 2114;
      v44 = v19;
      _os_log_impl(&dword_26C657000, v4, OS_LOG_TYPE_INFO, "%p state:%{public}@ elapsed:%.3lfs phase:%{public}@(%u) elapsedPhase:%.3lfs systemActivityAborting:%{public}@", &v31, 0x44u);
    }

    goto LABEL_18;
  }

  [(SWSystemSleepMonitor *)self _lock_setSleepSlateAbortingSleepForSystemActivity];
LABEL_19:
  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_lock_setSleepSlateAbortingSleepForSystemActivity
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = mach_continuous_time();
    v3 = self[11];
    v4 = SWLogPower();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ((v3 - 1) > 4)
      {
        v5 = @"waking";
      }

      else
      {
        v5 = off_279D43230[v3 - 1];
      }

      v6 = self[9];
      BSTimeDifferenceFromMachTimeToMachTime();
      v8 = self[14] - 1;
      if (v8 > 2)
      {
        v9 = @"idle";
      }

      else
      {
        v9 = off_279D431F8[v8];
      }

      v11 = 134219010;
      selfCopy = self;
      v13 = 2114;
      v14 = v5;
      v15 = 2114;
      v16 = @"abortingSleep";
      v17 = 2048;
      v18 = v7;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEFAULT, "%p state:%{public}@->%{public}@ elapsed:%.3lfs systemActivityAborting:%{public}@->aborting", &v11, 0x34u);
    }

    self[11] = 2;
    self[9] = v2;
    self[14] = 3;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)systemActivityRegistryCountDidDecrementToZero:(id)zero
{
  v38 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_systemActivityAbortSleepPhase = self->_lock_systemActivityAbortSleepPhase;
  self->_lock_systemActivitiesAreActive = 0;
  v5 = lock_systemActivityAbortSleepPhase - 1;
  if (lock_systemActivityAbortSleepPhase - 1 <= 1)
  {
    self->_lock_systemActivityAbortSleepPhase = 0;
  }

  v6 = SWLogPower();
  v7 = 2 * (lock_systemActivityAbortSleepPhase == 0);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = self->_lock_state - 1;
    if (v8 > 4)
    {
      v9 = @"waking";
    }

    else
    {
      v9 = off_279D43230[v8];
    }

    lock_stateTimestamp = self->_lock_stateTimestamp;
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v12 = v11;
    lock_powerManagementPhase = self->_lock_powerManagementPhase;
    v14 = __ROR8__(lock_powerManagementPhase - 3758097008u, 4);
    if (v14 > 0xB)
    {
      v15 = @"initialized";
    }

    else
    {
      v15 = off_279D43258[v14];
    }

    powerManagementPhaseTimestamp = self->_powerManagementPhaseTimestamp;
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    if (v5 > 2)
    {
      v18 = @"idle";
    }

    else
    {
      v18 = off_279D431F8[v5];
    }

    v19 = self->_lock_systemActivityAbortSleepPhase - 1;
    if (v19 > 2)
    {
      v20 = @"idle";
    }

    else
    {
      v20 = off_279D431F8[v19];
    }

    v22 = 134219778;
    selfCopy = self;
    v24 = 2114;
    v25 = v9;
    v26 = 2048;
    v27 = v12;
    v28 = 2114;
    v29 = v15;
    v30 = 1024;
    v31 = lock_powerManagementPhase;
    v32 = 2048;
    v33 = v17;
    v34 = 2114;
    v35 = v18;
    v36 = 2114;
    v37 = v20;
    _os_log_impl(&dword_26C657000, v6, v7, "%p (zero active system activities) state:%{public}@ elapsed:%.3lfs phase:%{public}@(%u) elapsedPhase:%.3lfs systemActivityAborting:%{public}@->%{public}@", &v22, 0x4Eu);
  }

  os_unfair_lock_unlock(&self->_lock);
  v21 = *MEMORY[0x277D85DE8];
}

- (SWSystemSleepMonitorAggregateState)aggregateState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [[SWSystemSleepMonitorAggregateState alloc] initWithSleepMonitorState:self->_lock_state stateTimestamp:self->_lock_stateTimestamp powerManagementPhase:self->_lock_powerManagementPhase phaseTimestamp:self->_powerManagementPhaseTimestamp];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)invalidate
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_allowsInvalidation)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_allowsInvalidation"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"SWSystemSleepMonitor.m";
      v20 = 1024;
      v21 = 203;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C6594B4);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(SWSystemSleepMonitorProviding *)self->_monitorProvider invalidate];
  monitorProvider = self->_monitorProvider;
  self->_monitorProvider = 0;

  [(SWActiveSystemActivityRegistry *)self->_activeSystemActivityRegistry removeObserver:self];
  activeSystemActivityRegistry = self->_activeSystemActivityRegistry;
  self->_activeSystemActivityRegistry = 0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSleepSlate:(uint64_t)slate powerManagementPhase:(uint64_t)phase notificationID:
{
  v70 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_79;
  }

  os_unfair_lock_lock((self + 40));
  v8 = mach_continuous_time();
  v9 = *(self + 80);
  BSTimeDifferenceFromMachTimeToMachTime();
  v11 = v10;
  v12 = *(self + 72);
  BSTimeDifferenceFromMachTimeToMachTime();
  v14 = v13;
  v15 = *(self + 88);
  v16 = *(self + 96);
  v17 = *(self + 112);
  if (!v17)
  {
    v20 = SWLogPower();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = __ROR8__(slate - 3758097008, 4);
      if (v21 > 0xB)
      {
        v22 = @"initialized";
      }

      else
      {
        v22 = off_279D43258[v21];
      }

      v25 = __ROR8__(v16 - 3758097008, 4);
      if (v25 > 0xB)
      {
        v26 = @"initialized";
      }

      else
      {
        v26 = off_279D43258[v25];
      }

      if ((v15 - 1) > 4)
      {
        v27 = @"waking";
      }

      else
      {
        v27 = off_279D43230[v15 - 1];
      }

      if ((a2 - 1) > 3)
      {
        v28 = @"waking";
      }

      else
      {
        v28 = off_279D431D8[a2 - 1];
      }

      *buf = 134220290;
      selfCopy3 = self;
      v55 = 2114;
      v56 = v22;
      v57 = 1024;
      *v58 = slate;
      *&v58[4] = 2114;
      *&v58[6] = v26;
      *&v58[14] = 1024;
      *&v58[16] = v16;
      *v59 = 2048;
      *&v59[2] = v11;
      *&v59[10] = 2114;
      *&v59[12] = v27;
      v60 = 2114;
      v61 = v28;
      v62 = 2048;
      v63 = v14;
      v64 = 2048;
      phaseCopy3 = phase;
      _os_log_impl(&dword_26C657000, v20, OS_LOG_TYPE_DEFAULT, "%p systemPowerChanged:%{public}@(%u) previous:%{public}@(%u) elapsedPhase:%.3lfs state:%{public}@->%{public}@ elapsedState:%.3lfs notificationID:%ld", buf, 0x5Eu);
    }

    v18 = 0;
    goto LABEL_74;
  }

  v18 = 0;
  if (slate <= 3758097039)
  {
    if (slate != 3758097008 && slate != 3758097024)
    {
      if (!slate)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"powerManagementPhase != SWSystemSleepPowerManagementPhaseInitialized"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v30 = NSStringFromSelector(sel_setSleepSlate_powerManagementPhase_notificationID_);
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138544642;
          selfCopy3 = v30;
          v55 = 2114;
          v56 = v32;
          v57 = 2048;
          *v58 = self;
          *&v58[8] = 2114;
          *&v58[10] = @"SWSystemSleepMonitor.m";
          *&v58[18] = 1024;
          *v59 = 229;
          *&v59[4] = 2114;
          *&v59[6] = v29;
          _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v33 = v29;
        [v29 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x26C6598ACLL);
      }

      goto LABEL_42;
    }

    if (v17 >= 2)
    {
      if (v17 != 2)
      {
        v18 = 0;
        if (v15 == 2)
        {
          a2 = 2;
        }

        goto LABEL_42;
      }

      v18 = 1;
      v19 = 2;
      goto LABEL_20;
    }

    v19 = 0;
  }

  else
  {
    if (slate != 3758097040 && slate != 3758097152 && slate != 3758097184)
    {
      goto LABEL_42;
    }

    if (v17 != 3)
    {
      v18 = 0;
      goto LABEL_42;
    }

    v19 = 1;
  }

  v18 = 0;
  *(self + 112) = v19;
LABEL_20:
  if (v19 != v17)
  {
    v20 = SWLogPower();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = __ROR8__(slate - 3758097008, 4);
      if (v23 > 0xB)
      {
        v24 = @"initialized";
      }

      else
      {
        v24 = off_279D43258[v23];
      }

      v45 = __ROR8__(v16 - 3758097008, 4);
      if (v45 > 0xB)
      {
        v46 = @"initialized";
      }

      else
      {
        v46 = off_279D43258[v45];
      }

      if ((v15 - 1) > 4)
      {
        v47 = @"waking";
      }

      else
      {
        v47 = off_279D43230[v15 - 1];
      }

      if ((a2 - 1) > 3)
      {
        v48 = @"waking";
      }

      else
      {
        v48 = off_279D431D8[a2 - 1];
      }

      v49 = off_279D431F8[v17 - 1];
      v50 = *(self + 112) - 1;
      if (v50 > 2)
      {
        v51 = @"idle";
      }

      else
      {
        v51 = off_279D431F8[v50];
      }

      *buf = 134220802;
      selfCopy3 = self;
      v55 = 2114;
      v56 = v24;
      v57 = 1024;
      *v58 = slate;
      *&v58[4] = 2114;
      *&v58[6] = v46;
      *&v58[14] = 1024;
      *&v58[16] = v16;
      *v59 = 2048;
      *&v59[2] = v11;
      *&v59[10] = 2114;
      *&v59[12] = v47;
      v60 = 2114;
      v61 = v48;
      v62 = 2048;
      v63 = v14;
      v64 = 2048;
      phaseCopy3 = phase;
      v66 = 2114;
      v67 = v49;
      v68 = 2114;
      v69 = v51;
      v42 = "%p systemPowerChanged:%{public}@(%u) previous:%{public}@(%u) elapsedPhase:%.3lfs state:%{public}@->%{public}@ elapsedState:%.3lfs notificationID:%ld systemActivityAborting:%{public}@->%{public}@";
      v43 = v20;
      v44 = 114;
LABEL_73:
      _os_log_impl(&dword_26C657000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
      goto LABEL_74;
    }

    goto LABEL_74;
  }

LABEL_42:
  v20 = SWLogPower();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v34 = __ROR8__(slate - 3758097008, 4);
    if (v34 > 0xB)
    {
      v35 = @"initialized";
    }

    else
    {
      v35 = off_279D43258[v34];
    }

    v36 = __ROR8__(v16 - 3758097008, 4);
    if (v36 > 0xB)
    {
      v37 = @"initialized";
    }

    else
    {
      v37 = off_279D43258[v36];
    }

    if ((v15 - 1) > 4)
    {
      v38 = @"waking";
    }

    else
    {
      v38 = off_279D43230[v15 - 1];
    }

    if ((a2 - 1) > 3)
    {
      v39 = @"waking";
    }

    else
    {
      v39 = off_279D431D8[a2 - 1];
    }

    v40 = *(self + 112) - 1;
    if (v40 > 2)
    {
      v41 = @"idle";
    }

    else
    {
      v41 = off_279D431F8[v40];
    }

    *buf = 134220546;
    selfCopy3 = self;
    v55 = 2114;
    v56 = v35;
    v57 = 1024;
    *v58 = slate;
    *&v58[4] = 2114;
    *&v58[6] = v37;
    *&v58[14] = 1024;
    *&v58[16] = v16;
    *v59 = 2048;
    *&v59[2] = v11;
    *&v59[10] = 2114;
    *&v59[12] = v38;
    v60 = 2114;
    v61 = v39;
    v62 = 2048;
    v63 = v14;
    v64 = 2048;
    phaseCopy3 = phase;
    v66 = 2114;
    v67 = v41;
    v42 = "%p systemPowerChanged:%{public}@(%u) previous:%{public}@(%u) elapsedPhase:%.3lfs state:%{public}@->%{public}@ elapsedState:%.3lfs notificationID:%ld systemActivityAborting:%{public}@";
    v43 = v20;
    v44 = 104;
    goto LABEL_73;
  }

LABEL_74:

  *(self + 96) = slate;
  *(self + 104) = phase;
  if (a2 != v15)
  {
    *(self + 88) = a2;
    *(self + 72) = v8;
  }

  *(self + 80) = v8;
  if (v18)
  {
    [(SWSystemSleepMonitor *)self _lock_setSleepSlateAbortingSleepForSystemActivity];
  }

  os_unfair_lock_unlock((self + 40));
LABEL_79:
  v52 = *MEMORY[0x277D85DE8];
}

- (void)setSleepSlate:(uint64_t)slate forPowerManagementNotificationID:(uint64_t)d notificationTimestamp:(__CFString *)timestamp
{
  v43 = *MEMORY[0x277D85DE8];
  if (slate)
  {
    os_unfair_lock_lock((slate + 40));
    v6 = mach_continuous_time();
    v7 = *(slate + 72);
    BSTimeDifferenceFromMachTimeToMachTime();
    v9 = v8;
    BSTimeDifferenceFromMachTimeToMachTime();
    v11 = v10;
    v12 = *(slate + 88);
    v14 = *(slate + 104);
    v13 = *(slate + 112);
    if (v14 == timestamp)
    {
      v15 = SWLogPower();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v13 != 3)
      {
        if (v16)
        {
          if ((v12 - 1) > 4)
          {
            v19 = @"waking";
          }

          else
          {
            v19 = off_279D43230[v12 - 1];
          }

          v20 = off_279D43210[d - 2];
          v21 = @"idle";
          if (v13 == 1)
          {
            v21 = @"aborted";
          }

          if (v13 == 2)
          {
            v21 = @"pending";
          }

          v22 = v21;
          v27 = 134219266;
          slateCopy3 = slate;
          v29 = 2114;
          v30 = v19;
          v31 = 2114;
          timestampCopy3 = v20;
          v33 = 2048;
          v34 = v9;
          v35 = 2048;
          v36 = v11;
          v37 = 2114;
          v38 = v22;
          _os_log_impl(&dword_26C657000, v15, OS_LOG_TYPE_DEFAULT, "%p state:%{public}@->%{public}@ elapsed:%.3lfs(%.3lfs) systemActivityAborting:%{public}@", &v27, 0x3Eu);
        }

        *(slate + 88) = d;
        *(slate + 72) = v6;
        goto LABEL_22;
      }

      if (v16)
      {
        v17 = off_279D43210[d - 2];
        if ((v12 - 1) > 4)
        {
          v18 = @"waking";
        }

        else
        {
          v18 = off_279D43230[v12 - 1];
        }

        v27 = 134219778;
        slateCopy3 = slate;
        v29 = 2114;
        v30 = v17;
        v31 = 2048;
        timestampCopy3 = timestamp;
        v33 = 2048;
        v34 = v11;
        v35 = 2114;
        v36 = v18;
        v37 = 2048;
        v38 = v9;
        v39 = 2048;
        timestampCopy2 = timestamp;
        v41 = 2114;
        v42 = @"aborting";
        _os_log_impl(&dword_26C657000, v15, OS_LOG_TYPE_DEFAULT, "%p obsolete request to update to state:%{public}@ forID:%ld elapsed:%.3lfs – currentState:%{public}@ elapsed:%.3lfs currentID:%ld systemActivityAborting:%{public}@", &v27, 0x52u);
      }
    }

    else
    {
      v15 = SWLogPower();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if ((v12 - 1) > 4)
        {
          v24 = @"waking";
        }

        else
        {
          v24 = off_279D43230[v12 - 1];
        }

        v25 = off_279D43210[d - 2];
        if ((v13 - 1) > 2)
        {
          v26 = @"idle";
        }

        else
        {
          v26 = off_279D431F8[v13 - 1];
        }

        v27 = 134219778;
        slateCopy3 = slate;
        v29 = 2114;
        v30 = v25;
        v31 = 2048;
        timestampCopy3 = timestamp;
        v33 = 2048;
        v34 = v11;
        v35 = 2114;
        v36 = v24;
        v37 = 2048;
        v38 = v9;
        v39 = 2048;
        timestampCopy2 = v14;
        v41 = 2114;
        v42 = v26;
        _os_log_error_impl(&dword_26C657000, v15, OS_LOG_TYPE_ERROR, "%p stale request to update to state:%{public}@ forID:%ld elapsed:%.3lfs – currentState:%{public}@ elapsed:%.3lfs currentID:%ld systemActivityAborting:%{public}@", &v27, 0x52u);
      }
    }

LABEL_22:
    os_unfair_lock_unlock((slate + 40));
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d
{
  v33 = *MEMORY[0x277D85DE8];
  HIDWORD(v8) = changed + 536870288;
  LODWORD(v8) = changed + 536870288;
  v7 = v8 >> 4;
  if (v7 <= 1)
  {
    if (!v7)
    {
      [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
      if (self)
      {
        v21 = SWLogPower();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = d;
          _os_log_debug_impl(&dword_26C657000, v21, OS_LOG_TYPE_DEBUG, "%p sleepRequestedWithNotificationID:%ld", buf, 0x16u);
        }

        v22 = mach_continuous_time();
        *&v25 = MEMORY[0x277D85DD0];
        *(&v25 + 1) = 3221225472;
        *&v26 = __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke;
        *(&v26 + 1) = &unk_279D42FC8;
        *&v27 = self;
        *(&v27 + 1) = d;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke_55;
        *&buf[24] = &unk_279D42FF0;
        selfCopy2 = self;
        dCopy2 = d;
        v32 = v22;
        [(SWSystemSleepMonitor *)self observersOfSelector:&v25 performObserverBlock:buf completion:?];
      }

      goto LABEL_45;
    }

    if (v7 == 1)
    {
      [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
      if (self)
      {
        v13 = SWLogPower();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = d;
          _os_log_debug_impl(&dword_26C657000, v13, OS_LOG_TYPE_DEBUG, "%p prepareForSleepWithNotificationID:%ld", buf, 0x16u);
        }

        v14 = mach_continuous_time();
        *&v25 = MEMORY[0x277D85DD0];
        *(&v25 + 1) = 3221225472;
        *&v26 = __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke;
        *(&v26 + 1) = &unk_279D42FC8;
        *&v27 = self;
        *(&v27 + 1) = d;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke_60;
        *&buf[24] = &unk_279D42FF0;
        selfCopy2 = self;
        dCopy2 = d;
        v32 = v14;
        [(SWSystemSleepMonitor *)self observersOfSelector:&v25 performObserverBlock:buf completion:?];
      }

      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v7 == 2)
  {
    [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
    if (self)
    {
      [(SWSystemSleepMonitor *)self observersRespondingToSelector:?];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v9 = v26 = 0u;
      v15 = [v9 countByEnumeratingWithState:&v25 objects:buf count:16];
      if (v15)
      {
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v25 + 1) + 8 * i) systemSleepMonitorSleepRequestAborted:{self, v25}];
          }

          v15 = [v9 countByEnumeratingWithState:&v25 objects:buf count:16];
        }

        while (v15);
      }

      goto LABEL_37;
    }

    goto LABEL_45;
  }

  if (v7 != 9)
  {
    if (v7 == 11)
    {
      [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
      if (self)
      {
        [(SWSystemSleepMonitor *)self observersRespondingToSelector:?];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v9 = v26 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:buf count:16];
        if (v10)
        {
          v11 = *v26;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v25 + 1) + 8 * j) systemSleepMonitorWillWakeFromSleep:{self, v25}];
            }

            v10 = [v9 countByEnumeratingWithState:&v25 objects:buf count:16];
          }

          while (v10);
        }

LABEL_37:

        goto LABEL_45;
      }

      goto LABEL_45;
    }

LABEL_42:
    v23 = SWLogPower();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = changed;
      *&buf[18] = 2048;
      *&buf[20] = d;
      _os_log_error_impl(&dword_26C657000, v23, OS_LOG_TYPE_ERROR, "%p unexpected powerChangedMessage:%u notificationID:%p", buf, 0x1Cu);
    }

    goto LABEL_45;
  }

  [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
  if (self)
  {
    [(SWSystemSleepMonitor *)self observersRespondingToSelector:?];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v9 = v26 = 0u;
    v18 = [v9 countByEnumeratingWithState:&v25 objects:buf count:16];
    if (v18)
    {
      v19 = *v26;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v25 + 1) + 8 * k) systemSleepMonitorDidWakeFromSleep:{self, v25}];
        }

        v18 = [v9 countByEnumeratingWithState:&v25 objects:buf count:16];
      }

      while (v18);
    }

    goto LABEL_37;
  }

LABEL_45:
  v24 = *MEMORY[0x277D85DE8];
}

void __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SWLogPower();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 134218498;
    v20 = v13;
    v21 = 2114;
    v22 = v5;
    v23 = 2048;
    v24 = v14;
    _os_log_debug_impl(&dword_26C657000, v7, OS_LOG_TYPE_DEBUG, "%p sleepRequested observer:%{public}@ notificationID:%ld", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke_52;
  v15[3] = &unk_279D42FA0;
  v15[4] = v8;
  v9 = v5;
  v10 = *(a1 + 40);
  v16 = v9;
  v18 = v10;
  v11 = v6;
  v17 = v11;
  [v9 systemSleepMonitor:v8 sleepRequestedWithResult:v15];

  v12 = *MEMORY[0x277D85DE8];
}

id __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke_52(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SWLogPower();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[7];
    v18 = 134218754;
    v19 = v12;
    v20 = 1024;
    *v21 = a2;
    *&v21[4] = 2114;
    *&v21[6] = v13;
    *&v21[14] = 2048;
    *&v21[16] = v14;
    _os_log_debug_impl(&dword_26C657000, v6, OS_LOG_TYPE_DEBUG, "%p sleepRequested response allowSystemSleep:%{BOOL}u observer:%{public}@ notificationID:%ld", &v18, 0x26u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(a1[4] + 32) acquirePreventSystemSleepAssertionWithIdentifier:v5];
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = a1[4];
      v16 = a1[5];
      v17 = a1[7];
      v18 = 134218754;
      v19 = v15;
      v20 = 2112;
      *v21 = v8;
      *&v21[8] = 2114;
      *&v21[10] = v16;
      *&v21[18] = 2048;
      *&v21[20] = v17;
      _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p sleepRequested response assertion:%{BOOL}@ observer:%{public}@ notificationID:%ld", &v18, 0x2Au);
    }

    v7 = v8;
  }

  (*(a1[6] + 16))();

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke_55(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = SWLogPower();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 134218496;
    v12 = v9;
    v13 = 1024;
    v14 = a2;
    v15 = 2048;
    v16 = v10;
    _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p sleepRequested preventSystemSleep:%{BOOL}u notificationID:%ld", &v11, 0x1Cu);
  }

  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = *(a1 + 48);
    [SWSystemSleepMonitor setSleepSlate:v5 forPowerManagementNotificationID:2 notificationTimestamp:*(a1 + 40)];
    result = [*(*(a1 + 32) + 24) cancelPowerChange:*(a1 + 40)];
  }

  else
  {
    result = [*(v5 + 24) allowPowerChange:*(a1 + 40)];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)observersOfSelector:(void *)selector performObserverBlock:(void *)block completion:
{
  v56 = *MEMORY[0x277D85DE8];
  selectorCopy = selector;
  blockCopy = block;
  os_unfair_lock_lock((self + 40));
  v8 = *(self + 64) + 1;
  *(self + 64) = v8;
  os_unfair_lock_unlock((self + 40));
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy_;
  v53 = __Block_byref_object_dispose_;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke;
  v45[3] = &unk_279D43040;
  v26 = v8;
  selfCopy = self;
  v45[4] = self;
  v47 = v8;
  v22 = blockCopy;
  v46 = v22;
  v48 = a2;
  v54 = MEMORY[0x26D6A63C0](v45);
  v23 = [(SWSystemSleepMonitor *)self observersRespondingToSelector:a2];
  if ([v23 count])
  {
    v9 = MEMORY[0x277CF0BA0];
    v10 = *(self + 8);
    v11 = [v23 count];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke_64;
    v44[3] = &unk_279D43068;
    v44[4] = self;
    v44[5] = &v49;
    v44[6] = v8;
    v44[7] = a2;
    v25 = [v9 sentinelWithQueue:v10 signalCount:v11 signalHandler:v44];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v23;
    v12 = [obj countByEnumeratingWithState:&v40 objects:v55 count:16];
    if (v12)
    {
      v13 = *v41;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          v38[0] = 0;
          v38[1] = v38;
          v38[2] = 0x2020000000;
          v39 = 0;
          v16 = objc_alloc(MEMORY[0x277CF0CE8]);
          v17 = NSStringFromSelector(a2);
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"response from <%@: %p> must be made exactly once", objc_opt_class(), v15];
          v19 = [v16 initWithIdentifier:v17 forReason:v18 invalidationBlock:&__block_literal_global_75];

          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke_2;
          v29[3] = &unk_279D430B0;
          v20 = v19;
          v30 = v20;
          v31 = selfCopy;
          v35 = sel_observersOfSelector_performObserverBlock_completion_;
          v36 = v26;
          v37 = a2;
          v34 = v38;
          v32 = v15;
          v33 = v25;
          selectorCopy[2](selectorCopy, v15, v29);

          _Block_object_dispose(v38, 8);
        }

        v12 = [obj countByEnumeratingWithState:&v40 objects:v55 count:16];
      }

      while (v12);
    }
  }

  else
  {
    (*(v50[5] + 16))();
  }

  _Block_object_dispose(&v49, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SWLogPower();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 134218498;
    v20 = v13;
    v21 = 2114;
    v22 = v5;
    v23 = 2048;
    v24 = v14;
    _os_log_debug_impl(&dword_26C657000, v7, OS_LOG_TYPE_DEBUG, "%p prepareForSleep observer:%{public}@ notificationID:%ld", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke_59;
  v15[3] = &unk_279D43018;
  v15[4] = v8;
  v9 = v5;
  v10 = *(a1 + 40);
  v16 = v9;
  v18 = v10;
  v11 = v6;
  v17 = v11;
  [v9 systemSleepMonitor:v8 prepareForSleepWithCompletion:v15];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke_59(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = SWLogPower();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[7];
    v8 = 134218498;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_debug_impl(&dword_26C657000, v2, OS_LOG_TYPE_DEBUG, "%p prepareForSleep response observer:%{public}@ notificationID:%ld", &v8, 0x20u);
  }

  result = (*(a1[6] + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke_60(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = SWLogPower();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 134218240;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_debug_impl(&dword_26C657000, v2, OS_LOG_TYPE_DEBUG, "%p prepareForSleep complete notificationID:%ld", &v8, 0x16u);
  }

  v3 = *(a1 + 48);
  [SWSystemSleepMonitor setSleepSlate:5 forPowerManagementNotificationID:*(a1 + 40) notificationTimestamp:?];
  result = [*(*(a1 + 32) + 24) allowPowerChange:*(a1 + 40)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  os_unfair_lock_unlock((v5 + 40));
  if (v4 == v6)
  {
    v7 = *(*(a1 + 40) + 16);
    v8 = *MEMORY[0x277D85DE8];

    v7();
  }

  else
  {
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = NSStringFromSelector(*(a1 + 56));
      v14 = 134218754;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      v18 = 1024;
      v19 = a2 ^ 1;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEFAULT, "%p (%llu) final response(%{BOOL}u) to %{public}@ came too late", &v14, 0x26u);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (id)observersRespondingToSelector:(uint64_t)selector
{
  os_unfair_lock_lock((selector + 40));
  allObjects = [*(selector + 48) allObjects];
  os_unfair_lock_unlock((selector + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SWSystemSleepMonitor_observersRespondingToSelector___block_invoke;
  v8[3] = &__block_descriptor_40_e40_B32__0___SWSystemSleepObserver__8Q16_B24l;
  v8[4] = a2;
  v5 = [allObjects indexesOfObjectsPassingTest:v8];
  v6 = [allObjects objectsAtIndexes:v5];

  return v6;
}

void __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke_64(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 context];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0 && ([v4 BOOLValue] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    if (![v3 isComplete])
    {
      goto LABEL_12;
    }

    v5 = 0;
  }

  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  else
  {
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = 134218754;
      v15 = v11;
      v16 = 2048;
      v17 = v12;
      v18 = 1024;
      v19 = v5 ^ 1;
      v20 = 2114;
      v21 = v13;
      _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p (%llu) response(%{BOOL}u) to %{public}@ after early completion", &v14, 0x26u);
    }
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke_2(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) invalidate];
  v4 = (*(*(a1 + 64) + 8) + 24);
  __swp(v4, v4);
  if (v4)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!hadBeenCalled"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(*(a1 + 72));
      v18 = *(a1 + 40);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *(a1 + 40);
      *buf = 138544642;
      v24 = v17;
      v25 = 2114;
      v26 = v20;
      v27 = 2048;
      *v28 = v21;
      *&v28[8] = 2114;
      *&v28[10] = @"SWSystemSleepMonitor.m";
      *&v28[18] = 1024;
      *&v28[20] = 468;
      v29 = 2114;
      v30 = v16;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65B900);
  }

  os_unfair_lock_lock((*(a1 + 40) + 40));
  v5 = *(a1 + 80);
  v6 = *(a1 + 40);
  v7 = *(v6 + 64);
  os_unfair_lock_unlock((v6 + 40));
  if (v5 != v7)
  {
    v8 = SWLogPower();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 80);
      v14 = NSStringFromSelector(*(a1 + 88));
      v15 = *(a1 + 48);
      *buf = 134219010;
      v24 = v12;
      v25 = 2048;
      v26 = v13;
      v27 = 1024;
      *v28 = a2 ^ 1;
      *&v28[4] = 2114;
      *&v28[6] = v14;
      *&v28[14] = 2114;
      *&v28[16] = v15;
      _os_log_error_impl(&dword_26C657000, v8, OS_LOG_TYPE_ERROR, "%p (%llu) response(%{BOOL}u to %{public}@ from:%{public}@ came too late", buf, 0x30u);
    }
  }

  v9 = *(a1 + 56);
  if (a2)
  {
    result = [v9 signalWithContext:MEMORY[0x277CBEC38]];
  }

  else
  {
    result = [v9 signal];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addObserver:(id)observer
{
  v24 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (!observerCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"SWSystemSleepMonitor.m";
      v20 = 1024;
      v21 = 509;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65BAD8);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)observer
{
  v24 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (!observerCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"SWSystemSleepMonitor.m";
      v20 = 1024;
      v21 = 516;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65BCB8);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x277D85DE8];
}

@end