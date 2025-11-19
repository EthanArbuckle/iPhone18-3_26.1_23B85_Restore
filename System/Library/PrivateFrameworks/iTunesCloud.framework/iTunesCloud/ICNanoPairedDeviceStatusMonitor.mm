@interface ICNanoPairedDeviceStatusMonitor
+ (ICNanoPairedDeviceStatusMonitor)sharedMonitor;
- (BOOL)isInitialSyncComplete;
- (NSArray)allPairedDeviceGUIDs;
- (NSArray)allPairedDevicePairingIDs;
- (NSString)pairedDeviceGUID;
- (NSString)pairedDeviceMediaGUID;
- (NSUUID)activePairedDevicePairingID;
- (NSUUID)pairedDevicePairingID;
- (id)_activePairedDevice;
- (id)_allObservers;
- (id)_init;
- (void)_handlePairedDeviceChangedNotification;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)deviceBecameActive:(id)a3;
- (void)initialSyncStateObserver:(id)a3 initialSyncDidCompleteForPairingIdentifier:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation ICNanoPairedDeviceStatusMonitor

- (void)initialSyncStateObserver:(id)a3 initialSyncDidCompleteForPairingIdentifier:(id)a4
{
  v5 = a4;
  callBackQueue = self->_callBackQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __103__ICNanoPairedDeviceStatusMonitor_initialSyncStateObserver_initialSyncDidCompleteForPairingIdentifier___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(callBackQueue, v8);
}

void __103__ICNanoPairedDeviceStatusMonitor_initialSyncStateObserver_initialSyncDidCompleteForPairingIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _allObservers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 nanoPairedDeviceStatusMonitor:*(a1 + 32) didFinishInitialSyncForPairingIdentifier:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)deviceBecameActive:(id)a3
{
  callBackQueue = self->_callBackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__ICNanoPairedDeviceStatusMonitor_deviceBecameActive___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(callBackQueue, block);
}

void __54__ICNanoPairedDeviceStatusMonitor_deviceBecameActive___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _allObservers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 nanoPairedDeviceStatusMonitorNewActiveDevice:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_handlePairedDeviceChangedNotification
{
  pairedDeviceGUID = self->_pairedDeviceGUID;
  self->_pairedDeviceGUID = 0;

  pairedDeviceMediaGUID = self->_pairedDeviceMediaGUID;
  self->_pairedDeviceMediaGUID = 0;

  callBackQueue = self->_callBackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ICNanoPairedDeviceStatusMonitor__handlePairedDeviceChangedNotification__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(callBackQueue, block);
}

void __73__ICNanoPairedDeviceStatusMonitor__handlePairedDeviceChangedNotification__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _allObservers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 nanoPairedDeviceStatusMonitorPairedDeviceChanged:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)_activePairedDevice
{
  v2 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v3 = [getNRPairedDeviceRegistryClass() activeDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)_allObservers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7401;
  v10 = __Block_byref_object_dispose__7402;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__ICNanoPairedDeviceStatusMonitor__allObservers__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__ICNanoPairedDeviceStatusMonitor__allObservers__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) copy];
  v2 = [v5 objectEnumerator];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isInitialSyncComplete
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = +[ICDefaults standardDefaults];
  v4 = [v3 shouldForceWatchInitialSyncCompletion];

  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Forcing initial sync completion from debug override", buf, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v7 = [(ICNanoPairedDeviceStatusMonitor *)self activePairedDevicePairingID];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ICNanoPairedDeviceStatusMonitor_isInitialSyncComplete__block_invoke;
    block[3] = &unk_1E7BF97E8;
    v11 = v7;
    v12 = self;
    v13 = &v14;
    v5 = v7;
    dispatch_sync(queue, block);
    v6 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return v6 & 1;
}

