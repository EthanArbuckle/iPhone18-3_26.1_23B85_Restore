@interface WFContextualActionSpotlightSyncService
+ (BOOL)didCompleteAppShortcutDomainMigration;
+ (int64_t)contextualActionsIndexVersion;
+ (void)setContextualActionsIndexVersion:(int64_t)version;
+ (void)setDidCompleteAppShortcutDomainMigration;
- (WFContextualActionSpotlightSyncService)initWithDaemonTaskScheduler:(id)scheduler databaseProvider:(id)provider;
- (void)applicationWasRegisteredWithCompletion:(id)completion;
- (void)availableActivitiesDidChangeForManager:(id)manager;
- (void)cellularSettingsUpdatedWithCompletion:(id)completion;
- (void)collectionsDidChangeWithCompletion:(id)completion;
- (void)dataSourceDidReload:(id)reload;
- (void)dealloc;
- (void)domainCleanerDidClearDomains:(id)domains;
- (void)indexAppShortcutsForBundleIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion:(id)completion;
- (void)queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:(id)name identifiers:(id)identifiers batchSize:(unint64_t)size fetcher:(id)fetcher completionBlock:(id)block;
- (void)queue_getAlarmContextualActionsWithCompletionHandler:(id)handler;
- (void)queue_getAppShortcutContextualActionsForBundleIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)queue_getFocusModeContextualActionsWithCompletionHandler:(id)handler;
- (void)queue_getFolderAppEntityContextualActionsWithCompletionHandler:(id)handler;
- (void)queue_getStaticContextualActionsWithCompletionHandler:(id)handler;
- (void)queue_getToggleSettingContextualActionsWithCompletionHandler:(id)handler;
- (void)queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler:(id)handler;
- (void)receiveAutoShortcutsUpdatedNotification:(id)notification completion:(id)completion;
- (void)reindexAllSearchableItemsIfNeeded:(BOOL)needed completion:(id)completion;
- (void)reindexAllSearchableItemsWithCompletion:(id)completion;
- (void)reindexSearchableItems:(unint64_t)items appShortcutBundleIdentifiers:(id)identifiers completion:(id)completion;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)spotlightPreferencesChangedWithCompletion:(id)completion;
- (void)startWithCompletion:(id)completion;
- (void)systemLanguageUpdatedWithCompletion:(id)completion;
@end

@implementation WFContextualActionSpotlightSyncService

- (void)domainCleanerDidClearDomains:(id)domains
{
  daemonTaskScheduler = [(WFContextualActionSpotlightSyncService *)self daemonTaskScheduler];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__WFContextualActionSpotlightSyncService_domainCleanerDidClearDomains___block_invoke;
  v5[3] = &unk_2788FF898;
  v5[4] = self;
  [daemonTaskScheduler executeAsyncTaskWithIdentifier:@"WFContextualActionSpotlightSyncService.domainCleanerDidClearDomains" priority:0 handler:v5];
}

