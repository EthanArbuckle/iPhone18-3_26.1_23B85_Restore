@interface TIInputModeAssetStatusManager
+ (id)sharedManager;
- (NSMutableDictionary)inputModeToAssetStatusMap;
- (NSMutableSet)debuggingTimers;
- (NSMutableSet)listeners;
- (TIInputModeAssetStatusManager)init;
- (TILinguisticAssetDownloadClient)client;
- (id)addedInputModesForInputModes:(id)modes;
- (id)dummyFilePathForInputMode:(id)mode assetStatus:(int64_t)status;
- (id)inputModesCurrentlyInProgressOrAvailable;
- (id)inputModesToRemoveForInputModes:(id)modes;
- (id)normalizedInputModesForInputModes:(id)modes;
- (int64_t)assetStatusForInputMode:(id)mode;
- (void)addDebuggingTimerForInputMode:(id)mode status:(int64_t)status duration:(double)duration;
- (void)addListener:(id)listener;
- (void)debuggingTimerFired:(id)fired;
- (void)refetchStatusForInputModesCurrentlyInProgressOrAvailable;
- (void)removeListener:(id)listener;
- (void)startDownloadingAssetsForInputMode:(id)mode;
- (void)startMonitoringAssetUpdateStatusForInputModes:(id)modes includeExisting:(BOOL)existing;
- (void)updateAssetStatus:(int64_t)status forInputMode:(id)mode;
- (void)updateListenerOnMainThread:(id)thread status:(int64_t)status inputModeName:(id)name;
@end

@implementation TIInputModeAssetStatusManager

- (void)startDownloadingAssetsForInputMode:(id)mode
{
  v15 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  v5 = TIInputModeGetNormalizedIdentifier(modeCopy);
  v6 = asset_status_manager_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = modeCopy;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEFAULT, "Start downloading assets for %@ (Normalized: %@)", buf, 0x16u);
  }

  if (v5)
  {
    [(TIInputModeAssetStatusManager *)self updateAssetStatus:2 forInputMode:v5];
    if ([(TIInputModeAssetStatusManager *)self usesDummyFileDebugging])
    {
      [(TIInputModeAssetStatusManager *)self addDebuggingTimerForInputMode:v5 status:0 duration:10.0];
    }

    else
    {
      v7 = asset_status_manager_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1863F7000, v7, OS_LOG_TYPE_DEFAULT, "Attempt update asset for input mode identifier %@", buf, 0xCu);
      }

      client = [(TIInputModeAssetStatusManager *)self client];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __68__TIInputModeAssetStatusManager_startDownloadingAssetsForInputMode___block_invoke;
      v9[3] = &unk_1E6F4D5B0;
      v9[4] = self;
      v10 = v5;
      [client updateAssetForInputModeIdentifier:v10 callback:v9];
    }
  }
}

void __68__TIInputModeAssetStatusManager_startDownloadingAssetsForInputMode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 0;
    goto LABEL_12;
  }

  v6 = [v4 domain];
  if ([v6 isEqualToString:@"DDSAssetDownloadUIErrorDomain"])
  {
    v7 = [v5 code];

    if (v7 == 3)
    {
      v8 = asset_status_manager_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1863F7000, v8, OS_LOG_TYPE_DEFAULT, "Updating of assets got DDSAssetDownloadUIErrorDomain / DDSAssetDownloadUIErrorCodeUpdateInProgress", &v15, 2u);
      }

      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 2;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = asset_status_manager_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1863F7000, v12, OS_LOG_TYPE_DEFAULT, "Updating assets for %@ failed with error %@", &v15, 0x16u);
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = 1;
LABEL_12:
  [v9 updateAssetStatus:v11 forInputMode:v10];
  v14 = asset_status_manager_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1863F7000, v14, OS_LOG_TYPE_DEFAULT, "Refetch status for input modes currently in progress or available", &v15, 2u);
  }

  [*(a1 + 32) refetchStatusForInputModesCurrentlyInProgressOrAvailable];
}

