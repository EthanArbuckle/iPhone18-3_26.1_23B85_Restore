@interface _UISceneKeyboardProxyLayerForwardingPresentationScene
- (NSString)description;
- (id)keyboardLayers;
- (void)_presentationManager:(id)manager willPrioritizePresenter:(id)presenter;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)initWithScene:(void *)scene;
- (void)notifyObserversDidMoveToWindow:(id)window;
- (void)notifyObserversDidUpdateKeyboardLayers;
- (void)presentationView:(id)view didMoveToWindow:(id)window;
- (void)removeObserver:(id)observer;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)scenePresenter:(id)presenter didUpdateContext:(id)context;
@end

@implementation _UISceneKeyboardProxyLayerForwardingPresentationScene

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  weakRetained = [v3 stringWithFormat:@"<%@: %p> Tracking scene: %@", v4, self, WeakRetained];

  return weakRetained;
}

- (id)keyboardLayers
{
  v21 = *MEMORY[0x1E69E9840];
  presentationContext = [(_UIScenePresenter *)self->_prioritizedPresenter presentationContext];
  _forwardsKeyboardLayersToHost = [presentationContext _forwardsKeyboardLayersToHost];

  if (_forwardsKeyboardLayersToHost)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    clientSettings = [WeakRetained clientSettings];
    layers = [clientSettings layers];

    v8 = [layers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(layers);
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

        v9 = [layers countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  presentationView = [(_UIScenePresenter *)self->_prioritizedPresenter presentationView];
  [presentationView removeObserver:self];

  v5.receiver = self;
  v5.super_class = _UISceneKeyboardProxyLayerForwardingPresentationScene;
  [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)&v5 dealloc];
}

- (void)initWithScene:(void *)scene
{
  v3 = a2;
  if (scene)
  {
    v8.receiver = scene;
    v8.super_class = _UISceneKeyboardProxyLayerForwardingPresentationScene;
    v4 = objc_msgSendSuper2(&v8, sel_init);
    scene = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 4, v3);
      identityToken = [v3 identityToken];
      v6 = scene[3];
      scene[3] = identityToken;

      [v3 addObserver:scene];
    }
  }

  return scene;
}

- (void)_presentationManager:(id)manager willPrioritizePresenter:(id)presenter
{
  v16 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  prioritizedPresenter = self->_prioritizedPresenter;
  if (prioritizedPresenter != presenterCopy)
  {
    [(_UIScenePresenter *)prioritizedPresenter removeObserver:self];
    presentationView = [(_UIScenePresenter *)self->_prioritizedPresenter presentationView];
    [presentationView removeObserver:self];

    objc_storeStrong(&self->_prioritizedPresenter, presenter);
    v9 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &_presentationManager_willPrioritizePresenter____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      selfCopy = self;
      v14 = 2112;
      v15 = presenterCopy;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "<ForwardingPresentationScene:%p> Prioritized presenter: %@.", &v12, 0x16u);
    }

    presentationView2 = [(_UIScenePresenter *)self->_prioritizedPresenter presentationView];
    [(_UIScenePresenter *)presenterCopy addObserver:self];
    [presentationView2 addObserver:self];
    window = [presentationView2 window];
    [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidMoveToWindow:window];

    [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidUpdateKeyboardLayers];
  }
}

- (void)scenePresenter:(id)presenter didUpdateContext:(id)context
{
  contextCopy = context;
  presentationContext = [presenter presentationContext];
  _forwardsKeyboardLayersToHost = [presentationContext _forwardsKeyboardLayersToHost];
  _forwardsKeyboardLayersToHost2 = [contextCopy _forwardsKeyboardLayersToHost];

  if (_forwardsKeyboardLayersToHost != _forwardsKeyboardLayersToHost2)
  {

    [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidUpdateKeyboardLayers];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingPresentationScene.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
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

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsDiff = [settings settingsDiff];
  v6 = [settingsDiff containsProperty:sel_layers];

  if (v6)
  {

    [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidUpdateKeyboardLayers];
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  [invalidate removeObserver:{self, context}];
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

- (void)presentationView:(id)view didMoveToWindow:(id)window
{
  windowCopy = window;
  prioritizedPresenter = self->_prioritizedPresenter;
  viewCopy = view;
  presentationView = [(_UIScenePresenter *)prioritizedPresenter presentationView];

  if (presentationView != viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingPresentationScene.m" lineNumber:128 description:@"Presentation view mismatch."];
  }

  [(_UISceneKeyboardProxyLayerForwardingPresentationScene *)self notifyObserversDidMoveToWindow:windowCopy];
}

- (void)notifyObserversDidMoveToWindow:(id)window
{
  v16 = *MEMORY[0x1E69E9840];
  windowCopy = window;
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
          [v10 presentationEnvironment:self didMoveToWindow:windowCopy];
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