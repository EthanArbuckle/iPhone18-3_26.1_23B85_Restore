@interface SBSLockScreenServiceConnection
- (SBSLockScreenServiceConnection)init;
- (id)preventPasscodeLockWithReason:(id)a3;
- (id)preventSpuriousScreenUndimWithReason:(id)a3;
- (void)dealloc;
- (void)launchEmergencyDialerWithCompletion:(id)a3;
- (void)lockDeviceAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)migrateIncomingNotificationsToHistory;
- (void)requestPasscodeCheckUIWithOptions:(id)a3 withCompletion:(id)a4;
- (void)requestPasscodeUnlockUIWithOptions:(id)a3 withCompletion:(id)a4;
@end

@implementation SBSLockScreenServiceConnection

- (SBSLockScreenServiceConnection)init
{
  v13.receiver = self;
  v13.super_class = SBSLockScreenServiceConnection;
  v2 = [(SBSLockScreenServiceConnection *)&v13 init];
  if (v2)
  {
    v3 = MEMORY[0x1E698F498];
    v4 = [MEMORY[0x1E698F498] defaultShellMachName];
    v5 = +[SBSLockScreenServiceSpecification identifier];
    v6 = [v3 endpointForMachName:v4 service:v5 instance:0];

    if (v6)
    {
      v7 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
      connection = v2->_connection;
      v2->_connection = v7;

      v9 = v2->_connection;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __38__SBSLockScreenServiceConnection_init__block_invoke;
      v11[3] = &unk_1E735ED88;
      v12 = v2;
      [(BSServiceConnection *)v9 configureConnection:v11];
      [(BSServiceConnection *)v2->_connection activate];
    }
  }

  return v2;
}

void __38__SBSLockScreenServiceConnection_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSLockScreenServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v5];

  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __38__SBSLockScreenServiceConnection_init__block_invoke_2;
  v9 = &unk_1E735ED60;
  objc_copyWeak(&v10, &location);
  [v3 setInterruptionHandler:&v6];
  [v3 setInvalidationHandler:{&__block_literal_global_4, v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__SBSLockScreenServiceConnection_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_INFO, "SBSLockScreenService: interrupted - resyncing state", v11, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [v3 activate];
    v7 = [v3 remoteTarget];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*&v6[6]._os_unfair_lock_opaque, "count") != 0}];
    [v7 setPreventPasscodeLock:v8];

    v9 = [v3 remoteTarget];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*&v6[8]._os_unfair_lock_opaque, "count") != 0}];
    [v9 setPreventSpuriousScreenUndim:v10];

    os_unfair_lock_unlock(v6 + 4);
  }
}

void __38__SBSLockScreenServiceConnection_init__block_invoke_5()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_19169D000, v0, OS_LOG_TYPE_INFO, "SBSLockScreenService: invalidated remotely", v1, 2u);
  }
}

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SBSLockScreenServiceConnection;
  [(SBSLockScreenServiceConnection *)&v3 dealloc];
}

- (void)launchEmergencyDialerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__SBSLockScreenServiceConnection_launchEmergencyDialerWithCompletion___block_invoke;
    v8[3] = &unk_1E735F0F8;
    v9 = v4;
    [v5 launchEmergencyDialerWithCompletion:v8];
    v6 = v9;
LABEL_7:

    goto LABEL_8;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SBSLockScreenServiceConnection launchEmergencyDialerWithCompletion:];
  }

  if (v4)
  {
    v6 = dispatch_get_global_queue(25, 0);
    dispatch_async(v6, v4);
    goto LABEL_7;
  }

LABEL_8:
}

void __70__SBSLockScreenServiceConnection_launchEmergencyDialerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__SBSLockScreenServiceConnection_launchEmergencyDialerWithCompletion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(25, 0);
    dispatch_async(v6, v5);
  }
}

- (void)requestPasscodeUnlockUIWithOptions:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__SBSLockScreenServiceConnection_requestPasscodeUnlockUIWithOptions_withCompletion___block_invoke;
    v14[3] = &unk_1E735F0F8;
    v9 = &v15;
    v15 = v7;
    [v8 requestPasscodeUnlockUIWithOptions:v6 withCompletion:v14];
LABEL_7:

    goto LABEL_8;
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBSLockScreenServiceConnection requestPasscodeUnlockUIWithOptions:withCompletion:];
  }

  if (v7)
  {
    v11 = dispatch_get_global_queue(25, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__SBSLockScreenServiceConnection_requestPasscodeUnlockUIWithOptions_withCompletion___block_invoke_12;
    v12[3] = &unk_1E735F148;
    v9 = &v13;
    v13 = v7;
    dispatch_async(v11, v12);

    goto LABEL_7;
  }

LABEL_8:
}

