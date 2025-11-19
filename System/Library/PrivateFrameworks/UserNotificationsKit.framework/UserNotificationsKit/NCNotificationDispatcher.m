@interface NCNotificationDispatcher
- (BOOL)_isRegisteredDestination:(id)a3;
- (NCNotificationDispatcher)init;
- (NCNotificationDispatcher)initWithAlertingController:(id)a3;
- (NCNotificationDispatcherDelegate)delegate;
- (id)destination:(id)a3 notificationRequestForUUID:(id)a4;
- (id)notificationSectionSettingsForDestination:(id)a3;
- (id)notificationSectionSettingsForDestination:(id)a3 forSectionIdentifier:(id)a4;
- (void)_clearUnsafeNotification:(id)a3;
- (void)_loadNotificationsImmediatelyIfNeededForSectionIdentifier:(id)a3;
- (void)_notifyDidExecuteAction:(id)a3 forNotificationRequest:(id)a4;
- (void)_performOperationForRequestDestinations:(id)a3 block:(id)a4;
- (void)_registerAlertDestination:(id)a3;
- (void)_registerDestination:(id)a3;
- (void)destination:(id)a3 didDismissNotificationRequest:(id)a4;
- (void)destination:(id)a3 didPresentNotificationRequest:(id)a4;
- (void)destination:(id)a3 executeAction:(id)a4 forNotificationRequest:(id)a5 requestAuthentication:(BOOL)a6 withParameters:(id)a7 completion:(id)a8;
- (void)destination:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotificationRequest:(id)a5 withParameters:(id)a6 completion:(id)a7;
- (void)destination:(id)a3 requestsClearingNotificationRequests:(id)a4;
- (void)destination:(id)a3 requestsClearingNotificationRequests:(id)a4 fromDestinations:(id)a5;
- (void)destination:(id)a3 requestsClearingNotificationRequestsFromDate:(id)a4 toDate:(id)a5 inSections:(id)a6;
- (void)destination:(id)a3 requestsClearingNotificationRequestsInSections:(id)a4;
- (void)destination:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsNotifications:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setDeliverQuietly:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)destination:(id)a3 setNotificationSystemSettings:(id)a4;
- (void)destination:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setSystemScheduledDeliveryEnabled:(BOOL)a4 scheduledDeliveryTimes:(id)a5;
- (void)destination:(id)a3 willPresentNotificationRequest:(id)a4 suppressAlerts:(BOOL)a5;
- (void)modifyNotificationWithRequest:(id)a3;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)postNotificationWithRequest:(id)a3;
- (void)registerDestination:(id)a3;
- (void)removeNotificationSectionWithIdentifier:(id)a3;
- (void)setDestination:(id)a3 enabled:(BOOL)a4;
- (void)unregisterDestination:(id)a3;
- (void)updateNotificationSectionSettings:(id)a3;
- (void)updateNotificationSystemSettings:(id)a3;
- (void)withdrawNotificationWithRequest:(id)a3;
@end

@implementation NCNotificationDispatcher

- (NCNotificationDispatcher)init
{
  [(NCNotificationDispatcher *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NCNotificationDispatcher)initWithAlertingController:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = NCNotificationDispatcher;
  v6 = [(NCNotificationDispatcher *)&v19 init];
  if (v6)
  {
    NCRegisterUserNotificationsUILogging();
    v7 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&dword_270A33000, v7, OS_LOG_TYPE_DEFAULT, "Initializing notifications dispatcher %{public}@", buf, 0xCu);
    }

    v8 = objc_opt_new();
    destinationsRegistry = v6->_destinationsRegistry;
    v6->_destinationsRegistry = v8;

    v10 = objc_opt_new();
    sectionSettings = v6->_sectionSettings;
    v6->_sectionSettings = v10;

    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    sourceDelegates = v6->_sourceDelegates;
    v6->_sourceDelegates = v12;

    v14 = objc_alloc_init(NCLayoutLoopDetector);
    layoutDetector = v6->_layoutDetector;
    v6->_layoutDetector = v14;

    objc_storeStrong(&v6->_alertingController, a3);
    v16 = objc_alloc_init(NCNotificationAlertQueue);
    alertQueue = v6->_alertQueue;
    v6->_alertQueue = v16;

    [(NCNotificationAlertQueue *)v6->_alertQueue setDelegate:v6];
  }

  return v6;
}

