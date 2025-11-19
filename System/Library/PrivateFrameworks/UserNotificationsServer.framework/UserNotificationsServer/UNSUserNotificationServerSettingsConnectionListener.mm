@interface UNSUserNotificationServerSettingsConnectionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (UNSUserNotificationServerSettingsConnectionListener)initWithNotificationSettingsService:(id)a3;
- (id)_currentConnection;
- (void)_handleClientConnectionInterrupted:(id)a3;
- (void)_handleClientConnectionInvalidated:(id)a3;
- (void)authorizationWithOptions:(unint64_t)a3 forNotificationSourceIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)dealloc;
- (void)getNotificationSettingsForSourceIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationSource:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationSources:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationSourcesWithFilter:(id)a3 completionHandler:(id)a4;
- (void)getNotificationSystemSettingsWithCompletionHandler:(id)a3;
- (void)replaceNotificationSettings:(id)a3 forNotificationSourceIdentifier:(id)a4;
- (void)replaceNotificationTopicSettings:(id)a3 forNotificationSourceIdentifier:(id)a4 topicIdentifier:(id)a5;
- (void)resetScheduledDeliverySetting;
- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)setNotificationSystemSettings:(id)a3;
- (void)setSourceSettings:(id)a3 completionHandler:(id)a4;
- (void)settingsService:(id)a3 didUpdateNotificationSourcesForBundleIdentifiers:(id)a4;
- (void)settingsService:(id)a3 didUpdateNotificationSystemSettings:(id)a4;
@end

@implementation UNSUserNotificationServerSettingsConnectionListener

- (id)_currentConnection
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  if (!v2)
  {
    v3 = *MEMORY[0x277CE2078];
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [(UNSUserNotificationServerRemoteNotificationConnectionListener *)v3 _currentConnection];
    }
  }

  return v2;
}

- (UNSUserNotificationServerSettingsConnectionListener)initWithNotificationSettingsService:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = UNSUserNotificationServerSettingsConnectionListener;
  v6 = [(UNSUserNotificationServerSettingsConnectionListener *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v6->_connections;
    v6->_connections = v7;

    objc_storeStrong(&v6->_settingsService, a3);
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D77FA0] clientInterface];
  [v7 setRemoteObjectInterface:v8];

  v9 = [MEMORY[0x277D77FA0] serverInterface];
  [v7 setExportedInterface:v9];

  [v7 setExportedObject:self];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__UNSUserNotificationServerSettingsConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_279E10D50;
  objc_copyWeak(v15, &location);
  v15[1] = v7;
  [v7 setInterruptionHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__UNSUserNotificationServerSettingsConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_279E10D50;
  objc_copyWeak(v13, &location);
  v13[1] = v7;
  [v7 setInvalidationHandler:v12];
  [v7 resume];
  v10 = self->_connections;
  objc_sync_enter(v10);
  [(NSMutableArray *)self->_connections addObject:v7];
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

- (void)getNotificationSource:(id)a3 withCompletionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if (![v7 uns_isAllowedToReadSettings])
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(UNSNotificationSettingsService *)self->_settingsService notificationSourceForBundleIdentifier:v9];
  if (v6)
  {
LABEL_5:
    v6[2](v6, v8);
  }

LABEL_6:
}

- (void)getNotificationSources:(id)a3 withCompletionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if (![v7 uns_isAllowedToReadSettings])
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(UNSNotificationSettingsService *)self->_settingsService notificationSourcesForBundleIdentifiers:v9];
  if (v6)
  {
LABEL_5:
    v6[2](v6, v8);
  }

LABEL_6:
}

- (void)getNotificationSourcesWithFilter:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if (![v7 uns_isAllowedToReadSettings])
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(UNSNotificationSettingsService *)self->_settingsService notificationSourcesWithFilter:v9];
  if (v6)
  {
LABEL_5:
    v6[2](v6, v8);
  }

LABEL_6:
}

- (void)authorizationWithOptions:(unint64_t)a3 forNotificationSourceIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([v9 uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService authorizationWithOptions:a3 forNotificationSourceIdentifier:v11 withCompletionHandler:v8];
  }

  else if (v8)
  {
    v10 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    v8[2](v8, 0, v10);
  }
}

- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([v7 uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService revokeAuthorizationForNotificationSourceIdentifier:v9 withCompletionHandler:v6];
  }

  else if (v6)
  {
    v8 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    v6[2](v6, 0, v8);
  }
}

- (void)replaceNotificationSettings:(id)a3 forNotificationSourceIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([v7 uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService replaceNotificationSettings:v8 forNotificationSourceIdentifier:v6];
  }
}

- (void)replaceNotificationTopicSettings:(id)a3 forNotificationSourceIdentifier:(id)a4 topicIdentifier:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([v10 uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService replaceNotificationTopicSettings:v11 forNotificationSourceIdentifier:v8 topicIdentifier:v9];
  }
}

- (void)setSourceSettings:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([v7 uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService setSourceSettings:v9];
  }

  else
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
  }
  v8 = ;
  if (v6)
  {
    v6[2](v6, v8);
  }
}

- (void)getNotificationSettingsForSourceIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if (![v7 uns_isAllowedToReadSettings])
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(UNSNotificationSettingsService *)self->_settingsService notificationSettingsForBundleIdentifier:v9 calculatedSettings:0];
  if (v6)
  {
LABEL_5:
    v6[2](v6, v8);
  }

LABEL_6:
}

- (void)getNotificationSystemSettingsWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([v4 uns_isAllowedToReadSettings])
  {
    v5 = [(UNSNotificationSettingsService *)self->_settingsService notificationSystemSettings];
  }

  else
  {
    v5 = 0;
  }

  if (v6)
  {
    v6[2](v6, v5);
  }
}

- (void)setNotificationSystemSettings:(id)a3
{
  v5 = a3;
  v4 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([v4 uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService setNotificationSystemSettings:v5];
  }
}

- (void)resetScheduledDeliverySetting
{
  v3 = [(UNSUserNotificationServerSettingsConnectionListener *)self _currentConnection];
  if ([v3 uns_isAllowedToWriteSettings])
  {
    [(UNSNotificationSettingsService *)self->_settingsService resetScheduledDeliverySetting];
  }
}

- (void)_handleClientConnectionInterrupted:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInvalidated:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v8, 0xCu);
  }

  v6 = self->_connections;
  objc_sync_enter(v6);
  [(NSMutableArray *)self->_connections removeObject:v4];
  objc_sync_exit(v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)settingsService:(id)a3 didUpdateNotificationSourcesForBundleIdentifiers:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

        v13 = [*(*(&v15 + 1) + 8 * v12) remoteObjectProxy];
        [v13 updateNotificationSourcesWithBundleIdentifiers:v7];

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

- (void)settingsService:(id)a3 didUpdateNotificationSystemSettings:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

        v13 = [*(*(&v15 + 1) + 8 * v12) remoteObjectProxy];
        [v13 updateNotificationSystemSettings:v7];

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