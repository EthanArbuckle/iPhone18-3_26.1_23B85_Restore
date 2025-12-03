@interface NCNotificationDispatcher
- (BOOL)_isRegisteredDestination:(id)destination;
- (NCNotificationDispatcher)init;
- (NCNotificationDispatcher)initWithAlertingController:(id)controller;
- (NCNotificationDispatcherDelegate)delegate;
- (id)destination:(id)destination notificationRequestForUUID:(id)d;
- (id)notificationSectionSettingsForDestination:(id)destination;
- (id)notificationSectionSettingsForDestination:(id)destination forSectionIdentifier:(id)identifier;
- (void)_clearUnsafeNotification:(id)notification;
- (void)_loadNotificationsImmediatelyIfNeededForSectionIdentifier:(id)identifier;
- (void)_notifyDidExecuteAction:(id)action forNotificationRequest:(id)request;
- (void)_performOperationForRequestDestinations:(id)destinations block:(id)block;
- (void)_registerAlertDestination:(id)destination;
- (void)_registerDestination:(id)destination;
- (void)destination:(id)destination didDismissNotificationRequest:(id)request;
- (void)destination:(id)destination didPresentNotificationRequest:(id)request;
- (void)destination:(id)destination executeAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion;
- (void)destination:(id)destination requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion;
- (void)destination:(id)destination requestsClearingNotificationRequests:(id)requests;
- (void)destination:(id)destination requestsClearingNotificationRequests:(id)requests fromDestinations:(id)destinations;
- (void)destination:(id)destination requestsClearingNotificationRequestsFromDate:(id)date toDate:(id)toDate inSections:(id)sections;
- (void)destination:(id)destination requestsClearingNotificationRequestsInSections:(id)sections;
- (void)destination:(id)destination setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)destination:(id)destination setNotificationSystemSettings:(id)settings;
- (void)destination:(id)destination setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times;
- (void)destination:(id)destination willPresentNotificationRequest:(id)request suppressAlerts:(BOOL)alerts;
- (void)modifyNotificationWithRequest:(id)request;
- (void)notificationsLoadedForSectionIdentifier:(id)identifier;
- (void)postNotificationWithRequest:(id)request;
- (void)registerDestination:(id)destination;
- (void)removeNotificationSectionWithIdentifier:(id)identifier;
- (void)setDestination:(id)destination enabled:(BOOL)enabled;
- (void)unregisterDestination:(id)destination;
- (void)updateNotificationSectionSettings:(id)settings;
- (void)updateNotificationSystemSettings:(id)settings;
- (void)withdrawNotificationWithRequest:(id)request;
@end

@implementation NCNotificationDispatcher

- (NCNotificationDispatcher)init
{
  [(NCNotificationDispatcher *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NCNotificationDispatcher)initWithAlertingController:(id)controller
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
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

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    sourceDelegates = v6->_sourceDelegates;
    v6->_sourceDelegates = weakObjectsHashTable;

    v14 = objc_alloc_init(NCLayoutLoopDetector);
    layoutDetector = v6->_layoutDetector;
    v6->_layoutDetector = v14;

    objc_storeStrong(&v6->_alertingController, controller);
    v16 = objc_alloc_init(NCNotificationAlertQueue);
    alertQueue = v6->_alertQueue;
    v6->_alertQueue = v16;

    [(NCNotificationAlertQueue *)v6->_alertQueue setDelegate:v6];
  }

  return v6;
}

