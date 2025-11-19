@interface SASWallpaperWorkspaceSnapshotFetcher
- (SASFetchesWallpaperDelegate)delegate;
- (float)_timeoutForSnapshotRequest;
- (int)_maximumNumberOfLoadingAttempts;
- (uint64_t)fetch;
- (void)_invalidateWorkspaceObservation;
- (void)activeConfigurationDidUpdate:(id)a3;
- (void)dealloc;
- (void)fetch;
- (void)invalidate;
- (void)posterWorkspace:(id)a3 didAddInstance:(id)a4;
- (void)posterWorkspace:(id)a3 didUpdateInstance:(id)a4;
- (void)snapshotFromWorkSpace:(id)a3;
- (void)textureFromSceneSnapshot:(id)a3 orientation:(int64_t)a4;
@end

@implementation SASWallpaperWorkspaceSnapshotFetcher

- (void)dealloc
{
  v3 = [(SASWallpaperWorkspaceSnapshotFetcher *)self observer];
  [v3 invalidate];

  v4 = [(SASWallpaperWorkspaceSnapshotFetcher *)self workspace];
  [v4 removeWorkspaceObserver:self];

  v5.receiver = self;
  v5.super_class = SASWallpaperWorkspaceSnapshotFetcher;
  [(SASWallpaperWorkspaceSnapshotFetcher *)&v5 dealloc];
}

- (void)fetch
{
  v3 = [(SASWallpaperWorkspaceSnapshotFetcher *)self stateObserver];

  if (v3)
  {
    [(SASWallpaperWorkspaceSnapshotFetcher *)self _invalidateWorkspaceObservation];
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v4 = getPRSWallpaperLocationStateObserverClass_softClass;
  v44 = getPRSWallpaperLocationStateObserverClass_softClass;
  if (!getPRSWallpaperLocationStateObserverClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getPRSWallpaperLocationStateObserverClass_block_invoke;
    v39 = &unk_279BB2AB8;
    v40 = &v41;
    __getPRSWallpaperLocationStateObserverClass_block_invoke(buf);
    v4 = v42[3];
  }

  v5 = v4;
  _Block_object_dispose(&v41, 8);
  v6 = objc_alloc_init(v4);
  [(SASWallpaperWorkspaceSnapshotFetcher *)self setStateObserver:v6];

  v7 = [(SASWallpaperWorkspaceSnapshotFetcher *)self variant];
  switch(v7)
  {
    case 0:
      v9 = 4;
      goto LABEL_11;
    case 1:
      v9 = 12;
LABEL_11:
      v10 = [(SASWallpaperWorkspaceSnapshotFetcher *)self stateObserver];
      [v10 setLocations:v9];

      break;
    case -1:
      v8 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Unexpected wallpaper variant" reason:0 userInfo:0];
      objc_exception_throw(v8);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v11 = getPRUISPosterWorkspaceClass_softClass;
  v44 = getPRUISPosterWorkspaceClass_softClass;
  if (!getPRUISPosterWorkspaceClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getPRUISPosterWorkspaceClass_block_invoke;
    v39 = &unk_279BB2AB8;
    v40 = &v41;
    __getPRUISPosterWorkspaceClass_block_invoke(buf);
    v11 = v42[3];
  }

  v12 = v11;
  _Block_object_dispose(&v41, 8);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v13 = getPRSPosterRoleLockScreenSymbolLoc_ptr;
  v44 = getPRSPosterRoleLockScreenSymbolLoc_ptr;
  if (!getPRSPosterRoleLockScreenSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getPRSPosterRoleLockScreenSymbolLoc_block_invoke;
    v39 = &unk_279BB2AB8;
    v40 = &v41;
    v14 = PosterBoardServicesLibrary();
    v15 = dlsym(v14, "PRSPosterRoleLockScreen");
    *(v40[1] + 24) = v15;
    getPRSPosterRoleLockScreenSymbolLoc_ptr = *(v40[1] + 24);
    v13 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v13)
  {
    v29 = [SASWallpaperWorkspaceSnapshotFetcher fetch];
    _Block_object_dispose(&v41, 8);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
    _Unwind_Resume(v29);
  }

  v16 = [v11 workspaceForRole:*v13];
  [(SASWallpaperWorkspaceSnapshotFetcher *)self setWorkspace:v16];

  v17 = [(SASWallpaperWorkspaceSnapshotFetcher *)self workspace];
  [v17 addWorkspaceObserver:self];

  objc_initWeak(&location, self);
  v18 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265A4C000, v18, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: Fetching wallpaper", buf, 2u);
  }

  v19 = [(SASWallpaperWorkspaceSnapshotFetcher *)self stateObserver];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __45__SASWallpaperWorkspaceSnapshotFetcher_fetch__block_invoke;
  v33 = &unk_279BB29F0;
  objc_copyWeak(&v34, &location);
  [v19 setHandler:&v30];

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v20 = getPRSWallpaperObserverConfigurationClass_softClass;
  v44 = getPRSWallpaperObserverConfigurationClass_softClass;
  if (!getPRSWallpaperObserverConfigurationClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getPRSWallpaperObserverConfigurationClass_block_invoke;
    v39 = &unk_279BB2AB8;
    v40 = &v41;
    __getPRSWallpaperObserverConfigurationClass_block_invoke(buf);
    v20 = v42[3];
  }

  v21 = v20;
  _Block_object_dispose(&v41, 8);
  v22 = objc_alloc_init(v20);
  v23 = [(SASWallpaperWorkspaceSnapshotFetcher *)self stateObserver:v30];
  [v22 setLocationStateObserver:v23];

  v24 = [(SASWallpaperWorkspaceSnapshotFetcher *)self queue];
  [v22 setQueue:v24];

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v25 = getPRSWallpaperObserverClass_softClass;
  v44 = getPRSWallpaperObserverClass_softClass;
  if (!getPRSWallpaperObserverClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getPRSWallpaperObserverClass_block_invoke;
    v39 = &unk_279BB2AB8;
    v40 = &v41;
    __getPRSWallpaperObserverClass_block_invoke(buf);
    v25 = v42[3];
  }

  v26 = v25;
  _Block_object_dispose(&v41, 8);
  v27 = [[v25 alloc] initWithExplanation:@"Loading bookends"];
  [(SASWallpaperWorkspaceSnapshotFetcher *)self setObserver:v27];

  v28 = [(SASWallpaperWorkspaceSnapshotFetcher *)self observer];
  [v28 activateWithConfiguration:v22];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void __45__SASWallpaperWorkspaceSnapshotFetcher_fetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained variant];
  if (v5 == 1)
  {
    v8 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_265A4C000, v8, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: StateObserver handler called with HomeScreen configuration", v12, 2u);
    }

    v9 = [v3 activeHome];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v3 activeLock];
    }

    v7 = v11;

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    v6 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: StateObserver handler called with LockScreen configuration", buf, 2u);
    }

    v7 = [v3 activeLock];
    if (v7)
    {
LABEL_6:
      [WeakRetained setCurrentPosterConfiguration:v7];
      [WeakRetained activeConfigurationDidUpdate:v7];
    }
  }
}

