@interface UNSUserNotificationServerConnectionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UNSUserNotificationServerConnectionListener)initWithCategoryRepository:(id)repository notificationSchedulingService:(id)service notificationAuthorizationService:(id)authorizationService notificationSettingsService:(id)settingsService notificationRepository:(id)notificationRepository remoteNotificationConnectionListener:(id)listener remoteNotificationService:(id)notificationService applicationLauncher:(id)self0 attachmentsService:(id)self1 locationMonitor:(id)self2 topicRepository:(id)self3 localizationService:(id)self4 communicationContextService:(id)self5;
- (id)_currentConnection;
- (id)_queue_delegateConnectionForBundleIdentifier:(id)identifier;
- (id)_queue_notificationRequestsForNotificationRecords:(id)records bundleIdentifier:(id)identifier;
- (id)_queue_notificationsForNotificationRecords:(id)records bundleIdentifier:(id)identifier;
- (id)_serviceResolvedNotificationRequest:(id)request forBundleIdentifier:(id)identifier error:(id *)error;
- (void)_queue_addConnection:(id)connection forBundleIdentifier:(id)identifier;
- (void)_queue_didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier;
- (void)_queue_removeConnection:(id)connection forBundleIdentifier:(id)identifier;
- (void)_queue_removeConnectionForAllBundleIdentifiers:(id)identifiers;
- (void)_removeConnectionForAllBundleIdentifiers:(id)identifiers;
- (void)addNotificationRequest:(id)request forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier;
- (void)getBadgeNumberForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getDeliveredNotificationsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getNotificationCategoriesForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getNotificationSettingsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getNotificationSettingsForTopicsWithBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getNotificationTopicsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getPendingNotificationRequestsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removePendingNotificationRequestsWithIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeSimilarNotificationRequests:(id)requests forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)replaceContentForRequestWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier replacementContent:(id)content completionHandler:(id)handler;
- (void)requestAuthorizationWithOptions:(unint64_t)options forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestRemoveAuthorizationForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeCount:(id)count forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setConnectionDetails:(id)details;
- (void)setNotificationCategories:(id)categories forBundleIdentifier:(id)identifier;
- (void)setNotificationRequests:(id)requests forBundleIdentifier:(id)identifier;
- (void)setNotificationRequests:(id)requests forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setNotificationTopics:(id)topics forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setObservingUserNotifications:(BOOL)notifications forBundleIdentifier:(id)identifier;
@end

@implementation UNSUserNotificationServerConnectionListener

- (id)_currentConnection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (!currentConnection)
  {
    v3 = *MEMORY[0x277CE2078];
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [(UNSUserNotificationServerRemoteNotificationConnectionListener *)v3 _currentConnection];
    }
  }

  return currentConnection;
}

