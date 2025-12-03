@interface SBCardItemsController
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SBCardItemsController)init;
- (void)_activateCardItem:(id)item animated:(BOOL)animated;
- (void)_deactivateCardItem:(id)item;
- (void)_updateCardItem:(id)item;
- (void)_updateRestrictions;
- (void)_updateThumbnailForCardItem:(id)item withSnapshotter:(id)snapshotter completion:(id)completion;
- (void)dealloc;
- (void)getCardItemsForControllerWithIdentifier:(id)identifier withHandler:(id)handler;
- (void)setCardItems:(id)items forControllerWithIdentifier:(id)identifier;
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

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = mEMORY[0x277D262A0];

    [(SBCardItemsController *)v2 _updateRestrictions];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__updateRestrictions name:*MEMORY[0x277D25CA0] object:v2->_profileConnection];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v9.receiver = self;
  v9.super_class = SBCardItemsController;
  [(SBCardItemsController *)&v9 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  listener = self->_listener;
  if (listener == listenerCopy)
  {
    v9 = SBCardItemsControllerClientInterface();
    [connectionCopy setRemoteObjectInterface:v9];

    v10 = SBCardItemsControllerServerInterface();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    objc_initWeak(&location, connectionCopy);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__SBCardItemsController_listener_shouldAcceptNewConnection___block_invoke;
    v16[3] = &unk_2783B0E88;
    v16[4] = self;
    objc_copyWeak(&v17, &location);
    [connectionCopy setInterruptionHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBCardItemsController_listener_shouldAcceptNewConnection___block_invoke_34;
    v14[3] = &unk_2783B0E88;
    v14[4] = self;
    objc_copyWeak(&v15, &location);
    [connectionCopy setInvalidationHandler:v14];
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    [connectionCopy _setQueue:v11];

    [connectionCopy resume];
    [(NSMutableArray *)self->_connections addObject:connectionCopy];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return listener == listenerCopy;
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

- (void)setCardItems:(id)items forControllerWithIdentifier:(id)identifier
{
  v63 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_cardItems objectForKey:?];
  v8 = [v7 copy];

  v44 = v8;
  v45 = [v8 mutableCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v40 = objc_alloc_init(MEMORY[0x277D38B50]);
  v9 = SBLogWallet();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v59 = [itemsCopy count];
    v60 = 2112;
    *v61 = itemsCopy;
    *&v61[8] = 2112;
    v62 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Received set card items [%ld]: %@ from: %@", buf, 0x20u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = itemsCopy;
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
        identifier = [v13 identifier];
        v15 = [v44 objectForKeyedSubscript:identifier];
        v16 = v15;
        if (v15)
        {
          selfCopy = self;
          v18 = [v15 isEqual:v13];
          thumbnail = [v16 thumbnail];

          if (thumbnail)
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
            v59 = identifier;
            v60 = 1024;
            *v61 = v18 ^ 1;
            *&v61[4] = 1024;
            *&v61[6] = thumbnail != 0;
            LOWORD(v62) = 1024;
            *(&v62 + 2) = v20 ^ 1;
            _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Received card item %{public}@ [ didChange: %d existingCardHasThumbnail: %d ] %d", buf, 0x1Eu);
          }

          if (v20)
          {
            [dictionary setObject:v16 forKeyedSubscript:identifier];
            self = selfCopy;
            goto LABEL_19;
          }

          [dictionary setObject:v13 forKeyedSubscript:identifier];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __66__SBCardItemsController_setCardItems_forControllerWithIdentifier___block_invoke;
          v51[3] = &unk_2783A92D8;
          self = selfCopy;
          v51[4] = selfCopy;
          v51[5] = v13;
          v22 = v51;
          selfCopy2 = selfCopy;
        }

        else
        {
          [dictionary setObject:v13 forKeyedSubscript:identifier];
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __66__SBCardItemsController_setCardItems_forControllerWithIdentifier___block_invoke_2;
          v50[3] = &unk_2783A92D8;
          v50[4] = self;
          v50[5] = v13;
          v22 = v50;
          selfCopy2 = self;
        }

        [(SBCardItemsController *)selfCopy2 _updateThumbnailForCardItem:v13 withSnapshotter:v40 completion:v22];
LABEL_19:
        [v45 setObject:0 forKeyedSubscript:identifier];
      }

      v11 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v11);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  allValues = [v45 allValues];
  v24 = [allValues countByEnumeratingWithState:&v46 objects:v56 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v28 = *(*(&v46 + 1) + 8 * j);
        v29 = SBLogWallet();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          identifier2 = [v28 identifier];
          *buf = 138543362;
          v59 = identifier2;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "Remove card item %{public}@", buf, 0xCu);
        }

        [(SBCardItemsController *)self _deactivateCardItem:v28];
        v31 = MEMORY[0x277D38B50];
        userInfo = [v28 userInfo];
        v33 = [userInfo objectForKey:@"uniqueIDs"];
        v34 = [userInfo objectForKey:@"seedIndex"];
        unsignedIntegerValue = [v34 unsignedIntegerValue];

        if ([v33 count])
        {
          if (unsignedIntegerValue >= [v33 count])
          {
            v36 = 0;
          }

          else
          {
            v36 = unsignedIntegerValue;
          }

          v37 = [v33 objectAtIndexedSubscript:v36];
        }

        else
        {
          v37 = 0;
        }

        [v31 purgeCacheOfPassSnapshotsWithUinqueID:v37];
      }

      v25 = [allValues countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v25);
  }

  [(NSMutableDictionary *)self->_cardItems setObject:dictionary forKeyedSubscript:identifierCopy];
}

