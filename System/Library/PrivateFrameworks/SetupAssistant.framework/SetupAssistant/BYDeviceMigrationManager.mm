@interface BYDeviceMigrationManager
- (BOOL)_hasAssertions;
- (BOOL)takeAssertions;
- (BYDeviceMigrationManager)initWithFileTranferSession:(id)a3;
- (__MKBAssertion)acquireDeviceLockAssertion;
- (void)_reacquireDeviceLockAssertion;
- (void)addDelegate:(id)a3;
- (void)cancelWithCause:(int64_t)a3;
- (void)dealloc;
- (void)releaseAssertions;
- (void)removeDelegate:(id)a3;
- (void)restartDeviceTransferTask:(id)a3;
- (void)start;
- (void)takeAssertions;
@end

@implementation BYDeviceMigrationManager

- (BYDeviceMigrationManager)initWithFileTranferSession:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BYDeviceMigrationManager;
  v6 = [(BYDeviceMigrationManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileTransferSession, a3);
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = v8;

    v10 = dispatch_queue_create("Device Migration Queue", 0);
    migrationQueue = v7->_migrationQueue;
    v7->_migrationQueue = v10;

    *&v7->_bytesTransferred = 0u;
    *&v7->_durationOfTransfer = 0u;
  }

  return v7;
}

- (void)dealloc
{
  if ([(BYDeviceMigrationManager *)self deviceLockAssertion])
  {
    CFRelease([(BYDeviceMigrationManager *)self deviceLockAssertion]);
  }

  v3.receiver = self;
  v3.super_class = BYDeviceMigrationManager;
  [(BYDeviceMigrationManager *)&v3 dealloc];
}

- (void)start
{
  v3 = [(BYDeviceMigrationManager *)self migrationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BYDeviceMigrationManager_start__block_invoke;
  block[3] = &unk_1E7D027A8;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __33__BYDeviceMigrationManager_start__block_invoke(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Preparing for device to device migration...", buf, 2u);
  }

  [*(a1 + 32) takeAssertions];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) fileTransferSession];
  v6 = [v4 createDeviceTransferTask:v5];
  [*(a1 + 32) setDeviceTransferTask:v6];

  v7 = [*(a1 + 32) migrationQueue];
  v8 = [*(a1 + 32) deviceTransferTask];
  [v8 setQueue:v7];

  objc_initWeak(buf, *(a1 + 32));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__BYDeviceMigrationManager_start__block_invoke_4;
  v18[3] = &unk_1E7D035D8;
  objc_copyWeak(&v19, buf);
  v9 = [*(a1 + 32) deviceTransferTask];
  [v9 setConnectionInfoHandler:v18];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __33__BYDeviceMigrationManager_start__block_invoke_6;
  v16[3] = &unk_1E7D03600;
  objc_copyWeak(&v17, buf);
  v10 = [*(a1 + 32) deviceTransferTask];
  [v10 setProgressHandler:v16];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__BYDeviceMigrationManager_start__block_invoke_2;
  v14[3] = &unk_1E7D03628;
  objc_copyWeak(&v15, buf);
  v11 = [*(a1 + 32) deviceTransferTask];
  [v11 setCompletionHandler:v14];

  v12 = _BYLoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B862F000, v12, OS_LOG_TYPE_DEFAULT, "Starting device to device migration...", v13, 2u);
  }

  [*(a1 + 32) setMigrating:1];
  [*(a1 + 32) setComplete:0];
  [*(a1 + 32) startDeviceTransferTask];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __33__BYDeviceMigrationManager_start__block_invoke_4(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v19 = [v3 connectionState];
    v20 = 2048;
    v21 = [v3 connectionType];
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Migration connection information updated (state: %ld, type: %ld)", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [WeakRetained delegates];
  v7 = [v6 allObjects];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) deviceMigrationManager:WeakRetained didChangeConnectionInformation:v3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [WeakRetained setConnectionInfo:v3];
  v12 = *MEMORY[0x1E69E9840];
}