- (UNSUserNotificationServerConnectionListener)initWithCategoryRepository:(id)repository notificationSchedulingService:(id)service notificationAuthorizationService:(id)authorizationService notificationSettingsService:(id)settingsService notificationRepository:(id)notificationRepository remoteNotificationConnectionListener:(id)listener remoteNotificationService:(id)notificationService applicationLauncher:(id)self0 attachmentsService:(id)self1 locationMonitor:(id)self2 topicRepository:(id)self3 localizationService:(id)self4 communicationContextService:(id)self5
{
  repositoryCopy = repository;
  serviceCopy = service;
  authorizationServiceCopy = authorizationService;
  settingsServiceCopy = settingsService;
  notificationRepositoryCopy = notificationRepository;
  notificationRepositoryCopy2 = notificationRepository;
  listenerCopy = listener;
  notificationServiceCopy = notificationService;
  launcherCopy = launcher;
  attachmentsServiceCopy = attachmentsService;
  monitorCopy = monitor;
  topicRepositoryCopy = topicRepository;
  localizationServiceCopy = localizationService;
  contextServiceCopy = contextService;
  v49.receiver = self;
  v49.super_class = UNSUserNotificationServerConnectionListener;
  v20 = [(UNSUserNotificationServerConnectionListener *)&v49 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_categoryRepository, repository);
    objc_storeStrong(&v21->_notificationSchedulingService, service);
    objc_storeStrong(&v21->_notificationsAuthorizationService, authorizationService);
    objc_storeStrong(&v21->_notificationSettingsService, settingsService);
    objc_storeStrong(&v21->_notificationRepository, notificationRepositoryCopy);
    objc_storeStrong(&v21->_remoteNotificationConnectionListener, listener);
    objc_storeStrong(&v21->_remoteNotificationService, notificationService);
    objc_storeStrong(&v21->_applicationLauncher, launcher);
    objc_storeStrong(&v21->_attachmentsService, attachmentsService);
    objc_storeStrong(&v21->_locationMonitor, monitor);
    objc_storeStrong(&v21->_topicRepository, topicRepository);
    objc_storeStrong(&v21->_localizationService, localizationService);
    objc_storeStrong(&v21->_communicationContextService, contextService);
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectionsByBundleIdentifier = v21->_connectionsByBundleIdentifier;
    v21->_connectionsByBundleIdentifier = v22;

    v24 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    bundleIdentifiersByConnection = v21->_bundleIdentifiersByConnection;
    v21->_bundleIdentifiersByConnection = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("com.apple.usernotificationsserver.ConnectionListener", v26);
    queue = v21->_queue;
    v21->_queue = v27;

    v29 = objc_alloc(MEMORY[0x277CCAE98]);
    v30 = [v29 initWithMachServiceName:*MEMORY[0x277CE2128]];
    listener = v21->_listener;
    v21->_listener = v30;

    [(NSXPCListener *)v21->_listener setDelegate:v21];
  }

  return v21;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = UNSUserNotificationServerConnectionListener;
  [(UNSUserNotificationServerConnectionListener *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  clientInterface = [MEMORY[0x277CE2040] clientInterface];
  [connectionCopy setRemoteObjectInterface:clientInterface];

  serverInterface = [MEMORY[0x277CE2040] serverInterface];
  [connectionCopy setExportedInterface:serverInterface];

  [connectionCopy setExportedObject:self];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__4;
  v14[4] = __Block_byref_object_dispose__4;
  v10 = connectionCopy;
  v15 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__UNSUserNotificationServerConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
  v13[3] = &unk_279E109B0;
  v13[4] = self;
  v13[5] = v14;
  [v10 setInterruptionHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__UNSUserNotificationServerConnectionListener_listener_shouldAcceptNewConnection___block_invoke_8;
  v12[3] = &unk_279E109B0;
  v12[4] = self;
  v12[5] = v14;
  [v10 setInvalidationHandler:v12];
  [v10 resume];
  _Block_object_dispose(v14, 8);

  return 1;
}

uint64_t __82__UNSUserNotificationServerConnectionListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "connection interrupted", v4, 2u);
  }

  return [*(a1 + 32) _removeConnectionForAllBundleIdentifiers:*(*(*(a1 + 40) + 8) + 40)];
}

uint64_t __82__UNSUserNotificationServerConnectionListener_listener_shouldAcceptNewConnection___block_invoke_8(uint64_t a1)
{
  v2 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated", v4, 2u);
  }

  return [*(a1 + 32) _removeConnectionForAllBundleIdentifiers:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)setObservingUserNotifications:(BOOL)notifications forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __97__UNSUserNotificationServerConnectionListener_setObservingUserNotifications_forBundleIdentifier___block_invoke;
    v9[3] = &unk_279E10B30;
    notificationsCopy = notifications;
    v9[4] = self;
    v10 = _currentConnection;
    v11 = identifierCopy;
    dispatch_async(queue, v9);
  }
}

uint64_t __97__UNSUserNotificationServerConnectionListener_setObservingUserNotifications_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v2 == 1)
  {
    return [v3 _queue_addConnection:v4 forBundleIdentifier:v5];
  }

  else
  {
    return [v3 _queue_removeConnection:v4 forBundleIdentifier:v5];
  }
}

