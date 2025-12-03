@interface UNCNotificationTopicRepository
- (UNCNotificationTopicRepository)initWithDataStoreRepository:(id)repository observable:(id)observable;
- (UNCNotificationTopicRepository)initWithDirectory:(id)directory librarian:(id)librarian repositoryProtectionStrategy:(id)strategy;
- (id)_queue_topicsForBundleIdentifier:(id)identifier;
- (id)allBundleIdentifiers;
- (id)topicsForBundleIdentifier:(id)identifier;
- (void)_queue_notificationSourcesDidUninstall:(id)uninstall;
- (void)_queue_setTopics:(id)topics forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock;
- (void)notificationSourcesDidUninstall:(id)uninstall;
- (void)removeObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)setTopics:(id)topics forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
@end

@implementation UNCNotificationTopicRepository

- (UNCNotificationTopicRepository)initWithDirectory:(id)directory librarian:(id)librarian repositoryProtectionStrategy:(id)strategy
{
  strategyCopy = strategy;
  librarianCopy = librarian;
  directoryCopy = directory;
  v11 = [[UNCKeyedDataStoreRepository alloc] initWithDirectory:directoryCopy fileName:@"Topics" pathExtension:@"plist" librarian:librarianCopy repositoryProtectionStrategy:strategyCopy objectIdentifierKey:0 maxObjectsPerKey:[(UNCNotificationTopicRepository *)self _maxObjectsPerKey]];

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.NotificationTopicRepository.observable", v12);

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.NotificationTopicRepository.call-out", v14);

  v16 = [[UNCKeyedObservable alloc] initWithQueue:v13 callOutQueue:v15];
  v17 = [(UNCNotificationTopicRepository *)self initWithDataStoreRepository:v11 observable:v16];

  return v17;
}

- (UNCNotificationTopicRepository)initWithDataStoreRepository:(id)repository observable:(id)observable
{
  repositoryCopy = repository;
  observableCopy = observable;
  v14.receiver = self;
  v14.super_class = UNCNotificationTopicRepository;
  v9 = [(UNCNotificationTopicRepository *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotificationsserver.NotificationTopicRepository", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_repository, repository);
    objc_storeStrong(&v9->_observable, observable);
  }

  return v9;
}

- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__UNCNotificationTopicRepository_addObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = observerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = observerCopy;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)observer forBundleIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UNCNotificationTopicRepository_removeObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = observerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = observerCopy;
  dispatch_sync(queue, block);
}

- (id)allBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UNCNotificationTopicRepository_allBundleIdentifiers__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __54__UNCNotificationTopicRepository_allBundleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)topicsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__UNCNotificationTopicRepository_topicsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F48;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __60__UNCNotificationTopicRepository_topicsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_topicsForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setTopics:(id)topics forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  topicsCopy = topics;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__UNCNotificationTopicRepository_setTopics_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E85D7808;
  v15[4] = self;
  v16 = topicsCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = topicsCopy;
  dispatch_async(queue, v15);
}

- (void)notificationSourcesDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__UNCNotificationTopicRepository_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = uninstallCopy;
  v6 = uninstallCopy;
  dispatch_sync(queue, v7);
}

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__UNCNotificationTopicRepository_contentProtectionStateChangedForFirstUnlock___block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_queue_topicsForBundleIdentifier:(id)identifier
{
  v3 = [(UNCKeyedDataStoreRepository *)self->_repository objectsForKey:identifier];
  v4 = [v3 bs_map:UNCDictionaryToNotificationTopicRecord];

  return v4;
}

- (void)_queue_setTopics:(id)topics forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  topicsCopy = topics;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = [(UNCNotificationTopicRepository *)self _queue_topicsForBundleIdentifier:identifierCopy];
  if ((UNEqualObjects() & 1) == 0)
  {
    v12 = [topicsCopy bs_map:UNCNotificationTopicRecordToDictionary];
    [(UNCKeyedDataStoreRepository *)self->_repository setObjects:v12 forKey:identifierCopy];
    observable = self->_observable;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__UNCNotificationTopicRepository__queue_setTopics_forBundleIdentifier_withCompletionHandler___block_invoke;
    v14[3] = &unk_1E85D7B48;
    v14[4] = self;
    v15 = identifierCopy;
    [(UNCKeyedObservable *)observable notifyObserversKey:v15 usingBlock:v14];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_queue_notificationSourcesDidUninstall:(id)uninstall
{
  v16 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        [(UNCKeyedDataStoreRepository *)self->_repository removeStoreForKey:bundleIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [uninstallCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end