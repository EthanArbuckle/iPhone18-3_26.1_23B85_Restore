@interface UNUserNotificationSettingsServiceConnection
+ (id)sharedInstance;
- (UNUserNotificationSettingsServiceConnection)init;
- (id)_queue_ensureConnection;
- (id)notificationSettingsForSourceIdentifier:(id)a3;
- (id)notificationSourceWithIdentifier:(id)a3;
- (id)notificationSourcesWithFilter:(id)a3;
- (id)notificationSourcesWithIdentifiers:(id)a3;
- (id)notificationSystemSettings;
- (id)setSourceSettings:(id)a3;
- (void)_invalidate;
- (void)_queue_invalidatedConnection;
- (void)addObserver:(id)a3;
- (void)authorizationWithOptions:(unint64_t)a3 forNotificationSourceIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)removeObserver:(id)a3;
- (void)replaceNotificationSettings:(id)a3 forNotificationSourceIdentifier:(id)a4;
- (void)replaceNotificationTopicSettings:(id)a3 forNotificationSourceIdentifier:(id)a4 topicIdentifier:(id)a5;
- (void)resetScheduledDeliverySetting;
- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)setNotificationSystemSettings:(id)a3;
- (void)updateNotificationSourcesWithBundleIdentifiers:(id)a3;
- (void)updateNotificationSystemSettings:(id)a3;
@end

@implementation UNUserNotificationSettingsServiceConnection

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UNUserNotificationSettingsServiceConnection sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

- (id)_queue_ensureConnection
{
  dispatch_assert_queue_V2(self->_queue);
  connection = self->_connection;
  if (!connection)
  {
    objc_initWeak(&location, self);
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.usernotifications.usernotificationsettingsservice" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = +[UNUserNotificationSettingsService serverInterface];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = +[UNUserNotificationSettingsService clientInterface];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    v10 = self->_connection;
    v11 = objc_loadWeakRetained(&location);
    [(NSXPCConnection *)v10 setExportedObject:v11];

    objc_initWeak(&from, self->_queue);
    v12 = self->_connection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__UNUserNotificationSettingsServiceConnection__queue_ensureConnection__block_invoke;
    v21[3] = &unk_279E15090;
    objc_copyWeak(&v22, &from);
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v21];
    v13 = self->_connection;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __70__UNUserNotificationSettingsServiceConnection__queue_ensureConnection__block_invoke_3;
    v18 = &unk_279E15090;
    objc_copyWeak(&v19, &from);
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:&v15];
    [(NSXPCConnection *)self->_connection resume:v15];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (id)notificationSystemSettings
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v3 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270B40000, v3, OS_LOG_TYPE_DEFAULT, "Getting system settings (sync)", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__UNUserNotificationSettingsServiceConnection_notificationSystemSettings__block_invoke;
  v7[3] = &unk_279E15040;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __73__UNUserNotificationSettingsServiceConnection_notificationSystemSettings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_28];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__UNUserNotificationSettingsServiceConnection_notificationSystemSettings__block_invoke_29;
  v4[3] = &unk_279E15018;
  v4[4] = *(a1 + 40);
  [v3 getNotificationSystemSettingsWithCompletionHandler:v4];
}

uint64_t __61__UNUserNotificationSettingsServiceConnection_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(UNUserNotificationSettingsServiceConnection);

  return MEMORY[0x2821F96F8]();
}

- (UNUserNotificationSettingsServiceConnection)init
{
  v12.receiver = self;
  v12.super_class = UNUserNotificationSettingsServiceConnection;
  v2 = [(UNUserNotificationSettingsServiceConnection *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.usernotifications.UNUserNotificationSettingsServiceConnection", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v6;

    v8 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__UNUserNotificationSettingsServiceConnection_init__block_invoke;
    block[3] = &unk_279E14DF0;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__UNUserNotificationSettingsServiceConnection_addObserver___block_invoke;
  v7[3] = &unk_279E14DA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__UNUserNotificationSettingsServiceConnection_removeObserver___block_invoke;
  v7[3] = &unk_279E14DA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)notificationSourceWithIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Getting notification source %{public}@ (sync)", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__UNUserNotificationSettingsServiceConnection_notificationSourceWithIdentifier___block_invoke;
  block[3] = &unk_279E14E68;
  block[4] = self;
  v12 = v4;
  v13 = &v14;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __80__UNUserNotificationSettingsServiceConnection_notificationSourceWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__UNUserNotificationSettingsServiceConnection_notificationSourceWithIdentifier___block_invoke_2;
  v6[3] = &unk_279E14E18;
  v7 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__UNUserNotificationSettingsServiceConnection_notificationSourceWithIdentifier___block_invoke_4;
  v5[3] = &unk_279E14E40;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  [v3 getNotificationSource:v4 withCompletionHandler:v5];
}

void __80__UNUserNotificationSettingsServiceConnection_notificationSourceWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __80__UNUserNotificationSettingsServiceConnection_notificationSourceWithIdentifier___block_invoke_2_cold_1(a1);
  }
}

