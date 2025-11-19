@interface UNSUserNotificationServer
+ (id)sharedInstance;
- (UNSUserNotificationServer)init;
- (id)_loadAllSystemNotificationSourceDescriptions;
- (id)_sourceDescriptionsForApplications:(id)a3;
- (id)localActionForAction:(id)a3 notification:(id)a4 bundleID:(id)a5;
- (id)localResponseForAction:(id)a3 notification:(id)a4 bundleID:(id)a5 userText:(id)a6;
- (void)_addObserverForApplicationWorkspaceChanges;
- (void)_addObserverForBackgroundRefreshApplicationChanges;
- (void)_addObserverForLocaleChanges;
- (void)_addObserverForSignificantTimeChanges;
- (void)_applicationsDidInstall:(id)a3;
- (void)_buildForegroundAction:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)_didChangeProcessState:(id)a3 forBundleIdentifier:(id)a4;
- (void)_installedSourceQueue_notificationSourcesDidInstall:(id)a3;
- (void)_installedSourceQueue_notificationSourcesDidUninstall:(id)a3;
- (void)_removeBundleLibrarianMappingsForSourceDescriptions:(id)a3;
- (void)_removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4;
- (void)_removeNotificationSourceDirectories:(id)a3;
- (void)_removePushStore;
- (void)applicationInstallsDidChange:(id)a3;
- (void)applicationStateDidChange:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)a3;
- (void)didChangeNotificationSettings:(id)a3 forBundleIdentifier:(id)a4;
- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4;
- (void)initialSystemNotificationSourcesDidInstall:(id)a3 applicationsDidInstall:(id)a4;
- (void)notificationRepositoryDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)a3;
- (void)notificationRepositoryDidPerformUpdates:(id)a3 forBundleIdentifier:(id)a4;
- (void)performAction:(id)a3 forNotification:(id)a4 inApp:(id)a5 withUserText:(id)a6;
@end

@implementation UNSUserNotificationServer

