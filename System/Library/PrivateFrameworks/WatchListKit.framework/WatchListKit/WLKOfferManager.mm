@interface WLKOfferManager
+ (id)_offerFullPath;
+ (id)_offerPath;
+ (id)defaultOfferManager;
- (WLKOfferManager)init;
- (id)_connection;
- (id)_offers;
- (id)_updateOfferFile;
- (void)_activeAccountChangedNotification:(id)a3;
- (void)_setOffers:(id)a3;
- (void)clearOffers:(id)a3;
- (void)removeOfferByBadgeId:(id)a3 completionHandler:(id)a4;
- (void)saveOffer:(id)a3 completionHandler:(id)a4;
- (void)sendBadgeActionMetricsEvents:(id)a3;
@end

@implementation WLKOfferManager

+ (id)defaultOfferManager
{
  if (defaultOfferManager___once != -1)
  {
    +[WLKOfferManager defaultOfferManager];
  }

  v3 = defaultOfferManager___defaultOfferManager;

  return v3;
}

uint64_t __38__WLKOfferManager_defaultOfferManager__block_invoke()
{
  defaultOfferManager___defaultOfferManager = objc_alloc_init(WLKOfferManager);

  return MEMORY[0x2821F96F8]();
}

- (WLKOfferManager)init
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = WLKOfferManager;
  v2 = [(WLKOfferManager *)&v25 init];
  if (v2)
  {
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - + (instancetype)defaultOfferManager - init", buf, 2u);
    }

    v4 = dispatch_queue_create("com.apple.WatchListKit.OfferManager", 0);
    queue = v2->_queue;
    v2->_queue = v4;

    if (WLKIsDaemon())
    {
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = +[WLKAccountMonitor sharedInstance];
      [v6 addObserver:v2 selector:sel__activeAccountChangedNotification_ name:@"WLKAccountMonitorAccountDidChange" object:v7];

      v8 = MEMORY[0x277CBEA90];
      v9 = +[WLKOfferManager _offerFullPath];
      v10 = [v8 dataWithContentsOfFile:v9];

      if (v10)
      {
        os_unfair_lock_lock(&__offersOnDiskLock);
        v24 = 0;
        v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:&v24];
        v12 = v24;
        os_unfair_lock_unlock(&__offersOnDiskLock);
        if (v12)
        {
          v13 = WLKSystemLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v12;
            _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - init read from disk failed secure unarchiver error: %@", buf, 0xCu);
          }
        }

        else
        {
          v14 = MEMORY[0x277CBEB98];
          v15 = objc_opt_class();
          v16 = objc_opt_class();
          v17 = objc_opt_class();
          v18 = objc_opt_class();
          v13 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
          v19 = [v11 decodeObjectOfClasses:v13 forKey:*MEMORY[0x277CCA308]];
          v20 = v19;
          if (v19)
          {
            v21 = [v19 copy];
            [(WLKOfferManager *)v2 _setOffers:v21];
          }

          else
          {
            v21 = WLKSystemLogObject();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - init read from disk unarchiver failed to decode object", buf, 2u);
            }
          }
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)saveOffer:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - saveOffer: begin", &buf, 2u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke;
  v27[3] = &unk_279E5EB38;
  v9 = v7;
  v28 = v9;
  v10 = MEMORY[0x2743D2DF0](v27);
  if (WLKIsDaemon())
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_49;
    block[3] = &unk_279E5EB88;
    objc_copyWeak(&v25, &buf);
    v23 = v6;
    v24 = v10;
    v12 = v10;
    dispatch_async(queue, block);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&buf);
  }

  else
  {
    v13 = [(WLKOfferManager *)self _connection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_3;
    v20[3] = &unk_279E5EB38;
    v14 = v10;
    v21 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v20];

    v16 = WLKSystemLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - calling out to daemon for saving offer", &buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_53;
    v18[3] = &unk_279E5EB38;
    v19 = v14;
    v17 = v14;
    [v15 saveOffer:v6 completionHandler:v18];
  }
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - saveOffer: end", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_49(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (a1[4])
  {
    v4 = [WeakRetained _offers];
    if (!v4 || (v5 = v4, [v3 _offers], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, !v7))
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithObject:a1[4]];
LABEL_13:
      v18 = [v10 copy];
      [v3 _setOffers:v18];

      v19 = [v3 _updateOfferFile];
      (*(a1[5] + 2))();

      goto LABEL_14;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v8 = [v3 _offers];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_2;
    v20[3] = &unk_279E5EB60;
    v21 = a1[4];
    v22 = a1[5];
    v23 = &v24;
    [v8 enumerateObjectsUsingBlock:v20];

    v9 = *(v25 + 24);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v12 = [v3 _offers];
      v13 = [v12 count];

      v14 = MEMORY[0x277CBEB18];
      [v3 _offers];
      if (v13 < 5)
        v15 = {;
        v16 = [v15 copy];
        v10 = [v14 arrayWithArray:v16];
      }

      else
        v15 = {;
        v16 = [v15 subarrayWithRange:{1, 4}];
        v17 = [v16 copy];
        v10 = [v14 arrayWithArray:v17];
      }

      [v10 addObject:a1[4]];
    }

    _Block_object_dispose(&v24, 8);
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKOfferManagerErrorDomain" code:-1 userInfo:0];
    (*(a1[5] + 2))();

    v10 = 0;
  }

