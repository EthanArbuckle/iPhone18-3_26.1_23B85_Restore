@interface UNSRemoteNotificationCategoryRepository
- (UNSRemoteNotificationCategoryRepository)initWithServiceClient:(id)a3;
- (void)notifyDidChangeCategoriesForBundleIdentifier:(id)a3;
@end

@implementation UNSRemoteNotificationCategoryRepository

- (UNSRemoteNotificationCategoryRepository)initWithServiceClient:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = UNSRemoteNotificationCategoryRepository;
  v6 = [(UNSRemoteNotificationCategoryRepository *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceClient, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.UserNotificationsCore.UNSRemoteNotificationCategoryRepository", v8);

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.UserNotificationsCore.UNSRemoteNotificationCategoryRepository.call-out", v10);

    v12 = [[UNCKeyedObservable alloc] initWithQueue:v9 callOutQueue:v11];
    observable = v7->_observable;
    v7->_observable = v12;
  }

  return v7;
}

- (void)notifyDidChangeCategoriesForBundleIdentifier:(id)a3
{
  v4 = a3;
  observable = self->_observable;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__UNSRemoteNotificationCategoryRepository_notifyDidChangeCategoriesForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6F98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(UNCKeyedObservable *)observable notifyObserversKey:v6 usingBlock:v7];
}

@end