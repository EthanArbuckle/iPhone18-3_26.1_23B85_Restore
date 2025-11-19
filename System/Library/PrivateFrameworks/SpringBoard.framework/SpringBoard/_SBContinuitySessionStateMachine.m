@interface _SBContinuitySessionStateMachine
- (_SBContinuitySessionStateMachine)initWithStoreDemoPrepState:(id)a3 blockedState:(id)a4 preparingForRemoteUnlockState:(id)a5 waitingForRemoteUnlockState:(id)a6 waitingForScenesState:(id)a7 waitingForHIDServicesState:(id)a8 activatingState:(id)a9 updatingActiveDisplayState:(id)a10 launchingState:(id)a11 flushingState:(id)a12 activeState:(id)a13;
- (_SBContinuitySessionStateMachine)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4 inStoreDemoMode:(BOOL)a5;
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (id)_stateMachineStateForState:(unint64_t)a3;
- (id)clientExternallyBlockedReasons;
- (id)succinctDescription;
- (void)_initializeStates;
- (void)_moveToInvalidStateForReasons:(id)a3 postToDelegate:(BOOL)a4;
- (void)_moveToState:(unint64_t)a3;
- (void)_updateCurrentStateReasons:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)invalidateForReasons:(id)a3;
- (void)noteClientDidUpdateExternallyBlockedReasons;
@end

@implementation _SBContinuitySessionStateMachine

- (_SBContinuitySessionStateMachine)initWithSystemEventMonitor:(id)a3 continuityDisplayAuthenticationCoordinator:(id)a4 inStoreDemoMode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v35 = [[_SBContinuitySessionStateMachineStateBlocked alloc] initWithSystemEventMonitor:v7];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __122___SBContinuitySessionStateMachine_initWithSystemEventMonitor_continuityDisplayAuthenticationCoordinator_inStoreDemoMode___block_invoke;
  v36[3] = &unk_2783C4380;
  v34 = v7;
  v37 = v34;
  v33 = v8;
  v38 = v33;
  v9 = MEMORY[0x223D6F7F0](v36);
  if (v5)
  {
    v10 = objc_opt_class();
    v29 = v9[2](v9, v10);
  }

  else
  {
    v29 = 0;
  }

  v11 = objc_opt_class();
  v28 = v9[2](v9, v11);
  v12 = objc_opt_class();
  v13 = v9[2](v9, v12);
  v14 = objc_opt_class();
  v15 = v9[2](v9, v14);
  v16 = objc_opt_class();
  v30 = v9[2](v9, v16);
  v17 = objc_opt_class();
  v27 = v9[2](v9, v17);
  v18 = objc_opt_class();
  v19 = v9[2](v9, v18);
  v20 = objc_opt_class();
  v21 = v9[2](v9, v20);
  v22 = objc_opt_class();
  v23 = v9[2](v9, v22);
  v24 = objc_opt_class();
  v25 = v9[2](v9, v24);
  v32 = [(_SBContinuitySessionStateMachine *)self initWithStoreDemoPrepState:v29 blockedState:v35 preparingForRemoteUnlockState:v28 waitingForRemoteUnlockState:v13 waitingForScenesState:v15 waitingForHIDServicesState:v30 activatingState:v27 updatingActiveDisplayState:v19 launchingState:v21 flushingState:v23 activeState:v25];

  return v32;
}

