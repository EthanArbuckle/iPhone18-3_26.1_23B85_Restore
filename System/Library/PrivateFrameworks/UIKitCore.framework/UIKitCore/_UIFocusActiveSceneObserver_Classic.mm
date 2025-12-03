@interface _UIFocusActiveSceneObserver_Classic
- (BOOL)isActive;
- (id)_initWithScene:(id)scene;
- (id)_resolvedDisplayForWindow:(id)window;
- (id)descriptionBuilder;
- (void)_addDeliveryObserverForWindow:(id)window;
- (void)_keyWindowDidChangeNotification:(id)notification;
- (void)_removeDeliverObserverForWindow:(id)window;
- (void)_screenUUIDDidChangeNotification:(id)notification;
- (void)_windowDidAttachContext:(id)context;
- (void)_windowDidDetachContext:(id)context;
- (void)beginMonitoringContextChangesForWindow:(id)window;
- (void)dealloc;
- (void)observerDeliveryPolicyDidChange:(id)change;
- (void)stopMonitoringContextChangesForWindow:(id)window;
@end

@implementation _UIFocusActiveSceneObserver_Classic

- (id)descriptionBuilder
{
  v12.receiver = self;
  v12.super_class = _UIFocusActiveSceneObserver_Classic;
  descriptionBuilder = [(_UIFocusStateObserver *)&v12 descriptionBuilder];
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

  v9 = [descriptionBuilder appendObject:v8 withName:@"scene"];
  v10 = [descriptionBuilder appendObject:self->_hidObserverMapTable withName:@"hidObserverMapTable"];

  return descriptionBuilder;
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
    keyEnumerator = [(NSMapTable *)self->_hidObserverMapTable keyEnumerator];
    v3 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v5 = *v16;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [(NSMapTable *)self->_hidObserverMapTable objectForKey:v7];
          if ([v8 canReceiveEvents])
          {
            v3 = v7;

            goto LABEL_13;
          }
        }

        v3 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  allowsWeakReference = [v3 allowsWeakReference];
  if (v3)
  {
    v10 = allowsWeakReference == 0;
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
    windowScene = [v3 windowScene];
    WeakRetained = objc_loadWeakRetained(&self->super._scene);
    v13 = windowScene == WeakRetained;
  }

  return v13;
}

- (id)_initWithScene:(id)scene
{
  v10.receiver = self;
  v10.super_class = _UIFocusActiveSceneObserver_Classic;
  v3 = [(_UIFocusActiveSceneObserver *)&v10 _initWithScene:scene];
  v4 = v3;
  if (v3)
  {
    v3[40] |= 1u;
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v6 = v4[4];
    v4[4] = weakToStrongObjectsMapTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__screenUUIDDidChangeNotification_ name:@"_UIScreenUniqueIdDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel__keyWindowDidChangeNotification_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
  }

  return v4;
}

- (void)beginMonitoringContextChangesForWindow:(id)window
{
  windowCopy = window;
  if (*&self->_flags)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__windowDidAttachContext_ name:_UIWindowDidAttachContextNotification object:windowCopy];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__windowDidDetachContext_ name:_UIWindowDidDetachContextNotification object:windowCopy];

    [(_UIFocusActiveSceneObserver_Classic *)self _addDeliveryObserverForWindow:windowCopy];
  }

  else
  {
    [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
  }
}

- (void)stopMonitoringContextChangesForWindow:(id)window
{
  windowCopy = window;
  if (*&self->_flags)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:_UIWindowDidAttachContextNotification object:windowCopy];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:_UIWindowDidDetachContextNotification object:windowCopy];

    [(_UIFocusActiveSceneObserver_Classic *)self _removeDeliverObserverForWindow:windowCopy];
  }

  else
  {
    [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
  }
}

- (void)dealloc
{
  v16[4] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v16[0] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v16[1] = _UIWindowDidAttachContextNotification;
  v16[2] = _UIWindowDidDetachContextNotification;
  v16[3] = @"_UIScreenUniqueIdDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_hidObserverMapTable objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v11 + 1) + 8 * v9++) removeObserver:self];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = _UIFocusActiveSceneObserver_Classic;
  [(_UIFocusActiveSceneObserver_Classic *)&v10 dealloc];
}

- (void)_addDeliveryObserverForWindow:(id)window
{
  windowCopy = window;
  _contextId = [windowCopy _contextId];
  if (windowCopy)
  {
    if ((*&self->_flags & 1) != 0 && _contextId != 0)
    {
      v6 = objc_alloc_init(MEMORY[0x1E698E3B8]);
      screen = [windowCopy screen];
      displayConfiguration = [screen displayConfiguration];
      hardwareIdentifier = [displayConfiguration hardwareIdentifier];

      v10 = [(_UIFocusActiveSceneObserver_Classic *)self _resolvedDisplayForWindow:windowCopy];
      [v6 setDisplay:v10];

      keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      [v6 setDeferringEnvironment:keyboardFocusEnvironment];

      v12 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:{objc_msgSend(windowCopy, "_contextId")}];
      [v6 setDeferringToken:v12];

      [v6 addObserver:self];
      [(NSMapTable *)self->_hidObserverMapTable setObject:v6 forKey:windowCopy];
      [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
    }
  }
}

- (id)_resolvedDisplayForWindow:(id)window
{
  screen = [window screen];
  displayConfiguration = [screen displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];

  if (hardwareIdentifier)
  {
    [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:hardwareIdentifier];
  }

  else
  {
    [MEMORY[0x1E698E3C8] builtinDisplay];
  }
  v6 = ;

  return v6;
}

- (void)_removeDeliverObserverForWindow:(id)window
{
  hidObserverMapTable = self->_hidObserverMapTable;
  windowCopy = window;
  v6 = [(NSMapTable *)hidObserverMapTable objectForKey:windowCopy];
  [v6 removeObserver:self];
  [(NSMapTable *)self->_hidObserverMapTable removeObjectForKey:windowCopy];

  [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
}

- (void)_windowDidAttachContext:(id)context
{
  object = [context object];
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

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    [(_UIFocusActiveSceneObserver_Classic *)self _addDeliveryObserverForWindow:v9];
    v8 = v9;
  }
}

- (void)_windowDidDetachContext:(id)context
{
  object = [context object];
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

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    [(_UIFocusActiveSceneObserver_Classic *)self _removeDeliverObserverForWindow:v9];
    v8 = v9;
  }
}

- (void)observerDeliveryPolicyDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIFocusActiveSceneObserver_Classic_observerDeliveryPolicyDidChange___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_screenUUIDDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v6 = objc_opt_class();
  v7 = object;
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
    selfCopy = self;
    v16 = notificationCopy;
    v11 = v10;
    [(_UIFocusStateObserver *)self performUpdatesAndNotifyObservers:v12];
  }
}

- (void)_keyWindowDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIFocusActiveSceneObserver_Classic__keyWindowDidChangeNotification___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end