void __71__WFContextualActionSpotlightSyncService_domainCleanerDidClearDomains___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[WFContextualActionSpotlightSyncService domainCleanerDidClearDomains:]_block_invoke";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Domains wiped reindexing all contextual actions", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__WFContextualActionSpotlightSyncService_domainCleanerDidClearDomains___block_invoke_330;
  v8[3] = &unk_2788FF3C8;
  v9 = v3;
  v6 = v3;
  [v5 reindexAllSearchableItemsWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)spotlightPreferencesChangedWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[WFContextualActionSpotlightSyncService spotlightPreferencesChangedWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Spotlight preferences updated, triggering App Shortcut sync", &v7, 0xCu);
  }

  [(WFContextualActionSpotlightSyncService *)self reindexSearchableItems:4 appShortcutBundleIdentifiers:0 completion:completionCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cellularSettingsUpdatedWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[WFContextualActionSpotlightSyncService cellularSettingsUpdatedWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Cellular settings updated, triggering toggle sync", &v7, 0xCu);
  }

  [(WFContextualActionSpotlightSyncService *)self reindexSearchableItems:8 appShortcutBundleIdentifiers:0 completion:completionCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)systemLanguageUpdatedWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[WFContextualActionSpotlightSyncService systemLanguageUpdatedWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s System language updated, triggering full reindex", &v7, 0xCu);
  }

  [(WFContextualActionSpotlightSyncService *)self reindexAllSearchableItemsWithCompletion:completionCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  daemonTaskScheduler = [(WFContextualActionSpotlightSyncService *)self daemonTaskScheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __119__WFContextualActionSpotlightSyncService_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke;
  v12[3] = &unk_2788FF910;
  v13 = identifiersCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = identifiersCopy;
  [daemonTaskScheduler executeAsyncTaskWithIdentifier:@"WFContextualActionSpotlightSyncService.reindexSearchableItemsWithIdentifiers" priority:0 handler:v12];
}

void __119__WFContextualActionSpotlightSyncService_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[WFContextualActionSpotlightSyncService searchableIndex:reindexSearchableItemsWithIdentifiers:acknowledgementHandler:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s CSSearchableIndex requested index of items: %@", buf, 0x16u);
  }

  v6 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[WFContextualActionSpotlightSyncService searchableIndex:reindexSearchableItemsWithIdentifiers:acknowledgementHandler:]_block_invoke";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Sync service doesn't support reindexing individual items, triggering full reindex", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __119__WFContextualActionSpotlightSyncService_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_326;
  v10[3] = &unk_2788FF8C0;
  v7 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v3;
  v8 = v3;
  [v7 reindexAllSearchableItemsWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __119__WFContextualActionSpotlightSyncService_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_326(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  daemonTaskScheduler = [(WFContextualActionSpotlightSyncService *)self daemonTaskScheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__WFContextualActionSpotlightSyncService_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke;
  v8[3] = &unk_2788FF8E8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [daemonTaskScheduler executeAsyncTaskWithIdentifier:@"WFContextualActionSpotlightSyncService.reindexAllSearchableItemsWithAcknowledgementHandler" priority:0 handler:v8];
}

void __110__WFContextualActionSpotlightSyncService_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[WFContextualActionSpotlightSyncService searchableIndex:reindexAllSearchableItemsWithAcknowledgementHandler:]_block_invoke";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s CSSearchableIndex requested full reindex", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__WFContextualActionSpotlightSyncService_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke_322;
  v8[3] = &unk_2788FF8C0;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v6 = v3;
  [v5 reindexAllSearchableItemsWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __110__WFContextualActionSpotlightSyncService_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke_322(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)dataSourceDidReload:(id)reload
{
  daemonTaskScheduler = [(WFContextualActionSpotlightSyncService *)self daemonTaskScheduler];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__WFContextualActionSpotlightSyncService_dataSourceDidReload___block_invoke;
  v5[3] = &unk_2788FF898;
  v5[4] = self;
  [daemonTaskScheduler executeAsyncTaskWithIdentifier:@"WFContextualActionSpotlightSyncService.alarmDataSourceDidReload" priority:0 handler:v5];
}

void __62__WFContextualActionSpotlightSyncService_dataSourceDidReload___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[WFContextualActionSpotlightSyncService dataSourceDidReload:]_block_invoke";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Alarm data source reloaded, triggering re-index", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__WFContextualActionSpotlightSyncService_dataSourceDidReload___block_invoke_318;
  v8[3] = &unk_2788FF3C8;
  v9 = v3;
  v6 = v3;
  [v5 reindexSearchableItems:16 appShortcutBundleIdentifiers:0 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)receiveAutoShortcutsUpdatedNotification:(id)notification completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  notificationCopy = notification;
  v8 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[WFContextualActionSpotlightSyncService receiveAutoShortcutsUpdatedNotification:completion:]";
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s App Shortcuts updated, triggering re-index", &v12, 0xCu);
  }

  userInfo = [notificationCopy userInfo];

  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D23A60]];

  [(WFContextualActionSpotlightSyncService *)self reindexSearchableItems:4 appShortcutBundleIdentifiers:v10 completion:completionCopy];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)applicationWasRegisteredWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[WFContextualActionSpotlightSyncService applicationWasRegisteredWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Shortcuts app installed, triggering force sync", &v7, 0xCu);
  }

  [(WFContextualActionSpotlightSyncService *)self reindexAllSearchableItemsIfNeeded:1 completion:completionCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)collectionsDidChangeWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[WFContextualActionSpotlightSyncService collectionsDidChangeWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Collections changed, triggering resync of folder entities", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__WFContextualActionSpotlightSyncService_collectionsDidChangeWithCompletion___block_invoke;
  v8[3] = &unk_2788FF3C8;
  v9 = completionCopy;
  v6 = completionCopy;
  [(WFContextualActionSpotlightSyncService *)self reindexSearchableItems:32 appShortcutBundleIdentifiers:0 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)availableActivitiesDidChangeForManager:(id)manager
{
  daemonTaskScheduler = [(WFContextualActionSpotlightSyncService *)self daemonTaskScheduler];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__WFContextualActionSpotlightSyncService_availableActivitiesDidChangeForManager___block_invoke;
  v5[3] = &unk_2788FF898;
  v5[4] = self;
  [daemonTaskScheduler executeAsyncTaskWithIdentifier:@"WFContextualActionSpotlightSyncService.availableActivitiesDidChangeForManager" priority:0 handler:v5];
}

void __81__WFContextualActionSpotlightSyncService_availableActivitiesDidChangeForManager___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[WFContextualActionSpotlightSyncService availableActivitiesDidChangeForManager:]_block_invoke";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Available focus modes changes, triggering re-index", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__WFContextualActionSpotlightSyncService_availableActivitiesDidChangeForManager___block_invoke_313;
  v8[3] = &unk_2788FF3C8;
  v9 = v3;
  v6 = v3;
  [v5 reindexSearchableItems:2 appShortcutBundleIdentifiers:0 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v6 = [workflowUserDefaults valueForKey:*MEMORY[0x277D7CF98]];

  if (v6)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v7 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[WFContextualActionSpotlightSyncService queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler:]";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Device is using old domain identifiers for contextual actions. Wiping the index.", buf, 0xCu);
    }

    index = [(WFContextualActionSpotlightSyncService *)self index];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __114__WFContextualActionSpotlightSyncService_queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler___block_invoke;
    v10[3] = &unk_2788FF4B8;
    v10[4] = self;
    v11 = handlerCopy;
    [index deleteAllSearchableItemsWithCompletionHandler:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __114__WFContextualActionSpotlightSyncService_queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __114__WFContextualActionSpotlightSyncService_queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_2788FF680;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __114__WFContextualActionSpotlightSyncService_queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);
    v4 = *MEMORY[0x277D85DE8];

    return v3();
  }

  else
  {
    v6 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[WFContextualActionSpotlightSyncService queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler:]_block_invoke_2";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Wiped index!", &v9, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
    [v7 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D7CF98]];

    result = (*(*(a1 + 40) + 16))();
    v8 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = [(WFContextualActionSpotlightSyncService *)self queue];
  dispatch_assert_queue_V2(queue);

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v11 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v35 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]";
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_INFO, "%s Fetching app shortcuts for apps...", buf, 0xCu);
  }

  v12 = [objc_alloc(MEMORY[0x277D7C130]) initWithAppShortcutsDenyListEnvironment:2 environment:2];
  v33 = 0;
  v13 = [v12 fetchAppShortcutsForBundleIdentifiers:identifiersCopy localeIdentifier:localeIdentifier error:&v33];
  v14 = v33;
  if (!v14)
  {
    if (identifiersCopy)
    {
      allKeys = identifiersCopy;
      v18 = getWFSpotlightSyncLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v35 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]";
        v36 = 2112;
        v37 = allKeys;
        v19 = "%s Indexing app shortcuts for bundle identifiers: %@";
        v20 = v18;
        v21 = 22;
LABEL_12:
        _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
      }
    }

    else
    {
      allKeys = [v13 allKeys];
      v18 = getWFSpotlightSyncLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v35 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]";
        v19 = "%s Indexing app shortcuts for all apps";
        v20 = v18;
        v21 = 12;
        goto LABEL_12;
      }
    }

    v22 = objc_opt_new();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_303;
    v28[3] = &unk_2788FF870;
    v28[4] = self;
    v29 = v13;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_307;
    v25[3] = &unk_2788FF7F8;
    v25[4] = self;
    v26 = v22;
    v27 = handlerCopy;
    v23 = v22;
    [allKeys if_flatMapAsynchronously:v28 completionHandler:v25];

    goto LABEL_14;
  }

  v15 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v35 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]";
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to get App Shortcuts: %@", buf, 0x16u);
  }

  queue2 = [(WFContextualActionSpotlightSyncService *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_2788FF680;
  v32 = handlerCopy;
  v31 = v14;
  dispatch_async(queue2, block);

  allKeys = v32;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
}

void __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_303(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = +[WFSpotlightSettingsClient shared];
  v9 = [v8 isSpotlightEnabledForBundleIdentifier:v6];

  if (v9)
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v11 = objc_opt_new();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_2;
    v17[3] = &unk_2788FF848;
    v18 = v11;
    v12 = v11;
    v13 = [v10 if_compactMap:v17];
    v7[2](v7, v13, 0);
  }

  else
  {
    v14 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s App shortcuts are disabled for Spotlight for %@", buf, 0x16u);
    }

    v15 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_305;
    block[3] = &unk_2788FF730;
    v20 = v7;
    dispatch_async(v15, block);

    v10 = v20;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_307(id *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    if ([a1[5] count])
    {
      v7 = getWFSpotlightSyncLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = a1[5];
        *buf = 136315394;
        v30 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke_2";
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_FAULT, "%s Looks like we've skipped indexing app shortcuts from app %@ into the index, check the logs for more information", buf, 0x16u);
      }
    }

    v9 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v5 count];
      *buf = 136315394;
      v30 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
      v31 = 2048;
      v32 = v10;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s %lu app shortcuts found.", buf, 0x16u);
    }

    v11 = [MEMORY[0x277D79DF0] autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:v5];
    v12 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v11 count];
      *buf = 136315394;
      v30 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
      v31 = 2048;
      v32 = v13;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_INFO, "%s Eligibility marked %lu app shortcut actions.", buf, 0x16u);
    }

    v14 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_309;
    block[3] = &unk_2788FFF98;
    v15 = a1[6];
    v24 = v6;
    v25 = v15;
    v23 = v11;
    v16 = v6;
    v17 = v11;
    dispatch_async(v14, block);
  }

  else
  {
    v18 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_ERROR, "%s Error generating contextual actions from app shortcuts: %@", buf, 0x16u);
    }

    v19 = [a1[4] queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_308;
    v26[3] = &unk_2788FF680;
    v20 = a1[6];
    v27 = v6;
    v28 = v20;
    v17 = v6;
    dispatch_async(v19, v26);

    v16 = v28;
  }

  v21 = *MEMORY[0x277D85DE8];
}