- (_SBContinuitySessionStateMachine)initWithStoreDemoPrepState:(id)a3 blockedState:(id)a4 preparingForRemoteUnlockState:(id)a5 waitingForRemoteUnlockState:(id)a6 waitingForScenesState:(id)a7 waitingForHIDServicesState:(id)a8 activatingState:(id)a9 updatingActiveDisplayState:(id)a10 launchingState:(id)a11 flushingState:(id)a12 activeState:(id)a13
{
  v37 = a3;
  v29 = a4;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v38.receiver = self;
  v38.super_class = _SBContinuitySessionStateMachine;
  v22 = [(_SBContinuitySessionStateMachine *)&v38 init];
  v23 = v22;
  if (v22)
  {
    v22->_internalState = 0;
    v22->_observerState = 0;
    v24 = objc_alloc_init(MEMORY[0x277CBEB98]);
    internalReasons = v23->_internalReasons;
    v23->_internalReasons = v24;

    objc_storeStrong(&v23->_observerReasons, v23->_internalReasons);
    objc_storeStrong(&v23->_storeDemoPrepState, a3);
    objc_storeStrong(&v23->_blockedState, v29);
    objc_storeStrong(&v23->_preparingForRemoteUnlockState, a5);
    objc_storeStrong(&v23->_waitingForRemoteUnlockState, a6);
    objc_storeStrong(&v23->_waitingForScenesState, a7);
    objc_storeStrong(&v23->_waitingForHIDServicesState, a8);
    objc_storeStrong(&v23->_activatingState, a9);
    objc_storeStrong(&v23->_updatingActiveDisplayState, a10);
    objc_storeStrong(&v23->_launchingState, a11);
    objc_storeStrong(&v23->_flushingState, a12);
    objc_storeStrong(&v23->_activeState, a13);
    [(_SBContinuitySessionStateMachine *)v23 _initializeStates];
    if (v23->_storeDemoPrepState)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    [(_SBContinuitySessionStateMachine *)v23 _moveToState:v26];
  }

  return v23;
}

- (void)noteClientDidUpdateExternallyBlockedReasons
{
  v2 = [(_SBContinuitySessionStateMachine *)self _stateMachineStateForState:self->_internalState];
  [v2 noteClientDidUpdateExternallyBlockedReasons];
}

- (void)invalidateForReasons:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v5 = SBLogContinuityDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[State Machine] invalidated for reasons: %{public}@", &v17, 0xCu);
    }

    [(_SBContinuitySessionStateMachine *)self _moveToInvalidStateForReasons:v4 postToDelegate:0];
    [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self->_storeDemoPrepState invalidate];
    storeDemoPrepState = self->_storeDemoPrepState;
    self->_storeDemoPrepState = 0;

    [(_SBContinuitySessionStateMachineStateBlocked *)self->_blockedState invalidate];
    blockedState = self->_blockedState;
    self->_blockedState = 0;

    [(_SBContinuitySessionStateMachineStatePreparingForRemoteUnlock *)self->_preparingForRemoteUnlockState invalidate];
    preparingForRemoteUnlockState = self->_preparingForRemoteUnlockState;
    self->_preparingForRemoteUnlockState = 0;

    [(_SBContinuitySessionStateMachineStateWaitingForRemoteUnlock *)self->_waitingForRemoteUnlockState invalidate];
    waitingForRemoteUnlockState = self->_waitingForRemoteUnlockState;
    self->_waitingForRemoteUnlockState = 0;

    [(_SBContinuitySessionStateMachineStateWaitingForScenes *)self->_waitingForScenesState invalidate];
    waitingForScenesState = self->_waitingForScenesState;
    self->_waitingForScenesState = 0;

    [(_SBContinuitySessionStateMachineStateWaitingForHIDServices *)self->_waitingForHIDServicesState invalidate];
    waitingForHIDServicesState = self->_waitingForHIDServicesState;
    self->_waitingForHIDServicesState = 0;

    [(_SBContinuitySessionStateMachineStateActivating *)self->_activatingState invalidate];
    activatingState = self->_activatingState;
    self->_activatingState = 0;

    [(_SBContinuitySessionStateMachineStateUpdatingActiveDisplay *)self->_updatingActiveDisplayState invalidate];
    updatingActiveDisplayState = self->_updatingActiveDisplayState;
    self->_updatingActiveDisplayState = 0;

    [(_SBContinuitySessionStateMachineStateLaunching *)self->_launchingState invalidate];
    launchingState = self->_launchingState;
    self->_launchingState = 0;

    [(_SBContinuitySessionStateMachineStateFlushing *)self->_flushingState invalidate];
    flushingState = self->_flushingState;
    self->_flushingState = 0;

    [(_SBContinuitySessionStateMachineStateActive *)self->_activeState invalidate];
    activeState = self->_activeState;
    self->_activeState = 0;
  }
}

