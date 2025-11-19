@interface _UISceneKeyboardProxyLayerForwardingHostingScene
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initWithScene:(id *)a1;
- (void)addLayers:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeLayers:(id)a3;
- (void)removeObserver:(id)a3;
- (void)sceneWillInvalidate:(id)a3;
@end

@implementation _UISceneKeyboardProxyLayerForwardingHostingScene

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(FBSScene *)self->_scene identifier];
  v4 = [v2 stringWithFormat:@"FBSScene:%@", v3];

  return v4;
}

- (id)initWithScene:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _UISceneKeyboardProxyLayerForwardingHostingScene;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      [a1[2] addObserver:a1];
    }
  }

  return a1;
}

- (void)addLayers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (self)
        {
          scene = self->_scene;
        }

        else
        {
          scene = 0;
        }

        [(FBSScene *)scene attachLayer:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v10 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v10;
    }

    while (v10);
  }
}

- (void)removeLayers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (self)
        {
          scene = self->_scene;
        }

        else
        {
          scene = 0;
        }

        [(FBSScene *)scene detachLayer:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v10 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v10;
    }

    while (v10);
  }
}

- (void)addObserver:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingHostingScene.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v9];
}

- (void)removeObserver:(id)a3
{
  v7 = a3;
  BSDispatchQueueAssertMain();
  v4 = v7;
  if (v7)
  {
    [(NSHashTable *)self->_observers removeObject:v7];
    v5 = [(NSHashTable *)self->_observers count];
    v4 = v7;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      v4 = v7;
    }
  }
}

- (void)sceneWillInvalidate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [a3 removeObserver:self];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSHashTable *)self->_observers copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 hostingEnvironmentDidInvalidate:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self)
    {
      scene = self->_scene;
    }

    else
    {
      scene = 0;
    }

    v7 = scene;
    v8 = BSEqualObjects();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end