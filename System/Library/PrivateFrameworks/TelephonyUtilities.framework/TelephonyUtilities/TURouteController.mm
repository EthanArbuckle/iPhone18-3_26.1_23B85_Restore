@interface TURouteController
- (BOOL)areAuxiliaryRoutesAvailable;
- (NSArray)routes;
- (NSDictionary)routesByUniqueIdentifier;
- (TURoute)pickedRoute;
- (TURoute)receiverRoute;
- (TURoute)speakerRoute;
- (TURouteController)initWithActionsDelegate:(id)delegate serialQueue:(id)queue;
- (TURouteControllerActions)actionsDelegate;
- (id)routeWithSourceIdentifier:(id)identifier;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)handleRoutesByUniqueIdentifierUpdated:(id)updated;
- (void)handleServerDisconnect;
- (void)handleServerReconnect;
- (void)handleVolumeUpdateFromHost:(float)host;
- (void)performBlockOnQueue:(id)queue;
- (void)pickRoute:(id)route;
- (void)pickRouteWhenAvailableWithUniqueIdentifier:(id)identifier;
- (void)pickRouteWithUniqueIdentifier:(id)identifier;
- (void)removeDelegate:(id)delegate;
- (void)requeryRoutes;
- (void)setVolume:(float)volume;
@end

@implementation TURouteController

- (NSDictionary)routesByUniqueIdentifier
{
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  routesByUniqueIdentifier = self->_routesByUniqueIdentifier;
  if (!routesByUniqueIdentifier)
  {
    [(TURouteController *)self requeryRoutes];
    routesByUniqueIdentifier = self->_routesByUniqueIdentifier;
  }

  if (routesByUniqueIdentifier)
  {
    v5 = routesByUniqueIdentifier;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

- (TURoute)pickedRoute
{
  v16 = *MEMORY[0x1E69E9840];
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  routes = [(TURouteController *)self routes];
  v5 = [routes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(routes);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isCurrentlyPicked])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [routes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)routes
{
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  routesByUniqueIdentifier = [(TURouteController *)self routesByUniqueIdentifier];
  allValues = [routesByUniqueIdentifier allValues];

  return allValues;
}

- (TURoute)receiverRoute
{
  v16 = *MEMORY[0x1E69E9840];
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  routes = [(TURouteController *)self routes];
  v5 = [routes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(routes);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isReceiver])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [routes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (TURoute)speakerRoute
{
  v16 = *MEMORY[0x1E69E9840];
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  routes = [(TURouteController *)self routes];
  v5 = [routes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(routes);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isSpeaker])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [routes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)areAuxiliaryRoutesAvailable
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  routes = [(TURouteController *)self routes];
  v3 = [routes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(routes);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAuxiliary])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [routes countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (TURouteController)initWithActionsDelegate:(id)delegate serialQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = TURouteController;
  v8 = [(TURouteController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    dispatch_queue_set_specific(v9->_queue, [(TURouteController *)v9 queueContext], [(TURouteController *)v9 queueContext], 0);
    objc_storeWeak(&v9->_actionsDelegate, delegateCopy);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v9->_delegates;
    v9->_delegates = weakObjectsHashTable;
  }

  return v9;
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->_queue, [(TURouteController *)self queueContext], 0, 0);
  v3.receiver = self;
  v3.super_class = TURouteController;
  [(TURouteController *)&v3 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  delegates = [(TURouteController *)self delegates];
  [delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  delegates = [(TURouteController *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (void)pickRoute:(id)route
{
  v11 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = routeCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to pick route: %@", &v9, 0xCu);
  }

  uniqueIdentifier = [routeCopy uniqueIdentifier];
  [(TURouteController *)self pickRouteWithUniqueIdentifier:uniqueIdentifier];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pickRouteWithUniqueIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to pick route with unique identifier: %@", &v9, 0xCu);
  }

  actionsDelegate = [(TURouteController *)self actionsDelegate];
  [actionsDelegate pickRouteWithUniqueIdentifier:identifierCopy shouldWaitUntilAvailable:0 forRouteController:self];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pickRouteWhenAvailableWithUniqueIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to pick route when available with unique identifier: %@", &v9, 0xCu);
  }

  actionsDelegate = [(TURouteController *)self actionsDelegate];
  [actionsDelegate pickRouteWithUniqueIdentifier:identifierCopy shouldWaitUntilAvailable:1 forRouteController:self];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requeryRoutes
{
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  actionsDelegate = [(TURouteController *)self actionsDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__TURouteController_requeryRoutes__block_invoke;
  v5[3] = &unk_1E74248C0;
  v5[4] = self;
  [actionsDelegate routesByUniqueIdentifierForRouteController:self completionHandler:v5];
}

void __34__TURouteController_requeryRoutes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__TURouteController_requeryRoutes__block_invoke_2;
  v6[3] = &unk_1E7424898;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 performBlockOnQueue:v6];
}

- (id)routeWithSourceIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  routes = [(TURouteController *)self routes];
  v7 = [routes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(routes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uniqueIdentifier = [v10 uniqueIdentifier];
        v12 = [uniqueIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [routes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setVolume:(float)volume
{
  v12 = *MEMORY[0x1E69E9840];
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_volume != volume)
  {
    self->_volume = volume;
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      volumeCopy = volume;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to change volume %f", &v10, 0xCu);
    }

    actionsDelegate = [(TURouteController *)self actionsDelegate];
    *&v8 = volume;
    [actionsDelegate setVolume:self forRouteController:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performBlockOnQueue:(id)queue
{
  block = queue;
  specific = dispatch_get_specific([(TURouteController *)self queueContext]);
  if (specific == [(TURouteController *)self queueContext])
  {
    block[2]();
  }

  else
  {
    queue = [(TURouteController *)self queue];
    dispatch_async(queue, block);
  }
}

- (void)handleRoutesByUniqueIdentifierUpdated:(id)updated
{
  v23 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(NSDictionary *)self->_routesByUniqueIdentifier isEqualToDictionary:updatedCopy])
  {
    [(TURouteController *)self setRoutesByUniqueIdentifier:updatedCopy];
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      routesByUniqueIdentifier = [(TURouteController *)self routesByUniqueIdentifier];
      *buf = 138412290;
      v22 = routesByUniqueIdentifier;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Updated routes to %@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    delegates = [(TURouteController *)self delegates];
    allObjects = [delegates allObjects];

    v10 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 routesChangedForRouteController:self];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleServerReconnect
{
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Handling server reconnect by requesting current route list", v5, 2u);
  }

  [(TURouteController *)self requeryRoutes];
}

- (void)handleServerDisconnect
{
  queue = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Handling server disconnect by resetting routes to an empty list", v5, 2u);
  }

  [(TURouteController *)self handleRoutesByUniqueIdentifierUpdated:MEMORY[0x1E695E0F8]];
}

- (void)handleVolumeUpdateFromHost:(float)host
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  delegates = [(TURouteController *)self delegates];
  allObjects = [delegates allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          self->_volume = host;
          [v11 volumeChangedForRouteController:self];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (TURouteControllerActions)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

@end