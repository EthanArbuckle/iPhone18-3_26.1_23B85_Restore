@interface _SBContinuitySessionServiceClient
- (NSSet)externallyBlockedReasons;
- (_SBContinuitySessionServiceClient)initWithConnection:(id)a3 pid:(int)a4;
- (_SBContinuitySessionServiceClientDelegate)delegate;
- (id)succinctDescription;
- (void)_connectionQueue_didInvalidate;
- (void)_connectionQueue_handleActivated;
- (void)_connectionQueue_handleContinuityButtonEvent:(unint64_t)a3;
- (void)_connectionQueue_handleLaunchEventOfType:(id)a3 payload:(id)a4;
- (void)_connectionQueue_handleUpdatedExternallyBlockedReasons:(id)a3;
- (void)_connectionQueue_setHostedInterfaceOrientation:(int64_t)a3;
- (void)_connectionQueue_updatedAppearanceSettings:(id)a3 transitionContext:(id)a4 completion:(id)a5;
- (void)_pushLatestOrientationToClient;
- (void)_pushLatestStateToClient;
- (void)appendDescriptionToStream:(id)a3;
- (void)continuitySession:(id)a3 didUpdateInterfaceOrientation:(int64_t)a4 supportedInterfaceOrientations:(unint64_t)a5;
- (void)continuitySessionDidUpdateState:(id)a3;
- (void)setSession:(id)a3;
@end

@implementation _SBContinuitySessionServiceClient

- (_SBContinuitySessionServiceClient)initWithConnection:(id)a3 pid:(int)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = _SBContinuitySessionServiceClient;
  v8 = [(_SBContinuitySessionServiceClient *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_connection, a3);
    v9->_pid = a4;
    v10 = [MEMORY[0x277CBEB98] set];
    clientExternallyBlockedReasons = v9->_clientExternallyBlockedReasons;
    v9->_clientExternallyBlockedReasons = v10;

    *&v9->_lock_waitingForClientActivation = 16777473;
    v12 = SBLogContinuitySessionService();
    if (os_signpost_enabled(v12))
    {
      v14[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ONENESS_CONNECTION_NEGOTIATION", &unk_21F8B82DE, v14, 2u);
    }
  }

  return v9;
}

- (void)setSession:(id)a3
{
  v5 = a3;
  session = self->_session;
  if (session != v5)
  {
    v7 = v5;
    [(SBContinuitySession *)session removeStateObserver:self];
    [(SBContinuitySession *)self->_session removeOrientationObserver:self];
    objc_storeStrong(&self->_session, a3);
    [(SBContinuitySession *)self->_session addStateObserver:self];
    [(SBContinuitySession *)self->_session addOrientationObserver:self];
    v5 = v7;
  }
}

- (NSSet)externallyBlockedReasons
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:self->_clientExternallyBlockedReasons];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_waitingForClientActivation)
  {
    [v3 addObject:@"block._SBContinuitySessionServiceClient.waiting-for-clientActivation"];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_connectionQueue_handleLaunchEventOfType:(id)a3 payload:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  BSDispatchMain();
}

- (void)_connectionQueue_handleContinuityButtonEvent:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_waitingForClientActivation)
  {
    [(_SBContinuitySessionServiceClient *)a2 _connectionQueue_handleContinuityButtonEvent:?];
  }

  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
}

- (void)_connectionQueue_setHostedInterfaceOrientation:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_waitingForClientActivation)
  {
    [(_SBContinuitySessionServiceClient *)a2 _connectionQueue_setHostedInterfaceOrientation:?];
  }

  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
}

- (void)_connectionQueue_handleActivated
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(_SBContinuitySessionServiceClient *)self succinctDescription];
    *buf = 138543362;
    v6 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received activation message (not handled yet)", buf, 0xCu);
  }

  BSDispatchMain();
}

- (void)_connectionQueue_handleUpdatedExternallyBlockedReasons:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

- (void)_connectionQueue_updatedAppearanceSettings:(id)a3 transitionContext:(id)a4 completion:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v12;
  v9 = v11;
  v10 = v7;
  BSDispatchMain();
}

- (void)_connectionQueue_didInvalidate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(_SBContinuitySessionServiceClient *)self succinctDescription];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] connection did invalidate", &v5, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_pushLatestStateToClient
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"_SBContinuitySessionServiceClient.m" lineNumber:364 description:@"don't have a display hardware identifier set"];

  *v0 = *v1;
}