- (void)invalidate
{
  [(SASWallpaperWorkspaceSnapshotFetcher *)self setDelegate:0];

  [(SASWallpaperWorkspaceSnapshotFetcher *)self _invalidateWorkspaceObservation];
}

- (void)activeConfigurationDidUpdate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SASWallpaperWorkspaceSnapshotFetcher *)self currentPosterConfiguration];

  if (v5 == v4)
  {
    v6 = [(SASWallpaperWorkspaceSnapshotFetcher *)self workspace];
    v7 = [v6 workspaceForPoster:v4];

    v8 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_265A4C000, v8, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: activeConfigurationDidUpdate got workspace %p", &v9, 0xCu);
    }

    if (v7)
    {
      [(SASWallpaperWorkspaceSnapshotFetcher *)self snapshotFromWorkSpace:v7];
    }
  }
}

- (void)posterWorkspace:(id)a3 didAddInstance:(id)a4
{
  v5 = a4;
  v6 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: didAddInstance called", buf, 2u);
  }

  v7 = [v5 poster];
  v8 = [(SASWallpaperWorkspaceSnapshotFetcher *)self currentPosterConfiguration];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_265A4C000, v10, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: didAddInstance current configuration", v11, 2u);
    }

    [(SASWallpaperWorkspaceSnapshotFetcher *)self snapshotFromWorkSpace:v5];
  }
}

- (void)posterWorkspace:(id)a3 didUpdateInstance:(id)a4
{
  v5 = a4;
  v6 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: didUpdateInstance called", buf, 2u);
  }

  v7 = [v5 poster];
  v8 = [(SASWallpaperWorkspaceSnapshotFetcher *)self currentPosterConfiguration];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_265A4C000, v10, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: didUpdateInstance current configuration", v11, 2u);
    }

    [(SASWallpaperWorkspaceSnapshotFetcher *)self snapshotFromWorkSpace:v5];
  }
}

- (void)snapshotFromWorkSpace:(id)a3
{
  v4 = a3;
  v5 = [(SASWallpaperWorkspaceSnapshotFetcher *)self currentPosterConfiguration];
  objc_initWeak(&location, v5);

  v6 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: snapshotFromWorkSpace", &buf, 2u);
  }

  objc_initWeak(&buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke;
  v8[3] = &unk_279BB2A68;
  objc_copyWeak(&v11, &buf);
  v9 = v4;
  v7 = v4;
  objc_copyWeak(&v12, &location);
  v10 = self;
  dispatch_async(MEMORY[0x277D85CD0], v8);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&buf);
  objc_destroyWeak(&location);
}