id __120__WFContextualActionSpotlightSyncService_queue_v2GetAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D79DF0];
  v6 = a2;
  v7 = [[v5 alloc] initWithExecutableAppShortcut:v6 index:a3];

  v8 = *(a1 + 32);
  v9 = [v7 uniqueIdentifier];
  LODWORD(v8) = [v8 containsObject:v9];

  if (v8)
  {
    v10 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[WFContextualActionSpotlightSyncService queue_v2GetAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke_2";
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Found actions with duplicate identifiers that would override themselves. Filtering out duplicate entry.", &v16, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [v7 uniqueIdentifier];
    [v12 addObject:v13];

    v11 = v7;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)queue_getAppShortcutContextualActionsForBundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = [(WFContextualActionSpotlightSyncService *)self queue];
  dispatch_assert_queue_V2(queue);

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v11 = WFInstalledAppsEnumerator();
  allObjects = [v11 allObjects];

  if ([allObjects count])
  {
    databaseProvider = [(WFContextualActionSpotlightSyncService *)self databaseProvider];
    v29 = 0;
    v14 = [databaseProvider databaseWithError:&v29];
    v15 = v29;

    v16 = getWFSpotlightSyncLogObject();
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]";
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, "%s Fetching app shortcuts for apps...", buf, 0xCu);
      }

      v18 = [objc_alloc(MEMORY[0x277D23B78]) initWithOptions:2];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_284;
      v22[3] = &unk_2788FF820;
      v22[4] = self;
      v25 = handlerCopy;
      v23 = identifiersCopy;
      v24 = v14;
      [v18 autoShortcutsForLocaleIdentifier:localeIdentifier completion:v22];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]";
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to access the Shortcuts database, can't check whether app shortcuts should or should not be in Spotlight: %@", buf, 0x16u);
      }

      queue2 = [(WFContextualActionSpotlightSyncService *)self queue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_282;
      v26[3] = &unk_2788FF680;
      v28 = handlerCopy;
      v27 = v15;
      dispatch_async(queue2, v26);

      v18 = v28;
    }
  }

  else
  {
    queue3 = [(WFContextualActionSpotlightSyncService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke;
    block[3] = &unk_2788FF730;
    v31 = handlerCopy;
    dispatch_async(queue3, block);

    v15 = v31;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_284(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = v7;
      v9 = getWFSpotlightSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        *buf = 136315394;
        v34 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke_2";
        v35 = 2112;
        v36 = v10;
        v11 = "%s Indexing app shortcuts for bundle identifiers: %@";
        v12 = v9;
        v13 = 22;
LABEL_10:
        _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
      }
    }

    else
    {
      v8 = [v5 allKeys];
      v9 = getWFSpotlightSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
        v11 = "%s Indexing app shortcuts for all apps";
        v12 = v9;
        v13 = 12;
        goto LABEL_10;
      }
    }

    v16 = objc_opt_new();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_287;
    v25[3] = &unk_2788FF7D0;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v26 = v17;
    v27 = v18;
    v28 = v16;
    v29 = v5;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_298;
    v22[3] = &unk_2788FF7F8;
    v22[4] = *(a1 + 32);
    v19 = *(a1 + 56);
    v23 = v28;
    v24 = v19;
    v20 = v28;
    [v8 if_flatMapAsynchronously:v25 completionHandler:v22];

    goto LABEL_12;
  }

  v14 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Failed to get app shortcuts: %@", buf, 0x16u);
  }

  v15 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_285;
  block[3] = &unk_2788FF680;
  v32 = *(a1 + 56);
  v31 = v6;
  dispatch_async(v15, block);

  v8 = v32;
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
}

