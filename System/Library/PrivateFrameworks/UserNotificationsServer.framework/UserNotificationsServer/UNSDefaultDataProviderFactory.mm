@interface UNSDefaultDataProviderFactory
- (UNSDefaultDataProviderFactory)initWithApplicationLauncher:(id)a3 daemonLauncher:(id)a4 categoryRepository:(id)a5 notificationRepository:(id)a6 attachmentsService:(id)a7 topicRepository:(id)a8 localizationService:(id)a9 summaryService:(id)a10 settingsGateway:(id)a11;
- (id)_queue_effectiveSectionInfoForBundleIdentifier:(id)a3;
- (id)_queue_notificationSettingsForBundleIdentifier:(id)a3;
- (id)_queue_notificationSettingsForTopicsWithBundleIdentifier:(id)a3;
- (id)_queue_sectionInfoForBundleIdentifier:(id)a3;
- (id)notificationSettingsForBundleIdentifier:(id)a3;
- (id)notificationSettingsForTopicsWithBundleIdentifier:(id)a3;
- (void)_queue_createDataProviderWithNotificationSourceDescription:(id)a3 withCompletion:(id)a4;
- (void)_queue_createNewDefaultDataProviders:(id)a3;
- (void)_queue_notificationSourceDidInstall:(id)a3;
- (void)_queue_notificationSourceDidUninstall:(id)a3;
- (void)_queue_notificationSourcesDidInstall:(id)a3;
- (void)_queue_notificationSourcesDidUninstall:(id)a3;
- (void)_queue_removeDataProviderWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_queue_sectionInfoDidChange:(id)a3;
- (void)_queue_setCriticalAlertAuthorization:(BOOL)a3 forNotificationSourceDescription:(id)a4 completionHandler:(id)a5;
- (void)_queue_updateSettingsWithAuthorizationStatus:(int64_t)a3 options:(unint64_t)a4 scheduledDeliveryEnabled:(BOOL)a5 expirationDate:(id)a6 lastUserGrantDate:(id)a7 forNotificationSourceDescription:(id)a8 completionHandler:(id)a9;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)notificationSourcesDidInstall:(id)a3;
- (void)notificationSourcesDidUninstall:(id)a3;
- (void)observer:(id)a3 removeSection:(id)a4;
- (void)observer:(id)a3 updateSectionInfo:(id)a4;
- (void)removeObserver:(id)a3;
- (void)requestAuthorizationStatus:(int64_t)a3 withOptions:(unint64_t)a4 scheduledDeliveryEnabled:(BOOL)a5 expirationDate:(id)a6 lastUserGrantDate:(id)a7 forNotificationSourceDescription:(id)a8 completionHandler:(id)a9;
- (void)requestAuthorizationStatus:(int64_t)a3 withOptions:(unint64_t)a4 scheduledDeliveryEnabled:(BOOL)a5 forNotificationSourceDescription:(id)a6 completionHandler:(id)a7;
- (void)requestRemoveAuthorizationforNotificationSourceDescription:(id)a3 completionHandler:(id)a4;
- (void)setCriticalAlertAuthorization:(BOOL)a3 forNotificationSourceDescription:(id)a4 completionHandler:(id)a5;
- (void)updateAuthorizationWithOptions:(unint64_t)a3 scheduledDeliveryEnabled:(BOOL)a4 forNotificationSourceDescription:(id)a5 completionHandler:(id)a6;
@end

@implementation UNSDefaultDataProviderFactory

