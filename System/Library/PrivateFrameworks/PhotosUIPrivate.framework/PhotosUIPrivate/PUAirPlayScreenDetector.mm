@interface PUAirPlayScreenDetector
- (BOOL)shouldIgnoreScreen:(id)a3 displayInfo:(id)a4;
- (NSArray)availableScreens;
- (PUAirPlayScreenDetector)init;
- (PUAirPlayScreenReceiver)receiver;
- (void)_createAirPlayScreenAndNotifyDelegate:(id)a3;
- (void)_enumerateAllScreensAndDisplayInfos:(id)a3;
- (void)_handleUpdatedDisplayInfo:(id)a3;
- (void)_performBlockWithDisplayInfoForScreen:(id)a3 handler:(id)a4;
- (void)_performBlockWithScreenForDisplayInfo:(id)a3 handler:(id)a4;
- (void)_removeAirPlayScreenAndNotifyDelegate:(id)a3;
- (void)_scanForAvailableScreens;
- (void)_sceneDidDisconnect:(id)a3;
- (void)_sceneWillConnect:(id)a3;
- (void)_setUpSceneNotifications;
- (void)externalDisplayDidUpdateProperties:(id)a3;
@end

@implementation PUAirPlayScreenDetector

- (PUAirPlayScreenReceiver)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

- (void)externalDisplayDidUpdateProperties:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PUAirPlayScreenDetector_externalDisplayDidUpdateProperties___block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_sceneDidDisconnect:(id)a3
{
  v11 = a3;
  v4 = [v11 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v11 object];
    v7 = [v6 screen];
    detectedScreensMap = self->_detectedScreensMap;
    v9 = [(UIScreen *)v7 pu_hardwareIdentifier];
    v10 = [(NSMutableDictionary *)detectedScreensMap objectForKey:v9];

    [(PUAirPlayScreenDetector *)self _removeAirPlayScreenAndNotifyDelegate:v10];
  }
}

- (void)_sceneWillConnect:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v8 = [v7 screen];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__PUAirPlayScreenDetector__sceneWillConnect___block_invoke;
    v9[3] = &unk_1E7B74C70;
    v9[4] = self;
    [(PUAirPlayScreenDetector *)self _performBlockWithDisplayInfoForScreen:v8 handler:v9];
  }
}

void __45__PUAirPlayScreenDetector__sceneWillConnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) shouldIgnoreScreen:? displayInfo:?] & 1) == 0)
  {
    [*(a1 + 32) _createAirPlayScreenAndNotifyDelegate:v3];
  }
}

- (void)_setUpSceneNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__sceneWillConnect_ name:*MEMORY[0x1E69DE350] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__sceneDidDisconnect_ name:*MEMORY[0x1E69DE340] object:0];
}

- (void)_enumerateAllScreensAndDisplayInfos:(id)a3
{
  v4 = a3;
  externalDisplayService = self->_externalDisplayService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PUAirPlayScreenDetector__enumerateAllScreensAndDisplayInfos___block_invoke;
  v7[3] = &unk_1E7B7DAA8;
  v8 = v4;
  v6 = v4;
  [(SBSExternalDisplayService *)externalDisplayService getConnectedDisplayInfoWithCompletionHandler:v7];
}

void __63__PUAirPlayScreenDetector__enumerateAllScreensAndDisplayInfos___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PUAirPlayScreenDetector__enumerateAllScreensAndDisplayInfos___block_invoke_2;
  v5[3] = &unk_1E7B80B48;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __63__PUAirPlayScreenDetector__enumerateAllScreensAndDisplayInfos___block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 connectedScenes];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 screen];
          v13 = [(UIScreen *)v12 pu_hardwareIdentifier];
          [v2 setObject:v12 forKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v40;
    *&v16 = 138412290;
    v34 = v16;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v39 + 1) + 8 * j);
        v21 = [v20 identifier];

        if (v21)
        {
          v22 = [v20 identifier];
          [v3 setObject:v20 forKey:v22];
        }

        else
        {
          v22 = PLAirPlayGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *buf = v34;
            v49 = v20;
            _os_log_fault_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_FAULT, "SBSConnectedDisplayInfo had a nil identifier: %@", buf, 0xCu);
          }
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v17);
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = [v2 allKeys];
  [v23 addObjectsFromArray:v24];

  v25 = [v3 allKeys];
  [v23 addObjectsFromArray:v25];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = v23;
  v27 = [v26 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v35 + 1) + 8 * k);
        v32 = [v2 objectForKey:v31];
        v33 = [v3 objectForKey:v31];
        (*(*(a1 + 40) + 16))();
      }

      v28 = [v26 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v28);
  }
}

- (void)_performBlockWithScreenForDisplayInfo:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 connectedScenes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v14 screen];
          v16 = [(UIScreen *)v15 pu_hardwareIdentifier];
          v17 = [v19 identifier];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {

            goto LABEL_14;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_14:

  v5[2](v5, v15, v19);
}

- (void)_performBlockWithDisplayInfoForScreen:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(UIScreen *)v6 pu_hardwareIdentifier];
    externalDisplayService = self->_externalDisplayService;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__PUAirPlayScreenDetector__performBlockWithDisplayInfoForScreen_handler___block_invoke;
    v11[3] = &unk_1E7B74C98;
    v12 = v8;
    v14 = v7;
    v13 = v6;
    v10 = v8;
    [(SBSExternalDisplayService *)externalDisplayService getConnectedDisplayInfoWithCompletionHandler:v11];
  }
}

