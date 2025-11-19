@interface _UIFocusActiveSceneObserver_Classic
- (BOOL)isActive;
- (id)_initWithScene:(id)a3;
- (id)_resolvedDisplayForWindow:(id)a3;
- (id)descriptionBuilder;
- (void)_addDeliveryObserverForWindow:(id)a3;
- (void)_keyWindowDidChangeNotification:(id)a3;
- (void)_removeDeliverObserverForWindow:(id)a3;
- (void)_screenUUIDDidChangeNotification:(id)a3;
- (void)_windowDidAttachContext:(id)a3;
- (void)_windowDidDetachContext:(id)a3;
- (void)beginMonitoringContextChangesForWindow:(id)a3;
- (void)dealloc;
- (void)observerDeliveryPolicyDidChange:(id)a3;
- (void)stopMonitoringContextChangesForWindow:(id)a3;
@end

@implementation _UIFocusActiveSceneObserver_Classic

- (id)descriptionBuilder
{
  v12.receiver = self;
  v12.super_class = _UIFocusActiveSceneObserver_Classic;
  v3 = [(_UIFocusStateObserver *)&v12 descriptionBuilder];
  v4 = objc_loadWeakRetained(&self->super._scene);
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [v3 appendObject:v8 withName:@"scene"];
  v10 = [v3 appendObject:self->_hidObserverMapTable withName:@"hidObserverMapTable"];

  return v3;
}

- (BOOL)isActive
{
  v20 = *MEMORY[0x1E69E9840];
  if (*&self->_flags)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(NSMapTable *)self->_hidObserverMapTable keyEnumerator];
    v3 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v5 = *v16;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [(NSMapTable *)self->_hidObserverMapTable objectForKey:v7];
          if ([v8 canReceiveEvents])
          {
            v3 = v7;

            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v3 = +[UIWindow _applicationKeyWindow];
  }

  v9 = [v3 allowsWeakReference];
  if (v3)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = [v3 windowScene];
    WeakRetained = objc_loadWeakRetained(&self->super._scene);
    v13 = v11 == WeakRetained;
  }

  return v13;
}

- (id)_initWithScene:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIFocusActiveSceneObserver_Classic;
  v3 = [(_UIFocusActiveSceneObserver *)&v10 _initWithScene:a3];
  v4 = v3;
  if (v3)
  {
    v3[40] |= 1u;
    v5 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v6 = v4[4];
    v4[4] = v5;

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v4 selector:sel__screenUUIDDidChangeNotification_ name:@"_UIScreenUniqueIdDidChangeNotification" object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v4 selector:sel__keyWindowDidChangeNotification_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
  }

  return v4;
}

- (void)beginMonitoringContextChangesForWindow:(id)a3
{
  v6 = a3;
  if (*&self->_flags)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__windowDidAttachContext_ name:_UIWindowDidAttachContextNotification object:v6];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__windowDidDetachContext_ name:_UIWindowDidDetachContextNotification object:v6];

    [(_UIFocusActiveSceneObserver_Classic *)self _addDeliveryObserverForWindow:v6];
  }

  else
  {
    [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
  }
}

- (void)stopMonitoringContextChangesForWindow:(id)a3
{
  v6 = a3;
  if (*&self->_flags)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:_UIWindowDidAttachContextNotification object:v6];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:_UIWindowDidDetachContextNotification object:v6];

    [(_UIFocusActiveSceneObserver_Classic *)self _removeDeliverObserverForWindow:v6];
  }

  else
  {
    [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
  }
}

- (void)dealloc
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v16[0] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v16[1] = _UIWindowDidAttachContextNotification;
  v16[2] = _UIWindowDidDetachContextNotification;
  v16[3] = @"_UIScreenUniqueIdDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMapTable *)self->_hidObserverMapTable objectEnumerator];
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

        [*(*(&v11 + 1) + 8 * v9++) removeObserver:self];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = _UIFocusActiveSceneObserver_Classic;
  [(_UIFocusActiveSceneObserver_Classic *)&v10 dealloc];
}

- (void)_addDeliveryObserverForWindow:(id)a3
{
  v13 = a3;
  v4 = [v13 _contextId];
  if (v13)
  {
    if ((*&self->_flags & 1) != 0 && v4 != 0)
    {
      v6 = objc_alloc_init(MEMORY[0x1E698E3B8]);
      v7 = [v13 screen];
      v8 = [v7 displayConfiguration];
      v9 = [v8 hardwareIdentifier];

      v10 = [(_UIFocusActiveSceneObserver_Classic *)self _resolvedDisplayForWindow:v13];
      [v6 setDisplay:v10];

      v11 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      [v6 setDeferringEnvironment:v11];

      v12 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:{objc_msgSend(v13, "_contextId")}];
      [v6 setDeferringToken:v12];

      [v6 addObserver:self];
      [(NSMapTable *)self->_hidObserverMapTable setObject:v6 forKey:v13];
      [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
    }
  }
}

- (id)_resolvedDisplayForWindow:(id)a3
{
  v3 = [a3 screen];
  v4 = [v3 displayConfiguration];
  v5 = [v4 hardwareIdentifier];

  if (v5)
  {
    [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v5];
  }

  else
  {
    [MEMORY[0x1E698E3C8] builtinDisplay];
  }
  v6 = ;

  return v6;
}

- (void)_removeDeliverObserverForWindow:(id)a3
{
  hidObserverMapTable = self->_hidObserverMapTable;
  v5 = a3;
  v6 = [(NSMapTable *)hidObserverMapTable objectForKey:v5];
  [v6 removeObserver:self];
  [(NSMapTable *)self->_hidObserverMapTable removeObjectForKey:v5];

  [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
}

- (void)_windowDidAttachContext:(id)a3
{
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

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    [(_UIFocusActiveSceneObserver_Classic *)self _addDeliveryObserverForWindow:v9];
    v8 = v9;
  }
}

- (void)_windowDidDetachContext:(id)a3
{
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

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    [(_UIFocusActiveSceneObserver_Classic *)self _removeDeliverObserverForWindow:v9];
    v8 = v9;
  }
}

- (void)observerDeliveryPolicyDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIFocusActiveSceneObserver_Classic_observerDeliveryPolicyDidChange___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_screenUUIDDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = NSAllMapTableKeys(self->_hidObserverMapTable);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72___UIFocusActiveSceneObserver_Classic__screenUUIDDidChangeNotification___block_invoke;
    v12[3] = &unk_1E70F6B40;
    v13 = v10;
    v14 = v9;
    v15 = self;
    v16 = v4;
    v11 = v10;
    [(_UIFocusStateObserver *)self performUpdatesAndNotifyObservers:v12];
  }
}

- (void)_keyWindowDidChangeNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIFocusActiveSceneObserver_Classic__keyWindowDidChangeNotification___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end