- (UNSDefaultDataProviderFactory)initWithApplicationLauncher:(id)a3 daemonLauncher:(id)a4 categoryRepository:(id)a5 notificationRepository:(id)a6 attachmentsService:(id)a7 topicRepository:(id)a8 localizationService:(id)a9 summaryService:(id)a10 settingsGateway:(id)a11
{
  v44 = a3;
  v43 = a4;
  v42 = a5;
  v41 = a6;
  v40 = a7;
  v39 = a8;
  v38 = a9;
  v37 = a10;
  v36 = a11;
  v45.receiver = self;
  v45.super_class = UNSDefaultDataProviderFactory;
  v18 = [(UNSDefaultDataProviderFactory *)&v45 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_appLauncher, a3);
    objc_storeStrong(&v19->_daemonLauncher, a4);
    objc_storeStrong(&v19->_categoryRepository, a5);
    objc_storeStrong(&v19->_notificationRepository, a6);
    objc_storeStrong(&v19->_topicRepository, a8);
    objc_storeStrong(&v19->_localizationService, a9);
    objc_storeStrong(&v19->_summaryService, a10);
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bundleIdentifierToDataProvider = v19->_bundleIdentifierToDataProvider;
    v19->_bundleIdentifierToDataProvider = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    authorizedBundleIdentifiers = v19->_authorizedBundleIdentifiers;
    v19->_authorizedBundleIdentifiers = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    supportedBundleIdentifiers = v19->_supportedBundleIdentifiers;
    v19->_supportedBundleIdentifiers = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v19->_observers;
    v19->_observers = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.usernotificationsserver.DefaultDataProviderFactory", v28);
    queue = v19->_queue;
    v19->_queue = v29;

    objc_storeStrong(&v19->_attachmentsService, a7);
    v31 = [objc_alloc(MEMORY[0x277CF3530]) initWithServiceName:@"com.apple.usernotificationsserver.DefaultDataProviderFactory" onQueue:v19->_queue];
    dataProviderConnection = v19->_dataProviderConnection;
    v19->_dataProviderConnection = v31;

    objc_storeStrong(&v19->_settingsGateway, a11);
    v33 = [objc_alloc(MEMORY[0x277CF3550]) initWithQueue:v19->_queue];
    settingsObserver = v19->_settingsObserver;
    v19->_settingsObserver = v33;

    [(BBObserver *)v19->_settingsObserver setObserverFeed:512];
    [(BBObserver *)v19->_settingsObserver setDelegate:v19];
  }

  return v19;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(BBDataProviderConnection *)self->_dataProviderConnection invalidate];
  v4.receiver = self;
  v4.super_class = UNSDefaultDataProviderFactory;
  [(UNSDefaultDataProviderFactory *)&v4 dealloc];
}

- (id)notificationSettingsForBundleIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v5 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification settings", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__UNSDefaultDataProviderFactory_notificationSettingsForBundleIdentifier___block_invoke;
  block[3] = &unk_279E109D8;
  v12 = v4;
  v13 = &v14;
  block[4] = self;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __73__UNSDefaultDataProviderFactory_notificationSettingsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_notificationSettingsForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)notificationSettingsForTopicsWithBundleIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v5 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification settings for topics", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__UNSDefaultDataProviderFactory_notificationSettingsForTopicsWithBundleIdentifier___block_invoke;
  block[3] = &unk_279E109D8;
  v12 = v4;
  v13 = &v14;
  block[4] = self;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __83__UNSDefaultDataProviderFactory_notificationSettingsForTopicsWithBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_notificationSettingsForTopicsWithBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)requestAuthorizationStatus:(int64_t)a3 withOptions:(unint64_t)a4 scheduledDeliveryEnabled:(BOOL)a5 forNotificationSourceDescription:(id)a6 completionHandler:(id)a7
{
  v8 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v14 = [v12 bundleIdentifier];
  v15 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v29 = v14;
    v30 = 2048;
    v31 = a3;
    v32 = 2048;
    v33 = a4;
    v34 = 1024;
    v35 = v8;
    _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting authorization status: %ld options: %ld scheduledDelivery: %{BOOL}d", buf, 0x26u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __148__UNSDefaultDataProviderFactory_requestAuthorizationStatus_withOptions_scheduledDeliveryEnabled_forNotificationSourceDescription_completionHandler___block_invoke;
  block[3] = &unk_279E10BC8;
  v25 = a3;
  v26 = a4;
  v27 = v8;
  block[4] = self;
  v22 = v12;
  v23 = v14;
  v24 = v13;
  v17 = v13;
  v18 = v14;
  v19 = v12;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __148__UNSDefaultDataProviderFactory_requestAuthorizationStatus_withOptions_scheduledDeliveryEnabled_forNotificationSourceDescription_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __148__UNSDefaultDataProviderFactory_requestAuthorizationStatus_withOptions_scheduledDeliveryEnabled_forNotificationSourceDescription_completionHandler___block_invoke_2;
  v7[3] = &unk_279E10BA0;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v5 _queue_updateSettingsWithAuthorizationStatus:v2 options:v3 scheduledDeliveryEnabled:v4 forNotificationSourceDescription:v6 completionHandler:v7];
}

