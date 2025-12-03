@interface SASBulletinManager
- (SASBulletinManager)init;
- (SASBulletinManagerDelegate)delegate;
- (id)_displayNameForBulletin:(id)bulletin;
- (id)allBulletins;
- (id)bulletinForIdentifier:(id)identifier;
- (void)_bulletinsDidChange;
- (void)_setupObserver;
- (void)addBulletinCompletionWithBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)dealloc;
- (void)modifyBulletinCompletionWithBulletin:(id)bulletin;
- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)observer:(id)observer modifyBulletin:(id)bulletin;
- (void)observer:(id)observer noteInvalidatedBulletinIDs:(id)ds;
- (void)observer:(id)observer purgeReferencesToBulletinID:(id)d;
- (void)observer:(id)observer removeBulletin:(id)bulletin;
- (void)observer:(id)observer removeBulletin:(id)bulletin forFeed:(unint64_t)feed;
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
  delegate = [(SASBulletinManager *)self delegate];
  [delegate bulletinManagerDidChangeBulletins:self];
}

- (id)_displayNameForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v4 = MEMORY[0x1E69635E8];
  sectionID = [bulletinCopy sectionID];
  v6 = [v4 applicationProxyForIdentifier:sectionID];
  v7 = [v6 localizedNameForContext:0];

  if ([v7 length])
  {
    title = v7;
LABEL_5:
    v11 = title;
    goto LABEL_6;
  }

  sectionID2 = [bulletinCopy sectionID];
  v10 = [sectionID2 isEqualToString:@"com.apple.cmas"];

  if (v10)
  {
    title = [bulletinCopy title];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)allBulletins
{
  allBulletins = [(SASBulletinCache *)self->_bulletinCache allBulletins];
  allValues = [allBulletins allValues];

  return allValues;
}

- (id)bulletinForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    bulletinCache = self->_bulletinCache;
    p_bulletinCache = &self->_bulletinCache;
    v7 = [(SASBulletinCache *)bulletinCache cachedBulletinForID:identifierCopy];
    if (!v7)
    {
      v8 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
      {
        [(SASBulletinManager *)identifierCopy bulletinForIdentifier:v8];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  bulletinCopy = bulletin;
  v8 = objc_alloc_init(MEMORY[0x1E698D0E8]);
  [v8 setRead:0];
  [v8 setBulletin:bulletinCopy];
  objc_initWeak(&location, self);
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SASBulletinManager_observer_addBulletin_forFeed___block_invoke;
  block[3] = &unk_1E82F3C00;
  objc_copyWeak(v15, &location);
  v13 = v8;
  v14 = bulletinCopy;
  v15[1] = feed;
  v10 = bulletinCopy;
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

- (void)addBulletinCompletionWithBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  bulletinCopy = bulletin;
  bulletinsOnLockScreen = self->_bulletinsOnLockScreen;
  bulletinID = [bulletinCopy bulletinID];
  v9 = [(NSMutableDictionary *)bulletinsOnLockScreen objectForKey:bulletinID];

  [bulletinCopy setAvailableOnLockScreen:{objc_msgSend(v9, "availableOnLockScreen")}];
  if ((feed & 8) != 0)
  {
    v10 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
    {
      [SASBulletinManager addBulletinCompletionWithBulletin:v10 forFeed:bulletinCopy];
    }

    [bulletinCopy setAvailableOnLockScreen:1];
    v11 = self->_bulletinsOnLockScreen;
    bulletinID2 = [bulletinCopy bulletinID];
    [(NSMutableDictionary *)v11 setObject:bulletinCopy forKey:bulletinID2];
  }

  [(SASBulletinCache *)self->_bulletinCache insertBulletin:bulletinCopy fromFeed:feed];
  [(SASBulletinManager *)self _bulletinsDidChange];
}

- (void)observer:(id)observer modifyBulletin:(id)bulletin
{
  v25 = *MEMORY[0x1E69E9840];
  bulletinCopy = bulletin;
  bulletinCache = self->_bulletinCache;
  bulletinID = [bulletinCopy bulletinID];
  v8 = [(SASBulletinCache *)bulletinCache cachedBulletinForID:bulletinID];

  if (v8)
  {
    v9 = self->_bulletinCache;
    bulletinID2 = [bulletinCopy bulletinID];
    [(SASBulletinCache *)v9 removeBulletinForID:bulletinID2];

    v11 = objc_alloc_init(MEMORY[0x1E698D0E8]);
    [v11 setRead:0];
    [v11 setBulletin:bulletinCopy];
    objc_initWeak(location, self);
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SASBulletinManager_observer_modifyBulletin___block_invoke;
    block[3] = &unk_1E82F3C90;
    objc_copyWeak(&v21, location);
    v19 = v11;
    v20 = bulletinCopy;
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
      bulletinID3 = [bulletinCopy bulletinID];
      *location = 136315394;
      *&location[4] = "[SASBulletinManager observer:modifyBulletin:]";
      v23 = 2112;
      v24 = bulletinID3;
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

- (void)modifyBulletinCompletionWithBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  [(SASBulletinCache *)self->_bulletinCache insertBulletin:bulletinCopy fromFeed:65023];
  bulletinsOnLockScreen = self->_bulletinsOnLockScreen;
  bulletinID = [bulletinCopy bulletinID];
  v6 = [(NSMutableDictionary *)bulletinsOnLockScreen objectForKey:bulletinID];

  if (v6)
  {
    v7 = self->_bulletinsOnLockScreen;
    bulletinID2 = [bulletinCopy bulletinID];
    [(NSMutableDictionary *)v7 setObject:bulletinCopy forKey:bulletinID2];
  }

  [(SASBulletinManager *)self _bulletinsDidChange];
}

- (void)observer:(id)observer removeBulletin:(id)bulletin
{
  observerCopy = observer;
  bulletinID = [bulletin bulletinID];
  [(SASBulletinManager *)self observer:observerCopy purgeReferencesToBulletinID:bulletinID];
}

- (void)observer:(id)observer removeBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  feedCopy = feed;
  v18 = *MEMORY[0x1E69E9840];
  bulletinCopy = bulletin;
  v8 = bulletinCopy;
  if ((feedCopy & 8) != 0)
  {
    bulletinID = [bulletinCopy bulletinID];
    v10 = [(NSMutableDictionary *)self->_bulletinsOnLockScreen objectForKey:bulletinID];

    v11 = *MEMORY[0x1E698D0A0];
    v12 = *MEMORY[0x1E698D0A0];
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SASBulletinManager observer:removeBulletin:forFeed:];
      }

      [(NSMutableDictionary *)self->_bulletinsOnLockScreen removeObjectForKey:bulletinID];
      [(SASBulletinManager *)self _bulletinsDidChange];
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[SASBulletinManager observer:removeBulletin:forFeed:]";
      v16 = 2112;
      v17 = bulletinID;
      _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s ACAssistantBBObserver: Asked to remove a bulletin from lock screen %@ that I don't already have.", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)observer purgeReferencesToBulletinID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = [(SASBulletinCache *)self->_bulletinCache cachedBulletinForID:dCopy];

  if (v6)
  {
    [(SASBulletinCache *)self->_bulletinCache removeBulletinForID:dCopy];
    [(NSMutableDictionary *)self->_bulletinsOnLockScreen removeObjectForKey:dCopy];
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
      v12 = dCopy;
      _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s ACAssistantBBObserver: Asked to remove a bulletin %@ that I don't already have.", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)observer noteInvalidatedBulletinIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dsCopy = ds;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        [(SASBulletinManager *)self observer:observerCopy purgeReferencesToBulletinID:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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