@interface _UISceneKeyboardProxyLayerForwardingHostingViewService
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_keyboardOwnerIdentityTokensForLayers:(id)layers;
- (id)initWithViewServiceOperator:(id *)operator;
- (void)addLayers:(id)layers;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeLayers:(id)layers;
- (void)removeObserver:(id)observer;
- (void)viewServiceWillInvalidate:(id)invalidate;
@end

@implementation _UISceneKeyboardProxyLayerForwardingHostingViewService

- (id)initWithViewServiceOperator:(id *)operator
{
  v3 = a2;
  if (operator)
  {
    v7.receiver = operator;
    v7.super_class = _UISceneKeyboardProxyLayerForwardingHostingViewService;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    operator = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:operator selector:sel_viewServiceWillInvalidate_ name:@"_UIViewServiceSessionDidInvalidateNotification" object:0];
    }
  }

  return operator;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIViewServiceSessionDidInvalidateNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UISceneKeyboardProxyLayerForwardingHostingViewService;
  [(_UISceneKeyboardProxyLayerForwardingHostingViewService *)&v4 dealloc];
}

- (void)addLayers:(id)layers
{
  layersCopy = layers;
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerOperator);
  v5 = [(_UISceneKeyboardProxyLayerForwardingHostingViewService *)self _keyboardOwnerIdentityTokensForLayers:layersCopy];

  [WeakRetained _addSceneForwardingLayersForOwners:v5];
}

- (void)removeLayers:(id)layers
{
  layersCopy = layers;
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerOperator);
  v5 = [(_UISceneKeyboardProxyLayerForwardingHostingViewService *)self _keyboardOwnerIdentityTokensForLayers:layersCopy];

  [WeakRetained _removeSceneForwardingLayersForOwners:v5];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingHostingViewService.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
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

- (void)viewServiceWillInvalidate:(id)invalidate
{
  v28 = *MEMORY[0x1E69E9840];
  object = [invalidate object];
  v5 = objc_opt_class();
  v6 = object;
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
  _sessionIdentifier = [WeakRetained _sessionIdentifier];
  v13 = v10;
  v14 = _sessionIdentifier;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
  weakRetained = [v2 stringWithFormat:@"_UIViewServiceViewControllerOperator:%p", WeakRetained];

  return weakRetained;
}

- (id)_keyboardOwnerIdentityTokensForLayers:(id)layers
{
  v25 = *MEMORY[0x1E69E9840];
  layersCopy = layers;
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [layersCopy copy];
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
          v19 = layersCopy;
          selfCopy = self;
          v16 = v15 = a2;
          [v16 handleFailureInMethod:v15 object:selfCopy file:@"_UISceneKeyboardProxyLayerForwardingHostingViewService.m" lineNumber:97 description:{@"%@ is not a FBSKeyboardProxyLayer", v12}];

          a2 = v15;
          self = selfCopy;
          layersCopy = v19;
        }

        keyboardOwner = [v12 keyboardOwner];
        [v6 addObject:keyboardOwner];

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