- (void)_initializeStates
{
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53___SBContinuitySessionStateMachine__initializeStates__block_invoke;
  v19[3] = &unk_2783C43D0;
  objc_copyWeak(v20, &location);
  v20[1] = a2;
  v19[4] = self;
  v4 = MEMORY[0x223D6F7F0](v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_3;
  v17[3] = &unk_2783C4420;
  objc_copyWeak(v18, &location);
  v18[1] = a2;
  v17[4] = self;
  v5 = MEMORY[0x223D6F7F0](v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_5;
  v15[3] = &unk_2783C43D0;
  objc_copyWeak(v16, &location);
  v16[1] = a2;
  v15[4] = self;
  v6 = MEMORY[0x223D6F7F0](v15);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_7;
  v11[3] = &unk_2783C4448;
  v7 = v5;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v11[4] = self;
  v10 = MEMORY[0x223D6F7F0](v11);
  (v10)[2](v10, self->_storeDemoPrepState, 1);
  (v10)[2](v10, self->_blockedState, 2);
  (v10)[2](v10, self->_preparingForRemoteUnlockState, 3);
  (v10)[2](v10, self->_waitingForRemoteUnlockState, 4);
  (v10)[2](v10, self->_waitingForScenesState, 5);
  (v10)[2](v10, self->_waitingForHIDServicesState, 6);
  (v10)[2](v10, self->_activatingState, 7);
  (v10)[2](v10, self->_updatingActiveDisplayState, 8);
  (v10)[2](v10, self->_launchingState, 9);
  (v10)[2](v10, self->_flushingState, 10);
  (v10)[2](v10, self->_activeState, 11);

  objc_destroyWeak(v16);
  objc_destroyWeak(v18);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (id)_stateMachineStateForState:(unint64_t)a3
{
  if (a3 - 1 > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->_authenticationCoordinator + a3);
  }

  return v4;
}

- (void)_moveToInvalidStateForReasons:(id)a3 postToDelegate:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  internalState = self->_internalState;
  v9 = SBLogContinuityDisplay();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (internalState == 12)
  {
    if (v10)
    {
      v11 = [v7 bs_array];
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State Machine] ignoring call to move to invalid for reasons %{public}@ because we are already in .invalid", &v19, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v12 = NSStringFromSBContinuitySessionState(self->_internalState);
      v13 = [v7 bs_array];
      v19 = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State Machine] %{public}@ -> INVALID reasons: %{public}@", &v19, 0x16u);
    }

    v14 = SBLogContinuitySession();
    if (os_signpost_enabled(v14))
    {
      v15 = NSStringFromSBContinuitySessionState(12);
      v19 = 138543362;
      v20 = v15;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_ONENESS_STATE_MACHINE_STATE_UPDATE", "%{public}@", &v19, 0xCu);
    }

    observerState = self->_observerState;
    v17 = self->_internalState;
    self->_internalState = 12;
    objc_storeStrong(&self->_internalReasons, a3);
    v9 = [(_SBContinuitySessionStateMachine *)self _stateMachineStateForState:v17];
    [v9 exitedStateTo:12];
    if (self->_observerState != 12)
    {
      self->_observerState = 12;
      objc_storeStrong(&self->_observerReasons, a3);
      if (v4)
      {
        v18 = [(_SBContinuitySessionStateMachine *)self delegate];
        [v18 continuitySessionStateMachineDidUpdateState:self oldState:observerState];
      }
    }
  }
}