void __148__UNSDefaultDataProviderFactory_requestAuthorizationStatus_withOptions_scheduledDeliveryEnabled_forNotificationSourceDescription_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authorization granted: %d", &v10, 0x12u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestAuthorizationStatus:(int64_t)a3 withOptions:(unint64_t)a4 scheduledDeliveryEnabled:(BOOL)a5 expirationDate:(id)a6 lastUserGrantDate:(id)a7 forNotificationSourceDescription:(id)a8 completionHandler:(id)a9
{
  v45 = *MEMORY[0x277D85DE8];
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = [v17 bundleIdentifier];
  v20 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v38 = v19;
    v39 = 2048;
    v40 = a3;
    v41 = 2048;
    v42 = a4;
    v43 = 2112;
    v44 = v15;
    _os_log_impl(&dword_270AA8000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting authorization status: %ld options: %ld expiration: %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __181__UNSDefaultDataProviderFactory_requestAuthorizationStatus_withOptions_scheduledDeliveryEnabled_expirationDate_lastUserGrantDate_forNotificationSourceDescription_completionHandler___block_invoke;
  block[3] = &unk_279E10BF0;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  block[4] = self;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v19;
  v33 = v18;
  v22 = v18;
  v23 = v19;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  dispatch_async(queue, block);

  v27 = *MEMORY[0x277D85DE8];
}

void __181__UNSDefaultDataProviderFactory_requestAuthorizationStatus_withOptions_scheduledDeliveryEnabled_expirationDate_lastUserGrantDate_forNotificationSourceDescription_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __181__UNSDefaultDataProviderFactory_requestAuthorizationStatus_withOptions_scheduledDeliveryEnabled_expirationDate_lastUserGrantDate_forNotificationSourceDescription_completionHandler___block_invoke_2;
  v9[3] = &unk_279E10BA0;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v5 _queue_updateSettingsWithAuthorizationStatus:v2 options:v3 scheduledDeliveryEnabled:v4 expirationDate:v6 lastUserGrantDate:v7 forNotificationSourceDescription:v8 completionHandler:v9];
}

void __181__UNSDefaultDataProviderFactory_requestAuthorizationStatus_withOptions_scheduledDeliveryEnabled_expirationDate_lastUserGrantDate_forNotificationSourceDescription_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authorization granted: %d", &v10, 0x12u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestRemoveAuthorizationforNotificationSourceDescription:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__UNSDefaultDataProviderFactory_requestRemoveAuthorizationforNotificationSourceDescription_completionHandler___block_invoke;
  block[3] = &unk_279E10290;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __110__UNSDefaultDataProviderFactory_requestRemoveAuthorizationforNotificationSourceDescription_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  [v2 _queue_removeDataProviderWithBundleIdentifier:v3 completionHandler:*(a1 + 48)];
}

- (void)updateAuthorizationWithOptions:(unint64_t)a3 scheduledDeliveryEnabled:(BOOL)a4 forNotificationSourceDescription:(id)a5 completionHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = [v10 bundleIdentifier];
  v13 = *MEMORY[0x277CE2080];
  if (os_log_type_enabled(*MEMORY[0x277CE2080], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v12;
    v27 = 2048;
    v28 = a3;
    _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating authorization options: %ld", buf, 0x16u);
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __140__UNSDefaultDataProviderFactory_updateAuthorizationWithOptions_scheduledDeliveryEnabled_forNotificationSourceDescription_completionHandler___block_invoke;
  v19[3] = &unk_279E10C18;
  v22 = v11;
  v23 = a3;
  v24 = a4;
  v19[4] = self;
  v20 = v10;
  v21 = v12;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  dispatch_async(queue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void __140__UNSDefaultDataProviderFactory_updateAuthorizationWithOptions_scheduledDeliveryEnabled_forNotificationSourceDescription_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __140__UNSDefaultDataProviderFactory_updateAuthorizationWithOptions_scheduledDeliveryEnabled_forNotificationSourceDescription_completionHandler___block_invoke_2;
  v6[3] = &unk_279E10BA0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 _queue_updateSettingsWithAuthorizationStatus:0 options:v2 scheduledDeliveryEnabled:v3 forNotificationSourceDescription:v5 completionHandler:v6];
}

void __140__UNSDefaultDataProviderFactory_updateAuthorizationWithOptions_scheduledDeliveryEnabled_forNotificationSourceDescription_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authorization granted: %d", &v10, 0x12u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCriticalAlertAuthorization:(BOOL)a3 forNotificationSourceDescription:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__UNSDefaultDataProviderFactory_setCriticalAlertAuthorization_forNotificationSourceDescription_completionHandler___block_invoke;
  v13[3] = &unk_279E10C40;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __114__UNSDefaultDataProviderFactory_setCriticalAlertAuthorization_forNotificationSourceDescription_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __114__UNSDefaultDataProviderFactory_setCriticalAlertAuthorization_forNotificationSourceDescription_completionHandler___block_invoke_2;
  v5[3] = &unk_279E10BA0;
  v6 = v3;
  v7 = *(a1 + 48);
  [v4 _queue_setCriticalAlertAuthorization:v2 forNotificationSourceDescription:v6 completionHandler:v5];
}

