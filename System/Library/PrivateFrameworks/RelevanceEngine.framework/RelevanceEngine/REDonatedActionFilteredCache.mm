@interface REDonatedActionFilteredCache
- (REDonatedActionFilteredCache)init;
- (REDonatedActionFilteredCacheDelegate)delegate;
- (id)_keyForAction:(id)a3;
- (unint64_t)_queue_performedCountForDonation:(id)a3;
- (unint64_t)_queue_performedTodayCountForBundleIdentifer:(id)a3 actionIdentifier:(unint64_t)a4;
- (void)_queue_incrementPerformedCountForDonation:(id)a3;
- (void)_queue_removeAllData;
- (void)_queue_removeDonation:(id)a3;
- (void)_queue_removeDonationsForBundleIdentifier:(id)a3;
- (void)_queue_storeDonation:(id)a3;
- (void)_refreshAllDonations:(id)a3;
- (void)dealloc;
- (void)donationActionStoreReceivedDonation:(id)a3 isNewDonation:(BOOL)a4;
- (void)donationActionStoreRemoveAllDonations;
- (void)donationActionStoreRemovedDonation:(id)a3;
- (void)donationActionStoreRemovedDonationsFor:(id)a3;
- (void)fetchAllUniqueActions:(id)a3 completion:(id)a4;
- (void)fetchCountForAction:(id)a3 usingBlock:(id)a4;
- (void)fetchDonationWithIdentifier:(id)a3 completion:(id)a4;
- (void)fetchFirstPerformedActionDate:(id)a3;
- (void)fetchPerformedCountForAction:(id)a3 usingBlock:(id)a4;
- (void)fetchPerformedTodayCountForActionWithBundleIdentifer:(id)a3 actionIdentifier:(unint64_t)a4 completion:(id)a5;
- (void)reset;
- (void)setDelegate:(id)a3;
@end

@implementation REDonatedActionFilteredCache

- (REDonatedActionFilteredCache)init
{
  v18.receiver = self;
  v18.super_class = REDonatedActionFilteredCache;
  v2 = [(REDonatedActionFilteredCache *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    actions = v2->_actions;
    v2->_actions = v3;

    v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    countsByActionType = v2->_countsByActionType;
    v2->_countsByActionType = v5;

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    countPerformedTodayByActionType = v2->_countPerformedTodayByActionType;
    v2->_countPerformedTodayByActionType = v7;

    v9 = +[(RESingleton *)REDonatedActionStore];
    v10 = [v9 callbackQueue];
    queue = v2->_queue;
    v2->_queue = v10;

    v12 = +[(RESingleton *)REDonatedActionStore];
    [v12 addObserver:v2];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, REDonatedActionFilteredCacheReset, @"com.apple.relevanceengine.resetpredictedactions", 0, CFNotificationSuspensionBehaviorCoalesce);
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v2 selector:sel__refreshAllDonations_ name:@"REShowRecentDeveloperDonationsChangedNotification" object:0];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = RESignificantTimeChangeNotification();
    [v15 addObserver:v2 selector:sel__refreshAllDonations_ name:v16 object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[(RESingleton *)REDonatedActionStore];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.relevanceengine.resetpredictedactions", 0);
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"REShowRecentDeveloperDonationsChangedNotification" object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = RESignificantTimeChangeNotification();
  [v6 removeObserver:self name:v7 object:0];

  v8.receiver = self;
  v8.super_class = REDonatedActionFilteredCache;
  [(REDonatedActionFilteredCache *)&v8 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)fetchAllUniqueActions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__REDonatedActionFilteredCache_fetchAllUniqueActions_completion___block_invoke;
    block[3] = &unk_2785FB700;
    block[4] = self;
    v11 = v6;
    v12 = v8;
    dispatch_async(queue, block);
  }

  else if (v7)
  {
    dispatch_async(self->_queue, v7);
  }
}

uint64_t __65__REDonatedActionFilteredCache_fetchAllUniqueActions_completion___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1[4] + 24) objectForKey:{*(*(&v12 + 1) + 8 * v6), v12}];
        v8 = a1[5];
        v9 = [v7 action];
        (*(v8 + 16))(v8, v9);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fetchCountForAction:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__REDonatedActionFilteredCache_fetchCountForAction_usingBlock___block_invoke;
    block[3] = &unk_2785F99C8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }
}

void __63__REDonatedActionFilteredCache_fetchCountForAction_usingBlock___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _keyForAction:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 24) objectForKey:v5];
  v3 = *(a1 + 48);
  v4 = [v2 uuids];
  (*(v3 + 16))(v3, [v4 count]);
}

- (void)fetchDonationWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[(RESingleton *)REDonatedActionStore];
  [v7 fetchDonationWithIdentifier:v6 completion:v5];
}

- (void)fetchPerformedCountForAction:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__REDonatedActionFilteredCache_fetchPerformedCountForAction_usingBlock___block_invoke;
    block[3] = &unk_2785FAE80;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_async(queue, block);
  }
}