- (void)postNotificationWithRequest:(id)request
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  BSDispatchQueueAssertMain();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_270A33000, "post-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = NCUILogDispatch;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    loggingDescription = [requestCopy loggingDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = loggingDescription;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Posting notification %{public}@", &buf, 0xCu);
  }

  destinationsRegistry = [(NCNotificationDispatcher *)self destinationsRegistry];
  requestDestinations = [requestCopy requestDestinations];
  v10 = [destinationsRegistry destinationIdentifiersForRequestDestinations:requestDestinations];

  alertingController = [(NCNotificationDispatcher *)self alertingController];
  [alertingController alertOnPostForNotificationRequest:requestCopy forRequestDestinations:v10];

  if ([(NCNotificationDispatcher *)self _shouldPostNotificationRequest:requestCopy])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x2020000000;
    v35 = 0;
    [(NCNotificationDispatcher *)self _willPostNotificationRequest:requestCopy];
    sectionIdentifier = [requestCopy sectionIdentifier];
    [(NCNotificationDispatcher *)self _loadNotificationsImmediatelyIfNeededForSectionIdentifier:sectionIdentifier];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56__NCNotificationDispatcher_postNotificationWithRequest___block_invoke;
    v27[3] = &unk_279E0DB38;
    v27[4] = self;
    v13 = requestCopy;
    v28 = v13;
    p_buf = &buf;
    [(NCNotificationDispatcher *)self _performOperationForRequestDestinations:v13 block:v27];
    [(NCNotificationDispatcher *)self _didPostNotificationRequest:v13];
    if (*(*(&buf + 1) + 24) == 1)
    {
      v14 = NCUILogDispatch;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        notificationIdentifier = [v13 notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        *v31 = 138543362;
        v32 = un_logDigest;
        _os_log_impl(&dword_270A33000, v14, OS_LOG_TYPE_DEFAULT, "Not rolling banner for notification %{public}@; CoverSheet is active", v31, 0xCu);
      }
    }

    else
    {
      destinationsRegistry2 = [(NCNotificationDispatcher *)self destinationsRegistry];
      requestDestinations2 = [v13 requestDestinations];
      v14 = [destinationsRegistry2 destinationsForRequestDestinations:requestDestinations2];

      alertQueue = [(NCNotificationDispatcher *)self alertQueue];
      LODWORD(requestDestinations2) = [v14 containsObject:alertQueue];

      if (requestDestinations2)
      {
        v23 = NCUILogDispatch;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          notificationIdentifier2 = [v13 notificationIdentifier];
          un_logDigest2 = [notificationIdentifier2 un_logDigest];
          *v31 = 138543362;
          v32 = un_logDigest2;
          _os_log_impl(&dword_270A33000, v23, OS_LOG_TYPE_DEFAULT, "Rolling banner for notification %{public}@", v31, 0xCu);
        }

        alertQueue2 = [(NCNotificationDispatcher *)self alertQueue];
        [alertQueue2 postNotificationRequest:v13];
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v17 = NCUILogDispatch;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = un_logDigest3;
      _os_log_impl(&dword_270A33000, v17, OS_LOG_TYPE_DEFAULT, "Not posting notification %{public}@ because it was marked as unsafe", &buf, 0xCu);
    }

    [(NCNotificationDispatcher *)self _clearUnsafeNotification:requestCopy];
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