void __114__UNSDefaultDataProviderFactory_setCriticalAlertAuthorization_forNotificationSourceDescription_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 bundleIdentifier];
    v12 = 138543618;
    v13 = v9;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authorization granted: %d", &v12, 0x12u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__UNSDefaultDataProviderFactory_addObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__UNSDefaultDataProviderFactory_removeObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_queue_sectionInfoDidChange:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 sectionID];
  v21 = v4;
  v6 = [v4 uns_notificationSettings];
  v7 = [v6 hasEnabledSettings];
  v8 = [(NSMutableSet *)self->_authorizedBundleIdentifiers containsObject:v5];
  v9 = MEMORY[0x277CE2088];
  if (v7 != v8)
  {
    v10 = *MEMORY[0x277CE2088];
    v11 = os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v11)
      {
        *buf = 138543362;
        v28 = v5;
        _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] User notification settings were enabled", buf, 0xCu);
      }

      [(NSMutableSet *)self->_authorizedBundleIdentifiers addObject:v5];
    }

    else
    {
      if (v11)
      {
        *buf = 138543362;
        v28 = v5;
        _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] User notification settings were disabled", buf, 0xCu);
      }

      [(NSMutableSet *)self->_authorizedBundleIdentifiers removeObject:v5];
    }
  }

  v12 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v5;
    _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notify observers that user notifications settings were updated", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_observers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 didChangeNotificationSettings:v6 forBundleIdentifier:v5];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v19 = [(NSMutableDictionary *)self->_bundleIdentifierToDataProvider objectForKey:v5];
  [v19 setEffectiveSectionInfo:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_queue_notificationSettingsForBundleIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UNSDefaultDataProviderFactory *)self _queue_effectiveSectionInfoForBundleIdentifier:v4];
  v6 = [v5 uns_notificationSettings];
  if (!v6)
  {
    v6 = [MEMORY[0x277CE1FD0] emptySettings];
  }

  v7 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v4;
    v12 = 1024;
    v13 = v6 != 0;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got notification settings [ hasResult: %d ]", &v10, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_queue_notificationSettingsForTopicsWithBundleIdentifier:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(UNSDefaultDataProviderFactory *)self _queue_sectionInfoForBundleIdentifier:v4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 subsections];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 subsectionID];
        v14 = [v12 uns_notificationSettings];
        [v5 setObject:v14 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v4;
    v24 = 1024;
    v25 = v5 != 0;
    _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got notification settings for topics [ hasResult: %d ]", buf, 0x12u);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_queue_effectiveSectionInfoForBundleIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CE2088];
  v6 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting effective section info", &v11, 0xCu);
  }

  v7 = [(UNSSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionID:v4];
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v4;
    v13 = 1024;
    v14 = v7 != 0;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got effective section info [ hasResult: %d ]", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_queue_sectionInfoForBundleIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CE2088];
  v6 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting section info", &v11, 0xCu);
  }

  v7 = [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:v4];
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v4;
    v13 = 1024;
    v14 = v7 != 0;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got section info [ hasResult: %d ]", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_queue_updateSettingsWithAuthorizationStatus:(int64_t)a3 options:(unint64_t)a4 scheduledDeliveryEnabled:(BOOL)a5 expirationDate:(id)a6 lastUserGrantDate:(id)a7 forNotificationSourceDescription:(id)a8 completionHandler:(id)a9
{
  v11 = a5;
  v46 = *MEMORY[0x277D85DE8];
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = [v17 bundleIdentifier];
  v20 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v37 = v19;
    v38 = 2048;
    v39 = a3;
    v40 = 2048;
    v41 = a4;
    v42 = 2112;
    v43 = v15;
    v44 = 1024;
    v45 = v11;
    _os_log_impl(&dword_270AA8000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update settings [authorizationStatus: %ld authorizationOptions: %ld authorizationExpirationDate: %@ scheduledDelivery: %{BOOL}d]", buf, 0x30u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __195__UNSDefaultDataProviderFactory__queue_updateSettingsWithAuthorizationStatus_options_scheduledDeliveryEnabled_expirationDate_lastUserGrantDate_forNotificationSourceDescription_completionHandler___block_invoke;
  v27[3] = &unk_279E10C68;
  v27[4] = self;
  v28 = v19;
  v33 = a4;
  v34 = a3;
  v29 = v17;
  v30 = v15;
  v35 = v11;
  v31 = v16;
  v32 = v18;
  v21 = v18;
  v22 = v16;
  v23 = v15;
  v24 = v17;
  v25 = v19;
  [(UNSDefaultDataProviderFactory *)self _queue_createDataProviderWithNotificationSourceDescription:v24 withCompletion:v27];

  v26 = *MEMORY[0x277D85DE8];
}

void __195__UNSDefaultDataProviderFactory__queue_updateSettingsWithAuthorizationStatus_options_scheduledDeliveryEnabled_expirationDate_lastUserGrantDate_forNotificationSourceDescription_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _queue_sectionInfoForBundleIdentifier:*(a1 + 40)];
    v5 = [v4 copy];
    [v5 uns_setPropertiesFromAuthorizationOptions:*(a1 + 80) supportsProvisionalAlerts:{objc_msgSend(*(a1 + 48), "supportsProvisionalAlerts")}];
    v6 = *(a1 + 88);
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v7 = v5;
        v8 = 3;
        goto LABEL_15;
      }

      if (v6 == 4)
      {
        [v5 setAuthorizationStatus:4];
        [v5 setAuthorizationExpirationDate:*(a1 + 56)];
        [v5 setLastUserGrantedAuthorizationDate:*(a1 + 64)];
      }
    }

    else
    {
      if (v6 == 1)
      {
        v7 = v5;
        v8 = 1;
        goto LABEL_15;
      }

      if (v6 == 2)
      {
        v7 = v5;
        v8 = 2;
LABEL_15:
        [v7 setAuthorizationStatus:v8];
      }
    }

    if ([v4 authorizationStatus] == 3 && objc_msgSend(v5, "authorizationStatus") == 2)
    {
      v16 = 0;
    }

    else
    {
      if ([v4 authorizationStatus] || objc_msgSend(v5, "authorizationStatus") != 3 || (objc_msgSend(*(a1 + 48), "supportsProvisionalAlerts") & 1) != 0)
      {
LABEL_24:
        if (*(a1 + 96))
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        [v5 setScheduledDeliverySetting:v17];
        if ([v4 isEqual:v5])
        {
          v18 = *(a1 + 72);
          if (v18)
          {
            (*(v18 + 16))(v18, [v4 hasEnabledSettings], 0);
          }
        }

        else
        {
          v19 = *MEMORY[0x277CE2088];
          if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 40);
            v23 = 138543362;
            v24 = v20;
            _os_log_impl(&dword_270AA8000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update Section info", &v23, 0xCu);
          }

          [*(a1 + 32) _queue_setSectionInfo:v5 forBundleIdentifier:*(a1 + 40)];
          v21 = [*(a1 + 32) _queue_sectionInfoForBundleIdentifier:*(a1 + 40)];
          (*(*(a1 + 72) + 16))(*(a1 + 72), [v21 hasEnabledSettings], 0);
        }

        goto LABEL_34;
      }

      v16 = 1;
    }

    [v5 deliverQuietly:v16 changeAuthorizationStatus:0];
    goto LABEL_24;
  }

  if (*(a1 + 72))
  {
    v9 = *MEMORY[0x277CE2088];
    if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_ERROR))
    {
      __195__UNSDefaultDataProviderFactory__queue_updateSettingsWithAuthorizationStatus_options_scheduledDeliveryEnabled_expirationDate_lastUserGrantDate_forNotificationSourceDescription_completionHandler___block_invoke_cold_1(a1, v9, v10, v11, v12, v13, v14, v15);
    }

    (*(*(a1 + 72) + 16))();
  }

