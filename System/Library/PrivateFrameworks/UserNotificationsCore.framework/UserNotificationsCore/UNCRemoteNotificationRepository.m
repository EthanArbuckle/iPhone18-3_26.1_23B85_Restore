@interface UNCRemoteNotificationRepository
- (UNCRemoteNotificationRepository)initWithServiceClient:(id)a3;
- (id)_coreServiceClientOrNilWithWarningForSelector:(SEL)a3;
- (id)allBundleIdentifiers;
- (id)badgeNumberForBundleIdentifier:(id)a3;
- (id)notificationRecordForIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (id)notificationRecordsForBundleIdentifier:(id)a3;
- (void)notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)a3;
- (void)notifyDidPerformUpdates:(id)a3 forBundleIdentifier:(id)a4;
- (void)removeAllNotificationRecordsForBundleIdentifier:(id)a3;
- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)a3;
- (void)removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4;
- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)a3;
- (void)removeSimilarNotificationRecords:(id)a3 bundleIdentifier:(id)a4;
- (void)removeStoreForBundleIdentifier:(id)a3;
- (void)setBadgeCount:(int64_t)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation UNCRemoteNotificationRepository

- (UNCRemoteNotificationRepository)initWithServiceClient:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = UNCRemoteNotificationRepository;
  v6 = [(UNCRemoteNotificationRepository *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceClient, a3);
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

- (void)notifyDidPerformUpdates:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  observable = self->_observable;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__UNCRemoteNotificationRepository_notifyDidPerformUpdates_forBundleIdentifier___block_invoke;
  v11[3] = &unk_1E85D6FC0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(UNCKeyedObservable *)observable notifyObserversKey:v9 usingBlock:v11];
}

- (void)notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)a3
{
  v4 = a3;
  observable = self->_observable;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__UNCRemoteNotificationRepository_notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
  v3 = [v2 allBundleIdentifiersForNotifications];

  return v3;
}

- (id)notificationRecordsForBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  v7 = [v6 notificationRecordsForBundleIdentifier:v5];

  return v7;
}

- (id)notificationRecordForIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  v10 = [v9 notificationRecordForIdentifier:v8 bundleIdentifier:v7];

  return v10;
}

- (void)removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4
{
  serviceClient = self->_serviceClient;
  v6 = a4;
  v7 = [a3 allObjects];
  [(UNCNotificationCommonServiceServerProtocol *)serviceClient removeNotificationRecordsForIdentifiers:v7 bundleIdentifier:v6];
}

- (void)removeSimilarNotificationRecords:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v9 removeSimilarNotificationRecords:v8 forBundleIdentifier:v7];
}

- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v6 removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:v5];
}

- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v6 removeInvalidNotificationRecordsForBundleIdentifier:v5];
}

- (void)removeAllNotificationRecordsForBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v6 removeAllNotificationRecordsForBundleIdentifier:v5];
}

- (void)removeStoreForBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v6 removeStoreForBundleIdentifier:v5];
}

- (id)badgeNumberForBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  v7 = [v6 badgeNumberForBundleIdentifier:v5];

  return v7;
}

- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v12 setBadgeNumber:v11 forBundleIdentifier:v10 completionHandler:v9];
}

- (void)setBadgeCount:(int64_t)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v11 setBadgeCount:a3 forBundleIdentifier:v10 completionHandler:v9];
}

- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(UNCRemoteNotificationRepository *)self _coreServiceClientOrNilWithWarningForSelector:a2];
  [v12 setBadgeString:v11 forBundleIdentifier:v10 completionHandler:v9];
}

- (id)_coreServiceClientOrNilWithWarningForSelector:(SEL)a3
{
  serviceClient = self->_serviceClient;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_serviceClient;
  }

  else
  {
    v7 = *MEMORY[0x1E6983370];
    v9 = NSStringFromSelector(a3);
    UNLogToDeveloper();

    v6 = 0;
  }

  return v6;
}

@end