- (void)startMonitoringAssetUpdateStatusForInputModes:(id)modes includeExisting:(BOOL)existing
{
  existingCopy = existing;
  v64 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v7 = asset_status_manager_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [modesCopy componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v63 = v8;
    _os_log_impl(&dword_1863F7000, v7, OS_LOG_TYPE_DEFAULT, "Start monitoring asset update status for input modes %@", buf, 0xCu);
  }

  v40 = modesCopy;
  v9 = [(TIInputModeAssetStatusManager *)self normalizedInputModesForInputModes:modesCopy];
  v10 = [(TIInputModeAssetStatusManager *)self addedInputModesForInputModes:v9];
  v11 = [(TIInputModeAssetStatusManager *)self inputModesToRemoveForInputModes:v9];
  v12 = asset_status_manager_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v63 = v13;
    _os_log_impl(&dword_1863F7000, v12, OS_LOG_TYPE_DEFAULT, "Added input modes: %@", buf, 0xCu);
  }

  v14 = asset_status_manager_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v63 = v15;
    _os_log_impl(&dword_1863F7000, v14, OS_LOG_TYPE_DEFAULT, "Input modes to remove: %@", buf, 0xCu);
  }

  [(TIInputModeAssetStatusManager *)self lockAccessToAssetStatusMap];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v11;
  v16 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v56;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v56 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v55 + 1) + 8 * i);
        inputModeToAssetStatusMap = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
        [inputModeToAssetStatusMap removeObjectForKey:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v17);
  }

  [(TIInputModeAssetStatusManager *)self unlockAccessToAssetStatusMap];
  v38 = v10;
  v39 = v9;
  if (existingCopy)
  {
    v22 = v9;
  }

  else
  {
    v22 = v10;
  }

  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v41 = v22;
  v44 = [v41 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v44)
  {
    v43 = *v52;
    do
    {
      v23 = 0;
      do
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v24 = *(*(&v51 + 1) + 8 * v23);
        [(TIInputModeAssetStatusManager *)self lockAccessToAssetStatusMap];
        inputModeToAssetStatusMap2 = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
        v26 = [inputModeToAssetStatusMap2 objectForKeyedSubscript:v24];

        if (!v26)
        {
          inputModeToAssetStatusMap3 = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
          [inputModeToAssetStatusMap3 setObject:&unk_1EF7DC560 forKeyedSubscript:v24];
        }

        [(TIInputModeAssetStatusManager *)self unlockAccessToAssetStatusMap];
        v45 = v23;
        if ([(TIInputModeAssetStatusManager *)self usesDummyFileDebugging])
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v28 = [&unk_1EF7CB320 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v48;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v48 != v30)
                {
                  objc_enumerationMutation(&unk_1EF7CB320);
                }

                v32 = *(*(&v47 + 1) + 8 * j);
                defaultManager = [MEMORY[0x1E696AC08] defaultManager];
                v34 = -[TIInputModeAssetStatusManager dummyFilePathForInputMode:assetStatus:](self, "dummyFilePathForInputMode:assetStatus:", v24, [v32 unsignedIntegerValue]);
                v35 = [defaultManager fileExistsAtPath:v34];

                if (v35)
                {
                  -[TIInputModeAssetStatusManager addDebuggingTimerForInputMode:status:duration:](self, "addDebuggingTimerForInputMode:status:duration:", v24, [v32 unsignedIntegerValue], 0.04);
                }
              }

              v29 = [&unk_1EF7CB320 countByEnumeratingWithState:&v47 objects:v59 count:16];
            }

            while (v29);
          }
        }

        else
        {
          v36 = asset_status_manager_log();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v24;
            _os_log_impl(&dword_1863F7000, v36, OS_LOG_TYPE_DEFAULT, "Attempt fetch of update status for input mode %@", buf, 0xCu);
          }

          client = [(TIInputModeAssetStatusManager *)self client];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __95__TIInputModeAssetStatusManager_startMonitoringAssetUpdateStatusForInputModes_includeExisting___block_invoke;
          v46[3] = &unk_1E6F4D588;
          v46[4] = v24;
          v46[5] = self;
          [client fetchAssetUpdateStatusForInputModeIdentifier:v24 callback:v46];
        }

        v23 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [v41 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v44);
  }
}

void __95__TIInputModeAssetStatusManager_startMonitoringAssetUpdateStatusForInputModes_includeExisting___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = asset_status_manager_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEFAULT, "Fetching asset update status for %@ failed with error %@", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) updateAssetStatus:a2 forInputMode:*(a1 + 32)];
  }
}

