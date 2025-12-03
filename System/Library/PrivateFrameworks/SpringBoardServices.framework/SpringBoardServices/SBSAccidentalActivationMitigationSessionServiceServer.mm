@interface SBSAccidentalActivationMitigationSessionServiceServer
- (BSServiceConnection)_connection;
- (SBAccidentalActivationMitigationHostSession)_hostSession;
- (SBSAccidentalActivationMitigationSessionServiceServer)initWithDelegate:(id)delegate;
- (SBSAccidentalActivationMitigationSessionServiceServerDelegate)delegate;
- (void)_setConnection:(id)connection;
- (void)_setHostSession:(id)session;
- (void)accidentalActivationMitigationSessionStateDidChange:(id)change;
- (void)activateSessionForBundleIdentifier:(id)identifier durationNum:(id)num accidentalActivationMitigationSessionCancellationPolicyClassName:(id)name;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)requestSessionCancellation;
- (void)startServer;
@end

@implementation SBSAccidentalActivationMitigationSessionServiceServer

- (SBSAccidentalActivationMitigationSessionServiceServer)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SBSAccidentalActivationMitigationSessionServiceServer;
  v5 = [(SBSAccidentalActivationMitigationSessionServiceServer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)startServer
{
  BSDispatchQueueAssertMain();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__SBSAccidentalActivationMitigationSessionServiceServer_startServer__block_invoke;
  v5[3] = &unk_1E7360A28;
  v5[4] = self;
  v3 = [MEMORY[0x1E698F4B8] listenerWithConfigurator:v5];
  connectionListener = self->_connectionListener;
  self->_connectionListener = v3;

  [(BSServiceConnectionListener *)self->_connectionListener activate];
}

void __68__SBSAccidentalActivationMitigationSessionServiceServer_startServer__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = +[SBSAccidentalActivationMitigationSessionServiceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  v3.receiver = self;
  v3.super_class = SBSAccidentalActivationMitigationSessionServiceServer;
  [(SBSAccidentalActivationMitigationSessionServiceServer *)&v3 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  objc_initWeak(&location, self);
  _hostSession = [(SBSAccidentalActivationMitigationSessionServiceServer *)self _hostSession];
  v12 = _hostSession == 0;

  if (v12)
  {
    remoteProcess = [connectionCopy remoteProcess];
    auditToken = [remoteProcess auditToken];
    if ([auditToken hasEntitlement:@"com.apple.springboard.private.accidental-mitigation-session-service"])
    {
    }

    else
    {
      remoteProcess2 = [connectionCopy remoteProcess];
      auditToken2 = [remoteProcess2 auditToken];
      v19 = [auditToken2 hasEntitlement:@"com.apple.springboard.private.3CAD882F-D615-43E4-89A9-34720441BC23"];

      if (!v19)
      {
        v13 = SBLogCameraCaptureAccidentalActivationMitigationSession();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        *buf = 138412290;
        v29 = connectionCopy;
        v14 = "Invalidating connection because client process is missing required entitlement %@.";
        goto LABEL_4;
      }
    }

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke;
    v24 = &unk_1E735F0A8;
    selfCopy = self;
    objc_copyWeak(&v26, &location);
    [connectionCopy configureConnection:&v21];
    v20 = MEMORY[0x1E69E9820];
    BSDispatchMain();
    [(SBSAccidentalActivationMitigationSessionServiceServer *)self _setConnection:connectionCopy, v20, 3221225472, __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke_19, &unk_1E735F9D0, self, v21, v22, v23, v24, selfCopy];
    [connectionCopy activate];
    objc_destroyWeak(&v26);
    goto LABEL_10;
  }

  v13 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = connectionCopy;
    v14 = "Refuse to connect since there is already a host session %@.";
LABEL_4:
    _os_log_impl(&dword_19169D000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
  }

LABEL_5:

  [connectionCopy invalidate];
LABEL_10:
  objc_destroyWeak(&location);
}

void __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSAccidentalActivationMitigationSessionServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SBSAccidentalActivationMitigationSessionServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setInterruptionHandler:&__block_literal_global_48];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke_12;
  v9 = &unk_1E73617C0;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  [v3 setInvalidationHandler:&v6];
  [v3 setActivationHandler:{&__block_literal_global_17, v6, v7, v8, v9}];
  objc_destroyWeak(&v11);
}

