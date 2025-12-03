@interface UNNotificationSettingsCenter
+ (id)currentNotificationSettingsCenter;
- (BOOL)mutateNotificationSettingsForSourceIdentifier:(id)identifier mutatingBlock:(id)block error:(id *)error;
- (BOOL)setSourceSettings:(id)settings error:(id *)error;
- (UNNotificationSettingsCenterDelegate)delegate;
- (id)_init;
- (id)allNotificationSources;
- (id)notificationSourceWithIdentifier:(id)identifier;
- (id)notificationSourcesWithFilter:(id)filter;
- (id)notificationSourcesWithIdentifiers:(id)identifiers;
- (id)notificationSystemSettings;
- (id)sourceWithIdentifier:(id)identifier;
- (void)addObserver:(id)observer;
- (void)authorizationWithOptions:(unint64_t)options forNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)replaceNotificationSettings:(id)settings forNotificationSourceIdentifier:(id)identifier;
- (void)replaceNotificationTopicSettings:(id)settings forNotificationSourceIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier;
- (void)resetScheduledDeliverySetting;
- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setNotificationSystemSettings:(id)settings;
- (void)settingsServiceConnection:(id)connection didUpdateNotificationSourcesWithIdentifiers:(id)identifiers;
- (void)settingsServiceConnection:(id)connection didUpdateNotificationSystemSettings:(id)settings;
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
  notificationSystemSettings = [v2 notificationSystemSettings];

  return notificationSystemSettings;
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

  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  observers = v2->_observers;
  v2->_observers = weakObjectsHashTable;

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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__UNNotificationSettingsCenter_addObserver___block_invoke;
  v7[3] = &unk_279E14DA0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__UNNotificationSettingsCenter_removeObserver___block_invoke;
  v7[3] = &unk_279E14DA0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (id)sourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v5 = [v4 notificationSourceWithIdentifier:identifierCopy];

  return v5;
}

- (id)notificationSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v5 = [v4 notificationSourceWithIdentifier:identifierCopy];

  return v5;
}

- (id)notificationSourcesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v5 = [v4 notificationSourcesWithIdentifiers:identifiersCopy];

  return v5;
}

- (id)allNotificationSources
{
  v2 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v3 = [v2 notificationSourcesWithFilter:@"_UNNotificationSourceFilterAll"];

  return v3;
}

- (id)notificationSourcesWithFilter:(id)filter
{
  filterCopy = filter;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v5 = [v4 notificationSourcesWithFilter:filterCopy];

  return v5;
}

- (void)authorizationWithOptions:(unint64_t)options forNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v9 authorizationWithOptions:options forNotificationSourceIdentifier:identifierCopy withCompletionHandler:handlerCopy];
}

- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v7 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v7 revokeAuthorizationForNotificationSourceIdentifier:identifierCopy withCompletionHandler:handlerCopy];
}

- (BOOL)mutateNotificationSettingsForSourceIdentifier:(id)identifier mutatingBlock:(id)block error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  v9 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v10 = [v9 notificationSettingsForSourceIdentifier:identifierCopy];

  v11 = [v10 mutableCopy];
  if (v11)
  {
    v12 = v11;
    if (blockCopy)
    {
      v13 = blockCopy[2](blockCopy, v11);

      error = +[UNUserNotificationSettingsServiceConnection sharedInstance];
      [error replaceNotificationSettings:v13 forNotificationSourceIdentifier:identifierCopy];

      LOBYTE(error) = 1;
      v12 = v13;
    }

    else if (error)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA050];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"mutatingBlock cannot be nil";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *error = [v18 errorWithDomain:v19 code:4001 userInfo:v20];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA050];
      v25 = *MEMORY[0x277CCA450];
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"settings object is nil for '%@'", identifierCopy];
      v26[0] = identifierCopy;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *error = [v14 errorWithDomain:v15 code:4000 userInfo:v17];

      LOBYTE(error) = 0;
    }

    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)replaceNotificationSettings:(id)settings forNotificationSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  settingsCopy = settings;
  v7 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v7 replaceNotificationSettings:settingsCopy forNotificationSourceIdentifier:identifierCopy];
}

- (BOOL)setSourceSettings:(id)settings error:(id *)error
{
  settingsCopy = settings;
  v6 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  v7 = [v6 setSourceSettings:settingsCopy];

  if (error && v7)
  {
    v8 = v7;
    *error = v7;
  }

  return v7 == 0;
}

- (void)replaceNotificationTopicSettings:(id)settings forNotificationSourceIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier
{
  topicIdentifierCopy = topicIdentifier;
  identifierCopy = identifier;
  settingsCopy = settings;
  v10 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v10 replaceNotificationTopicSettings:settingsCopy forNotificationSourceIdentifier:identifierCopy topicIdentifier:topicIdentifierCopy];
}

- (void)setNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  v4 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v4 setNotificationSystemSettings:settingsCopy];
}

- (void)resetScheduledDeliverySetting
{
  v2 = +[UNUserNotificationSettingsServiceConnection sharedInstance];
  [v2 resetScheduledDeliverySetting];
}

- (void)settingsServiceConnection:(id)connection didUpdateNotificationSourcesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __102__UNNotificationSettingsCenter_settingsServiceConnection_didUpdateNotificationSourcesWithIdentifiers___block_invoke;
  v14 = &unk_279E14DA0;
  selfCopy = self;
  v7 = identifiersCopy;
  v16 = v7;
  dispatch_async(queue, &v11);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 userNotificationSettingsCenter:self didUpdateNotificationSourceIdentifiers:{v7, v11, v12, v13, v14, selfCopy}];
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

- (void)settingsServiceConnection:(id)connection didUpdateNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __94__UNNotificationSettingsCenter_settingsServiceConnection_didUpdateNotificationSystemSettings___block_invoke;
  v14 = &unk_279E14DA0;
  selfCopy = self;
  v7 = settingsCopy;
  v16 = v7;
  dispatch_async(queue, &v11);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 userNotificationSettingsCenter:self didUpdateNotificationSystemSettings:{v7, v11, v12, v13, v14, selfCopy}];
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