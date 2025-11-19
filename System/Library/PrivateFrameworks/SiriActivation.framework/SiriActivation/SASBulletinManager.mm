@interface SASBulletinManager
- (SASBulletinManager)init;
- (SASBulletinManagerDelegate)delegate;
- (id)_displayNameForBulletin:(id)a3;
- (id)allBulletins;
- (id)bulletinForIdentifier:(id)a3;
- (void)_bulletinsDidChange;
- (void)_setupObserver;
- (void)addBulletinCompletionWithBulletin:(id)a3 forFeed:(unint64_t)a4;
- (void)dealloc;
- (void)modifyBulletinCompletionWithBulletin:(id)a3;
- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)observer:(id)a3 modifyBulletin:(id)a4;
- (void)observer:(id)a3 noteInvalidatedBulletinIDs:(id)a4;
- (void)observer:(id)a3 purgeReferencesToBulletinID:(id)a4;
- (void)observer:(id)a3 removeBulletin:(id)a4;
- (void)observer:(id)a3 removeBulletin:(id)a4 forFeed:(unint64_t)a5;
@end

@implementation SASBulletinManager

- (SASBulletinManager)init
{
  v8.receiver = self;
  v8.super_class = SASBulletinManager;
  v2 = [(SASBulletinManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SASBulletinCache);
    bulletinCache = v2->_bulletinCache;
    v2->_bulletinCache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bulletinsOnLockScreen = v2->_bulletinsOnLockScreen;
    v2->_bulletinsOnLockScreen = v5;

    [(SASBulletinManager *)v2 _setupObserver];
  }

  return v2;
}

- (void)_setupObserver
{
  observer = self->_observer;
  if (!observer)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698F688]);
    v5 = self->_observer;
    self->_observer = v4;

    observer = self->_observer;
  }

  [(BBObserver *)observer setDelegate:self];
  v6 = self->_observer;

  [(BBObserver *)v6 setObserverFeed:65023];
}

- (void)dealloc
{
  [(BBObserver *)self->_observer invalidate];
  [(BBObserver *)self->_observer setDelegate:0];
  observer = self->_observer;
  self->_observer = 0;

  v4.receiver = self;
  v4.super_class = SASBulletinManager;
  [(SASBulletinManager *)&v4 dealloc];
}

- (void)_bulletinsDidChange
{
  v3 = [(SASBulletinManager *)self delegate];
  [v3 bulletinManagerDidChangeBulletins:self];
}

- (id)_displayNameForBulletin:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69635E8];
  v5 = [v3 sectionID];
  v6 = [v4 applicationProxyForIdentifier:v5];
  v7 = [v6 localizedNameForContext:0];

  if ([v7 length])
  {
    v8 = v7;
LABEL_5:
    v11 = v8;
    goto LABEL_6;
  }

  v9 = [v3 sectionID];
  v10 = [v9 isEqualToString:@"com.apple.cmas"];

  if (v10)
  {
    v8 = [v3 title];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)allBulletins
{
  v2 = [(SASBulletinCache *)self->_bulletinCache allBulletins];
  v3 = [v2 allValues];

  return v3;
}

- (id)bulletinForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    bulletinCache = self->_bulletinCache;
    p_bulletinCache = &self->_bulletinCache;
    v7 = [(SASBulletinCache *)bulletinCache cachedBulletinForID:v4];
    if (!v7)
    {
      v8 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
      {
        [(SASBulletinManager *)v4 bulletinForIdentifier:v8];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E698D0E8]);
  [v8 setRead:0];
  [v8 setBulletin:v7];
  objc_initWeak(&location, self);
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SASBulletinManager_observer_addBulletin_forFeed___block_invoke;
  block[3] = &unk_1E82F3C00;
  objc_copyWeak(v15, &location);
  v13 = v8;
  v14 = v7;
  v15[1] = a5;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __51__SASBulletinManager_observer_addBulletin_forFeed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained _displayNameForBulletin:*(a1 + 40)];
    [v4 setDisplayName:v5];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SASBulletinManager_observer_addBulletin_forFeed___block_invoke_2;
    block[3] = &unk_1E82F4070;
    block[4] = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    v9 = v6;
    v10 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)addBulletinCompletionWithBulletin:(id)a3 forFeed:(unint64_t)a4
{
  v6 = a3;
  bulletinsOnLockScreen = self->_bulletinsOnLockScreen;
  v8 = [v6 bulletinID];
  v9 = [(NSMutableDictionary *)bulletinsOnLockScreen objectForKey:v8];

  [v6 setAvailableOnLockScreen:{objc_msgSend(v9, "availableOnLockScreen")}];
  if ((a4 & 8) != 0)
  {
    v10 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
    {
      [SASBulletinManager addBulletinCompletionWithBulletin:v10 forFeed:v6];
    }

    [v6 setAvailableOnLockScreen:1];
    v11 = self->_bulletinsOnLockScreen;
    v12 = [v6 bulletinID];
    [(NSMutableDictionary *)v11 setObject:v6 forKey:v12];
  }

  [(SASBulletinCache *)self->_bulletinCache insertBulletin:v6 fromFeed:a4];
  [(SASBulletinManager *)self _bulletinsDidChange];
}

