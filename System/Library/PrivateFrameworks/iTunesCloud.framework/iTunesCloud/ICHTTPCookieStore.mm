@interface ICHTTPCookieStore
+ (ICHTTPCookieStore)sharedCookieStore;
- (BOOL)_saveCookies:(id)cookies userIdentifier:(id)identifier;
- (BOOL)removeCookiesWithProperties:(id)properties;
- (BOOL)saveCookies:(id)cookies forURL:(id)l;
- (BOOL)saveCookies:(id)cookies forURL:(id)l userIdentifier:(id)identifier;
- (BOOL)saveGlobalAccountCookies:(id)cookies forURL:(id)l;
- (ICHTTPCookieStore)init;
- (id)_accountForUserIdentifier:(id)identifier;
- (id)_cookieDictionaryForURL:(id)l userIdentifier:(id)identifier;
- (id)getCookieWithName:(id)name userIdentifier:(id)identifier;
- (id)getCookiesForURL:(id)l;
- (id)getCookiesForURL:(id)l userIdentifier:(id)identifier;
- (id)getCookiesForUserIdentifier:(id)identifier;
- (id)getCookiesHeadersForURL:(id)l userIdentifier:(id)identifier;
- (void)dealloc;
- (void)removeAllCookies;
@end

@implementation ICHTTPCookieStore

+ (ICHTTPCookieStore)sharedCookieStore
{
  if (sharedCookieStore_sOnceToken != -1)
  {
    dispatch_once(&sharedCookieStore_sOnceToken, &__block_literal_global_37835);
  }

  v3 = sharedCookieStore_sSharedCookieStore;

  return v3;
}

- (BOOL)_saveCookies:(id)cookies userIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  cookiesCopy = cookies;
  v7 = [(ICHTTPCookieStore *)self _accountForUserIdentifier:identifier];
  v8 = v7;
  if (v7 && [v7 ams_addCookies:cookiesCopy])
  {
    v9 = +[ICMonitoredAccountStore sharedAccountStore];
    v14 = 0;
    [v9 saveAccount:v8 error:&v14];
    v10 = v14;

    v11 = v10 == 0;
    if (v10)
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy = self;
        v17 = 2114;
        v18 = v8;
        v19 = 2114;
        v20 = v10;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save cookies for account %{public}@. err=%{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)_cookieDictionaryForURL:(id)l userIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(ICHTTPCookieStore *)self _accountForUserIdentifier:identifierCopy];
  v10 = v9;
  if (v9)
  {
    if (lCopy)
    {
      [v9 ams_cookiesForURL:lCopy];
    }

    else
    {
      [v9 ams_cookies];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v11 = v21 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          name = [v16 name];

          if (name)
          {
            name2 = [v16 name];
            [dictionary setObject:v16 forKey:name2];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return dictionary;
}

- (id)_accountForUserIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = +[ICMonitoredAccountStore sharedAccountStore];
    if ([identifierCopy longLongValue] == -1)
    {
      v14 = 0;
      v6 = &v14;
      v7 = [v5 localStoreAccountWithError:&v14];
    }

    else
    {
      v13 = 0;
      v6 = &v13;
      v7 = [v5 storeAccountForDSID:identifierCopy error:&v13];
    }

    v8 = v7;
    v9 = *v6;
    if (v9)
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v17 = 2114;
        v18 = identifierCopy;
        v19 = 2114;
        v20 = v9;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load account for identifier %{public}@. err=%{public}@", buf, 0x20u);
      }
    }

    if (!v8)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v17 = 2114;
        v18 = identifierCopy;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@: No account found for identifier %{public}@.", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeAllCookies
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__ICHTTPCookieStore_removeAllCookies__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __37__ICHTTPCookieStore_removeAllCookies__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = +[ICMonitoredAccountStore sharedAccountStore];
  v23 = 0;
  v2 = [v1 allStoreAccountsWithError:&v23];
  v3 = v23;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v25 = v5;
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load accounts to remove all cookies. err=%{public}@", buf, 0x16u);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138543874;
    v16 = v8;
    do
    {
      v11 = 0;
      v12 = v3;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * v11);
        [v13 ams_removeAllCookies];
        v18 = v12;
        [v1 saveAccount:v13 error:&v18];
        v3 = v18;

        if (v3)
        {
          v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = *(a1 + 32);
            *buf = v16;
            v25 = v15;
            v26 = 2114;
            v27 = v13;
            v28 = 2114;
            v29 = v3;
            _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove cookies from account %{public}@. err=%{public}@", buf, 0x20u);
          }
        }

        ++v11;
        v12 = v3;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v9);
  }
}

- (BOOL)removeCookiesWithProperties:(id)properties
{
  propertiesCopy = properties;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ICHTTPCookieStore_removeCookiesWithProperties___block_invoke;
  block[3] = &unk_1E7BF97E8;
  v9 = propertiesCopy;
  v10 = &v11;
  block[4] = self;
  v6 = propertiesCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __49__ICHTTPCookieStore_removeCookiesWithProperties___block_invoke(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = +[ICMonitoredAccountStore sharedAccountStore];
  v23 = 0;
  v3 = [v2 allStoreAccountsWithError:&v23];
  v4 = v23;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load accounts to remove cookies. err=%{public}@", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    *&v9 = 138543874;
    v17 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (([v13 ic_isActive] & 1) != 0 || objc_msgSend(v13, "ams_isLocalAccount"))
        {
          [v13 ams_removeCookiesMatchingProperties:a1[5]];
          v18 = v4;
          [v2 saveAccount:v13 error:&v18];
          v14 = v18;

          if (v14)
          {
            v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = a1[4];
              *buf = v17;
              v25 = v16;
              v26 = 2114;
              v27 = v13;
              v28 = 2114;
              v29 = v14;
              _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove cookies from account %{public}@. err=%{public}@", buf, 0x20u);
            }

            *(*(a1[6] + 8) + 24) = 0;
            v4 = v14;
          }

          else
          {
            v4 = 0;
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v10);
  }
}

