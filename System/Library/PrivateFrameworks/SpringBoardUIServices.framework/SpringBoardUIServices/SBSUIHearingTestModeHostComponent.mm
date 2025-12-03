@interface SBSUIHearingTestModeHostComponent
- (SBSUIHearingTestModeHostComponent)init;
- (SBSUIHearingTestModeHostComponentDelegate)delegate;
- (void)_updateHearingTestMode;
- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setHearingTestMode:(int64_t)mode;
@end

@implementation SBSUIHearingTestModeHostComponent

- (SBSUIHearingTestModeHostComponent)init
{
  v7.receiver = self;
  v7.super_class = SBSUIHearingTestModeHostComponent;
  v2 = [(SBSUIHearingTestModeHostComponent *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (void)_updateHearingTestMode
{
  scene = [(FBSSceneComponent *)self scene];
  clientSettings = [scene clientSettings];
  hearingTestMode = [clientSettings hearingTestMode];

  isValid = [scene isValid];
  hearingTestMode2 = 0;
  if (isValid && hearingTestMode)
  {
    settings = [scene settings];
    isForeground = [settings isForeground];

    if (isForeground)
    {
      [(NSTimer *)self->_disableHearingTestModeAfterDelayWhenBackgroundTimer invalidate];
      [(SBSUIHearingTestModeHostComponent *)self setDisableHearingTestModeAfterDelayWhenBackgroundTimer:0];
      hearingTestMode2 = hearingTestMode;
    }

    else
    {
      hearingTestMode2 = [(SBSUIHearingTestModeHostComponent *)self hearingTestMode];
      if (hearingTestMode2 == 1)
      {
        disableHearingTestModeAfterDelayWhenBackgroundTimer = [(SBSUIHearingTestModeHostComponent *)self disableHearingTestModeAfterDelayWhenBackgroundTimer];

        if (!disableHearingTestModeAfterDelayWhenBackgroundTimer)
        {
          objc_initWeak(&location, self);
          v11 = MEMORY[0x1E695DFF0];
          v13 = MEMORY[0x1E69E9820];
          v14 = 3221225472;
          v15 = __59__SBSUIHearingTestModeHostComponent__updateHearingTestMode__block_invoke;
          v16 = &unk_1E789DDC0;
          objc_copyWeak(&v17, &location);
          v12 = [v11 scheduledTimerWithTimeInterval:0 repeats:&v13 block:150.0];
          [(SBSUIHearingTestModeHostComponent *)self setDisableHearingTestModeAfterDelayWhenBackgroundTimer:v12, v13, v14, v15, v16];

          objc_destroyWeak(&v17);
          objc_destroyWeak(&location);
        }

        hearingTestMode2 = 1;
      }
    }
  }

  [(SBSUIHearingTestModeHostComponent *)self setHearingTestMode:hearingTestMode2];
}

- (void)setHearingTestMode:(int64_t)mode
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_hearingTestMode != mode)
  {
    self->_hearingTestMode = mode;
    v4 = SBLogHearingTestMode();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = SBSHearingTestModeDescription();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Host component post changes in hearing test mode through delegate: %{public}@", &v7, 0xCu);
    }

    delegate = [(SBSUIHearingTestModeHostComponent *)self delegate];
    [delegate hearingTestModeHostComponentDidChangeActiveState:self];
  }
}

void __59__SBSUIHearingTestModeHostComponent__updateHearingTestMode__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v5 isValid])
  {
    [WeakRetained setHearingTestMode:0];
  }

  v4 = [WeakRetained disableHearingTestModeAfterDelayWhenBackgroundTimer];

  if (v4 == v5)
  {
    [WeakRetained setDisableHearingTestModeAfterDelayWhenBackgroundTimer:0];
  }
}

- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  errorCopy = error;
  v9 = SBLogHearingTestMode();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = contextCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "Host Component did receive scene settings updates with context: %@, error: %@", &v10, 0x16u);
  }

  [(SBSUIHearingTestModeHostComponent *)self _updateHearingTestMode];
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  v5 = SBLogHearingTestMode();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Host Component did receive scene invalidation", v6, 2u);
  }

  [(SBSUIHearingTestModeHostComponent *)self _updateHearingTestMode];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  v16 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];

  if ([settingsDiff containsProperty:sel_hearingTestMode])
  {
    v9 = SBLogHearingTestMode();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412802;
      v11 = settingsDiff;
      v12 = 2112;
      v13 = previousSettings;
      v14 = 2112;
      v15 = transitionContext;
      _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "Host Component did receive client scene settings updates with clientSettingsDiff: %@, oldSettings: %@, transitionContext: %@", &v10, 0x20u);
    }

    [(SBSUIHearingTestModeHostComponent *)self _updateHearingTestMode];
  }
}

- (SBSUIHearingTestModeHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end