void __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_287(id *a1, void *a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = a1[4];
  v37 = 0;
  v9 = [v8 isSpotlightEnabledForAutoShortcutsWithBundleIdentifier:v6 error:&v37];
  v10 = v37;
  if (v10)
  {
    v11 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v39 = v10;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Error retrieving the app shortcuts preference for Spotlight for %@: %@", buf, 0x20u);
    }

    v12 = [a1[5] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_288;
    block[3] = &unk_2788FF468;
    v33 = a1[6];
    v34 = v6;
    v36 = v7;
    v35 = v10;
    dispatch_async(v12, block);

    v13 = v33;
  }

  else if (v9)
  {
    v13 = [a1[7] objectForKeyedSubscript:v6];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v39 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_2;
    v24[3] = &unk_2788FF758;
    v25 = a1[4];
    v26 = 0;
    v14 = a1[6];
    v27 = a1[5];
    v28 = v14;
    v15 = [v13 if_objectsPassingTest:v24];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_293;
    v20[3] = &unk_2788FF7A8;
    v21 = v6;
    v23 = buf;
    v22 = a1[4];
    v16 = [v15 if_flatMap:v20];

    (*(v7 + 2))(v7, v16, 0);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, "%s App shortcuts are disabled for Spotlight for %@", buf, 0x16u);
    }

    v18 = [a1[5] queue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_289;
    v29[3] = &unk_2788FF680;
    v30 = 0;
    v31 = v7;
    dispatch_async(v18, v29);

    v13 = v31;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_298(id *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    if ([a1[5] count])
    {
      v7 = getWFSpotlightSyncLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = a1[5];
        *buf = 136315394;
        v30 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke_2";
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_FAULT, "%s Looks like we've skipped indexing app shortcuts from app %@ into the index, check the logs for more information", buf, 0x16u);
      }
    }

    v9 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v5 count];
      *buf = 136315394;
      v30 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
      v31 = 2048;
      v32 = v10;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s %lu app shortcuts found.", buf, 0x16u);
    }

    v11 = [MEMORY[0x277D79DF0] autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:v5];
    v12 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v11 count];
      *buf = 136315394;
      v30 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
      v31 = 2048;
      v32 = v13;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_INFO, "%s Eligibility marked %lu app shortcut actions.", buf, 0x16u);
    }

    v14 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_300;
    block[3] = &unk_2788FFF98;
    v15 = a1[6];
    v24 = v6;
    v25 = v15;
    v23 = v11;
    v16 = v6;
    v17 = v11;
    dispatch_async(v14, block);
  }

  else
  {
    v18 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_ERROR, "%s Error generating contextual actions from app shortcuts: %@", buf, 0x16u);
    }

    v19 = [a1[4] queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_299;
    v26[3] = &unk_2788FF680;
    v20 = a1[6];
    v27 = v6;
    v28 = v20;
    v17 = v6;
    dispatch_async(v19, v26);

    v16 = v28;
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_288(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

uint64_t __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 attributionBundleIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 attributionBundleIdentifier];
    v7 = *(a1 + 32);
    v21 = 0;
    v8 = [v7 isSpotlightEnabledForAutoShortcutsWithBundleIdentifier:v6 error:&v21];
    v9 = v21;
    if (v9)
    {
      v10 = getWFSpotlightSyncLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        *buf = 136315650;
        v23 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke_2";
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Error retrieving the app shortcuts preference for Spotlight for %@: %@", buf, 0x20u);
      }

      v12 = [*(a1 + 48) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_290;
      block[3] = &unk_2788FFFC0;
      v19 = *(a1 + 56);
      v20 = v6;
      dispatch_async(v12, block);

      v13 = v19;
LABEL_6:

      v14 = 0;
      goto LABEL_7;
    }

    if ((v8 & 1) == 0)
    {
      v13 = getWFSpotlightSyncLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke_2";
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_INFO, "%s App shortcuts are disabled for Spotlight for %@", buf, 0x16u);
      }

      goto LABEL_6;
    }
  }

  if ([MEMORY[0x277D79DD8] isAppShortcutDenyListed:v3 inEnvironment:2])
  {
    v14 = 0;
    goto LABEL_12;
  }

  v6 = getWFSpotlightSyncLogObject();
  v14 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = [v3 actionIdentifier];
    *buf = 136315394;
    v23 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke";
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s App Shortcut action %@ is deny listed, skipping", buf, 0x16u);
  }

LABEL_7:

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

id __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_293(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D79DF0] allActionsForAutoShortcut:a2 bundleIdentifier:*(a1 + 32) startIndex:*(*(*(a1 + 48) + 8) + 24)];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_2_294;
  v9 = &unk_2788FF780;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v4 = [v3 if_objectsPassingTest:&v6];

  *(*(*(a1 + 48) + 8) + 24) += [v4 count];

  return v4;
}

uint64_t __118__WFContextualActionSpotlightSyncService_queue_getAppShortcutContextualActionsForBundleIdentifiers_completionHandler___block_invoke_2_294(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 phrase];
  v5 = [v4 signature];

  v6 = [*(a1 + 32) isAutoShortcutDisabledForBundleIdentifier:*(a1 + 40) autoShortcutIdentifier:v5];
  if (v6)
  {
    v7 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 uniqueIdentifier];
      v11 = 136315394;
      v12 = "[WFContextualActionSpotlightSyncService queue_getAppShortcutContextualActionsForBundleIdentifiers:completionHandler:]_block_invoke_2";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_INFO, "%s App shortcut %@ is disabled", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 ^ 1u;
}

- (void)indexAppShortcutsForBundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (identifiersCopy)
  {
    v8 = [identifiersCopy if_map:&__block_literal_global_274];
  }

  else
  {
    v9 = WFInstalledAppsEnumerator();
    allObjects = [v9 allObjects];

    v8 = [allObjects if_map:&__block_literal_global_277];
  }

  appShortcutBatchSize = [(WFContextualActionSpotlightSyncService *)self appShortcutBatchSize];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__WFContextualActionSpotlightSyncService_indexAppShortcutsForBundleIdentifiers_completionHandler___block_invoke_3;
  v13[3] = &unk_2788FF708;
  v13[4] = self;
  v14 = identifiersCopy;
  v12 = identifiersCopy;
  [(WFContextualActionSpotlightSyncService *)self queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:@"app shortcuts" identifiers:v8 batchSize:appShortcutBatchSize fetcher:v13 completionBlock:handlerCopy];
}

id __98__WFContextualActionSpotlightSyncService_indexAppShortcutsForBundleIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D79DF0];
  v3 = [a2 bundleIdentifier];
  v4 = [v2 spotlightDomainIdentifierForBundleIdentifier:v3];

  return v4;
}

- (void)queue_getFolderAppEntityContextualActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseProvider = [(WFContextualActionSpotlightSyncService *)self databaseProvider];
  v9 = [databaseProvider databaseWithError:0];

  sortedVisibleFolders = [v9 sortedVisibleFolders];
  descriptors = [sortedVisibleFolders descriptors];

  v8 = [descriptors if_map:&__block_literal_global_271];
  handlerCopy[2](handlerCopy, v8, 0);
}

_TtC14VoiceShortcuts27WFAppEntityContextualAction *__105__WFContextualActionSpotlightSyncService_queue_getFolderAppEntityContextualActionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [_TtC14VoiceShortcuts27WFAppEntityContextualAction alloc];
  v4 = [v2 identifier];
  v5 = [v2 name];

  v6 = [(WFAppEntityContextualAction *)v3 initWithIdentifier:v4 displayTitle:v5 entityType:0];

  return v6;
}

