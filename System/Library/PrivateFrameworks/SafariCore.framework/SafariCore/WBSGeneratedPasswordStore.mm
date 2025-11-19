@interface WBSGeneratedPasswordStore
+ (WBSGeneratedPasswordStore)sharedStore;
- (NSArray)allUnexpiredGeneratedPasswords;
- (NSDate)currentExpirationDate;
- (WBSGeneratedPasswordStore)init;
- (id)_generatedPasswordsFilteringExpiredPasswords:(id)a3 olderThanDate:(id)a4;
- (id)generatedPasswordsForProtectionSpace:(id)a3 options:(unint64_t)a4;
- (id)generatedPasswordsMatchingSavedAccount:(id)a3;
- (void)_loadIfNeeded;
- (void)_purgeExpiredPasswordsOnInternalQueue:(id)a3;
- (void)_removeAllGeneratedPasswordsOnInternalQueue;
- (void)_reset;
- (void)addGeneratedPassword:(id)a3 forProtectionSpace:(id)a4 inPrivateBrowsingSession:(BOOL)a5 completionHandler:(id)a6;
- (void)clearGeneratedPasswordsMatchingSavedAccount:(id)a3 completionHandler:(id)a4;
- (void)debug_removeAll;
- (void)preWarm;
- (void)removeGeneratedPassword:(id)a3 completionHandler:(id)a4;
- (void)removeGeneratedPasswordMatchingSavedAccount:(id)a3;
- (void)synchronouslyRemoveGeneratedPasswordsNewerThanDate:(id)a3;
- (void)updateGeneratedPassword:(id)a3 withPassword:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSGeneratedPasswordStore

+ (WBSGeneratedPasswordStore)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[WBSGeneratedPasswordStore sharedStore];
  }

  v3 = sharedStore_sharedStore;

  return v3;
}

void __40__WBSGeneratedPasswordStore_sharedStore__block_invoke()
{
  v0 = objc_alloc_init(WBSGeneratedPasswordStore);
  v1 = sharedStore_sharedStore;
  sharedStore_sharedStore = v0;
}

- (WBSGeneratedPasswordStore)init
{
  v21.receiver = self;
  v21.super_class = WBSGeneratedPasswordStore;
  v2 = [(WBSGeneratedPasswordStore *)&v21 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.SafariCore.%@.%p", v5, v2];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = [[WBSKeychainCredentialNotificationMonitor alloc] initWithCoalescingInterval:0.0];
    keychainMonitor = v2->_keychainMonitor;
    v2->_keychainMonitor = v9;

    objc_initWeak(&location, v2);
    v11 = v2->_queue;
    v12 = v2->_keychainMonitor;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __33__WBSGeneratedPasswordStore_init__block_invoke;
    v17[3] = &unk_1E7CF1F78;
    v13 = v11;
    v18 = v13;
    objc_copyWeak(&v19, &location);
    v14 = [(WBSKeychainCredentialNotificationMonitor *)v12 addObserverWithBlock:v17];
    [(WBSGeneratedPasswordStore *)v2 preWarm];
    v15 = v2;
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)preWarm
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__WBSGeneratedPasswordStore_preWarm__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NSArray)allUnexpiredGeneratedPasswords
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
  v5[2] = __59__WBSGeneratedPasswordStore_allUnexpiredGeneratedPasswords__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_loadIfNeeded
{
  if (!self->_cachedGeneratedPasswords)
  {
    v21 = v2;
    v22 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Reloading generated passwords store", buf, 2u);
    }

    v6 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v7 = [v6 safari_allGeneratedPasswordItems];

    v8 = [v7 safari_mapObjectsUsingBlock:&__block_literal_global_18_0];
    v9 = [(WBSGeneratedPasswordStore *)self currentExpirationDate];
    v10 = [(WBSGeneratedPasswordStore *)self _generatedPasswordsFilteringExpiredPasswords:v8 olderThanDate:v9];

    v11 = [v10 first];
    v12 = [v11 mutableCopy];
    cachedGeneratedPasswords = self->_cachedGeneratedPasswords;
    self->_cachedGeneratedPasswords = v12;

    v14 = [v10 second];
    v15 = [v14 count];

    if (v15)
    {
      queue = self->_queue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __42__WBSGeneratedPasswordStore__loadIfNeeded__block_invoke_2;
      v18[3] = &unk_1E7CF1708;
      v18[4] = self;
      v19 = v10;
      dispatch_async(queue, v18);
    }

    v17 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v17, OS_LOG_TYPE_DEFAULT, "Finished reloading generated passwords store", buf, 2u);
    }
  }
}