- (int64_t)assetStatusForInputMode:(id)mode
{
  v4 = TIInputModeGetNormalizedIdentifier(mode);
  if (v4)
  {
    [(TIInputModeAssetStatusManager *)self lockAccessToAssetStatusMap];
    inputModeToAssetStatusMap = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
    v6 = [inputModeToAssetStatusMap objectForKeyedSubscript:v4];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    [(TIInputModeAssetStatusManager *)self unlockAccessToAssetStatusMap];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  listeners = [(TIInputModeAssetStatusManager *)self listeners];
  [listeners removeObject:listenerCopy];
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  listeners = [(TIInputModeAssetStatusManager *)self listeners];
  [listeners addObject:listenerCopy];
}

- (void)refetchStatusForInputModesCurrentlyInProgressOrAvailable
{
  inputModesCurrentlyInProgressOrAvailable = [(TIInputModeAssetStatusManager *)self inputModesCurrentlyInProgressOrAvailable];
  [(TIInputModeAssetStatusManager *)self startMonitoringAssetUpdateStatusForInputModes:inputModesCurrentlyInProgressOrAvailable includeExisting:1];
}

- (id)inputModesCurrentlyInProgressOrAvailable
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(TIInputModeAssetStatusManager *)self lockAccessToAssetStatusMap];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  inputModeToAssetStatusMap = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
  allKeys = [inputModeToAssetStatusMap allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        inputModeToAssetStatusMap2 = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
        v12 = [inputModeToAssetStatusMap2 objectForKeyedSubscript:v10];
        unsignedIntValue = [v12 unsignedIntValue];

        if ((unsignedIntValue - 1) <= 1)
        {
          [array addObject:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(TIInputModeAssetStatusManager *)self unlockAccessToAssetStatusMap];

  return array;
}

- (id)inputModesToRemoveForInputModes:(id)modes
{
  v21 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  array = [MEMORY[0x1E695DF70] array];
  [(TIInputModeAssetStatusManager *)self lockAccessToAssetStatusMap];
  inputModeToAssetStatusMap = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
  allKeys = [inputModeToAssetStatusMap allKeys];

  [(TIInputModeAssetStatusManager *)self unlockAccessToAssetStatusMap];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:modesCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = allKeys;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([v8 containsObject:{v14, v16}] & 1) == 0)
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)addedInputModesForInputModes:(id)modes
{
  v21 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  array = [MEMORY[0x1E695DF70] array];
  [(TIInputModeAssetStatusManager *)self lockAccessToAssetStatusMap];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = modesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        inputModeToAssetStatusMap = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
        v13 = [inputModeToAssetStatusMap objectForKeyedSubscript:v11];

        if (!v13)
        {
          inputModeToAssetStatusMap2 = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
          [inputModeToAssetStatusMap2 setObject:&unk_1EF7DC560 forKeyedSubscript:v11];

          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(TIInputModeAssetStatusManager *)self unlockAccessToAssetStatusMap];

  return array;
}

- (id)normalizedInputModesForInputModes:(id)modes
{
  v17 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = modesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = TIInputModeGetNormalizedIdentifier(*(*(&v12 + 1) + 8 * i));
        if (v10)
        {
          [array addObject:{v10, v12}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (void)debuggingTimerFired:(id)fired
{
  userInfo = [fired userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"TIInputModeDebugging"];
  v5 = [userInfo objectForKeyedSubscript:@"TIInputModeAssetStatus"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(TIInputModeAssetStatusManager *)self updateAssetStatus:unsignedIntegerValue forInputMode:v4];
}

- (void)addDebuggingTimerForInputMode:(id)mode status:(int64_t)status duration:(double)duration
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"TIInputModeDebugging";
  v14[1] = @"TIInputModeAssetStatus";
  v15[0] = mode;
  v8 = MEMORY[0x1E696AD98];
  modeCopy = mode;
  v10 = [v8 numberWithInteger:status];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_debuggingTimerFired_ selector:v11 userInfo:0 repeats:duration];

  debuggingTimers = [(TIInputModeAssetStatusManager *)self debuggingTimers];
  [debuggingTimers addObject:v12];
}

- (id)dummyFilePathForInputMode:(id)mode assetStatus:(int64_t)status
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = TIInputModeGetNormalizedIdentifier(mode);
  v6 = v5;
  if (status <= 2)
  {
    v7 = [v5 stringByAppendingString:off_1E6F4D5D0[status]];

    v6 = v7;
  }

  v8 = MEMORY[0x1E695DFF8];
  v13[0] = @"/var/mobile/Library/Keyboard/";
  v13[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v8 fileURLWithPathComponents:v9];
  path = [v10 path];

  return path;
}

