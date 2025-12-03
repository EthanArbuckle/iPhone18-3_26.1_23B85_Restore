@interface _UISceneMaskingHostComponent
- (_UISceneMaskingDelegate)_sceneMaskingHost;
- (id)handlePrivateActions:(id)actions;
- (void)_handleMaskingAction:(id)action;
@end

@implementation _UISceneMaskingHostComponent

- (id)handlePrivateActions:(id)actions
{
  v22 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = actionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = v11;
        if (v12)
        {
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          [(_UISceneMaskingHostComponent *)self _handleMaskingAction:v15, v17];
          [v5 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_handleMaskingAction:(id)action
{
  v24[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  info = [actionCopy info];
  v6 = [info objectForSetting:0];
  integerValue = [v6 integerValue];

  if (integerValue == 1)
  {
    _sceneMaskingHost = [(_UISceneMaskingHostComponent *)self _sceneMaskingHost];
    hostScene = [(FBSSceneComponent *)self hostScene];
    [_sceneMaskingHost invalidateMasking:hostScene];
  }

  else if (!integerValue)
  {
    v8 = [info objectForSetting:1];
    integerValue2 = [v8 integerValue];

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __53___UISceneMaskingHostComponent__handleMaskingAction___block_invoke;
    v21 = &unk_1E70FD7F8;
    v22 = actionCopy;
    v10 = _Block_copy(&v18);
    v11 = [(_UISceneMaskingHostComponent *)self _sceneMaskingHost:v18];

    if (v11)
    {
      _sceneMaskingHost2 = [(_UISceneMaskingHostComponent *)self _sceneMaskingHost];
      hostScene2 = [(FBSSceneComponent *)self hostScene];
      [_sceneMaskingHost2 beginMaskingForReason:integerValue2 continuation:v10 scene:hostScene2];
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"Host does not implement scene masking.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      _sceneMaskingHost2 = [v16 errorWithDomain:@"_UISceneMaskingErrorDomain" code:0 userInfo:v17];

      v10[2](v10, _sceneMaskingHost2);
    }
  }
}

- (_UISceneMaskingDelegate)_sceneMaskingHost
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneMaskingHost);

  return WeakRetained;
}

@end