- (BOOL)saveGlobalAccountCookies:(id)cookies forURL:(id)l
{
  cookiesCopy = cookies;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ICHTTPCookieStore_saveGlobalAccountCookies_forURL___block_invoke;
  block[3] = &unk_1E7BF97E8;
  v10 = cookiesCopy;
  v11 = &v12;
  block[4] = self;
  v7 = cookiesCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return queue;
}

uint64_t __53__ICHTTPCookieStore_saveGlobalAccountCookies_forURL___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveCookies:*(a1 + 40) userIdentifier:&unk_1F2C92380];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)saveCookies:(id)cookies forURL:(id)l userIdentifier:(id)identifier
{
  cookiesCopy = cookies;
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__ICHTTPCookieStore_saveCookies_forURL_userIdentifier___block_invoke;
  v13[3] = &unk_1E7BF97C0;
  v13[4] = self;
  v14 = cookiesCopy;
  v15 = identifierCopy;
  v16 = &v17;
  v10 = identifierCopy;
  v11 = cookiesCopy;
  dispatch_sync(queue, v13);
  LOBYTE(queue) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return queue;
}

uint64_t __55__ICHTTPCookieStore_saveCookies_forURL_userIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveCookies:*(a1 + 40) userIdentifier:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)saveCookies:(id)cookies forURL:(id)l
{
  cookiesCopy = cookies;
  lCopy = l;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__ICHTTPCookieStore_saveCookies_forURL___block_invoke;
  v12[3] = &unk_1E7BFA078;
  v13 = cookiesCopy;
  v14 = lCopy;
  v9 = lCopy;
  v10 = cookiesCopy;
  dispatch_sync(queue, v12);

  return 1;
}

void __40__ICHTTPCookieStore_saveCookies_forURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  [v2 setCookies:*(a1 + 32) forURL:*(a1 + 40) mainDocumentURL:*(a1 + 40)];
}

- (id)getCookiesHeadersForURL:(id)l userIdentifier:(id)identifier
{
  v4 = [(ICHTTPCookieStore *)self getCookiesForURL:l userIdentifier:identifier];
  v5 = [MEMORY[0x1E695ABF8] requestHeaderFieldsWithCookies:v4];

  return v5;
}

- (id)getCookieWithName:(id)name userIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  [(ICHTTPCookieStore *)self getCookiesForUserIdentifier:identifier];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name isEqualToString:nameCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)getCookiesForUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__37823;
  v16 = __Block_byref_object_dispose__37824;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ICHTTPCookieStore_getCookiesForUserIdentifier___block_invoke;
  block[3] = &unk_1E7BF97E8;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__ICHTTPCookieStore_getCookiesForUserIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cookieDictionaryForURL:0 userIdentifier:&unk_1F2C92380];
  v3 = [v2 mutableCopy];

  if ([*(a1 + 40) longLongValue] >= 1)
  {
    v4 = [*(a1 + 32) _cookieDictionaryForURL:0 userIdentifier:*(a1 + 40)];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__ICHTTPCookieStore_getCookiesForUserIdentifier___block_invoke_2;
    v8[3] = &unk_1E7BF9798;
    v9 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }

  v5 = [v3 allValues];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getCookiesForURL:(id)l userIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__37823;
  v21 = __Block_byref_object_dispose__37824;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__ICHTTPCookieStore_getCookiesForURL_userIdentifier___block_invoke;
  v13[3] = &unk_1E7BF97C0;
  v13[4] = self;
  v14 = lCopy;
  v15 = identifierCopy;
  v16 = &v17;
  v9 = identifierCopy;
  v10 = lCopy;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __53__ICHTTPCookieStore_getCookiesForURL_userIdentifier___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cookieDictionaryForURL:*(a1 + 40) userIdentifier:&unk_1F2C92380];
  v3 = [v2 mutableCopy];

  if ([*(a1 + 48) longLongValue] >= 1)
  {
    v4 = [*(a1 + 32) _cookieDictionaryForURL:*(a1 + 40) userIdentifier:*(a1 + 48)];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__ICHTTPCookieStore_getCookiesForURL_userIdentifier___block_invoke_6;
    v22[3] = &unk_1E7BF9798;
    v23 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v22];
  }

  v5 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  v6 = [v5 cookiesForURL:*(a1 + 40)];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 name];
        if (v13)
        {
          v14 = [v3 objectForKey:v13];

          if (!v14)
          {
            [v3 setObject:v12 forKey:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [v3 allValues];
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

- (id)getCookiesForURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__37823;
  v16 = __Block_byref_object_dispose__37824;
  v17 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__ICHTTPCookieStore_getCookiesForURL___block_invoke;
  v9[3] = &unk_1E7BFA430;
  v10 = lCopy;
  v11 = &v12;
  v6 = lCopy;
  dispatch_sync(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__ICHTTPCookieStore_getCookiesForURL___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  v2 = [v5 cookiesForURL:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ICHTTPCookieStore;
  [(ICHTTPCookieStore *)&v2 dealloc];
}

- (ICHTTPCookieStore)init
{
  v6.receiver = self;
  v6.super_class = ICHTTPCookieStore;
  v2 = [(ICHTTPCookieStore *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloud.ICStoreHTTPCookieManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

uint64_t __38__ICHTTPCookieStore_sharedCookieStore__block_invoke()
{
  v0 = objc_alloc_init(ICHTTPCookieStore);
  v1 = sharedCookieStore_sSharedCookieStore;
  sharedCookieStore_sSharedCookieStore = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end