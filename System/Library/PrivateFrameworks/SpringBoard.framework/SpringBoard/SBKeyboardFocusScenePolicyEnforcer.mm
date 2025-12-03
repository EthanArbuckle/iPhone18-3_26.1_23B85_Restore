@interface SBKeyboardFocusScenePolicyEnforcer
- (SBKeyboardFocusScenePolicyEnforcer)initWithDeliveryManager:(id)manager debugName:(id)name systemShellDelegate:(id)delegate;
- (void)enforce:(id)enforce;
- (void)stopEnforcing;
@end

@implementation SBKeyboardFocusScenePolicyEnforcer

- (SBKeyboardFocusScenePolicyEnforcer)initWithDeliveryManager:(id)manager debugName:(id)name systemShellDelegate:(id)delegate
{
  managerCopy = manager;
  nameCopy = name;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = SBKeyboardFocusScenePolicyEnforcer;
  v12 = [(SBKeyboardFocusScenePolicyEnforcer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deliveryManager, manager);
    v14 = [nameCopy copy];
    debugName = v13->_debugName;
    v13->_debugName = v14;

    objc_storeStrong(&v13->_systemShellBehaviorDelegate, delegate);
  }

  return v13;
}

- (void)enforce:(id)enforce
{
  v36 = *MEMORY[0x277D85DE8];
  enforceCopy = enforce;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  keyboardFocusTarget = [(SBKeyboardFocusPolicy *)enforceCopy keyboardFocusTarget];
  sbWindowSceneAncestor = [(SBKeyboardFocusPolicy *)enforceCopy sbWindowSceneAncestor];
  v7 = [SBKeyboardFocusTarget targetForSBWindowScene:sbWindowSceneAncestor];
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
        v35 = keyboardFocusTarget;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "rules: (keyboardFocus) outbound target changed from:%{public}@ to %{public}@", buf, 0x16u);
      }
    }

    v31 = enforceCopy;
    localToRemoteKeyboardFocusRule = objc_opt_new();
    keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [localToRemoteKeyboardFocusRule setEnvironment:keyboardFocusEnvironment];

    deferringToken = [(SBKeyboardFocusTarget *)v7 deferringToken];
    [localToRemoteKeyboardFocusRule setToken:deferringToken];

    [(BSInvalidatable *)self->_localToRemoteKeyboardFocusRule invalidate];
    v15 = self->_localToRemoteKeyboardFocusRule;
    self->_localToRemoteKeyboardFocusRule = 0;

    deliveryManager = self->_deliveryManager;
    [(SBKeyboardFocusTarget *)keyboardFocusTarget deferringTarget];
    v18 = v17 = v7;
    v19 = MEMORY[0x277CCACA8];
    _FBSScene = [sbWindowSceneAncestor _FBSScene];
    identifier = [_FBSScene identifier];
    v22 = [v19 stringWithFormat:@"SpringBoard<%@>: enforcing outbound", identifier];
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
      v35 = keyboardFocusTarget;
      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "rules: (keyboardFocus) defer (%{public}@) -> %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&self->_sentKeyboardFocusOutboundTarget, keyboardFocusTarget);
    enforceCopy = v31;
  }

  _eventDeferringManager = [sbWindowSceneAncestor _eventDeferringManager];
  v27 = MEMORY[0x277CBEB98];
  keyboardFocusEnvironment2 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
  v29 = [v27 setWithObject:keyboardFocusEnvironment2];
  [_eventDeferringManager setNeedsRemoteEventDeferringRuleComparisonInEnvironments:v29 forBehaviorDelegate:self->_systemShellBehaviorDelegate withReason:@"SB rule update"];

  enforcedPolicy = self->_enforcedPolicy;
  self->_enforcedPolicy = enforceCopy;
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