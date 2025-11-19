@interface UNSApplicationService
- (BOOL)isApplicationForeground:(id)a3;
- (UNSApplicationService)initWithApplicationLauncher:(id)a3 categoryRepository:(id)a4 localizationService:(id)a5;
- (void)_queue_didChangeProcessState:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_willPresentNotification:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)didChangeProcessState:(id)a3 forBundleIdentifier:(id)a4;
- (void)willPresentNotification:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation UNSApplicationService

- (UNSApplicationService)initWithApplicationLauncher:(id)a3 categoryRepository:(id)a4 localizationService:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = UNSApplicationService;
  v12 = [(UNSApplicationService *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_applicationLauncher, a3);
    objc_storeStrong(&v13->_categoryRepository, a4);
    objc_storeStrong(&v13->_localizationService, a5);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    foregroundBundleIdentifiers = v13->_foregroundBundleIdentifiers;
    v13->_foregroundBundleIdentifiers = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.usernotificationsserver.ApplicationService", v16);
    queue = v13->_queue;
    v13->_queue = v17;
  }

  return v13;
}

- (void)didChangeProcessState:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UNSApplicationService_didChangeProcessState_forBundleIdentifier___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (BOOL)isApplicationForeground:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__UNSApplicationService_isApplicationForeground___block_invoke;
  block[3] = &unk_279E109D8;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __49__UNSApplicationService_isApplicationForeground___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)willPresentNotification:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__UNSApplicationService_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_279E10D78;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)_queue_didChangeProcessState:(id)a3 forBundleIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    if ([v9 isRunning] && (objc_msgSend(v9, "endowmentNamespaces"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", @"com.apple.frontboard.visibility"), v7, v8))
    {
      [(NSMutableSet *)self->_foregroundBundleIdentifiers addObject:v6];
    }

    else
    {
      [(NSMutableSet *)self->_foregroundBundleIdentifiers removeObject:v6];
    }
  }
}

- (void)_queue_willPresentNotification:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NSMutableSet *)self->_foregroundBundleIdentifiers containsObject:v9])
  {
    v11 = [(UNCLocalizationService *)self->_localizationService bundleWithIdentifier:v9];
    v12 = [objc_alloc(MEMORY[0x277D77C98]) initWithBundle:v11 categoryRepository:self->_categoryRepository];
    v13 = [v12 notificationForNotificationRecord:v8];
    applicationLauncher = self->_applicationLauncher;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__UNSApplicationService__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke;
    v15[3] = &unk_279E10DA0;
    v16 = v10;
    [(UNSApplicationLauncher *)applicationLauncher willPresentNotification:v13 forBundleIdentifier:v9 withCompletionHandler:v15];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 27, 0);
  }
}

uint64_t __98__UNSApplicationService__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

@end