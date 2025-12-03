@interface UpgradeInterfaceLock
+ (id)getSharedInstance;
- (BOOL)_isLockedOnQueue;
- (BOOL)isLocked;
- (UpgradeInterfaceLock)init;
- (id)_acquireLockOnQueue;
- (id)_createXPCRequest;
- (id)acquireLock;
- (int)releaseLock;
- (void)_handleXPCMessage:(id)message;
- (void)_onNextLockRelease:(id)release;
- (void)dealloc;
@end

@implementation UpgradeInterfaceLock

+ (id)getSharedInstance
{
  if (getSharedInstance_onceToken != -1)
  {
    +[UpgradeInterfaceLock getSharedInstance];
  }

  v3 = getSharedInstance_gLockState;

  return v3;
}

uint64_t __41__UpgradeInterfaceLock_getSharedInstance__block_invoke()
{
  getSharedInstance_gLockState = objc_alloc_init(UpgradeInterfaceLock);

  return MEMORY[0x2A1C71028]();
}

- (UpgradeInterfaceLock)init
{
  v12.receiver = self;
  v12.super_class = UpgradeInterfaceLock;
  v2 = [(UpgradeInterfaceLock *)&v12 init];
  v3 = v2;
  if (v2)
  {
    lockConn = v2->_lockConn;
    v2->_lockConn = 0;

    v5 = dispatch_queue_create("com.apple.security.libcryptex.interface.upgrade_lock", MEMORY[0x29EDCA580]);
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = os_log_create("com.apple.libcryptex", "upgrade_lock");
    log = v3->_log;
    v3->_log = v7;

    v9 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    onNextLockReleaseCallbacks = v3->_onNextLockReleaseCallbacks;
    v3->_onNextLockReleaseCallbacks = v9;
  }

  return v3;
}

- (void)dealloc
{
  lockConn = self->_lockConn;
  if (lockConn)
  {
    xpc_connection_cancel(lockConn);
    v4 = self->_lockConn;
    self->_lockConn = 0;
  }

  v5.receiver = self;
  v5.super_class = UpgradeInterfaceLock;
  [(UpgradeInterfaceLock *)&v5 dealloc];
}

- (BOOL)isLocked
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(UpgradeInterfaceLock *)self queue];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __32__UpgradeInterfaceLock_isLocked__block_invoke;
  v5[3] = &unk_29EEA93C8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __32__UpgradeInterfaceLock_isLocked__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isLockedOnQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)releaseLock
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v3 = dispatch_group_create();
  if (v3)
  {
    queue = [(UpgradeInterfaceLock *)self queue];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __35__UpgradeInterfaceLock_releaseLock__block_invoke;
    block[3] = &unk_29EEA93F0;
    block[4] = self;
    v13 = &v14;
    v5 = v3;
    v12 = v5;
    dispatch_barrier_sync(queue, block);

    v6 = dispatch_time(0, 10000000000);
    v7 = dispatch_group_wait(v5, v6);
    v8 = v15;
    if (!v7)
    {
      v9 = 0;
      *(v15 + 6) = 0;
      goto LABEL_7;
    }

    v9 = 60;
  }

  else
  {
    v8 = v15;
    v9 = 12;
  }

  *(v8 + 6) = v9;
LABEL_7:
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __35__UpgradeInterfaceLock_releaseLock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lockConn];

  if (v2)
  {
    dispatch_group_enter(*(a1 + 40));
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __35__UpgradeInterfaceLock_releaseLock__block_invoke_2;
    v5[3] = &unk_29EEA92A8;
    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 _onNextLockRelease:v5];
    v4 = [*(a1 + 32) lockConn];
    xpc_connection_cancel(v4);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 57;
  }
}

- (id)acquireLock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = [(UpgradeInterfaceLock *)self queue];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __35__UpgradeInterfaceLock_acquireLock__block_invoke;
  v6[3] = &unk_29EEA93C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_barrier_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __35__UpgradeInterfaceLock_acquireLock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _acquireLockOnQueue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)_onNextLockRelease:(id)release
{
  releaseCopy = release;
  queue = [(UpgradeInterfaceLock *)self queue];
  dispatch_assert_queue_barrier(queue);

  onNextLockReleaseCallbacks = [(UpgradeInterfaceLock *)self onNextLockReleaseCallbacks];
  v6 = MEMORY[0x29C290870](releaseCopy);

  [onNextLockReleaseCallbacks addObject:v6];
}

