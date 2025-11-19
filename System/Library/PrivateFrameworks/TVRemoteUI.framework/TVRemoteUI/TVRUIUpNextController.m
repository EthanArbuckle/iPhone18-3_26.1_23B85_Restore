@interface TVRUIUpNextController
- (BOOL)_isDataStale;
- (BOOL)hasMoreInfo;
- (BOOL)isItemInUpNextForIdentifier:(id)a3;
- (BOOL)isItemInUpNextForMediaInfo:(id)a3;
- (NSSet)infoIdentifiers;
- (TVRCUpNextController)upNextController;
- (TVRUIUpNextController)init;
- (void)_notifyInfosUpdatedFromRequest:(BOOL)a3;
- (void)_prewarmImagesAsNeeded;
- (void)_remoteAddItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)_remoteFetchUpNextInfosWithPaginationToken:(id)a3 completion:(id)a4;
- (void)_remoteMarkAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)_remotePlayItem:(id)a3 completion:(id)a4;
- (void)_remoteRemoveItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)fetchImageForUpNextInfo:(id)a3 completion:(id)a4;
- (void)playItem:(id)a3 completion:(id)a4;
- (void)refresh;
- (void)refreshIfNeeded;
- (void)requestMore;
- (void)setActiveDevice:(id)a3;
- (void)setInfos:(id)a3;
@end

@implementation TVRUIUpNextController

- (TVRUIUpNextController)init
{
  v8.receiver = self;
  v8.super_class = TVRUIUpNextController;
  v2 = [(TVRUIUpNextController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    infos = v2->_infos;
    v2->_infos = MEMORY[0x277CBEBF8];

    *&v3->_shouldPrewarmData = 257;
    v5 = +[TVRUIImageFetcher imageFetcher];
    imageFetcher = v3->_imageFetcher;
    v3->_imageFetcher = v5;
  }

  return v3;
}

- (void)playItem:(id)a3 completion:(id)a4
{
  [(TVRUIUpNextController *)self _remotePlayItem:a3 completion:a4];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"TVRUIUpNextMediaPlayedNotification" object:0];
}

- (BOOL)isItemInUpNextForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIUpNextController *)self infoIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isItemInUpNextForMediaInfo:(id)a3
{
  v4 = [a3 tvrui_effectiveIdentifier];
  LOBYTE(self) = [(TVRUIUpNextController *)self isItemInUpNextForIdentifier:v4];

  return self;
}

- (TVRCUpNextController)upNextController
{
  upNextController = self->_upNextController;
  if (!upNextController)
  {
    v4 = objc_alloc_init(MEMORY[0x277D6C550]);
    v5 = self->_upNextController;
    self->_upNextController = v4;

    upNextController = self->_upNextController;
  }

  return upNextController;
}

- (void)setActiveDevice:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 isEqualToDevice:self->_activeDevice];
  objc_storeStrong(&self->_activeDevice, a3);
  if ((v6 & 1) == 0)
  {
    [(TVRUIUpNextController *)self setHasFetchedInfos:0];
    [(TVRUIUpNextController *)self setIsFetchingUpNextInfos:0];
    [(TVRUIUpNextController *)self setLastRefreshTimestamp:0];
    [(TVRUIUpNextController *)self setPaginationToken:0];
    [(TVRUIUpNextController *)self setInfos:MEMORY[0x277CBEBF8]];
    v9 = @"TVRUIUpNextInfosDidChangeFromRequestKey";
    v10[0] = MEMORY[0x277CBEC28];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"TVRUIUpNextInfosDidChangeNotification" object:self userInfo:v7];

    if ([(TVRUIUpNextController *)self shouldPrewarmData])
    {
      [(TVRUIUpNextController *)self refresh];
    }
  }
}

- (void)_notifyInfosUpdatedFromRequest:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__TVRUIUpNextController__notifyInfosUpdatedFromRequest___block_invoke;
  v3[3] = &unk_279D878A8;
  v4 = a3;
  v3[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __56__TVRUIUpNextController__notifyInfosUpdatedFromRequest___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"TVRUIUpNextInfosDidChangeFromRequestKey";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"TVRUIUpNextInfosDidChangeNotification" object:*(a1 + 32) userInfo:v3];
}

- (void)setInfos:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_infos, a3);
  infoIdentifiers = self->_infoIdentifiers;
  self->_infoIdentifiers = 0;

  if ([(TVRUIUpNextController *)self shouldPrewarmImages])
  {
    [(TVRUIUpNextController *)self _prewarmImagesAsNeeded];
  }
}

- (void)refreshIfNeeded
{
  if (![(TVRUIUpNextController *)self isFetchingUpNextInfos])
  {
    v3 = [(TVRUIUpNextController *)self _isDataStale];
    if ([(TVRUIUpNextController *)self refreshNeeded]|| v3)
    {

      [(TVRUIUpNextController *)self refresh];
    }
  }
}

- (void)requestMore
{
  if (![(TVRUIUpNextController *)self isFetchingUpNextInfos]&& [(TVRUIUpNextController *)self hasMoreInfo])
  {
    v3 = [(TVRUIUpNextController *)self paginationToken];
    [(TVRUIUpNextController *)self _remoteFetchUpNextInfosWithPaginationToken:v3 completion:0];
  }
}