void __56__ICNanoPairedDeviceStatusMonitor_isInitialSyncComplete__block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1[4] && *(a1[5] + 56))
  {
    v2 = dispatch_semaphore_create(0);
    v3 = a1[4];
    v4 = *(a1[5] + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__ICNanoPairedDeviceStatusMonitor_isInitialSyncComplete__block_invoke_2;
    v8[3] = &unk_1E7BF48B0;
    v11 = a1[6];
    v9 = v3;
    v10 = v2;
    v5 = v2;
    [v4 requestInitialSyncStateForPairingIdentifier:v9 completion:v8];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = *(a1[5] + 56);
      *buf = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Could not get activePairedDeviceId %{public}@, _initialSyncStateObserver %{public}@.", buf, 0x16u);
    }
  }
}

void __56__ICNanoPairedDeviceStatusMonitor_isInitialSyncComplete__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  *(*(*(a1 + 48) + 8) + 24) = v6;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 48) + 8) + 24);
    v10 = 138544130;
    v11 = v8;
    v12 = 1024;
    v13 = a2;
    v14 = 2114;
    v15 = v5;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "obtained initial sync state for %{public}@. hasCompletedSync=%d, err=%{public}@, initialSyncComplete=%d", &v10, 0x22u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (NSString)pairedDeviceMediaGUID
{
  pairedDeviceMediaGUID = self->_pairedDeviceMediaGUID;
  if (!pairedDeviceMediaGUID)
  {
    v4 = [(ICNanoPairedDeviceStatusMonitor *)self _activePairedDevice];
    if (v4)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v5 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
      v30 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
      if (!getNRDevicePropertyIsAltAccountSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke;
        v25 = &unk_1E7BFA0A0;
        v26 = &v27;
        v6 = NanoRegistryLibrary();
        v28[3] = dlsym(v6, "NRDevicePropertyIsAltAccount");
        getNRDevicePropertyIsAltAccountSymbolLoc_ptr = *(v26[1] + 24);
        v5 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (!v5)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyIsAltAccount(void)"];
        [v20 handleFailureInFunction:v21 file:@"ICNanoPairedDeviceStatusMonitor.m" lineNumber:38 description:{@"%s", dlerror()}];
        goto LABEL_25;
      }

      v7 = [v4 valueForProperty:*v5];
      v8 = [v7 BOOLValue];

      if (v8)
      {
        goto LABEL_20;
      }

      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C5DDE5DD-2FF7-4735-80A3-0108488556DE"];
      v10 = [v4 supportsCapability:v9];

      if (v10)
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v11 = getNRDevicePropertyCompanionMusicGUIDSymbolLoc_ptr;
        v30 = getNRDevicePropertyCompanionMusicGUIDSymbolLoc_ptr;
        if (!getNRDevicePropertyCompanionMusicGUIDSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          v23 = 3221225472;
          v24 = __getNRDevicePropertyCompanionMusicGUIDSymbolLoc_block_invoke;
          v25 = &unk_1E7BFA0A0;
          v26 = &v27;
          v12 = NanoRegistryLibrary();
          v28[3] = dlsym(v12, "NRDevicePropertyCompanionMusicGUID");
          getNRDevicePropertyCompanionMusicGUIDSymbolLoc_ptr = *(v26[1] + 24);
          v11 = v28[3];
        }

        _Block_object_dispose(&v27, 8);
        if (!v11)
        {
          while (1)
          {
            v20 = [MEMORY[0x1E696AAA8] currentHandler];
            v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyCompanionMusicGUID(void)"];
            [v20 handleFailureInFunction:v21 file:@"ICNanoPairedDeviceStatusMonitor.m" lineNumber:36 description:{@"%s", dlerror()}];
LABEL_25:

            __break(1u);
          }
        }

        v13 = *v11;
      }

      else
      {
        v13 = getNRDevicePropertyUDID();
      }

      v16 = v13;
      v17 = [v4 valueForProperty:v13];
      v18 = self->_pairedDeviceMediaGUID;
      self->_pairedDeviceMediaGUID = v17;

      if (self->_pairedDeviceMediaGUID)
      {
        goto LABEL_20;
      }

      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "failed to obtain CompanionMusicGUID - you may need an entitlement for this process";
        goto LABEL_18;
      }
    }

    else
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "failed to obtain pairedDeviceMediaGUID because there is no active paired device";
LABEL_18:
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      }
    }

