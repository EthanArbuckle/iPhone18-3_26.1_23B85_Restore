@interface UNSUserNotificationServerRemoteNotificationConnectionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UNSUserNotificationServerRemoteNotificationConnectionListener)initWithRemoteNotificationService:(id)service;
- (id)_currentConnection;
- (void)_queue_addConnection:(id)connection forBundleIdentifier:(id)identifier;
- (void)_queue_didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier;
- (void)_queue_removeConnection:(id)connection forBundleIdentifier:(id)identifier;
- (void)_queue_removeConnectionForAllBundleIdentifiers:(id)identifiers;
- (void)_removeConnectionForAllBundleIdentifiers:(id)identifiers;
- (void)_requestTokenForRemoteNotificationsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier;
- (void)getAllowsRemoteNotificationsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)invalidateTokenForRemoteNotificationsForBundleIdentifier:(id)identifier;
- (void)requestTokenForRemoteNotificationsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
@end

@implementation UNSUserNotificationServerRemoteNotificationConnectionListener

- (id)_currentConnection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (!currentConnection)
  {
    v3 = *MEMORY[0x277CE2078];
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [(UNSUserNotificationServerRemoteNotificationConnectionListener *)v3 _currentConnection];
    }
  }

  return currentConnection;
}

- (UNSUserNotificationServerRemoteNotificationConnectionListener)initWithRemoteNotificationService:(id)service
{
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = UNSUserNotificationServerRemoteNotificationConnectionListener;
  v6 = [(UNSUserNotificationServerRemoteNotificationConnectionListener *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteNotificationService, service);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectionsByBundleIdentifier = v7->_connectionsByBundleIdentifier;
    v7->_connectionsByBundleIdentifier = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    bundleIdentifiersByConnection = v7->_bundleIdentifiersByConnection;
    v7->_bundleIdentifiersByConnection = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.usernotificationsserver.ConnectionListener", v12);
    queue = v7->_queue;
    v7->_queue = v13;

    v15 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.usernotifications.remotenotificationservice"];
    listener = v7->_listener;
    v7->_listener = v15;

    [(NSXPCListener *)v7->_listener setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = UNSUserNotificationServerRemoteNotificationConnectionListener;
  [(UNSUserNotificationServerRemoteNotificationConnectionListener *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880B0650];
  [connectionCopy setRemoteObjectInterface:v8];

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28809F890];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:self];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__1;
  v14[4] = __Block_byref_object_dispose__1;
  v10 = connectionCopy;
  v15 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__UNSUserNotificationServerRemoteNotificationConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
  v13[3] = &unk_279E109B0;
  v13[4] = self;
  v13[5] = v14;
  [v10 setInterruptionHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__UNSUserNotificationServerRemoteNotificationConnectionListener_listener_shouldAcceptNewConnection___block_invoke_65;
  v12[3] = &unk_279E109B0;
  v12[4] = self;
  v12[5] = v14;
  [v10 setInvalidationHandler:v12];
  [v10 resume];
  _Block_object_dispose(v14, 8);

  return 1;
}

uint64_t __100__UNSUserNotificationServerRemoteNotificationConnectionListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "connection interrupted", v4, 2u);
  }

  return [*(a1 + 32) _removeConnectionForAllBundleIdentifiers:*(*(*(a1 + 40) + 8) + 40)];
}