- (void)queue_getAlarmContextualActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(WFContextualActionSpotlightSyncService *)self queue];
  dispatch_assert_queue_V2(queue);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__WFContextualActionSpotlightSyncService_queue_getAlarmContextualActionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_2788FF680;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __95__WFContextualActionSpotlightSyncService_queue_getAlarmContextualActionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) alarmDataSource];
  v3 = [v2 numberOfAlarms];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = [*(v1 + 32) alarmDataSource];
      v7 = [v6 alarmAtRow:v5];

      v20 = v7;
      v8 = [v7 intentAlarm];
      v21 = objc_alloc_init(MEMORY[0x277CD3D68]);
      v9 = [v21 encodeObject:v8];
      v10 = objc_alloc(MEMORY[0x277D7A180]);
      v11 = [v7 alarmID];
      [v11 UUIDString];
      v12 = v3;
      v14 = v13 = v1;
      v15 = [v8 displayString];
      v16 = [v10 initWithAlarmIdentifier:v14 alarmName:v15 alarmData:v9 operation:2];

      v1 = v13;
      v3 = v12;

      [v4 addObject:v16];
      ++v5;
    }

    while (v12 != v5);
  }

  v17 = [*(v1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__WFContextualActionSpotlightSyncService_queue_getAlarmContextualActionsWithCompletionHandler___block_invoke_2;
  block[3] = &unk_2788FF680;
  v18 = *(v1 + 40);
  v23 = v4;
  v24 = v18;
  v19 = v4;
  dispatch_async(v17, block);
}

- (void)queue_getFocusModeContextualActionsWithCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queue = [(WFContextualActionSpotlightSyncService *)self queue];
  dispatch_assert_queue_V2(queue);

  sharedActivityManager = [getFCActivityManagerClass() sharedActivityManager];
  availableActivities = [sharedActivityManager availableActivities];
  v8 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = availableActivities;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        activityIdentifier = [v14 activityIdentifier];
        [v8 setObject:v14 forKeyedSubscript:activityIdentifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v16 = [v8 copy];
  allValues = [v16 allValues];

  v18 = [allValues if_compactMap:&__block_literal_global_266];
  queue2 = [(WFContextualActionSpotlightSyncService *)self queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__WFContextualActionSpotlightSyncService_queue_getFocusModeContextualActionsWithCompletionHandler___block_invoke_2;
  v23[3] = &unk_2788FF680;
  v24 = v18;
  v25 = handlerCopy;
  v20 = v18;
  v21 = handlerCopy;
  dispatch_async(queue2, v23);

  v22 = *MEMORY[0x277D85DE8];
}

id __99__WFContextualActionSpotlightSyncService_queue_getFocusModeContextualActionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPlaceholder])
  {
    v3 = 0;
  }

  else
  {
    v4 = v2;
    if (!v4)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"WFToggleFocusModeContextualActionFocusMode *WFToggleFocusModeContextualActionFocusModeFromFocusMode(__strong id<FCActivityDescribing>)"];
      [v12 handleFailureInFunction:v13 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"focusMode"}];
    }

    v5 = objc_alloc(MEMORY[0x277D7A190]);
    v6 = [v4 activityIdentifier];
    v7 = [v4 activityDisplayName];
    v8 = [v4 activitySymbolImageName];
    v9 = [v4 activityColorName];
    v10 = [v5 initWithIdentifier:v6 name:v7 symbolName:v8 colorName:v9];

    v3 = [MEMORY[0x277D7A188] toggle:v10];
  }

  return v3;
}

- (void)queue_getToggleSettingContextualActionsWithCompletionHandler:(id)handler
{
  v20[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queue = [(WFContextualActionSpotlightSyncService *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = WFToggleAccessibilityContextualActions();
  v20[0] = v7;
  v8 = WFToggleSettingContextualActions();
  v20[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __WFToggleContextualActions_block_invoke;
  v18[3] = &unk_2788FF968;
  v10 = v6;
  v19 = v10;
  [v9 enumerateObjectsUsingBlock:v18];

  queue2 = [(WFContextualActionSpotlightSyncService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__WFContextualActionSpotlightSyncService_queue_getToggleSettingContextualActionsWithCompletionHandler___block_invoke;
  v15[3] = &unk_2788FF680;
  v16 = v10;
  v17 = handlerCopy;
  v12 = v10;
  v13 = handlerCopy;
  dispatch_async(queue2, v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)queue_getStaticContextualActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(WFContextualActionSpotlightSyncService *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = WFStaticContextualActionDefinitionsForSurface();
  queue2 = [(WFContextualActionSpotlightSyncService *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__WFContextualActionSpotlightSyncService_queue_getStaticContextualActionsWithCompletionHandler___block_invoke;
  v10[3] = &unk_2788FF680;
  v11 = v6;
  v12 = handlerCopy;
  v8 = v6;
  v9 = handlerCopy;
  dispatch_async(queue2, v10);
}

- (void)queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:(id)name identifiers:(id)identifiers batchSize:(unint64_t)size fetcher:(id)fetcher completionBlock:(id)block
{
  nameCopy = name;
  identifiersCopy = identifiers;
  fetcherCopy = fetcher;
  blockCopy = block;
  queue = [(WFContextualActionSpotlightSyncService *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = _os_activity_create(&dword_23103C000, "contextual actions indexing stage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke;
  block[3] = &unk_2788FF638;
  v24 = nameCopy;
  selfCopy = self;
  v28 = fetcherCopy;
  v29 = blockCopy;
  v26 = v17;
  v27 = identifiersCopy;
  sizeCopy = size;
  v18 = identifiersCopy;
  v19 = blockCopy;
  v20 = v17;
  v21 = fetcherCopy;
  v22 = nameCopy;
  os_activity_apply(v20, block);
}

void __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v17 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s New indexing stage: Indexing %@ contextual actions", buf, 0x16u);
  }

  v4 = *(a1 + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_242;
  v11[3] = &unk_2788FF610;
  v10 = *(a1 + 40);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 32);
  v14 = *(a1 + 72);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v15 = *(a1 + 80);
  (*(v4 + 16))(v4, v11);

  v9 = *MEMORY[0x277D85DE8];
}

void __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_242(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 40), &state);
  if (v6)
  {
    v8 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      *buf = 136315650;
      v32 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke";
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Couldn't get %@ contextual actions, let's not touch existing indexed ones: %@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = [v5 count];
    v11 = MEMORY[0x277CBEB98];
    v12 = [v5 if_map:&__block_literal_global_5506];
    v13 = [v11 setWithArray:v12];

    v14 = MEMORY[0x277CC3498];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_2_257;
    v23[3] = &unk_2788FF5E8;
    v15 = *(a1 + 56);
    v27 = *(a1 + 64);
    v16 = *(a1 + 56);
    v22 = *(a1 + 32);
    v17 = v22.i64[1];
    v28 = v10;
    v18.i64[0] = *(a1 + 48);
    v18.i64[1] = v16;
    v24 = vextq_s8(v18, v22, 8uLL);
    v25 = vextq_s8(v22, v18, 8uLL);
    v19 = v5;
    v20 = *(a1 + 72);
    v26 = v19;
    v29 = v20;
    [v14 performDiffOfIdentifiers:v13 inDomains:v15 withItemFetcher:&__block_literal_global_249 completionBlock:v23];
  }

  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x277D85DE8];
}

void __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_2_257(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = getWFSpotlightSyncLogObject();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke_2";
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Search query returned error: %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 count];
      v13 = *(a1 + 32);
      *buf = 136315650;
      v33 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke";
      v34 = 2048;
      v35 = v12;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Deleting %lu contextual actions from domains %@", buf, 0x20u);
    }

    v14 = [*(a1 + 40) index];
    v15 = [v8 allObjects];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_258;
    v24[3] = &unk_2788FF5C0;
    v23 = *(a1 + 40);
    v16 = *(&v23 + 1);
    v17 = *(a1 + 32);
    v30 = *(a1 + 80);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    v25 = v23;
    v26 = v19;
    v29 = *(a1 + 72);
    v20 = *(a1 + 64);
    v21 = *(a1 + 88);
    v27 = v20;
    v31 = v21;
    v28 = v7;
    [v14 deleteSearchableItemsWithIdentifiers:v15 completionHandler:v24];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CC34A0];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  v20[0] = *MEMORY[0x277D7A338];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v7 setBundleIDs:v8];

  [v7 setFetchAttributes:&unk_2845ED1A0];
  v9 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v6 queryContext:v7];

  v10 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_3;
  v18[3] = &unk_2788FF520;
  v11 = v10;
  v19 = v11;
  [v9 setFoundItemsHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_256;
  v15[3] = &unk_2788FF4B8;
  v16 = v11;
  v17 = v4;
  v12 = v11;
  v13 = v4;
  [v9 setCompletionHandler:v15];
  [v9 start];

  v14 = *MEMORY[0x277D85DE8];
}

void __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke_3";
    v20 = 2048;
    v21 = [v3 count];
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEBUG, "%s Found %lu matching items in the index", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 32);
        v11 = [*(*(&v13 + 1) + 8 * v9) uniqueIdentifier];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_258(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_2_259;
  v12[3] = &unk_2788FF598;
  v13 = *(a1 + 40);
  v14 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v15 = v5;
  v21 = v6;
  v16 = *(a1 + 56);
  v7 = *(a1 + 80);
  v8 = *(a1 + 32);
  v20 = v7;
  v17 = v8;
  v9 = *(a1 + 64);
  v10 = *(a1 + 96);
  v18 = v9;
  v22 = v10;
  v19 = *(a1 + 72);
  v11 = v3;
  dispatch_async(v4, v12);
}

void __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_2_259(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (*(a1 + 40))
  {
    v2 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 96);
      v5 = *(a1 + 48);
      v4 = *(a1 + 56);
      v6 = *(a1 + 40);
      *buf = 136316162;
      v28 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke_2";
      v29 = 2112;
      v30 = v5;
      v31 = 2048;
      v32 = v3;
      v33 = 2112;
      v34 = v4;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_ERROR, "%s Couldn't wipe domains %@ -- not indexing the fetched %lu %@ contextual actions, let's try again later: %@", buf, 0x34u);
    }

    v7 = *(a1 + 40);
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v8 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v9 = *(a1 + 56);
      *buf = 136315650;
      v28 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke";
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Deleted necessary %@ contextual actions from domains %@, indexing the new ones...", buf, 0x20u);
    }

    v11 = [*(a1 + 64) index];
    v12 = *(a1 + 104);
    v14 = *(a1 + 72);
    v13 = *(a1 + 80);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_260;
    v20[3] = &unk_2788FF570;
    v15 = *(a1 + 32);
    v16 = *(a1 + 96);
    v21 = v15;
    v25 = v16;
    v19 = *(a1 + 56);
    v17 = v19.i64[0];
    v22 = vextq_s8(v19, v19, 8uLL);
    v23 = *(a1 + 48);
    v24 = *(a1 + 88);
    [v11 indexSearchableItems:v14 withBatchSize:v12 updatedIdentifiers:v13 completionBlock:v20];
  }

  os_activity_scope_leave(&state);
  v18 = *MEMORY[0x277D85DE8];
}