void __33__UNSUserNotificationServer_init__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 state];

  v9 = [v7 bundle];

  v10 = [v9 identifier];
  [WeakRetained _didChangeProcessState:v8 forBundleIdentifier:v10];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UNSUserNotificationServer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __43__UNSUserNotificationServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(UNSUserNotificationServer);
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (UNSUserNotificationServer)init
{
  v153 = *MEMORY[0x277D85DE8];
  v150.receiver = self;
  v150.super_class = UNSUserNotificationServer;
  val = [(UNSUserNotificationServer *)&v150 init];
  if (val)
  {
    [(UNSUserNotificationServer *)val _registerLoggers];
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("com.apple.usernotificationsserver.SourceInstallation", v2);
    installedSourceQueue = val->_installedSourceQueue;
    val->_installedSourceQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277D77D10]);
    contentProtectionManager = val->_contentProtectionManager;
    val->_contentProtectionManager = v5;

    v7 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v8 = [v7 objectAtIndex:0];
    libraryDirectory = val->_libraryDirectory;
    val->_libraryDirectory = v8;

    v10 = [(NSString *)val->_libraryDirectory stringByAppendingPathComponent:@"UserNotifications"];
    directory = val->_directory;
    val->_directory = v10;

    v12 = [objc_alloc(MEMORY[0x277D77C60]) initWithDirectory:val->_directory];
    librarian = val->_librarian;
    val->_librarian = v12;

    v14 = objc_alloc_init(MEMORY[0x277D77C70]);
    localizationService = val->_localizationService;
    val->_localizationService = v14;

    v16 = objc_alloc_init(MEMORY[0x277D77F50]);
    communicationContextService = val->_communicationContextService;
    val->_communicationContextService = v16;

    v18 = objc_alloc_init(UNSBadgeService);
    badgeService = val->_badgeService;
    val->_badgeService = v18;

    v20 = objc_alloc(MEMORY[0x277D77CD0]);
    v21 = val->_directory;
    v22 = val->_librarian;
    v23 = [(UNSContentProtectionManager *)val->_contentProtectionManager classDStrategy];
    v24 = [v20 initWithDirectory:v21 librarian:v22 repositoryProtectionStrategy:v23];
    topicRepository = val->_topicRepository;
    val->_topicRepository = v24;

    if (UNCRemoteServicesNeeded())
    {
      v26 = objc_alloc_init(MEMORY[0x277D77C88]);
      coreServiceClient = val->_coreServiceClient;
      val->_coreServiceClient = v26;

      [(UNCNotificationCoreServiceClient *)val->_coreServiceClient setDelegate:val];
    }

    if (UNCDaemonEnabled())
    {
      v28 = [objc_alloc(MEMORY[0x277D77D38]) initWithServiceClient:val->_coreServiceClient];
      categoryRepository = val->_categoryRepository;
      val->_categoryRepository = v28;

      v30 = [objc_alloc(MEMORY[0x277D77CF0]) initWithServiceClient:val->_coreServiceClient];
      notificationRepository = val->_notificationRepository;
      val->_notificationRepository = v30;
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277D77D18]);
      v33 = val->_librarian;
      v34 = val->_directory;
      v35 = [(UNSContentProtectionManager *)val->_contentProtectionManager classDStrategy];
      v36 = [v32 initWithDirectory:v34 librarian:v33 repositoryProtectionStrategy:v35];
      v37 = val->_categoryRepository;
      val->_categoryRepository = v36;

      v38 = objc_alloc(MEMORY[0x277D77C68]);
      v39 = val->_directory;
      v40 = val->_librarian;
      v41 = [(UNSContentProtectionManager *)val->_contentProtectionManager classCStrategyExcludedFromBackup];
      v42 = [v38 initWithDirectory:v39 librarian:v40 repositoryProtectionStrategy:v41 categoryRepository:val->_categoryRepository badgeService:val->_badgeService];
      v43 = val->_notificationRepository;
      val->_notificationRepository = v42;

      if (UNCRemoteServicesNeeded())
      {
        v44 = *MEMORY[0x277D77D40];
        [(UNCNotificationRepository *)val->_notificationRepository addObserver:val->_coreServiceClient forBundleIdentifier:*MEMORY[0x277D77D40]];
        [(UNSNotificationCategoryRepository *)val->_categoryRepository addObserver:val->_coreServiceClient forBundleIdentifier:v44];
      }
    }

    v45 = objc_alloc_init(UNSSummaryServiceAdapter);
    summaryService = val->_summaryService;
    val->_summaryService = v45;

    v47 = objc_alloc(MEMORY[0x277D77CE0]);
    v48 = val->_librarian;
    v49 = val->_directory;
    v50 = [(UNSContentProtectionManager *)val->_contentProtectionManager classDStrategy];
    v51 = [v47 initWithDirectory:v49 librarian:v48 repositoryProtectionStrategy:v50];
    pendingNotificationRepository = val->_pendingNotificationRepository;
    val->_pendingNotificationRepository = v51;

    v53 = [objc_alloc(MEMORY[0x277D77CE8]) initWithDirectory:val->_directory librarian:val->_librarian];
    pushRegistrationRepository = val->_pushRegistrationRepository;
    val->_pushRegistrationRepository = v53;

    v55 = [objc_alloc(MEMORY[0x277D77CA0]) initWithDirectory:val->_directory librarian:val->_librarian];
    notificationScheduleRepository = val->_notificationScheduleRepository;
    val->_notificationScheduleRepository = v55;

    v57 = [objc_alloc(MEMORY[0x277D77C58]) initWithDirectory:val->_directory librarian:val->_librarian];
    attachmentsRepository = val->_attachmentsRepository;
    val->_attachmentsRepository = v57;

    v59 = objc_alloc_init(MEMORY[0x277D77C78]);
    locationMonitor = val->_locationMonitor;
    val->_locationMonitor = v59;

    v61 = [objc_alloc(MEMORY[0x277D77CA8]) initWithNotificationRepository:val->_notificationRepository pendingNotificationRepository:val->_pendingNotificationRepository notificationScheduleRepository:val->_notificationScheduleRepository locationMonitor:val->_locationMonitor];
    notificationSchedulingService = val->_notificationSchedulingService;
    val->_notificationSchedulingService = v61;

    v63 = [[UNSAttachmentsService alloc] initWithAttachmentsRepository:val->_attachmentsRepository notificationRepository:val->_notificationRepository notificationSchedulingService:val->_notificationSchedulingService pendingNotificationRepository:val->_pendingNotificationRepository];
    attachmentsService = val->_attachmentsService;
    val->_attachmentsService = v63;

    v65 = [[UNSApplicationLauncher alloc] initWithLocationMonitor:val->_locationMonitor];
    applicationLauncher = val->_applicationLauncher;
    val->_applicationLauncher = v65;

    v67 = objc_alloc_init(UNSDaemonLauncher);
    daemonLauncher = val->_daemonLauncher;
    val->_daemonLauncher = v67;

    v69 = objc_alloc_init(UNSSettingsGateway);
    settingsGateway = val->_settingsGateway;
    val->_settingsGateway = v69;

    v71 = [UNSDefaultDataProviderFactory alloc];
    v72 = val->_summaryService;
    v73 = [(UNSDefaultDataProviderFactory *)v71 initWithApplicationLauncher:val->_applicationLauncher daemonLauncher:val->_daemonLauncher categoryRepository:val->_categoryRepository notificationRepository:val->_notificationRepository attachmentsService:val->_attachmentsService topicRepository:val->_topicRepository localizationService:val->_localizationService summaryService:v72 settingsGateway:val->_settingsGateway];
    dataProviderFactory = val->_dataProviderFactory;
    val->_dataProviderFactory = v73;

    v75 = [[UNSNotificationSettingsService alloc] initWithSettingsGateway:val->_settingsGateway];
    notificationSettingsService = val->_notificationSettingsService;
    val->_notificationSettingsService = v75;

    v77 = [[UNSNotificationAuthorizationService alloc] initWithDataProviderFactory:val->_dataProviderFactory settingsService:val->_notificationSettingsService localizationService:val->_localizationService];
    notificationAuthorizationService = val->_notificationAuthorizationService;
    val->_notificationAuthorizationService = v77;

    v79 = [[UNSApplicationService alloc] initWithApplicationLauncher:val->_applicationLauncher categoryRepository:val->_categoryRepository localizationService:val->_localizationService];
    applicationService = val->_applicationService;
    val->_applicationService = v79;

    if ((UNCDaemonEnabled() & 1) == 0)
    {
      [(UNCNotificationRepository *)val->_notificationRepository setSettingsProvider:val->_notificationSettingsService];
    }

    v81 = objc_alloc(MEMORY[0x277D77CF8]);
    v82 = val->_notificationRepository;
    v83 = val->_attachmentsService;
    v84 = val->_pushRegistrationRepository;
    v85 = [MEMORY[0x277CF0CA8] sharedInstance];
    v86 = [v81 initWithNotificationRepository:v82 attachmentsService:v83 pushRegistrationRepository:v84 platform:v85];
    remoteNotificationService = val->_remoteNotificationService;
    val->_remoteNotificationService = v86;

    v88 = [[UNSUserNotificationServerRemoteNotificationConnectionListener alloc] initWithRemoteNotificationService:val->_remoteNotificationService];
    userNotificationServerRemoteNotificationConnectionListener = val->_userNotificationServerRemoteNotificationConnectionListener;
    val->_userNotificationServerRemoteNotificationConnectionListener = v88;

    v90 = [[UNSUserNotificationServerConnectionListener alloc] initWithCategoryRepository:val->_categoryRepository notificationSchedulingService:val->_notificationSchedulingService notificationAuthorizationService:val->_notificationAuthorizationService notificationSettingsService:val->_notificationSettingsService notificationRepository:val->_notificationRepository remoteNotificationConnectionListener:val->_userNotificationServerRemoteNotificationConnectionListener remoteNotificationService:val->_remoteNotificationService applicationLauncher:val->_applicationLauncher attachmentsService:val->_attachmentsService locationMonitor:val->_locationMonitor topicRepository:val->_topicRepository localizationService:val->_localizationService communicationContextService:val->_communicationContextService];
    userNotificationServerConnectionListener = val->_userNotificationServerConnectionListener;
    val->_userNotificationServerConnectionListener = v90;

    v92 = [[UNSUserNotificationServerSettingsConnectionListener alloc] initWithNotificationSettingsService:val->_notificationSettingsService];
    userNotificationServerSettingsConnectionListener = val->_userNotificationServerSettingsConnectionListener;
    val->_userNotificationServerSettingsConnectionListener = v92;

    if (UNCRemoteServicesNeeded())
    {
      v94 = [objc_alloc(MEMORY[0x277D77CC0]) initWithDelegate:val];
      systemServiceListener = val->_systemServiceListener;
      val->_systemServiceListener = v94;

      [(UNCNotificationSystemServiceListener *)val->_systemServiceListener activate];
    }

    v96 = [MEMORY[0x277CBEB58] set];
    v97 = [MEMORY[0x277CBEB58] set];
    [(UNSUserNotificationServer *)val _loadAllSystemNotificationSourceDescriptions];
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v98 = v147 = 0u;
    v99 = [v98 countByEnumeratingWithState:&v146 objects:v152 count:16];
    if (v99)
    {
      v100 = *v147;
      do
      {
        for (i = 0; i != v99; ++i)
        {
          if (*v147 != v100)
          {
            objc_enumerationMutation(v98);
          }

          v102 = [*(*(&v146 + 1) + 8 * i) bundleIdentifier];
          [v96 addObject:v102];
          [v97 addObject:v102];
        }

        v99 = [v98 countByEnumeratingWithState:&v146 objects:v152 count:16];
      }

      while (v99);
    }

    v103 = [v96 copy];
    systemSourceBundleIdentifiers = val->_systemSourceBundleIdentifiers;
    val->_systemSourceBundleIdentifiers = v103;

    v105 = val->_librarian;
    v106 = [(NSString *)val->_libraryDirectory stringByAppendingPathComponent:@"UserNotificationsServer"];
    [(UNCBundleLibrarian *)v105 migrateLibraryFromDirectory:v106 toDirectory:val->_directory];

    v107 = [MEMORY[0x277CBEB18] array];
    v108 = MEMORY[0x277CC1E70];
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = __33__UNSUserNotificationServer_init__block_invoke;
    v143[3] = &unk_279E10778;
    v130 = v107;
    v144 = v130;
    v131 = v97;
    v145 = v131;
    [v108 unc_enumerateApplicationRecordsEligibleToDeliverNotifications:v143];
    v109 = val->_librarian;
    v110 = [v131 copy];
    [(UNCBundleLibrarian *)v109 bootstrapLibraryForBundleIdentifiers:v110];

    if (UNIsInternalInstall())
    {
      v129 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.usernotifications"];
      if (([v129 BOOLForKey:@"UNNotificationObliterateForRadar150366881"] & 1) == 0)
      {
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v111 = v131;
        v112 = [v111 countByEnumeratingWithState:&v139 objects:v151 count:16];
        if (v112)
        {
          v113 = *v140;
          do
          {
            for (j = 0; j != v112; ++j)
            {
              if (*v140 != v113)
              {
                objc_enumerationMutation(v111);
              }

              v115 = *(*(&v139 + 1) + 8 * j);
              [(UNCNotificationRepository *)val->_notificationRepository removeStoreForBundleIdentifier:v115];
              objc_opt_class();
              v116 = val->_notificationRepository;
              v117 = UNSafeCast();
              [v117 _removeStoreForBundleIdentifier:v115 overridePathExtension:@"uncplist"];

              [(UNCPendingNotificationRepository *)val->_pendingNotificationRepository removeStoreForBundleIdentifier:v115];
            }

            v112 = [v111 countByEnumeratingWithState:&v139 objects:v151 count:16];
          }

          while (v112);
        }

        [v129 setBool:1 forKey:@"UNNotificationObliterateForRadar150366881"];
      }
    }

    if ((UNCDaemonEnabled() & 1) == 0)
    {
      [(UNSUserNotificationServer *)val _migrateNotificationRepository];
    }

    [(UNSUserNotificationServer *)val _migrateAttachments];
    [(UNSUserNotificationServer *)val _removePushStore];
    if ((UNCDaemonEnabled() & 1) == 0)
    {
      [(UNSUserNotificationServer *)val _validateNotificationRepository];
    }

    objc_initWeak(&location, val);
    v118 = MEMORY[0x277D46F80];
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = __33__UNSUserNotificationServer_init__block_invoke_2;
    v136[3] = &unk_279E107C8;
    objc_copyWeak(&v137, &location);
    v119 = [v118 monitorWithConfiguration:v136];
    processMonitor = val->_processMonitor;
    val->_processMonitor = v119;

    [(UNSUserNotificationServer *)val _addObserverForApplicationStateRestore];
    [(UNSUserNotificationServer *)val _addObserverForApplicationWorkspaceChanges];
    [(UNSUserNotificationServer *)val _addObserverForBackgroundRefreshApplicationChanges];
    [(UNSUserNotificationServer *)val _addObserverForContentProtectionChanges];
    [(UNSUserNotificationServer *)val _addObserverForDataProviderFactoryChanges];
    [(UNSUserNotificationServer *)val _addObserverForLocaleChanges];
    [(UNSUserNotificationServer *)val _addObserverForRemoteNotificationServiceChanges];
    [(UNSUserNotificationServer *)val _addObserverForSignificantTimeChanges];
    [(UNSUserNotificationServer *)val initialSystemNotificationSourcesDidInstall:v98 applicationsDidInstall:v130];
    if ((UNCDaemonEnabled() & 1) == 0)
    {
      [(UNCNotificationRepository *)val->_notificationRepository setDelegate:?];
    }

    v121 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__UNSUserNotificationServer_init__block_invoke_4;
    block[3] = &unk_279E104B8;
    v122 = val;
    v134 = v122;
    v123 = v131;
    v135 = v123;
    dispatch_async(v121, block);

    if ([(UNSContentProtectionManager *)val->_contentProtectionManager deviceUnlockedSinceBoot])
    {
      [v122 _ensureAttachmentsIntegrity];
    }

    [(UNSUserNotificationServerConnectionListener *)val->_userNotificationServerConnectionListener resume];
    [(UNSUserNotificationServerRemoteNotificationConnectionListener *)val->_userNotificationServerRemoteNotificationConnectionListener resume];
    [(UNSUserNotificationServerSettingsConnectionListener *)val->_userNotificationServerSettingsConnectionListener resume];
    v124 = objc_opt_new();
    v125 = v122[35];
    v122[35] = v124;

    [v122[35] setDelegate:v122];
    v126 = [MEMORY[0x277D77CD8] sharedInstance];
    UNSExampleUserNotificationCenterRegister();
    [MEMORY[0x277D77E88] applyToSettingsIfNecessary];

    objc_destroyWeak(&v137);
    objc_destroyWeak(&location);
  }

  v127 = *MEMORY[0x277D85DE8];
  return val;
}

