@interface _UIPlaybackControlsStateManager
- (UIScene)_scene;
- (_UIPlaybackControlsStateManager)initWithScene:(id)a3;
- (id)_beginFullscreenPlaybackSession;
- (id)_beginPresentingPlaybackControls;
- (void)_updateState;
@end

@implementation _UIPlaybackControlsStateManager

- (_UIPlaybackControlsStateManager)initWithScene:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIPlaybackControlsStateManager;
  v5 = [(_UIPlaybackControlsStateManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:261];
    fullscreenPlaybackAssertions = v6->_fullscreenPlaybackAssertions;
    v6->_fullscreenPlaybackAssertions = v7;

    v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:261];
    controlsPresentedAssertions = v6->_controlsPresentedAssertions;
    v6->_controlsPresentedAssertions = v9;
  }

  return v6;
}

- (id)_beginFullscreenPlaybackSession
{
  if (pthread_main_np() != 1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIPlaybackControlsState.m" lineNumber:53 description:@"Call must be made on main thread"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __66___UIPlaybackControlsStateManager__beginFullscreenPlaybackSession__block_invoke;
    v15 = &unk_1E70FA170;
    objc_copyWeak(&v16, &location);
    v5 = _Block_copy(&v12);
    v6 = objc_alloc(MEMORY[0x1E698E778]);
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
    v9 = [v6 initWithIdentifier:@"_UIPlaybackControlsState" forReason:@"FullscreenPlayback" queue:v7 invalidationBlock:{v5, v12, v13, v14, v15}];

    if (self)
    {
      [(NSHashTable *)self->_fullscreenPlaybackAssertions addObject:v9];
      [(_UIPlaybackControlsStateManager *)&self->super.isa _updateState];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_beginPresentingPlaybackControls
{
  if (pthread_main_np() != 1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIPlaybackControlsState.m" lineNumber:73 description:@"Call must be made on main thread"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __67___UIPlaybackControlsStateManager__beginPresentingPlaybackControls__block_invoke;
    v15 = &unk_1E70FA170;
    objc_copyWeak(&v16, &location);
    v5 = _Block_copy(&v12);
    v6 = objc_alloc(MEMORY[0x1E698E778]);
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
    v9 = [v6 initWithIdentifier:@"_UIPlaybackControlsState" forReason:@"ControlsPresented" queue:v7 invalidationBlock:{v5, v12, v13, v14, v15}];

    if (self)
    {
      [(NSHashTable *)self->_controlsPresentedAssertions addObject:v9];
      [(_UIPlaybackControlsStateManager *)&self->super.isa _updateState];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateState
{
  v2 = [a1[2] count] != 0;
  if ((([a1[3] count] != 0) & v2) != 0)
  {
    v2 = 2;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47___UIPlaybackControlsStateManager__updateState__block_invoke;
  v4[3] = &__block_descriptor_40_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  v4[4] = v2;
  [WeakRetained _updateUIClientSettingsWithBlock:v4];
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end