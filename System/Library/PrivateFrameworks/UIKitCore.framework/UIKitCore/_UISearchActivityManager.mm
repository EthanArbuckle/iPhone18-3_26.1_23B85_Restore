@interface _UISearchActivityManager
- (UIScene)_scene;
- (_UISearchActivityManager)initWithScene:(id)scene;
- (id)beginTrackingActiveSearchParticipant:(id)participant;
- (id)windowHostingScene;
- (void)_updateClientSettingsIfNecessary;
@end

@implementation _UISearchActivityManager

- (_UISearchActivityManager)initWithScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = _UISearchActivityManager;
  v5 = [(_UISearchActivityManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    v7 = objc_alloc_init(MEMORY[0x1E696AD18]);
    activeAssertions = v6->__activeAssertions;
    v6->__activeAssertions = v7;
  }

  return v6;
}

- (id)beginTrackingActiveSearchParticipant:(id)participant
{
  v20 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  _activeAssertions = [(_UISearchActivityManager *)self _activeAssertions];
  v6 = [_activeAssertions objectForKey:participantCopy];

  if (v6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v19 = participantCopy;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Attempt to begin tracking an already tracked active search participant. Participant: %@", buf, 0xCu);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &beginTrackingActiveSearchParticipant____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = participantCopy;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Attempt to begin tracking an already tracked active search participant. Participant: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    objc_initWeak(buf, self);
    objc_initWeak(&location, participantCopy);
    participantCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"SearchParticipant:%p", participantCopy];
    v9 = objc_alloc(MEMORY[0x1E698E778]);
    v10 = MEMORY[0x1E69E96A0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65___UISearchActivityManager_beginTrackingActiveSearchParticipant___block_invoke;
    v14[3] = &unk_1E710E3D0;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, buf);
    v6 = [v9 initWithIdentifier:participantCopy forReason:@"Active search participant" queue:MEMORY[0x1E69E96A0] invalidationBlock:v14];

    _activeAssertions2 = [(_UISearchActivityManager *)self _activeAssertions];
    [_activeAssertions2 setObject:v6 forKey:participantCopy];

    [(_UISearchActivityManager *)self _updateClientSettingsIfNecessary];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return v6;
}

- (id)windowHostingScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_updateClientSettingsIfNecessary
{
  windowHostingScene = [(_UISearchActivityManager *)self windowHostingScene];
  v4 = windowHostingScene;
  if (windowHostingScene)
  {
    if (([windowHostingScene _hasInvalidated] & 1) == 0)
    {
      _activeAssertions = [(_UISearchActivityManager *)self _activeAssertions];
      v6 = [_activeAssertions count];

      _effectiveUIClientSettings = [v4 _effectiveUIClientSettings];
      containsSearchView = [_effectiveUIClientSettings containsSearchView];

      if ((v6 != 0) != containsSearchView)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __60___UISearchActivityManager__updateClientSettingsIfNecessary__block_invoke;
        v9[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
        v10 = v6 != 0;
        [v4 _updateUIClientSettingsWithBlock:v9];
      }
    }
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end