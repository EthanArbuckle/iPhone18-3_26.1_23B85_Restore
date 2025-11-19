@interface SBLockStateAggregator
+ (SBLockStateAggregator)sharedInstance;
- (SBFAnalyticsClient)analyticsClient;
- (SBLockStateAggregator)init;
- (id)_descriptionForLockState:(unint64_t)a3;
- (id)_initWithAnalyticsClient:(id)a3;
- (id)description;
- (void)_updateLockState;
- (void)dealloc;
@end

@implementation SBLockStateAggregator

- (void)_updateLockState
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = +[SBLockScreenManager sharedInstanceIfExists];
  v4 = [v3 isUILocked];

  v5 = v4;
  v6 = [SBApp lockOutController];
  v7 = [SBApp authenticationController];
  if (![v7 isAuthenticated])
  {
    v5 |= 2uLL;
  }

  if ([v6 isBlocked])
  {
    v5 |= 4uLL;
  }

  if (self->_lockState != v5)
  {
    v8 = SBLogCommon();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = MEMORY[0x277CCAB68];
      v11 = [(SBLockStateAggregator *)self _descriptionForLockState:v5];
      v12 = [v10 stringWithFormat:@"Aggregate lock state changed: %@", v11];

      lockState = self->_lockState;
      if (lockState)
      {
        v14 = (lockState ^ v5) & lockState;
        if (((lockState ^ v5) & v5) != 0)
        {
          v15 = [(SBLockStateAggregator *)self _descriptionForLockState:(lockState ^ v5) & v5];
          [v12 appendFormat:@" (%@ added)", v15];
        }

        if (v14)
        {
          v16 = [(SBLockStateAggregator *)self _descriptionForLockState:v14];
          [v12 appendFormat:@" (%@ removed)", v16];
        }
      }

      else
      {
        [v12 appendString:@" (added)"];
      }

      v17 = SBLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v29 = v12;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
      }
    }

    self->_lockState = v5;
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v26 = @"SBAggregateLockStateKey";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lockState];
    v27 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v18 postNotificationName:@"SBAggregateLockStateDidChangeNotification" object:0 userInfo:v20];

    WeakRetained = objc_loadWeakRetained(&self->_analyticsClient);
    v24 = *MEMORY[0x277D675E0];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lockState];
    v25 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [WeakRetained emitEvent:48 withPayload:v23];
  }
}

+ (SBLockStateAggregator)sharedInstance
{
  if (sharedInstance_onceToken_40 != -1)
  {
    +[SBLockStateAggregator sharedInstance];
  }

  v3 = sharedInstance___manager_0;

  return v3;
}

void __39__SBLockStateAggregator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBLockStateAggregator);
  v1 = sharedInstance___manager_0;
  sharedInstance___manager_0 = v0;
}

- (SBLockStateAggregator)init
{
  v3 = [MEMORY[0x277D65DD0] sharedInstance];
  v4 = [(SBLockStateAggregator *)self _initWithAnalyticsClient:v3];

  return v4;
}

- (id)_initWithAnalyticsClient:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBLockStateAggregator;
  v5 = [(SBLockStateAggregator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_analyticsClient, v4);
    v6->_lockState = 0;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__updateLockState name:*MEMORY[0x277D67A48] object:0];
    [v7 addObserver:v6 selector:sel__updateLockState name:*MEMORY[0x277D66078] object:0];
    [v7 addObserver:v6 selector:sel__updateLockState name:*MEMORY[0x277D66030] object:0];
    [(SBLockStateAggregator *)v6 _updateLockState];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBLockStateAggregator;
  [(SBLockStateAggregator *)&v4 dealloc];
}

- (id)_descriptionForLockState:(unint64_t)a3
{
  if (!a3)
  {
    v5 = @"none";
    goto LABEL_14;
  }

  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = v4;
  if (v3)
  {
    [(__CFString *)v4 appendString:@"UILocked"];
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  if ([(__CFString *)v5 length])
  {
    [(__CFString *)v5 appendString:@", "];
  }

  [(__CFString *)v5 appendString:@"PasscodeLocked"];
  if ((v3 & 4) != 0)
  {
LABEL_11:
    if ([(__CFString *)v5 length])
    {
      [(__CFString *)v5 appendString:@", "];
    }

    [(__CFString *)v5 appendString:@"Blocked"];
  }

LABEL_14:

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  lockState = self->_lockState;
  v6 = [(SBLockStateAggregator *)self _descriptionForLockState:lockState];
  v7 = [v3 stringWithFormat:@"<%@: %p lockState = 0x%X (%@)>", v4, self, lockState, v6];;

  return v7;
}

- (SBFAnalyticsClient)analyticsClient
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsClient);

  return WeakRetained;
}

@end