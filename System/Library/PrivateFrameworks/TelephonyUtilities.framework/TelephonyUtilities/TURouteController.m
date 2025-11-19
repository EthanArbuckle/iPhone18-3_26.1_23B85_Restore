@interface TURouteController
- (BOOL)areAuxiliaryRoutesAvailable;
- (NSArray)routes;
- (NSDictionary)routesByUniqueIdentifier;
- (TURoute)pickedRoute;
- (TURoute)receiverRoute;
- (TURoute)speakerRoute;
- (TURouteController)initWithActionsDelegate:(id)a3 serialQueue:(id)a4;
- (TURouteControllerActions)actionsDelegate;
- (id)routeWithSourceIdentifier:(id)a3;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)handleRoutesByUniqueIdentifierUpdated:(id)a3;
- (void)handleServerDisconnect;
- (void)handleServerReconnect;
- (void)handleVolumeUpdateFromHost:(float)a3;
- (void)performBlockOnQueue:(id)a3;
- (void)pickRoute:(id)a3;
- (void)pickRouteWhenAvailableWithUniqueIdentifier:(id)a3;
- (void)pickRouteWithUniqueIdentifier:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)requeryRoutes;
- (void)setVolume:(float)a3;
@end

@implementation TURouteController

- (NSDictionary)routesByUniqueIdentifier
{
  v3 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v3);

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
  v3 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TURouteController *)self routes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isCurrentlyPicked])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TURouteController *)self routesByUniqueIdentifier];
  v5 = [v4 allValues];

  return v5;
}

- (TURoute)receiverRoute
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TURouteController *)self routes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isReceiver])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TURouteController *)self routes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isSpeaker])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [(TURouteController *)self routes];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAuxiliary])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (TURouteController)initWithActionsDelegate:(id)a3 serialQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TURouteController;
  v8 = [(TURouteController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    dispatch_queue_set_specific(v9->_queue, [(TURouteController *)v9 queueContext], [(TURouteController *)v9 queueContext], 0);
    objc_storeWeak(&v9->_actionsDelegate, v6);
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v9->_delegates;
    v9->_delegates = v10;
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

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(TURouteController *)self delegates];
  [v6 addObject:v4];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(TURouteController *)self delegates];
  [v6 removeObject:v4];
}

- (void)pickRoute:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to pick route: %@", &v9, 0xCu);
  }

  v7 = [v4 uniqueIdentifier];
  [(TURouteController *)self pickRouteWithUniqueIdentifier:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pickRouteWithUniqueIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to pick route with unique identifier: %@", &v9, 0xCu);
  }

  v7 = [(TURouteController *)self actionsDelegate];
  [v7 pickRouteWithUniqueIdentifier:v4 shouldWaitUntilAvailable:0 forRouteController:self];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pickRouteWhenAvailableWithUniqueIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to pick route when available with unique identifier: %@", &v9, 0xCu);
  }

  v7 = [(TURouteController *)self actionsDelegate];
  [v7 pickRouteWithUniqueIdentifier:v4 shouldWaitUntilAvailable:1 forRouteController:self];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requeryRoutes
{
  v3 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TURouteController *)self actionsDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__TURouteController_requeryRoutes__block_invoke;
  v5[3] = &unk_1E74248C0;
  v5[4] = self;
  [v4 routesByUniqueIdentifierForRouteController:self completionHandler:v5];
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

- (id)routeWithSourceIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(TURouteController *)self routes];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)setVolume:(float)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_volume != a3)
  {
    self->_volume = a3;
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to change volume %f", &v10, 0xCu);
    }

    v7 = [(TURouteController *)self actionsDelegate];
    *&v8 = a3;
    [v7 setVolume:self forRouteController:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performBlockOnQueue:(id)a3
{
  block = a3;
  specific = dispatch_get_specific([(TURouteController *)self queueContext]);
  if (specific == [(TURouteController *)self queueContext])
  {
    block[2]();
  }

  else
  {
    v5 = [(TURouteController *)self queue];
    dispatch_async(v5, block);
  }
}

- (void)handleRoutesByUniqueIdentifierUpdated:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v5);

  if (![(NSDictionary *)self->_routesByUniqueIdentifier isEqualToDictionary:v4])
  {
    [(TURouteController *)self setRoutesByUniqueIdentifier:v4];
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(TURouteController *)self routesByUniqueIdentifier];
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Updated routes to %@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(TURouteController *)self delegates];
    v9 = [v8 allObjects];

    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 routesChangedForRouteController:self];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleServerReconnect
{
  v3 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v3);

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
  v3 = [(TURouteController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Handling server disconnect by resetting routes to an empty list", v5, 2u);
  }

  [(TURouteController *)self handleRoutesByUniqueIdentifierUpdated:MEMORY[0x1E695E0F8]];
}

- (void)handleVolumeUpdateFromHost:(float)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(TURouteController *)self delegates];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          self->_volume = a3;
          [v11 volumeChangedForRouteController:self];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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