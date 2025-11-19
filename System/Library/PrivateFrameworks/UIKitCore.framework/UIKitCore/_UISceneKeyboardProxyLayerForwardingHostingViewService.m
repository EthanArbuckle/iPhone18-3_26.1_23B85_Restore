@interface _UISceneKeyboardProxyLayerForwardingHostingViewService
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_keyboardOwnerIdentityTokensForLayers:(id)a3;
- (id)initWithViewServiceOperator:(id *)a1;
- (void)addLayers:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeLayers:(id)a3;
- (void)removeObserver:(id)a3;
- (void)viewServiceWillInvalidate:(id)a3;
@end

@implementation _UISceneKeyboardProxyLayerForwardingHostingViewService

- (id)initWithViewServiceOperator:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _UISceneKeyboardProxyLayerForwardingHostingViewService;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:a1 selector:sel_viewServiceWillInvalidate_ name:@"_UIViewServiceSessionDidInvalidateNotification" object:0];
    }
  }

  return a1;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIViewServiceSessionDidInvalidateNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UISceneKeyboardProxyLayerForwardingHostingViewService;
  [(_UISceneKeyboardProxyLayerForwardingHostingViewService *)&v4 dealloc];
}

- (void)addLayers:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerOperator);
  v5 = [(_UISceneKeyboardProxyLayerForwardingHostingViewService *)self _keyboardOwnerIdentityTokensForLayers:v4];

  [WeakRetained _addSceneForwardingLayersForOwners:v5];
}

- (void)removeLayers:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerOperator);
  v5 = [(_UISceneKeyboardProxyLayerForwardingHostingViewService *)self _keyboardOwnerIdentityTokensForLayers:v4];

  [WeakRetained _removeSceneForwardingLayersForOwners:v5];
}

- (void)addObserver:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingHostingViewService.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
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

- (void)viewServiceWillInvalidate:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8[7];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerOperator);
  v12 = [WeakRetained _sessionIdentifier];
  v13 = v10;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    if (!v13 || !v14)
    {

      goto LABEL_25;
    }

    v16 = [v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(NSHashTable *)self->_observers copy];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v22 hostingEnvironmentDidInvalidate:self];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }

LABEL_25:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_viewControllerOperator);
    if (v5)
    {
      v7 = objc_loadWeakRetained(v5 + 2);
    }

    else
    {
      v7 = 0;
    }

    v8 = BSEqualObjects();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerOperator);
  v4 = [v2 stringWithFormat:@"_UIViewServiceViewControllerOperator:%p", WeakRetained];

  return v4;
}

- (id)_keyboardOwnerIdentityTokensForLayers:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 copy];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E696AAA8] currentHandler];
          v19 = v5;
          v14 = self;
          v16 = v15 = a2;
          [v16 handleFailureInMethod:v15 object:v14 file:@"_UISceneKeyboardProxyLayerForwardingHostingViewService.m" lineNumber:97 description:{@"%@ is not a FBSKeyboardProxyLayer", v12}];

          a2 = v15;
          self = v14;
          v5 = v19;
        }

        v13 = [v12 keyboardOwner];
        [v6 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = [v6 copy];

  return v17;
}

@end