void __84__SBSLockScreenServiceConnection_requestPasscodeUnlockUIWithOptions_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SBSLockScreenServiceConnection_requestPasscodeUnlockUIWithOptions_withCompletion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(25, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__SBSLockScreenServiceConnection_requestPasscodeUnlockUIWithOptions_withCompletion___block_invoke_10;
    v7[3] = &unk_1E735F120;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)requestPasscodeCheckUIWithOptions:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__SBSLockScreenServiceConnection_requestPasscodeCheckUIWithOptions_withCompletion___block_invoke;
    v14[3] = &unk_1E735F0F8;
    v9 = &v15;
    v15 = v7;
    [v8 requestPasscodeCheckUIWithOptions:v6 withCompletion:v14];
LABEL_7:

    goto LABEL_8;
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBSLockScreenServiceConnection requestPasscodeCheckUIWithOptions:withCompletion:];
  }

  if (v7)
  {
    v11 = dispatch_get_global_queue(25, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__SBSLockScreenServiceConnection_requestPasscodeCheckUIWithOptions_withCompletion___block_invoke_14;
    v12[3] = &unk_1E735F148;
    v9 = &v13;
    v13 = v7;
    dispatch_async(v11, v12);

    goto LABEL_7;
  }

LABEL_8:
}

void __83__SBSLockScreenServiceConnection_requestPasscodeCheckUIWithOptions_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__SBSLockScreenServiceConnection_requestPasscodeCheckUIWithOptions_withCompletion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(25, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__SBSLockScreenServiceConnection_requestPasscodeCheckUIWithOptions_withCompletion___block_invoke_13;
    v7[3] = &unk_1E735F120;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (id)preventPasscodeLockWithReason:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [SBSLockScreenServiceConnection preventPasscodeLockWithReason:];
  }

  v6 = objc_alloc(MEMORY[0x1E698E778]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__SBSLockScreenServiceConnection_preventPasscodeLockWithReason___block_invoke;
  v17[3] = &unk_1E735F170;
  v17[4] = self;
  v17[5] = a2;
  v7 = [v6 initWithIdentifier:@"com.apple.springboard.lockscreen.preventPasscodeLock" forReason:v5 invalidationBlock:v17];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  lock_preventPasscodeLockReasons = self->_lock_preventPasscodeLockReasons;
  if (lock_preventPasscodeLockReasons)
  {
    v10 = [v7 reason];
    [(NSCountedSet *)lock_preventPasscodeLockReasons addObject:v10];
  }

  else
  {
    v11 = MEMORY[0x1E696AB50];
    v10 = [v7 reason];
    v12 = [v11 setWithObject:v10];
    v13 = self->_lock_preventPasscodeLockReasons;
    self->_lock_preventPasscodeLockReasons = v12;
  }

  v14 = SBLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 reason];
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&dword_19169D000, v14, OS_LOG_TYPE_DEFAULT, "SBSLockScreenService: creating new preventPasscodeLock assertion (%@)", buf, 0xCu);
  }

  [v8 setPreventPasscodeLock:MEMORY[0x1E695E118]];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

void __64__SBSLockScreenServiceConnection_preventPasscodeLockWithReason___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v5 = [*(*(a1 + 32) + 8) remoteTarget];
  v6 = *(*(a1 + 32) + 24);
  v7 = [v3 reason];
  LOBYTE(v6) = [v6 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    __64__SBSLockScreenServiceConnection_preventPasscodeLockWithReason___block_invoke_cold_1(a1, (a1 + 32), v3);
  }

  v8 = *&(*v4)[6]._os_unfair_lock_opaque;
  v9 = [v3 reason];
  [v8 removeObject:v9];

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 reason];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_DEFAULT, "SBSLockScreenService: preventPasscodeLock assertion invalidated (%@)", &v13, 0xCu);
  }

  if (![*&(*v4)[6]._os_unfair_lock_opaque count])
  {
    v12 = *&(*v4)[6]._os_unfair_lock_opaque;
    *&(*v4)[6]._os_unfair_lock_opaque = 0;

    [v5 setPreventPasscodeLock:MEMORY[0x1E695E110]];
  }

  os_unfair_lock_unlock(*v4 + 4);
}

