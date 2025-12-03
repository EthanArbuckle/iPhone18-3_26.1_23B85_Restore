@interface _UISceneKeyboardProxyLayerForwardingHostingScene
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initWithScene:(id *)scene;
- (void)addLayers:(id)layers;
- (void)addObserver:(id)observer;
- (void)removeLayers:(id)layers;
- (void)removeObserver:(id)observer;
- (void)sceneWillInvalidate:(id)invalidate;
@end

@implementation _UISceneKeyboardProxyLayerForwardingHostingScene

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(FBSScene *)self->_scene identifier];
  v4 = [v2 stringWithFormat:@"FBSScene:%@", identifier];

  return v4;
}

- (id)initWithScene:(id *)scene
{
  v4 = a2;
  if (scene)
  {
    v7.receiver = scene;
    v7.super_class = _UISceneKeyboardProxyLayerForwardingHostingScene;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    scene = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      [scene[2] addObserver:scene];
    }
  }

  return scene;
}

- (void)addLayers:(id)layers
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [layers copy];
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

- (void)removeLayers:(id)layers
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [layers copy];
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingHostingScene.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    v5 = [(NSHashTable *)self->_observers count];
    v4 = observerCopy;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      v4 = observerCopy;
    }
  }
}

- (void)sceneWillInvalidate:(id)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  [invalidate removeObserver:self];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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