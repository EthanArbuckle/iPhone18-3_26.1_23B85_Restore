@interface _UISearchParticipantInteraction
- (UIView)view;
- (UIWindowScene)_windowScene;
- (void)_teardown;
- (void)_updateActiveSearchParticipationIfNeeded;
- (void)dealloc;
- (void)didMoveToView:(id)view;
@end

@implementation _UISearchParticipantInteraction

- (void)_updateActiveSearchParticipationIfNeeded
{
  _windowScene = [(_UISearchParticipantInteraction *)self _windowScene];
  view = [(_UISearchParticipantInteraction *)self view];
  window = [view window];

  windowScene = [window windowScene];
  if (windowScene != _windowScene)
  {
    [(_UISearchParticipantInteraction *)self _teardown];
    if (windowScene)
    {
      _searchActivityManager = [windowScene _searchActivityManager];
      view2 = [(_UISearchParticipantInteraction *)self view];
      v8 = [_searchActivityManager beginTrackingActiveSearchParticipant:view2];
      [(_UISearchParticipantInteraction *)self set_searchParticipantToken:v8];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateActiveSearchParticipationIfNeeded name:@"_UIWindowDidMoveToSceneNotification" object:window];

      [(_UISearchParticipantInteraction *)self set_windowScene:windowScene];
    }
  }
}

- (void)_teardown
{
  [(_UISearchParticipantInteraction *)self set_windowScene:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  _searchParticipantToken = [(_UISearchParticipantInteraction *)self _searchParticipantToken];
  [_searchParticipantToken invalidate];

  [(_UISearchParticipantInteraction *)self set_searchParticipantToken:0];
}

- (void)dealloc
{
  [(_UISearchParticipantInteraction *)self _teardown];
  v3.receiver = self;
  v3.super_class = _UISearchParticipantInteraction;
  [(_UISearchParticipantInteraction *)&v3 dealloc];
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);

  [(_UISearchParticipantInteraction *)self _updateActiveSearchParticipationIfNeeded];
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