- (void)_pushLatestOrientationToClient
{
  v27[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (!lock_invalidated && !self->_main_suppressClientCallouts)
  {
    v11 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(_SBContinuitySessionServiceClient *)self succinctDescription];
      v13 = BSInterfaceOrientationDescription();
      v14 = BSInterfaceOrientationMaskDescription();
      v19 = 138543874;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushing interface orientation %{public}@ + supported interface orientations %{public}@ to remote client", &v19, 0x20u);
    }

    connection = self->_connection;
    v16 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"NonLaunchingAngelIPC"];
    v27[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v4 = [(BSServiceConnection *)connection remoteTargetWithAssertionAttributes:v17];

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_interfaceOrientation];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_supportedInterfaceOrientations];
    [v4 didUpdateCurrentInterfaceOrientation:v6 supportedInterfaceOrientations:v18];

    goto LABEL_14;
  }

  v4 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(_SBContinuitySessionServiceClient *)self succinctDescription];
    v6 = v5;
    v7 = &stru_283094718;
    v8 = @"INVALIDATED";
    if (!lock_invalidated)
    {
      v8 = &stru_283094718;
    }

    main_suppressClientCallouts = self->_main_suppressClientCallouts;
    v10 = @" + ";
    if (!lock_invalidated || !main_suppressClientCallouts)
    {
      v10 = &stru_283094718;
    }

    v19 = 138544130;
    v20 = v5;
    v22 = v8;
    v21 = 2114;
    v23 = 2114;
    v24 = v10;
    if (main_suppressClientCallouts)
    {
      v7 = @"suppressing callouts";
    }

    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "[%{public}@] - not pushing interface orientation to client because it is %{public}@%{public}@%{public}@", &v19, 0x2Au);
LABEL_14:
  }
}

- (void)continuitySessionDidUpdateState:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_session != v4)
  {
    [_SBContinuitySessionServiceClient continuitySessionDidUpdateState:];
  }

  self->_state = [(SBContinuitySession *)v4 state];
  v5 = [(SBContinuitySession *)v4 reasons];
  stateReasons = self->_stateReasons;
  self->_stateReasons = v5;

  v7 = [(SBContinuitySession *)v4 displayHardwareIdentifier];
  v8 = [v7 copy];
  displayHardwareIdentifier = self->_displayHardwareIdentifier;
  self->_displayHardwareIdentifier = v8;

  v10 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(_SBContinuitySessionServiceClient *)self succinctDescription];
    v13 = NSStringFromSBContinuitySessionState(self->_state);
    v14 = self->_stateReasons;
    v15 = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_debug_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] session did update state %{public}@ + reasons %{public}@", &v15, 0x20u);
  }

  if (!self->_main_suppressClientCallouts || self->_state <= 2 && ([(NSSet *)self->_stateReasons containsObject:@"block._SBContinuitySessionServiceClient.waiting-for-clientActivation"]|| [(NSSet *)self->_stateReasons containsObject:@"block.session.client-connected"]))
  {
    [(_SBContinuitySessionServiceClient *)self _pushLatestStateToClient];
  }

  else
  {
    v11 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(_SBContinuitySessionServiceClient *)self continuitySessionDidUpdateState:v11];
    }

    self->_main_suppressClientCallouts = 0;
    [(_SBContinuitySessionServiceClient *)self _pushLatestStateToClient];
    [(_SBContinuitySessionServiceClient *)self _pushLatestOrientationToClient];
  }
}

- (void)continuitySession:(id)a3 didUpdateInterfaceOrientation:(int64_t)a4 supportedInterfaceOrientations:(unint64_t)a5
{
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_session != v8)
  {
    [_SBContinuitySessionServiceClient continuitySession:didUpdateInterfaceOrientation:supportedInterfaceOrientations:];
  }

  [(_SBContinuitySessionServiceClient *)self setInterfaceOrientation:a4];
  [(_SBContinuitySessionServiceClient *)self setSupportedInterfaceOrientations:a5];
  [(_SBContinuitySessionServiceClient *)self _pushLatestOrientationToClient];
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
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63___SBContinuitySessionServiceClient_appendDescriptionToStream___block_invoke;
  v10[3] = &unk_2783A92D8;
  v5 = v4;
  v11 = v5;
  v12 = self;
  [v5 appendProem:self block:v10];
  if (([v5 hasSuccinctStyle] & 1) == 0)
  {
    v6 = [MEMORY[0x277CF0C10] collectionLineBreakNoneStyle];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63___SBContinuitySessionServiceClient_appendDescriptionToStream___block_invoke_2;
    v7[3] = &unk_2783A92D8;
    v8 = v5;
    v9 = self;
    [v8 overlayStyle:v6 block:v7];
  }
}

- (_SBContinuitySessionServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_connectionQueue_handleContinuityButtonEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionServiceClient.m" lineNumber:125 description:@"Can't process button event before client activation"];
}

- (void)_connectionQueue_setHostedInterfaceOrientation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionServiceClient.m" lineNumber:147 description:@"Can't process hosted interface orientation change"];
}

- (void)continuitySessionDidUpdateState:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v2 object:v1 file:@"_SBContinuitySessionServiceClient.m" lineNumber:406 description:{@"session updated orientation: %@ is not the one i'm tracking: %@", v0, *v3}];
}

- (void)continuitySessionDidUpdateState:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 succinctDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] got first update after handling client activation, ending client update suppression and pushing latest state + orientation", v4, 0xCu);
}

- (void)continuitySession:didUpdateInterfaceOrientation:supportedInterfaceOrientations:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v2 object:v1 file:@"_SBContinuitySessionServiceClient.m" lineNumber:430 description:{@"session updated orientation: %@ is not the one i'm tracking: %@", v0, *v3}];
}

@end