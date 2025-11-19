@interface _UIHomeAffordanceClientSceneComponent
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)_cachedHomeAffordanceSceneNotifier;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UIHomeAffordanceClientSceneComponent

- (void)_cachedHomeAffordanceSceneNotifier
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (!v3)
    {
      v4 = [a1 clientScene];
      v5 = [UIScene _sceneForFBSScene:v4];

      v6 = [v5 _homeAffordanceSceneNotifier];
      v7 = v2[3];
      v2[3] = v6;

      v3 = v2[3];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v19 = a4;
  v5 = [v19 settingsDiff];
  v6 = [v5 containsProperty:sel_homeAffordanceSceneReferenceFrame];

  v7 = v19;
  if (v6)
  {
    v8 = [v19 settings];
    [v8 homeAffordanceSceneReferenceFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [(_UIHomeAffordanceClientSceneComponent *)self _cachedHomeAffordanceSceneNotifier];
    v18 = v17;
    if (v17)
    {
      [(_UIHomeAffordanceSceneNotifier *)v17 _homeAffordanceSceneUpdateSource:v10 frameDidChange:v12, v14, v16];
    }

    v7 = v19;
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
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

        v17 = [(_UIHomeAffordanceClientSceneComponent *)self _cachedHomeAffordanceSceneNotifier];
        v18 = v17;
        if (v16 && v17)
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