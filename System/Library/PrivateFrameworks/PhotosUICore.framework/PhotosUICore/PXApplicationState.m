@interface PXApplicationState
+ (BOOL)isLaunchedForTesting;
+ (BOOL)isRunningInPhotosApp;
+ (BOOL)isRunningInPhotosTopShelfExtension;
+ (PXApplicationState)sharedState;
+ (int64_t)photosAppProtectionState;
- (BOOL)isDisablingIdleTimerForReasons:(id *)a3;
- (PXApplicationState)init;
- (PXApplicationState)initWithApplication:(id)a3 isExtension:(BOOL)a4;
- (id)beginDisablingIdleTimerForReason:(id)a3;
- (void)_appDidBecomeHidden:(id)a3;
- (void)_appDidBecomeUnhidden:(id)a3;
- (void)_sceneDidActivate:(id)a3;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_sceneWillDeactivate:(id)a3;
- (void)_sceneWillEnterBackground:(id)a3;
- (void)_updateIfNeeded;
- (void)_updateVisibilityState;
- (void)didPerformChanges;
- (void)endDisablingIdleTimer:(id)a3;
- (void)setIsHidden:(BOOL)a3;
- (void)setIsInactive:(BOOL)a3;
- (void)setVisibilityState:(int64_t)a3;
@end

@implementation PXApplicationState

+ (BOOL)isRunningInPhotosApp
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];

  LOBYTE(v2) = [v3 isEqualToString:@"Photos"];
  return v2;
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXApplicationState;
  [(PXApplicationState *)&v3 didPerformChanges];
  [(PXApplicationState *)self _updateIfNeeded];
}

+ (BOOL)isLaunchedForTesting
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 launchedToTest];

  return v3;
}

+ (PXApplicationState)sharedState
{
  if (sharedState_onceToken != -1)
  {
    dispatch_once(&sharedState_onceToken, &__block_literal_global_76897);
  }

  v3 = sharedState_sharedState;

  return v3;
}

void __33__PXApplicationState_sharedState__block_invoke()
{
  v0 = [PXApplicationState alloc];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [(PXApplicationState *)v0 initWithApplication:v3 isExtension:_UIApplicationIsExtension()];
  v2 = sharedState_sharedState;
  sharedState_sharedState = v1;
}

- (void)_updateIfNeeded
{
  if (self->_needsUpdateVisibilityState)
  {
    [(PXApplicationState *)self _updateVisibilityState];
  }
}

- (void)_updateVisibilityState
{
  if ([(PXApplicationState *)self isHidden])
  {
    v3 = 3;
  }

  else
  {
    v4 = [(PXApplicationState *)self isInactive];
    v3 = 1;
    if (v4)
    {
      v3 = 2;
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__PXApplicationState__updateVisibilityState__block_invoke;
  v5[3] = &unk_1E7749D78;
  v5[4] = self;
  v5[5] = v3;
  [(PXApplicationState *)self performChanges:v5];
}

- (BOOL)isDisablingIdleTimerForReasons:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableSet *)self->_disabledIdleTimerTokens count];
  if (!v5)
  {
    v13 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_disabledIdleTimerTokens;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) reason];
        [v6 addObject:v12];
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  if (a3)
  {
LABEL_10:
    v14 = v13;
    *a3 = v13;
  }

LABEL_11:

  return v5 != 0;
}

- (void)endDisablingIdleTimer:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 reason];
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "End disabling idle timer for reason: %@", buf, 0xCu);
  }

  if (([(NSMutableSet *)self->_disabledIdleTimerTokens containsObject:v4]& 1) == 0)
  {
    PXAssertGetLog();
  }

  [(NSMutableSet *)self->_disabledIdleTimerTokens removeObject:v4];
  if (![(NSMutableSet *)self->_disabledIdleTimerTokens count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PXApplicationState_endDisablingIdleTimer___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __44__PXApplicationState_endDisablingIdleTimer___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) application];
  [v1 setIdleTimerDisabled:0];
}

- (id)beginDisablingIdleTimerForReason:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[PXApplicationState isRunningInPhotosApp]|| (PFProcessIsLaunchedToExecuteTests() & 1) != 0)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Begin disabling idle timer for reason: %@", buf, 0xCu);
    }

    v6 = [[PXApplicationDisabledIdleTimerToken alloc] initWithReason:v4 powerAssertionID:0];
    if (![(NSMutableSet *)self->_disabledIdleTimerTokens count])
    {
      v7 = [(PXApplicationState *)self application];
      if (!v7)
      {
        PXAssertGetLog();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__PXApplicationState_beginDisablingIdleTimerForReason___block_invoke;
      block[3] = &unk_1E774C648;
      v12 = v7;
      v8 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    [(NSMutableSet *)self->_disabledIdleTimerTokens addObject:v6];
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Skipping disabling idle timer (requested for reason: %@), because process is not the Photos app", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_sceneWillEnterBackground:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 session];
  v5 = [v4 role];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69DE808]];

  if (v6)
  {
    [(PXApplicationState *)self setIsHidden:0];
  }
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 session];
  v5 = [v4 role];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69DE808]];

  if (v6)
  {
    [(PXApplicationState *)self setIsHidden:1];
  }
}