- (void)modifyNotificationWithRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  BSDispatchQueueAssertMain();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_270A33000, "modify-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = NCUILogDispatch;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    loggingDescription = [requestCopy loggingDescription];
    *buf = 138543362;
    v16 = loggingDescription;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Modify notification %{public}@", buf, 0xCu);
  }

  if ([(NCNotificationDispatcher *)self _shouldPostNotificationRequest:requestCopy])
  {
    [(NCNotificationDispatcher *)self _willPostNotificationRequest:requestCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__NCNotificationDispatcher_modifyNotificationWithRequest___block_invoke;
    v12[3] = &unk_279E0DB60;
    v8 = requestCopy;
    v13 = v8;
    [(NCNotificationDispatcher *)self _performOperationForRequestDestinations:v8 block:v12];
    [(NCNotificationDispatcher *)self _didPostNotificationRequest:v8];
  }

  else
  {
    v9 = NCUILogDispatch;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v16 = un_logDigest;
      _os_log_impl(&dword_270A33000, v9, OS_LOG_TYPE_DEFAULT, "Not modifying notification notification %{public}@ because it was marked as unsafe", buf, 0xCu);
    }

    [(NCNotificationDispatcher *)self _clearUnsafeNotification:requestCopy];
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

- (void)withdrawNotificationWithRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  BSDispatchQueueAssertMain();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_270A33000, "withdraw-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = NCUILogDispatch;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    loggingDescription = [requestCopy loggingDescription];
    *buf = 138543362;
    v27 = loggingDescription;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Withdraw notification %{public}@", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __60__NCNotificationDispatcher_withdrawNotificationWithRequest___block_invoke;
  v22 = &unk_279E0DB88;
  v9 = requestCopy;
  v23 = v9;
  v10 = v8;
  v24 = v10;
  [(NCNotificationDispatcher *)self _performOperationForRequestDestinations:v9 block:&v19];
  v11 = [(NCNotificationDispatcher *)self destinationsRegistry:v19];
  requestDestinations = [v9 requestDestinations];
  v13 = [v11 destinationsForRequestDestinations:requestDestinations];

  if (![v10 count])
  {
    requestDestinations2 = [v9 requestDestinations];
    v16 = [requestDestinations2 count] == 0;

    if (!v16)
    {
      alertingController = NCUILogDispatch;
      if (os_log_type_enabled(alertingController, OS_LOG_TYPE_ERROR))
      {
        notificationIdentifier = [v9 notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        [(NCNotificationDispatcher *)un_logDigest withdrawNotificationWithRequest:buf, alertingController, notificationIdentifier];
      }

      goto LABEL_9;
    }
  }

  if ([v10 isEqualToSet:v13])
  {
    alertingController = [(NCNotificationDispatcher *)self alertingController];
    [alertingController killAlertsForNotificationRequest:v9];
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

- (void)updateNotificationSectionSettings:(id)settings
{
  v22 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  sectionIdentifier = [settingsCopy sectionIdentifier];
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEBUG))
  {
    [NCNotificationDispatcher updateNotificationSectionSettings:];
  }

  sectionSettings = [(NCNotificationDispatcher *)self sectionSettings];
  v7 = [sectionSettings objectForKey:sectionIdentifier];

  sectionSettings2 = [(NCNotificationDispatcher *)self sectionSettings];
  [sectionSettings2 setObject:settingsCopy forKey:sectionIdentifier];

  destinationsRegistry = [(NCNotificationDispatcher *)self destinationsRegistry];
  registeredDestinations = [destinationsRegistry registeredDestinations];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = registeredDestinations;
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
          [v16 updateNotificationSectionSettings:settingsCopy previousSectionSettings:{v7, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)updateNotificationSystemSettings:(id)settings
{
  v22 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  notificationSystemSettings = [(NCNotificationDispatcher *)self notificationSystemSettings];
  [(NCNotificationDispatcher *)self setNotificationSystemSettings:settingsCopy];
  v6 = NCUILogDispatch;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = settingsCopy;
    _os_log_impl(&dword_270A33000, v6, OS_LOG_TYPE_DEFAULT, "Posting updated system settings %@", buf, 0xCu);
  }

  destinationsRegistry = [(NCNotificationDispatcher *)self destinationsRegistry];
  registeredDestinations = [destinationsRegistry registeredDestinations];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = registeredDestinations;
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
          [v14 updateNotificationSystemSettings:settingsCopy previousSystemSettings:{notificationSystemSettings, v15}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)removeNotificationSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEBUG))
  {
    [NCNotificationDispatcher removeNotificationSectionWithIdentifier:];
  }

  sectionSettings = [(NCNotificationDispatcher *)self sectionSettings];
  [sectionSettings removeObjectForKey:identifierCopy];
}

- (void)notificationsLoadedForSectionIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEBUG))
  {
    [NCNotificationDispatcher notificationsLoadedForSectionIdentifier:];
  }

  destinationsRegistry = [(NCNotificationDispatcher *)self destinationsRegistry];
  registeredDestinations = [destinationsRegistry registeredDestinations];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = registeredDestinations;
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
          [v12 notificationsLoadedForSectionIdentifier:{identifierCopy, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)registerDestination:(id)destination
{
  v16 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  if (![(NCNotificationDispatcher *)self _isRegisteredDestination:destinationCopy]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    sectionSettings = [(NCNotificationDispatcher *)self sectionSettings];
    allValues = [sectionSettings allValues];

    v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [destinationCopy updateNotificationSectionSettings:*(*(&v11 + 1) + 8 * v10++) previousSectionSettings:0];
        }

        while (v8 != v10);
        v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [destinationCopy isAlertDestination])
  {
    [(NCNotificationDispatcher *)self _registerAlertDestination:destinationCopy];
  }

  else
  {
    [(NCNotificationDispatcher *)self _registerDestination:destinationCopy];
  }
}

