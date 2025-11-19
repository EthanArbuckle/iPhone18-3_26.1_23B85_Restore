@interface UNSUserNotificationServerConnectionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (UNSUserNotificationServerConnectionListener)initWithCategoryRepository:(id)a3 notificationSchedulingService:(id)a4 notificationAuthorizationService:(id)a5 notificationSettingsService:(id)a6 notificationRepository:(id)a7 remoteNotificationConnectionListener:(id)a8 remoteNotificationService:(id)a9 applicationLauncher:(id)a10 attachmentsService:(id)a11 locationMonitor:(id)a12 topicRepository:(id)a13 localizationService:(id)a14 communicationContextService:(id)a15;
- (id)_currentConnection;
- (id)_queue_delegateConnectionForBundleIdentifier:(id)a3;
- (id)_queue_notificationRequestsForNotificationRecords:(id)a3 bundleIdentifier:(id)a4;
- (id)_queue_notificationsForNotificationRecords:(id)a3 bundleIdentifier:(id)a4;
- (id)_serviceResolvedNotificationRequest:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
- (void)_queue_addConnection:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_removeConnection:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_removeConnectionForAllBundleIdentifiers:(id)a3;
- (void)_removeConnectionForAllBundleIdentifiers:(id)a3;
- (void)addNotificationRequest:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)dealloc;
- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4;
- (void)getBadgeNumberForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getDeliveredNotificationsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationCategoriesForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationSettingsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationSettingsForTopicsWithBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationTopicsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getPendingNotificationRequestsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removePendingNotificationRequestsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeSimilarNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)replaceContentForRequestWithIdentifier:(id)a3 bundleIdentifier:(id)a4 replacementContent:(id)a5 completionHandler:(id)a6;
- (void)requestAuthorizationWithOptions:(unint64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)requestRemoveAuthorizationForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)setBadgeCount:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setConnectionDetails:(id)a3;
- (void)setNotificationCategories:(id)a3 forBundleIdentifier:(id)a4;
- (void)setNotificationRequests:(id)a3 forBundleIdentifier:(id)a4;
- (void)setNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setNotificationTopics:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setObservingUserNotifications:(BOOL)a3 forBundleIdentifier:(id)a4;
@end

@implementation UNSUserNotificationServerConnectionListener

- (id)_currentConnection
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  if (!v2)
  {
    v3 = *MEMORY[0x277CE2078];
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [(UNSUserNotificationServerRemoteNotificationConnectionListener *)v3 _currentConnection];
    }
  }

  return v2;
}

- (UNSUserNotificationServerConnectionListener)initWithCategoryRepository:(id)a3 notificationSchedulingService:(id)a4 notificationAuthorizationService:(id)a5 notificationSettingsService:(id)a6 notificationRepository:(id)a7 remoteNotificationConnectionListener:(id)a8 remoteNotificationService:(id)a9 applicationLauncher:(id)a10 attachmentsService:(id)a11 locationMonitor:(id)a12 topicRepository:(id)a13 localizationService:(id)a14 communicationContextService:(id)a15
{
  v48 = a3;
  v47 = a4;
  v46 = a5;
  v45 = a6;
  v34 = a7;
  v44 = a7;
  v43 = a8;
  v42 = a9;
  v41 = a10;
  v40 = a11;
  v39 = a12;
  v38 = a13;
  v37 = a14;
  v36 = a15;
  v49.receiver = self;
  v49.super_class = UNSUserNotificationServerConnectionListener;
  v20 = [(UNSUserNotificationServerConnectionListener *)&v49 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_categoryRepository, a3);
    objc_storeStrong(&v21->_notificationSchedulingService, a4);
    objc_storeStrong(&v21->_notificationsAuthorizationService, a5);
    objc_storeStrong(&v21->_notificationSettingsService, a6);
    objc_storeStrong(&v21->_notificationRepository, v34);
    objc_storeStrong(&v21->_remoteNotificationConnectionListener, a8);
    objc_storeStrong(&v21->_remoteNotificationService, a9);
    objc_storeStrong(&v21->_applicationLauncher, a10);
    objc_storeStrong(&v21->_attachmentsService, a11);
    objc_storeStrong(&v21->_locationMonitor, a12);
    objc_storeStrong(&v21->_topicRepository, a13);
    objc_storeStrong(&v21->_localizationService, a14);
    objc_storeStrong(&v21->_communicationContextService, a15);
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = UNSUserNotificationServerConnectionListener;
  [(UNSUserNotificationServerConnectionListener *)&v4 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CE2040] clientInterface];
  [v7 setRemoteObjectInterface:v8];

  v9 = [MEMORY[0x277CE2040] serverInterface];
  [v7 setExportedInterface:v9];

  [v7 setExportedObject:self];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__4;
  v14[4] = __Block_byref_object_dispose__4;
  v10 = v7;
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