void __80__UNUserNotificationSettingsServiceConnection_notificationSourceWithIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Got notification source %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)notificationSourcesWithIdentifiers:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Getting notification sources %{public}@ (sync)", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__UNUserNotificationSettingsServiceConnection_notificationSourcesWithIdentifiers___block_invoke;
  block[3] = &unk_279E14E68;
  block[4] = self;
  v12 = v4;
  v13 = &v14;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __82__UNUserNotificationSettingsServiceConnection_notificationSourcesWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__UNUserNotificationSettingsServiceConnection_notificationSourcesWithIdentifiers___block_invoke_2;
  v6[3] = &unk_279E14E18;
  v7 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__UNUserNotificationSettingsServiceConnection_notificationSourcesWithIdentifiers___block_invoke_6;
  v5[3] = &unk_279E14E90;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  [v3 getNotificationSources:v4 withCompletionHandler:v5];
}

void __82__UNUserNotificationSettingsServiceConnection_notificationSourcesWithIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __82__UNUserNotificationSettingsServiceConnection_notificationSourcesWithIdentifiers___block_invoke_2_cold_1(a1);
  }
}

void __82__UNUserNotificationSettingsServiceConnection_notificationSourcesWithIdentifiers___block_invoke_6(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Got notification sources %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)notificationSourcesWithFilter:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Getting all notification sources (sync)", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__UNUserNotificationSettingsServiceConnection_notificationSourcesWithFilter___block_invoke;
  block[3] = &unk_279E14E68;
  block[4] = self;
  v11 = v4;
  v12 = &v14;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __77__UNUserNotificationSettingsServiceConnection_notificationSourcesWithFilter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__UNUserNotificationSettingsServiceConnection_notificationSourcesWithFilter___block_invoke_10;
  v5[3] = &unk_279E14E90;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  [v3 getNotificationSourcesWithFilter:v4 completionHandler:v5];
}

void __77__UNUserNotificationSettingsServiceConnection_notificationSourcesWithFilter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __77__UNUserNotificationSettingsServiceConnection_notificationSourcesWithFilter___block_invoke_2_cold_1();
  }
}

void __77__UNUserNotificationSettingsServiceConnection_notificationSourcesWithFilter___block_invoke_10(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Got all notification sources %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)authorizationWithOptions:(unint64_t)a3 forNotificationSourceIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = a3;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_270B40000, v10, OS_LOG_TYPE_DEFAULT, "Authorize notification settings %ld for source %{public}@ (sync)", buf, 0x16u);
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __126__UNUserNotificationSettingsServiceConnection_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_279E14F00;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a3;
  v12 = v9;
  v13 = v8;
  dispatch_sync(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __126__UNUserNotificationSettingsServiceConnection_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __126__UNUserNotificationSettingsServiceConnection_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler___block_invoke_13;
  v6[3] = &unk_279E14ED8;
  v7 = v5;
  v8 = *(a1 + 48);
  [v3 authorizationWithOptions:v4 forNotificationSourceIdentifier:v7 withCompletionHandler:v6];
}

void __126__UNUserNotificationSettingsServiceConnection_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __126__UNUserNotificationSettingsServiceConnection_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler___block_invoke_2_cold_1();
  }
}

void __126__UNUserNotificationSettingsServiceConnection_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler___block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CE2078];
  if (v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      __126__UNUserNotificationSettingsServiceConnection_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_270B40000, v6, OS_LOG_TYPE_DEFAULT, "Authorize notification settings for %{public}@ completed with status granted: %d", &v10, 0x12u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_270B40000, v8, OS_LOG_TYPE_DEFAULT, "Revoke authorization for source %{public}@ (sync)", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__UNUserNotificationSettingsServiceConnection_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_279E14F28;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __120__UNUserNotificationSettingsServiceConnection_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __120__UNUserNotificationSettingsServiceConnection_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler___block_invoke_17;
  v5[3] = &unk_279E14ED8;
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 revokeAuthorizationForNotificationSourceIdentifier:v6 withCompletionHandler:v5];
}

void __120__UNUserNotificationSettingsServiceConnection_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __120__UNUserNotificationSettingsServiceConnection_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler___block_invoke_2_cold_1();
  }
}

