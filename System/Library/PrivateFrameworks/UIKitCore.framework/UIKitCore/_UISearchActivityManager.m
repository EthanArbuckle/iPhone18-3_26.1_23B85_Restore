@interface _UISearchActivityManager
- (UIScene)_scene;
- (_UISearchActivityManager)initWithScene:(id)a3;
- (id)beginTrackingActiveSearchParticipant:(id)a3;
- (id)windowHostingScene;
- (void)_updateClientSettingsIfNecessary;
@end

@implementation _UISearchActivityManager

- (_UISearchActivityManager)initWithScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UISearchActivityManager;
  v5 = [(_UISearchActivityManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    v7 = objc_alloc_init(MEMORY[0x1E696AD18]);
    activeAssertions = v6->__activeAssertions;
    v6->__activeAssertions = v7;
  }

  return v6;
}

- (id)beginTrackingActiveSearchParticipant:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UISearchActivityManager *)self _activeAssertions];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Attempt to begin tracking an already tracked active search participant. Participant: %@", buf, 0xCu);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &beginTrackingActiveSearchParticipant____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Attempt to begin tracking an already tracked active search participant. Participant: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    objc_initWeak(buf, self);
    objc_initWeak(&location, v4);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SearchParticipant:%p", v4];
    v9 = objc_alloc(MEMORY[0x1E698E778]);
    v10 = MEMORY[0x1E69E96A0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65___UISearchActivityManager_beginTrackingActiveSearchParticipant___block_invoke;
    v14[3] = &unk_1E710E3D0;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, buf);
    v6 = [v9 initWithIdentifier:v8 forReason:@"Active search participant" queue:MEMORY[0x1E69E96A0] invalidationBlock:v14];

    v11 = [(_UISearchActivityManager *)self _activeAssertions];
    [v11 setObject:v6 forKey:v4];

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
  v3 = [(_UISearchActivityManager *)self windowHostingScene];
  v4 = v3;
  if (v3)
  {
    if (([v3 _hasInvalidated] & 1) == 0)
    {
      v5 = [(_UISearchActivityManager *)self _activeAssertions];
      v6 = [v5 count];

      v7 = [v4 _effectiveUIClientSettings];
      v8 = [v7 containsSearchView];

      if ((v6 != 0) != v8)
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