- (void)postNotificationWithRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_270A33000, "post-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = NCUILogDispatch;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 loggingDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Posting notification %{public}@", &buf, 0xCu);
  }

  v8 = [(NCNotificationDispatcher *)self destinationsRegistry];
  v9 = [v4 requestDestinations];
  v10 = [v8 destinationIdentifiersForRequestDestinations:v9];

  v11 = [(NCNotificationDispatcher *)self alertingController];
  [v11 alertOnPostForNotificationRequest:v4 forRequestDestinations:v10];

  if ([(NCNotificationDispatcher *)self _shouldPostNotificationRequest:v4])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x2020000000;
    v35 = 0;
    [(NCNotificationDispatcher *)self _willPostNotificationRequest:v4];
    v12 = [v4 sectionIdentifier];
    [(NCNotificationDispatcher *)self _loadNotificationsImmediatelyIfNeededForSectionIdentifier:v12];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56__NCNotificationDispatcher_postNotificationWithRequest___block_invoke;
    v27[3] = &unk_279E0DB38;
    v27[4] = self;
    v13 = v4;
    v28 = v13;
    p_buf = &buf;
    [(NCNotificationDispatcher *)self _performOperationForRequestDestinations:v13 block:v27];
    [(NCNotificationDispatcher *)self _didPostNotificationRequest:v13];
    if (*(*(&buf + 1) + 24) == 1)
    {
      v14 = NCUILogDispatch;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 notificationIdentifier];
        v16 = [v15 un_logDigest];
        *v31 = 138543362;
        v32 = v16;
        _os_log_impl(&dword_270A33000, v14, OS_LOG_TYPE_DEFAULT, "Not rolling banner for notification %{public}@; CoverSheet is active", v31, 0xCu);
      }
    }

    else
    {
      v20 = [(NCNotificationDispatcher *)self destinationsRegistry];
      v21 = [v13 requestDestinations];
      v14 = [v20 destinationsForRequestDestinations:v21];

      v22 = [(NCNotificationDispatcher *)self alertQueue];
      LODWORD(v21) = [v14 containsObject:v22];

      if (v21)
      {
        v23 = NCUILogDispatch;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v13 notificationIdentifier];
          v25 = [v24 un_logDigest];
          *v31 = 138543362;
          v32 = v25;
          _os_log_impl(&dword_270A33000, v23, OS_LOG_TYPE_DEFAULT, "Rolling banner for notification %{public}@", v31, 0xCu);
        }

        v26 = [(NCNotificationDispatcher *)self alertQueue];
        [v26 postNotificationRequest:v13];
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v17 = NCUILogDispatch;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v4 notificationIdentifier];
      v19 = [v18 un_logDigest];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_270A33000, v17, OS_LOG_TYPE_DEFAULT, "Not posting notification %{public}@ because it was marked as unsafe", &buf, 0xCu);
    }

    [(NCNotificationDispatcher *)self _clearUnsafeNotification:v4];
  }

  os_activity_scope_leave(&state);
}

void __56__NCNotificationDispatcher_postNotificationWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) alertQueue];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 notificationIdentifier];
      v10 = [v9 un_logDigest];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_270A33000, v8, OS_LOG_TYPE_DEFAULT, "Posting notification %{public}@ to destination %{public}@", &v14, 0x16u);
    }

    [v3 postNotificationRequest:*(a1 + 40)];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v13 = 1;
    }

    else if (objc_opt_respondsToSelector())
    {
      v13 = [v3 interceptsQueueRequest:*(a1 + 40)];
    }

    else
    {
      v13 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v13;
  }
}