- (id)_createXPCRequest
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "UPGRADE_LOCK");

  return empty;
}

- (BOOL)_isLockedOnQueue
{
  selfCopy = self;
  queue = [(UpgradeInterfaceLock *)self queue];
  dispatch_assert_queue_V2(queue);

  lockConn = [(UpgradeInterfaceLock *)selfCopy lockConn];
  LOBYTE(selfCopy) = lockConn != 0;

  return selfCopy;
}

- (id)_acquireLockOnQueue
{
  v47 = *MEMORY[0x29EDCA608];
  cf = 0;
  queue = [(UpgradeInterfaceLock *)self queue];
  dispatch_assert_queue_barrier(queue);

  if (![(UpgradeInterfaceLock *)self _isLockedOnQueue])
  {
    queue2 = [(UpgradeInterfaceLock *)self queue];
    connection = cryptex_xpc_create_connection(queue2);

    if (connection)
    {
      _createXPCRequest = [(UpgradeInterfaceLock *)self _createXPCRequest];
      if (!_createXPCRequest)
      {
        v15 = [(UpgradeInterfaceLock *)self log];

        if (v15)
        {
          v16 = [(UpgradeInterfaceLock *)self log];
          os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
          *buf = 0;
          v17 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 0;
          v17 = _os_log_send_and_compose_impl();
        }

        Error = createError("[UpgradeInterfaceLock _acquireLockOnQueue]", "upgrade_lock_interface.m", 170, "com.apple.security.cryptex", 24, 0, v17);
        free(v17);
        v6 = Error;
        v8 = 0;
        goto LABEL_39;
      }

      v11 = xpc_connection_send_message_with_reply_sync(connection, _createXPCRequest);
      v8 = v11;
      if (v11)
      {
        if (MEMORY[0x29C290B80](v11) == MEMORY[0x29EDCAA18])
        {
          v22 = MEMORY[0x29C290A60](v8);
          v23 = [(UpgradeInterfaceLock *)self log];

          if (v23)
          {
            v24 = [(UpgradeInterfaceLock *)self log];
            os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            v46 = v22;
            v25 = _os_log_send_and_compose_impl();
          }

          else
          {
            *buf = 136446210;
            v46 = v22;
            v25 = _os_log_send_and_compose_impl();
          }

          v39 = createError("[UpgradeInterfaceLock _acquireLockOnQueue]", "upgrade_lock_interface.m", 186, "com.apple.security.cryptex", 16, 0, v25);
          free(v25);
          v6 = v39;
          free(v22);
          goto LABEL_39;
        }

        v6 = 0;
      }

      else
      {
        v18 = [(UpgradeInterfaceLock *)self log];

        if (v18)
        {
          v19 = [(UpgradeInterfaceLock *)self log];
          os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
          *buf = 0;
          v20 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 0;
          v20 = _os_log_send_and_compose_impl();
        }

        v27 = createError("[UpgradeInterfaceLock _acquireLockOnQueue]", "upgrade_lock_interface.m", 179, "com.apple.security.cryptex", 16, 0, v20);
        free(v20);
        v6 = v27;
      }

      cferr = _xpc_dictionary_try_get_cferr(v8, "upgrade_lock_error", &cf);
      if ((cferr | 2) != 2)
      {
        v32 = [(UpgradeInterfaceLock *)self log];

        if (v32)
        {
          v33 = [(UpgradeInterfaceLock *)self log];
          os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
          *buf = 67109120;
          LODWORD(v46) = cferr;
          v34 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 67109120;
          LODWORD(v46) = cferr;
          v34 = _os_log_send_and_compose_impl();
        }

        v38 = createError("[UpgradeInterfaceLock _acquireLockOnQueue]", "upgrade_lock_interface.m", 201, "com.apple.security.cryptex", 16, 0, v34);
        free(v34);
        v37 = v38;

        goto LABEL_36;
      }

      if (cf)
      {
        v29 = [(UpgradeInterfaceLock *)self log];

        if (v29)
        {
          v30 = [(UpgradeInterfaceLock *)self log];
          os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          *buf = 0;
          v31 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 0;
          v31 = _os_log_send_and_compose_impl();
        }

        v36 = createError("[UpgradeInterfaceLock _acquireLockOnQueue]", "upgrade_lock_interface.m", 210, "com.apple.security.cryptex", 25, cf, v31);
        free(v31);
        v37 = v36;

LABEL_36:
        v6 = v37;
LABEL_39:
        xpc_connection_cancel(connection);
        goto LABEL_40;
      }

      [(UpgradeInterfaceLock *)self setLockConn:connection];

      lockConn = [(UpgradeInterfaceLock *)self lockConn];
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 3221225472;
      handler[2] = __43__UpgradeInterfaceLock__acquireLockOnQueue__block_invoke;
      handler[3] = &unk_29EEA9418;
      handler[4] = self;
      xpc_connection_set_event_handler(lockConn, handler);
    }

    else
    {
      v12 = [(UpgradeInterfaceLock *)self log];

      if (v12)
      {
        v13 = [(UpgradeInterfaceLock *)self log];
        os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
        *buf = 0;
        v14 = _os_log_send_and_compose_impl();
      }

      else
      {
        *buf = 0;
        v14 = _os_log_send_and_compose_impl();
      }

      v21 = createError("[UpgradeInterfaceLock _acquireLockOnQueue]", "upgrade_lock_interface.m", 161, "com.apple.security.cryptex", 23, 0, v14);
      free(v14);
      v6 = v21;
      _createXPCRequest = 0;
      v8 = 0;
    }

    connection = 0;
    goto LABEL_40;
  }

  v4 = *__error();
  v5 = [(UpgradeInterfaceLock *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_298711000, v5, OS_LOG_TYPE_DEBUG, "Upgrade interface is already locked by the current process.", buf, 2u);
  }

  v6 = 0;
  _createXPCRequest = 0;
  v8 = 0;
  connection = 0;
  *__error() = v4;
LABEL_40:
  v40 = v6;

  if (cf)
  {
    CFRelease(cf);
  }

  v41 = *MEMORY[0x29EDCA608];

  return v40;
}

