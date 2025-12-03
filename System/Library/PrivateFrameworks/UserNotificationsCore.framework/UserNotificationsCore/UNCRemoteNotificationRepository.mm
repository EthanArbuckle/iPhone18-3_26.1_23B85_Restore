@interface UNCRemoteNotificationRepository
- (UNCRemoteNotificationRepository)initWithServiceClient:(id)client;
- (id)_coreServiceClientOrNilWithWarningForSelector:(SEL)selector;
- (id)allBundleIdentifiers;
- (id)badgeNumberForBundleIdentifier:(id)identifier;
- (id)notificationRecordForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (id)notificationRecordsForBundleIdentifier:(id)identifier;
- (void)notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)identifier;
- (void)notifyDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier;
- (void)removeAllNotificationRecordsForBundleIdentifier:(id)identifier;
- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)identifier;
- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier;
- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)identifier;
- (void)removeSimilarNotificationRecords:(id)records bundleIdentifier:(id)identifier;
- (void)removeStoreForBundleIdentifier:(id)identifier;
- (void)setBadgeCount:(int64_t)count forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
@end

@implementation UNCRemoteNotificationRepository

- (UNCRemoteNotificationRepository)initWithServiceClient:(id)client
{
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = UNCRemoteNotificationRepository;
  v6 = [(UNCRemoteNotificationRepository *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceClient, client);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.UserNotificationsCore.UNCRemoteNotificationRepository", v8);

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.UserNotificationsCore.UNCRemoteNotificationRepository.call-out", v10);

    v12 = [[UNCKeyedObservable alloc] initWithQueue:v9 callOutQueue:v11];
    observable = v7->_observable;
    v7->_observable = v12;
  }

  return v7;
}

- (void)notifyDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier
{
  updatesCopy = updates;
  identifierCopy = identifier;
  observable = self->_observable;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__UNCRemoteNotificationRepository_notifyDidPerformUpdates_forBundleIdentifier___block_invoke;
  v11[3] = &unk_1E85D6FC0;
  v11[4] = self;
  v12 = updatesCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = updatesCopy;
  [(UNCKeyedObservable *)observable notifyObserversKey:v9 usingBlock:v11];
}

- (void)notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  observable = self->_observable;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__UNCRemoteNotificationRepository_notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6FE8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(UNCKeyedObservable *)observable notifyObserversKey:v6 usingBlock:v7];
}

void __92__UNCRemoteNotificationRepository_notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 notificationRepository:*(a1 + 32) didDiscoverContentOnFirstUnlockForBundleIdentifier:*(a1 + 40)];
  }
}

- (id)allBundleIdentifiers
{
  v2 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  allBundleIdentifiersForNotifications = [v2 allBundleIdentifiersForNotifications];

  return allBundleIdentifiersForNotifications;
}

- (id)notificationRecordsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  v7 = [v6 notificationRecordsForBundleIdentifier:identifierCopy];

  return v7;
}

- (id)notificationRecordForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v9 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  v10 = [v9 notificationRecordForIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy];

  return v10;
}

- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier
{
  serviceClient = self->_serviceClient;
  identifierCopy = identifier;
  allObjects = [identifiers allObjects];
  [(UNCNotificationCommonServiceServerProtocol *)serviceClient removeNotificationRecordsForIdentifiers:allObjects bundleIdentifier:identifierCopy];
}

- (void)removeSimilarNotificationRecords:(id)records bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  recordsCopy = records;
  v9 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v9 removeSimilarNotificationRecords:recordsCopy forBundleIdentifier:identifierCopy];
}

- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v6 removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:identifierCopy];
}

- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v6 removeInvalidNotificationRecordsForBundleIdentifier:identifierCopy];
}

- (void)removeAllNotificationRecordsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v6 removeAllNotificationRecordsForBundleIdentifier:identifierCopy];
}

- (void)removeStoreForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v6 removeStoreForBundleIdentifier:identifierCopy];
}

- (id)badgeNumberForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  v7 = [v6 badgeNumberForBundleIdentifier:identifierCopy];

  return v7;
}

- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  numberCopy = number;
  v12 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v12 setBadgeNumber:numberCopy forBundleIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)setBadgeCount:(int64_t)count forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v11 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v11 setBadgeCount:count forBundleIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  stringCopy = string;
  v12 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v12 setBadgeString:stringCopy forBundleIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (id)_coreServiceClientOrNilWithWarningForSelector:(SEL)selector
{
  serviceClient = self->_serviceClient;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_serviceClient;
  }

  else
  {
    v7 = *MEMORY[0x1E6983370];
    v9 = NSStringFromSelector(selector);
    UNLogToDeveloper();

    v6 = 0;
  }

  return v6;
}

@end