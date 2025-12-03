@interface _UISystemInputActivityManager
- (BSSimpleAssertion)_activeSystemInputInteraction;
- (UIScene)_scene;
- (_UISystemInputActivityManager)initWithScene:(id)scene;
- (id)beginTrackingSystemInputActivity;
- (id)windowHostingScene;
- (void)_updateClientSettingsSystemInputActive:(BOOL)active;
@end

@implementation _UISystemInputActivityManager

- (_UISystemInputActivityManager)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _UISystemInputActivityManager;
  v5 = [(_UISystemInputActivityManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

- (id)beginTrackingSystemInputActivity
{
  _activeSystemInputInteraction = [(_UISystemInputActivityManager *)self _activeSystemInputInteraction];
  if (!_activeSystemInputInteraction)
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
    _activeSystemInputInteraction = [v4 initWithIdentifier:@"SystemInputActivity" forReason:@"Active System Input Interaction" queue:v5 invalidationBlock:&v8];

    [(_UISystemInputActivityManager *)self set_activeSystemInputInteraction:_activeSystemInputInteraction, v8, v9, v10, v11];
    [(_UISystemInputActivityManager *)self _updateClientSettingsSystemInputActive:1];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return _activeSystemInputInteraction;
}

- (id)windowHostingScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_updateClientSettingsSystemInputActive:(BOOL)active
{
  activeCopy = active;
  windowHostingScene = [(_UISystemInputActivityManager *)self windowHostingScene];
  v5 = windowHostingScene;
  if (windowHostingScene)
  {
    if (([windowHostingScene _hasInvalidated] & 1) == 0)
    {
      _effectiveUIClientSettings = [v5 _effectiveUIClientSettings];
      systemInputActive = [_effectiveUIClientSettings systemInputActive];

      if (systemInputActive != activeCopy)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __72___UISystemInputActivityManager__updateClientSettingsSystemInputActive___block_invoke;
        v8[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
        v9 = activeCopy;
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