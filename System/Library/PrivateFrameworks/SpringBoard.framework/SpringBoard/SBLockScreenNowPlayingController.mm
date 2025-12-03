@interface SBLockScreenNowPlayingController
- (BOOL)_isMediaRecentlyActive;
- (SBLockScreenNowPlayingController)initWithMediaController:(id)controller;
- (SBLockScreenNowPlayingControllerDelegate)delegate;
- (double)_timeoutInterval;
- (void)_addObservers;
- (void)_disableTimerFired;
- (void)_invalidateDisableTimer;
- (void)_removeObservers;
- (void)_startDisableTimer;
- (void)_updateNowPlayingPlugin;
- (void)_updateToState:(int64_t)state;
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation SBLockScreenNowPlayingController

- (SBLockScreenNowPlayingController)initWithMediaController:(id)controller
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = SBLockScreenNowPlayingController;
  v6 = [(SBLockScreenNowPlayingController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaController, controller);
    v7->_currentState = 0;
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    testSettings = v7->_testSettings;
    v7->_testSettings = rootSettings;

    [(CSLockScreenSettings *)v7->_testSettings addKeyObserver:v7];
    objc_initWeak(&location, v7);
    v10 = MEMORY[0x277D432B0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__SBLockScreenNowPlayingController_initWithMediaController___block_invoke;
    v16[3] = &unk_2783AC358;
    objc_copyWeak(&v17, &location);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBLockScreenNowPlayingController_initWithMediaController___block_invoke_2;
    v14[3] = &unk_2783A8C68;
    objc_copyWeak(&v15, &location);
    v11 = [v10 recipeWithTitle:@"Show Now Playing" prepareBlock:0 toggleAction:v16 cleanupBlock:v14];
    testRecipe = v7->_testRecipe;
    v7->_testRecipe = v11;

    [MEMORY[0x277D02C20] registerTestRecipe:v7->_testRecipe];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __60__SBLockScreenNowPlayingController_initWithMediaController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNowPlayingPlugin];
}

void __60__SBLockScreenNowPlayingController_initWithMediaController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNowPlayingPlugin];
}

- (void)dealloc
{
  [(CSLockScreenSettings *)self->_testSettings removeKeyObserver:self];
  [(PTToggleTestRecipe *)self->_testRecipe invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBLockScreenNowPlayingController *)self _invalidateDisableTimer];
  v4.receiver = self;
  v4.super_class = SBLockScreenNowPlayingController;
  [(SBLockScreenNowPlayingController *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    v11 = v3;
    v12 = v4;
    enabledCopy = enabled;
    self->_enabled = enabled;
    v7 = SBLogLockScreenNowPlaying();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (enabledCopy)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "setEnabled:true", buf, 2u);
      }

      [(SBLockScreenNowPlayingController *)self _addObservers];
      [(SBLockScreenNowPlayingController *)self _updateNowPlayingPlugin];
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "setEnabled:false. Removing Now Playing", v9, 2u);
      }

      [(SBLockScreenNowPlayingController *)self _removeObservers];
      [(SBLockScreenNowPlayingController *)self _invalidateDisableTimer];
      [(SBLockScreenNowPlayingController *)self _updateToState:0];
    }
  }
}

- (double)_timeoutInterval
{
  v2 = +[SBDefaults localDefaults];
  lockScreenDefaults = [v2 lockScreenDefaults];
  [lockScreenDefaults nowPlayingTimeout];
  v5 = v4;

  result = 480.0;
  if (v5 >= 0.0)
  {
    return v5;
  }

  return result;
}

- (BOOL)_isMediaRecentlyActive
{
  v14 = *MEMORY[0x277D85DE8];
  lastActivityDate = [(SBMediaController *)self->_mediaController lastActivityDate];
  v4 = SBLogLockScreenNowPlaying();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [lastActivityDate timeIntervalSince1970];
    v12 = 134217984;
    v13 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "media last activity date is %{time_t}ld", &v12, 0xCu);
  }

  if (lastActivityDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:lastActivityDate];
    v8 = v7;

    [(SBLockScreenNowPlayingController *)self _timeoutInterval];
    v10 = v8 <= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateNowPlayingPlugin name:@"SBMediaNowPlayingChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__updateNowPlayingPlugin name:@"SBMediaNowPlayingAppChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__updateNowPlayingPlugin name:@"SBMediaApplicationActivityDidBeginNotification" object:0];
  [defaultCenter addObserver:self selector:sel__updateNowPlayingPlugin name:@"SBMediaApplicationActivityDidEndNotification" object:0];
}