- (void)requestAuthorizationWithOptions:(unint64_t)options forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = MEMORY[0x277CE2078];
  v11 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = identifierCopy;
    v18 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting authorization with options %ld", &v16, 0x16u);
  }

  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    v13 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:identifierCopy];
    if (!v13)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        [UNSUserNotificationServerConnectionListener requestAuthorizationWithOptions:forBundleIdentifier:completionHandler:];
        if (!handlerCopy)
        {
          goto LABEL_12;
        }
      }

      else if (!handlerCopy)
      {
        goto LABEL_12;
      }

      v14 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
      handlerCopy[2](handlerCopy, 0, v14);

      goto LABEL_12;
    }

    [(UNSNotificationAuthorizationService *)self->_notificationsAuthorizationService requestAuthorizationWithOptions:options forNotificationSourceDescription:v13 completionHandler:handlerCopy];
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener requestAuthorizationWithOptions:forBundleIdentifier:completionHandler:];
    if (!handlerCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (handlerCopy)
  {
LABEL_8:
    v13 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v13);
    goto LABEL_12;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestRemoveAuthorizationForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = MEMORY[0x277CE2078];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting remove authorization", &v14, 0xCu);
  }

  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isInternalUserNotificationsTool])
  {
    v11 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:identifierCopy];
    if (!v11)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        [UNSUserNotificationServerConnectionListener requestRemoveAuthorizationForBundleIdentifier:completionHandler:];
        if (!handlerCopy)
        {
          goto LABEL_12;
        }
      }

      else if (!handlerCopy)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
      handlerCopy[2](handlerCopy, 0, v12);

      goto LABEL_12;
    }

    [(UNSNotificationAuthorizationService *)self->_notificationsAuthorizationService requestRemoveAuthorizationForNotificationSourceDescription:v11 completionHandler:handlerCopy];
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener requestRemoveAuthorizationForBundleIdentifier:completionHandler:];
    if (!handlerCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (handlerCopy)
  {
LABEL_8:
    v11 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v11);
    goto LABEL_12;
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationSettingsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = MEMORY[0x277CE2078];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification settings", &v13, 0xCu);
  }

  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    v11 = [(UNSNotificationSettingsService *)self->_notificationSettingsService notificationSettingsForBundleIdentifier:identifierCopy];
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getNotificationSettingsForBundleIdentifier:withCompletionHandler:];
  }

  v11 = 0;
  if (handlerCopy)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, v11);
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationCategoriesForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification categories", buf, 0xCu);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__UNSUserNotificationServerConnectionListener_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E110E0;
    block[4] = self;
    v14 = identifierCopy;
    v15 = &v16;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getNotificationCategoriesForBundleIdentifier:withCompletionHandler:];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v17[5]);
  }

  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __114__UNSUserNotificationServerConnectionListener_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) categoriesForBundleIdentifier:a1[5]];
  if (v2)
  {
    v3 = [*(a1[4] + 48) bundleWithIdentifier:a1[5]];
    v4 = [objc_alloc(MEMORY[0x277D77C80]) initWithBundle:v3];
    v5 = [MEMORY[0x277CBEB98] setWithArray:v2];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __114__UNSUserNotificationServerConnectionListener_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_279E110B8;
    v11 = v4;
    v6 = v4;
    v7 = [v5 bs_map:v10];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (void)setNotificationCategories:(id)categories forBundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  identifierCopy = identifier;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v16 = 138543618;
    v17 = identifierCopy;
    v18 = 2048;
    v19 = [categoriesCopy count];
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting %ld notification categories", &v16, 0x16u);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    allObjects = [categoriesCopy allObjects];
    v13 = [allObjects sortedArrayUsingComparator:&__block_literal_global_8];

    v14 = [v13 bs_map:*MEMORY[0x277D77D50]];
    [(UNSNotificationCategoryRepository *)self->_categoryRepository setCategories:v14 forBundleIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setNotificationCategories:forBundleIdentifier:];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __93__UNSUserNotificationServerConnectionListener_setNotificationCategories_forBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)addNotificationRequest:(id)request forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  destinations = [requestCopy destinations];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v26 = _currentConnection;
    v27 = identifierCopy;
    identifier = [requestCopy identifier];
    un_logDigest = [identifier un_logDigest];
    if (destinations == 15)
    {
      v16 = @"Default";
    }

    else
    {
      v16 = UNNotificationDestinationStrings();
    }

    content = [requestCopy content];
    date = [content date];
    un_logString = [date un_logString];
    *buf = 138544130;
    v29 = v27;
    v30 = 2114;
    v31 = un_logDigest;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = un_logString;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding notification request %{public}@ to destinations: %{public}@, contentDate: %{public}@", buf, 0x2Au);

    if (destinations != 15)
    {
    }

    _currentConnection = v26;
    identifierCopy = v27;
    self = selfCopy;
  }

  if (UNIsInternalInstall() && ([requestCopy content], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "userInfo"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(_currentConnection, "uns_requestContainsDisallowedPrivateUserInfo:", v21), v21, v20, v22))
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener addNotificationRequest:forBundleIdentifier:withCompletionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
    {
      [(UNSUserNotificationServerConnectionListener *)self _saveNotificationRequest:requestCopy shouldRepost:1 deliveredDate:0 forBundleIdentifier:identifierCopy withCompletionHandler:handlerCopy];
      goto LABEL_18;
    }

    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener addNotificationRequest:forBundleIdentifier:withCompletionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  if (handlerCopy)
  {
LABEL_17:
    v23 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    handlerCopy[2](handlerCopy, v23);
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)replaceContentForRequestWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier replacementContent:(id)content completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  contentCopy = content;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v15 = MEMORY[0x277CE2078];
  v16 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    un_logDigest = [identifierCopy un_logDigest];
    [contentCopy date];
    v19 = handlerCopy;
    v20 = _currentConnection;
    v21 = contentCopy;
    v23 = v22 = identifierCopy;
    un_logString = [v23 un_logString];
    *buf = 138543874;
    v48 = bundleIdentifierCopy;
    v49 = 2114;
    v50 = un_logDigest;
    v51 = 2114;
    v52 = un_logString;
    _os_log_impl(&dword_270AA8000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing notification content %{public}@, contentDate: %{public}@", buf, 0x20u);

    identifierCopy = v22;
    contentCopy = v21;
    _currentConnection = v20;
    handlerCopy = v19;
    v15 = MEMORY[0x277CE2078];
  }

  if (UNIsInternalInstall() && ([contentCopy userInfo], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(_currentConnection, "uns_requestContainsDisallowedPrivateUserInfo:", v25), v25, v26))
  {
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener addNotificationRequest:forBundleIdentifier:withCompletionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:bundleIdentifierCopy])
    {
      v27 = [(UNCNotificationRepository *)self->_notificationRepository notificationRecordForIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy];
      v28 = v27;
      if (v27)
      {
        v46 = v27;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v30 = [(UNSUserNotificationServerConnectionListener *)self _queue_notificationsForNotificationRecords:v29 bundleIdentifier:bundleIdentifierCopy];

        v43 = v30;
        firstObject = [v30 firstObject];
        request = [firstObject request];
        v32 = [(UNCNotificationSchedulingService *)self->_notificationSchedulingService undeliveredNotificationRecordsForBundleIdentifier:bundleIdentifierCopy];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __140__UNSUserNotificationServerConnectionListener_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke;
        v44[3] = &unk_279E11128;
        v33 = identifierCopy;
        v45 = v33;
        v42 = identifierCopy;
        if ([v32 bs_containsObjectPassingTest:v44])
        {
          trigger = [request trigger];
          v35 = request;
          v36 = trigger;
        }

        else
        {
          v35 = request;
          v36 = 0;
        }

        v40 = v35;
        v37 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v33 content:contentCopy trigger:v36 destinations:{objc_msgSend(v35, "destinations")}];
        date = [firstObject date];
        [(UNSUserNotificationServerConnectionListener *)self _saveNotificationRequest:v37 shouldRepost:0 deliveredDate:date forBundleIdentifier:bundleIdentifierCopy withCompletionHandler:handlerCopy];

        identifierCopy = v42;
      }

      else if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 0);
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener replaceContentForRequestWithIdentifier:bundleIdentifier:replacementContent:completionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  if (handlerCopy)
  {
LABEL_14:
    v28 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    (handlerCopy)[2](handlerCopy, v28);
LABEL_19:
  }