uint64_t __72__REDonatedActionFilteredCache_fetchPerformedCountForAction_usingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _queue_performedCountForDonation:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)fetchPerformedTodayCountForActionWithBundleIdentifer:(id)a3 actionIdentifier:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __113__REDonatedActionFilteredCache_fetchPerformedTodayCountForActionWithBundleIdentifer_actionIdentifier_completion___block_invoke;
    v12[3] = &unk_2785FD410;
    v14 = v9;
    v12[4] = self;
    v13 = v8;
    v15 = a4;
    dispatch_async(queue, v12);
  }
}

uint64_t __113__REDonatedActionFilteredCache_fetchPerformedTodayCountForActionWithBundleIdentifer_actionIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _queue_performedTodayCountForBundleIdentifer:*(a1 + 40) actionIdentifier:*(a1 + 56)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)fetchFirstPerformedActionDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__REDonatedActionFilteredCache_fetchFirstPerformedActionDate___block_invoke;
    v7[3] = &unk_2785FA150;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__REDonatedActionFilteredCache_reset__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__REDonatedActionFilteredCache_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_removeAllData];
  v2 = [*(a1 + 32) delegate];
  [v2 donatedActionFilteredCacheDonationRemoved];
}

- (void)donationActionStoreReceivedDonation:(id)a3 isNewDonation:(BOOL)a4
{
  queue = self->_queue;
  v6 = a3;
  dispatch_assert_queue_V2(queue);
  [(REDonatedActionFilteredCache *)self _queue_storeDonation:v6];
}

- (void)donationActionStoreRemovedDonation:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(REDonatedActionFilteredCache *)self _queue_removeDonation:v5];
}

- (void)donationActionStoreRemovedDonationsFor:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(REDonatedActionFilteredCache *)self _queue_removeDonationsForBundleIdentifier:v5];
}

- (void)donationActionStoreRemoveAllDonations
{
  dispatch_assert_queue_V2(self->_queue);

  [(REDonatedActionFilteredCache *)self _queue_removeAllData];
}

- (void)_queue_removeAllData
{
  v3 = objc_autoreleasePoolPush();
  [(NSMapTable *)self->_actions removeAllObjects];
  [(NSMapTable *)self->_countsByActionType removeAllObjects];
  [(NSMapTable *)self->_countPerformedTodayByActionType removeAllObjects];
  firstDonationDate = self->_firstDonationDate;
  self->_firstDonationDate = 0;

  objc_autoreleasePoolPop(v3);
}

- (id)_keyForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if ([v3 type] != 2 && (REShowRecentDeveloperDonations() & 1) == 0)
  {
    v5 = [v3 bundleIdentifier];

    v4 = v5;
  }

  if ([v3 type] == 1)
  {
    [v3 simplifiedActionTypeIdentifier];
  }

  else
  {
    [v3 actionTypeIdentifier];
  }
  v6 = ;
  v7 = -[_REActionKey initWithIdentifier:actionType:relevanceProvidersHash:]([_REActionKey alloc], "initWithIdentifier:actionType:relevanceProvidersHash:", v4, v6, [v3 relevanceProvidersHash]);

  return v7;
}

- (void)_queue_storeDonation:(id)a3
{
  v16 = a3;
  if ([v16 type] == 1)
  {
    [(REDonatedActionFilteredCache *)self _queue_incrementPerformedCountForDonation:v16];
    v4 = +[RESiriActionsDonationsWhitelist sharedInstance];
    v5 = [v16 bundleIdentifier];
    v6 = [v16 intentTypeName];
    v7 = [v4 intentIsWhitelistedForBundleID:v5 andTypeName:v6];

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_6:
    v12 = [(REDonatedActionFilteredCache *)self _keyForAction:v16];
    v13 = [(NSMapTable *)self->_actions objectForKey:v12];
    if (v13)
    {
      v14 = v13;
      [(_REActionValue *)v13 addAction:v16];
      v15 = [(REDonatedActionFilteredCache *)self delegate];
      [v15 donatedActionFilteredCacheCountDidChange];
    }

    else
    {
      v14 = [[_REActionValue alloc] initWithAction:v16];
      [(NSMapTable *)self->_actions setObject:v14 forKey:v12];
      v15 = [(REDonatedActionFilteredCache *)self delegate];
      [v15 donatedActionFilteredCacheDidAddDonation:v16];
    }

    goto LABEL_10;
  }

  if ([v16 type])
  {
    goto LABEL_6;
  }

  [(REDonatedActionFilteredCache *)self _queue_incrementPerformedCountForDonation:v16];
  v8 = +[RESiriActionsDonationsWhitelist sharedInstance];
  v9 = [v16 bundleIdentifier];
  v10 = [v16 activityType];
  v11 = [v8 userActivityIsWhitelistedForBundleID:v9 andActivityType:v10];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_10:
}

