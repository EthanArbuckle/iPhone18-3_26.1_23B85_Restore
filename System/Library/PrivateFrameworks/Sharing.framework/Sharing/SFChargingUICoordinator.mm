@interface SFChargingUICoordinator
- (void)_activate;
- (void)_dismissUI;
- (void)_initialViewControllerDidAppear;
- (void)_initialViewControllerDidDisappear;
- (void)_invalidate;
- (void)_requestToDismissUIHandler:(id)a3;
- (void)_requestToStartAnimationAtDate:(id)a3;
- (void)_sendDismissUIWithReason:(int64_t)a3;
- (void)_timingInvalidateMinTimer;
- (void)_timingRestartMinTimer;
- (void)activate;
- (void)initialViewControllerDidAppear;
- (void)initialViewControllerDidDisappear;
- (void)invalidate;
- (void)onqueue_connectionEstablished;
- (void)onqueue_connectionInterrupted;
- (void)onqueue_connectionInvalidated;
- (void)requestAnimationDateWithCompletion:(id)a3;
- (void)requestToDismissUIHandler:(id)a3;
- (void)requestToShowUIWithHandler:(id)a3;
- (void)requestToStartAnimationAtDate:(id)a3;
- (void)sendDismissUIWithReason:(int64_t)a3;
@end

@implementation SFChargingUICoordinator

- (void)activate
{
  v3 = [(SFXPCClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFChargingUICoordinator_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_activate
{
  v1 = charging_log();
  if (OUTLINED_FUNCTION_1_4(v1))
  {
    OUTLINED_FUNCTION_0_4(&dword_1A9662000, v2, v3, "Coordinator already activated", v4, v5, v6, v7, 0);
  }
}

- (void)invalidate
{
  v3 = [(SFXPCClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFChargingUICoordinator_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_invalidate
{
  v1 = charging_log();
  if (OUTLINED_FUNCTION_1_4(v1))
  {
    OUTLINED_FUNCTION_0_4(&dword_1A9662000, v2, v3, "Coordinator already invalidated", v4, v5, v6, v7, 0);
  }
}

- (void)requestToShowUIWithHandler:(id)a3
{
  v4 = a3;
  v5 = charging_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SFChargingUICoordinator requestToShowUIWithHandler:v5];
  }

  v6 = [(SFXPCClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SFChargingUICoordinator_requestToShowUIWithHandler___block_invoke;
  block[3] = &unk_1E788B1C0;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, block);
}

- (void)requestToStartAnimationAtDate:(id)a3
{
  v4 = a3;
  v5 = [(SFXPCClient *)self dispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SFChargingUICoordinator_requestToStartAnimationAtDate___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_requestToStartAnimationAtDate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = charging_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Client requesting to start animation at %@", buf, 0xCu);
  }

  v6 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v6);

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SFChargingUICoordinator__requestToStartAnimationAtDate___block_invoke;
  v9[3] = &unk_1E788B1E8;
  v10 = v4;
  v7 = v4;
  [(SFXPCClient *)self onqueue_getRemoteObjectProxyOnQueue:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestToDismissUIHandler:(id)a3
{
  v4 = a3;
  v5 = [(SFXPCClient *)self dispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SFChargingUICoordinator_requestToDismissUIHandler___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __53__SFChargingUICoordinator_requestToDismissUIHandler___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 34) & 1) == 0)
  {
    v2 = charging_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __53__SFChargingUICoordinator_requestToDismissUIHandler___block_invoke_cold_1(v2);
    }

    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [v4 dateByAddingTimeInterval:1.2];
    [v3 _requestToStartAnimationAtDate:v5];
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_requestToDismissUIHandler:(id)a3
{
  v4 = a3;
  v5 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_uiUpdateHandler)
  {
    [SFChargingUICoordinator _requestToDismissUIHandler:];
  }

  else
  {
    v6 = _Block_copy(v4);
    uiUpdateHandler = self->_uiUpdateHandler;
    self->_uiUpdateHandler = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__SFChargingUICoordinator__requestToDismissUIHandler___block_invoke;
    v8[3] = &unk_1E788B1E8;
    v8[4] = self;
    [(SFXPCClient *)self onqueue_getRemoteObjectProxyOnQueue:v8];
    [(SFChargingUICoordinator *)self _timingRestartMinTimer];
  }
}

uint64_t __54__SFChargingUICoordinator__requestToDismissUIHandler___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__SFChargingUICoordinator__requestToDismissUIHandler___block_invoke_2;
  v3[3] = &unk_1E788B238;
  v3[4] = *(a1 + 32);
  return [a2 triggerChargingUIWithDismissHandler:v3];
}

void __54__SFChargingUICoordinator__requestToDismissUIHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = charging_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Ready to dismiss UI (error: %@)", &v6, 0xCu);
  }

  *(*(a1 + 32) + 65) = 1;
  [*(a1 + 32) _dismissUI];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendDismissUIWithReason:(int64_t)a3
{
  v5 = [(SFXPCClient *)self dispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SFChargingUICoordinator_sendDismissUIWithReason___block_invoke;
  v6[3] = &unk_1E788B260;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)_sendDismissUIWithReason:(int64_t)a3
{
  v5 = charging_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Sending dismiss UI", buf, 2u);
  }

  v6 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v6);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SFChargingUICoordinator__sendDismissUIWithReason___block_invoke;
  v7[3] = &__block_descriptor_40_e8_v16__0_8l;
  v7[4] = a3;
  [(SFXPCClient *)self onqueue_getRemoteObjectProxyOnQueue:v7];
}

- (void)_dismissUI
{
  v3 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_uiUpdateHandler && self->_uiUpdateMinTimeElapsed && self->_uiUpdateShouldDismiss)
  {
    v4 = charging_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Asking client to dismiss UI", v6, 2u);
    }

    self->_uiUpdateMinTimeElapsed = 0;
    self->_uiUpdateShouldDismiss = 0;
    (*(self->_uiUpdateHandler + 2))();
    uiUpdateHandler = self->_uiUpdateHandler;
    self->_uiUpdateHandler = 0;

    [(SFChargingUICoordinator *)self _timingInvalidateMinTimer];
  }
}