void __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Interrupted connection %@", &v4, 0xCu);
  }
}

void __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke_12(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "Invalidated connection %@", buf, 0xCu);
  }

  if (WeakRetained)
  {
    [*(a1 + 32) _setConnection:0];
    v6 = WeakRetained;
    BSDispatchMain();
  }
}

void __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) _hostSession];
  v3 = [v2 state];

  if (!v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 serverDidRequestDestroyNonActiveHostSessionUponDisconnection:*(a1 + 40)];

    v5 = *(a1 + 32);

    [v5 _setHostSession:0];
  }
}

void __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke_2_15(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Activated connection %@", &v4, 0xCu);
  }
}

void __99__SBSAccidentalActivationMitigationSessionServiceServer_listener_didReceiveConnection_withContext___block_invoke_19(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 serverDidRequestCreateHostSessionUponConnection:*(a1 + 32)];

  [*(a1 + 32) _setHostSession:v3];
  [v3 addObserver:*(a1 + 32)];
}

- (BSServiceConnection)_connection
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setConnection:(id)connection
{
  connectionCopy = connection;
  _connection = [(SBSAccidentalActivationMitigationSessionServiceServer *)self _connection];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_connection, connection);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (SBAccidentalActivationMitigationHostSession)_hostSession
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_host_session;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setHostSession:(id)session
{
  sessionCopy = session;
  _hostSession = [(SBSAccidentalActivationMitigationSessionServiceServer *)self _hostSession];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_host_session, session);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)accidentalActivationMitigationSessionStateDidChange:(id)change
{
  changeCopy = change;
  _hostSession = [(SBSAccidentalActivationMitigationSessionServiceServer *)self _hostSession];
  v5 = [changeCopy isEqual:_hostSession];

  if (v5)
  {
    _connection = [(SBSAccidentalActivationMitigationSessionServiceServer *)self _connection];
    remoteTarget = [_connection remoteTarget];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(changeCopy, "state")}];
    [remoteTarget mitigationSessionDidTransitionToState:v8];

    if (([changeCopy state] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(SBSAccidentalActivationMitigationSessionServiceServer *)self _setHostSession:0];
      _connection2 = [(SBSAccidentalActivationMitigationSessionServiceServer *)self _connection];
      [_connection2 invalidate];
    }
  }
}

- (void)activateSessionForBundleIdentifier:(id)identifier durationNum:(id)num accidentalActivationMitigationSessionCancellationPolicyClassName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  [num doubleValue];
  v10 = v9;
  v11 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = identifierCopy;
    v17 = 2048;
    v18 = v10;
    v19 = 2112;
    v20 = nameCopy;
    _os_log_impl(&dword_19169D000, v11, OS_LOG_TYPE_DEFAULT, "Activate host session with bundle identifier: %@ with duration: %f and accidental activation mitigation session cancellation policy: %@", buf, 0x20u);
  }

  v14 = identifierCopy;
  v12 = nameCopy;
  v13 = identifierCopy;
  BSDispatchMain();
}

void __169__SBSAccidentalActivationMitigationSessionServiceServer_activateSessionForBundleIdentifier_durationNum_accidentalActivationMitigationSessionCancellationPolicyClassName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _hostSession];
  [v2 activateSessionForBundleIdentifier:*(a1 + 40) duration:*(a1 + 48) accidentalActivationMitigationSessionCancellationPolicyClassName:*(a1 + 56)];
}

- (void)requestSessionCancellation
{
  v2 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19169D000, v2, OS_LOG_TYPE_DEFAULT, "Request session cancellation", buf, 2u);
  }

  BSDispatchMain();
}

void __83__SBSAccidentalActivationMitigationSessionServiceServer_requestSessionCancellation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _hostSession];
  [v1 requestSessionCancellation];
}

- (SBSAccidentalActivationMitigationSessionServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end