- (void)_handleXPCMessage:(id)message
{
  v21 = *MEMORY[0x29EDCA608];
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    v6 = MEMORY[0x29C290A60](messageCopy);
    if (MEMORY[0x29C290B80](v5) == MEMORY[0x29EDCAA18])
    {
      v12 = *__error();
      v13 = [(UpgradeInterfaceLock *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v18 = v6;
        _os_log_impl(&dword_298711000, v13, OS_LOG_TYPE_DEBUG, "XPC error while upgrade interface was locked: %{public}s", buf, 0xCu);
      }

      *__error() = v12;
      queue = [(UpgradeInterfaceLock *)self queue];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __42__UpgradeInterfaceLock__handleXPCMessage___block_invoke;
      block[3] = &unk_29EEA92A8;
      block[4] = self;
      dispatch_barrier_async(queue, block);
    }

    else
    {
      v7 = *__error();
      v8 = [(UpgradeInterfaceLock *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v18 = v6;
        v19 = 1024;
        v20 = 5;
        _os_log_impl(&dword_298711000, v8, OS_LOG_TYPE_ERROR, "Unexpected message: %{public}s: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v7;
      lockConn = [(UpgradeInterfaceLock *)self lockConn];
      xpc_connection_cancel(lockConn);
    }
  }

  else
  {
    v10 = *__error();
    v11 = [(UpgradeInterfaceLock *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v18) = 22;
      _os_log_impl(&dword_298711000, v11, OS_LOG_TYPE_ERROR, "Invalid input.: %{darwin.errno}d", buf, 8u);
    }

    v6 = 0;
    *__error() = v10;
  }

  free(v6);

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t __42__UpgradeInterfaceLock__handleXPCMessage___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) onNextLockReleaseCallbacks];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v10 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) onNextLockReleaseCallbacks];
  [v7 removeAllObjects];

  result = [*(a1 + 32) setLockConn:0];
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

@end