void __120__UNUserNotificationSettingsServiceConnection_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler___block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CE2078];
  if (v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      __120__UNUserNotificationSettingsServiceConnection_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_270B40000, v6, OS_LOG_TYPE_DEFAULT, "Revoke authorization for %{public}@ completed with status granted: %d", &v10, 0x12u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)notificationSettingsForSourceIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Get notification settings for source %{public}@ (sync)", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__UNUserNotificationSettingsServiceConnection_notificationSettingsForSourceIdentifier___block_invoke;
  block[3] = &unk_279E14E68;
  block[4] = self;
  v12 = v4;
  v13 = &v14;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __87__UNUserNotificationSettingsServiceConnection_notificationSettingsForSourceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_19];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__UNUserNotificationSettingsServiceConnection_notificationSettingsForSourceIdentifier___block_invoke_20;
  v5[3] = &unk_279E14F50;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  [v3 getNotificationSettingsForSourceIdentifier:v4 withCompletionHandler:v5];
}

void __87__UNUserNotificationSettingsServiceConnection_notificationSettingsForSourceIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __87__UNUserNotificationSettingsServiceConnection_notificationSettingsForSourceIdentifier___block_invoke_2_cold_1();
  }
}

- (id)setSourceSettings:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Set source settings", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UNUserNotificationSettingsServiceConnection_setSourceSettings___block_invoke;
  block[3] = &unk_279E14FA0;
  v11 = v4;
  v12 = buf;
  block[4] = self;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(v14 + 5);

  _Block_object_dispose(buf, 8);

  return v8;
}

void __65__UNUserNotificationSettingsServiceConnection_setSourceSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__UNUserNotificationSettingsServiceConnection_setSourceSettings___block_invoke_2;
  v6[3] = &unk_279E14F78;
  v6[4] = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__UNUserNotificationSettingsServiceConnection_setSourceSettings___block_invoke_22;
  v5[3] = &unk_279E14F78;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  [v3 setSourceSettings:v4 completionHandler:v5];
}

void __65__UNUserNotificationSettingsServiceConnection_setSourceSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __65__UNUserNotificationSettingsServiceConnection_setSourceSettings___block_invoke_2_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

- (void)replaceNotificationSettings:(id)a3 forNotificationSourceIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_270B40000, v8, OS_LOG_TYPE_DEFAULT, "Replace notification settings %{public}@ for source %{public}@ (sync)", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__UNUserNotificationSettingsServiceConnection_replaceNotificationSettings_forNotificationSourceIdentifier___block_invoke;
  block[3] = &unk_279E14FC8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __107__UNUserNotificationSettingsServiceConnection_replaceNotificationSettings_forNotificationSourceIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _queue_ensureConnection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_24];
  [v2 replaceNotificationSettings:*(a1 + 40) forNotificationSourceIdentifier:*(a1 + 48)];
}

void __107__UNUserNotificationSettingsServiceConnection_replaceNotificationSettings_forNotificationSourceIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __107__UNUserNotificationSettingsServiceConnection_replaceNotificationSettings_forNotificationSourceIdentifier___block_invoke_2_cold_1();
  }
}

- (void)replaceNotificationTopicSettings:(id)a3 forNotificationSourceIdentifier:(id)a4 topicIdentifier:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_270B40000, v11, OS_LOG_TYPE_DEFAULT, "Replace notification topic settings %{public}@ for source %{public}@ and topic %{public}@ (sync)", buf, 0x20u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __128__UNUserNotificationSettingsServiceConnection_replaceNotificationTopicSettings_forNotificationSourceIdentifier_topicIdentifier___block_invoke;
  v17[3] = &unk_279E14FF0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_sync(queue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __128__UNUserNotificationSettingsServiceConnection_replaceNotificationTopicSettings_forNotificationSourceIdentifier_topicIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _queue_ensureConnection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_26];
  [v2 replaceNotificationTopicSettings:*(a1 + 40) forNotificationSourceIdentifier:*(a1 + 48) topicIdentifier:*(a1 + 56)];
}

void __128__UNUserNotificationSettingsServiceConnection_replaceNotificationTopicSettings_forNotificationSourceIdentifier_topicIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __128__UNUserNotificationSettingsServiceConnection_replaceNotificationTopicSettings_forNotificationSourceIdentifier_topicIdentifier___block_invoke_2_cold_1();
  }
}

void __73__UNUserNotificationSettingsServiceConnection_notificationSystemSettings__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __73__UNUserNotificationSettingsServiceConnection_notificationSystemSettings__block_invoke_2_cold_1();
  }
}