- (void)modifyNotificationWithRequest:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_270A33000, "modify-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = NCUILogDispatch;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 loggingDescription];
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Modify notification %{public}@", buf, 0xCu);
  }

  if ([(NCNotificationDispatcher *)self _shouldPostNotificationRequest:v4])
  {
    [(NCNotificationDispatcher *)self _willPostNotificationRequest:v4];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__NCNotificationDispatcher_modifyNotificationWithRequest___block_invoke;
    v12[3] = &unk_279E0DB60;
    v8 = v4;
    v13 = v8;
    [(NCNotificationDispatcher *)self _performOperationForRequestDestinations:v8 block:v12];
    [(NCNotificationDispatcher *)self _didPostNotificationRequest:v8];
  }

  else
  {
    v9 = NCUILogDispatch;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 notificationIdentifier];
      v11 = [v10 un_logDigest];
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_270A33000, v9, OS_LOG_TYPE_DEFAULT, "Not modifying notification notification %{public}@ because it was marked as unsafe", buf, 0xCu);
    }

    [(NCNotificationDispatcher *)self _clearUnsafeNotification:v4];
  }

  os_activity_scope_leave(&state);
}

void __58__NCNotificationDispatcher_modifyNotificationWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NCUILogDispatch;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Modifying notification %{public}@ in destination %{public}@", &v11, 0x16u);
  }

  [v3 modifyNotificationRequest:*(a1 + 32)];
}

- (void)withdrawNotificationWithRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_270A33000, "withdraw-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = NCUILogDispatch;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 loggingDescription];
    *buf = 138543362;
    v27 = v7;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Withdraw notification %{public}@", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __60__NCNotificationDispatcher_withdrawNotificationWithRequest___block_invoke;
  v22 = &unk_279E0DB88;
  v9 = v4;
  v23 = v9;
  v10 = v8;
  v24 = v10;
  [(NCNotificationDispatcher *)self _performOperationForRequestDestinations:v9 block:&v19];
  v11 = [(NCNotificationDispatcher *)self destinationsRegistry:v19];
  v12 = [v9 requestDestinations];
  v13 = [v11 destinationsForRequestDestinations:v12];

  if (![v10 count])
  {
    v15 = [v9 requestDestinations];
    v16 = [v15 count] == 0;

    if (!v16)
    {
      v14 = NCUILogDispatch;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = [v9 notificationIdentifier];
        v18 = [v17 un_logDigest];
        [(NCNotificationDispatcher *)v18 withdrawNotificationWithRequest:buf, v14, v17];
      }

      goto LABEL_9;
    }
  }

  if ([v10 isEqualToSet:v13])
  {
    v14 = [(NCNotificationDispatcher *)self alertingController];
    [v14 killAlertsForNotificationRequest:v9];
LABEL_9:
  }

  [(NCNotificationDispatcher *)self _didRemoveNotificationRequest:v9];

  os_activity_scope_leave(&state);
}