- (void)setObservingUserNotifications:(BOOL)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([v7 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __97__UNSUserNotificationServerConnectionListener_setObservingUserNotifications_forBundleIdentifier___block_invoke;
    v9[3] = &unk_279E10B30;
    v12 = a3;
    v9[4] = self;
    v10 = v7;
    v11 = v6;
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

- (void)requestAuthorizationWithOptions:(unint64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CE2078];
  v11 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v8;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting authorization with options %ld", &v16, 0x16u);
  }

  v12 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([v12 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v8])
  {
    v13 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:v8];
    if (!v13)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        [UNSUserNotificationServerConnectionListener requestAuthorizationWithOptions:forBundleIdentifier:completionHandler:];
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      else if (!v9)
      {
        goto LABEL_12;
      }

      v14 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
      v9[2](v9, 0, v14);

      goto LABEL_12;
    }

    [(UNSNotificationAuthorizationService *)self->_notificationsAuthorizationService requestAuthorizationWithOptions:a3 forNotificationSourceDescription:v13 completionHandler:v9];
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener requestAuthorizationWithOptions:forBundleIdentifier:completionHandler:];
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v9)
  {
LABEL_8:
    v13 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    v9[2](v9, 0, v13);
    goto LABEL_12;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestRemoveAuthorizationForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CE2078];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting remove authorization", &v14, 0xCu);
  }

  v10 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([v10 uns_isInternalUserNotificationsTool])
  {
    v11 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:v6];
    if (!v11)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        [UNSUserNotificationServerConnectionListener requestRemoveAuthorizationForBundleIdentifier:completionHandler:];
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else if (!v7)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
      v7[2](v7, 0, v12);

      goto LABEL_12;
    }

    [(UNSNotificationAuthorizationService *)self->_notificationsAuthorizationService requestRemoveAuthorizationForNotificationSourceDescription:v11 completionHandler:v7];
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener requestRemoveAuthorizationForBundleIdentifier:completionHandler:];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_8:
    v11 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    v7[2](v7, 0, v11);
    goto LABEL_12;
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationSettingsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CE2078];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification settings", &v13, 0xCu);
  }

  v10 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([v10 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    v11 = [(UNSNotificationSettingsService *)self->_notificationSettingsService notificationSettingsForBundleIdentifier:v6];
    if (!v7)
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
  if (v7)
  {
LABEL_9:
    v7[2](v7, v11);
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationCategoriesForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification categories", buf, 0xCu);
  }

  if ([v8 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__UNSUserNotificationServerConnectionListener_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E110E0;
    block[4] = self;
    v14 = v6;
    v15 = &v16;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getNotificationCategoriesForBundleIdentifier:withCompletionHandler:];
  }

  if (v7)
  {
    v7[2](v7, v17[5]);
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

- (void)setNotificationCategories:(id)a3 forBundleIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v16 = 138543618;
    v17 = v7;
    v18 = 2048;
    v19 = [v6 count];
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting %ld notification categories", &v16, 0x16u);
  }

  if ([v8 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v7])
  {
    v12 = [v6 allObjects];
    v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_8];

    v14 = [v13 bs_map:*MEMORY[0x277D77D50]];
    [(UNSNotificationCategoryRepository *)self->_categoryRepository setCategories:v14 forBundleIdentifier:v7];
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

- (void)addNotificationRequest:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = [v8 destinations];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v25 = self;
    v26 = v11;
    v27 = v9;
    v14 = [v8 identifier];
    v15 = [v14 un_logDigest];
    if (v12 == 15)
    {
      v16 = @"Default";
    }

    else
    {
      v16 = UNNotificationDestinationStrings();
    }

    v17 = [v8 content];
    v18 = [v17 date];
    v19 = [v18 un_logString];
    *buf = 138544130;
    v29 = v27;
    v30 = 2114;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = v19;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding notification request %{public}@ to destinations: %{public}@, contentDate: %{public}@", buf, 0x2Au);

    if (v12 != 15)
    {
    }

    v11 = v26;
    v9 = v27;
    self = v25;
  }

  if (UNIsInternalInstall() && ([v8 content], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "userInfo"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v11, "uns_requestContainsDisallowedPrivateUserInfo:", v21), v21, v20, v22))
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener addNotificationRequest:forBundleIdentifier:withCompletionHandler:];
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if ([v11 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v9])
    {
      [(UNSUserNotificationServerConnectionListener *)self _saveNotificationRequest:v8 shouldRepost:1 deliveredDate:0 forBundleIdentifier:v9 withCompletionHandler:v10];
      goto LABEL_18;
    }

    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener addNotificationRequest:forBundleIdentifier:withCompletionHandler:];
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  if (v10)
  {
LABEL_17:
    v23 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    v10[2](v10, v23);
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)replaceContentForRequestWithIdentifier:(id)a3 bundleIdentifier:(id)a4 replacementContent:(id)a5 completionHandler:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v15 = MEMORY[0x277CE2078];
  v16 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v10 un_logDigest];
    [v12 date];
    v19 = v13;
    v20 = v14;
    v21 = v12;
    v23 = v22 = v10;
    v24 = [v23 un_logString];
    *buf = 138543874;
    v48 = v11;
    v49 = 2114;
    v50 = v18;
    v51 = 2114;
    v52 = v24;
    _os_log_impl(&dword_270AA8000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing notification content %{public}@, contentDate: %{public}@", buf, 0x20u);

    v10 = v22;
    v12 = v21;
    v14 = v20;
    v13 = v19;
    v15 = MEMORY[0x277CE2078];
  }

  if (UNIsInternalInstall() && ([v12 userInfo], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v14, "uns_requestContainsDisallowedPrivateUserInfo:", v25), v25, v26))
  {
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener addNotificationRequest:forBundleIdentifier:withCompletionHandler:];
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if ([v14 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v11])
    {
      v27 = [(UNCNotificationRepository *)self->_notificationRepository notificationRecordForIdentifier:v10 bundleIdentifier:v11];
      v28 = v27;
      if (v27)
      {
        v46 = v27;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v30 = [(UNSUserNotificationServerConnectionListener *)self _queue_notificationsForNotificationRecords:v29 bundleIdentifier:v11];

        v43 = v30;
        v41 = [v30 firstObject];
        v31 = [v41 request];
        v32 = [(UNCNotificationSchedulingService *)self->_notificationSchedulingService undeliveredNotificationRecordsForBundleIdentifier:v11];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __140__UNSUserNotificationServerConnectionListener_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke;
        v44[3] = &unk_279E11128;
        v33 = v10;
        v45 = v33;
        v42 = v10;
        if ([v32 bs_containsObjectPassingTest:v44])
        {
          v34 = [v31 trigger];
          v35 = v31;
          v36 = v34;
        }

        else
        {
          v35 = v31;
          v36 = 0;
        }

        v40 = v35;
        v37 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v33 content:v12 trigger:v36 destinations:{objc_msgSend(v35, "destinations")}];
        v38 = [v41 date];
        [(UNSUserNotificationServerConnectionListener *)self _saveNotificationRequest:v37 shouldRepost:0 deliveredDate:v38 forBundleIdentifier:v11 withCompletionHandler:v13];

        v10 = v42;
      }

      else if (v13)
      {
        v13[2](v13, 0);
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener replaceContentForRequestWithIdentifier:bundleIdentifier:replacementContent:completionHandler:];
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  if (v13)
  {
LABEL_14:
    v28 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    (v13)[2](v13, v28);
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

- (id)_serviceResolvedNotificationRequest:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v11 = [(UNSAttachmentsService *)self->_attachmentsService resolveAttachmentsForRequest:v8 bundleIdentifier:v9 fromLocalClientConnection:v10 error:a5];
  v12 = [(UNSNotificationCommunicationContextService *)self->_communicationContextService resolveCommunicationContextForRequest:v11 bundleIdentifier:v9];
  v13 = *MEMORY[0x277CE2070];
  if (os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    v22 = [v8 content];
    v21 = [v22 communicationContext];
    v14 = [v12 content];
    v15 = [v14 communicationContext];
    v16 = [v12 content];
    v17 = [v16 contentType];
    *buf = 138544386;
    v24 = v9;
    v25 = 1026;
    v26 = v12 != v11;
    v27 = 1026;
    v28 = v21 != 0;
    v29 = 1026;
    v30 = v15 != 0;
    v31 = 2114;
    v32 = v17;
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

- (void)setNotificationRequests:(id)a3 forBundleIdentifier:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v35 = v7;
    v36 = 2048;
    v37 = [v6 count];
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting %ld notification requests", buf, 0x16u);
  }

  if ([v8 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v7])
  {
    v25 = v8;
    [(UNCNotificationRepository *)self->_notificationRepository removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:v7];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v6;
    v12 = v6;
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
          v18 = [(UNSUserNotificationServerConnectionListener *)self _serviceResolvedNotificationRequest:v17 forBundleIdentifier:v7 error:&v28];
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
              v27 = [v19 localizedDescription];
              *buf = 138543618;
              v35 = v7;
              v36 = 2114;
              v37 = v27;
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
      [(UNCNotificationSchedulingService *)self->_notificationSchedulingService setPendingNotificationRecords:v23 forBundleIdentifier:v7];
    }

    v8 = v25;
    v6 = v26;
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setNotificationRequests:forBundleIdentifier:];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  [(UNSUserNotificationServerConnectionListener *)self setNotificationRequests:a3 forBundleIdentifier:a4];
  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0);
    v8 = v9;
  }
}