- (void)refresh
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"TVRUIUpNextInfosRequestedNotification" object:self];

  [(TVRUIUpNextController *)self setPaginationToken:0];

  [(TVRUIUpNextController *)self _remoteFetchUpNextInfosWithPaginationToken:0 completion:0];
}

- (NSSet)infoIdentifiers
{
  v19 = *MEMORY[0x277D85DE8];
  infoIdentifiers = self->_infoIdentifiers;
  if (!infoIdentifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(TVRUIUpNextController *)self infos];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) mediaInfo];
          v11 = [v10 tvrui_effectiveIdentifier];

          if ([v11 length])
          {
            [(NSSet *)v4 addObject:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v12 = self->_infoIdentifiers;
    self->_infoIdentifiers = v4;

    infoIdentifiers = self->_infoIdentifiers;
  }

  return infoIdentifiers;
}

- (BOOL)hasMoreInfo
{
  v2 = [(TVRUIUpNextController *)self paginationToken];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)fetchImageForUpNextInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mediaInfo];
  v9 = [v8 identifier];

  if (v6 && [v9 length])
  {
    v10 = [v6 mediaInfo];
    v11 = [v10 imageURLTemplate];
    if ([v11 length])
    {
      v12 = [MEMORY[0x277D6C500] imageTemplateWithString:v11];
      v13 = [v12 urlForSize:{400.0, 225.0}];
      v14 = [(TVRUIUpNextController *)self imageFetcher];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__TVRUIUpNextController_fetchImageForUpNextInfo_completion___block_invoke;
      v15[3] = &unk_279D878D0;
      v16 = v7;
      [v14 fetchImageWithURL:v13 identifier:v9 completion:v15];
    }

    else
    {
      (*(v7 + 2))(v7, v9, 0);
    }
  }

  else
  {
    (*(v7 + 2))(v7, *MEMORY[0x277D6C5B0], 0);
  }
}

- (BOOL)_isDataStale
{
  v3 = [(TVRUIUpNextController *)self lastRefreshTimestamp];

  if (!v3)
  {
    return 1;
  }

  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [(TVRUIUpNextController *)self lastRefreshTimestamp];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  +[TVRUIUpNextController staleDataTimeInterval];
  return v7 > v8;
}

- (void)_remoteFetchUpNextInfosWithPaginationToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TVRUIUpNextController *)self activeDevice];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    [(TVRUIUpNextController *)self setIsFetchingUpNextInfos:1];
    objc_initWeak(&location, self);
    v10 = [(TVRUIUpNextController *)self activeDevice];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__TVRUIUpNextController__remoteFetchUpNextInfosWithPaginationToken_completion___block_invoke;
    v11[3] = &unk_279D87920;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = v7;
    [v10 fetchUpNextInfoWithPaginationToken:v12 completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __79__TVRUIUpNextController__remoteFetchUpNextInfosWithPaginationToken_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setIsFetchingUpNextInfos:0];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__TVRUIUpNextController__remoteFetchUpNextInfosWithPaginationToken_completion___block_invoke_2;
  v14[3] = &unk_279D878F8;
  objc_copyWeak(&v20, a1 + 6);
  v15 = v9;
  v16 = v8;
  v17 = a1[4];
  v18 = v7;
  v19 = a1[5];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v14);

  objc_destroyWeak(&v20);
}

void __79__TVRUIUpNextController__remoteFetchUpNextInfosWithPaginationToken_completion___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained _notifyInfosUpdatedFromRequest:1];
    v4 = *(a1 + 64);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, MEMORY[0x277CBEBF8], *(a1 + 32));
    }

    v27 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __79__TVRUIUpNextController__remoteFetchUpNextInfosWithPaginationToken_completion___block_invoke_2_cold_1((a1 + 32), v27);
    }
  }

  else
  {
    v26 = WeakRetained;
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = a1;
    v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D6C5B8]];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = MEMORY[0x277CCAAC8];
            v12 = objc_opt_class();
            v28 = 0;
            v13 = [v11 unarchivedObjectOfClass:v12 fromData:v10 error:&v28];
            v14 = v28;
            v15 = v14;
            if (v13)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              [v27 addObject:v13];
            }

            else
            {
              v17 = _TVRUINowPlayingLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v34 = v15;
                _os_log_error_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_ERROR, "Error unarchiving UpNext info: %{public}@", buf, 0xCu);
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v7);
    }

    v18 = [*(v25 + 48) length];
    v3 = v26;
    if (v26)
    {
      v19 = v18;
      [v26 setPaginationToken:*(v25 + 56)];
      [v26 setRefreshNeeded:0];
      v20 = [MEMORY[0x277CBEAA8] now];
      [v26 setLastRefreshTimestamp:v20];

      [v26 setHasFetchedInfos:1];
      if (v19)
      {
        v21 = [v26 infos];
        v22 = [v21 arrayByAddingObjectsFromArray:v27];
        [v26 setInfos:v22];
      }

      else
      {
        [v26 setInfos:v27];
      }

      v23 = [v26 infos];
      [v26 _notifyInfosUpdatedFromRequest:1];
    }

    else
    {
      v23 = MEMORY[0x277CBEBF8];
    }

    v24 = *(v25 + 64);
    if (v24)
    {
      (*(v24 + 16))(v24, *(v25 + 56), v23, *(v25 + 32));
    }
  }
}