- (void)_queue_removeDonation:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"uuid"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_actions;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = [(NSMapTable *)self->_actions objectForKey:v10, v19];
      v12 = [v11 uuids];
      v13 = [v12 containsObject:v4];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (!v11)
    {
      goto LABEL_13;
    }

    [v11 removeActionWithUUID:v4];
    v15 = [v11 uuids];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [(REDonatedActionFilteredCache *)self delegate];
      [v17 donatedActionFilteredCacheCountDidChange];
    }

    else
    {
      [(NSMapTable *)self->_actions removeObjectForKey:v14];
      v17 = [(REDonatedActionFilteredCache *)self delegate];
      [v17 donatedActionFilteredCacheDonationRemoved];
    }
  }

  else
  {
LABEL_9:

    v14 = 0;
LABEL_13:
    v11 = RELogForDomain(14);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(REDonatedActionFilteredCache *)v4 _queue_removeDonation:v11];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeDonationsForBundleIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_actions;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      v10 = [(NSMapTable *)self->_actions objectForKey:v9];
      v11 = [v10 action];
      v12 = [v11 bundleIdentifier];
      v13 = [v18 isEqualToString:v12];

      if (v13)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v9;

    if (!v10)
    {
      goto LABEL_14;
    }

    v15 = RELogForDomain(14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(REDonatedActionFilteredCache *)v10 _queue_removeDonationsForBundleIdentifier:v18, v15];
    }

    [(NSMapTable *)self->_actions removeObjectForKey:v14];
    v16 = [(REDonatedActionFilteredCache *)self delegate];
    [v16 donatedActionFilteredCacheDonationRemoved];
  }

  else
  {
LABEL_9:

    v14 = 0;
LABEL_14:
    v10 = RELogForDomain(14);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(REDonatedActionFilteredCache *)v18 _queue_removeDonationsForBundleIdentifier:v10];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_queue_performedTodayCountForBundleIdentifer:(id)a3 actionIdentifier:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  v9 = [_REPerformedActionKey keyForBundleIdentifier:v7 identifier:v8];

  v10 = [(NSMapTable *)self->_countPerformedTodayByActionType objectForKey:v9];
  v11 = [v10 unsignedIntegerValue];

  return v11;
}

- (unint64_t)_queue_performedCountForDonation:(id)a3
{
  v4 = a3;
  v5 = [v4 simplifiedActionTypeIdentifier];
  if (v5)
  {
    v6 = [v4 bundleIdentifier];
    v7 = [_REPerformedActionKey keyForBundleIdentifier:v6 identifier:v5];

    v8 = [(NSMapTable *)self->_countsByActionType objectForKey:v7];
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_queue_incrementPerformedCountForDonation:(id)a3
{
  v23 = a3;
  v4 = [v23 simplifiedActionTypeIdentifier];
  if (v4)
  {
    v5 = [v23 bundleIdentifier];
    v6 = [_REPerformedActionKey keyForBundleIdentifier:v5 identifier:v4];

    v7 = [v23 creationDate];
    firstDonationDate = self->_firstDonationDate;
    if (firstDonationDate)
    {
      v9 = [(NSDate *)firstDonationDate earlierDate:v7];
    }

    else
    {
      v9 = v7;
    }

    v10 = self->_firstDonationDate;
    self->_firstDonationDate = v9;

    v11 = [(NSMapTable *)self->_countsByActionType objectForKey:v6];
    v12 = [v11 unsignedIntegerValue];

    countsByActionType = self->_countsByActionType;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + 1];
    [(NSMapTable *)countsByActionType setObject:v14 forKey:v6];

    if (REDateOccursToday(v7))
    {
      v15 = [v23 bundleIdentifier];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "re_actionIdentifierHashValue")}];
      v17 = [_REPerformedActionKey keyForBundleIdentifier:v15 identifier:v16];

      v18 = [(NSMapTable *)self->_countPerformedTodayByActionType objectForKey:v17];
      v19 = [v18 unsignedIntegerValue];

      countPerformedTodayByActionType = self->_countPerformedTodayByActionType;
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19 + 1];
      [(NSMapTable *)countPerformedTodayByActionType setObject:v21 forKey:v17];
    }

    v22 = [(REDonatedActionFilteredCache *)self delegate];
    [v22 donatedActionFilteredCacheCountDidChange];
  }
}

- (void)_refreshAllDonations:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RELogForDomain(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received.", buf, 0xCu);
  }

  v7 = [v4 name];
  v8 = [@"REShowRecentDeveloperDonationsChangedNotification" isEqualToString:v7];

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__REDonatedActionFilteredCache__refreshAllDonations___block_invoke;
  v11[3] = &unk_2785FA448;
  v11[4] = self;
  v12 = v8;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __53__REDonatedActionFilteredCache__refreshAllDonations___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_removeAllData];
  v2 = +[(RESingleton *)REDonatedActionStore];
  [v2 triggerDistributeAllDonatedActions:*(a1 + 40)];
}

- (REDonatedActionFilteredCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_removeDonation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "filtered action cache didn't contain action value with uuid: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeDonationsForBundleIdentifier:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 uuids];
  v7 = 134218242;
  v8 = [v5 count];
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_22859F000, a3, OS_LOG_TYPE_ERROR, "Remove %lu actions for %{public}@.", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeDonationsForBundleIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Attempted to remove %{public}@ actions, but none were found in filtered action cache.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end