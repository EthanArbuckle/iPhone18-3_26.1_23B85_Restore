@interface NCNotificationSummaryOrderProvider
+ (id)atxDigestGeneratorClient;
+ (id)atxQueue;
+ (id)notificationSummaryOrderProviderOfType:(unint64_t)a3;
- (NCNotificationSummaryOrderProvider)init;
- (NCNotificationSummaryOrderProviderDelegate)delegate;
- (id)atxUserNotificationsArrayForNotificationGroupLists:(id)a3;
- (id)atxUserNotificationsForNotificationRequests:(id)a3;
- (id)clearControlViewForLeadingSummaryPlatterView;
- (id)filterPresentNotificationGroupsInDigestNotificationGroups:(id)a3;
- (id)listComponentDelegate;
- (id)materialGroupNameBase;
- (id)notificationRequestsInNotificationGroupLists:(id)a3;
- (id)orderedNotificationGroupLists:(id)a3 forATXUserNotificationDigestNotificationGroup:(id)a4 orderGroupNotifications:(BOOL)a5;
- (id)representativeNotificationGroupListInGroupLists:(id)a3 forATXUserNotificationDigestNotificationGroup:(id)a4;
- (id)representativeNotificationRequestsForNotificationGroupLists:(id)a3;
- (id)titlesForSectionListsInSummary;
- (unint64_t)currentNotificationCount;
- (unint64_t)notificationCountForNotificationGroupLists:(id)a3;
- (void)_tapOnSummaryPlatterView;
- (void)_updateNotificationOrderingForGroupList:(id)a3 byATXDigestNotificationGroup:(id)a4;
- (void)configureSummaryContentDisplaying:(id)a3 withSummaryContentProviding:(id)a4;
- (void)updateSummaryOrderWithNotificationGroupLists:(id)a3 reloadDigest:(BOOL)a4;
- (void)updatedOrderedGroupLists;
@end

@implementation NCNotificationSummaryOrderProvider

+ (id)notificationSummaryOrderProviderOfType:(unint64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(*off_278370C88[a3]);
  }

  return v4;
}

- (NCNotificationSummaryOrderProvider)init
{
  v6.receiver = self;
  v6.super_class = NCNotificationSummaryOrderProvider;
  v2 = [(NCNotificationSummaryOrderProvider *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v2 action:sel__tapOnSummaryPlatterView];
    summaryPlatterViewTapGestureRecognizer = v2->_summaryPlatterViewTapGestureRecognizer;
    v2->_summaryPlatterViewTapGestureRecognizer = v3;
  }

  return v2;
}

+ (id)atxQueue
{
  if (atxQueue_onceToken != -1)
  {
    +[NCNotificationSummaryOrderProvider atxQueue];
  }

  v3 = atxQueue___queue;

  return v3;
}

void __46__NCNotificationSummaryOrderProvider_atxQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.UserNotificationsUI.NCNotificationSummaryOrderProvider", v2);
  v1 = atxQueue___queue;
  atxQueue___queue = v0;
}

+ (id)atxDigestGeneratorClient
{
  if (atxDigestGeneratorClient_digestGeneratorClientOnceToken != -1)
  {
    +[NCNotificationSummaryOrderProvider atxDigestGeneratorClient];
  }

  v3 = atxDigestGeneratorClient___digestGeneratorClient;

  return v3;
}

uint64_t __62__NCNotificationSummaryOrderProvider_atxDigestGeneratorClient__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CEB6F8]);
  atxDigestGeneratorClient___digestGeneratorClient = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (void)updateSummaryOrderWithNotificationGroupLists:(id)a3 reloadDigest:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 copy];
  [(NCNotificationSummaryOrderProvider *)self setCachedOrderedNotificationGroupLists:v7];

  [(NCNotificationSummaryOrderProvider *)self updateLeadingSummaryPlatterView];
  if (v4)
  {
    v8 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
    v9 = [(NCNotificationSummaryOrderProvider *)self atxUserNotificationsArrayForNotificationGroupLists:v8];

    objc_initWeak(&location, self);
    v10 = [objc_opt_class() atxQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__NCNotificationSummaryOrderProvider_updateSummaryOrderWithNotificationGroupLists_reloadDigest___block_invoke;
    block[3] = &unk_278370A90;
    objc_copyWeak(&v14, &location);
    v13 = v9;
    v11 = v9;
    dispatch_async(v10, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __96__NCNotificationSummaryOrderProvider_updateSummaryOrderWithNotificationGroupLists_reloadDigest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __96__NCNotificationSummaryOrderProvider_updateSummaryOrderWithNotificationGroupLists_reloadDigest___block_invoke_2;
  v4[3] = &unk_278370A68;
  v4[4] = WeakRetained;
  [WeakRetained generateDigestForATXUserNotificationArrays:v3 withCompletionBlock:v4];
}

void __96__NCNotificationSummaryOrderProvider_updateSummaryOrderWithNotificationGroupLists_reloadDigest___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = [*(a1 + 32) cachedOrderedNotificationGroupLists];
  v5 = [v4 copy];

  v6 = [*(a1 + 32) orderedNotificationGroupLists:v5 forATXUserNotificationDigestNotificationGroup:v3 orderGroupNotifications:1];

  if ([v6 count] && (v7 = objc_msgSend(v6, "count"), v7 == objc_msgSend(v5, "count")))
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 summaryHeading];
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "Notification digest for %{public}@ updating group ordering and summary platter view", &v16, 0xCu);
    }

    [*(a1 + 32) setCachedOrderedNotificationGroupLists:v6];
    [*(a1 + 32) updateLeadingSummaryPlatterView];
    [*(a1 + 32) updatedOrderedGroupLists];
  }

  else
  {
    v12 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 summaryHeading];
      v16 = 138543874;
      v17 = v15;
      v18 = 2048;
      v19 = [v6 count];
      v20 = 2048;
      v21 = [v5 count];
      _os_log_error_impl(&dword_21E77E000, v14, OS_LOG_TYPE_ERROR, "Notification digest for %{public}@ not updating summary and order [count=%ld; expectedCount=%ld]", &v16, 0x20u);
    }
  }
}