- (void)unregisterDestination:(id)destination
{
  destinationCopy = destination;
  alertQueue = [(NCNotificationDispatcher *)self alertQueue];
  [alertQueue unregisterDestination:destinationCopy];

  destinationsRegistry = [(NCNotificationDispatcher *)self destinationsRegistry];
  [destinationsRegistry unregisterDestination:destinationCopy];
}

- (void)setDestination:(id)destination enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  destinationCopy = destination;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [destinationCopy isAlertDestination])
  {
    alertQueue = [(NCNotificationDispatcher *)self alertQueue];
  }

  else
  {
    alertQueue = [(NCNotificationDispatcher *)self destinationsRegistry];
  }

  v7 = alertQueue;
  [alertQueue setDestination:destinationCopy enabled:enabledCopy];
}

- (void)_registerDestination:(id)destination
{
  destinationCopy = destination;
  destinationsRegistry = [(NCNotificationDispatcher *)self destinationsRegistry];
  [destinationsRegistry registerDestination:destinationCopy];

  [destinationCopy setDelegate:self];
}

- (void)_registerAlertDestination:(id)destination
{
  destinationCopy = destination;
  alertQueue = [(NCNotificationDispatcher *)self alertQueue];
  [alertQueue registerDestination:destinationCopy];

  identifier = [destinationCopy identifier];

  destinationsRegistry = [(NCNotificationDispatcher *)self destinationsRegistry];
  alertQueue2 = [(NCNotificationDispatcher *)self alertQueue];
  [destinationsRegistry registerDestination:alertQueue2 forIdentifier:identifier];

  destinationsRegistry2 = [(NCNotificationDispatcher *)self destinationsRegistry];
  [destinationsRegistry2 setDestinationWithIdentifier:identifier enabled:1];
}

- (BOOL)_isRegisteredDestination:(id)destination
{
  destinationCopy = destination;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [destinationCopy isAlertDestination])
  {
    alertQueue = [(NCNotificationDispatcher *)self alertQueue];
  }

  else
  {
    alertQueue = [(NCNotificationDispatcher *)self destinationsRegistry];
  }

  v6 = alertQueue;
  v7 = [alertQueue isRegisteredDestination:destinationCopy];

  return v7;
}

- (void)destination:(id)destination requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  actionCopy = action;
  requestCopy = request;
  parametersCopy = parameters;
  completionCopy = completion;
  isSiriAction = [actionCopy isSiriAction];
  delegate = [(NCNotificationDispatcher *)self delegate];
  if (!delegate || (isSiriAction & 1) != 0)
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v19 = NCUILogDispatch;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      log = v19;
      identifier = [actionCopy identifier];
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v22 = [(__CFString *)parametersCopy count];
      v23 = @"{}";
      *buf = 138543875;
      v27 = identifier;
      if (v22)
      {
        v23 = parametersCopy;
      }

      v28 = 2114;
      v29 = un_logDigest;
      v30 = 2113;
      v31 = v23;
      _os_log_impl(&dword_270A33000, log, OS_LOG_TYPE_DEFAULT, "Dispatcher will request permission to execute action %{public}@ for notification %{public}@ with parameters %{private}@", buf, 0x20u);
    }

    [delegate dispatcher:self requestPermissionToExecuteAction:actionCopy forDestination:destinationCopy notificationRequest:requestCopy withParameters:parametersCopy completionBlock:completionCopy];
  }
}