void __60__NCNotificationDispatcher_withdrawNotificationWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NCUILogDispatch;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Withdrawing notification %{public}@ from destination %{public}@", &v11, 0x16u);
  }

  [v3 withdrawNotificationRequest:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

- (void)updateNotificationSectionSettings:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [v4 sectionIdentifier];
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEBUG))
  {
    [NCNotificationDispatcher updateNotificationSectionSettings:];
  }

  v6 = [(NCNotificationDispatcher *)self sectionSettings];
  v7 = [v6 objectForKey:v5];

  v8 = [(NCNotificationDispatcher *)self sectionSettings];
  [v8 setObject:v4 forKey:v5];

  v9 = [(NCNotificationDispatcher *)self destinationsRegistry];
  v10 = [v9 registeredDestinations];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 updateNotificationSectionSettings:v4 previousSectionSettings:{v7, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)updateNotificationSystemSettings:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [(NCNotificationDispatcher *)self notificationSystemSettings];
  [(NCNotificationDispatcher *)self setNotificationSystemSettings:v4];
  v6 = NCUILogDispatch;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Posting updated system settings %@", buf, 0xCu);
  }

  v7 = [(NCNotificationDispatcher *)self destinationsRegistry];
  v8 = [v7 registeredDestinations];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 updateNotificationSystemSettings:v4 previousSystemSettings:{v5, v15}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)removeNotificationSectionWithIdentifier:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEBUG))
  {
    [NCNotificationDispatcher removeNotificationSectionWithIdentifier:];
  }

  v5 = [(NCNotificationDispatcher *)self sectionSettings];
  [v5 removeObjectForKey:v4];
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEBUG))
  {
    [NCNotificationDispatcher notificationsLoadedForSectionIdentifier:];
  }

  v5 = [(NCNotificationDispatcher *)self destinationsRegistry];
  v6 = [v5 registeredDestinations];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
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

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 notificationsLoadedForSectionIdentifier:{v4, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)registerDestination:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NCNotificationDispatcher *)self _isRegisteredDestination:v4]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NCNotificationDispatcher *)self sectionSettings];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v4 updateNotificationSectionSettings:*(*(&v11 + 1) + 8 * v10++) previousSectionSettings:0];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isAlertDestination])
  {
    [(NCNotificationDispatcher *)self _registerAlertDestination:v4];
  }

  else
  {
    [(NCNotificationDispatcher *)self _registerDestination:v4];
  }
}

- (void)unregisterDestination:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationDispatcher *)self alertQueue];
  [v5 unregisterDestination:v4];

  v6 = [(NCNotificationDispatcher *)self destinationsRegistry];
  [v6 unregisterDestination:v4];
}

- (void)setDestination:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 isAlertDestination])
  {
    v6 = [(NCNotificationDispatcher *)self alertQueue];
  }

  else
  {
    v6 = [(NCNotificationDispatcher *)self destinationsRegistry];
  }

  v7 = v6;
  [v6 setDestination:v8 enabled:v4];
}

- (void)_registerDestination:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationDispatcher *)self destinationsRegistry];
  [v4 registerDestination:v5];

  [v5 setDelegate:self];
}

- (void)_registerAlertDestination:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationDispatcher *)self alertQueue];
  [v5 registerDestination:v4];

  v9 = [v4 identifier];

  v6 = [(NCNotificationDispatcher *)self destinationsRegistry];
  v7 = [(NCNotificationDispatcher *)self alertQueue];
  [v6 registerDestination:v7 forIdentifier:v9];

  v8 = [(NCNotificationDispatcher *)self destinationsRegistry];
  [v8 setDestinationWithIdentifier:v9 enabled:1];
}

- (BOOL)_isRegisteredDestination:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isAlertDestination])
  {
    v5 = [(NCNotificationDispatcher *)self alertQueue];
  }

  else
  {
    v5 = [(NCNotificationDispatcher *)self destinationsRegistry];
  }

  v6 = v5;
  v7 = [v5 isRegisteredDestination:v4];

  return v7;
}

- (void)destination:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotificationRequest:(id)a5 withParameters:(id)a6 completion:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 isSiriAction];
  v18 = [(NCNotificationDispatcher *)self delegate];
  if (!v18 || (v17 & 1) != 0)
  {
    v16[2](v16, 1);
  }

  else
  {
    v19 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      log = v19;
      v24 = [v13 identifier];
      v20 = [v14 notificationIdentifier];
      v21 = [v20 un_logDigest];
      v22 = [(__CFString *)v15 count];
      v23 = @"{}";
      *buf = 138543875;
      v27 = v24;
      if (v22)
      {
        v23 = v15;
      }

      v28 = 2114;
      v29 = v21;
      v30 = 2113;
      v31 = v23;
      _os_log_impl(&dword_270A33000, log, OS_LOG_TYPE_DEFAULT, "Dispatcher will request permission to execute action %{public}@ for notification %{public}@ with parameters %{private}@", buf, 0x20u);
    }

    [v18 dispatcher:self requestPermissionToExecuteAction:v13 forDestination:v12 notificationRequest:v14 withParameters:v15 completionBlock:v16];
  }
}