void __33__UNSUserNotificationServer_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 compatibilityObject];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 bundleIdentifier];

  [v6 addObject:v7];
}

void __33__UNSUserNotificationServer_init__block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D46FB0] descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&unk_28809BCF8];
  [v3 setStateDescriptor:v4];
  v5 = [MEMORY[0x277D46FA0] predicateMatchingProcessTypeApplication];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v3 setPredicates:v6];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__UNSUserNotificationServer_init__block_invoke_3;
  v8[3] = &unk_279E107A0;
  objc_copyWeak(&v9, (a1 + 32));
  [v3 setUpdateHandler:v8];
  objc_destroyWeak(&v9);

  v7 = *MEMORY[0x277D85DE8];
}

void __33__UNSUserNotificationServer_init__block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 144) notificationSourcesForBundleIdentifiers:*(a1 + 40)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 sourceSettings];
        v9 = [v8 notificationSettings];
        if ([v9 hasEnabledSettings])
        {
          v10 = [v7 sourceIdentifier];
          [*(a1 + 32) didChangeNotificationSettings:v9 forBundleIdentifier:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 168) didCompleteInitialization];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_loadAllSystemNotificationSourceDescriptions
{
  v2 = [MEMORY[0x277D77CB8] systemSourceDirectoryURLs];
  v3 = [v2 bs_mapNoNulls:&__block_literal_global_69];
  v4 = [v3 bs_flatten];
  v5 = [v4 bs_filter:&__block_literal_global_73];
  v6 = [v5 bs_mapNoNulls:&__block_literal_global_75];

  return v6;
}