LABEL_20:
    pairedDeviceMediaGUID = self->_pairedDeviceMediaGUID;
  }

  return pairedDeviceMediaGUID;
}

- (NSString)pairedDeviceGUID
{
  pairedDeviceGUID = self->_pairedDeviceGUID;
  if (!pairedDeviceGUID)
  {
    v4 = [(ICNanoPairedDeviceStatusMonitor *)self _activePairedDevice];
    if (v4)
    {
      v5 = getNRDevicePropertyUDID();
      v6 = [v4 valueForProperty:v5];
      v7 = self->_pairedDeviceGUID;
      self->_pairedDeviceGUID = v6;

      if (self->_pairedDeviceGUID)
      {
LABEL_10:

        pairedDeviceGUID = self->_pairedDeviceGUID;
        goto LABEL_11;
      }

      v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v9 = "failed to obtain paired device GUID - you may need an entitlement for this process";
        v10 = &v13;
LABEL_8:
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }

    else
    {
      v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v9 = "failed to obtain paired device GUID because there is no active paired device";
        v10 = &v12;
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return pairedDeviceGUID;
}

- (NSArray)allPairedDeviceGUIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7401;
  v11 = __Block_byref_object_dispose__7402;
  v12 = [MEMORY[0x1E695DF70] array];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ICNanoPairedDeviceStatusMonitor_allPairedDeviceGUIDs__block_invoke;
  block[3] = &unk_1E7BFA0A0;
  block[4] = &v7;
  dispatch_sync(queue, block);
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __55__ICNanoPairedDeviceStatusMonitor_allPairedDeviceGUIDs__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v3 = [v2 getPairedDevices];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = getNRDevicePropertyUDID();
        v10 = [v8 valueForProperty:v9];

        if (v10)
        {
          [*(*(*(a1 + 32) + 8) + 40) addObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (NSArray)allPairedDevicePairingIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7401;
  v12 = __Block_byref_object_dispose__7402;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__ICNanoPairedDeviceStatusMonitor_allPairedDevicePairingIDs__block_invoke;
  v7[3] = &unk_1E7BFA430;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v9[5] count];
    *buf = 67109120;
    v15 = v4;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Found %d paired device ids", buf, 8u);
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __60__ICNanoPairedDeviceStatusMonitor_allPairedDevicePairingIDs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v4 = [v3 getPairedDevices];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) valueForProperty:*(*(a1 + 32) + 32)];
        if (v9)
        {
          [v2 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v2;
}

- (NSUUID)pairedDevicePairingID
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7401;
  v12 = __Block_byref_object_dispose__7402;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ICNanoPairedDeviceStatusMonitor_pairedDevicePairingID__block_invoke;
  block[3] = &unk_1E7BFA0A0;
  block[4] = &v8;
  dispatch_sync(queue, block);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v9[5];
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "paired device pairing id %{public}@", buf, 0xCu);
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __56__ICNanoPairedDeviceStatusMonitor_pairedDevicePairingID__block_invoke(uint64_t a1)
{
  v5 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v2 = [v5 pairingID];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSUUID)activePairedDevicePairingID
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7401;
  v12 = __Block_byref_object_dispose__7402;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ICNanoPairedDeviceStatusMonitor_activePairedDevicePairingID__block_invoke;
  v7[3] = &unk_1E7BFA430;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v9[5];
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "active paired device pairing id %{public}@", buf, 0xCu);
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __62__ICNanoPairedDeviceStatusMonitor_activePairedDevicePairingID__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _activePairedDevice];
  v2 = [v5 valueForProperty:*(*(a1 + 32) + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeObserver:(id)a3
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__ICNanoPairedDeviceStatusMonitor_removeObserver___block_invoke;
  v5[3] = &unk_1E7BF9890;
  v5[4] = self;
  v5[5] = a3;
  v4 = a3;
  dispatch_async(queue, v5);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__ICNanoPairedDeviceStatusMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  initialSyncStateObserver = self->_initialSyncStateObserver;
  self->_initialSyncStateObserver = 0;

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.nanoregistry.devicedidpair", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.nanoregistry.devicedidunpair", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.nanoregistry.paireddevicedidchangeversion", 0);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = getNRPairedDeviceRegistryDeviceDidBecomeActive();
  [v5 removeObserver:self name:v6 object:0];

  v7.receiver = self;
  v7.super_class = ICNanoPairedDeviceStatusMonitor;
  [(ICNanoPairedDeviceStatusMonitor *)&v7 dealloc];
}

- (id)_init
{
  v25.receiver = self;
  v25.super_class = ICNanoPairedDeviceStatusMonitor;
  v2 = [(ICNanoPairedDeviceStatusMonitor *)&v25 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v4 = dispatch_queue_create("com.apple.amp.iTunesCloud.ICNanoPairedDeviceStatusMonitor.queue", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_DEFAULT, 0);
  v7 = dispatch_queue_create("com.apple.amp.iTunesCloud.ICNanoPairedDeviceStatusMonitor.callBackQueue", v6);
  callBackQueue = v2->_callBackQueue;
  v2->_callBackQueue = v7;

  v9 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:5];
  observers = v2->_observers;
  v2->_observers = v9;

  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "HAS_PAIRED_SYNC", buf, 2u);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v12 = getNRDevicePropertyPairingIDSymbolLoc_ptr;
  v34 = getNRDevicePropertyPairingIDSymbolLoc_ptr;
  if (!getNRDevicePropertyPairingIDSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getNRDevicePropertyPairingIDSymbolLoc_block_invoke;
    v29 = &unk_1E7BFA0A0;
    v30 = &v31;
    v13 = NanoRegistryLibrary();
    v14 = dlsym(v13, "NRDevicePropertyPairingID");
    *(v30[1] + 24) = v14;
    getNRDevicePropertyPairingIDSymbolLoc_ptr = *(v30[1] + 24);
    v12 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (v12)
  {
    objc_storeStrong(&v2->_pairingIDPropertyName, *v12);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v16 = getPSYInitialSyncStateObserverClass_softClass;
    v34 = getPSYInitialSyncStateObserverClass_softClass;
    if (!getPSYInitialSyncStateObserverClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getPSYInitialSyncStateObserverClass_block_invoke;
      v29 = &unk_1E7BFA0A0;
      v30 = &v31;
      __getPSYInitialSyncStateObserverClass_block_invoke(buf);
      v16 = v32[3];
    }

    v17 = v16;
    _Block_object_dispose(&v31, 8);
    v18 = [[v16 alloc] initWithDelegate:v2];
    initialSyncStateObserver = v2->_initialSyncStateObserver;
    v2->_initialSyncStateObserver = v18;

    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, HandleDeviceDidPairNotification, @"com.apple.nanoregistry.devicedidpair", 0, CFNotificationSuspensionBehaviorDrop);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, HandleDeviceDidUnPairNotification, @"com.apple.nanoregistry.devicedidunpair", 0, CFNotificationSuspensionBehaviorDrop);
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = getNRPairedDeviceRegistryDeviceDidBecomeActive();
    [v20 addObserver:v2 selector:sel_deviceBecameActive_ name:v21 object:0];

    return v2;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyPairingID(void)"];
  [v23 handleFailureInFunction:v24 file:@"ICNanoPairedDeviceStatusMonitor.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

+ (ICNanoPairedDeviceStatusMonitor)sharedMonitor
{
  if (sharedMonitor_sOnceToken != -1)
  {
    dispatch_once(&sharedMonitor_sOnceToken, &__block_literal_global_7448);
  }

  v3 = sharedMonitor_sSharedMonitor;

  return v3;
}

uint64_t __48__ICNanoPairedDeviceStatusMonitor_sharedMonitor__block_invoke()
{
  v0 = [[ICNanoPairedDeviceStatusMonitor alloc] _init];
  v1 = sharedMonitor_sSharedMonitor;
  sharedMonitor_sSharedMonitor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end