- (id)materialGroupNameBase
{
  v3 = [(NCNotificationSummaryOrderProvider *)self delegate];
  v4 = [v3 materialGroupNameBaseForNotificationSummaryOrderProvider:self];

  return v4;
}

- (void)updatedOrderedGroupLists
{
  v4 = [(NCNotificationSummaryOrderProvider *)self delegate];
  v3 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  [v4 notificationSummaryOrderProvider:self didUpdateOrderedNotificationGroupLists:v3];
}

- (id)titlesForSectionListsInSummary
{
  v3 = [(NCNotificationSummaryOrderProvider *)self delegate];
  v4 = [v3 titlesForSectionListsInSummaryForSummaryOrderProvider:self];
  v5 = [v4 copy];

  return v5;
}

- (id)listComponentDelegate
{
  v3 = [(NCNotificationSummaryOrderProvider *)self delegate];
  v4 = [v3 listComponentDelegateForSummaryPlatterViewForNotificationSummaryOrderProvider:self];

  return v4;
}

- (unint64_t)currentNotificationCount
{
  v3 = [(NCNotificationSummaryOrderProvider *)self delegate];
  v4 = [v3 notificationCountForSummaryOrderProvider:self];

  return v4;
}

- (id)clearControlViewForLeadingSummaryPlatterView
{
  v3 = [(NCNotificationSummaryOrderProvider *)self delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 clearControlViewForLeadingSummaryPlatterViewForSummaryOrderProvider:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)notificationRequestsInNotificationGroupLists:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) allNotificationRequests];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (unint64_t)notificationCountForNotificationGroupLists:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) notificationCount];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)representativeNotificationRequestsForNotificationGroupLists:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 count])
        {
          v11 = [v10 leadingNotificationRequest];

          if (v11)
          {
            v12 = [v10 leadingNotificationRequest];
            [v4 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)atxUserNotificationsForNotificationRequests:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 bs_mapNoNulls:&__block_literal_global_32];

  [v5 addObjectsFromArray:v6];

  return v5;
}

- (id)atxUserNotificationsArrayForNotificationGroupLists:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__NCNotificationSummaryOrderProvider_atxUserNotificationsArrayForNotificationGroupLists___block_invoke;
  v11[3] = &unk_278370628;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __89__NCNotificationSummaryOrderProvider_atxUserNotificationsArrayForNotificationGroupLists___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 allNotificationRequests];
  v3 = [*(a1 + 32) atxUserNotificationsForNotificationRequests:v4];
  [*(a1 + 40) addObject:v3];
}

- (id)orderedNotificationGroupLists:(id)a3 forATXUserNotificationDigestNotificationGroup:(id)a4 orderGroupNotifications:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [(NCNotificationSummaryOrderProvider *)self representativeNotificationGroupListInGroupLists:v8 forATXUserNotificationDigestNotificationGroup:v16, v19];
        if (v17)
        {
          if (([v10 containsObject:v17] & 1) == 0)
          {
            [v10 addObject:v17];
            if (v5)
            {
              [(NCNotificationSummaryOrderProvider *)self _updateNotificationOrderingForGroupList:v17 byATXDigestNotificationGroup:v16];
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  return v10;
}

- (void)_updateNotificationOrderingForGroupList:(id)a3 byATXDigestNotificationGroup:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [v7 rankedNotifications];

  v10 = [v5 allNotificationRequests];
  v11 = [v10 copy];

  v12 = [v9 count];
  if (v12 == [v11 count])
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __107__NCNotificationSummaryOrderProvider__updateNotificationOrderingForGroupList_byATXDigestNotificationGroup___block_invoke;
    v27 = &unk_278370AB8;
    v13 = v11;
    v28 = v13;
    v14 = v8;
    v29 = v14;
    [v9 enumerateObjectsUsingBlock:&v24];
    v15 = [MEMORY[0x277CBEB98] setWithArray:{v13, v24, v25, v26, v27}];
    v16 = [MEMORY[0x277CBEB98] setWithArray:v14];
    if ([v15 isEqualToSet:v16])
    {
      v17 = [v13 isEqualToArray:v14];

      if ((v17 & 1) == 0)
      {
        v18 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = [v5 logDescription];
          *buf = 138543362;
          v31 = v20;
          _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "Ranked digest updating notification ordering for group %{public}@", buf, 0xCu);
        }

        [v5 updateOrderedNotificationRequests:v14];
      }
    }

    else
    {
    }
  }

  else
  {
    v21 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      v23 = [v5 logDescription];
      *buf = 138543874;
      v31 = v23;
      v32 = 2048;
      v33 = [v9 count];
      v34 = 2048;
      v35 = [v11 count];
      _os_log_error_impl(&dword_21E77E000, v22, OS_LOG_TYPE_ERROR, "Ranked notification ordering for group %{public}@ is incorrect with count %ld and actual count %ld", buf, 0x20u);
    }
  }
}