LABEL_34:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setCriticalAlertAuthorization:(BOOL)a3 forNotificationSourceDescription:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __121__UNSDefaultDataProviderFactory__queue_setCriticalAlertAuthorization_forNotificationSourceDescription_completionHandler___block_invoke;
  v12[3] = &unk_279E10C90;
  v13 = v8;
  v14 = self;
  v16 = a3;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  [(UNSDefaultDataProviderFactory *)self _queue_createDataProviderWithNotificationSourceDescription:v11 withCompletion:v12];
}

void __121__UNSDefaultDataProviderFactory__queue_setCriticalAlertAuthorization_forNotificationSourceDescription_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) bundleIdentifier];
  if (a2)
  {
    v5 = [*(a1 + 40) _queue_sectionInfoForBundleIdentifier:v4];
    v6 = *MEMORY[0x277CE2088];
    if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v13 = 138543618;
      v14 = v4;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set criticalAlert to %d", &v13, 0x12u);
    }

    v8 = [v5 copy];
    v9 = v8;
    if (*(a1 + 56))
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [v8 setCriticalAlertSetting:v10];
    [*(a1 + 40) _queue_setSectionInfo:v9 forBundleIdentifier:v4];
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, [v9 criticalAlertSetting] == 2, 0);
    }
  }

  else if (*(a1 + 48))
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_ERROR))
    {
      __121__UNSDefaultDataProviderFactory__queue_setCriticalAlertAuthorization_forNotificationSourceDescription_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_createDataProviderWithNotificationSourceDescription:(id)a3 withCompletion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleIdentifier];
  v9 = [(NSMutableDictionary *)self->_bundleIdentifierToDataProvider objectForKey:v8];
  if (v9)
  {
    if (v7)
    {
      v7[2](v7, v9);
    }

    goto LABEL_17;
  }

  if (![v6 useDefaultDataProvider])
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_ERROR))
    {
      [UNSDefaultDataProviderFactory _queue_createDataProviderWithNotificationSourceDescription:withCompletion:];
    }

    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([v6 requiresTopics])
  {
    v10 = [v6 defaultTopics];
    if (v10)
    {

      goto LABEL_14;
    }

    v11 = [(UNCNotificationTopicRepository *)self->_topicRepository topicsForBundleIdentifier:v8];

    if (v11)
    {
      goto LABEL_14;
    }

    if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_ERROR))
    {
      [UNSDefaultDataProviderFactory _queue_createDataProviderWithNotificationSourceDescription:withCompletion:];
    }

    if (!v7)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_17;
    }