LABEL_20:

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __140__UNSUserNotificationServerConnectionListener_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __141__UNSUserNotificationServerConnectionListener__saveNotificationRequest_shouldRepost_deliveredDate_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (id)_serviceResolvedNotificationRequest:(id)request forBundleIdentifier:(id)identifier error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v11 = [(UNSAttachmentsService *)self->_attachmentsService resolveAttachmentsForRequest:requestCopy bundleIdentifier:identifierCopy fromLocalClientConnection:_currentConnection error:error];
  v12 = [(UNSNotificationCommunicationContextService *)self->_communicationContextService resolveCommunicationContextForRequest:v11 bundleIdentifier:identifierCopy];
  v13 = *MEMORY[0x277CE2070];
  if (os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    content = [requestCopy content];
    communicationContext = [content communicationContext];
    content2 = [v12 content];
    communicationContext2 = [content2 communicationContext];
    content3 = [v12 content];
    contentType = [content3 contentType];
    *buf = 138544386;
    v24 = identifierCopy;
    v25 = 1026;
    v26 = v12 != v11;
    v27 = 1026;
    v28 = communicationContext != 0;
    v29 = 1026;
    v30 = communicationContext2 != 0;
    v31 = 2114;
    v32 = contentType;
    _os_log_impl(&dword_270AA8000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification serviced by the communication context service: %{public}d. Has original context: %{public}d. Has serviced context: %{public}d. Type: %{public}@", buf, 0x28u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __126__UNSUserNotificationServerConnectionListener__saveNotificationRecord_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __126__UNSUserNotificationServerConnectionListener__saveNotificationRecord_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setNotificationRequests:(id)requests forBundleIdentifier:(id)identifier
{
  v38 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  identifierCopy = identifier;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v35 = identifierCopy;
    v36 = 2048;
    v37 = [requestsCopy count];
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting %ld notification requests", buf, 0x16u);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    v25 = _currentConnection;
    [(UNCNotificationRepository *)self->_notificationRepository removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:identifierCopy];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = requestsCopy;
    v12 = requestsCopy;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v28 = 0;
          v18 = [(UNSUserNotificationServerConnectionListener *)self _serviceResolvedNotificationRequest:v17 forBundleIdentifier:identifierCopy error:&v28];
          v19 = v28;
          if (v19)
          {
            v20 = 1;
          }

          else
          {
            v20 = v18 == 0;
          }

          if (v20)
          {
            v21 = *MEMORY[0x277CE2078];
            if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              localizedDescription = [v19 localizedDescription];
              *buf = 138543618;
              v35 = identifierCopy;
              v36 = 2114;
              v37 = localizedDescription;
              _os_log_error_impl(&dword_270AA8000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot set notification requests because there are no validated requests. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            [v11 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      v23 = [v11 bs_map:*MEMORY[0x277D77D58]];
      [(UNCNotificationSchedulingService *)self->_notificationSchedulingService setPendingNotificationRecords:v23 forBundleIdentifier:identifierCopy];
    }

    _currentConnection = v25;
    requestsCopy = v26;
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setNotificationRequests:forBundleIdentifier:];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationRequests:(id)requests forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  [(UNSUserNotificationServerConnectionListener *)self setNotificationRequests:requests forBundleIdentifier:identifier];
  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v8 = handlerCopy;
  }
}

- (void)getPendingNotificationRequestsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting pending notification requests", buf, 0xCu);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__UNSUserNotificationServerConnectionListener_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E110E0;
    block[4] = self;
    v15 = identifierCopy;
    v16 = &v17;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getPendingNotificationRequestsForBundleIdentifier:withCompletionHandler:];
  }

  if (handlerCopy)
  {
    v12 = v18[5];
    if (!v12)
    {
      v18[5] = MEMORY[0x277CBEBF8];

      v12 = v18[5];
    }

    handlerCopy[2](handlerCopy, v12);
  }

  _Block_object_dispose(&v17, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __119__UNSUserNotificationServerConnectionListener_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) pendingNotificationRecordsForBundleIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) _queue_notificationRequestsForNotificationRecords:v5 bundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removePendingNotificationRequestsWithIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing pending notification requests", &v16, 0xCu);
  }

  v14 = [_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy];
  if (v14)
  {
    [(UNCNotificationSchedulingService *)self->_notificationSchedulingService removePendingNotificationRecordsWithIdentifiers:identifiersCopy forBundleIdentifier:identifierCopy withCompletionHandler:0];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener removePendingNotificationRequestsWithIdentifiers:forBundleIdentifier:completionHandler:];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (handlerCopy)
  {
LABEL_8:
    handlerCopy[2](handlerCopy, v14, 0);
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeSimilarNotificationRequests:(id)requests forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing similar notification requests", &v16, 0xCu);
  }

  if (![_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener removeSimilarNotificationRequests:forBundleIdentifier:completionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_10;
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_10;
  }

  v14 = [requestsCopy bs_map:*MEMORY[0x277D77D58]];
  [(UNCNotificationRepository *)self->_notificationRepository removeSimilarNotificationRecords:v14 bundleIdentifier:identifierCopy];
  [(UNCNotificationSchedulingService *)self->_notificationSchedulingService removeSimilarPendingNotificationRecords:v14 forBundleIdentifier:identifierCopy];
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all pending notification requests", &v13, 0xCu);
  }

  v11 = [_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy];
  if (v11)
  {
    [(UNCNotificationSchedulingService *)self->_notificationSchedulingService removeAllPendingNotificationRecordsForBundleIdentifier:identifierCopy withCompletionHandler:0];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener removeAllPendingNotificationRequestsForBundleIdentifier:completionHandler:];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (handlerCopy)
  {
LABEL_8:
    handlerCopy[2](handlerCopy, v11, 0);
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getDeliveredNotificationsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting delivered notifications", buf, 0xCu);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__UNSUserNotificationServerConnectionListener_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E110E0;
    block[4] = self;
    v14 = identifierCopy;
    v15 = &v16;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getDeliveredNotificationsForBundleIdentifier:withCompletionHandler:];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v17[5]);
  }

  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __114__UNSUserNotificationServerConnectionListener_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 88) notificationRecordsForBundleIdentifier:*(a1 + 40)];
  v2 = [v6 bs_filter:&__block_literal_global_23];
  v3 = [*(a1 + 32) _queue_notificationsForNotificationRecords:v2 bundleIdentifier:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __114__UNSUserNotificationServerConnectionListener_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 triggerType];
  v3 = [v2 isEqualToString:*MEMORY[0x277D77D70]];

  return v3 ^ 1u;
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing delivered notifications", &v18, 0xCu);
  }

  v14 = [_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy];
  if (v14)
  {
    if (identifiersCopy)
    {
      notificationRepository = self->_notificationRepository;
      v16 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
      [(UNCNotificationRepository *)notificationRepository removeNotificationRecordsForIdentifiers:v16 bundleIdentifier:identifierCopy];

      if (!handlerCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener removeDeliveredNotificationsWithIdentifiers:forBundleIdentifier:completionHandler:];
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (handlerCopy)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, v14, 0);
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all delivered notifications", &v13, 0xCu);
  }

  v11 = [_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy];
  if (v11)
  {
    [(UNCNotificationRepository *)self->_notificationRepository removeAllNotificationRecordsForBundleIdentifier:identifierCopy];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener removeAllDeliveredNotificationsForBundleIdentifier:completionHandler:];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (handlerCopy)
  {
LABEL_8:
    handlerCopy[2](handlerCopy, v11, 0);
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getBadgeNumberForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting badge number", buf, 0xCu);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__UNSUserNotificationServerConnectionListener_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E109D8;
    v15 = &v16;
    block[4] = self;
    v14 = identifierCopy;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getBadgeNumberForBundleIdentifier:withCompletionHandler:];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v17[5]);
  }

  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __103__UNSUserNotificationServerConnectionListener_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) badgeNumberForBundleIdentifier:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = numberCopy;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge number to %{public}@", &v15, 0x16u);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    [(UNCNotificationRepository *)self->_notificationRepository setBadgeNumber:numberCopy forBundleIdentifier:identifierCopy withCompletionHandler:handlerCopy];
  }

  else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setBadgeNumber:forBundleIdentifier:withCompletionHandler:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setBadgeCount:(id)count forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  countCopy = count;
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if (countCopy)
  {
    intValue = [countCopy intValue];
  }

  else
  {
    intValue = 0;
  }

  v13 = MEMORY[0x277CE2078];
  v14 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = identifierCopy;
    v18 = 2050;
    v19 = intValue;
    _os_log_impl(&dword_270AA8000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge count to %{public}ld", &v16, 0x16u);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    [(UNCNotificationRepository *)self->_notificationRepository setBadgeCount:intValue forBundleIdentifier:identifierCopy withCompletionHandler:handlerCopy];
  }

  else if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setBadgeCount:forBundleIdentifier:withCompletionHandler:];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = stringCopy;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge string to %{public}@", &v15, 0x16u);
  }

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    [(UNCNotificationRepository *)self->_notificationRepository setBadgeString:stringCopy forBundleIdentifier:identifierCopy withCompletionHandler:handlerCopy];
  }

  else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setBadgeString:forBundleIdentifier:withCompletionHandler:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationTopics:(id)topics forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = identifierCopy;
    v19 = 2114;
    v20 = topicsCopy;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting topics %{public}@", &v17, 0x16u);
  }

  allObjects = [topicsCopy allObjects];
  v15 = [allObjects bs_map:*MEMORY[0x277D77D60]];

  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    [(UNCNotificationTopicRepository *)self->_topicRepository setTopics:v15 forBundleIdentifier:identifierCopy withCompletionHandler:handlerCopy];
  }

  else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setNotificationTopics:forBundleIdentifier:withCompletionHandler:];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationTopicsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v10 = MEMORY[0x277CE2078];
  v11 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting topics", buf, 0xCu);
  }

  if (![_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener getNotificationTopicsForBundleIdentifier:withCompletionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_16;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_16;
    }

LABEL_15:
    v20 = [MEMORY[0x277CBEB98] setWithArray:v8];
    handlerCopy[2](handlerCopy, v20);

    goto LABEL_16;
  }

  v12 = [(UNCNotificationTopicRepository *)self->_topicRepository topicsForBundleIdentifier:identifierCopy];
  v22 = [(UNCLocalizationService *)self->_localizationService bundleWithIdentifier:identifierCopy];
  v13 = [objc_alloc(MEMORY[0x277D77CC8]) initWithBundle:v22];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v13 notificationTopicForNotificationTopicRecord:*(*(&v23 + 1) + 8 * v18)];
        [v8 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  if (handlerCopy)
  {
    goto LABEL_15;
  }

LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationSettingsForTopicsWithBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = MEMORY[0x277CE2078];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification settings for topics", &v13, 0xCu);
  }

  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    v11 = [(UNSNotificationSettingsService *)self->_notificationSettingsService notificationSettingsForTopicsWithBundleIdentifier:identifierCopy];
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getNotificationSettingsForTopicsWithBundleIdentifier:withCompletionHandler:];
  }

  v11 = 0;
  if (handlerCopy)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, v11);
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setConnectionDetails:(id)details
{
  detailsCopy = details;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedFromDaemon])
  {
    [_currentConnection uns_setConnectionDetails:detailsCopy];
  }

  else
  {
    v6 = *MEMORY[0x277CE2078];
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener setConnectionDetails:v6];
    }
  }
}