- (NSDate)currentExpirationDate
{
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:-30 toDate:v2 options:0];

  v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v6 = [v5 valueForKey:@"DebugGeneratedPasswordsExpirationTimeInMinutes"];

  if (v6)
  {
    v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v8 = [v7 integerForKey:@"DebugGeneratedPasswordsExpirationTimeInMinutes"];

    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [v9 dateByAddingUnit:64 value:-v8 toDate:v2 options:0];

    v4 = v10;
  }

  return v4;
}

void __59__WBSGeneratedPasswordStore_allUnexpiredGeneratedPasswords__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNeeded];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __33__WBSGeneratedPasswordStore_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__WBSGeneratedPasswordStore_init__block_invoke_2;
  block[3] = &unk_1E7CF15E8;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __33__WBSGeneratedPasswordStore_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEFAULT, "Generated passwords store received Keychain update notification", buf, 2u);
    }

    if (WeakRetained[32] == 1)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEFAULT, "Generated passwords store is ignoring Keychain update notifications", buf, 2u);
      }
    }

    else
    {
      [WeakRetained _reset];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33__WBSGeneratedPasswordStore_init__block_invoke_10;
      block[3] = &unk_1E7CF15E8;
      objc_copyWeak(&v6, (a1 + 32));
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v6);
    }
  }
}

void __33__WBSGeneratedPasswordStore_init__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"WBSGeneratedPasswordStoreDidChangeNotification" object:v3];

    WeakRetained = v3;
  }
}

WBSGeneratedPassword *__42__WBSGeneratedPasswordStore__loadIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSGeneratedPassword alloc] initWithKeychainItemDictionary:v2];

  return v3;
}

void __42__WBSGeneratedPasswordStore__loadIfNeeded__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) second];
  [v1 _purgeExpiredPasswordsOnInternalQueue:v2];
}

- (void)_reset
{
  cachedGeneratedPasswords = self->_cachedGeneratedPasswords;
  self->_cachedGeneratedPasswords = 0;
}

- (void)_purgeExpiredPasswordsOnInternalQueue:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Purging expired generated passwords", buf, 2u);
    }

    v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v7 = [v6 valueForKey:@"DebugGeneratedPasswordsExpirationTimeInMinutes"];

    if (v7)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Removing debug generated passwords limit of %@ minutes", buf, 0xCu);
      }

      v9 = [MEMORY[0x1E695E000] safari_browserDefaults];
      [v9 removeObjectForKey:@"DebugGeneratedPasswordsExpirationTimeInMinutes"];
    }

    v24 = v7;
    v25 = self;
    self->_shouldIgnoreKeychainUpdates = 1;
    v10 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v4;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = WBS_LOG_CHANNEL_PREFIXPasswords();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            v19 = [v16 generationDate];
            v20 = [v16 protectionSpace];
            v21 = [v20 host];
            *buf = 138412546;
            v32 = v19;
            v33 = 2112;
            v34 = v21;
            _os_log_impl(&dword_1B8447000, v18, OS_LOG_TYPE_DEFAULT, "Removing password generated on %@ for host %@", buf, 0x16u);
          }

          [v10 safari_deleteGeneratedPassword:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v13);
    }

    v25->_shouldIgnoreKeychainUpdates = 0;
    v22 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v22, OS_LOG_TYPE_DEFAULT, "Finished purging expired generated passwords", buf, 2u);
    }

    v4 = v26;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_generatedPasswordsFilteringExpiredPasswords:(id)a3 olderThanDate:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = [v6 array];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __88__WBSGeneratedPasswordStore__generatedPasswordsFilteringExpiredPasswords_olderThanDate___block_invoke;
  v18 = &unk_1E7CF1FE8;
  v19 = v5;
  v20 = v8;
  v9 = v8;
  v10 = v5;
  v11 = [v7 safari_filterObjectsUsingBlock:&v15];

  v12 = [WBSPair alloc];
  v13 = [(WBSPair *)v12 initWithFirst:v11 second:v9, v15, v16, v17, v18];

  return v13;
}