void __33__BYDeviceMigrationManager_start__block_invoke_6(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [WeakRetained delegates];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v20 + 1) + 8 * v10++) deviceMigrationManager:WeakRetained didUpdateProgress:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [WeakRetained setProgressInfo:v3];
  [v3 progress];
  if (v11 > 0.0)
  {
    [WeakRetained setBytesTransferred:{objc_msgSend(v3, "bytesTransferred")}];
    [WeakRetained setFilesTransferred:{objc_msgSend(v3, "filesTransferred")}];
    v12 = [v3 fileTransferStartDate];
    if (v12)
    {
      v13 = v12;
      v14 = [v3 restoreStartDate];

      if (v14)
      {
        v15 = [v3 restoreStartDate];
        v16 = [v3 fileTransferStartDate];
        [v15 timeIntervalSinceDate:v16];
        [WeakRetained setDurationOfTransfer:?];

        v17 = [v3 restoreStartDate];
        [v17 timeIntervalSinceNow];
        [WeakRetained setDurationOfRestore:-v18];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __33__BYDeviceMigrationManager_start__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setError:v3];
  v5 = _BYLoggingFacility();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __33__BYDeviceMigrationManager_start__block_invoke_2_cold_1(v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Migration completed successfully!", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [WeakRetained delegates];
  v8 = [v7 allObjects];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) deviceMigrationManager:WeakRetained didCompleteWithError:v3];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  [WeakRetained didCompleteWithError:v3];
  [WeakRetained releaseAssertions];
  [WeakRetained setMigrating:0];
  [WeakRetained setComplete:1];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cancelWithCause:(int64_t)a3
{
  v5 = [(BYDeviceMigrationManager *)self migrationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__BYDeviceMigrationManager_cancelWithCause___block_invoke;
  v6[3] = &unk_1E7D03650;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

uint64_t __44__BYDeviceMigrationManager_cancelWithCause___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setWillMigrate:0];
  result = [*(a1 + 32) isMigrating];
  if (result)
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling device to device migration with cancellation cause: %ld...", &v6, 0xCu);
    }

    [*(a1 + 32) releaseAssertions];
    [*(a1 + 32) cancelDeviceTransferTask];
    [*(a1 + 32) setMigrating:0];
    [*(a1 + 32) setCancellationCause:*(a1 + 40)];
    [*(a1 + 32) setError:0];
    result = [*(a1 + 32) didCancel];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)restartDeviceTransferTask:(id)a3
{
  v4 = a3;
  v5 = [(BYDeviceMigrationManager *)self migrationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Restarting transfer task...", buf, 2u);
  }

  [*(a1 + 32) setFileTransferSession:*(a1 + 40)];
  objc_initWeak(buf, *(a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke_10;
  v4[3] = &unk_1E7D03628;
  objc_copyWeak(&v5, buf);
  v3 = [*(a1 + 32) deviceTransferTask];
  [v3 setCompletionHandler:v4];

  [*(a1 + 32) cancelDeviceTransferTask];
  [*(a1 + 32) startDeviceTransferTask];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"MBErrorDomain"])
    {
      v6 = [v3 code];

      if (v6 == 202)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke_10_cold_1(v3, v7);
    }
  }

LABEL_9:
  [WeakRetained setDeviceTransferTask:0];
  [WeakRetained start];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(BYDeviceMigrationManager *)self migrationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__BYDeviceMigrationManager_addDelegate___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __40__BYDeviceMigrationManager_addDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) connectionInfo];

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v5 connectionInfo];
    [v4 deviceMigrationManager:v5 didChangeConnectionInformation:v6];
  }

  v7 = [*(a1 + 32) progressInfo];

  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = [v9 progressInfo];
    [v8 deviceMigrationManager:v9 didUpdateProgress:v10];
  }

  if ([*(a1 + 32) isComplete])
  {
    v13 = a1 + 32;
    v11 = *(a1 + 32);
    v12 = *(v13 + 8);
    v14 = [v11 error];
    [v12 deviceMigrationManager:v11 didCompleteWithError:v14];
  }
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(BYDeviceMigrationManager *)self migrationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__BYDeviceMigrationManager_removeDelegate___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__BYDeviceMigrationManager_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObject:*(a1 + 40)];
}