LABEL_11:
    v7[2](v7, 0);
    goto LABEL_12;
  }

LABEL_14:
  v12 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Create default data provider", buf, 0xCu);
  }

  v13 = [UNSDefaultDataProvider alloc];
  attachmentsService = self->_attachmentsService;
  summaryService = self->_summaryService;
  v16 = [(UNSDefaultDataProvider *)v13 initWithNotificationSourceDescription:v6 applicationLauncher:self->_appLauncher daemonLauncher:self->_daemonLauncher categoryRepository:self->_categoryRepository notificationRepository:self->_notificationRepository topicRepository:self->_topicRepository attachmentsService:attachmentsService localizationService:self->_localizationService summaryService:summaryService queue:self->_queue];
  v17 = [(UNSDefaultDataProviderFactory *)self _queue_effectiveSectionInfoForBundleIdentifier:v8];
  [(UNSDefaultDataProvider *)v16 setEffectiveSectionInfo:v17];

  [(NSMutableDictionary *)self->_bundleIdentifierToDataProvider setObject:v16 forKey:v8];
  objc_initWeak(buf, self->_notificationRepository);
  dataProviderConnection = self->_dataProviderConnection;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __107__UNSDefaultDataProviderFactory__queue_createDataProviderWithNotificationSourceDescription_withCompletion___block_invoke;
  v21[3] = &unk_279E10CB8;
  v22 = v8;
  v24 = v7;
  v9 = v16;
  v23 = v9;
  objc_copyWeak(&v25, buf);
  v19 = [(BBDataProviderConnection *)dataProviderConnection addDataProvider:v9 withCompletionHandler:v21];
  [(UNSDefaultDataProvider *)v9 setProxy:v19];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
}

