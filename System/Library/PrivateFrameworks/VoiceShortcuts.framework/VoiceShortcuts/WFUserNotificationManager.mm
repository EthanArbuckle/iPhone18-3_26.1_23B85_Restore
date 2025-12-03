@interface WFUserNotificationManager
- (WFUserNotificationManager)init;
- (id)categoryIdentifiers;
- (void)addObserver:(id)observer forCategory:(id)category;
- (void)registerCategoriesIfNecessary:(id)necessary;
- (void)removeNotificationsWithIdentifiers:(id)identifiers;
- (void)removeObserver:(id)observer;
- (void)removeStaleNotificationsWithCompletion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation WFUserNotificationManager

- (void)removeNotificationsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  notificationCenter = [(WFUserNotificationManager *)self notificationCenter];
  [notificationCenter removeDeliveredNotificationsWithIdentifiers:identifiersCopy];
}

- (void)removeStaleNotificationsWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFUserNotificationManagerLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    categories = [(WFUserNotificationManager *)self categories];
    *buf = 136315394;
    v13 = "[WFUserNotificationManager removeStaleNotificationsWithCompletion:]";
    v14 = 2114;
    v15 = categories;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Attempting to remove stale notifications for categories: %{public}@", buf, 0x16u);
  }

  notificationCenter = [(WFUserNotificationManager *)self notificationCenter];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__WFUserNotificationManager_removeStaleNotificationsWithCompletion___block_invoke;
  v10[3] = &unk_2788FE440;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  [notificationCenter getDeliveredNotificationsWithCompletionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __68__WFUserNotificationManager_removeStaleNotificationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v45 = [MEMORY[0x277CBEA80] currentCalendar];
    v44 = [MEMORY[0x277CBEAA8] date];
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v40 = a1;
    v5 = [*(a1 + 32) categoryIdentifiers];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v41 = v3;
    v6 = v3;
    v7 = v4;
    obj = v6;
    v8 = [v6 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v48;
      v42 = v4;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          v13 = [v12 request];
          v14 = [v13 content];
          v15 = [v14 categoryIdentifier];
          v16 = [v5 containsObject:v15];

          if (v16)
          {
            v17 = [v12 date];
            v18 = [v45 components:16 fromDate:v17 toDate:v44 options:0];

            v19 = [v18 day];
            v20 = getWFUserNotificationManagerLogObject();
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            if (v19 < 7)
            {
              v22 = v43;
              if (v21)
              {
                v26 = [v12 request];
                v27 = [v26 identifier];
                v28 = [v12 date];
                *buf = 136315650;
                v52 = "[WFUserNotificationManager removeStaleNotificationsWithCompletion:]_block_invoke";
                v53 = 2112;
                v54 = v27;
                v55 = 2112;
                v56 = v28;
                _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Keeping notification (%@) (posted on %@)", buf, 0x20u);

                v7 = v42;
                v22 = v43;
              }
            }

            else
            {
              v22 = v7;
              if (v21)
              {
                v23 = [v12 request];
                v24 = [v23 identifier];
                v25 = [v12 date];
                *buf = 136315650;
                v52 = "[WFUserNotificationManager removeStaleNotificationsWithCompletion:]_block_invoke";
                v53 = 2112;
                v54 = v24;
                v55 = 2112;
                v56 = v25;
                _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Marking notification (%@) as stale (posted on %@)", buf, 0x20u);

                v7 = v42;
                v22 = v42;
              }
            }

            [v22 addObject:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v9);
    }

    v29 = [v7 if_map:&__block_literal_global_176];
    v30 = [v29 allObjects];

    v31 = v7;
    v32 = [*(v40 + 32) notificationCenter];
    [v32 removeDeliveredNotificationsWithIdentifiers:v30];

    v33 = *(v40 + 40);
    if (v33)
    {
      v34 = [v7 allObjects];
      v35 = [v43 allObjects];
      (*(v33 + 16))(v33, v34, v35);
    }

    v3 = v41;
  }

  else
  {
    v36 = getWFUserNotificationManagerLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [*(a1 + 32) categories];
      *buf = 136315394;
      v52 = "[WFUserNotificationManager removeStaleNotificationsWithCompletion:]_block_invoke";
      v53 = 2114;
      v54 = v37;
      _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_DEFAULT, "%s Not removing any notifications because no delivered notifications were found for categories: %{public}@", buf, 0x16u);
    }

    v38 = *(a1 + 40);
    if (v38)
    {
      (*(v38 + 16))(v38, 0, 0);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

id __68__WFUserNotificationManager_removeStaleNotificationsWithCompletion___block_invoke_173(uint64_t a1, void *a2)
{
  v2 = [a2 request];
  v3 = [v2 identifier];

  return v3;
}

- (id)categoryIdentifiers
{
  categories = [(WFUserNotificationManager *)self categories];
  v3 = [categories copy];

  v4 = [v3 if_map:&__block_literal_global_170];

  return v4;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  v11 = getWFUserNotificationManagerLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    notification = [responseCopy notification];
    request = [notification request];
    content = [request content];
    categoryIdentifier = [content categoryIdentifier];
    observers = [(WFUserNotificationManager *)self observers];
    *buf = 136315906;
    v35 = "[WFUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
    v36 = 2112;
    v37 = responseCopy;
    v38 = 2112;
    v39 = categoryIdentifier;
    v40 = 2112;
    v41 = observers;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Notification Manager received a notification response (%@) for category: %@, distributing to observers: %@", buf, 0x2Au);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  observers2 = [(WFUserNotificationManager *)self observers];
  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  content2 = [request2 content];
  categoryIdentifier2 = [content2 categoryIdentifier];
  v22 = [observers2 objectForKey:categoryIdentifier2];

  v23 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      v26 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v29 + 1) + 8 * v26);
        if (objc_opt_respondsToSelector())
        {
          [v27 userNotificationCenter:centerCopy didReceiveNotificationResponse:responseCopy withCompletionHandler:handlerCopy];
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v24);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)observer
{
  v20 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  categories = [(WFUserNotificationManager *)self categories];
  v6 = [categories countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(categories);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        observers = [(WFUserNotificationManager *)self observers];
        identifier = [v10 identifier];
        v13 = [observers objectForKey:identifier];

        [v13 removeObject:observerCopy];
        ++v9;
      }

      while (v7 != v9);
      v7 = [categories countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer forCategory:(id)category
{
  observerCopy = observer;
  categoryCopy = category;
  categories = [(WFUserNotificationManager *)self categories];
  v8 = [categories containsObject:categoryCopy];

  if ((v8 & 1) == 0)
  {
    categories2 = [(WFUserNotificationManager *)self categories];
    [categories2 addObject:categoryCopy];
  }

  observers = [(WFUserNotificationManager *)self observers];
  identifier = [categoryCopy identifier];
  weakObjectsHashTable = [observers objectForKey:identifier];

  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers2 = [(WFUserNotificationManager *)self observers];
    identifier2 = [categoryCopy identifier];
    [observers2 setObject:weakObjectsHashTable forKey:identifier2];
  }

  [weakObjectsHashTable addObject:observerCopy];
}

- (void)registerCategoriesIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  notificationCenter = [(WFUserNotificationManager *)self notificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__WFUserNotificationManager_registerCategoriesIfNecessary___block_invoke;
  v7[3] = &unk_2788FE3D8;
  v8 = necessaryCopy;
  selfCopy = self;
  v6 = necessaryCopy;
  [notificationCenter getNotificationCategoriesWithCompletionHandler:v7];
}

void __59__WFUserNotificationManager_registerCategoriesIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v3 containsObject:{v10, v14}] & 1) == 0)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [v7 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    v11 = [v7 setByAddingObjectsFromSet:v3];

    v12 = [*(a1 + 40) notificationCenter];
    [v12 setNotificationCategories:v11];

    v3 = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (WFUserNotificationManager)init
{
  v12.receiver = self;
  v12.super_class = WFUserNotificationManager;
  v2 = [(WFUserNotificationManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    categories = v2->_categories;
    v2->_categories = v3;

    v5 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = objc_alloc(MEMORY[0x277CE2028]);
    v8 = [v7 initWithBundleIdentifier:*MEMORY[0x277D7A338]];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v8;

    [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_notificationCenter setWantsNotificationResponsesDelivered];
    v10 = v2;
  }

  return v2;
}

@end