- (BOOL)_hasAssertions
{
  v3 = [(BYDeviceMigrationManager *)self processAssertion];
  if (v3)
  {
    v4 = [(BYDeviceMigrationManager *)self deviceLockAssertion]!= 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)takeAssertions
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = [(BYDeviceMigrationManager *)self migrationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = voucher_copy();
  [(BYDeviceMigrationManager *)self setClientVoucher:v4];

  if (![(BYDeviceMigrationManager *)self requiresProcessAssertion])
  {
LABEL_6:
    [(BYDeviceMigrationManager *)self setDeviceLockAssertion:[(BYDeviceMigrationManager *)self acquireDeviceLockAssertion]];
    v16 = [*MEMORY[0x1E69ADFA0] cStringUsingEncoding:4];
    v17 = [(BYDeviceMigrationManager *)self migrationQueue];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__BYDeviceMigrationManager_takeAssertions__block_invoke;
    handler[3] = &unk_1E7D03678;
    handler[4] = self;
    v18 = notify_register_dispatch(v16, &self->_passcodeChangeNotificationToken, v17, handler);

    if (v18)
    {
      v19 = _BYLoggingFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(BYDeviceMigrationManager *)v18 takeAssertions];
      }

      [(BYDeviceMigrationManager *)self setPasscodeChangeNotificationToken:0xFFFFFFFFLL];
    }

    result = 1;
    goto LABEL_13;
  }

  v5 = [(BYDeviceMigrationManager *)self processAssertion];
  [v5 invalidate];

  v6 = objc_alloc(MEMORY[0x1E69C7548]);
  v7 = [MEMORY[0x1E69C7640] targetWithPid:getpid()];
  v8 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.purplebuddy" name:@"Update"];
  v29[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v10 = [v6 initWithExplanation:@"Device-to-Device Migration" target:v7 attributes:v9];
  [(BYDeviceMigrationManager *)self setProcessAssertion:v10];

  v11 = [(BYDeviceMigrationManager *)self processAssertion];
  v26 = 0;
  v12 = [v11 acquireWithError:&v26];
  v13 = v26;

  v14 = _BYLoggingFacility();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v15, OS_LOG_TYPE_DEFAULT, "Process lock assertion successfully taken during migration", buf, 2u);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v22 = 0;
      v23 = v13;
    }

    else if (v13)
    {
      v24 = MEMORY[0x1E696AEC0];
      v12 = [v13 domain];
      v23 = [v24 stringWithFormat:@"<Error domain: %@, code %ld>", v12, objc_msgSend(v13, "code")];
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *buf = 138543362;
    v28 = v23;
    _os_log_error_impl(&dword_1B862F000, v15, OS_LOG_TYPE_ERROR, "Failed to take process assertion during migration: %{public}@", buf, 0xCu);
    if (v22)
    {
    }
  }

  [(BYDeviceMigrationManager *)self releaseAssertions];
  result = 0;
LABEL_13:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (__MKBAssertion)acquireDeviceLockAssertion
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"MKBAssertionKey";
  v11[0] = @"RestoreFromBackup";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v3 = MKBDeviceLockAssertion();
  v4 = _BYLoggingFacility();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Device lock assertion successfully taken during migration", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _BYIsInternalInstall();
      *buf = 138543362;
      v9 = 0;
      _os_log_error_impl(&dword_1B862F000, v5, OS_LOG_TYPE_ERROR, "Failed to take device lock assertion during migration - %{public}@", buf, 0xCu);
    }

    CFRelease(0);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)releaseAssertions
{
  v3 = [(BYDeviceMigrationManager *)self migrationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(BYDeviceMigrationManager *)self processAssertion];

  if (v4)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Releasing process assertion", buf, 2u);
    }

    v6 = [(BYDeviceMigrationManager *)self processAssertion];
    [v6 invalidate];

    [(BYDeviceMigrationManager *)self setProcessAssertion:0];
  }

  if ([(BYDeviceMigrationManager *)self deviceLockAssertion])
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Releasing device lock assertion taken during restore", v8, 2u);
    }

    CFRelease([(BYDeviceMigrationManager *)self deviceLockAssertion]);
    [(BYDeviceMigrationManager *)self setDeviceLockAssertion:0];
  }

  if ([(BYDeviceMigrationManager *)self passcodeChangeNotificationToken]!= -1)
  {
    notify_cancel([(BYDeviceMigrationManager *)self passcodeChangeNotificationToken]);
    [(BYDeviceMigrationManager *)self setPasscodeChangeNotificationToken:0xFFFFFFFFLL];
  }

  [(BYDeviceMigrationManager *)self setClientVoucher:0];
}

- (void)_reacquireDeviceLockAssertion
{
  if ([(BYDeviceMigrationManager *)self _hasAssertions])
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Requiring device lock assertion as passcode changed...", v4, 2u);
    }

    if ([(BYDeviceMigrationManager *)self deviceLockAssertion])
    {
      CFRelease([(BYDeviceMigrationManager *)self deviceLockAssertion]);
    }

    [(BYDeviceMigrationManager *)self setDeviceLockAssertion:[(BYDeviceMigrationManager *)self acquireDeviceLockAssertion]];
  }
}

void __33__BYDeviceMigrationManager_start__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Migration completed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke_10_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Migration completed with non-cancel error during restart: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)takeAssertions
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to register for passcode change notification to refresh device lock assertion: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end