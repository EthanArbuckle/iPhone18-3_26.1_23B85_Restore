@interface SMTrialManager
- (SMTrialManager)init;
- (double)doubleValueForFactor:(id)factor;
- (id)levelForFactor:(id)factor;
- (void)refresh;
@end

@implementation SMTrialManager

- (SMTrialManager)init
{
  v8.receiver = self;
  v8.super_class = SMTrialManager;
  v2 = [(SMTrialManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    namespaceName = v2->_namespaceName;
    v2->_namespaceName = @"LOMO_CHECK_IN";

    client = [MEMORY[0x277D73660] client];
    trialClient = v3->_trialClient;
    v3->_trialClient = client;
  }

  return v3;
}

- (void)refresh
{
  trialClient = [(SMTrialManager *)self trialClient];
  [trialClient refresh];
}

- (id)levelForFactor:(id)factor
{
  v23 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  trialClient = [(SMTrialManager *)self trialClient];
  namespaceName = [(SMTrialManager *)self namespaceName];
  v8 = [trialClient levelForFactor:factorCopy withNamespaceName:namespaceName];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      v15 = 138544130;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      v19 = 2114;
      v20 = factorCopy;
      v21 = 2114;
      v22 = v8;
      _os_log_debug_impl(&dword_26455D000, v9, OS_LOG_TYPE_DEBUG, "%{public}@, %{public}@, factor, %{public}@, level, %{public}@", &v15, 0x2Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (double)doubleValueForFactor:(id)factor
{
  v3 = [(SMTrialManager *)self levelForFactor:factor];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end