id __73__UNSUserNotificationServer__loadAllSystemNotificationSourceDescriptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:0];

  return v5;
}

uint64_t __73__UNSUserNotificationServer__loadAllSystemNotificationSourceDescriptions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [MEMORY[0x277D77CB8] systemSourcePathExtension];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)initialSystemNotificationSourcesDidInstall:(id)a3 applicationsDidInstall:(id)a4
{
  v6 = a3;
  v7 = a4;
  installedSourceQueue = self->_installedSourceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__UNSUserNotificationServer_initialSystemNotificationSourcesDidInstall_applicationsDidInstall___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(installedSourceQueue, block);
}

void __95__UNSUserNotificationServer_initialSystemNotificationSourcesDidInstall_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _sourceDescriptionsForApplications:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) arrayByAddingObjectsFromArray:v4];
  [v2 _installedSourceQueue_notificationSourcesDidInstall:v3];
}

- (void)applicationInstallsDidChange:(id)a3
{
  v4 = a3;
  installedSourceQueue = self->_installedSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__UNSUserNotificationServer_applicationInstallsDidChange___block_invoke;
  v7[3] = &unk_279E104B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(installedSourceQueue, v7);
}

void __58__UNSUserNotificationServer_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 correspondingApplicationRecord];
        v10 = v9;
        if (v9 && [v9 isWebApp])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    [*(a1 + 40) _applicationsDidInstall:v2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  installedSourceQueue = self->_installedSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__UNSUserNotificationServer_applicationsDidInstall___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(installedSourceQueue, v7);
}