void __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    [WeakRetained _timeoutForSnapshotRequest];
    v6 = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_2;
    v7[3] = &unk_279BB2A40;
    objc_copyWeak(&v8, (a1 + 48));
    objc_copyWeak(&v9, (a1 + 56));
    v7[4] = *(a1 + 40);
    [v4 snapshotWithTimeout:v7 completion:v6];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v8);
  }
}

void __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v10 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3;
    block[3] = &unk_279BB2A18;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(v18, (a1 + 48));
    v11 = v8;
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v16 = v7;
    v18[1] = a3;
    dispatch_async(v10, block);

    objc_destroyWeak(v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 64));
    if (v3 && ([WeakRetained currentPosterConfiguration], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
    {
      if (!*(a1 + 32))
      {
        [WeakRetained textureFromSceneSnapshot:*(a1 + 48) orientation:*(a1 + 72)];
        goto LABEL_7;
      }

      v6 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_1((a1 + 32), WeakRetained, v6);
      }

      [WeakRetained _invalidateWorkspaceObservation];
      v7 = [WeakRetained delegate];

      if (v7)
      {
        v8 = [WeakRetained currentAttempt];
        if (v8 >= [WeakRetained _maximumNumberOfLoadingAttempts])
        {
          v9 = +[SASUILogging bookendFacility];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_2(v9);
          }

          v10 = [WeakRetained delegate];
          [v10 wallpaperFetcher:*(a1 + 40) failedToLoadWithError:*(a1 + 32)];
        }

        else
        {
          [WeakRetained setCurrentAttempt:{objc_msgSend(WeakRetained, "currentAttempt") + 1}];
          [WeakRetained fetch];
        }

        goto LABEL_7;
      }

      v5 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_3(v5);
      }
    }

    else
    {
      v5 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_265A4C000, v5, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: Active configuration has changed during snapshot request.", v11, 2u);
      }
    }

LABEL_7:
  }
}

- (void)textureFromSceneSnapshot:(id)a3 orientation:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = a4;
    _os_log_impl(&dword_265A4C000, v7, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: textureFromSnapshot called with orientation: %ld", buf, 0xCu);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [v6 IOSurface];
  v10 = [objc_alloc(MEMORY[0x277D755B8]) _initWithIOSurface:v9 scale:__UIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation() orientation:1.0];
  objc_initWeak(buf, self);
  v11 = [(SASWallpaperWorkspaceSnapshotFetcher *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SASWallpaperWorkspaceSnapshotFetcher_textureFromSceneSnapshot_orientation___block_invoke;
  v13[3] = &unk_279BB2A90;
  objc_copyWeak(&v15, buf);
  v14 = v10;
  v12 = v10;
  dispatch_async(v11, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  objc_autoreleasePoolPop(v8);
}

void __77__SASWallpaperWorkspaceSnapshotFetcher_textureFromSceneSnapshot_orientation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 wallpaperFetcher:v4 didFinishWithImage:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_invalidateWorkspaceObservation
{
  v3 = [(SASWallpaperWorkspaceSnapshotFetcher *)self observer];
  [v3 invalidate];

  [(SASWallpaperWorkspaceSnapshotFetcher *)self setObserver:0];
  v4 = [(SASWallpaperWorkspaceSnapshotFetcher *)self workspace];
  [v4 removeWorkspaceObserver:self];

  [(SASWallpaperWorkspaceSnapshotFetcher *)self setWorkspace:0];
  [(SASWallpaperWorkspaceSnapshotFetcher *)self setStateObserver:0];

  [(SASWallpaperWorkspaceSnapshotFetcher *)self setCurrentPosterConfiguration:0];
}

- (float)_timeoutForSnapshotRequest
{
  v2 = +[SASPreferencesManager shared];
  v3 = [v2 readValueForKey:3];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.25;
  }

  return v5;
}

- (int)_maximumNumberOfLoadingAttempts
{
  v2 = +[SASPreferencesManager shared];
  v3 = [v2 readValueForKey:2];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (SASFetchesWallpaperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (uint64_t)fetch
{
  dlerror();
  v0 = abort_report_np();
  return __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_1(v0);
}

void __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 138412546;
  v6 = v4;
  v7 = 1024;
  v8 = [a2 currentAttempt];
  _os_log_error_impl(&dword_265A4C000, a3, OS_LOG_TYPE_ERROR, "WorkspaceSnapshotFetcher: Error fetching snapshot: %@, attempt: %i", &v5, 0x12u);
}

@end