- (void)isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedFromDaemon])
  {
    v8 = [MEMORY[0x277D77CB0] isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  handlerCopy[2](handlerCopy, v8, 0);
}

- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = MEMORY[0x277CE2078];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting cleared info", &v16, 0xCu);
  }

  _currentConnection = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([_currentConnection uns_isAllowedToRequestUserNotificationsForBundleIdentifier:identifierCopy])
  {
    v11 = MEMORY[0x277CBEAC0];
    stringByExpandingTildeInPath = [@"~/Library/BulletinBoard/ClearedSections.plist" stringByExpandingTildeInPath];
    v13 = [v11 dictionaryWithContentsOfFile:stringByExpandingTildeInPath];

    v14 = [v13 objectForKey:identifierCopy];

    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getClearedInfoForDataProviderMigrationWithBundleIdentifier:withCompletionHandler:];
  }

  v14 = 0;
  if (handlerCopy)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, v14);
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__UNSUserNotificationServerConnectionListener_didReceiveDeviceToken_forBundleIdentifier___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = tokenCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = tokenCopy;
  dispatch_async(queue, block);
}

- (void)_removeConnectionForAllBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__UNSUserNotificationServerConnectionListener__removeConnectionForAllBundleIdentifiers___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(queue, v7);
}

- (id)_queue_notificationsForNotificationRecords:(id)records bundleIdentifier:(id)identifier
{
  localizationService = self->_localizationService;
  recordsCopy = records;
  v8 = [(UNCLocalizationService *)localizationService bundleWithIdentifier:identifier];
  v9 = [objc_alloc(MEMORY[0x277D77C98]) initWithBundle:v8 categoryRepository:self->_categoryRepository];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__UNSUserNotificationServerConnectionListener__queue_notificationsForNotificationRecords_bundleIdentifier___block_invoke;
  v13[3] = &unk_279E11170;
  v14 = v9;
  v10 = v9;
  v11 = [recordsCopy bs_map:v13];

  return v11;
}