- (void)_sceneDidActivate:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 session];
  v5 = [v4 role];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69DE808]];

  if (v6)
  {
    [(PXApplicationState *)self setIsInactive:0];
  }
}

- (void)_sceneWillDeactivate:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 session];
  v5 = [v4 role];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69DE808]];

  if (v6)
  {
    [(PXApplicationState *)self setIsInactive:1];
  }
}

- (void)_appDidBecomeUnhidden:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 session];
  v5 = [v4 role];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69DE808]];

  if (v6)
  {
    [(PXApplicationState *)self setIsHidden:0];
  }
}

- (void)_appDidBecomeHidden:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 session];
  v5 = [v4 role];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69DE808]];

  if (v6)
  {
    [(PXApplicationState *)self setIsHidden:1];
  }
}

- (void)setVisibilityState:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_visibilityState != a3)
  {
    self->_visibilityState = a3;
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      visibilityState = self->_visibilityState;
      v6 = 136315394;
      v7 = "[PXApplicationState setVisibilityState:]";
      v8 = 2048;
      v9 = visibilityState;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%s visibilityState: %li", &v6, 0x16u);
    }

    [(PXApplicationState *)self signalChange:1];
  }
}

- (void)setIsHidden:(BOOL)a3
{
  if (self->_isHidden != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34__PXApplicationState_setIsHidden___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    v6 = a3;
    [(PXApplicationState *)self performChanges:v5];
  }
}

uint64_t __34__PXApplicationState_setIsHidden___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 106);
    v5 = 136315394;
    v6 = "[PXApplicationState setIsHidden:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%s isHidden: %i", &v5, 0x12u);
  }

  *(*(a1 + 32) + 106) = *(a1 + 40);
  return [*(a1 + 32) _invalidateVisibilityState];
}

- (void)setIsInactive:(BOOL)a3
{
  if (self->_isInactive != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__PXApplicationState_setIsInactive___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    v6 = a3;
    [(PXApplicationState *)self performChanges:v5];
  }
}

uint64_t __36__PXApplicationState_setIsInactive___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 105) = *(a1 + 40);
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 105);
    v5 = 136315394;
    v6 = "[PXApplicationState setIsInactive:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%s isInactive: %i", &v5, 0x12u);
  }

  return [*(a1 + 32) _invalidateVisibilityState];
}

- (PXApplicationState)initWithApplication:(id)a3 isExtension:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v21.receiver = self;
  v21.super_class = PXApplicationState;
  v8 = [(PXApplicationState *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_application, a3);
    v9->_needsUpdateVisibilityState = 1;
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    if (v4)
    {
      v9->_isInactive = 0;
      v9->_isHidden = 0;
      v11 = MEMORY[0x1E696A2C0];
      v12 = &selRef__appDidBecomeActive_;
      v13 = MEMORY[0x1E696A2D8];
      v14 = &selRef__appDidBecomeInactive_;
      v15 = v7;
    }

    else
    {
      v9->_isInactive = [v7 applicationState] != 0;
      v15 = 0;
      v9->_isHidden = [v7 applicationState] == 2;
      v11 = MEMORY[0x1E69DE338];
      v12 = &selRef__sceneDidActivate_;
      v13 = MEMORY[0x1E69DE358];
      v14 = &selRef__sceneWillDeactivate_;
    }

    [v10 addObserver:v9 selector:*v14 name:*v13 object:v15];
    [v10 addObserver:v9 selector:*v12 name:*v11 object:v15];
    [v10 addObserver:v9 selector:sel__appDidBecomeHidden_ name:*MEMORY[0x1E69DE348] object:0];
    [v10 addObserver:v9 selector:sel__appDidBecomeUnhidden_ name:*MEMORY[0x1E69DE360] object:0];
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      visibilityState = v9->_visibilityState;
      *buf = 136315906;
      v23 = "[PXApplicationState initWithApplication:isExtension:]";
      v24 = 2112;
      v25 = v7;
      v26 = 1024;
      v27 = v4;
      v28 = 2048;
      v29 = visibilityState;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "%s application: %@ isExtension: %i visibilityState: %ld", buf, 0x26u);
    }

    v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:3];
    disabledIdleTimerTokens = v9->_disabledIdleTimerTokens;
    v9->_disabledIdleTimerTokens = v18;

    [(PXApplicationState *)v9 _updateIfNeeded];
  }

  return v9;
}

- (PXApplicationState)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXApplicationState.m" lineNumber:96 description:{@"%s is not available as initializer", "-[PXApplicationState init]"}];

  abort();
}

+ (int64_t)photosAppProtectionState
{
  Helper_x8__OBJC_CLASS___APApplication = gotLoadHelper_x8__OBJC_CLASS___APApplication(v2);
  v5 = [*(v4 + 208) applicationWithBundleIdentifier:{*MEMORY[0x1E69BFF18], Helper_x8__OBJC_CLASS___APApplication}];
  if ([v5 isLocked])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (BOOL)isRunningInPhotosTopShelfExtension
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];

  LOBYTE(v2) = [0 isEqualToString:v3];
  return v2;
}

@end