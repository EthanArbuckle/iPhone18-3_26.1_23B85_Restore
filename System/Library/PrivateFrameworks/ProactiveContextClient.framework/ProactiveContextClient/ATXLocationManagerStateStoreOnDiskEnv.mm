@interface ATXLocationManagerStateStoreOnDiskEnv
- (int)openFileAtPath:(id)a3 dataProtectionClass:(int)a4;
- (void)callOnNextUnlock:(id)a3;
- (void)dealloc;
@end

@implementation ATXLocationManagerStateStoreOnDiskEnv

- (void)dealloc
{
  if (self->_stateChangeRegistration)
  {
    [MEMORY[0x277D42598] unregisterForLockStateChangeNotifications:?];
  }

  v3.receiver = self;
  v3.super_class = ATXLocationManagerStateStoreOnDiskEnv;
  [(ATXLocationManagerStateStoreOnDiskEnv *)&v3 dealloc];
}

- (int)openFileAtPath:(id)a3 dataProtectionClass:(int)a4
{
  v5 = a3;
  v6 = open_dprotected_np([v5 UTF8String], 514, a4, 0, 384);
  if (v6 < 0 && *__error() != 1)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXLocationManagerStateStoreOnDiskEnv openFileAtPath:dataProtectionClass:];
    }
  }

  return v6;
}

- (void)callOnNextUnlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [ATXLocationManagerStateStoreOnDiskEnv callOnNextUnlock:];
  }

  if (self->_stateChangeRegistration)
  {
    [MEMORY[0x277D42598] unregisterForLockStateChangeNotifications:?];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v5 = MEMORY[0x277D42598];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__ATXLocationManagerStateStoreOnDiskEnv_callOnNextUnlock___block_invoke;
  v10[3] = &unk_279AB8008;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  v7 = [v5 registerForLockStateChangeNotifications:v10];
  stateChangeRegistration = self->_stateChangeRegistration;
  self->_stateChangeRegistration = v7;

  v9 = objc_opt_class();
  objc_sync_enter(v9);
  objc_storeStrong(v14 + 5, self->_stateChangeRegistration);
  objc_sync_exit(v9);

  _Block_object_dispose(&v13, 8);
}

void __58__ATXLocationManagerStateStoreOnDiskEnv_callOnNextUnlock___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    (*(*(a1 + 32) + 16))();
    obj = objc_opt_class();
    objc_sync_enter(obj);
    [MEMORY[0x277D42598] unregisterForLockStateChangeNotifications:*(*(*(a1 + 40) + 8) + 40)];
    objc_sync_exit(obj);
  }
}

- (void)openFileAtPath:dataProtectionClass:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v6 = 138412802;
  v7 = v1;
  v8 = 1024;
  v9 = v2;
  v10 = 2080;
  v11 = v4;
  _os_log_fault_impl(&dword_260C9F000, v0, OS_LOG_TYPE_FAULT, "failed to open '%@': [%i] %s", &v6, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)callOnNextUnlock:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ATXLocationManagerStateStore.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"callback"}];
}

@end