- (id)_queue_notificationRequestsForNotificationRecords:(id)records bundleIdentifier:(id)identifier
{
  localizationService = self->_localizationService;
  recordsCopy = records;
  v8 = [(UNCLocalizationService *)localizationService bundleWithIdentifier:identifier];
  v9 = [objc_alloc(MEMORY[0x277D77C98]) initWithBundle:v8 categoryRepository:self->_categoryRepository];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__UNSUserNotificationServerConnectionListener__queue_notificationRequestsForNotificationRecords_bundleIdentifier___block_invoke;
  v13[3] = &unk_279E11170;
  v14 = v9;
  v10 = v9;
  v11 = [recordsCopy bs_map:v13];

  return v11;
}

- (void)_queue_addConnection:(id)connection forBundleIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_connectionsByBundleIdentifier objectForKey:identifierCopy];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_connectionsByBundleIdentifier setObject:v7 forKey:identifierCopy];
  }

  [v7 addObject:connectionCopy];
  v8 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:connectionCopy];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [(NSMapTable *)self->_bundleIdentifiersByConnection setObject:v8 forKey:connectionCopy];
  }

  [v8 addObject:identifierCopy];
}

- (void)_queue_removeConnection:(id)connection forBundleIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_connectionsByBundleIdentifier objectForKey:identifierCopy];
  [v7 removeObject:connectionCopy];
  if (![v7 count])
  {
    [(NSMutableDictionary *)self->_connectionsByBundleIdentifier removeObjectForKey:identifierCopy];
  }

  v8 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:connectionCopy];
  [v8 removeObject:identifierCopy];
  if (![v8 count])
  {
    [(NSMapTable *)self->_bundleIdentifiersByConnection removeObjectForKey:connectionCopy];
  }
}

- (void)_queue_removeConnectionForAllBundleIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:identifiersCopy];
  v6 = [v5 copy];

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

        [(UNSUserNotificationServerConnectionListener *)self _queue_removeConnection:identifiersCopy forBundleIdentifier:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_queue_delegateConnectionForBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(NSMutableDictionary *)self->_connectionsByBundleIdentifier objectForKey:identifierCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 processIdentifier];
        v10 = BSBundleIDForPID();
        if ([identifierCopy isEqualToString:v10])
        {
          v6 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_queue_didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  identifierCopy = identifier;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _queue_observerConnectionsForBundleIdentifier:identifierCopy];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v24 = identifierCopy;
    v25 = 2048;
    v26 = [v8 count];
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending received device token to %ld connections", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        remoteObjectProxy = [*(*(&v18 + 1) + 8 * v15) remoteObjectProxy];
        [remoteObjectProxy didReceiveDeviceToken:tokenCopy forBundleIdentifier:identifierCopy];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)requestAuthorizationWithOptions:forBundleIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Requesting authorization failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestAuthorizationWithOptions:forBundleIdentifier:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Requesting authorization failed because bundle identifier does not match a known application or bundle", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestRemoveAuthorizationForBundleIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Requesting remove authorization failed because client is not internal user notifications tool", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestRemoveAuthorizationForBundleIdentifier:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Requesting remove authorization failed because bundle identifier does not match a known application or bundle", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationSettingsForBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Getting notification settings failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationCategoriesForBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Getting notification categories failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationCategories:forBundleIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Setting notification categories failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationRequest:forBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Adding notification request failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationRequest:forBundleIdentifier:withCompletionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Adding notification request failed because of disallowed userInfo", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)replaceContentForRequestWithIdentifier:bundleIdentifier:replacementContent:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Replacing notification content failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveNotificationRequest:shouldRepost:deliveredDate:forBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "Attempted to add notification request with invalid identifier for bundle '%{public}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationRequests:forBundleIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Setting notification requests failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getPendingNotificationRequestsForBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Getting pending notification requests failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removePendingNotificationRequestsWithIdentifiers:forBundleIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Removing pending notification requests failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeSimilarNotificationRequests:forBundleIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Removing similar notification requests failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAllPendingNotificationRequestsForBundleIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Removing all pending notification requests failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getDeliveredNotificationsForBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Getting delivered notifications failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDeliveredNotificationsWithIdentifiers:forBundleIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Removing delivered notifications failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAllDeliveredNotificationsForBundleIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Removing all delivered notifications failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getBadgeNumberForBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Getting badge number failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setBadgeNumber:forBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Setting badge number failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setBadgeCount:forBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Setting badge count failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setBadgeString:forBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Setting badge string failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationTopics:forBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Setting topics failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationTopicsForBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Getting notification topics failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationSettingsForTopicsWithBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Getting notification settings for topics failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Getting cleared info for topic failed because of missing entitlement", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end