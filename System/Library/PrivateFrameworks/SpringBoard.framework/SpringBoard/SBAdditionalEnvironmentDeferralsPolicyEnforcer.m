@interface SBAdditionalEnvironmentDeferralsPolicyEnforcer
- (SBAdditionalEnvironmentDeferralsPolicyEnforcer)init;
- (SBAdditionalEnvironmentDeferralsPolicyEnforcer)initWithDebugName:(id)a3 deliveryManager:(id)a4;
- (SBAdditionalEnvironmentDeferralsPolicyEnforcerDelegate)delegate;
- (void)enforce:(id)a3;
- (void)stopEnforcing;
@end

@implementation SBAdditionalEnvironmentDeferralsPolicyEnforcer

- (void)stopEnforcing
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_rules;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  rules = self->_rules;
  self->_rules = 0;
}

- (SBAdditionalEnvironmentDeferralsPolicyEnforcer)init
{
  v3 = [MEMORY[0x277CF0668] sharedInstance];
  v4 = [(SBAdditionalEnvironmentDeferralsPolicyEnforcer *)self initWithDebugName:@"SBAdditionalEnvironmentDeferralsPolicyEnforcer" deliveryManager:v3];

  return v4;
}

- (SBAdditionalEnvironmentDeferralsPolicyEnforcer)initWithDebugName:(id)a3 deliveryManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBAdditionalEnvironmentDeferralsPolicyEnforcer;
  v8 = [(SBAdditionalEnvironmentDeferralsPolicyEnforcer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_deliveryManager, a4);
    v10 = [v6 copy];
    debugName = v9->_debugName;
    v9->_debugName = v10;
  }

  return v9;
}

- (void)enforce:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SBAdditionalEnvironmentDeferralsPolicyEnforcer *)self stopEnforcing];
  v23 = v4;
  v5 = [v4 keyboardFocusTarget];
  v26 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained additionalEnvironmentDeferralsForFocusTarget:v5];

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = v7;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [v7 allKeys];
  v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          v15 = objc_opt_new();
          [v15 setEnvironment:v12];
          v16 = objc_opt_new();
          v17 = [v25 objectForKeyedSubscript:v12];
          [v16 setToken:v17];

          [v16 setPid:{objc_msgSend(v5, "pid")}];
          deliveryManager = v26->_deliveryManager;
          v19 = [(SBKeyboardFocusTarget *)v5 deferringTarget];
          v20 = [(BKSHIDEventDeliveryManager *)deliveryManager deferEventsMatchingPredicate:v15 toTarget:v19 withReason:@"SpringBoard: outbound to service-requested target"];
          [(NSMutableArray *)v24 addObject:v20];

          v21 = SBLogKeyboardFocus();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v33 = v12;
            v34 = 2114;
            v35 = v5;
            _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "rules: (additionalEnvironments) by service request, deferring (%{public}@) -> %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  rules = v26->_rules;
  v26->_rules = v24;
}

- (SBAdditionalEnvironmentDeferralsPolicyEnforcerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end