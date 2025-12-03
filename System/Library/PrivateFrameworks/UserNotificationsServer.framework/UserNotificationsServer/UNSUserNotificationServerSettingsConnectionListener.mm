@interface UNSUserNotificationServerSettingsConnectionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UNSUserNotificationServerSettingsConnectionListener)initWithNotificationSettingsService:(id)service;
- (id)_currentConnection;
- (void)_handleClientConnectionInterrupted:(id)interrupted;
- (void)_handleClientConnectionInvalidated:(id)invalidated;
- (void)authorizationWithOptions:(unint64_t)options forNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)getNotificationSettingsForSourceIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getNotificationSource:(id)source withCompletionHandler:(id)handler;
- (void)getNotificationSources:(id)sources withCompletionHandler:(id)handler;
- (void)getNotificationSourcesWithFilter:(id)filter completionHandler:(id)handler;
- (void)getNotificationSystemSettingsWithCompletionHandler:(id)handler;
- (void)replaceNotificationSettings:(id)settings forNotificationSourceIdentifier:(id)identifier;
- (void)replaceNotificationTopicSettings:(id)settings forNotificationSourceIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier;
- (void)resetScheduledDeliverySetting;
- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setNotificationSystemSettings:(id)settings;
- (void)setSourceSettings:(id)settings completionHandler:(id)handler;
- (void)settingsService:(id)service didUpdateNotificationSourcesForBundleIdentifiers:(id)identifiers;
- (void)settingsService:(id)service didUpdateNotificationSystemSettings:(id)settings;
@end

@implementation UNSUserNotificationServerSettingsConnectionListener

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

- (UNSUserNotificationServerSettingsConnectionListener)initWithNotificationSettingsService:(id)service
{
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = UNSUserNotificationServerSettingsConnectionListener;
  v6 = [(UNSUserNotificationServerSettingsConnectionListener *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v6->_connections;
    v6->_connections = v7;

    objc_storeStrong(&v6->_settingsService, service);
    [(UNSNotificationSettingsService *)v6->_settingsService addObserver:v6];
    v9 = objc_alloc(MEMORY[0x277CCAE98]);
    v10 = [v9 initWithMachServiceName:*MEMORY[0x277D77FB8]];
    listener = v6->_listener;
    v6->_listener = v10;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  [(UNSNotificationSettingsService *)self->_settingsService removeObserver:self];
  v3.receiver = self;
  v3.super_class = UNSUserNotificationServerSettingsConnectionListener;
  [(UNSUserNotificationServerSettingsConnectionListener *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  clientInterface = [MEMORY[0x277D77FA0] clientInterface];
  [connectionCopy setRemoteObjectInterface:clientInterface];

  serverInterface = [MEMORY[0x277D77FA0] serverInterface];
  [connectionCopy setExportedInterface:serverInterface];

  [connectionCopy setExportedObject:self];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__UNSUserNotificationServerSettingsConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_279E10D50;
  objc_copyWeak(v15, &location);
  v15[1] = connectionCopy;
  [connectionCopy setInterruptionHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__UNSUserNotificationServerSettingsConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_279E10D50;
  objc_copyWeak(v13, &location);
  v13[1] = connectionCopy;
  [connectionCopy setInvalidationHandler:v12];
  [connectionCopy resume];
  v10 = self->_connections;
  objc_sync_enter(v10);
  [(NSMutableArray *)self->_connections addObject:connectionCopy];
  objc_sync_exit(v10);

  objc_destroyWeak(v13);
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return 1;
}

void __90__UNSUserNotificationServerSettingsConnectionListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInterrupted:*(a1 + 40)];
}

void __90__UNSUserNotificationServerSettingsConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInvalidated:*(a1 + 40)];
}

- (void)getNotificationSource:(id)source withCompletionHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if (![_currentConnection uns_isAllowedToReadSettings])
  {
    v8 = 0;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(UNSNotificationSettingsService *)self->_settingsService notificationSourceForBundleIdentifier:sourceCopy];
  if (handlerCopy)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, v8);
  }

LABEL_6:
}