void __73__PUAirPlayScreenDetector__performBlockWithDisplayInfoForScreen_handler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:*(a1 + 32)];

        if (v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PUAirPlayScreenDetector__performBlockWithDisplayInfoForScreen_handler___block_invoke_2;
  block[3] = &unk_1E7B80CB0;
  v14 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = v4;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_removeAirPlayScreenAndNotifyDelegate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 screen];
    v7 = [(UIScreen *)v5 pu_hardwareIdentifier];

    [(NSMutableDictionary *)self->_detectedScreensMap removeObjectForKey:v7];
    v6 = [(PUAirPlayScreenDetector *)self receiver];
    [v6 screenDetector:self didLoseScreen:v4];
  }
}

- (void)_createAirPlayScreenAndNotifyDelegate:(id)a3
{
  v4 = a3;
  v7 = [(UIScreen *)v4 pu_hardwareIdentifier];
  v5 = [[PUAirPlayScreen alloc] initWithScreen:v4];

  [(NSMutableDictionary *)self->_detectedScreensMap setObject:v5 forKey:v7];
  v6 = [(PUAirPlayScreenDetector *)self receiver];
  [v6 screenDetector:self didDetectScreen:v5];
}

- (void)_handleUpdatedDisplayInfo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLAirPlayGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 identifier];
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "Received update info for screen: %{public}@", buf, 0xCu);
  }

  detectedScreensMap = self->_detectedScreensMap;
  v8 = [v4 identifier];
  v9 = [(NSMutableDictionary *)detectedScreensMap objectForKey:v8];

  if (v9)
  {
    v10 = [v9 screen];
    v11 = [(PUAirPlayScreenDetector *)self shouldIgnoreScreen:v10 displayInfo:v4];

    if (v11)
    {
      [(PUAirPlayScreenDetector *)self _removeAirPlayScreenAndNotifyDelegate:v9];
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__PUAirPlayScreenDetector__handleUpdatedDisplayInfo___block_invoke;
    v12[3] = &unk_1E7B74C70;
    v12[4] = self;
    [(PUAirPlayScreenDetector *)self _performBlockWithScreenForDisplayInfo:v4 handler:v12];
  }
}

void __53__PUAirPlayScreenDetector__handleUpdatedDisplayInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && ([*(a1 + 32) shouldIgnoreScreen:v6 displayInfo:v5] & 1) == 0)
  {
    [*(a1 + 32) _createAirPlayScreenAndNotifyDelegate:v6];
  }
}

- (void)_scanForAvailableScreens
{
  v3 = PLAirPlayGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Scanning for available AirPlay screens.", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PUAirPlayScreenDetector__scanForAvailableScreens__block_invoke;
  v4[3] = &unk_1E7B74C70;
  v4[4] = self;
  [(PUAirPlayScreenDetector *)self _enumerateAllScreensAndDisplayInfos:v4];
}

void __51__PUAirPlayScreenDetector__scanForAvailableScreens__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && ([*(a1 + 32) shouldIgnoreScreen:v5 displayInfo:v6] & 1) == 0)
  {
    v7 = [(UIScreen *)v5 pu_hardwareIdentifier];
    v8 = PLAirPlayGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Found AirPlay screen: %{public}@", &v10, 0xCu);
    }

    v9 = [[PUAirPlayScreen alloc] initWithScreen:v5];
    [*(*(a1 + 32) + 24) setObject:v9 forKey:v7];
  }
}

- (BOOL)shouldIgnoreScreen:(id)a3 displayInfo:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 3)
  {
    v9 = PLAirPlayGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(UIScreen *)v5 pu_hardwareIdentifier];
      v21 = 138543362;
      v22 = v10;
      v11 = "Ignoring CarPlay screen: %{public}@";
LABEL_17:
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_INFO, v11, &v21, 0xCu);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v12 = [v5 displayConfiguration];
  v13 = [v12 isMainDisplay];

  if (v13)
  {
    v9 = PLAirPlayGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(UIScreen *)v5 pu_hardwareIdentifier];
      v21 = 138543362;
      v22 = v10;
      v11 = "Ignoring main screen: %{public}@";
      goto LABEL_17;
    }

LABEL_18:

    v19 = 1;
    goto LABEL_19;
  }

  if ((PFIsCamera() & 1) != 0 || PFIsPhotosAppAnyPlatform())
  {
    v14 = [v5 displayConfiguration];
    v15 = [v14 name];
    v16 = [MEMORY[0x1E6979328] TVOutDisplay];
    v17 = [v16 name];
    v18 = [v15 isEqualToString:v17];

    if (v18)
    {
      v9 = PLAirPlayGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(UIScreen *)v5 pu_hardwareIdentifier];
        v21 = 138543362;
        v22 = v10;
        v11 = "Ignoring TVOut screen: %{public}@";
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  if (v6 && ([v6 isMirrored] & 1) == 0)
  {
    v9 = PLAirPlayGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(UIScreen *)v5 pu_hardwareIdentifier];
      v21 = 138543362;
      v22 = v10;
      v11 = "Ignoring non-mirrored screen: %{public}@";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (NSArray)availableScreens
{
  v2 = [(NSMutableDictionary *)self->_detectedScreensMap objectEnumerator];
  v3 = [v2 allObjects];

  return v3;
}

- (PUAirPlayScreenDetector)init
{
  v8.receiver = self;
  v8.super_class = PUAirPlayScreenDetector;
  v2 = [(PUAirPlayScreenDetector *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    detectedScreensMap = v2->_detectedScreensMap;
    v2->_detectedScreensMap = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69D4218]);
    externalDisplayService = v2->_externalDisplayService;
    v2->_externalDisplayService = v5;

    [(SBSExternalDisplayService *)v2->_externalDisplayService addObserver:v2];
    [(PUAirPlayScreenDetector *)v2 _setUpSceneNotifications];
    [(PUAirPlayScreenDetector *)v2 _scanForAvailableScreens];
  }

  return v2;
}

@end