void __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_260(uint64_t a1, void *a2)
{
  v3 = a2;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v4 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_2_261;
  block[3] = &unk_2788FF548;
  v5 = *(a1 + 72);
  v8 = v3;
  v12 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v6 = v3;
  dispatch_async(v4, block);

  os_activity_scope_leave(&state);
}

uint64_t __146__WFContextualActionSpotlightSyncService_queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName_identifiers_batchSize_fetcher_completionBlock___block_invoke_2_261(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = getWFSpotlightSyncLogObject();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v5 = a1[8];
      v7 = a1[5];
      v6 = a1[6];
      v8 = a1[4];
      v16 = 136316162;
      v17 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke_2";
      v18 = 2048;
      v19 = v5;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_FAULT, "%s Failed to index %lu %@ contextual actions from domains %@: %@", &v16, 0x34u);
    }

    v9 = a1[4];
    v10 = *(a1[7] + 16);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[8];
      v12 = a1[5];
      v13 = [v12 capitalizedString];
      v16 = 136315906;
      v17 = "[WFContextualActionSpotlightSyncService queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:identifiers:batchSize:fetcher:completionBlock:]_block_invoke";
      v18 = 2048;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s Successfully indexed %lu %@ contextual actions. %@ contextual actions are in good shape!", &v16, 0x2Au);
    }

    v10 = *(a1[7] + 16);
  }

  result = v10();
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)reindexAllSearchableItemsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[WFContextualActionSpotlightSyncService reindexAllSearchableItemsWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Triggering full wipe and reindex of all items", buf, 0xCu);
  }

  index = [(WFContextualActionSpotlightSyncService *)self index];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__WFContextualActionSpotlightSyncService_reindexAllSearchableItemsWithCompletion___block_invoke;
  v9[3] = &unk_2788FF4B8;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  [index deleteAllSearchableItemsWithCompletionHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __82__WFContextualActionSpotlightSyncService_reindexAllSearchableItemsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[WFContextualActionSpotlightSyncService reindexAllSearchableItemsWithCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Unable to wipe index: %@", &v7, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    [*(a1 + 32) reindexSearchableItems:63 appShortcutBundleIdentifiers:0 completion:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)reindexSearchableItems:(unint64_t)items appShortcutBundleIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  queue = [(WFContextualActionSpotlightSyncService *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke;
  v13[3] = &unk_2788FF490;
  v13[4] = self;
  v14 = identifiersCopy;
  v15 = completionCopy;
  itemsCopy = items;
  v11 = completionCopy;
  v12 = identifiersCopy;
  dispatch_async(queue, v13);
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_23103C000, "spotlight indexing", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v3 = os_transaction_create();
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_2;
  v8[3] = &unk_2788FF570;
  v14 = *(a1 + 56);
  v9 = v2;
  v10 = v4;
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12 = v3;
  v13 = v5;
  v6 = v3;
  v7 = v2;
  [v4 queue_wipeIndexIfNotMigratedToNewDomainIdentifiersWithCompletionHandler:v8];
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (v3)
  {
    v4 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v63 = "[WFContextualActionSpotlightSyncService reindexSearchableItems:appShortcutBundleIdentifiers:completion:]_block_invoke_2";
      v64 = 2112;
      v65 = v3;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Error wiping Spotlight index. Not going to continue indexing new ones in, we'll try again later: %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    v6 = dispatch_group_create();
    v4 = v6;
    v7 = *(a1 + 72);
    if (v7)
    {
      dispatch_group_enter(v6);
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x277D79E90] spotlightDomainIdentifierForBundleIdentifier:0];
      v61 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_198;
      v55[3] = &unk_2788FF3F0;
      v55[4] = *(a1 + 40);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_2_200;
      v52[3] = &unk_2788FF418;
      v53 = v4;
      v54 = v5;
      [v8 queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:@"static" identifiers:v10 batchSize:-1 fetcher:v55 completionBlock:v52];

      v7 = *(a1 + 72);
    }

    if ((v7 & 2) != 0)
    {
      dispatch_group_enter(v4);
      v11 = *(a1 + 40);
      v12 = [MEMORY[0x277D7A188] spotlightDomainIdentifierForBundleIdentifier:0];
      v60 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_4;
      v51[3] = &unk_2788FF3F0;
      v51[4] = *(a1 + 40);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_5;
      v48[3] = &unk_2788FF418;
      v49 = v4;
      v50 = v5;
      [v11 queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:@"focus" identifiers:v13 batchSize:-1 fetcher:v51 completionBlock:v48];

      v7 = *(a1 + 72);
    }

    if ((v7 & 8) != 0)
    {
      dispatch_group_enter(v4);
      v14 = *(a1 + 40);
      v15 = [MEMORY[0x277D7A198] spotlightDomainIdentifierForBundleIdentifier:0];
      v59 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_7;
      v47[3] = &unk_2788FF3F0;
      v47[4] = *(a1 + 40);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_8;
      v44[3] = &unk_2788FF418;
      v45 = v4;
      v46 = v5;
      [v14 queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:@"settings toggles" identifiers:v16 batchSize:-1 fetcher:v47 completionBlock:v44];

      v7 = *(a1 + 72);
    }

    if ((v7 & 0x10) != 0)
    {
      dispatch_group_enter(v4);
      v17 = *(a1 + 40);
      v18 = [MEMORY[0x277D7A180] spotlightDomainIdentifierForBundleIdentifier:0];
      v58 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_10;
      v43[3] = &unk_2788FF3F0;
      v43[4] = *(a1 + 40);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_11;
      v40[3] = &unk_2788FF418;
      v41 = v4;
      v42 = v5;
      [v17 queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:@"alarm toggles" identifiers:v19 batchSize:-1 fetcher:v43 completionBlock:v40];

      v7 = *(a1 + 72);
    }

    if ((v7 & 4) != 0)
    {
      dispatch_group_enter(v4);
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_13;
      v37[3] = &unk_2788FF418;
      v38 = v4;
      v39 = v5;
      [v20 indexAppShortcutsForBundleIdentifiers:v21 completionHandler:v37];

      v7 = *(a1 + 72);
    }

    if ((v7 & 0x20) != 0)
    {
      dispatch_group_enter(v4);
      v22 = *(a1 + 40);
      v23 = [_TtC14VoiceShortcuts27WFAppEntityContextualAction spotlightDomainIdentifierForEntityType:0];
      v57 = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_15;
      v36[3] = &unk_2788FF3F0;
      v36[4] = *(a1 + 40);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_16;
      v33[3] = &unk_2788FF418;
      v34 = v4;
      v35 = v5;
      [v22 queue_fetchWipeAndIndexActionsInDomainWithDescriptiveName:@"folder app entities" identifiers:v24 batchSize:-1 fetcher:v36 completionBlock:v33];
    }

    v25 = [*(a1 + 40) queue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_18;
    v28[3] = &unk_2788FF468;
    v29 = *(a1 + 32);
    v30 = v5;
    v32 = *(a1 + 64);
    v31 = *(a1 + 56);
    v26 = v5;
    dispatch_group_notify(v4, v25, v28);
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_2_200(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_3;
  aBlock[3] = &unk_278900148;
  v6 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:@"Static actions"];
  }

  v4[2](v4);
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_6;
  aBlock[3] = &unk_278900148;
  v6 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:@"Focus actions"];
  }

  v4[2](v4);
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_9;
  aBlock[3] = &unk_278900148;
  v6 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:@"Toggle settings actions"];
  }

  v4[2](v4);
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_12;
  aBlock[3] = &unk_278900148;
  v6 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:@"Toggle alarm actions"];
  }

  v4[2](v4);
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_14;
  aBlock[3] = &unk_278900148;
  v6 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:@"App shortcuts actions"];
  }

  v4[2](v4);
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_17;
  aBlock[3] = &unk_278900148;
  v6 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:@"App Entities"];
  }

  v4[2](v4);
}