- (void)destination:(id)a3 executeAction:(id)a4 forNotificationRequest:(id)a5 requestAuthentication:(BOOL)a6 withParameters:(id)a7 completion:(id)a8
{
  v10 = a6;
  v51 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [(NCNotificationDispatcher *)self delegate];
  v19 = NCUILogDispatch;
  v36 = v18;
  if (v18)
  {
    v34 = v17;
    v35 = v15;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v14 identifier];
      v22 = [v15 notificationIdentifier];
      v23 = [v22 un_logDigest];
      v24 = [(__CFString *)v16 count];
      v25 = @"{}";
      *buf = 138543875;
      v46 = v21;
      if (v24)
      {
        v25 = v16;
      }

      v47 = 2114;
      v48 = v23;
      v49 = 2113;
      v50 = v25;
      _os_log_impl(&dword_270A33000, v20, OS_LOG_TYPE_DEFAULT, "Dispatcher will execute action %{public}@ for notification %{public}@ with parameters %{private}@", buf, 0x20u);
    }

    if ([v14 isSiriAction])
    {
      v26 = NCUILogDispatch;
      v10 = 0;
      if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = [v14 identifier];
        v29 = [v35 notificationIdentifier];
        v30 = [v29 un_logDigest];
        v31 = [(__CFString *)v16 count];
        v32 = @"{}";
        *buf = 138543875;
        v46 = v28;
        if (v31)
        {
          v32 = v16;
        }

        v47 = 2114;
        v48 = v30;
        v49 = 2113;
        v50 = v32;
        _os_log_impl(&dword_270A33000, v27, OS_LOG_TYPE_DEFAULT, "Action can be run with Siri. Dispatcher is bypassing lockscreen authentication. Action %{public}@ for notification %{public}@ with parameters %{private}@", buf, 0x20u);

        v10 = 0;
      }
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __125__NCNotificationDispatcher_destination_executeAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke;
    v38[3] = &unk_279E0DC28;
    v39 = v37;
    v40 = v14;
    v41 = v16;
    v17 = v34;
    v44 = v34;
    v42 = self;
    v15 = v35;
    v43 = v35;
    v33 = v36;
    [v36 dispatcher:self willExecuteAction:v40 forDestination:v39 notificationRequest:v43 requestAuthentication:v10 withParameters:v41 completionBlock:v38];
  }

  else
  {
    v33 = 0;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
    {
      [NCNotificationDispatcher destination:v19 executeAction:v15 forNotificationRequest:? requestAuthentication:? withParameters:? completion:?];
    }
  }
}

void __125__NCNotificationDispatcher_destination_executeAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke(id *a1, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a1[4] identifier];
    v4 = [a1[4] endpoint];
    v5 = NCUILogDispatch;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1[5] identifier];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      if ([a1[6] count])
      {
        v9 = a1[6];
      }

      else
      {
        v9 = @"{}";
      }

      *buf = 138543875;
      v29 = v6;
      v30 = 2114;
      v31 = v8;
      v32 = 2113;
      v33 = v9;
      _os_log_impl(&dword_270A33000, v5, OS_LOG_TYPE_DEFAULT, "Dispatcher executing action %{public}@ from destination %{public}@ with parameters %{private}@", buf, 0x20u);
    }

    v17 = [a1[5] actionRunner];

    if (v17)
    {
      v18 = [a1[5] actionRunner];
      v19 = a1[5];
      v20 = a1[6];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __125__NCNotificationDispatcher_destination_executeAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke_75;
      v26[3] = &unk_279E0DBD8;
      v21 = &v27;
      v27 = a1[9];
      [v18 executeAction:v19 fromOrigin:v3 endpoint:v4 withParameters:v20 completion:v26];
    }

    else
    {
      v22 = NCUILogDispatch;
      if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
      {
        __125__NCNotificationDispatcher_destination_executeAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke_cold_1(a1 + 5, v22);
      }

      v23 = a1[9];
      if (!v23)
      {
        goto LABEL_18;
      }

      v21 = &v25;
      v25 = v23;
      BSDispatchMain();
    }