- (void)applicationStateDidChange:(id)a3
{
  v4 = a3;
  installedSourceQueue = self->_installedSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__UNSUserNotificationServer_applicationStateDidChange___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(installedSourceQueue, v7);
}

- (void)_applicationsDidInstall:(id)a3
{
  v4 = [(UNSUserNotificationServer *)self _sourceDescriptionsForApplications:a3];
  [(UNSUserNotificationServer *)self _installedSourceQueue_notificationSourcesDidInstall:v4];
}

- (id)_sourceDescriptionsForApplications:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__UNSUserNotificationServer__sourceDescriptionsForApplications___block_invoke;
  v5[3] = &unk_279E10830;
  v5[4] = self;
  v3 = [a3 bs_mapNoNulls:v5];

  return v3;
}

id __64__UNSUserNotificationServer__sourceDescriptionsForApplications___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 correspondingApplicationRecord];
  v7 = [v6 unc_isEligibleToDeliverNotifications];

  if (v7)
  {
    v8 = [MEMORY[0x277D77CB8] applicationSourceDescriptionWithApplication:v4];
    v9 = [v8 useDefaultDataProvider];
    if ((v9 & 1) == 0)
    {
      v2 = [v8 pushEnvironment];
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    v10 = *(*(a1 + 32) + 240);
    v11 = [v8 bundleIdentifier];
    v12 = [v10 containsObject:v11];

    if ((v9 & 1) == 0)
    {
    }

    if ((v12 & 1) == 0)
    {
      v13 = v8;
    }

    else
    {
LABEL_7:
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v13;
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  installedSourceQueue = self->_installedSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UNSUserNotificationServer_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_279E104B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(installedSourceQueue, v7);
}

void __54__UNSUserNotificationServer_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__UNSUserNotificationServer_applicationsDidUninstall___block_invoke_2;
  v4[3] = &unk_279E10830;
  v4[4] = *(a1 + 40);
  v3 = [v2 bs_mapNoNulls:v4];
  [*(a1 + 40) _installedSourceQueue_notificationSourcesDidUninstall:v3];
}

id __54__UNSUserNotificationServer_applicationsDidUninstall___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D77CB8] applicationSourceDescriptionWithApplication:a2];
  v5 = [v4 useDefaultDataProvider];
  if ((v5 & 1) == 0)
  {
    v2 = [v4 pushEnvironment];
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v6 = *(*(a1 + 32) + 240);
  v7 = [v4 bundleIdentifier];
  v8 = [v6 containsObject:v7];

  if ((v5 & 1) == 0)
  {
  }

  if ((v8 & 1) == 0)
  {
    v9 = v4;
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9;
}

- (void)didChangeNotificationSettings:(id)a3 forBundleIdentifier:(id)a4
{
  notificationSchedulingService = self->_notificationSchedulingService;
  v7 = a4;
  v8 = a3;
  [(UNCNotificationSchedulingService *)notificationSchedulingService didChangeNotificationSettings:v8 forBundleIdentifier:v7];
  [(UNCRemoteNotificationServer *)self->_remoteNotificationService didChangeNotificationSettings:v8 forBundleIdentifier:v7];
}

- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4
{
  userNotificationServerConnectionListener = self->_userNotificationServerConnectionListener;
  v7 = a4;
  v8 = a3;
  [(UNSUserNotificationServerConnectionListener *)userNotificationServerConnectionListener didReceiveDeviceToken:v8 forBundleIdentifier:v7];
  [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self->_userNotificationServerRemoteNotificationConnectionListener didReceiveDeviceToken:v8 forBundleIdentifier:v7];
}

- (void)notificationRepositoryDidPerformUpdates:(id)a3 forBundleIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  notificationRepository = self->_notificationRepository;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNCNotificationRepository *)self->_notificationRepository notifyDidPerformUpdates:v8 forBundleIdentifier:v6];
  }
}

- (void)notificationRepositoryDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)a3
{
  v5 = a3;
  notificationRepository = self->_notificationRepository;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNCNotificationRepository *)self->_notificationRepository notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier:v5];
  }
}

- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)a3
{
  v5 = a3;
  categoryRepository = self->_categoryRepository;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNSNotificationCategoryRepository *)self->_categoryRepository notifyDidChangeCategoriesForBundleIdentifier:v5];
  }
}

