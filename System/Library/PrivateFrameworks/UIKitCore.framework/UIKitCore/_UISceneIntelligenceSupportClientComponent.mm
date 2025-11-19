@interface _UISceneIntelligenceSupportClientComponent
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)collectAsRemoteElement;
@end

@implementation _UISceneIntelligenceSupportClientComponent

- (void)collectAsRemoteElement
{
  if (result)
  {
    v1 = [result scene];
    v2 = [v1 settings];

    v3 = [v2 collectAsRemoteElement];
    return v3;
  }

  return result;
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v14 = objc_opt_class();
        v15 = v13;
        if (v14)
        {
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        if (v17)
        {
          if (self)
          {
            v18 = [UIScene _sceneForFBSScene:v22];
            v19 = [v18 _windowHostingScene];

            if (v19)
            {
              [v17 executeActionForWindowHostingScene:v19];
            }
          }

          else
          {
            v19 = 0;
          }

          [v7 addObject:v17];
        }

        ++v12;
      }

      while (v10 != v12);
      v20 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v10 = v20;
    }

    while (v20);
  }

  return v7;
}

@end