LABEL_18:
    [a1[7] _notifyDidExecuteAction:a1[5] forNotificationRequest:a1[8]];

    goto LABEL_19;
  }

  v10 = NCUILogDispatch;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[5];
    v12 = v10;
    v13 = [v11 identifier];
    v14 = [a1[8] notificationIdentifier];
    v15 = [v14 un_logDigest];
    *buf = 138543618;
    v29 = v13;
    v30 = 2114;
    v31 = v15;
    _os_log_impl(&dword_270A33000, v12, OS_LOG_TYPE_DEFAULT, "Dispatcher delegate prevented execution of action %{public}@ for notification %{public}@", buf, 0x16u);
  }

  v16 = a1[9];
  if (v16)
  {
    v24 = v16;
    BSDispatchMain();
    v3 = v24;
LABEL_19:
  }
}

void __125__NCNotificationDispatcher_destination_executeAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke_75(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    BSDispatchMain();
  }
}

- (id)notificationSectionSettingsForDestination:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(NCNotificationDispatcher *)self sectionSettings];
  v5 = [v4 allValues];
  v6 = [v3 setWithArray:v5];
  v7 = [v6 copy];

  return v7;
}

- (id)notificationSectionSettingsForDestination:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationDispatcher *)self sectionSettings];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (void)destination:(id)a3 requestsClearingNotificationRequests:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_sourceDelegates;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) dispatcher:self requestsClearingNotificationRequests:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)destination:(id)a3 requestsClearingNotificationRequests:(id)a4 fromDestinations:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_sourceDelegates;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) dispatcher:self requestsClearingNotificationRequests:v7 fromDestinations:{v8, v14}];
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)destination:(id)a3 requestsClearingNotificationRequestsInSections:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_sourceDelegates;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) dispatcher:self requestsClearingNotificationRequestsInSections:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)destination:(id)a3 requestsClearingNotificationRequestsFromDate:(id)a4 toDate:(id)a5 inSections:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_sourceDelegates;
  v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) dispatcher:self requestsClearingNotificationRequestsFromDate:v9 toDate:v10 inSections:{v11, v17}];
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)destination:(id)a3 setAllowsNotifications:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sourceDelegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setAllowsNotifications:v5 forSectionIdentifier:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)a3 setDeliverQuietly:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sourceDelegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setDeliverQuietly:v5 forSectionIdentifier:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v9 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_sourceDelegates;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) dispatcher:self setMuted:v9 untilDate:v11 forSectionIdentifier:v12 threadIdentifier:{v13, v19}];
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)destination:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sourceDelegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setAllowsCriticalAlerts:v5 forSectionIdentifier:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sourceDelegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setAllowsTimeSensitive:v5 forSectionIdentifier:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sourceDelegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setAllowsDirectMessages:v5 forSectionIdentifier:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sourceDelegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setScheduledDelivery:v5 forSectionIdentifier:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)a3 setSystemScheduledDeliveryEnabled:(BOOL)a4 scheduledDeliveryTimes:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sourceDelegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setSystemScheduledDeliveryEnabled:v5 scheduledDeliveryTimes:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)destination:(id)a3 notificationRequestForUUID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_sourceDelegates;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = [*(*(&v14 + 1) + 8 * v11) dispatcher:self notificationRequestForUUID:{v5, v14}];

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)destination:(id)a3 setNotificationSystemSettings:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_sourceDelegates;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) dispatcher:self setNotificationSystemSettings:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)destination:(id)a3 willPresentNotificationRequest:(id)a4 suppressAlerts:(BOOL)a5
{
  if (!a5)
  {
    v8 = a4;
    v9 = a3;
    v11 = [(NCNotificationDispatcher *)self alertingController];
    v10 = [v9 identifier];

    [v11 alertOnPresentationForNotificationRequest:v8 presentingDestination:v10];
  }
}

