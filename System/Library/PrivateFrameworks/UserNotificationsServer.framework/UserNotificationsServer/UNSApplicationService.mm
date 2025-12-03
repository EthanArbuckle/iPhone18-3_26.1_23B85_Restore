@interface UNSApplicationService
- (BOOL)isApplicationForeground:(id)foreground;
- (UNSApplicationService)initWithApplicationLauncher:(id)launcher categoryRepository:(id)repository localizationService:(id)service;
- (void)_queue_didChangeProcessState:(id)state forBundleIdentifier:(id)identifier;
- (void)_queue_willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)didChangeProcessState:(id)state forBundleIdentifier:(id)identifier;
- (void)willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
@end

@implementation UNSApplicationService

- (UNSApplicationService)initWithApplicationLauncher:(id)launcher categoryRepository:(id)repository localizationService:(id)service
{
  launcherCopy = launcher;
  repositoryCopy = repository;
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = UNSApplicationService;
  v12 = [(UNSApplicationService *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_applicationLauncher, launcher);
    objc_storeStrong(&v13->_categoryRepository, repository);
    objc_storeStrong(&v13->_localizationService, service);
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

- (void)didChangeProcessState:(id)state forBundleIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UNSApplicationService_didChangeProcessState_forBundleIdentifier___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = stateCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = stateCopy;
  dispatch_async(queue, block);
}

- (BOOL)isApplicationForeground:(id)foreground
{
  foregroundCopy = foreground;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__UNSApplicationService_isApplicationForeground___block_invoke;
  block[3] = &unk_279E109D8;
  v9 = foregroundCopy;
  v10 = &v11;
  block[4] = self;
  v6 = foregroundCopy;
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

- (void)willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__UNSApplicationService_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_279E10D78;
  v15[4] = self;
  v16 = notificationCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = notificationCopy;
  dispatch_async(queue, v15);
}

- (void)_queue_didChangeProcessState:(id)state forBundleIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if ([stateCopy isRunning] && (objc_msgSend(stateCopy, "endowmentNamespaces"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", @"com.apple.frontboard.visibility"), v7, v8))
    {
      [(NSMutableSet *)self->_foregroundBundleIdentifiers addObject:identifierCopy];
    }

    else
    {
      [(NSMutableSet *)self->_foregroundBundleIdentifiers removeObject:identifierCopy];
    }
  }
}

- (void)_queue_willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(NSMutableSet *)self->_foregroundBundleIdentifiers containsObject:identifierCopy])
  {
    v11 = [(UNCLocalizationService *)self->_localizationService bundleWithIdentifier:identifierCopy];
    v12 = [objc_alloc(MEMORY[0x277D77C98]) initWithBundle:v11 categoryRepository:self->_categoryRepository];
    v13 = [v12 notificationForNotificationRecord:notificationCopy];
    applicationLauncher = self->_applicationLauncher;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__UNSApplicationService__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke;
    v15[3] = &unk_279E10DA0;
    v16 = handlerCopy;
    [(UNSApplicationLauncher *)applicationLauncher willPresentNotification:v13 forBundleIdentifier:identifierCopy withCompletionHandler:v15];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 27, 0);
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