LABEL_14:
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 isEqualToDictionary:a1[4]])
  {
    *a4 = 1;
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKOfferManagerErrorDomain" code:-2 userInfo:0];
    (*(a1[5] + 16))();
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Unable to communicate with the remote object proxy (%@)", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __47__WLKOfferManager_saveOffer_completionHandler___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - daemon callback for saving offer", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __42__WLKOfferManager_fetchOffers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - fetchOffers: end", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 0);
  }
}

void __42__WLKOfferManager_fetchOffers_completion___block_invoke_55(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _offers];
  if (*(a1 + 48) == 1)
  {
    [WeakRetained _setOffers:0];
    os_unfair_lock_lock(&__offersOnDiskLock);
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = +[WLKOfferManager _offerFullPath];
    v9 = 0;
    [v4 removeItemAtPath:v5 error:&v9];
    v6 = v9;

    os_unfair_lock_unlock(&__offersOnDiskLock);
    if (v6)
    {
      v7 = WLKSystemLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Failed to clear offers after fetching (%@)", buf, 0xCu);
      }
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __42__WLKOfferManager_fetchOffers_completion___block_invoke_57(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Unable to communicate with the remote object proxy (%@)", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __42__WLKOfferManager_fetchOffers_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - daemon callback for fetching", v5, 2u);
  }

  (*(*(a1 + 40) + 16))();
  if (v3 && [v3 count])
  {
    [*(a1 + 32) sendBadgeActionMetricsEvents:v3];
  }
}

- (void)removeOfferByBadgeId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - removeOffer: begin", &buf, 2u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke;
  v27[3] = &unk_279E5EB38;
  v9 = v7;
  v28 = v9;
  v10 = MEMORY[0x2743D2DF0](v27);
  if (WLKIsDaemon())
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_60;
    block[3] = &unk_279E5EB88;
    objc_copyWeak(&v25, &buf);
    v23 = v6;
    v24 = v10;
    v12 = v10;
    dispatch_async(queue, block);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&buf);
  }

  else
  {
    v13 = [(WLKOfferManager *)self _connection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_64;
    v20[3] = &unk_279E5EB38;
    v14 = v10;
    v21 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v20];

    v16 = WLKSystemLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - calling out to daemon for removing offer", &buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_65;
    v18[3] = &unk_279E5EB38;
    v19 = v14;
    v17 = v14;
    [v15 removeOfferByBadgeId:v6 completionHandler:v18];
  }
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - removeOffer: end", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_60(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained _offers];
  v4 = v3;
  if (v3 && [v3 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = -1;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_2;
    v19[3] = &unk_279E5EC28;
    v20 = a1[4];
    p_buf = &buf;
    [v4 enumerateObjectsUsingBlock:v19];
    v5 = *(*(&buf + 1) + 24);
    if (v5 == -1 || ([WeakRetained _offers], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count") == 1, v6, v7))
    {
      v8 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CBEB18];
      v13 = [WeakRetained _offers];
      v14 = [v13 copy];
      v8 = [v12 arrayWithArray:v14];

      [v8 removeObjectAtIndex:*(*(&buf + 1) + 24)];
    }

    _Block_object_dispose(&buf, 8);
    if (v5 != -1)
    {
      if (v8)
      {
        v15 = [v8 copy];
        [WeakRetained _setOffers:v15];

        v16 = [WeakRetained _updateOfferFile];
        (*(a1[5] + 2))();
      }

      else
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_3;
        v17[3] = &unk_279E5EB38;
        v18 = a1[5];
        [WeakRetained clearOffers:v17];
        v8 = v18;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = WLKSystemLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    if (!v10)
    {
      v10 = &stru_288206BC0;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Fail to remove offer. Badge ID %@ Not found", &buf, 0xCu);
  }

  (*(a1[5] + 2))();
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 objectForKey:@"badgeId"];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Failed to remove offer - %@", &v7, 0xCu);
    }
  }

  else if (v5)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Remove offer successfully", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_64(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Unable to communicate with the remote object proxy (%@)", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __58__WLKOfferManager_removeOfferByBadgeId_completionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - daemon callback for removing offer", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)clearOffers:(id)a3
{
  v4 = a3;
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - clearAllOffers: begin", &buf, 2u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __31__WLKOfferManager_clearOffers___block_invoke;
  v23[3] = &unk_279E5EB38;
  v6 = v4;
  v24 = v6;
  v7 = MEMORY[0x2743D2DF0](v23);
  if (WLKIsDaemon())
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__WLKOfferManager_clearOffers___block_invoke_66;
    block[3] = &unk_279E5E660;
    objc_copyWeak(&v21, &buf);
    v20 = v7;
    v9 = v7;
    dispatch_async(queue, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&buf);
  }

  else
  {
    v10 = [(WLKOfferManager *)self _connection];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __31__WLKOfferManager_clearOffers___block_invoke_68;
    v17[3] = &unk_279E5EB38;
    v11 = v7;
    v18 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v17];

    v13 = WLKSystemLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - calling out to daemon for clearing all offers", &buf, 2u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31__WLKOfferManager_clearOffers___block_invoke_69;
    v15[3] = &unk_279E5EB38;
    v16 = v11;
    v14 = v11;
    [v12 clearOffers:v15];
  }
}