void __107__UNSDefaultDataProviderFactory__queue_createDataProviderWithNotificationSourceDescription_withCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CE2088];
  v3 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did create default data provider", &v10, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 40));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = *v2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purging invalid notification records", &v10, 0xCu);
  }

  [WeakRetained removeInvalidNotificationRecordsForBundleIdentifier:*(a1 + 32)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeDataProviderWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove data provider", &v12, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_bundleIdentifierToDataProvider objectForKey:v6];
  v10 = v9;
  if (v9)
  {
    [v9 uninstall];
    [(BBDataProviderConnection *)self->_dataProviderConnection removeDataProviderWithSectionID:v6];
    [(NSMutableDictionary *)self->_bundleIdentifierToDataProvider removeObjectForKey:v6];
    [(NSMutableSet *)self->_authorizedBundleIdentifiers removeObject:v6];
  }

  if (v7)
  {
    v7[2](v7, v10 != 0, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_createNewDefaultDataProviders:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "Getting all section infos possible default data providers", buf, 2u);
  }

  v19 = v3;
  if ([v3 count])
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [MEMORY[0x277CBEB58] set];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v3;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v7)
    {
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 bundleIdentifier];
          [v5 setObject:v10 forKey:v11];
          if ([v10 useDefaultDataProvider] && objc_msgSend(v10, "suppressUserAuthorizationPrompt") && ((objc_msgSend(v10, "hideSettings") & 1) != 0 || objc_msgSend(v10, "automaticallyShowSettings")))
          {
            v12 = *MEMORY[0x277CE2088];
            if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
            {
              v13 = v12;
              v14 = [v10 useDefaultDataProvider];
              v15 = [v10 suppressUserAuthorizationPrompt];
              v16 = [v10 hideSettings];
              *buf = 138544130;
              v31 = v11;
              v32 = 1024;
              v33 = v14;
              v34 = 1024;
              v35 = v15;
              v36 = 1024;
              v37 = v16;
              _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Automatically create data provider [ useDefaultDataProvider: %d suppressUserAuthorizationPrompt: %d hideSettings: %d]", buf, 0x1Eu);
            }

            [(UNSDefaultDataProviderFactory *)self _queue_createDataProviderWithNotificationSourceDescription:v10 withCompletion:0];
          }

          else
          {
            [v6 addObject:v11];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v7);
    }

    if ([v6 count])
    {
      objc_initWeak(buf, self->_queue);
      settingsGateway = self->_settingsGateway;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __70__UNSDefaultDataProviderFactory__queue_createNewDefaultDataProviders___block_invoke;
      v22[3] = &unk_279E10CE0;
      objc_copyWeak(&v25, buf);
      v23 = v5;
      v24 = self;
      [(UNSSettingsGateway *)settingsGateway getSectionInfoForSectionIDs:v6 withCompletion:v22];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __70__UNSDefaultDataProviderFactory__queue_createNewDefaultDataProviders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__UNSDefaultDataProviderFactory__queue_createNewDefaultDataProviders___block_invoke_2;
    block[3] = &unk_279E10700;
    v8 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(WeakRetained, block);
  }
}

