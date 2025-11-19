@interface SSLocaleObserver
- (SSLocaleObserver)init;
- (void)currentLocaleWithPreferredLanguagesBlock:(id)a3;
- (void)dealloc;
- (void)update;
@end

@implementation SSLocaleObserver

- (SSLocaleObserver)init
{
  v9.receiver = self;
  v9.super_class = SSLocaleObserver;
  v2 = [(SSLocaleObserver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.spotlight.SSLocaleObserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    currentLocale = v2->_currentLocale;
    v2->_currentLocale = 0;

    preferredLanguages = v2->_preferredLanguages;
    v2->_preferredLanguages = 0;

    v2->_isCJK = 0;
    [(SSLocaleObserver *)v2 update];
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, localeChangeCallback, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)update
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SSLocaleObserver_update__block_invoke;
  block[3] = &unk_1E8595778;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __26__SSLocaleObserver_update__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [MEMORY[0x1E695DF58] preferredLanguages];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  v8 = [*(*(a1 + 32) + 16) firstObject];
  v9 = [v8 lowercaseString];

  if (([v9 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"yue") & 1) != 0 || objc_msgSend(v9, "hasPrefix:", @"ko"))
  {
    *(*(a1 + 32) + 24) = 1;
  }
}

- (void)currentLocaleWithPreferredLanguagesBlock:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = objc_opt_new();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SSLocaleObserver_currentLocaleWithPreferredLanguagesBlock___block_invoke;
  v6[3] = &unk_1E8596550;
  v6[4] = self;
  v6[5] = &v17;
  v6[6] = &v11;
  v6[7] = &v7;
  dispatch_sync(queue, v6);
  v4[2](v4, v18[5], v12[5], *(v8 + 24));
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
}

void __61__SSLocaleObserver_currentLocaleWithPreferredLanguagesBlock___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 8) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1[4] + 16);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(a1[6] + 8) + 40) addObject:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  *(*(a1[7] + 8) + 24) = *(a1[4] + 24);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SSLocaleObserver_dealloc__block_invoke;
  block[3] = &unk_1E8595778;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = SSLocaleObserver;
  [(SSLocaleObserver *)&v4 dealloc];
}

void __27__SSLocaleObserver_dealloc__block_invoke(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E695E6E0];

  CFNotificationCenterRemoveObserver(LocalCenter, v3, v4, 0);
}

@end