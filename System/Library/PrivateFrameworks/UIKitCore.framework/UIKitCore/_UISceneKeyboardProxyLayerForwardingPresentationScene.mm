@interface _UISceneKeyboardProxyLayerForwardingPresentationScene
- (NSString)description;
- (id)keyboardLayers;
- (void)_presentationManager:(id)a3 willPrioritizePresenter:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)initWithScene:(void *)a1;
- (void)notifyObserversDidMoveToWindow:(id)a3;
- (void)notifyObserversDidUpdateKeyboardLayers;
- (void)presentationView:(id)a3 didMoveToWindow:(id)a4;
- (void)removeObserver:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)scenePresenter:(id)a3 didUpdateContext:(id)a4;
@end

@implementation _UISceneKeyboardProxyLayerForwardingPresentationScene

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [v3 stringWithFormat:@"<%@: %p> Tracking scene: %@", v4, self, WeakRetained];

  return v6;
}

- (id)keyboardLayers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(_UIScenePresenter *)self->_prioritizedPresenter presentationContext];
  v4 = [v3 _forwardsKeyboardLayersToHost];

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v6 = [WeakRetained clientSettings];
    v7 = [v6 layers];

    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (([v13 isKeyboardLayer] & 1) != 0 || objc_msgSend(v13, "isKeyboardProxyLayer"))
          {
            if (!v10)
            {
              v10 = [MEMORY[0x1E695DFA8] set];
            }

            [v10 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v14 = [v10 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [WeakRetained removeObserver:self];

  v4 = [(_UIScenePresenter *)self->_prioritizedPresenter presentationView];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = _UISceneKeyboardProxyLayerForwardingPresentationScene;
  [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)&v5 dealloc];
}

- (void)initWithScene:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = _UISceneKeyboardProxyLayerForwardingPresentationScene;
    v4 = objc_msgSendSuper2(&v8, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 4, v3);
      v5 = [v3 identityToken];
      v6 = a1[3];
      a1[3] = v5;

      [v3 addObserver:a1];
    }
  }

  return a1;
}

- (void)_presentationManager:(id)a3 willPrioritizePresenter:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  prioritizedPresenter = self->_prioritizedPresenter;
  if (prioritizedPresenter != v6)
  {
    [(_UIScenePresenter *)prioritizedPresenter removeObserver:self];
    v8 = [(_UIScenePresenter *)self->_prioritizedPresenter presentationView];
    [v8 removeObserver:self];

    objc_storeStrong(&self->_prioritizedPresenter, a4);
    v9 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &_presentationManager_willPrioritizePresenter____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "<ForwardingPresentationScene:%p> Prioritized presenter: %@.", &v12, 0x16u);
    }

    v10 = [(_UIScenePresenter *)self->_prioritizedPresenter presentationView];
    [(_UIScenePresenter *)v6 addObserver:self];
    [v10 addObserver:self];
    v11 = [v10 window];
    [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidMoveToWindow:v11];

    [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidUpdateKeyboardLayers];
  }
}

- (void)scenePresenter:(id)a3 didUpdateContext:(id)a4
{
  v6 = a4;
  v7 = [a3 presentationContext];
  v8 = [v7 _forwardsKeyboardLayersToHost];
  v9 = [v6 _forwardsKeyboardLayersToHost];

  if (v8 != v9)
  {

    [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidUpdateKeyboardLayers];
  }
}

- (void)addObserver:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingPresentationScene.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
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

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = [a4 settingsDiff];
  v6 = [v5 containsProperty:sel_layers];

  if (v6)
  {

    [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidUpdateKeyboardLayers];
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  [a3 removeObserver:{self, a4}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 presentationEnvironmentDidInvalidate:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)presentationView:(id)a3 didMoveToWindow:(id)a4
{
  v11 = a4;
  prioritizedPresenter = self->_prioritizedPresenter;
  v8 = a3;
  v9 = [(_UIScenePresenter *)prioritizedPresenter presentationView];

  if (v9 != v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingPresentationScene.m" lineNumber:128 description:@"Presentation view mismatch."];
  }

  [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidMoveToWindow:v11];
}

- (void)notifyObserversDidMoveToWindow:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 presentationEnvironment:self didMoveToWindow:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)notifyObserversDidUpdateKeyboardLayers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 presentationEnvironmentDidUpdateKeyboardLayers:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end