- (id)preventSpuriousScreenUndimWithReason:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [SBSLockScreenServiceConnection preventSpuriousScreenUndimWithReason:];
  }

  v6 = objc_alloc(MEMORY[0x1E698E778]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__SBSLockScreenServiceConnection_preventSpuriousScreenUndimWithReason___block_invoke;
  v17[3] = &unk_1E735F170;
  v17[4] = self;
  v17[5] = a2;
  v7 = [v6 initWithIdentifier:@"com.apple.springboard.lockscreen.preventSpuriousScreenUndim" forReason:v5 invalidationBlock:v17];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  lock_preventSpuriousScreenUndimReasons = self->_lock_preventSpuriousScreenUndimReasons;
  if (lock_preventSpuriousScreenUndimReasons)
  {
    v10 = [v7 reason];
    [(NSCountedSet *)lock_preventSpuriousScreenUndimReasons addObject:v10];
  }

  else
  {
    v11 = MEMORY[0x1E696AB50];
    v10 = [v7 reason];
    v12 = [v11 setWithObject:v10];
    v13 = self->_lock_preventSpuriousScreenUndimReasons;
    self->_lock_preventSpuriousScreenUndimReasons = v12;
  }

  v14 = SBLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 reason];
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&dword_19169D000, v14, OS_LOG_TYPE_DEFAULT, "SBSLockScreenService: creating new preventSpuriousScreenUndim assertion (%@)", buf, 0xCu);
  }

  [v8 setPreventSpuriousScreenUndim:MEMORY[0x1E695E118]];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

void __71__SBSLockScreenServiceConnection_preventSpuriousScreenUndimWithReason___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v5 = [*(*(a1 + 32) + 8) remoteTarget];
  v6 = *(*(a1 + 32) + 32);
  v7 = [v3 reason];
  LOBYTE(v6) = [v6 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    __71__SBSLockScreenServiceConnection_preventSpuriousScreenUndimWithReason___block_invoke_cold_1(a1, (a1 + 32), v3);
  }

  v8 = *&(*v4)[8]._os_unfair_lock_opaque;
  v9 = [v3 reason];
  [v8 removeObject:v9];

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 reason];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_DEFAULT, "SBSLockScreenService: preventSpuriousScreenUndim assertion invalidated (%@)", &v13, 0xCu);
  }

  if (![*&(*v4)[8]._os_unfair_lock_opaque count])
  {
    v12 = *&(*v4)[8]._os_unfair_lock_opaque;
    *&(*v4)[8]._os_unfair_lock_opaque = 0;

    [v5 setPreventSpuriousScreenUndim:MEMORY[0x1E695E110]];
  }

  os_unfair_lock_unlock(*v4 + 4);
}

- (void)lockDeviceAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__SBSLockScreenServiceConnection_lockDeviceAnimated_withCompletion___block_invoke;
    v13[3] = &unk_1E735F0F8;
    v9 = &v14;
    v14 = v6;
    [v7 lockDeviceAnimated:v8 withCompletion:v13];
LABEL_7:

    goto LABEL_8;
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBSLockScreenServiceConnection lockDeviceAnimated:withCompletion:];
  }

  if (v6)
  {
    v8 = dispatch_get_global_queue(25, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__SBSLockScreenServiceConnection_lockDeviceAnimated_withCompletion___block_invoke_36;
    v11[3] = &unk_1E735F148;
    v9 = &v12;
    v12 = v6;
    dispatch_async(v8, v11);
    goto LABEL_7;
  }

LABEL_8:
}

void __68__SBSLockScreenServiceConnection_lockDeviceAnimated_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__SBSLockScreenServiceConnection_lockDeviceAnimated_withCompletion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(25, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__SBSLockScreenServiceConnection_lockDeviceAnimated_withCompletion___block_invoke_35;
    v7[3] = &unk_1E735F120;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)migrateIncomingNotificationsToHistory
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)launchEmergencyDialerWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__SBSLockScreenServiceConnection_launchEmergencyDialerWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)requestPasscodeUnlockUIWithOptions:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__SBSLockScreenServiceConnection_requestPasscodeUnlockUIWithOptions_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)requestPasscodeCheckUIWithOptions:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__SBSLockScreenServiceConnection_requestPasscodeCheckUIWithOptions_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)preventPasscodeLockWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

void __64__SBSLockScreenServiceConnection_preventPasscodeLockWithReason___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 40) object:*a2 file:@"SBSLockScreenService.m" lineNumber:133 description:{@"invalid internal state : assertion isn't appropriately tracked : %@", a3}];
}

- (void)preventSpuriousScreenUndimWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

void __71__SBSLockScreenServiceConnection_preventSpuriousScreenUndimWithReason___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 40) object:*a2 file:@"SBSLockScreenService.m" lineNumber:163 description:{@"invalid internal state : assertion isn't appropriately tracked : %@", a3}];
}

- (void)lockDeviceAnimated:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__SBSLockScreenServiceConnection_lockDeviceAnimated_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end