- (void)destination:(id)a3 didPresentNotificationRequest:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationDispatcher *)self alertingController];
  [v6 resetAutomaticLockStateForNotificationRequest:v5];
}

- (void)destination:(id)a3 didDismissNotificationRequest:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationDispatcher *)self alertingController];
  [v6 killAlertsForNotificationRequest:v5];

  v7 = [(NCNotificationDispatcher *)self alertingController];
  [v7 resetAutomaticLockStateForNotificationRequest:v5];
}

- (void)_performOperationForRequestDestinations:(id)a3 block:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(NCNotificationDispatcher *)self destinationsRegistry];
  v10 = [v6 requestDestinations];
  v11 = [v9 destinationsForRequestDestinations:v10];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        if (v17 && ([v8 containsObject:{*(*(&v21 + 1) + 8 * v16), v21}] & 1) == 0)
        {
          v7[2](v7, v17);
          [v8 addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  if (![v8 count])
  {
    v18 = [v6 requestDestinations];
    v19 = [v18 count];

    if (v19)
    {
      v20 = NCUILogDispatch;
      if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
      {
        [NCNotificationDispatcher _performOperationForRequestDestinations:v20 block:v6];
      }
    }
  }
}

- (void)_loadNotificationsImmediatelyIfNeededForSectionIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_sourceDelegates;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {

LABEL_14:
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEBUG))
    {
      [NCNotificationDispatcher _loadNotificationsImmediatelyIfNeededForSectionIdentifier:];
    }

    [(NCNotificationDispatcher *)self notificationsLoadedForSectionIdentifier:v4, v13];
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v13 + 1) + 8 * i);
      v12 = objc_opt_respondsToSelector();
      if (v8 & 1 | ((v12 & 1) == 0))
      {
        v8 |= v12;
      }

      else
      {
        v8 = [v11 dispatcher:self supportSectionPreloadForSectionIdentifier:{v4, v13}];
      }
    }

    v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
}

- (void)_clearUnsafeNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sourceDelegates;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CBEB98] setWithObject:{v4, v12}];
        [v10 dispatcher:self requestsClearingNotificationRequests:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidExecuteAction:(id)a3 forNotificationRequest:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationDispatcher *)self delegate];
  [v8 dispatcher:self didExecuteAction:v6 forNotificationRequest:v7];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_sourceDelegates;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) dispatcher:self didExecuteAction:v6 forNotificationRequest:{v7, v14}];
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (NCNotificationDispatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)withdrawNotificationWithRequest:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_270A33000, log, OS_LOG_TYPE_ERROR, "No destination withdraws performed for notification %{public}@", buf, 0xCu);
}

- (void)destination:(void *)a1 executeAction:(void *)a2 forNotificationRequest:requestAuthentication:withParameters:completion:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 notificationIdentifier];
  v5 = [v4 un_logDigest];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_270A33000, v6, v7, "No delegate - can't execute action for %@", v8, v9, v10, v11, v12);
}

void __125__NCNotificationDispatcher_destination_executeAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_270A33000, v5, v6, "Action %{public}@ can't be executed because it has no runner", v7, v8, v9, v10, v11);
}

- (void)_performOperationForRequestDestinations:(void *)a1 block:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 requestDestinations];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_270A33000, v5, v6, "No active destinations for request destinations: %{public}@", v7, v8, v9, v10, v11);
}

@end