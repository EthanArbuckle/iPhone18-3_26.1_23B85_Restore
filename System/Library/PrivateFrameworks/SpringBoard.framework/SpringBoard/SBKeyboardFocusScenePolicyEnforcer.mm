@interface SBKeyboardFocusScenePolicyEnforcer
- (SBKeyboardFocusScenePolicyEnforcer)initWithDeliveryManager:(id)a3 debugName:(id)a4 systemShellDelegate:(id)a5;
- (void)enforce:(id)a3;
- (void)stopEnforcing;
@end

@implementation SBKeyboardFocusScenePolicyEnforcer

- (SBKeyboardFocusScenePolicyEnforcer)initWithDeliveryManager:(id)a3 debugName:(id)a4 systemShellDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SBKeyboardFocusScenePolicyEnforcer;
  v12 = [(SBKeyboardFocusScenePolicyEnforcer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deliveryManager, a3);
    v14 = [v10 copy];
    debugName = v13->_debugName;
    v13->_debugName = v14;

    objc_storeStrong(&v13->_systemShellBehaviorDelegate, a5);
  }

  return v13;
}

- (void)enforce:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(SBKeyboardFocusPolicy *)v4 keyboardFocusTarget];
  v6 = [(SBKeyboardFocusPolicy *)v4 sbWindowSceneAncestor];
  v7 = [SBKeyboardFocusTarget targetForSBWindowScene:v6];
  if (BSEqualObjects())
  {
    v8 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "rules: (keyboardFocus) removing outbound rule -- deferring to SpringBoard", buf, 2u);
    }

    sentKeyboardFocusOutboundTarget = self->_sentKeyboardFocusOutboundTarget;
    self->_sentKeyboardFocusOutboundTarget = 0;

    [(BSInvalidatable *)self->_localToRemoteKeyboardFocusRule invalidate];
    localToRemoteKeyboardFocusRule = self->_localToRemoteKeyboardFocusRule;
    self->_localToRemoteKeyboardFocusRule = 0;
  }

  else
  {
    if ((BSEqualObjects() & 1) == 0)
    {
      v11 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_sentKeyboardFocusOutboundTarget;
        *buf = 138543618;
        v33 = v12;
        v34 = 2114;
        v35 = v5;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "rules: (keyboardFocus) outbound target changed from:%{public}@ to %{public}@", buf, 0x16u);
      }
    }

    v31 = v4;
    localToRemoteKeyboardFocusRule = objc_opt_new();
    v13 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [localToRemoteKeyboardFocusRule setEnvironment:v13];

    v14 = [(SBKeyboardFocusTarget *)v7 deferringToken];
    [localToRemoteKeyboardFocusRule setToken:v14];

    [(BSInvalidatable *)self->_localToRemoteKeyboardFocusRule invalidate];
    v15 = self->_localToRemoteKeyboardFocusRule;
    self->_localToRemoteKeyboardFocusRule = 0;

    deliveryManager = self->_deliveryManager;
    [(SBKeyboardFocusTarget *)v5 deferringTarget];
    v18 = v17 = v7;
    v19 = MEMORY[0x277CCACA8];
    v20 = [v6 _FBSScene];
    v21 = [v20 identifier];
    v22 = [v19 stringWithFormat:@"SpringBoard<%@>: enforcing outbound", v21];
    v23 = [(BKSHIDEventDeliveryManager *)deliveryManager deferEventsMatchingPredicate:localToRemoteKeyboardFocusRule toTarget:v18 withReason:v22];
    v24 = self->_localToRemoteKeyboardFocusRule;
    self->_localToRemoteKeyboardFocusRule = v23;

    v7 = v17;
    v25 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = v17;
      v34 = 2114;
      v35 = v5;
      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "rules: (keyboardFocus) defer (%{public}@) -> %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&self->_sentKeyboardFocusOutboundTarget, v5);
    v4 = v31;
  }

  v26 = [v6 _eventDeferringManager];
  v27 = MEMORY[0x277CBEB98];
  v28 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
  v29 = [v27 setWithObject:v28];
  [v26 setNeedsRemoteEventDeferringRuleComparisonInEnvironments:v29 forBehaviorDelegate:self->_systemShellBehaviorDelegate withReason:@"SB rule update"];

  enforcedPolicy = self->_enforcedPolicy;
  self->_enforcedPolicy = v4;
}

- (void)stopEnforcing
{
  [(BSInvalidatable *)self->_localToRemoteKeyboardFocusRule invalidate];
  localToRemoteKeyboardFocusRule = self->_localToRemoteKeyboardFocusRule;
  self->_localToRemoteKeyboardFocusRule = 0;

  enforcedPolicy = self->_enforcedPolicy;
  self->_enforcedPolicy = 0;
}

@end