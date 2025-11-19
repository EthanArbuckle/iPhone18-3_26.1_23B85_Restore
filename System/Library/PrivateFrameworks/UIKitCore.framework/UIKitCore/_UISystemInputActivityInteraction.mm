@interface _UISystemInputActivityInteraction
- (UIView)view;
- (UIWindowScene)_windowScene;
- (void)_teardown;
- (void)_updateSystemInputActivityIfNeeded;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
@end

@implementation _UISystemInputActivityInteraction

- (void)_updateSystemInputActivityIfNeeded
{
  v9 = [(_UISystemInputActivityInteraction *)self _windowScene];
  v3 = [(_UISystemInputActivityInteraction *)self view];
  v4 = [v3 window];

  v5 = [v4 windowScene];
  if (v5 != v9)
  {
    [(_UISystemInputActivityInteraction *)self _teardown];
    if (v5)
    {
      v6 = [v5 _systemInputActivityManager];
      v7 = [v6 beginTrackingSystemInputActivity];
      [(_UISystemInputActivityInteraction *)self set_systemInputActivityToken:v7];

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:self selector:sel__updateSystemInputActivityIfNeeded name:@"_UIWindowDidMoveToSceneNotification" object:v4];

      [(_UISystemInputActivityInteraction *)self set_windowScene:v5];
    }
  }
}

- (void)_teardown
{
  [(_UISystemInputActivityInteraction *)self set_windowScene:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(_UISystemInputActivityInteraction *)self _systemInputActivityToken];
  [v4 invalidate];

  [(_UISystemInputActivityInteraction *)self set_systemInputActivityToken:0];
}

- (void)dealloc
{
  [(_UISystemInputActivityInteraction *)self _teardown];
  v3.receiver = self;
  v3.super_class = _UISystemInputActivityInteraction;
  [(_UISystemInputActivityInteraction *)&v3 dealloc];
}

- (void)didMoveToView:(id)a3
{
  objc_storeWeak(&self->_view, a3);

  [(_UISystemInputActivityInteraction *)self _updateSystemInputActivityIfNeeded];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIWindowScene)_windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->__windowScene);

  return WeakRetained;
}

@end