- (void)_remoteAddItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(TVRUIUpNextController *)self activeDevice];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVRUIUpNextController *)self activeDevice];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__TVRUIUpNextController__remoteAddItemWithMediaIdentifier_completion___block_invoke;
    v11[3] = &unk_279D87970;
    v12 = v6;
    v13 = v7;
    objc_copyWeak(&v14, &location);
    [v10 addItemWithMediaIdentifier:v12 completion:v11];

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __70__TVRUIUpNextController__remoteAddItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__TVRUIUpNextController__remoteAddItemWithMediaIdentifier_completion___block_invoke_cold_1();
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__TVRUIUpNextController__remoteAddItemWithMediaIdentifier_completion___block_invoke_29;
  block[3] = &unk_279D87948;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  objc_copyWeak(&v10, (a1 + 48));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v10);
}

void __70__TVRUIUpNextController__remoteAddItemWithMediaIdentifier_completion___block_invoke_29(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained refresh];
}

- (void)_remoteMarkAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(TVRUIUpNextController *)self activeDevice];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVRUIUpNextController *)self activeDevice];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__TVRUIUpNextController__remoteMarkAsWatchedWithMediaIdentifier_completion___block_invoke;
    v11[3] = &unk_279D87970;
    v12 = v6;
    v13 = v7;
    objc_copyWeak(&v14, &location);
    [v10 markAsWatchedWithMediaIdentifier:v12 completion:v11];

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __76__TVRUIUpNextController__remoteMarkAsWatchedWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__TVRUIUpNextController__remoteMarkAsWatchedWithMediaIdentifier_completion___block_invoke_cold_1();
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__TVRUIUpNextController__remoteMarkAsWatchedWithMediaIdentifier_completion___block_invoke_33;
  block[3] = &unk_279D87948;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  objc_copyWeak(&v10, (a1 + 48));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v10);
}

void __76__TVRUIUpNextController__remoteMarkAsWatchedWithMediaIdentifier_completion___block_invoke_33(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained refresh];
}

- (void)_remoteRemoveItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(TVRUIUpNextController *)self activeDevice];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVRUIUpNextController *)self activeDevice];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__TVRUIUpNextController__remoteRemoveItemWithMediaIdentifier_completion___block_invoke;
    v11[3] = &unk_279D87970;
    v12 = v6;
    v13 = v7;
    objc_copyWeak(&v14, &location);
    [v10 removeItemWithMediaIdentifier:v12 completion:v11];

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __73__TVRUIUpNextController__remoteRemoveItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__TVRUIUpNextController__remoteRemoveItemWithMediaIdentifier_completion___block_invoke_cold_1();
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__TVRUIUpNextController__remoteRemoveItemWithMediaIdentifier_completion___block_invoke_36;
  block[3] = &unk_279D87948;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  objc_copyWeak(&v10, (a1 + 48));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v10);
}

void __73__TVRUIUpNextController__remoteRemoveItemWithMediaIdentifier_completion___block_invoke_36(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained refresh];
}

- (void)_remotePlayItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TVRUIUpNextController *)self activeDevice];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVRUIUpNextController *)self activeDevice];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__TVRUIUpNextController__remotePlayItem_completion___block_invoke;
    v11[3] = &unk_279D879C0;
    v12 = v6;
    v13 = v7;
    [v10 playItem:v12 completion:v11];
  }
}

void __52__TVRUIUpNextController__remotePlayItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__TVRUIUpNextController__remotePlayItem_completion___block_invoke_cold_1();
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TVRUIUpNextController__remotePlayItem_completion___block_invoke_39;
  v7[3] = &unk_279D87998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)_prewarmImagesAsNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(TVRUIUpNextController *)self infos];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(TVRUIUpNextController *)self fetchImageForUpNextInfo:*(*(&v8 + 1) + 8 * v7++) completion:&__block_literal_global];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __79__TVRUIUpNextController__remoteFetchUpNextInfosWithPaginationToken_completion___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "Error fetching watch list: %{public}@", &v3, 0xCu);
}

void __70__TVRUIUpNextController__remoteAddItemWithMediaIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CFEB000, v0, v1, "Error adding item %{public}@: %@");
}

void __76__TVRUIUpNextController__remoteMarkAsWatchedWithMediaIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CFEB000, v0, v1, "Error marking %{public}@ as watched: %@");
}

void __73__TVRUIUpNextController__remoteRemoveItemWithMediaIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CFEB000, v0, v1, "Error removing %{public}@ from watch list: %@");
}

void __52__TVRUIUpNextController__remotePlayItem_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CFEB000, v0, v1, "Error playing %{public}@: %@");
}

@end