- (void)_removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4
{
  notificationRepository = self->_notificationRepository;
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithArray:a3];
  [(UNCNotificationRepository *)notificationRepository removeNotificationRecordsForIdentifiers:v8 bundleIdentifier:v7];
}

- (void)_buildForegroundAction:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  UNCDecodeNotificationActionSelector();
}

void __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_2;
    block[3] = &unk_279E10508;
    v44 = *(a1 + 48);
    v43 = v15;
    dispatch_async(v16, block);

    v17 = v44;
  }

  else
  {
    v18 = MEMORY[0x277CE2060];
    v19 = *MEMORY[0x277CE2060];
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v46 = v11;
      v47 = 2112;
      v48 = v13;
      v49 = 2112;
      v50 = v12;
      v51 = 2112;
      v52 = v14;
      _os_log_impl(&dword_270AA8000, v19, OS_LOG_TYPE_DEFAULT, "bundleID: %@ performAction: %@ forNotification: %@ withUserText: %@", buf, 0x2Au);
    }

    v17 = [*(a1 + 40) localResponseForAction:v13 notification:v12 bundleID:v11 userText:v14];
    if (v17)
    {
      v20 = [v13 isEqual:*MEMORY[0x277CE20E8]];
      v34 = [*(a1 + 40) localActionForAction:v13 notification:v12 bundleID:v11];
      if (([v34 options] & 4) != 0 || v20)
      {
        v25 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v46 = v13;
          v47 = 2112;
          v48 = v12;
          v49 = 2112;
          v50 = v14;
          _os_log_impl(&dword_270AA8000, v25, OS_LOG_TYPE_DEFAULT, "FOREGROUND sendAction: %@ forNotification: %@ withUserText: %@", buf, 0x20u);
        }

        v26 = [v17 notification];
        v27 = [v26 request];
        v28 = [v27 content];
        v33 = [v28 launchImageName];

        v29 = *(a1 + 32);
        v30 = *(*(a1 + 40) + 16);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_80;
        v37[3] = &unk_279E10858;
        v31 = *(a1 + 48);
        v22 = v33;
        v39 = v31;
        v38 = v11;
        [v30 foregroundLaunchOptionsForApplication:v38 withResponse:v17 launchImageName:v33 origin:0 queue:v29 completionHandler:v37];
      }

      else
      {
        v21 = *(a1 + 32);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_2_82;
        v35[3] = &unk_279E10610;
        v36 = *(a1 + 48);
        dispatch_async(v21, v35);
        v22 = v36;
      }

      v24 = v34;
    }

    else
    {
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_cold_1();
      }

      v23 = *(a1 + 32);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_78;
      v40[3] = &unk_279E10610;
      v41 = *(a1 + 48);
      dispatch_async(v23, v40);
      v24 = v41;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_78(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

uint64_t __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v6 + 16))(v6, a2, v4, a3);
}

void __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_2_82(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)performAction:(id)a3 forNotification:(id)a4 inApp:(id)a5 withUserText:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CE2060];
  v15 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v40 = v12;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v11;
    v45 = 2112;
    v46 = v13;
    _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "bundleID: %@ performAction: %@ forNotification: %@ withUserText: %@", buf, 0x2Au);
  }

  v16 = [(UNSUserNotificationServer *)self localResponseForAction:v10 notification:v11 bundleID:v12 userText:v13];
  if (v16)
  {
    v17 = [(UNSUserNotificationServer *)self localActionForAction:v10 notification:v11 bundleID:v12];
    v18 = [v17 options];
    v19 = *v14;
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if ((v18 & 4) != 0)
    {
      v28 = v17;
      if (v20)
      {
        *buf = 138412802;
        v40 = v10;
        v41 = 2112;
        v42 = v11;
        v43 = 2112;
        v44 = v13;
        _os_log_impl(&dword_270AA8000, v19, OS_LOG_TYPE_DEFAULT, "FOREGROUND sendAction: %@ forNotification: %@ withUserText: %@", buf, 0x20u);
      }

      v23 = [v16 notification];
      v24 = [v23 request];
      v25 = [v24 content];
      v22 = [v25 launchImageName];

      applicationLauncher = self->_applicationLauncher;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke;
      v35[3] = &unk_279E108A8;
      v36 = v10;
      v37 = v11;
      v38 = v13;
      [(UNSApplicationLauncher *)applicationLauncher foregroundLaunchApplication:v12 withResponse:v16 launchImageName:v22 origin:0 endpoint:0 completionHandler:v35];

      v17 = v28;
    }

    else
    {
      if (v20)
      {
        *buf = 138412802;
        v40 = v10;
        v41 = 2112;
        v42 = v11;
        v43 = 2112;
        v44 = v13;
        _os_log_impl(&dword_270AA8000, v19, OS_LOG_TYPE_DEFAULT, "BACKGROUND APPLICATION sendAction: %@ forNotification: %@ withUserText: %@", buf, 0x20u);
      }

      v21 = self->_applicationLauncher;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_85;
      v29[3] = &unk_279E108D0;
      v30 = v10;
      v31 = v11;
      v32 = v13;
      v33 = self;
      v34 = v12;
      [(UNSApplicationLauncher *)v21 backgroundLaunchApplication:v34 withResponse:v16 completionHandler:v29];

      v22 = v30;
    }
  }

  else if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_cold_1();
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke(void *a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE2060];
  v4 = *MEMORY[0x277CE2060];
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v9 = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "FOREGROUND succeeded sendAction: %@ forNotification: %@ withUserText: %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_cold_1(a1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_85(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE2060];
  v4 = *MEMORY[0x277CE2060];
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "BACKGROUND APPLICATION succeeded sendAction: %@ forNotification: %@ withUserText: %@", buf, 0x20u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_86;
    block[3] = &unk_279E10700;
    block[4] = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_85_cold_1(a1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_86(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v5[0] = a1[5];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 _removeNotificationRecordsForIdentifiers:v3 bundleIdentifier:a1[6]];

  v4 = *MEMORY[0x277D85DE8];
}