- (void)updateAssetStatus:(int64_t)status forInputMode:(id)mode
{
  v25 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  [(TIInputModeAssetStatusManager *)self lockAccessToAssetStatusMap];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  inputModeToAssetStatusMap = [(TIInputModeAssetStatusManager *)self inputModeToAssetStatusMap];
  [inputModeToAssetStatusMap setObject:v7 forKeyedSubscript:modeCopy];

  [(TIInputModeAssetStatusManager *)self unlockAccessToAssetStatusMap];
  v9 = asset_status_manager_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:status];
    *buf = 138412546;
    v22 = modeCopy;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1863F7000, v9, OS_LOG_TYPE_DEFAULT, "Updated status of input mode %@ to %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  listeners = [(TIInputModeAssetStatusManager *)self listeners];
  v12 = [listeners countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(listeners);
        }

        [(TIInputModeAssetStatusManager *)self updateListenerOnMainThread:*(*(&v16 + 1) + 8 * v15++) status:status inputModeName:modeCopy];
      }

      while (v13 != v15);
      v13 = [listeners countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)updateListenerOnMainThread:(id)thread status:(int64_t)status inputModeName:(id)name
{
  threadCopy = thread;
  nameCopy = name;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __81__TIInputModeAssetStatusManager_updateListenerOnMainThread_status_inputModeName___block_invoke;
  v16 = &unk_1E6F4D560;
  v10 = threadCopy;
  v17 = v10;
  v11 = nameCopy;
  selfCopy = self;
  statusCopy = status;
  v18 = v11;
  v12 = MEMORY[0x1866068F0](&v13);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v12[2](v12);
  }

  else
  {
    TIDispatchSync(MEMORY[0x1E69E96A0], v12);
  }
}

uint64_t __81__TIInputModeAssetStatusManager_updateListenerOnMainThread_status_inputModeName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = asset_status_manager_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1863F7000, v2, OS_LOG_TYPE_DEFAULT, "Update listener %@ with status of input mode %@ to %@", &v7, 0x20u);
  }

  return [*(a1 + 32) manager:*(a1 + 48) didUpdateStatus:*(a1 + 56) forInputMode:*(a1 + 40)];
}

- (NSMutableDictionary)inputModeToAssetStatusMap
{
  inputModeToAssetStatusMap = self->_inputModeToAssetStatusMap;
  if (!inputModeToAssetStatusMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_inputModeToAssetStatusMap;
    self->_inputModeToAssetStatusMap = dictionary;

    inputModeToAssetStatusMap = self->_inputModeToAssetStatusMap;
  }

  return inputModeToAssetStatusMap;
}

- (NSMutableSet)debuggingTimers
{
  debuggingTimers = self->_debuggingTimers;
  if (!debuggingTimers)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = self->_debuggingTimers;
    self->_debuggingTimers = v4;

    debuggingTimers = self->_debuggingTimers;
  }

  return debuggingTimers;
}

- (NSMutableSet)listeners
{
  listeners = self->_listeners;
  if (!listeners)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = self->_listeners;
    self->_listeners = v4;

    listeners = self->_listeners;
  }

  return listeners;
}

- (TILinguisticAssetDownloadClient)client
{
  client = self->_client;
  if (!client)
  {
    v4 = objc_alloc_init(TILinguisticAssetDownloadClient);
    v5 = self->_client;
    self->_client = v4;

    client = self->_client;
  }

  return client;
}

- (TIInputModeAssetStatusManager)init
{
  v3.receiver = self;
  v3.super_class = TIInputModeAssetStatusManager;
  result = [(TIInputModeAssetStatusManager *)&v3 init];
  if (result)
  {
    result->_assetStatusMapLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)sharedManager
{
  if (sharedManager___onceToken != -1)
  {
    dispatch_once(&sharedManager___onceToken, &__block_literal_global_9815);
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

void __46__TIInputModeAssetStatusManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(TIInputModeAssetStatusManager);
  v1 = sharedManager___sharedManager;
  sharedManager___sharedManager = v0;

  if (TIGetUseTestFilesForAssetDownloadingTestingValue_onceToken != -1)
  {
    dispatch_once(&TIGetUseTestFilesForAssetDownloadingTestingValue_onceToken, &__block_literal_global_107);
  }

  v2 = +[TIPreferencesController sharedPreferencesController];
  v4 = [v2 valueForPreferenceKey:@"UseTestFilesForAssetDownloadingTesting"];

  v3 = [v4 BOOLValue];
  [sharedManager___sharedManager setUsesDummyFileDebugging:v3];
}

@end