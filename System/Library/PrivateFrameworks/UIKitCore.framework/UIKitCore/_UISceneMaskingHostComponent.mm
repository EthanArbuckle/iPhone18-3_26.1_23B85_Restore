@interface _UISceneMaskingHostComponent
- (_UISceneMaskingDelegate)_sceneMaskingHost;
- (id)handlePrivateActions:(id)a3;
- (void)_handleMaskingAction:(id)a3;
@end

@implementation _UISceneMaskingHostComponent

- (id)handlePrivateActions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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

- (void)_handleMaskingAction:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForSetting:0];
  v7 = [v6 integerValue];

  if (v7 == 1)
  {
    v14 = [(_UISceneMaskingHostComponent *)self _sceneMaskingHost];
    v15 = [(FBSSceneComponent *)self hostScene];
    [v14 invalidateMasking:v15];
  }

  else if (!v7)
  {
    v8 = [v5 objectForSetting:1];
    v9 = [v8 integerValue];

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __53___UISceneMaskingHostComponent__handleMaskingAction___block_invoke;
    v21 = &unk_1E70FD7F8;
    v22 = v4;
    v10 = _Block_copy(&v18);
    v11 = [(_UISceneMaskingHostComponent *)self _sceneMaskingHost:v18];

    if (v11)
    {
      v12 = [(_UISceneMaskingHostComponent *)self _sceneMaskingHost];
      v13 = [(FBSSceneComponent *)self hostScene];
      [v12 beginMaskingForReason:v9 continuation:v10 scene:v13];
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"Host does not implement scene masking.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v12 = [v16 errorWithDomain:@"_UISceneMaskingErrorDomain" code:0 userInfo:v17];

      v10[2](v10, v12);
    }
  }
}

- (_UISceneMaskingDelegate)_sceneMaskingHost
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneMaskingHost);

  return WeakRetained;
}

@end