@interface _UISearchParticipantInteraction
- (UIView)view;
- (UIWindowScene)_windowScene;
- (void)_teardown;
- (void)_updateActiveSearchParticipationIfNeeded;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
@end

@implementation _UISearchParticipantInteraction

- (void)_updateActiveSearchParticipationIfNeeded
{
  v10 = [(_UISearchParticipantInteraction *)self _windowScene];
  v3 = [(_UISearchParticipantInteraction *)self view];
  v4 = [v3 window];

  v5 = [v4 windowScene];
  if (v5 != v10)
  {
    [(_UISearchParticipantInteraction *)self _teardown];
    if (v5)
    {
      v6 = [v5 _searchActivityManager];
      v7 = [(_UISearchParticipantInteraction *)self view];
      v8 = [v6 beginTrackingActiveSearchParticipant:v7];
      [(_UISearchParticipantInteraction *)self set_searchParticipantToken:v8];

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:self selector:sel__updateActiveSearchParticipationIfNeeded name:@"_UIWindowDidMoveToSceneNotification" object:v4];

      [(_UISearchParticipantInteraction *)self set_windowScene:v5];
    }
  }
}

- (void)_teardown
{
  [(_UISearchParticipantInteraction *)self set_windowScene:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(_UISearchParticipantInteraction *)self _searchParticipantToken];
  [v4 invalidate];

  [(_UISearchParticipantInteraction *)self set_searchParticipantToken:0];
}

- (void)dealloc
{
  [(_UISearchParticipantInteraction *)self _teardown];
  v3.receiver = self;
  v3.super_class = _UISearchParticipantInteraction;
  [(_UISearchParticipantInteraction *)&v3 dealloc];
}

- (void)didMoveToView:(id)a3
{
  objc_storeWeak(&self->_view, a3);

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