- (void)getPendingNotificationRequestsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting pending notification requests", buf, 0xCu);
  }

  if ([v8 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__UNSUserNotificationServerConnectionListener_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E110E0;
    block[4] = self;
    v15 = v6;
    v16 = &v17;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getPendingNotificationRequestsForBundleIdentifier:withCompletionHandler:];
  }

  if (v7)
  {
    v12 = v18[5];
    if (!v12)
    {
      v18[5] = MEMORY[0x277CBEBF8];

      v12 = v18[5];
    }

    v7[2](v7, v12);
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

- (void)removePendingNotificationRequestsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing pending notification requests", &v16, 0xCu);
  }

  v14 = [v11 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v9];
  if (v14)
  {
    [(UNCNotificationSchedulingService *)self->_notificationSchedulingService removePendingNotificationRecordsWithIdentifiers:v8 forBundleIdentifier:v9 withCompletionHandler:0];
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener removePendingNotificationRequestsWithIdentifiers:forBundleIdentifier:completionHandler:];
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v10)
  {
LABEL_8:
    v10[2](v10, v14, 0);
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeSimilarNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing similar notification requests", &v16, 0xCu);
  }

  if (![v11 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v9])
  {
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener removeSimilarNotificationRequests:forBundleIdentifier:completionHandler:];
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
      goto LABEL_10;
    }

    (*(v10 + 2))(v10, 0, 0);
    goto LABEL_10;
  }

  v14 = [v8 bs_map:*MEMORY[0x277D77D58]];
  [(UNCNotificationRepository *)self->_notificationRepository removeSimilarNotificationRecords:v14 bundleIdentifier:v9];
  [(UNCNotificationSchedulingService *)self->_notificationSchedulingService removeSimilarPendingNotificationRecords:v14 forBundleIdentifier:v9];
  if (v10)
  {
    (*(v10 + 2))(v10, 1, 0);
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all pending notification requests", &v13, 0xCu);
  }

  v11 = [v8 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6];
  if (v11)
  {
    [(UNCNotificationSchedulingService *)self->_notificationSchedulingService removeAllPendingNotificationRecordsForBundleIdentifier:v6 withCompletionHandler:0];
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener removeAllPendingNotificationRequestsForBundleIdentifier:completionHandler:];
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_8:
    v7[2](v7, v11, 0);
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getDeliveredNotificationsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting delivered notifications", buf, 0xCu);
  }

  if ([v8 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__UNSUserNotificationServerConnectionListener_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E110E0;
    block[4] = self;
    v14 = v6;
    v15 = &v16;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getDeliveredNotificationsForBundleIdentifier:withCompletionHandler:];
  }

  if (v7)
  {
    v7[2](v7, v17[5]);
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

- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = v9;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing delivered notifications", &v18, 0xCu);
  }

  v14 = [v11 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v9];
  if (v14)
  {
    if (v8)
    {
      notificationRepository = self->_notificationRepository;
      v16 = [MEMORY[0x277CBEB98] setWithArray:v8];
      [(UNCNotificationRepository *)notificationRepository removeNotificationRecordsForIdentifiers:v16 bundleIdentifier:v9];

      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener removeDeliveredNotificationsWithIdentifiers:forBundleIdentifier:completionHandler:];
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v10)
  {
LABEL_9:
    v10[2](v10, v14, 0);
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all delivered notifications", &v13, 0xCu);
  }

  v11 = [v8 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6];
  if (v11)
  {
    [(UNCNotificationRepository *)self->_notificationRepository removeAllNotificationRecordsForBundleIdentifier:v6];
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener removeAllDeliveredNotificationsForBundleIdentifier:completionHandler:];
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_8:
    v7[2](v7, v11, 0);
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getBadgeNumberForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v9 = MEMORY[0x277CE2078];
  v10 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting badge number", buf, 0xCu);
  }

  if ([v8 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__UNSUserNotificationServerConnectionListener_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_279E109D8;
    v15 = &v16;
    block[4] = self;
    v14 = v6;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener getBadgeNumberForBundleIdentifier:withCompletionHandler:];
  }

  if (v7)
  {
    v7[2](v7, v17[5]);
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

- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge number to %{public}@", &v15, 0x16u);
  }

  if ([v11 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v9])
  {
    [(UNCNotificationRepository *)self->_notificationRepository setBadgeNumber:v8 forBundleIdentifier:v9 withCompletionHandler:v10];
  }

  else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setBadgeNumber:forBundleIdentifier:withCompletionHandler:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setBadgeCount:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if (v8)
  {
    v12 = [v8 intValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x277CE2078];
  v14 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v9;
    v18 = 2050;
    v19 = v12;
    _os_log_impl(&dword_270AA8000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge count to %{public}ld", &v16, 0x16u);
  }

  if ([v11 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v9])
  {
    [(UNCNotificationRepository *)self->_notificationRepository setBadgeCount:v12 forBundleIdentifier:v9 withCompletionHandler:v10];
  }

  else if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setBadgeCount:forBundleIdentifier:withCompletionHandler:];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge string to %{public}@", &v15, 0x16u);
  }

  if ([v11 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v9])
  {
    [(UNCNotificationRepository *)self->_notificationRepository setBadgeString:v8 forBundleIdentifier:v9 withCompletionHandler:v10];
  }

  else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setBadgeString:forBundleIdentifier:withCompletionHandler:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationTopics:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v12 = MEMORY[0x277CE2078];
  v13 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = v9;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting topics %{public}@", &v17, 0x16u);
  }

  v14 = [v8 allObjects];
  v15 = [v14 bs_map:*MEMORY[0x277D77D60]];

  if ([v11 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v9])
  {
    [(UNCNotificationTopicRepository *)self->_topicRepository setTopics:v15 forBundleIdentifier:v9 withCompletionHandler:v10];
  }

  else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    [UNSUserNotificationServerConnectionListener setNotificationTopics:forBundleIdentifier:withCompletionHandler:];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationTopicsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  v10 = MEMORY[0x277CE2078];
  v11 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting topics", buf, 0xCu);
  }

  if (![v9 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServerConnectionListener getNotificationTopicsForBundleIdentifier:withCompletionHandler:];
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    v20 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v7[2](v7, v20);

    goto LABEL_16;
  }

  v12 = [(UNCNotificationTopicRepository *)self->_topicRepository topicsForBundleIdentifier:v6];
  v22 = [(UNCLocalizationService *)self->_localizationService bundleWithIdentifier:v6];
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

  if (v7)
  {
    goto LABEL_15;
  }

LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)getNotificationSettingsForTopicsWithBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CE2078];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification settings for topics", &v13, 0xCu);
  }

  v10 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([v10 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    v11 = [(UNSNotificationSettingsService *)self->_notificationSettingsService notificationSettingsForTopicsWithBundleIdentifier:v6];
    if (!v7)
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
  if (v7)
  {
LABEL_9:
    v7[2](v7, v11);
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setConnectionDetails:(id)a3
{
  v4 = a3;
  v5 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([v5 uns_isAllowedFromDaemon])
  {
    [v5 uns_setConnectionDetails:v4];
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

- (void)isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([v7 uns_isAllowedFromDaemon])
  {
    v8 = [MEMORY[0x277D77CB0] isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:v9];
  }

  else
  {
    v8 = 0;
  }

  v6[2](v6, v8, 0);
}

- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CE2078];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting cleared info", &v16, 0xCu);
  }

  v10 = [(UNSUserNotificationServerConnectionListener *)self _currentConnection];
  if ([v10 uns_isAllowedToRequestUserNotificationsForBundleIdentifier:v6])
  {
    v11 = MEMORY[0x277CBEAC0];
    v12 = [@"~/Library/BulletinBoard/ClearedSections.plist" stringByExpandingTildeInPath];
    v13 = [v11 dictionaryWithContentsOfFile:v12];

    v14 = [v13 objectForKey:v6];

    if (!v7)
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
  if (v7)
  {
LABEL_9:
    v7[2](v7, v14);
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__UNSUserNotificationServerConnectionListener_didReceiveDeviceToken_forBundleIdentifier___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_removeConnectionForAllBundleIdentifiers:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__UNSUserNotificationServerConnectionListener__removeConnectionForAllBundleIdentifiers___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_queue_notificationsForNotificationRecords:(id)a3 bundleIdentifier:(id)a4
{
  localizationService = self->_localizationService;
  v7 = a3;
  v8 = [(UNCLocalizationService *)localizationService bundleWithIdentifier:a4];
  v9 = [objc_alloc(MEMORY[0x277D77C98]) initWithBundle:v8 categoryRepository:self->_categoryRepository];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__UNSUserNotificationServerConnectionListener__queue_notificationsForNotificationRecords_bundleIdentifier___block_invoke;
  v13[3] = &unk_279E11170;
  v14 = v9;
  v10 = v9;
  v11 = [v7 bs_map:v13];

  return v11;
}

- (id)_queue_notificationRequestsForNotificationRecords:(id)a3 bundleIdentifier:(id)a4
{
  localizationService = self->_localizationService;
  v7 = a3;
  v8 = [(UNCLocalizationService *)localizationService bundleWithIdentifier:a4];
  v9 = [objc_alloc(MEMORY[0x277D77C98]) initWithBundle:v8 categoryRepository:self->_categoryRepository];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__UNSUserNotificationServerConnectionListener__queue_notificationRequestsForNotificationRecords_bundleIdentifier___block_invoke;
  v13[3] = &unk_279E11170;
  v14 = v9;
  v10 = v9;
  v11 = [v7 bs_map:v13];

  return v11;
}

- (void)_queue_addConnection:(id)a3 forBundleIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_connectionsByBundleIdentifier objectForKey:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_connectionsByBundleIdentifier setObject:v7 forKey:v6];
  }

  [v7 addObject:v9];
  v8 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:v9];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [(NSMapTable *)self->_bundleIdentifiersByConnection setObject:v8 forKey:v9];
  }

  [v8 addObject:v6];
}

