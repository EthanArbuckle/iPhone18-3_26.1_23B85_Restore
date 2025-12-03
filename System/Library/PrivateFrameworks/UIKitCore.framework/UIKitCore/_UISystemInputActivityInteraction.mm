@interface _UISystemInputActivityInteraction
- (UIView)view;
- (UIWindowScene)_windowScene;
- (void)_teardown;
- (void)_updateSystemInputActivityIfNeeded;
- (void)dealloc;
- (void)didMoveToView:(id)view;
@end

@implementation _UISystemInputActivityInteraction

- (void)_updateSystemInputActivityIfNeeded
{
  _windowScene = [(_UISystemInputActivityInteraction *)self _windowScene];
  view = [(_UISystemInputActivityInteraction *)self view];
  window = [view window];

  windowScene = [window windowScene];
  if (windowScene != _windowScene)
  {
    [(_UISystemInputActivityInteraction *)self _teardown];
    if (windowScene)
    {
      _systemInputActivityManager = [windowScene _systemInputActivityManager];
      beginTrackingSystemInputActivity = [_systemInputActivityManager beginTrackingSystemInputActivity];
      [(_UISystemInputActivityInteraction *)self set_systemInputActivityToken:beginTrackingSystemInputActivity];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateSystemInputActivityIfNeeded name:@"_UIWindowDidMoveToSceneNotification" object:window];

      [(_UISystemInputActivityInteraction *)self set_windowScene:windowScene];
    }
  }
}

- (void)_teardown
{
  [(_UISystemInputActivityInteraction *)self set_windowScene:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  _systemInputActivityToken = [(_UISystemInputActivityInteraction *)self _systemInputActivityToken];
  [_systemInputActivityToken invalidate];

  [(_UISystemInputActivityInteraction *)self set_systemInputActivityToken:0];
}

- (void)dealloc
{
  [(_UISystemInputActivityInteraction *)self _teardown];
  v3.receiver = self;
  v3.super_class = _UISystemInputActivityInteraction;
  [(_UISystemInputActivityInteraction *)&v3 dealloc];
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);

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