uint64_t __100__UNSUserNotificationServerRemoteNotificationConnectionListener_listener_shouldAcceptNewConnection___block_invoke_65(uint64_t a1)
{
  v2 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated", v4, 2u);
  }

  return [*(a1 + 32) _removeConnectionForAllBundleIdentifiers:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)requestTokenForRemoteNotificationsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self _currentConnection];
  uns_clientBundleProxy = [_currentConnection uns_clientBundleProxy];
  un_applicationBundleIdentifier = [uns_clientBundleProxy un_applicationBundleIdentifier];

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:un_applicationBundleIdentifier])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __141__UNSUserNotificationServerRemoteNotificationConnectionListener_requestTokenForRemoteNotificationsForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E10700;
    block[4] = self;
    v12 = _currentConnection;
    v10 = un_applicationBundleIdentifier;
    v13 = v10;
    dispatch_async(queue, block);
    [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self _requestTokenForRemoteNotificationsForBundleIdentifier:v10 withCompletionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)_requestTokenForRemoteNotificationsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:identifierCopy];
  pushEnvironment = [v8 pushEnvironment];
  if (!pushEnvironment)
  {
    v10 = *MEMORY[0x277CE20A8];
    if (os_log_type_enabled(*MEMORY[0x277CE20A8], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerRemoteNotificationConnectionListener _requestTokenForRemoteNotificationsForBundleIdentifier:identifierCopy withCompletionHandler:v10];
      if (!handlerCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_7;
    }

    v11 = UNSLocalizedFormatStringForKey(@"%@", @"REMOTE_NOTIFICATION_ENTITLEMENT_NSERROR_DESCRIPTION");
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, @"aps-environment"];
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA050];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v16 = [v13 errorWithDomain:v14 code:3000 userInfo:v15];

    handlerCopy[2](handlerCopy, 0, v16);
    goto LABEL_7;
  }

  [(UNCRemoteNotificationServer *)self->_remoteNotificationService requestRemoteNotificationTokenWithEnvironment:pushEnvironment forBundleIdentifier:identifierCopy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

LABEL_7:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)invalidateTokenForRemoteNotificationsForBundleIdentifier:(id)identifier
{
  _currentConnection = [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self _currentConnection];
  uns_clientBundleProxy = [_currentConnection uns_clientBundleProxy];
  un_applicationBundleIdentifier = [uns_clientBundleProxy un_applicationBundleIdentifier];

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:un_applicationBundleIdentifier])
  {
    [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self _invalidateTokenForRemoteNotificationsForBundleIdentifier:un_applicationBundleIdentifier];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__UNSUserNotificationServerRemoteNotificationConnectionListener_invalidateTokenForRemoteNotificationsForBundleIdentifier___block_invoke;
    block[3] = &unk_279E10700;
    block[4] = self;
    v9 = _currentConnection;
    v10 = un_applicationBundleIdentifier;
    dispatch_async(queue, block);
  }
}

- (void)getAllowsRemoteNotificationsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  _currentConnection = [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self _currentConnection];
  uns_clientBundleProxy = [_currentConnection uns_clientBundleProxy];
  un_applicationBundleIdentifier = [uns_clientBundleProxy un_applicationBundleIdentifier];

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:un_applicationBundleIdentifier])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __135__UNSUserNotificationServerRemoteNotificationConnectionListener_getAllowsRemoteNotificationsForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E109D8;
    v14 = &v15;
    block[4] = self;
    v13 = un_applicationBundleIdentifier;
    dispatch_sync(queue, block);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, *(v16 + 24));
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __135__UNSUserNotificationServerRemoteNotificationConnectionListener_getAllowsRemoteNotificationsForBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _allowsRemoteNotificationsForBundleIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__UNSUserNotificationServerRemoteNotificationConnectionListener_didReceiveDeviceToken_forBundleIdentifier___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = tokenCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = tokenCopy;
  dispatch_async(queue, block);
}

- (void)_removeConnectionForAllBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __106__UNSUserNotificationServerRemoteNotificationConnectionListener__removeConnectionForAllBundleIdentifiers___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_addConnection:(id)connection forBundleIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_connectionsByBundleIdentifier objectForKey:identifierCopy];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_connectionsByBundleIdentifier setObject:v7 forKey:identifierCopy];
  }

  [v7 addObject:connectionCopy];
  v8 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:connectionCopy];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [(NSMapTable *)self->_bundleIdentifiersByConnection setObject:v8 forKey:connectionCopy];
  }

  [v8 addObject:identifierCopy];
}

- (void)_queue_removeConnection:(id)connection forBundleIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_connectionsByBundleIdentifier objectForKey:identifierCopy];
  [v7 removeObject:connectionCopy];
  if (![v7 count])
  {
    [(NSMutableDictionary *)self->_connectionsByBundleIdentifier removeObjectForKey:identifierCopy];
  }

  v8 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:connectionCopy];
  [v8 removeObject:identifierCopy];
  if (![v8 count])
  {
    [(NSMapTable *)self->_bundleIdentifiersByConnection removeObjectForKey:connectionCopy];
  }
}

- (void)_queue_removeConnectionForAllBundleIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:identifiersCopy];
  v6 = [v5 copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self _queue_removeConnection:identifiersCopy forBundleIdentifier:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  identifierCopy = identifier;
  v8 = [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self _queue_observerConnectionsForBundleIdentifier:identifierCopy];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v24 = identifierCopy;
    v25 = 2048;
    v26 = [v8 count];
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending received device token to %ld connections", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        remoteObjectProxy = [*(*(&v18 + 1) + 8 * v15) remoteObjectProxy];
        [remoteObjectProxy didReceiveDeviceToken:tokenCopy forBundleIdentifier:identifierCopy];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_requestTokenForRemoteNotificationsForBundleIdentifier:(uint64_t)a1 withCompletionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138543874;
  v4 = @"aps-environment";
  v5 = 2114;
  v6 = a1;
  v7 = 2114;
  v8 = 0;
  _os_log_error_impl(&dword_270AA8000, a2, OS_LOG_TYPE_ERROR, "No valid '%{public}@' entitlement string found for application '%{public}@': %{public}@.", &v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

@end