uint64_t __88__WBSGeneratedPasswordStore__generatedPasswordsFilteringExpiredPasswords_olderThanDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 generationDate];
  v5 = v4;
  if (v4 && ([v4 earlierDate:*(a1 + 32)], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v5))
  {
    [*(a1 + 40) addObject:v3];
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)addGeneratedPassword:(id)a3 forProtectionSpace:(id)a4 inPrivateBrowsingSession:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10 || !v11)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WBSGeneratedPasswordStore addGeneratedPassword:forProtectionSpace:inPrivateBrowsingSession:completionHandler:];
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    else if (!v12)
    {
      goto LABEL_7;
    }

    v12[2](v12, 0);
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__WBSGeneratedPasswordStore_addGeneratedPassword_forProtectionSpace_inPrivateBrowsingSession_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF2010;
  objc_copyWeak(&v19, &location);
  v18 = v12;
  v16 = v10;
  v17 = v11;
  v20 = a5;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
LABEL_7:
}

void __112__WBSGeneratedPasswordStore_addGeneratedPassword_forProtectionSpace_inPrivateBrowsingSession_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v3 = [v2 safari_addGeneratedPassword:*(a1 + 32) forProtectionSpace:*(a1 + 40) wasGeneratedInPrivateBrowsingSession:*(a1 + 64)];

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    [WeakRetained _reset];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

- (void)updateGeneratedPassword:(id)a3 withPassword:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || !v9)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSGeneratedPasswordStore updateGeneratedPassword:withPassword:completionHandler:];
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else if (!v10)
    {
      goto LABEL_7;
    }

    v10[2](v10, 0);
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__WBSGeneratedPasswordStore_updateGeneratedPassword_withPassword_completionHandler___block_invoke;
  block[3] = &unk_1E7CF2038;
  objc_copyWeak(&v17, &location);
  v16 = v10;
  v14 = v8;
  v15 = v9;
  dispatch_async(queue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
LABEL_7:
}

void __84__WBSGeneratedPasswordStore_updateGeneratedPassword_withPassword_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v3 = [v2 safari_updateGeneratedPassword:*(a1 + 32) withPassword:*(a1 + 40)];

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    [WeakRetained _reset];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

- (void)removeGeneratedPassword:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBSGeneratedPasswordStore removeGeneratedPassword:v9 completionHandler:?];
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_6;
    }

    v7[2](v7);
    goto LABEL_6;
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__WBSGeneratedPasswordStore_removeGeneratedPassword_completionHandler___block_invoke;
  v10[3] = &unk_1E7CF2060;
  objc_copyWeak(&v13, &location);
  v12 = v7;
  v11 = v6;
  dispatch_async(queue, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
LABEL_6:
}

void __71__WBSGeneratedPasswordStore_removeGeneratedPassword_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    [v2 safari_deleteGeneratedPassword:*(a1 + 32)];

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }

    [WeakRetained _reset];
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }
}

- (void)synchronouslyRemoveGeneratedPasswordsNewerThanDate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__WBSGeneratedPasswordStore_synchronouslyRemoveGeneratedPasswordsNewerThanDate___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __80__WBSGeneratedPasswordStore_synchronouslyRemoveGeneratedPasswordsNewerThanDate___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF00] distantPast];
  LODWORD(v2) = [v2 isEqualToDate:v3];

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *MEMORY[0x1E69E9840];

    [v4 _removeAllGeneratedPasswordsOnInternalQueue];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_DEFAULT, "Removing generated passwords newer than %@", buf, 0xCu);
    }

    *(*(a1 + 40) + 32) = 1;
    v8 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v9 = [v8 safari_allGeneratedPasswordItems];
    v10 = [v9 safari_mapObjectsUsingBlock:&__block_literal_global_25_0];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v16 generationDate];
          v18 = [v17 laterDate:*(a1 + 32)];
          v19 = *(a1 + 32);

          if (v18 != v19)
          {
            [v8 safari_deleteGeneratedPassword:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    *(*(a1 + 40) + 32) = 0;
    v20 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v20, OS_LOG_TYPE_DEFAULT, "Finished removing generated passwords", buf, 2u);
    }

    [*(a1 + 40) _reset];

    v21 = *MEMORY[0x1E69E9840];
  }
}