- (id)localActionForAction:(id)a3 notification:(id)a4 bundleID:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory bundleIdentifierToDataProvider];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (v12)
  {
    v13 = [(UNCNotificationRepository *)self->_notificationRepository notificationRecordForIdentifier:v9 bundleIdentifier:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 categoryIdentifier];
      v16 = [(UNSNotificationCategoryRepository *)self->_categoryRepository categoryWithIdentifier:v15 bundleIdentifier:v10];
      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x277D77C80]);
        v18 = [v12 bundle];
        v19 = [v17 initWithBundle:v18];

        if (v19)
        {
          v20 = [v19 notificationCategoryForNotificationCategoryRecord:v16];
          v39 = v20;
          if (v20)
          {
            v35 = v19;
            v36 = v16;
            v37 = v15;
            v38 = v9;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v21 = [v20 actions];
            v22 = [v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v41;
              v34 = v14;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v41 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v40 + 1) + 8 * i);
                  v27 = [v26 identifier];
                  v28 = [v27 isEqual:v8];

                  if (v28)
                  {
                    v29 = v26;

                    v9 = v38;
                    v14 = v34;
                    goto LABEL_30;
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
                v14 = v34;
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
            {
              [UNSUserNotificationServer localActionForAction:notification:bundleID:];
            }

            v29 = 0;
            v9 = v38;
LABEL_30:
            v16 = v36;
            v15 = v37;
            v19 = v35;
          }

          else
          {
            v31 = *MEMORY[0x277CE2060];
            if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v46 = v10;
              v47 = 2112;
              v48 = v12;
              v49 = 2112;
              v50 = v16;
              _os_log_error_impl(&dword_270AA8000, v31, OS_LOG_TYPE_ERROR, "bundleID: %@ NO CATEGORY found provider: %@, categoryRecord: %@", buf, 0x20u);
            }

            v29 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
          {
            [UNSUserNotificationServer localActionForAction:notification:bundleID:];
          }

          v29 = 0;
          v19 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
        {
          [UNSUserNotificationServer localActionForAction:notification:bundleID:];
        }

        v29 = 0;
      }
    }

    else
    {
      v30 = *MEMORY[0x277CE2060];
      if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v46 = v10;
        v47 = 2112;
        v48 = v12;
        v49 = 2112;
        v50 = v9;
        _os_log_error_impl(&dword_270AA8000, v30, OS_LOG_TYPE_ERROR, "bundleID: %@ NO NOTIFICATION RECORD found provider: %@, notification: %@", buf, 0x20u);
      }

      v29 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServer localActionForAction:notification:bundleID:];
    }

    v29 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)localResponseForAction:(id)a3 notification:(id)a4 bundleID:(id)a5 userText:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory bundleIdentifierToDataProvider];
  v15 = [v14 objectForKeyedSubscript:v12];

  if (v15)
  {
    v16 = [(UNCNotificationRepository *)self->_notificationRepository notificationRecordForIdentifier:v11 bundleIdentifier:v12];
    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277D77C98]);
      v18 = [v15 bundle];
      v19 = [v17 initWithBundle:v18 categoryRepository:self->_categoryRepository];

      if (v19)
      {
        v20 = [v19 notificationForNotificationRecord:v16];
        if (v20)
        {
          if (v13)
          {
            [MEMORY[0x277CE2018] responseWithNotification:v20 actionIdentifier:v10 userText:v13];
          }

          else
          {
            [MEMORY[0x277CE1FC8] responseWithNotification:v20 actionIdentifier:v10];
          }
          v21 = ;
        }

        else
        {
          v23 = *MEMORY[0x277CE2060];
          if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
          {
            v26 = 138412802;
            v27 = v12;
            v28 = 2112;
            v29 = v19;
            v30 = 2112;
            v31 = v16;
            _os_log_error_impl(&dword_270AA8000, v23, OS_LOG_TYPE_ERROR, "bundleID: %@ NO NOTIFICATION found mapper: %@, record: %@", &v26, 0x20u);
          }

          v21 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
        {
          [UNSUserNotificationServer localResponseForAction:notification:bundleID:userText:];
        }

        v21 = 0;
      }
    }

    else
    {
      v22 = *MEMORY[0x277CE2060];
      if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
      {
        v26 = 138412802;
        v27 = v12;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v11;
        _os_log_error_impl(&dword_270AA8000, v22, OS_LOG_TYPE_ERROR, "bundleID: %@ NO NOTIFICATION RECORD found provider: %@, notification: %@", &v26, 0x20u);
      }

      v21 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServer localActionForAction:notification:bundleID:];
    }

    v21 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_removePushStore
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(NSString *)self->_libraryDirectory stringByAppendingPathComponent:@"SpringBoard"];
  v3 = [v2 stringByAppendingPathComponent:@"PushStore"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v9 = 0;
    v5 = [v4 removeItemAtPath:v3 error:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = *MEMORY[0x277CE2098];
      if (os_log_type_enabled(*MEMORY[0x277CE2098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "Removing PushStore failed: %{public}@", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addObserverForLocaleChanges
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__localeDidChange name:*MEMORY[0x277CBE620] object:0];
}

- (void)_addObserverForBackgroundRefreshApplicationChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _UNSBackgroundRefreshApplicationsDidChange, @"kKeepAppsUpToDateEnabledChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_addObserverForApplicationWorkspaceChanges
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 addObserver:self];
}

- (void)_addObserverForSignificantTimeChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _UNSTimeDidChangeSignificantly, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void __56__UNSUserNotificationServer__ensureAttachmentsIntegrity__block_invoke()
{
  v0 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270AA8000, v0, OS_LOG_TYPE_DEFAULT, "Attachment integrity check complete", v1, 2u);
  }
}