- (void)destination:(id)destination executeAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion
{
  authenticationCopy = authentication;
  v51 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  actionCopy = action;
  requestCopy = request;
  parametersCopy = parameters;
  completionCopy = completion;
  delegate = [(NCNotificationDispatcher *)self delegate];
  v19 = NCUILogDispatch;
  v36 = delegate;
  if (delegate)
  {
    v34 = completionCopy;
    v35 = requestCopy;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      identifier = [actionCopy identifier];
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v24 = [(__CFString *)parametersCopy count];
      v25 = @"{}";
      *buf = 138543875;
      v46 = identifier;
      if (v24)
      {
        v25 = parametersCopy;
      }

      v47 = 2114;
      v48 = un_logDigest;
      v49 = 2113;
      v50 = v25;
      _os_log_impl(&dword_270A33000, v20, OS_LOG_TYPE_DEFAULT, "Dispatcher will execute action %{public}@ for notification %{public}@ with parameters %{private}@", buf, 0x20u);
    }

    if ([actionCopy isSiriAction])
    {
      v26 = NCUILogDispatch;
      authenticationCopy = 0;
      if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        identifier2 = [actionCopy identifier];
        notificationIdentifier2 = [v35 notificationIdentifier];
        un_logDigest2 = [notificationIdentifier2 un_logDigest];
        v31 = [(__CFString *)parametersCopy count];
        v32 = @"{}";
        *buf = 138543875;
        v46 = identifier2;
        if (v31)
        {
          v32 = parametersCopy;
        }

        v47 = 2114;
        v48 = un_logDigest2;
        v49 = 2113;
        v50 = v32;
        _os_log_impl(&dword_270A33000, v27, OS_LOG_TYPE_DEFAULT, "Action can be run with Siri. Dispatcher is bypassing lockscreen authentication. Action %{public}@ for notification %{public}@ with parameters %{private}@", buf, 0x20u);

        authenticationCopy = 0;
      }
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __125__NCNotificationDispatcher_destination_executeAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke;
    v38[3] = &unk_279E0DC28;
    v39 = destinationCopy;
    v40 = actionCopy;
    v41 = parametersCopy;
    completionCopy = v34;
    v44 = v34;
    selfCopy = self;
    requestCopy = v35;
    v43 = v35;
    v33 = v36;
    [v36 dispatcher:self willExecuteAction:v40 forDestination:v39 notificationRequest:v43 requestAuthentication:authenticationCopy withParameters:v41 completionBlock:v38];
  }

  else
  {
    v33 = 0;
    if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
    {
      [NCNotificationDispatcher destination:v19 executeAction:requestCopy forNotificationRequest:? requestAuthentication:? withParameters:? completion:?];
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

- (id)notificationSectionSettingsForDestination:(id)destination
{
  v3 = MEMORY[0x277CBEB98];
  sectionSettings = [(NCNotificationDispatcher *)self sectionSettings];
  allValues = [sectionSettings allValues];
  v6 = [v3 setWithArray:allValues];
  v7 = [v6 copy];

  return v7;
}

- (id)notificationSectionSettingsForDestination:(id)destination forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionSettings = [(NCNotificationDispatcher *)self sectionSettings];
  v7 = [sectionSettings objectForKey:identifierCopy];

  return v7;
}

- (void)destination:(id)destination requestsClearingNotificationRequests:(id)requests
{
  v16 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
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

        [*(*(&v11 + 1) + 8 * v10++) dispatcher:self requestsClearingNotificationRequests:{requestsCopy, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)destination:(id)destination requestsClearingNotificationRequests:(id)requests fromDestinations:(id)destinations
{
  v19 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  destinationsCopy = destinations;
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

        [*(*(&v14 + 1) + 8 * v13++) dispatcher:self requestsClearingNotificationRequests:requestsCopy fromDestinations:{destinationsCopy, v14}];
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)destination:(id)destination requestsClearingNotificationRequestsInSections:(id)sections
{
  v16 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
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

        [*(*(&v11 + 1) + 8 * v10++) dispatcher:self requestsClearingNotificationRequestsInSections:{sectionsCopy, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)destination:(id)destination requestsClearingNotificationRequestsFromDate:(id)date toDate:(id)toDate inSections:(id)sections
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  sectionsCopy = sections;
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

        [*(*(&v17 + 1) + 8 * v16++) dispatcher:self requestsClearingNotificationRequestsFromDate:dateCopy toDate:toDateCopy inSections:{sectionsCopy, v17}];
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)destination:(id)destination setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier
{
  notificationsCopy = notifications;
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setAllowsNotifications:notificationsCopy forSectionIdentifier:{identifierCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)destination setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier
{
  quietlyCopy = quietly;
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setDeliverQuietly:quietlyCopy forSectionIdentifier:{identifierCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)destination setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
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

        [*(*(&v19 + 1) + 8 * v18++) dispatcher:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:{threadIdentifierCopy, v19}];
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)destination:(id)destination setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier
{
  alertsCopy = alerts;
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setAllowsCriticalAlerts:alertsCopy forSectionIdentifier:{identifierCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)destination setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:{identifierCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)destination setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier
{
  messagesCopy = messages;
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setAllowsDirectMessages:messagesCopy forSectionIdentifier:{identifierCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)destination setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setScheduledDelivery:deliveryCopy forSectionIdentifier:{identifierCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)destination:(id)destination setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x277D85DE8];
  timesCopy = times;
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

        [*(*(&v13 + 1) + 8 * v12++) dispatcher:self setSystemScheduledDeliveryEnabled:enabledCopy scheduledDeliveryTimes:{timesCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)destination:(id)destination notificationRequestForUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
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

        v9 = [*(*(&v14 + 1) + 8 * v11) dispatcher:self notificationRequestForUUID:{dCopy, v14}];

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

- (void)destination:(id)destination setNotificationSystemSettings:(id)settings
{
  v16 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
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

        [*(*(&v11 + 1) + 8 * v10++) dispatcher:self setNotificationSystemSettings:{settingsCopy, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)destination:(id)destination willPresentNotificationRequest:(id)request suppressAlerts:(BOOL)alerts
{
  if (!alerts)
  {
    requestCopy = request;
    destinationCopy = destination;
    alertingController = [(NCNotificationDispatcher *)self alertingController];
    identifier = [destinationCopy identifier];

    [alertingController alertOnPresentationForNotificationRequest:requestCopy presentingDestination:identifier];
  }
}

- (void)destination:(id)destination didPresentNotificationRequest:(id)request
{
  requestCopy = request;
  alertingController = [(NCNotificationDispatcher *)self alertingController];
  [alertingController resetAutomaticLockStateForNotificationRequest:requestCopy];
}

- (void)destination:(id)destination didDismissNotificationRequest:(id)request
{
  requestCopy = request;
  alertingController = [(NCNotificationDispatcher *)self alertingController];
  [alertingController killAlertsForNotificationRequest:requestCopy];

  alertingController2 = [(NCNotificationDispatcher *)self alertingController];
  [alertingController2 resetAutomaticLockStateForNotificationRequest:requestCopy];
}

- (void)_performOperationForRequestDestinations:(id)destinations block:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  blockCopy = block;
  v8 = objc_opt_new();
  destinationsRegistry = [(NCNotificationDispatcher *)self destinationsRegistry];
  requestDestinations = [destinationsCopy requestDestinations];
  v11 = [destinationsRegistry destinationsForRequestDestinations:requestDestinations];

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
          blockCopy[2](blockCopy, v17);
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
    requestDestinations2 = [destinationsCopy requestDestinations];
    v19 = [requestDestinations2 count];

    if (v19)
    {
      v20 = NCUILogDispatch;
      if (os_log_type_enabled(NCUILogDispatch, OS_LOG_TYPE_ERROR))
      {
        [NCNotificationDispatcher _performOperationForRequestDestinations:v20 block:destinationsCopy];
      }
    }
  }
}

- (void)_loadNotificationsImmediatelyIfNeededForSectionIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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

    [(NCNotificationDispatcher *)self notificationsLoadedForSectionIdentifier:identifierCopy, v13];
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
        v8 = [v11 dispatcher:self supportSectionPreloadForSectionIdentifier:{identifierCopy, v13}];
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

- (void)_clearUnsafeNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
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
        v11 = [MEMORY[0x277CBEB98] setWithObject:{notificationCopy, v12}];
        [v10 dispatcher:self requestsClearingNotificationRequests:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidExecuteAction:(id)action forNotificationRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  requestCopy = request;
  delegate = [(NCNotificationDispatcher *)self delegate];
  [delegate dispatcher:self didExecuteAction:actionCopy forNotificationRequest:requestCopy];

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

        [*(*(&v14 + 1) + 8 * v13++) dispatcher:self didExecuteAction:actionCopy forNotificationRequest:{requestCopy, v14}];
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