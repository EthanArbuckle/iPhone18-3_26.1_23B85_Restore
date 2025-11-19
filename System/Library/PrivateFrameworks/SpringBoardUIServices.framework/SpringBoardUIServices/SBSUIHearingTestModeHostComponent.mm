@interface SBSUIHearingTestModeHostComponent
- (SBSUIHearingTestModeHostComponent)init;
- (SBSUIHearingTestModeHostComponentDelegate)delegate;
- (void)_updateHearingTestMode;
- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setHearingTestMode:(int64_t)a3;
@end

@implementation SBSUIHearingTestModeHostComponent

- (SBSUIHearingTestModeHostComponent)init
{
  v7.receiver = self;
  v7.super_class = SBSUIHearingTestModeHostComponent;
  v2 = [(SBSUIHearingTestModeHostComponent *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

- (void)_updateHearingTestMode
{
  v3 = [(FBSSceneComponent *)self scene];
  v4 = [v3 clientSettings];
  v5 = [v4 hearingTestMode];

  v6 = [v3 isValid];
  v7 = 0;
  if (v6 && v5)
  {
    v8 = [v3 settings];
    v9 = [v8 isForeground];

    if (v9)
    {
      [(NSTimer *)self->_disableHearingTestModeAfterDelayWhenBackgroundTimer invalidate];
      [(SBSUIHearingTestModeHostComponent *)self setDisableHearingTestModeAfterDelayWhenBackgroundTimer:0];
      v7 = v5;
    }

    else
    {
      v7 = [(SBSUIHearingTestModeHostComponent *)self hearingTestMode];
      if (v7 == 1)
      {
        v10 = [(SBSUIHearingTestModeHostComponent *)self disableHearingTestModeAfterDelayWhenBackgroundTimer];

        if (!v10)
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

        v7 = 1;
      }
    }
  }

  [(SBSUIHearingTestModeHostComponent *)self setHearingTestMode:v7];
}

- (void)setHearingTestMode:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_hearingTestMode != a3)
  {
    self->_hearingTestMode = a3;
    v4 = SBLogHearingTestMode();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = SBSHearingTestModeDescription();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Host component post changes in hearing test mode through delegate: %{public}@", &v7, 0xCu);
    }

    v6 = [(SBSUIHearingTestModeHostComponent *)self delegate];
    [v6 hearingTestModeHostComponentDidChangeActiveState:self];
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

- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = SBLogHearingTestMode();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "Host Component did receive scene settings updates with context: %@, error: %@", &v10, 0x16u);
  }

  [(SBSUIHearingTestModeHostComponent *)self _updateHearingTestMode];
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v5 = SBLogHearingTestMode();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Host Component did receive scene invalidation", v6, 2u);
  }

  [(SBSUIHearingTestModeHostComponent *)self _updateHearingTestMode];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 settingsDiff];
  v7 = [v5 previousSettings];
  v8 = [v5 transitionContext];

  if ([v6 containsProperty:sel_hearingTestMode])
  {
    v9 = SBLogHearingTestMode();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
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