- (void)getCardItemsForControllerWithIdentifier:(id)identifier withHandler:(id)handler
{
  if (handler)
  {
    cardItems = self->_cardItems;
    handlerCopy = handler;
    v9 = [(NSMutableDictionary *)cardItems objectForKey:identifier];
    allValues = [v9 allValues];
    (*(handler + 2))(handlerCopy, allValues, 0);
  }
}

- (void)_updateThumbnailForCardItem:(id)item withSnapshotter:(id)snapshotter completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  snapshotterCopy = snapshotter;
  completionCopy = completion;
  userInfo = [itemCopy userInfo];
  v11 = [userInfo objectForKey:@"uniqueIDs"];
  v12 = [userInfo objectForKey:@"manifestHashes"];
  v13 = [userInfo objectForKey:@"seedIndex"];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

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
    identifier = [itemCopy identifier];
    *buf = 138543618;
    v28 = identifier;
    v29 = 1024;
    v30 = v15;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Update thumbnail card item %{public}@ shouldRequestSnapshot: %d", buf, 0x12u);
  }

  if (v15)
  {
    if (unsignedIntegerValue >= [v11 count])
    {
      v18 = 0;
    }

    else
    {
      v18 = unsignedIntegerValue;
    }

    if (unsignedIntegerValue >= [v12 count])
    {
      v19 = 0;
    }

    else
    {
      v19 = unsignedIntegerValue;
    }

    v20 = [v11 objectAtIndexedSubscript:v18];
    v21 = [v12 objectAtIndexedSubscript:v19];
    v22 = SBLogWallet();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      identifier2 = [itemCopy identifier];
      *buf = 138543362;
      v28 = identifier2;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "Request snapshot for card item %{public}@", buf, 0xCu);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __80__SBCardItemsController__updateThumbnailForCardItem_withSnapshotter_completion___block_invoke;
    v24[3] = &unk_2783BE7A0;
    v25 = itemCopy;
    v26 = completionCopy;
    [snapshotterCopy snapshotWithUniqueID:v20 manifestHash:v21 size:v24 completion:{53.0, 66.0}];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)_activateCardItem:(id)item animated:(BOOL)animated
{
  v11 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = SBLogWallet();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    identifier = [itemCopy identifier];
    v9 = 138543362;
    v10 = identifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Activating card item: %{public}@", &v9, 0xCu);
  }

  walletNotificationSource = [(SBCardItemsController *)self walletNotificationSource];
  [walletNotificationSource postNotificationRequestForCardItem:itemCopy];
}

- (void)_updateCardItem:(id)item
{
  v10 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = SBLogWallet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [itemCopy identifier];
    v8 = 138543362;
    v9 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Updating card item: %{public}@", &v8, 0xCu);
  }

  walletNotificationSource = [(SBCardItemsController *)self walletNotificationSource];
  [walletNotificationSource modifyNotificationRequestForCardItem:itemCopy];
}

- (void)_deactivateCardItem:(id)item
{
  v10 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = SBLogWallet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [itemCopy identifier];
    v8 = 138543362;
    v9 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Deactivating card item: %{public}@", &v8, 0xCu);
  }

  walletNotificationSource = [(SBCardItemsController *)self walletNotificationSource];
  [walletNotificationSource withdrawNotificationRequestForCardItem:itemCopy];
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