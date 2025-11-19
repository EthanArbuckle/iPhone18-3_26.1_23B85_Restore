@interface UNCLocalizationService
- (UNCLocalizationService)init;
- (id)_queue_bundleWithIdentifier:(id)a3;
- (id)bundleWithIdentifier:(id)a3;
- (void)_queue_notificationSourcesDidInstall:(id)a3;
- (void)_queue_notificationSourcesDidUninstall:(id)a3;
- (void)_queue_unloadBundleWithIdentifier:(id)a3;
- (void)notificationSourcesDidInstall:(id)a3;
- (void)notificationSourcesDidUninstall:(id)a3;
- (void)unloadBundleWithIdentifier:(id)a3;
@end

@implementation UNCLocalizationService

- (UNCLocalizationService)init
{
  v11.receiver = self;
  v11.super_class = UNCLocalizationService;
  v2 = [(UNCLocalizationService *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.usernotifications.UNCLocalizationService", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIdentifierToBundle = v2->_bundleIdentifierToBundle;
    v2->_bundleIdentifierToBundle = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIdentifierToBundleURL = v2->_bundleIdentifierToBundleURL;
    v2->_bundleIdentifierToBundleURL = v8;
  }

  return v2;
}

- (id)bundleWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UNCLocalizationService_bundleWithIdentifier___block_invoke;
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

uint64_t __47__UNCLocalizationService_bundleWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_bundleWithIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)unloadBundleWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__UNCLocalizationService_unloadBundleWithIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)notificationSourcesDidInstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__UNCLocalizationService_notificationSourcesDidInstall___block_invoke;
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
  v7[2] = __58__UNCLocalizationService_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)_queue_bundleWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_bundleIdentifierToBundle objectForKey:v4];
    if (!v5)
    {
      v6 = [(NSMutableDictionary *)self->_bundleIdentifierToBundleURL objectForKey:v4];
      if (v6)
      {
        v5 = [objc_alloc(MEMORY[0x1E698E640]) initWithURL:v6];
        if (v5)
        {
          [(NSMutableDictionary *)self->_bundleIdentifierToBundle setObject:v5 forKey:v4];
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_queue_unloadBundleWithIdentifier:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_bundleIdentifierToBundle removeObjectForKey:?];
  }
}

- (void)_queue_notificationSourcesDidInstall:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        bundleIdentifierToBundleURL = self->_bundleIdentifierToBundleURL;
        v12 = [v9 bundleURL];
        [(NSMutableDictionary *)bundleIdentifierToBundleURL setObject:v12 forKey:v10];

        [(NSMutableDictionary *)self->_bundleIdentifierToBundle removeObjectForKey:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
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
        [(NSMutableDictionary *)self->_bundleIdentifierToBundleURL removeObjectForKey:v9];
        [(NSMutableDictionary *)self->_bundleIdentifierToBundle removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end