- (void)_removeObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBMediaNowPlayingChangedNotification" object:0];
  [defaultCenter removeObserver:self name:@"SBMediaNowPlayingAppChangedNotification" object:0];
  [defaultCenter removeObserver:self name:@"SBMediaApplicationActivityDidBeginNotification" object:0];
  [defaultCenter removeObserver:self name:@"SBMediaApplicationActivityDidEndNotification" object:0];
}

- (void)_updateNowPlayingPlugin
{
  if ([(SBMediaController *)self->_mediaController isPlaying]|| [(SBMediaController *)self->_mediaController isApplicationActivityActive]|| ([(CSLockScreenSettings *)self->_testSettings showNowPlaying]& 1) != 0 || [(PTToggleTestRecipe *)self->_testRecipe isOn])
  {
    v3 = SBLogLockScreenNowPlaying();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = 2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "media is playing. Showing Now Playing.", buf, 2u);
    }

    else
    {
      v4 = 2;
    }

    goto LABEL_8;
  }

  if (![(SBMediaController *)self->_mediaController isPaused]|| ![(SBLockScreenNowPlayingController *)self _isMediaRecentlyActive])
  {
    isPaused = [(SBMediaController *)self->_mediaController isPaused];
    v3 = SBLogLockScreenNowPlaying();
    v6 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (isPaused)
    {
      if (v6)
      {
        v10 = 0;
        v7 = "media is paused but NOT recently active. Removing Now Playing.";
        v8 = &v10;
LABEL_19:
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }

    else if (v6)
    {
      v9 = 0;
      v7 = "media is not playing and not paused. Removing Now Playing.";
      v8 = &v9;
      goto LABEL_19;
    }

    v4 = 0;
    goto LABEL_8;
  }

  v3 = SBLogLockScreenNowPlaying();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "media is paused and recently active. Showing Now Playing and starting disable timer.", v11, 2u);
  }

  v4 = 1;
LABEL_8:

  [(SBLockScreenNowPlayingController *)self _updateToState:v4];
}

- (void)_updateToState:(int64_t)state
{
  if (self->_currentState != state)
  {
    self->_currentState = state;
    if (state == 1)
    {
      [(SBLockScreenNowPlayingController *)self _startDisableTimer];
    }

    else
    {
      [(SBLockScreenNowPlayingController *)self _invalidateDisableTimer];
    }

    delegate = [(SBLockScreenNowPlayingController *)self delegate];
    [delegate nowPlayingController:self didChangeToState:self->_currentState];
  }
}

- (void)_startDisableTimer
{
  [(SBLockScreenNowPlayingController *)self _invalidateDisableTimer];
  v3 = objc_alloc(MEMORY[0x277D3A180]);
  [(SBLockScreenNowPlayingController *)self _timeoutInterval];
  v4 = [v3 initWithTimeInterval:@"com.apple.springboard.nowplaying" serviceIdentifier:self target:sel__disableTimerFired selector:0 userInfo:?];
  disableTimer = self->_disableTimer;
  self->_disableTimer = v4;

  v6 = self->_disableTimer;
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [(PCPersistentTimer *)v6 scheduleInRunLoop:currentRunLoop];
}

- (void)_invalidateDisableTimer
{
  [(PCPersistentTimer *)self->_disableTimer invalidate];
  disableTimer = self->_disableTimer;
  self->_disableTimer = 0;
}

- (void)_disableTimerFired
{
  v3 = SBLogLockScreenNowPlaying();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "disable timer fired, removing Now Playing", v4, 2u);
  }

  [(SBLockScreenNowPlayingController *)self _updateToState:0];
}

- (SBLockScreenNowPlayingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end