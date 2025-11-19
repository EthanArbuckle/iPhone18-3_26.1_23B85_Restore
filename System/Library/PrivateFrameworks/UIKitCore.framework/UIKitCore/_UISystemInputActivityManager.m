@interface _UISystemInputActivityManager
- (BSSimpleAssertion)_activeSystemInputInteraction;
- (UIScene)_scene;
- (_UISystemInputActivityManager)initWithScene:(id)a3;
- (id)beginTrackingSystemInputActivity;
- (id)windowHostingScene;
- (void)_updateClientSettingsSystemInputActive:(BOOL)a3;
@end

@implementation _UISystemInputActivityManager

- (_UISystemInputActivityManager)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISystemInputActivityManager;
  v5 = [(_UISystemInputActivityManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
  }

  return v6;
}

- (id)beginTrackingSystemInputActivity
{
  v3 = [(_UISystemInputActivityManager *)self _activeSystemInputInteraction];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x1E698E778]);
    v5 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __65___UISystemInputActivityManager_beginTrackingSystemInputActivity__block_invoke;
    v11 = &unk_1E70FA170;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithIdentifier:@"SystemInputActivity" forReason:@"Active System Input Interaction" queue:v5 invalidationBlock:&v8];

    [(_UISystemInputActivityManager *)self set_activeSystemInputInteraction:v3, v8, v9, v10, v11];
    [(_UISystemInputActivityManager *)self _updateClientSettingsSystemInputActive:1];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)windowHostingScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_updateClientSettingsSystemInputActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UISystemInputActivityManager *)self windowHostingScene];
  v5 = v4;
  if (v4)
  {
    if (([v4 _hasInvalidated] & 1) == 0)
    {
      v6 = [v5 _effectiveUIClientSettings];
      v7 = [v6 systemInputActive];

      if (v7 != v3)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __72___UISystemInputActivityManager__updateClientSettingsSystemInputActive___block_invoke;
        v8[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
        v9 = v3;
        [v5 _updateUIClientSettingsWithBlock:v8];
      }
    }
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (BSSimpleAssertion)_activeSystemInputInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->__activeSystemInputInteraction);

  return WeakRetained;
}

@end