WBSGeneratedPassword *__80__WBSGeneratedPasswordStore_synchronouslyRemoveGeneratedPasswordsNewerThanDate___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSGeneratedPassword alloc] initWithKeychainItemDictionary:v2];

  return v3;
}

- (void)_removeAllGeneratedPasswordsOnInternalQueue
{
  v3 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  [v3 safari_deleteAllGeneratedPasswords];

  [(WBSGeneratedPasswordStore *)self _reset];
}

- (id)generatedPasswordsForProtectionSpace:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = MEMORY[0x1E695E0F0];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__WBSGeneratedPasswordStore_generatedPasswordsForProtectionSpace_options___block_invoke;
  v11[3] = &unk_1E7CF20B0;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __74__WBSGeneratedPasswordStore_generatedPasswordsForProtectionSpace_options___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNeeded];
  v2 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__WBSGeneratedPasswordStore_generatedPasswordsForProtectionSpace_options___block_invoke_2;
  v8[3] = &unk_1E7CF2088;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v9 = v3;
  v10 = v4;
  v5 = [v2 safari_filterObjectsUsingBlock:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

BOOL __74__WBSGeneratedPasswordStore_generatedPasswordsForProtectionSpace_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 protectionSpace];
  v4 = 1;
  if (([v3 isEqualToProtectionSpaceForPasswordManager:*(a1 + 32)] & 1) == 0)
  {
    if ((*(a1 + 40) & 1) == 0 || ([*(a1 + 32) safari_protectionSpaceByReplacingHostWithHighlevelDomain], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "safari_protectionSpaceByReplacingHostWithHighlevelDomain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToProtectionSpaceForPasswordManager:", v6), v6, v5, (v7 & 1) == 0))
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)removeGeneratedPasswordMatchingSavedAccount:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 protectionSpacesIncludingAdditionalSites];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = v6;
    v15 = self;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = +[WBSGeneratedPasswordStore sharedStore];
        v13 = [v12 generatedPasswordsForProtectionSpace:v11 options:1];

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __73__WBSGeneratedPasswordStore_removeGeneratedPasswordMatchingSavedAccount___block_invoke;
        v16[3] = &unk_1E7CF20D8;
        v17 = v4;
        v7 = [v13 safari_firstObjectPassingTest:v16];

        if (v7)
        {

          [(WBSGeneratedPasswordStore *)v15 removeGeneratedPassword:v7 completionHandler:0];
          goto LABEL_11;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v7 = v5;
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __73__WBSGeneratedPasswordStore_removeGeneratedPasswordMatchingSavedAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 password];
  v4 = [*(a1 + 32) password];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)clearGeneratedPasswordsMatchingSavedAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(WBSGeneratedPasswordStore *)self generatedPasswordsMatchingSavedAccount:a3];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WBSGeneratedPasswordStore_clearGeneratedPasswordsMatchingSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1908;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

uint64_t __91__WBSGeneratedPasswordStore_clearGeneratedPasswordsMatchingSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
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

        [*(a1 + 40) removeGeneratedPassword:*(*(&v9 + 1) + 8 * v6++) completionHandler:{0, v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)generatedPasswordsMatchingSavedAccount:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DFA8] set];
  v18 = v3;
  v6 = [v3 protectionSpacesIncludingAdditionalSites];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 host];
        v13 = [v12 safari_highLevelDomainFromHost];

        if (v13 && ([v5 containsObject:v13] & 1) == 0)
        {
          v14 = +[WBSGeneratedPasswordStore sharedStore];
          v15 = [v14 generatedPasswordsForProtectionSpace:v11 options:1];

          [v4 addObjectsFromArray:v15];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)debug_removeAll
{
  v3 = [MEMORY[0x1E695DF00] distantPast];
  [(WBSGeneratedPasswordStore *)self synchronouslyRemoveGeneratedPasswordsNewerThanDate:v3];
}

- (void)addGeneratedPassword:forProtectionSpace:inPrivateBrowsingSession:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "Attempted to add a generated password record with a nil password or protectionSpace: password=%p protectionSpace=%p", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateGeneratedPassword:withPassword:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "Attempted to update a generated password record with a nil generated password or new password: generatedPassword=%p password=%p", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

@end