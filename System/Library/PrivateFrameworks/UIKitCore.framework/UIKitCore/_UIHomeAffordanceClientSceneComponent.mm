@interface _UIHomeAffordanceClientSceneComponent
- (id)scene:(id)scene handleActions:(id)actions;
- (void)_cachedHomeAffordanceSceneNotifier;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UIHomeAffordanceClientSceneComponent

- (void)_cachedHomeAffordanceSceneNotifier
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    if (!v3)
    {
      clientScene = [self clientScene];
      v5 = [UIScene _sceneForFBSScene:clientScene];

      _homeAffordanceSceneNotifier = [v5 _homeAffordanceSceneNotifier];
      v7 = selfCopy[3];
      selfCopy[3] = _homeAffordanceSceneNotifier;

      v3 = selfCopy[3];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_homeAffordanceSceneReferenceFrame];

  v7 = settingsCopy;
  if (v6)
  {
    settings = [settingsCopy settings];
    [settings homeAffordanceSceneReferenceFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    _cachedHomeAffordanceSceneNotifier = [(_UIHomeAffordanceClientSceneComponent *)self _cachedHomeAffordanceSceneNotifier];
    v18 = _cachedHomeAffordanceSceneNotifier;
    if (_cachedHomeAffordanceSceneNotifier)
    {
      [(_UIHomeAffordanceSceneNotifier *)_cachedHomeAffordanceSceneNotifier _homeAffordanceSceneUpdateSource:v10 frameDidChange:v12, v14, v16];
    }

    v7 = settingsCopy;
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v25 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = actionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = v12;
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        _cachedHomeAffordanceSceneNotifier = [(_UIHomeAffordanceClientSceneComponent *)self _cachedHomeAffordanceSceneNotifier];
        v18 = _cachedHomeAffordanceSceneNotifier;
        if (v16 && _cachedHomeAffordanceSceneNotifier)
        {
          if (![v16 actionType])
          {
            -[_UIHomeAffordanceSceneNotifier _homeAffordanceSceneUpdateSource:doubleTapGestureDidSucceed:](v18, self, [v16 didSucceed]);
          }

          [v6 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v6;
}

@end