- (void)_updateCurrentStateReasons:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  internalState = self->_internalState;
  v7 = SBLogContinuityDisplay();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (internalState == 12)
  {
    if (v8)
    {
      v9 = [v5 bs_array];
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[State Machine] ignoring call update reasons %{public}@ because we are already in .invalid", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v10 = NSStringFromSBContinuitySessionState(self->_internalState);
      v11 = [v5 bs_array];
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[State Machine] %{public}@ updated reasons: %{public}@", buf, 0x16u);
    }

    v12 = self->_internalState;
    objc_storeStrong(&self->_internalReasons, a3);
    if (!self->_suppressReasonUpdateCallout)
    {
      objc_initWeak(buf, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63___SBContinuitySessionStateMachine__updateCurrentStateReasons___block_invoke;
      block[3] = &unk_2783AB460;
      objc_copyWeak(v15, buf);
      v14 = v5;
      v15[1] = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(v15);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_moveToState:(unint64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 == 12)
  {
    [(_SBContinuitySessionStateMachine *)a2 _moveToState:?];
  }

  internalState = self->_internalState;
  v6 = SBLogContinuityDisplay();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (internalState == 12)
  {
    if (v7)
    {
      v8 = NSStringFromSBContinuitySessionState(a3);
      *buf = 138543362;
      v23 = v8;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State Machine] ignoring call to move to %{public}@ because we are already in .invalid", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = NSStringFromSBContinuitySessionState(self->_internalState);
      v10 = NSStringFromSBContinuitySessionState(a3);
      *buf = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State Machine] %{public}@ -> %{public}@", buf, 0x16u);
    }

    v11 = SBLogContinuitySession();
    if (os_signpost_enabled(v11))
    {
      v12 = NSStringFromSBContinuitySessionState(a3);
      *buf = 138543362;
      v23 = v12;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_ONENESS_STATE_MACHINE_STATE_UPDATE", "%{public}@", buf, 0xCu);
    }

    v13 = self->_internalState;
    self->_internalState = a3;
    v14 = [MEMORY[0x277CBEB98] set];
    internalReasons = self->_internalReasons;
    self->_internalReasons = v14;

    self->_suppressReasonUpdateCallout = 1;
    v6 = [(_SBContinuitySessionStateMachine *)self _stateMachineStateForState:v13];
    v16 = [(_SBContinuitySessionStateMachine *)self _stateMachineStateForState:a3];
    [v6 exitedStateTo:a3];
    [v16 enteredStateFrom:v13];
    self->_suppressReasonUpdateCallout = 0;
    v17 = [(NSSet *)self->_internalReasons copy];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49___SBContinuitySessionStateMachine__moveToState___block_invoke;
    v19[3] = &unk_2783C4470;
    objc_copyWeak(v21, buf);
    v21[1] = a3;
    v21[2] = v13;
    v20 = v17;
    v18 = v17;
    dispatch_async(MEMORY[0x277D85CD0], v19);

    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }
}

- (id)clientExternallyBlockedReasons
{
  v2 = [(_SBContinuitySessionStateMachine *)self clientExternallyBlockedReasonsProvider];
  v3 = [v2 clientExternallyBlockedReasons];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:@"stateMachine.missingClientExternallyBlockedReasonsProvider"];
  }

  v6 = v5;

  return v6;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x277CF0C08];
  v4 = [MEMORY[0x277CF0C10] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C10] collectionLineBreakNoneStyle];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62___SBContinuitySessionStateMachine_appendDescriptionToStream___block_invoke;
  v24[3] = &unk_2783A92D8;
  v6 = v4;
  v25 = v6;
  v26 = self;
  [v6 appendProem:self block:v24];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62___SBContinuitySessionStateMachine_appendDescriptionToStream___block_invoke_2;
  v20[3] = &unk_2783A8ED8;
  v7 = v6;
  v21 = v7;
  v22 = self;
  v8 = v5;
  v23 = v8;
  [v7 appendBodySectionWithName:@"observerState" block:v20];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62___SBContinuitySessionStateMachine_appendDescriptionToStream___block_invoke_4;
  v16 = &unk_2783A8ED8;
  v9 = v7;
  v17 = v9;
  v18 = self;
  v19 = v8;
  v10 = v8;
  [v9 appendBodySectionWithName:@"internalState" block:&v13];
  if (([v9 hasSuccinctStyle] & 1) == 0)
  {
    v11 = [(_SBContinuitySessionStateMachine *)self _stateMachineStateForState:self->_internalState];
    v12 = [v9 appendObject:v11 withName:@"currentState"];
  }
}

- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_clientExternallyBlockedReasonsProvider);

  return WeakRetained;
}

- (void)_moveToState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionStateMachine.m" lineNumber:406 description:@"must call _moveToInvalidStateForReasons:"];
}

@end