void __31__WLKOfferManager_clearOffers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - clearAllOffers: end", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __31__WLKOfferManager_clearOffers___block_invoke_66(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setOffers:0];
  os_unfair_lock_lock(&__offersOnDiskLock);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[WLKOfferManager _offerFullPath];
  v10 = 0;
  [v3 removeItemAtPath:v4 error:&v10];
  v5 = v10;

  os_unfair_lock_unlock(&__offersOnDiskLock);
  v6 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  [v6 removeObjectForKey:@"badgeIdentifiers"];

  if (v5)
  {
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: daemon error when clearing offer: (%@)", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"WLKOfferManagerErrorDomain" code:objc_msgSend(v5 userInfo:{"code"), 0}];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

void __31__WLKOfferManager_clearOffers___block_invoke_68(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Error: Unable to communicate with the remote object proxy (%@)", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __31__WLKOfferManager_clearOffers___block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - daemon callback for clearing all offers", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = self->_connection;
    v9 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_75];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __30__WLKOfferManager__connection__block_invoke_76;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __30__WLKOfferManager__connection__block_invoke()
{
  v0 = WLKSystemLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Connection interrupted.", v1, 2u);
  }
}

void __30__WLKOfferManager__connection__block_invoke_76(uint64_t a1)
{
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Connection invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;
  }
}

- (void)_activeAccountChangedNotification:(id)a3
{
  if (WLKIsDaemon())
  {
    v3 = [MEMORY[0x277D6C478] activeAccount];
    if (!v3)
    {
      NSLog(&cfstr_Wlkoffermanage_0.isa);
      +[WLKBadgingUtilities clearSavedBadgeIdentifiers];
      v4 = +[WLKNotificationCenter defaultCenter];
      v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
      [v4 setBadgeNumber:v5 withCompletionHandler:0];

      v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
      [v6 removeObjectForKey:@"PreviouslyBadgedTVOffers"];

      v3 = 0;
    }
  }
}

- (id)_offers
{
  os_unfair_lock_lock(&__offersLock);
  v3 = [(NSArray *)self->_offers copy];
  os_unfair_lock_unlock(&__offersLock);

  return v3;
}

- (void)_setOffers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&__offersLock);
  offers = self->_offers;
  self->_offers = v4;

  os_unfair_lock_unlock(&__offersLock);
}

+ (id)_offerPath
{
  v2 = WLKDefaultSupportPath();
  if ([v2 length])
  {
    v3 = [MEMORY[0x277D6C478] activeAccount];
    v4 = [v3 ams_DSID];

    if (v4)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
      if (v5)
      {
        v6 = [v2 stringByAppendingPathComponent:v5];

        v2 = v6;
      }
    }
  }

  else
  {
    NSLog(&cfstr_Wlksettingssto.isa);
  }

  return v2;
}

+ (id)_offerFullPath
{
  v2 = +[WLKOfferManager _offerPath];
  v3 = [v2 stringByAppendingPathComponent:@"offers.plist"];

  v4 = [v3 stringByExpandingTildeInPath];

  return v4;
}