- (void)getNotificationSources:(id)sources withCompletionHandler:(id)handler
{
  sourcesCopy = sources;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if (![_currentConnection uns_isAllowedToReadSettings])
  {
    v8 = 0;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(UNSNotificationSettingsService *)self->_settingsService notificationSourcesForBundleIdentifiers:sourcesCopy];
  if (handlerCopy)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, v8);
  }

LABEL_6:
}

- (void)getNotificationSourcesWithFilter:(id)filter completionHandler:(id)handler
{
  filterCopy = filter;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if (![_currentConnection uns_isAllowedToReadSettings])
  {
    v8 = 0;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(UNSNotificationSettingsService *)self->_settingsService notificationSourcesWithFilter:filterCopy];
  if (handlerCopy)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, v8);
  }

LABEL_6:
}

- (void)authorizationWithOptions:(unint64_t)options forNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService authorizationWithOptions:options forNotificationSourceIdentifier:identifierCopy withCompletionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v10 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v10);
  }
}

- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService revokeAuthorizationForNotificationSourceIdentifier:identifierCopy withCompletionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v8 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v8);
  }
}

- (void)replaceNotificationSettings:(id)settings forNotificationSourceIdentifier:(id)identifier
{
  settingsCopy = settings;
  identifierCopy = identifier;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService replaceNotificationSettings:settingsCopy forNotificationSourceIdentifier:identifierCopy];
  }
}

- (void)replaceNotificationTopicSettings:(id)settings forNotificationSourceIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier
{
  settingsCopy = settings;
  identifierCopy = identifier;
  topicIdentifierCopy = topicIdentifier;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService replaceNotificationTopicSettings:settingsCopy forNotificationSourceIdentifier:identifierCopy topicIdentifier:topicIdentifierCopy];
  }
}

- (void)setSourceSettings:(id)settings completionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService setSourceSettings:settingsCopy];
  }

  else
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
  }
  v8 = ;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8);
  }
}

- (void)getNotificationSettingsForSourceIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if (![_currentConnection uns_isAllowedToReadSettings])
  {
    v8 = 0;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(UNSNotificationSettingsService *)self->_settingsService notificationSettingsForBundleIdentifier:identifierCopy calculatedSettings:0];
  if (handlerCopy)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, v8);
  }

LABEL_6:
}

- (void)getNotificationSystemSettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToReadSettings])
  {
    notificationSystemSettings = [(UNSNotificationSettingsService *)self->_settingsService notificationSystemSettings];
  }

  else
  {
    notificationSystemSettings = 0;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, notificationSystemSettings);
  }
}

- (void)setNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService setNotificationSystemSettings:settingsCopy];
  }
}

- (void)resetScheduledDeliverySetting
{
  _currentConnection = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService resetScheduledDeliverySetting];
  }
}

- (void)_handleClientConnectionInterrupted:(id)interrupted
{
  v8 = *MEMORY[0x277D85DE8];
  interruptedCopy = interrupted;
  v4 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = interruptedCopy;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInvalidated:(id)invalidated
{
  v10 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = invalidatedCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v8, 0xCu);
  }

  v6 = self->_connections;
  objc_sync_enter(v6);
  [(NSMutableArray *)self->_connections removeObject:invalidatedCopy];
  objc_sync_exit(v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)settingsService:(id)service didUpdateNotificationSourcesForBundleIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  identifiersCopy = identifiers;
  v8 = self->_connections;
  objc_sync_enter(v8);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_connections;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        remoteObjectProxy = [*(*(&v15 + 1) + 8 * v12) remoteObjectProxy];
        [remoteObjectProxy updateNotificationSourcesWithBundleIdentifiers:identifiersCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)settingsService:(id)service didUpdateNotificationSystemSettings:(id)settings
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  settingsCopy = settings;
  v8 = self->_connections;
  objc_sync_enter(v8);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_connections;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        remoteObjectProxy = [*(*(&v15 + 1) + 8 * v12) remoteObjectProxy];
        [remoteObjectProxy updateNotificationSystemSettings:settingsCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v14 = *MEMORY[0x277D85DE8];
}

@end