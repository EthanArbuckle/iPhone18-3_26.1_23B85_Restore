@interface _UIObjectPerScene
+ (id)objectOfClass:(Class)class forScene:(id)scene withOptions:(id)options createIfNecessary:(BOOL)necessary;
+ (void)removeObject:(id)object;
+ (void)removeObjectsOfClass:(Class)class;
+ (void)sceneDisconnected:(id)disconnected;
@end

@implementation _UIObjectPerScene

+ (void)sceneDisconnected:(id)disconnected
{
  v20 = *MEMORY[0x1E69E9840];
  disconnectedCopy = disconnected;
  object = [disconnectedCopy object];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = qword_1ED4A2768;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        _intendedScene = [v12 _intendedScene];
        v14 = _intendedScene == object;

        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [qword_1ED4A2768 removeObjectsInArray:v6];
  objc_sync_exit(selfCopy);
}

+ (id)objectOfClass:(Class)class forScene:(id)scene withOptions:(id)options createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v37 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  optionsCopy = options;
  if (!sceneCopy)
  {
    sceneCopy = +[UIWindowScene _keyWindowScene];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74___UIObjectPerScene_objectOfClass_forScene_withOptions_createIfNecessary___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  obj = selfCopy;
  block[4] = selfCopy;
  if (qword_1ED4A2770 != -1)
  {
    dispatch_once(&qword_1ED4A2770, block);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = qword_1ED4A2768;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v13)
  {
    v14 = *v30;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if ([v16 isMemberOfClass:class])
        {
          _intendedScene = [v16 _intendedScene];
          v18 = _intendedScene;
          if (_intendedScene == sceneCopy)
          {
            v19 = [v16 _matchingOptions:optionsCopy];

            if (v19)
            {
              v13 = v16;
              goto LABEL_18;
            }
          }

          else
          {
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (!v13 && necessaryCopy)
  {
    v20 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
    v21 = [v20 containsObject:sceneCopy];

    if (v21)
    {
      v22 = MEMORY[0x1E696AD98];
      v34[0] = @"Scene";
      v34[1] = @"Options";
      v23 = MEMORY[0x1E695E0F8];
      if (optionsCopy)
      {
        v23 = optionsCopy;
      }

      v35[0] = sceneCopy;
      v35[1] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v25 = [v22 numberWithUnsignedInteger:{objc_msgSend(v24, "hash")}];

      if ([qword_1ED4A2778 containsObject:v25])
      {
        v13 = 0;
      }

      else
      {
        [qword_1ED4A2778 addObject:v25];
        v13 = [[class alloc] _initWithScene:sceneCopy options:optionsCopy];
        [qword_1ED4A2768 addObject:v13];
        [qword_1ED4A2778 removeObject:v25];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  objc_sync_exit(obj);

  return v13;
}

+ (void)removeObjectsOfClass:(Class)class
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = qword_1ED4A2768;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [qword_1ED4A2768 removeObjectsInArray:v4];
  objc_sync_exit(selfCopy);
}

+ (void)removeObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [qword_1ED4A2768 removeObject:objectCopy];
  objc_sync_exit(selfCopy);
}

@end