void __107__NCNotificationSummaryOrderProvider__updateNotificationOrderingForGroupList_byATXDigestNotificationGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__NCNotificationSummaryOrderProvider__updateNotificationOrderingForGroupList_byATXDigestNotificationGroup___block_invoke_2;
  v12[3] = &unk_278370180;
  v8 = v6;
  v13 = v8;
  v9 = [v7 indexOfObjectPassingTest:v12];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) objectAtIndex:v9];
    [v10 addObject:v11];
  }
}

uint64_t __107__NCNotificationSummaryOrderProvider__updateNotificationOrderingForGroupList_byATXDigestNotificationGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)representativeNotificationGroupListInGroupLists:(id)a3 forATXUserNotificationDigestNotificationGroup:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 representativeNotificationUUID];
  v8 = [v6 rankedNotifications];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __132__NCNotificationSummaryOrderProvider_representativeNotificationGroupListInGroupLists_forATXUserNotificationDigestNotificationGroup___block_invoke;
  v18[3] = &unk_278370AE0;
  v9 = v7;
  v19 = v9;
  v10 = [v8 bs_firstObjectPassingTest:v18];

  v11 = [v10 sectionID];
  if ([v11 length])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __132__NCNotificationSummaryOrderProvider_representativeNotificationGroupListInGroupLists_forATXUserNotificationDigestNotificationGroup___block_invoke_2;
    v15[3] = &unk_278370B08;
    v16 = v11;
    v17 = v10;
    v12 = [v5 indexOfObjectPassingTest:v15];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v5 objectAtIndex:v12];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __132__NCNotificationSummaryOrderProvider_representativeNotificationGroupListInGroupLists_forATXUserNotificationDigestNotificationGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

BOOL __132__NCNotificationSummaryOrderProvider_representativeNotificationGroupListInGroupLists_forATXUserNotificationDigestNotificationGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sectionIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __132__NCNotificationSummaryOrderProvider_representativeNotificationGroupListInGroupLists_forATXUserNotificationDigestNotificationGroup___block_invoke_3;
    v8[3] = &unk_27836FFD8;
    v9 = *(a1 + 40);
    v6 = [v3 indexOfNotificationRequestPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __132__NCNotificationSummaryOrderProvider_representativeNotificationGroupListInGroupLists_forATXUserNotificationDigestNotificationGroup___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)filterPresentNotificationGroupsInDigestNotificationGroups:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__NCNotificationSummaryOrderProvider_filterPresentNotificationGroupsInDigestNotificationGroups___block_invoke;
  v11[3] = &unk_278370B30;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __96__NCNotificationSummaryOrderProvider_filterPresentNotificationGroupsInDigestNotificationGroups___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [v3 cachedOrderedNotificationGroupLists];
  v5 = [v3 representativeNotificationGroupListInGroupLists:v4 forATXUserNotificationDigestNotificationGroup:v6];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)configureSummaryContentDisplaying:(id)a3 withSummaryContentProviding:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v5 summaryTitle];
  [v12 setSummaryTitle:v6];

  v7 = [v5 summary];
  [v12 setSummary:v7];

  v8 = [v5 summaryIconSymbolName];
  if (v8)
  {
    [v12 setSummaryIconSymbolName:v8];
  }

  else
  {
    v9 = [v5 summaryIconViews];
    [v12 setSummaryIconViews:v9];
  }

  [v12 setIconViewLeading:{objc_msgSend(v5, "isIconViewLeading")}];
  v10 = [v5 summaryTitleFontName];
  [v12 setSummaryTitleFontName:v10];

  v11 = [v5 summaryDate];
  [v12 setSummaryDate:v11];
}

- (void)_tapOnSummaryPlatterView
{
  if ([(NCNotificationSummaryOrderProvider *)self _shouldAllowTapOnLeadingSummaryPlatterView])
  {
    v3 = [(NCNotificationSummaryOrderProvider *)self delegate];
    [v3 notificationSummaryOrderProviderDidTapOnLeadingSummaryPlatterView:self];
  }
}

- (NCNotificationSummaryOrderProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end