- (void)observer:(id)a3 modifyBulletin:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  bulletinCache = self->_bulletinCache;
  v7 = [v5 bulletinID];
  v8 = [(SASBulletinCache *)bulletinCache cachedBulletinForID:v7];

  if (v8)
  {
    v9 = self->_bulletinCache;
    v10 = [v5 bulletinID];
    [(SASBulletinCache *)v9 removeBulletinForID:v10];

    v11 = objc_alloc_init(MEMORY[0x1E698D0E8]);
    [v11 setRead:0];
    [v11 setBulletin:v5];
    objc_initWeak(location, self);
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SASBulletinManager_observer_modifyBulletin___block_invoke;
    block[3] = &unk_1E82F3C90;
    objc_copyWeak(&v21, location);
    v19 = v11;
    v20 = v5;
    v13 = v11;
    dispatch_async(v12, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v5 bulletinID];
      *location = 136315394;
      *&location[4] = "[SASBulletinManager observer:modifyBulletin:]";
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s ACAssistantBBObserver: Trying to modify a bulletin %@ that I don't already have.", location, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __46__SASBulletinManager_observer_modifyBulletin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained _displayNameForBulletin:*(a1 + 40)];
    [v4 setDisplayName:v5];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__SASBulletinManager_observer_modifyBulletin___block_invoke_2;
    v6[3] = &unk_1E82F4098;
    v6[4] = v3;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)modifyBulletinCompletionWithBulletin:(id)a3
{
  v9 = a3;
  [(SASBulletinCache *)self->_bulletinCache insertBulletin:v9 fromFeed:65023];
  bulletinsOnLockScreen = self->_bulletinsOnLockScreen;
  v5 = [v9 bulletinID];
  v6 = [(NSMutableDictionary *)bulletinsOnLockScreen objectForKey:v5];

  if (v6)
  {
    v7 = self->_bulletinsOnLockScreen;
    v8 = [v9 bulletinID];
    [(NSMutableDictionary *)v7 setObject:v9 forKey:v8];
  }

  [(SASBulletinManager *)self _bulletinsDidChange];
}

- (void)observer:(id)a3 removeBulletin:(id)a4
{
  v6 = a3;
  v7 = [a4 bulletinID];
  [(SASBulletinManager *)self observer:v6 purgeReferencesToBulletinID:v7];
}

- (void)observer:(id)a3 removeBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v5 = a5;
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if ((v5 & 8) != 0)
  {
    v9 = [v7 bulletinID];
    v10 = [(NSMutableDictionary *)self->_bulletinsOnLockScreen objectForKey:v9];

    v11 = *MEMORY[0x1E698D0A0];
    v12 = *MEMORY[0x1E698D0A0];
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SASBulletinManager observer:removeBulletin:forFeed:];
      }

      [(NSMutableDictionary *)self->_bulletinsOnLockScreen removeObjectForKey:v9];
      [(SASBulletinManager *)self _bulletinsDidChange];
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[SASBulletinManager observer:removeBulletin:forFeed:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s ACAssistantBBObserver: Asked to remove a bulletin from lock screen %@ that I don't already have.", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)a3 purgeReferencesToBulletinID:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SASBulletinCache *)self->_bulletinCache cachedBulletinForID:v5];

  if (v6)
  {
    [(SASBulletinCache *)self->_bulletinCache removeBulletinForID:v5];
    [(NSMutableDictionary *)self->_bulletinsOnLockScreen removeObjectForKey:v5];
    [(SASBulletinManager *)self _bulletinsDidChange];
  }

  else
  {
    v7 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[SASBulletinManager observer:purgeReferencesToBulletinID:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s ACAssistantBBObserver: Asked to remove a bulletin %@ that I don't already have.", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)a3 noteInvalidatedBulletinIDs:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SASBulletinManager *)self observer:v6 purgeReferencesToBulletinID:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (SASBulletinManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)bulletinForIdentifier:(void *)a3 .cold.1(uint64_t a1, void **a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a3;
  v6 = [v4 allBulletins];
  v7 = [v6 allKeys];
  v11[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v12 = a1;
  v13 = v8;
  v14 = v9;
  _os_log_debug_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEBUG, "%s Bulletin with identifier: %@ not found in cache with bulletinIDs: %@", v11, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addBulletinCompletionWithBulletin:(void *)a1 forFeed:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 bbBulletin];
  v7[0] = 136315394;
  OUTLINED_FUNCTION_0();
  v8 = v5;
  _os_log_debug_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEBUG, "%s %@ added to lock screen feed", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)observer:removeBulletin:forFeed:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  _os_log_debug_impl(&dword_1C8137000, v1, OS_LOG_TYPE_DEBUG, "%s %@ removed from lock screen feed", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end