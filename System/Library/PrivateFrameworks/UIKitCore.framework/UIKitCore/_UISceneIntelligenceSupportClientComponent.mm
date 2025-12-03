@interface _UISceneIntelligenceSupportClientComponent
- (id)scene:(id)scene handleActions:(id)actions;
- (void)collectAsRemoteElement;
@end

@implementation _UISceneIntelligenceSupportClientComponent

- (void)collectAsRemoteElement
{
  if (result)
  {
    scene = [result scene];
    settings = [scene settings];

    collectAsRemoteElement = [settings collectAsRemoteElement];
    return collectAsRemoteElement;
  }

  return result;
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v28 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  actionsCopy = actions;
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = actionsCopy;
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
            v18 = [UIScene _sceneForFBSScene:sceneCopy];
            _windowHostingScene = [v18 _windowHostingScene];

            if (_windowHostingScene)
            {
              [v17 executeActionForWindowHostingScene:_windowHostingScene];
            }
          }

          else
          {
            _windowHostingScene = 0;
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