void __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_18(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = [*(a1 + 40) count];
  v3 = [*(a1 + 40) allKeys];
  if (v2)
  {
    v4 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 componentsJoinedByString:{@", "}];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __105__WFContextualActionSpotlightSyncService_reindexSearchableItems_appShortcutBundleIdentifiers_completion___block_invoke_2_240;
      v10[3] = &unk_2788FF440;
      v11 = *(a1 + 40);
      v6 = [v3 if_map:v10];
      *buf = 136315650;
      v14 = "[WFContextualActionSpotlightSyncService reindexSearchableItems:appShortcutBundleIdentifiers:completion:]_block_invoke";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Contextual action indexing finished. Index is UNHEALTHY. Unhealthy stages: %@, indexing errors: %@", buf, 0x20u);
    }
  }

  else
  {
    v7 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[WFContextualActionSpotlightSyncService reindexSearchableItems:appShortcutBundleIdentifiers:completion:]_block_invoke_18";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Contextual action indexing finished. Index is HEALTHY.", buf, 0xCu);
    }

    v4 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
    [v4 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D7CF98]];
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, v2 == 0);
  }

  os_activity_scope_leave(&state);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)reindexAllSearchableItemsIfNeeded:(BOOL)needed completion:(id)completion
{
  neededCopy = needed;
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = +[WFContextualActionSpotlightSyncService contextualActionsIndexVersion];
  v8 = getWFSpotlightSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[WFContextualActionSpotlightSyncService reindexAllSearchableItemsIfNeeded:completion:]";
    v17 = 2050;
    v18 = v7;
    v19 = 2048;
    v20 = 31;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Checking if contextual actions index needs to be updated. Index version is: %{public}ld, needed index version is: %ld", buf, 0x20u);
  }

  v9 = getWFSpotlightSyncLogObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7 != 31 || neededCopy)
  {
    if (neededCopy)
    {
      if (v10)
      {
        *buf = 136315138;
        v16 = "[WFContextualActionSpotlightSyncService reindexAllSearchableItemsIfNeeded:completion:]";
        v11 = "%s Forcing re-index";
LABEL_14:
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    else if (v10)
    {
      *buf = 136315138;
      v16 = "[WFContextualActionSpotlightSyncService reindexAllSearchableItemsIfNeeded:completion:]";
      v11 = "%s Current index version is lower than the needed index version. Beginning re-index";
      goto LABEL_14;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__WFContextualActionSpotlightSyncService_reindexAllSearchableItemsIfNeeded_completion___block_invoke;
    v13[3] = &unk_2788FF3C8;
    v14 = completionCopy;
    [(WFContextualActionSpotlightSyncService *)self reindexAllSearchableItemsWithCompletion:v13];

    goto LABEL_16;
  }

  if (v10)
  {
    *buf = 136315138;
    v16 = "[WFContextualActionSpotlightSyncService reindexAllSearchableItemsIfNeeded:completion:]";
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Contextual actions index doesn't need to be updated", buf, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __87__WFContextualActionSpotlightSyncService_reindexAllSearchableItemsIfNeeded_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [WFContextualActionSpotlightSyncService setContextualActionsIndexVersion:31];
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[WFContextualActionSpotlightSyncService didCompleteAppShortcutDomainMigration];
  v6 = getWFSpotlightSyncLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 136315138;
      v16 = "[WFContextualActionSpotlightSyncService migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion:]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s App Shortcuts domain don't need migration, skipping", buf, 0xCu);
    }

    [(WFContextualActionSpotlightSyncService *)self reindexAllSearchableItemsIfNeeded:0 completion:completionCopy];
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v16 = "[WFContextualActionSpotlightSyncService migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion:]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s App Shortcuts need migration, wiping existing App Shortcuts", buf, 0xCu);
    }

    index = [(WFContextualActionSpotlightSyncService *)self index];
    legacySpotlightDomainIdentifier = [MEMORY[0x277D79DF0] legacySpotlightDomainIdentifier];
    v14 = legacySpotlightDomainIdentifier;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __102__WFContextualActionSpotlightSyncService_migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion___block_invoke;
    v12[3] = &unk_2788FF4B8;
    v12[4] = self;
    v13 = completionCopy;
    [index deleteSearchableItemsWithDomainIdentifiers:v10 completionHandler:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __102__WFContextualActionSpotlightSyncService_migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFSpotlightSyncLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[WFContextualActionSpotlightSyncService migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Error deleting legacy App Shortcuts domain: %@", &v7, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[WFContextualActionSpotlightSyncService migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Marking App Shortcut migration complete", &v7, 0xCu);
    }

    +[WFContextualActionSpotlightSyncService setDidCompleteAppShortcutDomainMigration];
  }

  [*(a1 + 32) reindexAllSearchableItemsIfNeeded:1 completion:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  sharedActivityManager = [getFCActivityManagerClass() sharedActivityManager];
  [sharedActivityManager removeObserver:self];

  alarmDataSource = [(WFContextualActionSpotlightSyncService *)self alarmDataSource];

  if (alarmDataSource)
  {
    alarmDataSource2 = [(WFContextualActionSpotlightSyncService *)self alarmDataSource];
    [alarmDataSource2 unregisterObserver:self];
  }

  v6.receiver = self;
  v6.super_class = WFContextualActionSpotlightSyncService;
  [(WFContextualActionSpotlightSyncService *)&v6 dealloc];
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedActivityManager = [getFCActivityManagerClass() sharedActivityManager];
  [sharedActivityManager addObserver:self];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v6 = getMTAlarmManagerClass_softClass;
  v22 = getMTAlarmManagerClass_softClass;
  if (!getMTAlarmManagerClass_softClass)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getMTAlarmManagerClass_block_invoke;
    v17 = &unk_2788FFE98;
    v18 = &v19;
    __getMTAlarmManagerClass_block_invoke(&v14);
    v6 = v20[3];
  }

  v7 = v6;
  _Block_object_dispose(&v19, 8);
  v8 = objc_opt_new();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v9 = getMTAlarmDataSourceClass_softClass;
  v22 = getMTAlarmDataSourceClass_softClass;
  if (!getMTAlarmDataSourceClass_softClass)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getMTAlarmDataSourceClass_block_invoke;
    v17 = &unk_2788FFE98;
    v18 = &v19;
    __getMTAlarmDataSourceClass_block_invoke(&v14);
    v9 = v20[3];
  }

  v10 = v9;
  _Block_object_dispose(&v19, 8);
  v11 = [[v9 alloc] initWithAlarmManager:v8];
  alarmDataSource = self->_alarmDataSource;
  self->_alarmDataSource = v11;

  [(MTAlarmDataSource *)self->_alarmDataSource registerObserver:self];
  reloadAlarms = [(MTAlarmDataSource *)self->_alarmDataSource reloadAlarms];
  [(WFContextualActionSpotlightSyncService *)self migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion:completionCopy];
}

