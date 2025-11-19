@interface UNNotificationSettingsCenter
+ (id)currentNotificationSettingsCenter;
- (BOOL)mutateNotificationSettingsForSourceIdentifier:(id)a3 mutatingBlock:(id)a4 error:(id *)a5;
- (BOOL)setSourceSettings:(id)a3 error:(id *)a4;
- (UNNotificationSettingsCenterDelegate)delegate;
- (id)_init;
- (id)allNotificationSources;
- (id)notificationSourceWithIdentifier:(id)a3;
- (id)notificationSourcesWithFilter:(id)a3;
- (id)notificationSourcesWithIdentifiers:(id)a3;
- (id)notificationSystemSettings;
- (id)sourceWithIdentifier:(id)a3;
- (void)addObserver:(id)a3;
- (void)authorizationWithOptions:(unint64_t)a3 forNotificationSourceIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)replaceNotificationSettings:(id)a3 forNotificationSourceIdentifier:(id)a4;
- (void)replaceNotificationTopicSettings:(id)a3 forNotificationSourceIdentifier:(id)a4 topicIdentifier:(id)a5;
- (void)resetScheduledDeliverySetting;
- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setNotificationSystemSettings:(id)a3;
- (void)settingsServiceConnection:(id)a3 didUpdateNotificationSourcesWithIdentifiers:(id)a4;
- (void)settingsServiceConnection:(id)a3 didUpdateNotificationSystemSettings:(id)a4;
@end

@implementation UNNotificationSettingsCenter

+ (id)currentNotificationSettingsCenter
{
  if (currentNotificationSettingsCenter_onceToken != -1)
  {
    +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
  }

  v3 = currentNotificationSettingsCenter___sharedInstance;

  return v3;
}

- (id)notificationSystemSettings
{
  v2 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v3 = [v2 notificationSystemSettings];

  return v3;
}

uint64_t __65__UNNotificationSettingsCenter_currentNotificationSettingsCenter__block_invoke()
{
  currentNotificationSettingsCenter___sharedInstance = [[UNNotificationSettingsCenter alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = UNNotificationSettingsCenter;
  v2 = [(UNNotificationSettingsCenter *)&v10 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.usernotifications.UNNotificationSettingsCenter", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  observers = v2->_observers;
  v2->_observers = v6;

  v8 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v8 addObserver:v2];

  return v2;
}

- (void)dealloc
{
  v3 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = UNNotificationSettingsCenter;
  [(UNNotificationSettingsCenter *)&v4 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (obj && WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);

    v6 = obj;
    if (v5 != obj)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  objc_storeWeak(&self->_delegate, obj);
  v6 = obj;
LABEL_7:
}

- (UNNotificationSettingsCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__UNNotificationSettingsCenter_addObserver___block_invoke;
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
  v7[2] = __47__UNNotificationSettingsCenter_removeObserver___block_invoke;
  v7[3] = &unk_279E14DA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)sourceWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v5 = [v4 notificationSourceWithIdentifier:v3];

  return v5;
}

- (id)notificationSourceWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v5 = [v4 notificationSourceWithIdentifier:v3];

  return v5;
}

- (id)notificationSourcesWithIdentifiers:(id)a3
{
  v3 = a3;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v5 = [v4 notificationSourcesWithIdentifiers:v3];

  return v5;
}

- (id)allNotificationSources
{
  v2 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v3 = [v2 notificationSourcesWithFilter:@"_UNNotificationSourceFilterAll"];

  return v3;
}

- (id)notificationSourcesWithFilter:(id)a3
{
  v3 = a3;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v5 = [v4 notificationSourcesWithFilter:v3];

  return v5;
}

- (void)authorizationWithOptions:(unint64_t)a3 forNotificationSourceIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v9 authorizationWithOptions:a3 forNotificationSourceIdentifier:v8 withCompletionHandler:v7];
}

- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v7 revokeAuthorizationForNotificationSourceIdentifier:v6 withCompletionHandler:v5];
}

- (BOOL)mutateNotificationSettingsForSourceIdentifier:(id)a3 mutatingBlock:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v10 = [v9 notificationSettingsForSourceIdentifier:v7];

  v11 = [v10 mutableCopy];
  if (v11)
  {
    v12 = v11;
    if (v8)
    {
      v13 = v8[2](v8, v11);

      a5 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
      [a5 replaceNotificationSettings:v13 forNotificationSourceIdentifier:v7];

      LOBYTE(a5) = 1;
      v12 = v13;
    }

    else if (a5)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA050];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"mutatingBlock cannot be nil";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *a5 = [v18 errorWithDomain:v19 code:4001 userInfo:v20];

      LOBYTE(a5) = 0;
    }
  }

  else
  {
    if (a5)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA050];
      v25 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings object is nil for '%@'", v7];
      v26[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *a5 = [v14 errorWithDomain:v15 code:4000 userInfo:v17];

      LOBYTE(a5) = 0;
    }

    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return a5;
}

- (void)replaceNotificationSettings:(id)a3 forNotificationSourceIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v7 replaceNotificationSettings:v6 forNotificationSourceIdentifier:v5];
}

- (BOOL)setSourceSettings:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v7 = [v6 setSourceSettings:v5];

  if (a4 && v7)
  {
    v8 = v7;
    *a4 = v7;
  }

  return v7 == 0;
}

- (void)replaceNotificationTopicSettings:(id)a3 forNotificationSourceIdentifier:(id)a4 topicIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v10 replaceNotificationTopicSettings:v9 forNotificationSourceIdentifier:v8 topicIdentifier:v7];
}

- (void)setNotificationSystemSettings:(id)a3
{
  v3 = a3;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v4 setNotificationSystemSettings:v3];
}

- (void)resetScheduledDeliverySetting
{
  v2 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v2 resetScheduledDeliverySetting];
}

- (void)settingsServiceConnection:(id)a3 didUpdateNotificationSourcesWithIdentifiers:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __102__UNNotificationSettingsCenter_settingsServiceConnection_didUpdateNotificationSourcesWithIdentifiers___block_invoke;
  v14 = &unk_279E14DA0;
  v15 = self;
  v7 = v5;
  v16 = v7;
  dispatch_async(queue, &v11);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 userNotificationSettingsCenter:self didUpdateNotificationSourceIdentifiers:{v7, v11, v12, v13, v14, v15}];
  }
}

void __102__UNNotificationSettingsCenter_settingsServiceConnection_didUpdateNotificationSourcesWithIdentifiers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 userNotificationSettingsCenter:*(a1 + 32) didUpdateNotificationSourceIdentifiers:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)settingsServiceConnection:(id)a3 didUpdateNotificationSystemSettings:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __94__UNNotificationSettingsCenter_settingsServiceConnection_didUpdateNotificationSystemSettings___block_invoke;
  v14 = &unk_279E14DA0;
  v15 = self;
  v7 = v5;
  v16 = v7;
  dispatch_async(queue, &v11);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 userNotificationSettingsCenter:self didUpdateNotificationSystemSettings:{v7, v11, v12, v13, v14, v15}];
  }
}

void __94__UNNotificationSettingsCenter_settingsServiceConnection_didUpdateNotificationSystemSettings___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 userNotificationSettingsCenter:*(a1 + 32) didUpdateNotificationSystemSettings:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end