- (void)_queue_removeConnection:(id)a3 forBundleIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_connectionsByBundleIdentifier objectForKey:v6];
  [v7 removeObject:v9];
  if (![v7 count])
  {
    [(NSMutableDictionary *)self->_connectionsByBundleIdentifier removeObjectForKey:v6];
  }

  v8 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:v9];
  [v8 removeObject:v6];
  if (![v8 count])
  {
    [(NSMapTable *)self->_bundleIdentifiersByConnection removeObjectForKey:v9];
  }
}

- (void)_queue_removeConnectionForAllBundleIdentifiers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_bundleIdentifiersByConnection objectForKey:v4];
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

        [(UNSUserNotificationServerConnectionListener *)self _queue_removeConnection:v4 forBundleIdentifier:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_queue_delegateConnectionForBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableDictionary *)self->_connectionsByBundleIdentifier objectForKey:v4];
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
        if ([v4 isEqualToString:v10])
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

- (void)_queue_didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(UNSUserNotificationServerConnectionListener *)self _queue_observerConnectionsForBundleIdentifier:v7];
  v9 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v24 = v7;
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

        v16 = [*(*(&v18 + 1) + 8 * v15) remoteObjectProxy];
        [v16 didReceiveDeviceToken:v6 forBundleIdentifier:v7];

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