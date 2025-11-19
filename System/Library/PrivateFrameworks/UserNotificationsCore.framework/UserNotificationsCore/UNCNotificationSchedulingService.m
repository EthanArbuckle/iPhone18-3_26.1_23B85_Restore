@interface UNCNotificationSchedulingService
- (UNCNotificationSchedulingService)initWithNotificationRepository:(id)a3 pendingNotificationRepository:(id)a4 notificationScheduleRepository:(id)a5 locationMonitor:(id)a6;
- (id)_queue_addClientForBundleIdentifier:(id)a3;
- (id)_queue_pendingNotificationRecordsForBundleIdentifier:(id)a3;
- (id)_queue_undeliveredNotificationRequestsForBundleIdentifier:(id)a3;
- (id)pendingNotificationRecordsForBundleIdentifier:(id)a3;
- (id)undeliveredNotificationRecordsForBundleIdentifier:(id)a3;
- (void)_queue_addPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_applicationStateDidRestore;
- (void)_queue_didChangeNotificationSettings:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_localeDidChange;
- (void)_queue_notificationSourcesDidUninstall:(id)a3;
- (void)_queue_removeAllPendingNotificationRecordsForBundleIdentifier:(id)a3;
- (void)_queue_removeClientForBundleIdentifier:(id)a3;
- (void)_queue_removePendingNotificationRecordsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_removeSimilarPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_setPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_timeDidChangeSignificantly;
- (void)addPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)applicationStateDidRestore;
- (void)didChangeNotificationSettings:(id)a3 forBundleIdentifier:(id)a4;
- (void)localeDidChange;
- (void)notificationSourcesDidUninstall:(id)a3;
- (void)removeAllPendingNotificationRecordsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)removePendingNotificationRecordsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)removeSimilarPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4;
- (void)setPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4;
- (void)timeDidChangeSignificantly;
@end

@implementation UNCNotificationSchedulingService

- (UNCNotificationSchedulingService)initWithNotificationRepository:(id)a3 pendingNotificationRepository:(id)a4 notificationScheduleRepository:(id)a5 locationMonitor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = UNCNotificationSchedulingService;
  v15 = [(UNCNotificationSchedulingService *)&v22 init];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.usernotificationsserver.NotificationSchedulingService", v16);
    queue = v15->_queue;
    v15->_queue = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clients = v15->_clients;
    v15->_clients = v19;

    objc_storeStrong(&v15->_notificationRepository, a3);
    objc_storeStrong(&v15->_notificationScheduleRepository, a5);
    objc_storeStrong(&v15->_pendingNotificationRepository, a4);
    objc_storeStrong(&v15->_locationMonitor, a6);
  }

  return v15;
}

- (void)addPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__UNCNotificationSchedulingService_addPendingNotificationRecords_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E85D7808;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

uint64_t __108__UNCNotificationSchedulingService_addPendingNotificationRecords_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_addPendingNotificationRecords:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UNCNotificationSchedulingService_setPendingNotificationRecords_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removePendingNotificationRecordsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__UNCNotificationSchedulingService_removePendingNotificationRecordsWithIdentifiers_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E85D7808;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

uint64_t __126__UNCNotificationSchedulingService_removePendingNotificationRecordsWithIdentifiers_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_removePendingNotificationRecordsWithIdentifiers:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeSimilarPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__UNCNotificationSchedulingService_removeSimilarPendingNotificationRecords_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeAllPendingNotificationRecordsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__UNCNotificationSchedulingService_removeAllPendingNotificationRecordsForBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E85D7350;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __113__UNCNotificationSchedulingService_removeAllPendingNotificationRecordsForBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_removeAllPendingNotificationRecordsForBundleIdentifier:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)pendingNotificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__UNCNotificationSchedulingService_pendingNotificationRecordsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F48;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __82__UNCNotificationSchedulingService_pendingNotificationRecordsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_pendingNotificationRecordsForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)undeliveredNotificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UNCNotificationSchedulingService_undeliveredNotificationRecordsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F48;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __86__UNCNotificationSchedulingService_undeliveredNotificationRecordsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_undeliveredNotificationRequestsForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)didChangeNotificationSettings:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UNCNotificationSchedulingService_didChangeNotificationSettings_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)notificationSourcesDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__UNCNotificationSchedulingService_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)applicationStateDidRestore
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__UNCNotificationSchedulingService_applicationStateDidRestore__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)localeDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UNCNotificationSchedulingService_localeDidChange__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)timeDidChangeSignificantly
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__UNCNotificationSchedulingService_timeDidChangeSignificantly__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_addPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(UNCNotificationSchedulingService *)self _queue_clientForBundleIdentifier:a4];
  [v7 addPendingNotificationRecords:v6];
}

