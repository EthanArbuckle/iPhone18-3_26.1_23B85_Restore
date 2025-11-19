@interface WOWorkoutDevicePairedWatchController
- (BOOL)_main_calculateUnlockedAndOnWristState;
- (BOOL)isUnlockedAndOnWrist;
- (WOWorkoutDevicePairedWatchController)init;
- (WOWorkoutDevicePairedWatchControllerDelegate)delegate;
- (void)_main_logState;
- (void)_main_notifyDelegateOfUnlockStatus;
- (void)_main_resetAndCleanupConnection;
- (void)_main_setupConnection;
- (void)_main_updateIsPasscodeLocked:(BOOL)a3;
- (void)_main_updateWristState:(int64_t)a3;
- (void)_setupUnlockConnection;
- (void)activate;
- (void)cancel;
- (void)unlockConnection:(id)a3 remoteDeviceDidNotifyState:(id)a4;
@end

@implementation WOWorkoutDevicePairedWatchController

void __62__WOWorkoutDevicePairedWatchController__setupUnlockConnection__block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (location[0])
  {
    [location[0] _main_updateWristState:*(a1 + 40)];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)isUnlockedAndOnWrist
{
  v20 = self;
  v19 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v7 = [(WOWorkoutDevicePairedWatchController *)v20 _main_calculateUnlockedAndOnWristState];
    *(v15 + 24) = v7;
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v5;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __60__WOWorkoutDevicePairedWatchController_isUnlockedAndOnWrist__block_invoke;
    v12 = &unk_277D889C0;
    v13[1] = &v14;
    v13[0] = MEMORY[0x277D82BE0](v20);
    dispatch_sync(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v13, 0);
  }

  v4 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v4 & 1;
}

- (WOWorkoutDevicePairedWatchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__WOWorkoutDevicePairedWatchController__setupUnlockConnection__block_invoke(id *a1, void *a2)
{
  v13 = a1;
  v12 = a2;
  v11[2] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __62__WOWorkoutDevicePairedWatchController__setupUnlockConnection__block_invoke_2;
  v10 = &unk_277D889E8;
  objc_copyWeak(v11, a1 + 4);
  v11[1] = v12;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(v11);
}

- (WOWorkoutDevicePairedWatchController)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = WOWorkoutDevicePairedWatchController;
  v6 = [(WOWorkoutDevicePairedWatchController *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(WOWorkoutDevicePairedWatchController *)v6 _resetValues];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)activate
{
  v8 = self;
  location[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  if (v8->_client)
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_20AEA4000, log, type, "[WOWorkoutDevicePairedWatchController] Re-activating, cancelling existing client first.", v5, 2u);
    }

    objc_storeStrong(location, 0);
    [(SFClient *)v8->_client invalidate];
    objc_storeStrong(&v8->_client, 0);
  }

  [(WOWorkoutDevicePairedWatchController *)v8 _setupUnlockConnection];
  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
}

- (void)cancel
{
  v12 = self;
  v11[3] = a2;
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  [(SFClient *)v12->_client invalidate];
  objc_storeStrong(&v12->_client, 0);
  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __46__WOWorkoutDevicePairedWatchController_cancel__block_invoke;
  v10 = &unk_277D88890;
  v11[0] = MEMORY[0x277D82BE0](v12);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

uint64_t __60__WOWorkoutDevicePairedWatchController_isUnlockedAndOnWrist__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _main_calculateUnlockedAndOnWristState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setupUnlockConnection
{
  v23 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  obj = MEMORY[0x277D82BE0](v23);
  objc_sync_enter(obj);
  if (v23->_client)
  {
    _HKInitializeLogging();
    v21 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      log = v21;
      type = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_impl(&dword_20AEA4000, log, type, "[WOWorkoutDevicePairedWatchController] Re-activating, cancelling existing client first.", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    [(SFClient *)v23->_client invalidate];
    objc_storeStrong(&v23->_client, 0);
  }

  if (v23->_client)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v3 = oslog;
      v4 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_20AEA4000, v3, v4, "[WOWorkoutDevicePairedWatchController] _setupUnlockConnection called with existing client.", v9, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D54C30]);
    client = v23->_client;
    v23->_client = v5;
    MEMORY[0x277D82BD8](client);
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __62__WOWorkoutDevicePairedWatchController__setupUnlockConnection__block_invoke;
    v16 = &unk_277D88A10;
    objc_copyWeak(&v17, location);
    v18 = _Block_copy(&v12);
    [(SFClient *)v23->_client getPairedWatchWristStateWithCompletionHandler:v18];
    [(SFClient *)v23->_client monitorPairedWatchWristStateWithCompletionHandler:v18];
    objc_storeStrong(&v18, 0);
    objc_destroyWeak(&v17);
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  objc_destroyWeak(location);
}

- (void)_main_setupConnection
{
  v16 = self;
  location[1] = a2;
  v6 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v7 = v6;
  dispatch_assert_queue_V2(v7);
  MEMORY[0x277D82BD8](v7);
  objc_initWeak(location, v16);
  v8 = objc_alloc(MEMORY[0x277D37C50]);
  v5 = [v8 initWithDelegate:v16];
  connection = v16->_connection;
  v16->_connection = v5;
  MEMORY[0x277D82BD8](connection);
  v4 = v16->_connection;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __61__WOWorkoutDevicePairedWatchController__main_setupConnection__block_invoke;
  v13 = &unk_277D88A60;
  objc_copyWeak(v14, location);
  [(PUConnection *)v4 queryRemoteDeviceState:&v9];
  objc_destroyWeak(v14);
  objc_destroyWeak(location);
}

