@interface SBCardItemsController
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SBCardItemsController)init;
- (void)_activateCardItem:(id)a3 animated:(BOOL)a4;
- (void)_deactivateCardItem:(id)a3;
- (void)_updateCardItem:(id)a3;
- (void)_updateRestrictions;
- (void)_updateThumbnailForCardItem:(id)a3 withSnapshotter:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)getCardItemsForControllerWithIdentifier:(id)a3 withHandler:(id)a4;
- (void)setCardItems:(id)a3 forControllerWithIdentifier:(id)a4;
@end

@implementation SBCardItemsController

- (SBCardItemsController)init
{
  v13.receiver = self;
  v13.super_class = SBCardItemsController;
  v2 = [(SBCardItemsController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cardItems = v2->_cardItems;
    v2->_cardItems = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.springboard.carditemscontroller"];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v2->_connections;
    v2->_connections = v7;

    v9 = [MEMORY[0x277D262A0] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = v9;

    [(SBCardItemsController *)v2 _updateRestrictions];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v2 selector:sel__updateRestrictions name:*MEMORY[0x277D25CA0] object:v2->_profileConnection];
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSXPCListener *)self->_listener invalidate];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self];

  v9.receiver = self;
  v9.super_class = SBCardItemsController;
  [(SBCardItemsController *)&v9 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  listener = self->_listener;
  if (listener == v6)
  {
    v9 = SBCardItemsControllerClientInterface();
    [v7 setRemoteObjectInterface:v9];

    v10 = SBCardItemsControllerServerInterface();
    [v7 setExportedInterface:v10];

    [v7 setExportedObject:self];
    objc_initWeak(&location, v7);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__SBCardItemsController_listener_shouldAcceptNewConnection___block_invoke;
    v16[3] = &unk_2783B0E88;
    v16[4] = self;
    objc_copyWeak(&v17, &location);
    [v7 setInterruptionHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBCardItemsController_listener_shouldAcceptNewConnection___block_invoke_34;
    v14[3] = &unk_2783B0E88;
    v14[4] = self;
    objc_copyWeak(&v15, &location);
    [v7 setInvalidationHandler:v14];
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    [v7 _setQueue:v11];

    [v7 resume];
    [(NSMutableArray *)self->_connections addObject:v7];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return listener == v6;
}

void __60__SBCardItemsController_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__SBCardItemsController_listener_shouldAcceptNewConnection___block_invoke_cold_1(v2);
  }

  v3 = *(*(a1 + 32) + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:WeakRetained];
}

void __60__SBCardItemsController_listener_shouldAcceptNewConnection___block_invoke_34(uint64_t a1)
{
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__SBCardItemsController_listener_shouldAcceptNewConnection___block_invoke_34_cold_1(v2);
  }

  v3 = *(*(a1 + 32) + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:WeakRetained];
}

- (void)setCardItems:(id)a3 forControllerWithIdentifier:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v38 = a4;
  v7 = [(NSMutableDictionary *)self->_cardItems objectForKey:?];
  v8 = [v7 copy];

  v44 = v8;
  v45 = [v8 mutableCopy];
  v43 = [MEMORY[0x277CBEB38] dictionary];
  v40 = objc_alloc_init(MEMORY[0x277D38B50]);
  v9 = SBLogWallet();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v59 = [v6 count];
    v60 = 2112;
    *v61 = v6;
    *&v61[8] = 2112;
    v62 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Received set card items [%ld]: %@ from: %@", buf, 0x20u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v41 = *v53;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [v44 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = self;
          v18 = [v15 isEqual:v13];
          v19 = [v16 thumbnail];

          if (v19)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }

          v21 = SBLogWallet();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138544130;
            v59 = v14;
            v60 = 1024;
            *v61 = v18 ^ 1;
            *&v61[4] = 1024;
            *&v61[6] = v19 != 0;
            LOWORD(v62) = 1024;
            *(&v62 + 2) = v20 ^ 1;
            _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Received card item %{public}@ [ didChange: %d existingCardHasThumbnail: %d ] %d", buf, 0x1Eu);
          }

          if (v20)
          {
            [v43 setObject:v16 forKeyedSubscript:v14];
            self = v17;
            goto LABEL_19;
          }

          [v43 setObject:v13 forKeyedSubscript:v14];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __66__SBCardItemsController_setCardItems_forControllerWithIdentifier___block_invoke;
          v51[3] = &unk_2783A92D8;
          self = v17;
          v51[4] = v17;
          v51[5] = v13;
          v22 = v51;
          v23 = v17;
        }

        else
        {
          [v43 setObject:v13 forKeyedSubscript:v14];
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __66__SBCardItemsController_setCardItems_forControllerWithIdentifier___block_invoke_2;
          v50[3] = &unk_2783A92D8;
          v50[4] = self;
          v50[5] = v13;
          v22 = v50;
          v23 = self;
        }

        [(SBCardItemsController *)v23 _updateThumbnailForCardItem:v13 withSnapshotter:v40 completion:v22];