void __70__UNSDefaultDataProviderFactory__queue_createNewDefaultDataProviders___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CE2088];
  v3 = *MEMORY[0x277CE2088];
  if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    *buf = 134217984;
    v27 = [v4 count];
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Got %ld section infos for default data providers with visible settings", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138543618;
    v21 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [v12 sectionID];
          v16 = [v12 hasEnabledSettings];
          *buf = v21;
          v27 = v15;
          v28 = 1024;
          v29 = v16;
          _os_log_impl(&dword_270AA8000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got section info [ enabled: %d ]", buf, 0x12u);
        }

        v17 = *(a1 + 40);
        v18 = [v12 sectionID];
        v19 = [v17 objectForKey:v18];

        [*(a1 + 48) _queue_createDataProviderWithNotificationSourceDescription:v19 withCompletion:0];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notificationSourcesDidInstall:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UNSDefaultDataProviderFactory *)self _queue_notificationSourceDidInstall:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v4 bs_filter:&__block_literal_global_7];
  [(UNSDefaultDataProviderFactory *)self _queue_createNewDefaultDataProviders:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notificationSourceDidInstall:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 useDefaultDataProvider];
  v7 = *MEMORY[0x277CE2088];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Application installed using default data provider", &v10, 0xCu);
    }

    [(NSMutableSet *)self->_supportedBundleIdentifiers addObject:v5];
    v8 = [(NSMutableDictionary *)self->_bundleIdentifierToDataProvider objectForKey:v5];
    [v8 setNotificationSourceDescription:v4];
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEBUG))
  {
    [UNSDefaultDataProviderFactory _queue_notificationSourceDidInstall:];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notificationSourcesDidUninstall:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UNSDefaultDataProviderFactory *)self _queue_notificationSourceDidUninstall:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notificationSourceDidUninstall:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 useDefaultDataProvider];

  v7 = *MEMORY[0x277CE2088];
  v8 = *MEMORY[0x277CE2088];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Application uninstalled using default data provider", &v10, 0xCu);
    }

    [(NSMutableSet *)self->_supportedBundleIdentifiers removeObject:v5];
    [(UNSDefaultDataProviderFactory *)self _queue_removeDataProviderWithBundleIdentifier:v5 completionHandler:0];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [UNSDefaultDataProviderFactory _queue_notificationSourceDidUninstall:];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notificationSourcesDidInstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__UNSDefaultDataProviderFactory_notificationSourcesDidInstall___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)notificationSourcesDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__UNSDefaultDataProviderFactory_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)observer:(id)a3 updateSectionInfo:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__UNSDefaultDataProviderFactory_observer_updateSectionInfo___block_invoke;
  v8[3] = &unk_279E104B8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __60__UNSDefaultDataProviderFactory_observer_updateSectionInfo___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sectionID];
  v3 = [*(*(a1 + 40) + 24) containsObject:v2];
  v4 = *MEMORY[0x277CE2088];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Default data provider section info did change", &v8, 0xCu);
    }

    v5 = [*(*(a1 + 40) + 8) objectForKey:v2];
    if (!v5)
    {
      v6 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:v2];
      if (v6)
      {
        [*(a1 + 40) _queue_createDataProviderWithNotificationSourceDescription:v6 withCompletion:0];
      }
    }

    [*(a1 + 40) _queue_sectionInfoDidChange:*(a1 + 32)];
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE2088], OS_LOG_TYPE_DEBUG))
  {
    __60__UNSDefaultDataProviderFactory_observer_updateSectionInfo___block_invoke_cold_1();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)a3 removeSection:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__UNSDefaultDataProviderFactory_observer_removeSection___block_invoke;
  v8[3] = &unk_279E104B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __195__UNSDefaultDataProviderFactory__queue_updateSettingsWithAuthorizationStatus_options_scheduledDeliveryEnabled_expirationDate_lastUserGrantDate_forNotificationSourceDescription_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, a2, a3, "[%{public}@] No data provider", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __121__UNSDefaultDataProviderFactory__queue_setCriticalAlertAuthorization_forNotificationSourceDescription_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] No data provider", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_createDataProviderWithNotificationSourceDescription:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Do not register notification settings for an app that is using a custom data provider", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_createDataProviderWithNotificationSourceDescription:withCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Do not register notification settings for an app requires topics but does not have them defined", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notificationSourceDidInstall:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_270AA8000, v0, v1, "[%{public}@] Application installed using custom data provider", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notificationSourceDidUninstall:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_270AA8000, v0, v1, "[%{public}@] Application uninstalled using custom data provider", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__UNSDefaultDataProviderFactory_observer_updateSectionInfo___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_270AA8000, v0, v1, "[%{public}@] Section info updated for custom data provider", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end