- (void)_queue_setPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(UNCNotificationSchedulingService *)self _queue_clientForBundleIdentifier:a4];
  [v7 setPendingNotificationRecords:v6];
}

- (void)_queue_removePendingNotificationRecordsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(UNCNotificationSchedulingService *)self _queue_clientForBundleIdentifier:a4];
  [v7 removePendingNotificationRecordsWithIdentifiers:v6];
}

- (void)_queue_removeSimilarPendingNotificationRecords:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(UNCNotificationSchedulingService *)self _queue_clientForBundleIdentifier:a4];
  [v7 removePendingNotificationRecords:v6];
}

- (void)_queue_removeAllPendingNotificationRecordsForBundleIdentifier:(id)a3
{
  v3 = [(UNCNotificationSchedulingService *)self _queue_clientForBundleIdentifier:a3];
  [v3 removeAllPendingNotificationRecords];
}

- (id)_queue_pendingNotificationRecordsForBundleIdentifier:(id)a3
{
  v3 = [(UNCNotificationSchedulingService *)self _queue_clientForBundleIdentifier:a3];
  v4 = [v3 pendingNotificationRecords];

  return v4;
}

- (id)_queue_undeliveredNotificationRequestsForBundleIdentifier:(id)a3
{
  v3 = [(UNCNotificationSchedulingService *)self _queue_clientForBundleIdentifier:a3];
  v4 = [v3 undeliveredNotificationRecords];

  return v4;
}

- (void)_queue_didChangeNotificationSettings:(id)a3 forBundleIdentifier:(id)a4
{
  v7 = a4;
  if ([a3 hasEnabledSettings])
  {
    v6 = [(UNCNotificationSchedulingService *)self _queue_addClientForBundleIdentifier:v7];
  }

  else
  {
    [(UNCNotificationSchedulingService *)self _queue_removeClientForBundleIdentifier:v7];
  }
}

- (void)_queue_notificationSourcesDidUninstall:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        [(UNCNotificationSchedulingService *)self _queue_removeClientForBundleIdentifier:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_queue_applicationStateDidRestore
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    clients = self->_clients;
    v5 = v3;
    *buf = 134217984;
    v18 = [(NSMutableDictionary *)clients count];
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "Application state restored for %ld clients", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableDictionary *)self->_clients allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) handleApplicationStateRestore];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_queue_localeDidChange
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    clients = self->_clients;
    v5 = v3;
    *buf = 134217984;
    v18 = [(NSMutableDictionary *)clients count];
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "Handle locale change for %ld clients", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableDictionary *)self->_clients allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) handleLocaleChange];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_queue_timeDidChangeSignificantly
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    clients = self->_clients;
    v5 = v3;
    *buf = 134217984;
    v18 = [(NSMutableDictionary *)clients count];
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "Handle significant time change for %ld clients", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableDictionary *)self->_clients allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) handleSignificantTimeChange];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_queue_addClientForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_clients objectForKey:v4];
  if (!v5)
  {
    v5 = [[UNCLocalNotificationClient alloc] initWithNotificationRepository:self->_notificationRepository pendingNotificationRepository:self->_pendingNotificationRepository notificationScheduleRepository:self->_notificationScheduleRepository locationMonitor:self->_locationMonitor bundleIdentifier:v4 queue:self->_queue];
    [(NSMutableDictionary *)self->_clients setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_queue_removeClientForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UNCNotificationSchedulingService *)self _queue_clientForBundleIdentifier:v4];
  [v5 invalidate];
  [(NSMutableDictionary *)self->_clients removeObjectForKey:v4];
}

@end