@interface UNCPushRegistrationRepository
- (UNCPushRegistrationRepository)initWithDirectory:(id)a3 librarian:(id)a4;
- (id)_queue_registrationForBundleIdentifier:(id)a3;
- (id)allBundleIdentifiers;
- (id)registrationForBundleIdentifier:(id)a3;
- (void)_queue_setRegistration:(id)a3 forBundleIdentifier:(id)a4;
- (void)notificationSourcesDidUninstall:(id)a3;
- (void)removeRegistrationForBundleIdentifier:(id)a3;
- (void)setRegistration:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation UNCPushRegistrationRepository

- (UNCPushRegistrationRepository)initWithDirectory:(id)a3 librarian:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[UNCKeyedDictionaryRepository alloc] initWithDirectory:v7 fileName:@"PushRegistration" pathExtension:@"plist" librarian:v6];

  v14.receiver = self;
  v14.super_class = UNCPushRegistrationRepository;
  v9 = [(UNCPushRegistrationRepository *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotificationsserver.PushRegistrationRepository", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_repository, v8);
  }

  return v9;
}

- (id)allBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__UNCPushRegistrationRepository_allBundleIdentifiers__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __53__UNCPushRegistrationRepository_allBundleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)registrationForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__UNCPushRegistrationRepository_registrationForBundleIdentifier___block_invoke;
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

uint64_t __65__UNCPushRegistrationRepository_registrationForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_registrationForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setRegistration:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UNCPushRegistrationRepository_setRegistration_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeRegistrationForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__UNCPushRegistrationRepository_removeRegistrationForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)notificationSourcesDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__UNCPushRegistrationRepository_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __65__UNCPushRegistrationRepository_notificationSourcesDidUninstall___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) bundleIdentifier];
        [v7 _queue_removeRegistrationForBundleIdentifier:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_queue_registrationForBundleIdentifier:(id)a3
{
  v3 = [(UNCKeyedDictionaryRepository *)self->_repository dictionaryForKey:a3];
  if (v3)
  {
    v4 = (*(UNCDictionaryToUNCPushRegistration + 2))(UNCDictionaryToUNCPushRegistration, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_queue_setRegistration:(id)a3 forBundleIdentifier:(id)a4
{
  repository = self->_repository;
  v6 = UNCPushRegistrationToDictionary;
  v7 = *(UNCPushRegistrationToDictionary + 2);
  v8 = a4;
  v9 = v7(v6, a3);
  [(UNCKeyedDictionaryRepository *)repository setDictionary:v9 forKey:v8];
}

@end