void __61__WOWorkoutDevicePairedWatchController__main_setupConnection__block_invoke(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17[1] = a1;
  if (v18)
  {
    _HKInitializeLogging();
    v17[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_impl(&dword_20AEA4000, v17[0], v16, "PUConnection's queryRemoteDeviceState returned an error: %@", v20, 0xCu);
    }

    objc_storeStrong(v17, 0);
    v15 = 1;
  }

  else
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __61__WOWorkoutDevicePairedWatchController__main_setupConnection__block_invoke_296;
    v12 = &unk_277D88A38;
    objc_copyWeak(&v14, a1 + 4);
    v13 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v13, 0);
    objc_destroyWeak(&v14);
    v15 = 0;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __61__WOWorkoutDevicePairedWatchController__main_setupConnection__block_invoke_296(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 5);
  if (location[0])
  {
    [location[0] _main_updateIsPasscodeLocked:{objc_msgSend(a1[4], "isPasscodeLocked")}];
  }

  objc_storeStrong(location, 0);
}

- (void)_main_resetAndCleanupConnection
{
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v4 = v3;
  dispatch_assert_queue_V2(v4);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&self->_connection, 0);
  [(WOWorkoutDevicePairedWatchController *)self _resetValues];
}

- (void)_main_updateWristState:(int64_t)a3
{
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v5 = v4;
  dispatch_assert_queue_V2(v5);
  MEMORY[0x277D82BD8](v5);
  self->_wristState = a3;
  if (a3)
  {
    if (!self->_connection)
    {
      [(WOWorkoutDevicePairedWatchController *)self _main_setupConnection];
    }
  }

  else
  {
    objc_storeStrong(&self->_connection, 0);
  }

  [(WOWorkoutDevicePairedWatchController *)self _main_logState];
  [(WOWorkoutDevicePairedWatchController *)self _main_notifyDelegateOfUnlockStatus];
}

- (void)_main_updateIsPasscodeLocked:(BOOL)a3
{
  v6 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v7 = v6;
  dispatch_assert_queue_V2(v7);
  MEMORY[0x277D82BD8](v7);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  isPasscodeLockedValue = self->_isPasscodeLockedValue;
  self->_isPasscodeLockedValue = v4;
  MEMORY[0x277D82BD8](isPasscodeLockedValue);
  [(WOWorkoutDevicePairedWatchController *)self _main_logState];
  [(WOWorkoutDevicePairedWatchController *)self _main_notifyDelegateOfUnlockStatus];
}

- (BOOL)_main_calculateUnlockedAndOnWristState
{
  v5 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v6 = v5;
  dispatch_assert_queue_V2(v6);
  MEMORY[0x277D82BD8](v6);
  v7 = 0;
  if (self->_wristState == 3)
  {
    LOBYTE(v4) = 1;
    if (self->_isPasscodeLockedValue)
    {
      v4 = ![(NSNumber *)self->_isPasscodeLockedValue BOOLValue];
    }

    v7 = v4;
  }

  return v7 & 1;
}

- (void)_main_logState
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  v13[1] = a2;
  v9 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v10 = v9;
  dispatch_assert_queue_V2(v10);
  MEMORY[0x277D82BD8](v10);
  _HKInitializeLogging();
  v13[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v13[0];
    type = v12;
    v8 = SFPairedWatchWristStateToString(v14->_wristState);
    v4 = MEMORY[0x277D82BE0](v8);
    v11 = v4;
    isPasscodeLockedValue = v14->_isPasscodeLockedValue;
    if ([(WOWorkoutDevicePairedWatchController *)v14 _main_calculateUnlockedAndOnWristState])
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_64_8_64(v15, v4, isPasscodeLockedValue, v3);
    _os_log_impl(&dword_20AEA4000, log, type, "[WOWorkoutDevicePairedWatchController] wristState=%@, isPasscodeLocked=%@, isUnlockedAndOnWrist=%@", v15, 0x20u);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v13, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_main_notifyDelegateOfUnlockStatus
{
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v4 = v3;
  dispatch_assert_queue_V2(v4);
  MEMORY[0x277D82BD8](v4);
  v5 = [(WOWorkoutDevicePairedWatchController *)self delegate];
  [(WOWorkoutDevicePairedWatchControllerDelegate *)v5 workoutDevicePairedWatchControllerDidUpdateStatus:[(WOWorkoutDevicePairedWatchController *)self _main_calculateUnlockedAndOnWristState]];
  MEMORY[0x277D82BD8](v5);
}

- (void)unlockConnection:(id)a3 remoteDeviceDidNotifyState:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  objc_initWeak(&v15, v18);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __84__WOWorkoutDevicePairedWatchController_unlockConnection_remoteDeviceDidNotifyState___block_invoke;
  v12 = &unk_277D88A38;
  objc_copyWeak(&v14, &v15);
  v13 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __84__WOWorkoutDevicePairedWatchController_unlockConnection_remoteDeviceDidNotifyState___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 5);
  if (location[0])
  {
    [location[0] _main_updateIsPasscodeLocked:{objc_msgSend(a1[4], "isPasscodeLocked")}];
  }

  objc_storeStrong(location, 0);
}

@end