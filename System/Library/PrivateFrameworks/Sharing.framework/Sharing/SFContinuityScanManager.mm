@interface SFContinuityScanManager
+ (id)sharedManager;
- (SFContinuityScanManager)init;
- (id)exportedInterface;
- (void)activityPayloadFromDeviceUniqueID:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(int64_t)a6 withCompletionHandler:(id)a7;
- (void)addObserver:(id)a3;
- (void)foundDeviceWithDevice:(id)a3;
- (void)lostDeviceWithDevice:(id)a3;
- (void)onqueue_connectionEstablished;
- (void)onqueue_connectionInterrupted;
- (void)pairedDevicesChanged:(id)a3;
- (void)receivedAdvertisement:(id)a3;
- (void)removeObserver:(id)a3;
- (void)scanForTypes:(unint64_t)a3;
@end

@implementation SFContinuityScanManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SFContinuityScanManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __40__SFContinuityScanManager_sharedManager__block_invoke()
{
  if (SFDeviceSupportsContinuity())
  {
    v0 = objc_alloc_init(SFContinuityScanManager);
  }

  else
  {
    v0 = 0;
  }

  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

- (SFContinuityScanManager)init
{
  v10.receiver = self;
  v10.super_class = SFContinuityScanManager;
  v2 = [(SFXPCClient *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_scanTypes = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    foundDevices = v3->_foundDevices;
    v3->_foundDevices = v4;

    v6 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v3->_observers;
    v3->_observers = v6;

    v9.receiver = v3;
    v9.super_class = SFContinuityScanManager;
    [(SFXPCClient *)&v9 _activate];
  }

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v6;
    if (!v5)
    {
      [(NSHashTable *)self->_observers addObject:v6];
      v4 = v6;
    }
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSHashTable *)self->_observers removeObject:v4];
    if (![(NSHashTable *)self->_observers count])
    {
      v5 = handoff_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "all observers gone, resetting scan types", v6, 2u);
      }

      [(SFContinuityScanManager *)self scanForTypes:0];
    }
  }
}

- (void)scanForTypes:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFActivityScanner/scanForTypes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  [(SFContinuityScanManager *)self setScanTypes:a3];
  v6 = handoff_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = SFActivityScanTypesToString(a3);
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "client process changing types to scan for to %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__SFContinuityScanManager_scanForTypes___block_invoke;
  v9[3] = &__block_descriptor_40_e47_v16__0__NSObject_SFContinuityScannerProtocol__8l;
  v9[4] = a3;
  [(SFContinuityScanManager *)self _getRemoteObjectProxyOnQueue:v9];
  os_activity_scope_leave(&state);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)activityPayloadFromDeviceUniqueID:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(int64_t)a6 withCompletionHandler:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = _os_activity_create(&dword_1A9662000, "Sharing/SFActivityScanner/activityPayloadFromDeviceUniqueID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  v17 = handoff_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = SFHexStringForData(v13);
    *buf = 138412802;
    v34 = v19;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "[%@] Dispatching payload request to %@ for %@", buf, 0x20u);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __123__SFContinuityScanManager_activityPayloadFromDeviceUniqueID_forAdvertisementPayload_command_timeout_withCompletionHandler___block_invoke;
  v26[3] = &unk_1E788C910;
  v21 = v12;
  v27 = v21;
  v22 = v13;
  v28 = v22;
  v23 = v14;
  v29 = v23;
  v31 = a6;
  v24 = v15;
  v30 = v24;
  [(SFContinuityScanManager *)self _getRemoteObjectProxyOnQueue:v26];

  os_activity_scope_leave(&state);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)onqueue_connectionEstablished
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SFContinuityScanManager onqueue_connectionEstablished]";
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "[%s]", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)onqueue_connectionInterrupted
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SFContinuityScanManager onqueue_connectionInterrupted]";
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "[%s]", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)receivedAdvertisement:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFContinuityScanManager *)self observers];
  v6 = [v5 copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = @"YES";
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v18 + 1) + 8 * i) scanManager:self receivedAdvertisement:{v4, v18}];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = @"NO";
  }

  v13 = handoff_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v4 debugDescription];
    *buf = 138412802;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "[%@] Received advertisement %@. Handled:%@", buf, 0x20u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)foundDeviceWithDevice:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableSet *)self->_foundDevices addObject:v4];
  v5 = [(SFContinuityScanManager *)self observers];
  v6 = [v5 copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = @"YES";
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v17 + 1) + 8 * i) scanManager:self foundDeviceWithDevice:{v4, v17}];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = @"NO";
  }

  v13 = handoff_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412802;
    v22 = v15;
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "[%@] Found device %@. Handled:%@", buf, 0x20u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)lostDeviceWithDevice:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableSet *)self->_foundDevices removeObject:v4];
  v5 = [(SFContinuityScanManager *)self observers];
  v6 = [v5 copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = @"YES";
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v17 + 1) + 8 * i) scanManager:self lostDeviceWithDevice:{v4, v17}];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = @"NO";
  }

  v13 = handoff_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412802;
    v22 = v15;
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "[%@] Lost device %@. Handled:%@", buf, 0x20u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)pairedDevicesChanged:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFContinuityScanManager *)self observers];
  v6 = [v5 copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
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

        [*(*(&v13 + 1) + 8 * v11++) scanManager:self pairedDevicesChanged:{v4, v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)exportedInterface
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D89550];
  [v2 setClass:objc_opt_class() forSelector:sel_receivedAdvertisement_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_foundDeviceWithDevice_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_lostDeviceWithDevice_ argumentIndex:0 ofReply:0];
  v3 = MEMORY[0x1E695DFD8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_pairedDevicesChanged_ argumentIndex:0 ofReply:0];

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

@end