LABEL_19:
        [v45 setObject:0 forKeyedSubscript:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v11);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v42 = [v45 allValues];
  v24 = [v42 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v47;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v42);
        }

        v28 = *(*(&v46 + 1) + 8 * j);
        v29 = SBLogWallet();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v28 identifier];
          *buf = 138543362;
          v59 = v30;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "Remove card item %{public}@", buf, 0xCu);
        }

        [(SBCardItemsController *)self _deactivateCardItem:v28];
        v31 = MEMORY[0x277D38B50];
        v32 = [v28 userInfo];
        v33 = [v32 objectForKey:@"uniqueIDs"];
        v34 = [v32 objectForKey:@"seedIndex"];
        v35 = [v34 unsignedIntegerValue];

        if ([v33 count])
        {
          if (v35 >= [v33 count])
          {
            v36 = 0;
          }

          else
          {
            v36 = v35;
          }

          v37 = [v33 objectAtIndexedSubscript:v36];
        }

        else
        {
          v37 = 0;
        }

        [v31 purgeCacheOfPassSnapshotsWithUinqueID:v37];
      }

      v25 = [v42 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v25);
  }

  [(NSMutableDictionary *)self->_cardItems setObject:v43 forKeyedSubscript:v38];
}

- (void)getCardItemsForControllerWithIdentifier:(id)a3 withHandler:(id)a4
{
  if (a4)
  {
    cardItems = self->_cardItems;
    v7 = a4;
    v9 = [(NSMutableDictionary *)cardItems objectForKey:a3];
    v8 = [v9 allValues];
    (*(a4 + 2))(v7, v8, 0);
  }
}

- (void)_updateThumbnailForCardItem:(id)a3 withSnapshotter:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 userInfo];
  v11 = [v10 objectForKey:@"uniqueIDs"];
  v12 = [v10 objectForKey:@"manifestHashes"];
  v13 = [v10 objectForKey:@"seedIndex"];
  v14 = [v13 unsignedIntegerValue];

  if ([v11 count])
  {
    v15 = [v12 count] != 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = SBLogWallet();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v7 identifier];
    *buf = 138543618;
    v28 = v17;
    v29 = 1024;
    v30 = v15;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Update thumbnail card item %{public}@ shouldRequestSnapshot: %d", buf, 0x12u);
  }

  if (v15)
  {
    if (v14 >= [v11 count])
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }

    if (v14 >= [v12 count])
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    v20 = [v11 objectAtIndexedSubscript:v18];
    v21 = [v12 objectAtIndexedSubscript:v19];
    v22 = SBLogWallet();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v7 identifier];
      *buf = 138543362;
      v28 = v23;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "Request snapshot for card item %{public}@", buf, 0xCu);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __80__SBCardItemsController__updateThumbnailForCardItem_withSnapshotter_completion___block_invoke;
    v24[3] = &unk_2783BE7A0;
    v25 = v7;
    v26 = v9;
    [v8 snapshotWithUniqueID:v20 manifestHash:v21 size:v24 completion:{53.0, 66.0}];
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

void __80__SBCardItemsController__updateThumbnailForCardItem_withSnapshotter_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SBCardItemsController__updateThumbnailForCardItem_withSnapshotter_completion___block_invoke_2;
  block[3] = &unk_2783AA1E8;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __80__SBCardItemsController__updateThumbnailForCardItem_withSnapshotter_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogWallet();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40) != 0;
    v6 = 138543618;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Received snapshot for card item %{public}@: %d", &v6, 0x12u);
  }

  [*(a1 + 32) setThumbnail:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_activateCardItem:(id)a3 animated:(BOOL)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogWallet();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 identifier];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Activating card item: %{public}@", &v9, 0xCu);
  }

  v8 = [(SBCardItemsController *)self walletNotificationSource];
  [v8 postNotificationRequestForCardItem:v5];
}

- (void)_updateCardItem:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogWallet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 identifier];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Updating card item: %{public}@", &v8, 0xCu);
  }

  v7 = [(SBCardItemsController *)self walletNotificationSource];
  [v7 modifyNotificationRequestForCardItem:v4];
}

- (void)_deactivateCardItem:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogWallet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 identifier];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Deactivating card item: %{public}@", &v8, 0xCu);
  }

  v7 = [(SBCardItemsController *)self walletNotificationSource];
  [v7 withdrawNotificationRequestForCardItem:v4];
}

- (void)_updateRestrictions
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SBCardItemsController__updateRestrictions__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __44__SBCardItemsController__updateRestrictions__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(*(a1 + 32) + 32) effectiveBoolValueForSetting:*MEMORY[0x277D25DC0]];
  v3 = result == 1;
  if (*(*(a1 + 32) + 40) != v3)
  {
    v4 = SBLogWallet();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Card while locked restriction changed: %d", buf, 8u);
    }

    *(*(a1 + 32) + 40) = v3;
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SBCardItemsController__updateRestrictions__block_invoke_37;
    v7[3] = &unk_2783AD138;
    v7[4] = v5;
    return [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }

  return result;
}

uint64_t __44__SBCardItemsController__updateRestrictions__block_invoke_37(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SBCardItemsController__updateRestrictions__block_invoke_2;
  v4[3] = &unk_2783AD138;
  v4[4] = *(a1 + 32);
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

@end