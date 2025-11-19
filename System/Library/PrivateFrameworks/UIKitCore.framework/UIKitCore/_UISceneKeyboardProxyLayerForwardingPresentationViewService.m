@interface _UISceneKeyboardProxyLayerForwardingPresentationViewService
- (FBSSceneIdentityToken)keyboardOwnerIdentityToken;
- (NSString)description;
- (id)initWithRemoteViewController:(id *)a1;
- (id)keyboardLayers;
- (void)addObserver:(id)a3;
- (void)invalidate;
- (void)keyboardLayersDidChange;
- (void)removeObserver:(id)a3;
- (void)sizeTrackingViewDidMoveToWindow:(uint64_t)a1;
@end

@implementation _UISceneKeyboardProxyLayerForwardingPresentationViewService

- (id)initWithRemoteViewController:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _UISceneKeyboardProxyLayerForwardingPresentationViewService;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
    }
  }

  return a1;
}

- (void)invalidate
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &invalidate___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      *buf = 134218242;
      v17 = a1;
      v18 = 2112;
      v19 = WeakRetained;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "<ForwardingPresentationViewService:%p> Remote view controller invalidated: %@.", buf, 0x16u);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [*(a1 + 8) copy];
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
            [v10 presentationEnvironmentDidInvalidate:a1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)sizeTrackingViewDidMoveToWindow:(uint64_t)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &sizeTrackingViewDidMoveToWindow____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v17 = a1;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "<ForwardingPresentationViewService:%p> Size tracking view moved to window: %@.", buf, 0x16u);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [*(a1 + 8) copy];
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
            [v10 presentationEnvironment:a1 didMoveToWindow:v3];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)keyboardLayersDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &keyboardLayersDidChange___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      *buf = 134218242;
      v17 = a1;
      v18 = 2112;
      v19 = WeakRetained;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "<ForwardingPresentationViewService:%p> Remote view controller keyboard layers changed: %@.", buf, 0x16u);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [*(a1 + 8) copy];
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
            [v10 presentationEnvironmentDidUpdateKeyboardLayers:a1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (FBSSceneIdentityToken)keyboardOwnerIdentityToken
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingPresentationViewService.m" lineNumber:57 description:@"View services should never create keyboard proxy layers - they should only forward them"];

  return 0;
}

- (id)keyboardLayers
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);
  v3 = [WeakRetained _keyboardSceneLayers];

  return v3;
}

- (void)addObserver:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingPresentationViewService.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
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

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);
  v6 = [v3 stringWithFormat:@"<%@: %p> Tracking remote view controller: %@", v4, self, WeakRetained];

  return v6;
}

@end