- (void)_didChangeProcessState:(id)a3 forBundleIdentifier:(id)a4
{
  applicationService = self->_applicationService;
  v7 = a4;
  v8 = a3;
  [(UNSApplicationService *)applicationService didChangeProcessState:v8 forBundleIdentifier:v7];
  [(UNSNotificationAuthorizationService *)self->_notificationAuthorizationService didChangeProcessState:v8 forBundleIdentifier:v7];
  [(UNCRemoteNotificationServer *)self->_remoteNotificationService didChangeProcessState:v8 forBundleIdentifier:v7];
}

- (void)_installedSourceQueue_notificationSourcesDidInstall:(id)a3
{
  installedSourceQueue = self->_installedSourceQueue;
  v5 = a3;
  dispatch_assert_queue_V2(installedSourceQueue);
  [(UNCLocalizationService *)self->_localizationService notificationSourcesDidInstall:v5];
  [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory notificationSourcesDidInstall:v5];
  [(UNCNotificationRepository *)self->_notificationRepository notificationSourcesDidInstall:v5];
  [(UNCRemoteNotificationServer *)self->_remoteNotificationService notificationSourcesDidInstall:v5];
}

- (void)_installedSourceQueue_notificationSourcesDidUninstall:(id)a3
{
  installedSourceQueue = self->_installedSourceQueue;
  v5 = a3;
  dispatch_assert_queue_V2(installedSourceQueue);
  [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory notificationSourcesDidUninstall:v5];
  [(UNSAttachmentsService *)self->_attachmentsService notificationSourcesDidUninstall:v5];
  [(UNCNotificationRepository *)self->_notificationRepository notificationSourcesDidInstall:v5];
  [(UNCNotificationSchedulingService *)self->_notificationSchedulingService notificationSourcesDidUninstall:v5];
  [(UNCRemoteNotificationServer *)self->_remoteNotificationService notificationSourcesDidUninstall:v5];
  [(UNCNotificationScheduleRepository *)self->_notificationScheduleRepository notificationSourcesDidUninstall:v5];
  [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository notificationSourcesDidUninstall:v5];
  [(UNSNotificationCategoryRepository *)self->_categoryRepository notificationSourcesDidUninstall:v5];
  [(UNCNotificationTopicRepository *)self->_topicRepository notificationSourcesDidUninstall:v5];
  [(UNCLocalizationService *)self->_localizationService notificationSourcesDidUninstall:v5];
  [(UNSUserNotificationServer *)self _removeNotificationSourceDirectories:v5];
  [(UNSUserNotificationServer *)self _removeBundleLibrarianMappingsForSourceDescriptions:v5];
}

- (void)_removeNotificationSourceDirectories:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138543618;
    v18 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v21 + 1) + 8 * v10) bundleIdentifier];
        v12 = [(UNCBundleLibrarian *)self->_librarian uniqueIdentifierForBundleIdentifier:v11];
        v13 = [(NSString *)self->_directory stringByAppendingPathComponent:v12];
        if ([v5 fileExistsAtPath:v13])
        {
          v20 = 0;
          v14 = [v5 removeItemAtPath:v13 error:&v20];
          v15 = v20;
          if ((v14 & 1) == 0)
          {
            v16 = *MEMORY[0x277CE2098];
            if (os_log_type_enabled(*MEMORY[0x277CE2098], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v18;
              v26 = v13;
              v27 = 2114;
              v28 = v15;
              _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "Removing bundle directory '%{public}@' failed: %{public}@", buf, 0x16u);
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeBundleLibrarianMappingsForSourceDescriptions:(id)a3
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

        v9 = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        [(UNCBundleLibrarian *)self->_librarian removeMappingForBundleIdentifier:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_85_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)localActionForAction:notification:bundleID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v0, v1, "bundleID: %@ NO ACTION found provider: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)localActionForAction:notification:bundleID:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v0, v1, "bundleID: %@ NO CATEGORY MAPPER found provider: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)localActionForAction:notification:bundleID:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v0, v1, "bundleID: %@ NO CATEGORY RECORD found for action %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)localActionForAction:notification:bundleID:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)localResponseForAction:notification:bundleID:userText:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v0, v1, "bundleID: %@ NO NOTIFICATION MAPPER found provider: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end