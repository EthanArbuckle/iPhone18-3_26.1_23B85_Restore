@interface SBSSystemNotesPresentationClientToServerProxy
- (SBSSystemNotesPresentationServerToClientInterface)delegate;
- (void)_setupAndActivateConnection;
- (void)activateConfiguration:(id)a3;
- (void)invalidate;
- (void)presentWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation SBSSystemNotesPresentationClientToServerProxy

- (void)invalidate
{
  objc_storeWeak(&self->_delegate, 0);
  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)activateConfiguration:(id)a3
{
  objc_storeStrong(&self->_requestedConfiguration, a3);
  v5 = a3;
  requestedConfiguration = self->_requestedConfiguration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__SBSSystemNotesPresentationClientToServerProxy_activateConfiguration___block_invoke;
  v7[3] = &unk_1E735F1E0;
  v7[4] = self;
  [(SBSSystemNotesPresentationConfiguration *)requestedConfiguration prepareForXPCCall:v7];
}

void __71__SBSSystemNotesPresentationClientToServerProxy_activateConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogSystemNotes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__SBSSystemNotesPresentationClientToServerProxy_activateConfiguration___block_invoke_cold_1(a1, v3, v4);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    [WeakRetained configuration:*(*(a1 + 32) + 24) didInvalidateWithError:v3];
  }

  else
  {
    [*(a1 + 32) _setupAndActivateConnection];
    WeakRetained = [*(*(a1 + 32) + 8) remoteTarget];
    [WeakRetained activateConfiguration:*(*(a1 + 32) + 24)];
  }
}

- (void)presentWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBSSystemNotesPresentationClientToServerProxy.m" lineNumber:49 description:@"deprecated method that should be called via SBSSystemNotesPresentationRequest"];
}

- (void)_setupAndActivateConnection
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"SBSSystemNotesPresentationClientToServerProxy.m" lineNumber:57 description:{@"_activateConnection called but we already have a connection queue: %@", *a1}];
}

void __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSSystemNotesPresentationServiceInterfaceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[SBSSystemNotesPresentationServiceInterfaceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [v3 setInterfaceTarget:WeakRetained];

  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  [v3 setActivationHandler:&__block_literal_global_7];
  objc_initWeak(&location, *(a1 + 32));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19;
  v7[3] = &unk_1E735ED60;
  objc_copyWeak(&v8, &location);
  [v3 setInvalidationHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogSystemNotes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogSystemNotes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(WeakRetained + 4);
    [v7 configuration:v6[3] didInvalidateWithError:0];
  }
}

- (SBSSystemNotesPresentationServerToClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __71__SBSSystemNotesPresentationClientToServerProxy_activateConfiguration___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 24);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "Failed to prepare SBSSystemNotesPresentationConfiguration for XPC call. request: %{public}@; error: %{public}@", &v4, 0x16u);
}

void __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "Received invalidation for connection: %{public}@", &v2, 0xCu);
}

@end