void __73__UNUserNotificationSettingsServiceConnection_notificationSystemSettings__block_invoke_29(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Got system settings %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationSystemSettings:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270B40000, v5, OS_LOG_TYPE_DEFAULT, "Setting system settings (sync)", buf, 2u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__UNUserNotificationSettingsServiceConnection_setNotificationSystemSettings___block_invoke;
  v8[3] = &unk_279E14DA0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(queue, v8);
}

void __77__UNUserNotificationSettingsServiceConnection_setNotificationSystemSettings___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _queue_ensureConnection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_32];
  [v2 setNotificationSystemSettings:*(a1 + 40)];
}

void __77__UNUserNotificationSettingsServiceConnection_setNotificationSystemSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __77__UNUserNotificationSettingsServiceConnection_setNotificationSystemSettings___block_invoke_2_cold_1();
  }
}

- (void)resetScheduledDeliverySetting
{
  v3 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270B40000, v3, OS_LOG_TYPE_DEFAULT, "Resetting scheduled delivery setting (sync)", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__UNUserNotificationSettingsServiceConnection_resetScheduledDeliverySetting__block_invoke;
  block[3] = &unk_279E14DF0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __76__UNUserNotificationSettingsServiceConnection_resetScheduledDeliverySetting__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v1 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_34];
  [v1 resetScheduledDeliverySetting];
}

void __76__UNUserNotificationSettingsServiceConnection_resetScheduledDeliverySetting__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __76__UNUserNotificationSettingsServiceConnection_resetScheduledDeliverySetting__block_invoke_2_cold_1();
  }
}

- (void)_invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setExportedObject:0];

  [(UNUserNotificationSettingsServiceConnection *)self setConnection:0];
}

void __70__UNUserNotificationSettingsServiceConnection__queue_ensureConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__UNUserNotificationSettingsServiceConnection__queue_ensureConnection__block_invoke_2;
    block[3] = &unk_279E15068;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_async(WeakRetained, block);
    objc_destroyWeak(&v4);
  }
}

void __70__UNUserNotificationSettingsServiceConnection__queue_ensureConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_interruptedConnection];
}

void __70__UNUserNotificationSettingsServiceConnection__queue_ensureConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__UNUserNotificationSettingsServiceConnection__queue_ensureConnection__block_invoke_4;
    block[3] = &unk_279E15068;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_async(WeakRetained, block);
    objc_destroyWeak(&v4);
  }
}

void __70__UNUserNotificationSettingsServiceConnection__queue_ensureConnection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_invalidatedConnection];
}

- (void)_queue_invalidatedConnection
{
  dispatch_assert_queue_V2(self->_queue);

  [(UNUserNotificationSettingsServiceConnection *)self _invalidate];
}

- (void)updateNotificationSourcesWithBundleIdentifiers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(*(&v11 + 1) + 8 * v9++) settingsServiceConnection:self didUpdateNotificationSourcesWithIdentifiers:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateNotificationSystemSettings:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(*(&v11 + 1) + 8 * v9++) settingsServiceConnection:self didUpdateNotificationSystemSettings:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __80__UNUserNotificationSettingsServiceConnection_notificationSourceWithIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_270B40000, v2, v3, "Getting notification source %{public}@ (sync) failed with error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __82__UNUserNotificationSettingsServiceConnection_notificationSourcesWithIdentifiers___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_270B40000, v2, v3, "Getting notification sources %{public}@ (sync) failed with error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __77__UNUserNotificationSettingsServiceConnection_notificationSourcesWithFilter___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Getting all notification sources (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __126__UNUserNotificationSettingsServiceConnection_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Authorize notification settings (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __120__UNUserNotificationSettingsServiceConnection_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Revoke authorization (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__UNUserNotificationSettingsServiceConnection_notificationSettingsForSourceIdentifier___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Get notification settings (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__UNUserNotificationSettingsServiceConnection_setSourceSettings___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*(*(a1 + 32) + 8) + 40));
  OUTLINED_FUNCTION_0(&dword_270B40000, a2, a3, "Set soure settings (sync) failed with error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __107__UNUserNotificationSettingsServiceConnection_replaceNotificationSettings_forNotificationSourceIdentifier___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Replace notification settings (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __128__UNUserNotificationSettingsServiceConnection_replaceNotificationTopicSettings_forNotificationSourceIdentifier_topicIdentifier___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Replace notification topic settings (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__UNUserNotificationSettingsServiceConnection_notificationSystemSettings__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Getting system settings (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__UNUserNotificationSettingsServiceConnection_setNotificationSystemSettings___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Setting system settings (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__UNUserNotificationSettingsServiceConnection_resetScheduledDeliverySetting__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270B40000, v0, v1, "Resetting scheduled delivery setting (sync) failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end