- (id)_updateOfferFile
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[WLKOfferManager _offerPath];
  v22 = 0;
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v22];
  v5 = v22;

  if (!v5)
  {
    v8 = MEMORY[0x277CCAAB0];
    v9 = [(WLKOfferManager *)self offers];
    v21 = 0;
    v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v21];
    v11 = v21;

    if (!v10)
    {
LABEL_13:
      v7 = v11;

      goto LABEL_14;
    }

    os_unfair_lock_lock(&__offersOnDiskLock);
    v12 = +[WLKOfferManager _offerFullPath];
    v13 = [v10 writeToFile:v12 atomically:1];

    os_unfair_lock_unlock(&__offersOnDiskLock);
    v14 = WLKSystemLogObject();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 0;
        v16 = "WLKOfferManager - _updateOfferFile: wrote offers to disk successfully";
        v17 = v14;
        v18 = 2;
LABEL_11:
        _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else if (v15)
    {
      *buf = 138412290;
      v24 = v11;
      v16 = "WLKOfferManager - _updateOfferFile: failed to write offers to disk - %@";
      v17 = v14;
      v18 = 12;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - _updateOfferFile: failed to create directory at path - %@", buf, 0xCu);
  }

  v7 = v5;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sendBadgeActionMetricsEvents:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CEE598]);
  v5 = WLKTVAppBundleID();
  v6 = [MEMORY[0x277CEE3F8] wlk_defaultBag];
  v34 = [v4 initWithContainerID:v5 bag:v6];

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = v3;
  v7 = [v3 lastObject];
  v8 = [v7 objectForKeyedSubscript:@"metrics"];

  obj = v8;
  v38 = [v8 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (!v38)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v9 = 0;
    goto LABEL_34;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v9 = 0;
  v37 = *v49;
  v10 = 0x277CCA000uLL;
  do
  {
    v11 = 0;
    do
    {
      if (*v49 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v39 = v11;
      v12 = *(*(&v48 + 1) + 8 * v11);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v45;
        do
        {
          v17 = 0;
          do
          {
            if (*v45 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v44 + 1) + 8 * v17);
            v19 = [v13 objectForKey:v18];
            if (![v18 isEqualToString:@"details"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v21 = *(v10 + 3240);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_25;
              }

              v20 = v19;
              if ([v18 isEqualToString:@"notificationId"])
              {
                v22 = v42;
                v23 = v9;
                v42 = v20;
                goto LABEL_22;
              }

              if ([v18 isEqualToString:@"marketingCampaignGroup"])
              {
                v22 = v41;
                v41 = v20;
                goto LABEL_21;
              }

              if ([v18 isEqualToString:@"marketingCampaignToken"])
              {
                v22 = v40;
                v40 = v20;
LABEL_21:
                v23 = v9;
LABEL_22:
                v20 = v20;

                v9 = v23;
              }

              else
              {
                v24 = [v18 isEqualToString:@"notificationType"];
                v22 = v9;
                v23 = v20;
                if (v24)
                {
                  goto LABEL_22;
                }
              }

              v10 = 0x277CCA000;
              goto LABEL_24;
            }

            v20 = v43;
            v43 = v19;
LABEL_24:

LABEL_25:
            ++v17;
          }

          while (v15 != v17);
          v25 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
          v15 = v25;
        }

        while (v25);
      }

      v11 = v39 + 1;
    }

    while (v39 + 1 != v38);
    v38 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  }

  while (v38);
LABEL_34:

  v26 = [objc_alloc(MEMORY[0x277CEE5A8]) initWithTopic:@"xp_amp_notifications"];
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v27 setObject:@"badgeAction" forKey:@"eventType"];
  if (v43)
  {
    v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v43];
    [v28 removeObjectForKey:@"brandId"];
    v29 = [v28 copy];
    [v27 setObject:v29 forKey:@"details"];
  }

  if (v9)
  {
    [v27 setObject:v9 forKey:@"notificationType"];
  }

  if (v42)
  {
    [v27 setObject:v42 forKey:@"notificationId"];
  }

  if (v41)
  {
    [v27 setObject:v41 forKey:@"marketingCampaignGroup"];
  }

  if (v40)
  {
    [v27 setObject:v40 forKey:@"marketingCampaignToken"];
  }

  [v26 addPropertiesWithDictionary:v27];
  [v33 addObject:v26];
  v30 = WLKSystemLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v33;
    _os_log_impl(&dword_272A0F000, v30, OS_LOG_TYPE_DEFAULT, "WLKOfferManager - Will send BadgeAction events: %@", buf, 0xCu);
  }

  [v34 enqueueEvents:v33];
  v31 = [v34 flush];
  [v31 addFinishBlock:&__block_literal_global_108];

  v32 = *MEMORY[0x277D85DE8];
}

void __48__WLKOfferManager_sendBadgeActionMetricsEvents___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WLKSystemLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "WLKOfferManager - Error flushing BadgeAction events: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "WLKOfferManager - BadgeAction Events flushed.";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end