- (WFContextualActionSpotlightSyncService)initWithDaemonTaskScheduler:(id)scheduler databaseProvider:(id)provider
{
  v24 = *MEMORY[0x277D85DE8];
  schedulerCopy = scheduler;
  providerCopy = provider;
  if ([MEMORY[0x277CC34A8] isIndexingAvailable])
  {
    v21.receiver = self;
    v21.super_class = WFContextualActionSpotlightSyncService;
    v9 = [(WFContextualActionSpotlightSyncService *)&v21 init];
    if (!v9)
    {
      selfCopy = 0;
      goto LABEL_8;
    }

    v10 = v9;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);

    v13 = dispatch_queue_create("com.apple.VoiceShortcuts.WFContextualActionSpotlightSyncService", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    objc_storeStrong(&v10->_daemonTaskScheduler, scheduler);
    objc_storeStrong(&v10->_databaseProvider, provider);
    v15 = objc_alloc(MEMORY[0x277CC34A8]);
    v16 = [v15 initWithName:@"voiceshortcuts-contextualaction-spotlight-index-name" bundleIdentifier:*MEMORY[0x277D7A338]];
    index = v10->_index;
    v10->_index = v16;

    [(CSSearchableIndex *)v10->_index setIndexDelegate:v10];
    self = v10;
    selfCopy = self;
  }

  else
  {
    v12 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[WFContextualActionSpotlightSyncService initWithDaemonTaskScheduler:databaseProvider:]";
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Spotlight indexing is not available.", buf, 0xCu);
    }

    selfCopy = 0;
  }

LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (void)setContextualActionsIndexVersion:(int64_t)version
{
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  [workflowUserDefaults setInteger:version forKey:@"WFContextualActionsIndexVersion"];
}

+ (int64_t)contextualActionsIndexVersion
{
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v3 = [workflowUserDefaults integerForKey:@"WFContextualActionsIndexVersion"];

  return v3;
}

+ (void)setDidCompleteAppShortcutDomainMigration
{
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  [workflowUserDefaults setBool:1 forKey:@"WFAutoShortcutContextualActionDomainMigration"];
}

+ (BOOL)didCompleteAppShortcutDomainMigration
{
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v3 = [workflowUserDefaults BOOLForKey:@"WFAutoShortcutContextualActionDomainMigration"];

  return v3;
}

@end