- (void)initialViewControllerDidAppear
{
  v3 = [(SFXPCClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SFChargingUICoordinator_initialViewControllerDidAppear__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_initialViewControllerDidAppear
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Sending initial view controller did appear", v5, 2u);
  }

  v4 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  [(SFXPCClient *)self onqueue_getRemoteObjectProxyOnQueue:&__block_literal_global_4];
}

- (void)initialViewControllerDidDisappear
{
  v3 = [(SFXPCClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFChargingUICoordinator_initialViewControllerDidDisappear__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_initialViewControllerDidDisappear
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Sending initial view controller did disappear", v5, 2u);
  }

  v4 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  [(SFXPCClient *)self onqueue_getRemoteObjectProxyOnQueue:&__block_literal_global_136];
}

- (void)requestAnimationDateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = charging_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Client requesting animation date", buf, 2u);
  }

  v6 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v6);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SFChargingUICoordinator_requestAnimationDateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B2C8;
  v9 = v4;
  v7 = v4;
  [(SFXPCClient *)self onqueue_getRemoteObjectProxyOnQueue:v8];
}

- (void)_timingRestartMinTimer
{
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Restarting UI minimum timer", buf, 2u);
  }

  v4 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  if (!self->_uiUpdateTimer)
  {
    objc_initWeak(buf, self);
    v5 = [(SFXPCClient *)self dispatchQueue];
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
    uiUpdateTimer = self->_uiUpdateTimer;
    self->_uiUpdateTimer = v6;

    v8 = self->_uiUpdateTimer;
    v9 = dispatch_time(0, 2147483647000000000);
    dispatch_source_set_timer(v8, v9, 0x1DCD64FFC4653600uLL, 0);
    v10 = self->_uiUpdateTimer;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__SFChargingUICoordinator__timingRestartMinTimer__block_invoke;
    v12[3] = &unk_1E788AF18;
    v12[4] = self;
    objc_copyWeak(&v13, buf);
    dispatch_source_set_event_handler(v10, v12);
    dispatch_resume(self->_uiUpdateTimer);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = dispatch_time(0, 1500000000);
  dispatch_source_set_timer(self->_uiUpdateTimer, v11, 0x1DCD64FFC4653600uLL, 0);
}

void __49__SFChargingUICoordinator__timingRestartMinTimer__block_invoke(uint64_t a1)
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Minimum timer complete", v4, 2u);
  }

  *(*(a1 + 32) + 64) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dismissUI];
}

- (void)_timingInvalidateMinTimer
{
  v3 = [(SFXPCClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  uiUpdateTimer = self->_uiUpdateTimer;
  if (uiUpdateTimer)
  {
    dispatch_source_cancel(uiUpdateTimer);
    v5 = self->_uiUpdateTimer;
    self->_uiUpdateTimer = 0;
  }
}

- (void)onqueue_connectionEstablished
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Charging UI coordinator connection established", v3, 2u);
  }
}

- (void)onqueue_connectionInterrupted
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Charging UI coordinator connection interrupted", v3, 2u);
  }
}

- (void)onqueue_connectionInvalidated
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Charging UI coordinator connection invalidated", v3, 2u);
  }
}

- (void)_requestToDismissUIHandler:.cold.1()
{
  v0 = charging_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1A9662000, v0, OS_LOG_TYPE_ERROR, "Request to dismiss UI in progress", v1, 2u);
  }
}

@end