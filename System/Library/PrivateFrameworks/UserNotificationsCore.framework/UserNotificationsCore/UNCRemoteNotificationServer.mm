@interface UNCRemoteNotificationServer
+ (id)_newPushServiceConnectionWithEnvironmentName:(id)name namedDelegatePort:(id)port queue:(id)queue;
- (BOOL)_canMoveTopic:(id)topic fromList:(unint64_t)list toList:(unint64_t)toList connection:(id)connection;
- (BOOL)_queue_allowServiceExtensionFilteringForMessage:(id)message;
- (BOOL)_queue_canDeliverMessageToBundle:(id)bundle;
- (BOOL)_queue_enforcePushTypeForMessage:(id)message;
- (BOOL)_queue_isApplicationForeground:(id)foreground;
- (BOOL)_queue_isApplicationRunning:(id)running;
- (BOOL)_queue_isBackgroundAppRefreshAllowedForBundleIdentifier:(id)identifier;
- (BOOL)_queue_isPushEnabledForApplication:(id)application;
- (BOOL)_queue_isUserNotificationEnabledForApplication:(id)application;
- (BOOL)_queue_isVisibleUserNotificationEnabledForApplication:(id)application;
- (BOOL)_queue_messageIsValidForDelivery:(id)delivery;
- (BOOL)_queue_shouldBoostTopicToEnabled:(id)enabled;
- (BOOL)_requestContainsDisallowedPrivateUserInfo:(id)info;
- (BOOL)allowsRemoteNotificationsForBundleIdentifier:(id)identifier;
- (UNCRemoteNotificationServer)initWithNotificationRepository:(id)repository attachmentsService:(id)service pushRegistrationRepository:(id)registrationRepository platform:(id)platform;
- (id)_initWithNotificationRepository:(id)repository attachmentsService:(id)service pushRegistrationRepository:(id)registrationRepository platform:(id)platform queue:(id)queue apsQueue:(id)apsQueue duetActivityScheduler:(id)scheduler serviceExtensionManager:(id)self0;
- (id)_portNameForEnvironmentName:(id)name;
- (id)_queue_allTopicsForApplication:(id)application;
- (id)_topicsForList:(unint64_t)list connection:(id)connection;
- (void)_extensionQueue_modifyNotificationRequest:(id)request bundleIdentifier:(id)identifier message:(id)message extension:(id)extension enforcePushType:(BOOL)type;
- (void)_queue_applicationDidBecomeBackground:(id)background;
- (void)_queue_applicationDidBecomeForeground:(id)foreground;
- (void)_queue_applicationDidLaunch:(id)launch;
- (void)_queue_applicationDidTerminate:(id)terminate;
- (void)_queue_backgroundRefreshApplicationsDidChange;
- (void)_queue_calculateTopics;
- (void)_queue_connection:(id)_queue_connection didReceivePublicToken:(id)token;
- (void)_queue_connection:(id)_queue_connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)_queue_deliverNotificationRequest:(id)request bundleIdentifier:(id)identifier message:(id)message enforcePushType:(BOOL)type extensionStart:(id)start extensionEnd:(id)end;
- (void)_queue_didChangeNotificationSettings:(id)settings forBundleIdentifier:(id)identifier;
- (void)_queue_didChangeProcessState:(id)state forBundleIdentifier:(id)identifier;
- (void)_queue_didCompleteInitialization;
- (void)_queue_didReceiveIncomingMessage:(id)message;
- (void)_queue_invalidateTokenForBundleIdentifier:(id)identifier;
- (void)_queue_moveTopicsForApplication:(id)application fromList:(unint64_t)list toList:(unint64_t)toList;
- (void)_queue_registerApplicationWithBundleIdentifier:(id)identifier forEnvironment:(id)environment;
- (void)_queue_reloadBackgroundAppRefreshDisabledList;
- (void)_queue_reloadRegistrations;
- (void)_queue_removeRegistrationForBundleIdentifier:(id)identifier;
- (void)_queue_setPushRegistration:(id)registration forBundleIdentifier:(id)identifier;
- (void)_scheduleContentAvailablePushActivityForMessage:(id)message bundleIdentifier:(id)identifier;
- (void)backgroundRefreshApplicationsDidChange;
- (void)bluelistStatusChanged;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)dealloc;
- (void)didChangeNotificationSettings:(id)settings forBundleIdentifier:(id)identifier;
- (void)didChangeProcessState:(id)state forBundleIdentifier:(id)identifier;
- (void)didCompleteInitialization;
- (void)invalidateTokenForRemoteNotificationsForBundleIdentifier:(id)identifier;
- (void)notificationSourcesDidInstall:(id)install;
- (void)notificationSourcesDidUninstall:(id)uninstall;
- (void)requestRemoteNotificationTokenWithEnvironment:(id)environment forBundleIdentifier:(id)identifier;
@end

@implementation UNCRemoteNotificationServer

- (UNCRemoteNotificationServer)initWithNotificationRepository:(id)repository attachmentsService:(id)service pushRegistrationRepository:(id)registrationRepository platform:(id)platform
{
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  platformCopy = platform;
  registrationRepositoryCopy = registrationRepository;
  serviceCopy = service;
  repositoryCopy = repository;
  v16 = dispatch_queue_create("com.apple.usernotificationsserver.RemoteNotificationServer", v11);

  v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v18 = dispatch_queue_create("com.apple.usernotificationsserver.RemoteNotificationServer.APSConnection", v17);

  scheduler = [MEMORY[0x1E699A4B8] scheduler];
  v20 = objc_alloc_init(UNCNotificationServiceExtensionManager);
  v21 = [(UNCRemoteNotificationServer *)self _initWithNotificationRepository:repositoryCopy attachmentsService:serviceCopy pushRegistrationRepository:registrationRepositoryCopy platform:platformCopy queue:v16 apsQueue:v18 duetActivityScheduler:scheduler serviceExtensionManager:v20];

  return v21;
}

- (id)_initWithNotificationRepository:(id)repository attachmentsService:(id)service pushRegistrationRepository:(id)registrationRepository platform:(id)platform queue:(id)queue apsQueue:(id)apsQueue duetActivityScheduler:(id)scheduler serviceExtensionManager:(id)self0
{
  repositoryCopy = repository;
  serviceCopy = service;
  registrationRepositoryCopy = registrationRepository;
  platformCopy = platform;
  queueCopy = queue;
  apsQueueCopy = apsQueue;
  schedulerCopy = scheduler;
  managerCopy = manager;
  v52.receiver = self;
  v52.super_class = UNCRemoteNotificationServer;
  v18 = [(UNCRemoteNotificationServer *)&v52 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_notificationRepository, repository);
    objc_storeStrong(&v19->_attachmentsService, service);
    objc_storeStrong(&v19->_pushRegistrationRepository, registrationRepository);
    objc_storeStrong(&v19->_platform, platform);
    objc_storeStrong(&v19->_duetActivityScheduler, scheduler);
    objc_storeStrong(&v19->_serviceExtensionManager, manager);
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v19->_apsQueue, apsQueue);
    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cloudKitBundleIdentifiers = v19->_cloudKitBundleIdentifiers;
    v19->_cloudKitBundleIdentifiers = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    contentAvailableBundleIdentifiers = v19->_contentAvailableBundleIdentifiers;
    v19->_contentAvailableBundleIdentifiers = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    quietServiceExtensionBundleIdentifiers = v19->_quietServiceExtensionBundleIdentifiers;
    v19->_quietServiceExtensionBundleIdentifiers = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    foregroundBundleIdentifiers = v19->_foregroundBundleIdentifiers;
    v19->_foregroundBundleIdentifiers = v26;

    v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    installedBundleIdentifiers = v19->_installedBundleIdentifiers;
    v19->_installedBundleIdentifiers = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    restrictedBundleIdentifiers = v19->_restrictedBundleIdentifiers;
    v19->_restrictedBundleIdentifiers = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    runningBundleIdentifiers = v19->_runningBundleIdentifiers;
    v19->_runningBundleIdentifiers = v32;

    v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    userNotificationEnabledBundleIdentifiers = v19->_userNotificationEnabledBundleIdentifiers;
    v19->_userNotificationEnabledBundleIdentifiers = v34;

    v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    visibleUserNotificationEnabledBundleIdentifiers = v19->_visibleUserNotificationEnabledBundleIdentifiers;
    v19->_visibleUserNotificationEnabledBundleIdentifiers = v36;

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIdentifierToRegistration = v19->_bundleIdentifierToRegistration;
    v19->_bundleIdentifierToRegistration = v38;

    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    environmentsToConnections = v19->_environmentsToConnections;
    v19->_environmentsToConnections = v40;

    v42 = objc_alloc_init(UNCBlueListMonitor);
    blueListMonitor = v19->_blueListMonitor;
    v19->_blueListMonitor = v42;
  }

  return v19;
}

- (void)dealloc
{
  [(UNCRemoteNotificationServer *)self setObserver:0];
  v3.receiver = self;
  v3.super_class = UNCRemoteNotificationServer;
  [(UNCRemoteNotificationServer *)&v3 dealloc];
}

- (void)didChangeNotificationSettings:(id)settings forBundleIdentifier:(id)identifier
{
  settingsCopy = settings;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__UNCRemoteNotificationServer_didChangeNotificationSettings_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = settingsCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = settingsCopy;
  dispatch_async(queue, block);
}

- (void)didChangeProcessState:(id)state forBundleIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__UNCRemoteNotificationServer_didChangeProcessState_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = stateCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = stateCopy;
  dispatch_async(queue, block);
}

- (void)didCompleteInitialization
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__UNCRemoteNotificationServer_didCompleteInitialization__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__UNCRemoteNotificationServer_connection_didReceiveToken_forTopic_identifier___block_invoke;
  block[3] = &unk_1E85D7110;
  block[4] = self;
  v20 = connectionCopy;
  v21 = tokenCopy;
  v22 = topicCopy;
  v23 = identifierCopy;
  v15 = identifierCopy;
  v16 = topicCopy;
  v17 = tokenCopy;
  v18 = connectionCopy;
  dispatch_async(queue, block);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__UNCRemoteNotificationServer_connection_didReceivePublicToken___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = connectionCopy;
  v13 = tokenCopy;
  v9 = tokenCopy;
  v10 = connectionCopy;
  dispatch_async(queue, block);
}

- (void)_queue_connection:(id)_queue_connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  v40 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  topicCopy = topic;
  dispatch_assert_queue_V2(self->_queue);
  if (tokenCopy)
  {
    if (topicCopy)
    {
      if ([topicCopy hasPrefix:@"com.apple.icloud-container."])
      {
        v10 = *MEMORY[0x1E6983390];
        if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 138543362;
          *&v39[4] = topicCopy;
          _os_log_impl(&dword_1DA7A9000, v10, OS_LOG_TYPE_DEFAULT, "Do not deliver per-app token for CloudKit topic %{public}@", v39, 0xCu);
        }

        goto LABEL_34;
      }

      v12 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:topicCopy];
      v13 = v12;
      if (!v12)
      {
        v21 = *MEMORY[0x1E6983390];
        if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 138543362;
          *&v39[4] = topicCopy;
          _os_log_impl(&dword_1DA7A9000, v21, OS_LOG_TYPE_DEFAULT, "Received per-app token for topic %{public}@ for unregistered app", v39, 0xCu);
        }

        goto LABEL_33;
      }

      token = [v12 token];
      v15 = [token isEqual:tokenCopy];

      v16 = MEMORY[0x1E6983390];
      v17 = *MEMORY[0x1E6983390];
      v18 = os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = v17;
        *v39 = 134349314;
        *&v39[4] = [tokenCopy length];
        *&v39[12] = 2114;
        *&v39[14] = topicCopy;
        v20 = "Received same per-app token [%{public}lu] for topic %{public}@";
      }

      else
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = v17;
        *v39 = 134349314;
        *&v39[4] = [tokenCopy length];
        *&v39[12] = 2114;
        *&v39[14] = topicCopy;
        v20 = "Received new per-app token [%{public}lu] for topic %{public}@";
      }

      _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, v20, v39, 0x16u);

LABEL_19:
      v22 = [(NSMutableSet *)self->_bundleIdentifiersNeedingToken containsObject:topicCopy, *v39, *&v39[16], v40]| v15 ^ 1;
      [(NSMutableSet *)self->_bundleIdentifiersNeedingToken removeObject:topicCopy];
      if (![(NSMutableSet *)self->_bundleIdentifiersNeedingToken count])
      {
        bundleIdentifiersNeedingToken = self->_bundleIdentifiersNeedingToken;
        self->_bundleIdentifiersNeedingToken = 0;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_31;
      }

      v24 = [(NSMutableSet *)self->_installedBundleIdentifiers containsObject:topicCopy];
      v25 = *v16;
      v26 = os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT);
      if (v24)
      {
        if (v26)
        {
          v27 = v25;
          v28 = [tokenCopy length];
          *v39 = 134349314;
          *&v39[4] = v28;
          *&v39[12] = 2114;
          *&v39[14] = topicCopy;
          _os_log_impl(&dword_1DA7A9000, v27, OS_LOG_TYPE_DEFAULT, "Send per-app token [%{public}lu] to client for topic %{public}@", v39, 0x16u);
        }

        observer = self->_observer;
        if (objc_opt_respondsToSelector())
        {
          [(UNCRemoteNotificationServerObserver *)self->_observer didReceiveDeviceToken:tokenCopy forBundleIdentifier:topicCopy];
        }

        environment = [v13 environment];
        tokenIdentifier = [v13 tokenIdentifier];
        v32 = [UNCPushRegistration pushRegistrationWithEnvironment:environment tokenIdentifier:tokenIdentifier token:tokenCopy];

        [(UNCRemoteNotificationServer *)self _queue_setPushRegistration:v32 forBundleIdentifier:topicCopy];
      }

      else
      {
        if (!v26)
        {
          goto LABEL_31;
        }

        v32 = v25;
        v33 = [tokenCopy length];
        *v39 = 134349314;
        *&v39[4] = v33;
        *&v39[12] = 2114;
        *&v39[14] = topicCopy;
        _os_log_impl(&dword_1DA7A9000, v32, OS_LOG_TYPE_DEFAULT, "Do not send per-app token [%{public}lu] to client for topic %{public}@", v39, 0x16u);
      }

LABEL_31:
      v34 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v35 = self->_bundleIdentifiersNeedingToken;
        v36 = v34;
        v37 = [(NSMutableSet *)v35 count];
        *v39 = 134217984;
        *&v39[4] = v37;
        _os_log_impl(&dword_1DA7A9000, v36, OS_LOG_TYPE_DEFAULT, "%lu apps waiting for tokens", v39, 0xCu);
      }

LABEL_33:

      goto LABEL_34;
    }

    v11 = *MEMORY[0x1E6983390];
    if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
    {
      [UNCRemoteNotificationServer _queue_connection:v11 didReceiveToken:? forTopic:? identifier:?];
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
  {
    [UNCRemoteNotificationServer _queue_connection:didReceiveToken:forTopic:identifier:];
  }

LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_queue_connection:(id)_queue_connection didReceivePublicToken:(id)token
{
  v80 = *MEMORY[0x1E69E9840];
  _queue_connectionCopy = _queue_connection;
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(NSMutableDictionary *)self->_environmentsToConnections allKeysForObject:_queue_connectionCopy];
  lastObject = [v8 lastObject];

  v10 = *MEMORY[0x1E6983390];
  v65 = lastObject;
  v11 = *MEMORY[0x1E6983390];
  if (lastObject)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v10;
      *buf = 134349314;
      v77 = [tokenCopy length];
      v78 = 2114;
      v79 = lastObject;
      _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "Received new public token [%{public}lu] for environment %{public}@", buf, 0x16u);
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [standardUserDefaults dictionaryForKey:@"SBEnvironmentsToLastKnownTokens"];
    v15 = [v14 mutableCopy];

    v16 = [v15 objectForKey:lastObject];
    v17 = v16;
    if (v16 == tokenCopy || v16 && [tokenCopy isEqualToData:v16])
    {
      v18 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [tokenCopy length];
        *buf = 134349056;
        v77 = v20;
        _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "Received same public token [%{public}lu]", buf, 0xCu);
      }
    }

    else
    {
      v60 = v17;
      v21 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = [tokenCopy length];
        *buf = 134349056;
        v77 = v23;
        _os_log_impl(&dword_1DA7A9000, v22, OS_LOG_TYPE_DEFAULT, "Received new public token [%{public}lu]", buf, 0xCu);
      }

      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v64 = _queue_connectionCopy;
      if (tokenCopy)
      {
        [v15 setObject:tokenCopy forKey:lastObject];
      }

      else
      {
        [v15 removeObjectForKey:lastObject];
      }

      v63 = tokenCopy;
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v62 = v15;
      [standardUserDefaults2 setValue:v15 forKey:@"SBEnvironmentsToLastKnownTokens"];

      v25 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifierToRegistration = self->_bundleIdentifierToRegistration;
        v27 = v25;
        v28 = [(NSMutableDictionary *)bundleIdentifierToRegistration count];
        *buf = 134349056;
        v77 = v28;
        _os_log_impl(&dword_1DA7A9000, v27, OS_LOG_TYPE_DEFAULT, "Flush per-app tokens for %{public}lu apps", buf, 0xCu);
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      allKeys = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration allKeys];
      v30 = [allKeys countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v71;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v71 != v32)
            {
              objc_enumerationMutation(allKeys);
            }

            v34 = *(*(&v70 + 1) + 8 * i);
            v35 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:v34];
            environment = [v35 environment];
            v37 = [environment isEqualToString:v65];

            if (v37)
            {
              environment2 = [v35 environment];
              tokenIdentifier = [v35 tokenIdentifier];
              v40 = [UNCPushRegistration pushRegistrationWithEnvironment:environment2 tokenIdentifier:tokenIdentifier token:0];

              [(UNCRemoteNotificationServer *)self _queue_setPushRegistration:v40 forBundleIdentifier:v34];
            }
          }

          v31 = [allKeys countByEnumeratingWithState:&v70 objects:v75 count:16];
        }

        while (v31);
      }

      v41 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        runningBundleIdentifiers = self->_runningBundleIdentifiers;
        v43 = v41;
        v44 = [(NSMutableSet *)runningBundleIdentifiers count];
        *buf = 134217984;
        v77 = v44;
        _os_log_impl(&dword_1DA7A9000, v43, OS_LOG_TYPE_DEFAULT, "Request per-app tokens for %lu running apps", buf, 0xCu);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      allObjects = [(NSMutableSet *)self->_runningBundleIdentifiers allObjects];
      v46 = [allObjects countByEnumeratingWithState:&v66 objects:v74 count:16];
      _queue_connectionCopy = v64;
      if (v46)
      {
        v47 = v46;
        v48 = *v67;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v67 != v48)
            {
              objc_enumerationMutation(allObjects);
            }

            v50 = *(*(&v66 + 1) + 8 * j);
            v51 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:v50];
            v52 = v51;
            if (v51)
            {
              environment3 = [v51 environment];
              v54 = [environment3 isEqual:v65];

              if (v54)
              {
                v55 = *MEMORY[0x1E6983390];
                if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
                {
                  v56 = v55;
                  tokenIdentifier2 = [v52 tokenIdentifier];
                  *buf = 138543618;
                  v77 = v50;
                  v78 = 2114;
                  v79 = tokenIdentifier2;
                  _os_log_impl(&dword_1DA7A9000, v56, OS_LOG_TYPE_DEFAULT, "Request per-app token with topic %{public}@ identifier %{public}@", buf, 0x16u);
                }

                tokenIdentifier3 = [v52 tokenIdentifier];
                [v64 requestTokenForTopic:v50 identifier:tokenIdentifier3];
              }
            }
          }

          v47 = [allObjects countByEnumeratingWithState:&v66 objects:v74 count:16];
        }

        while (v47);
      }

      v15 = v62;
      tokenCopy = v63;
      v17 = v61;
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [UNCRemoteNotificationServer _queue_connection:v10 didReceivePublicToken:?];
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__UNCRemoteNotificationServer_connection_didReceiveIncomingMessage___block_invoke;
  v8[3] = &unk_1E85D6E70;
  v8[4] = self;
  v9 = messageCopy;
  v7 = messageCopy;
  dispatch_async(queue, v8);
}

- (void)_queue_didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  v5 = _os_activity_create(&dword_1DA7A9000, "PushNotification", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__UNCRemoteNotificationServer__queue_didReceiveIncomingMessage___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  os_activity_apply(v5, v7);
}

void __64__UNCRemoteNotificationServer__queue_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) unc_bundleIdentifier];
  v3 = MEMORY[0x1E6983390];
  v4 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 topic];
    v8 = [*(a1 + 32) priority];
    *buf = 138543618;
    v54 = v7;
    v55 = 2048;
    v56 = v8;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "Received incoming message on topic %{public}@ at priority %ld", buf, 0x16u);
  }

  v9 = [*(a1 + 40) _queue_canDeliverMessageToBundle:v2];
  v10 = [*(a1 + 40) _queue_messageIsValidForDelivery:*(a1 + 32)];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = MEMORY[0x1E6983298];
    v13 = [*(a1 + 32) correlationIdentifier];
    v14 = [*(a1 + 32) userInfo];
    v15 = [v12 requestWithIdentifier:v13 pushPayload:v14 bundleIdentifier:v2];

    if (!v15)
    {
      v40 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a1 + 32);
        v42 = v40;
        v43 = [v41 topic];
        *buf = 138543362;
        v54 = v43;
        _os_log_impl(&dword_1DA7A9000, v42, OS_LOG_TYPE_DEFAULT, "Received invalid remote notification request on topic %{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

    v48 = [*(a1 + 32) pushFlags];
    v16 = [v15 content];
    v52 = [v16 unc_willAlertUser];

    v17 = [v15 trigger];
    v18 = [v15 content];
    v19 = [v18 badge];

    v20 = [v15 content];
    v21 = [v20 sound];

    v47 = [v17 isContentAvailable];
    v22 = [v17 isMutableContent];
    v51 = [*(a1 + 40) _queue_enforcePushTypeForMessage:*(a1 + 32)];
    v50 = [*(a1 + 32) pushType];
    v23 = [*(a1 + 40) _queue_allowServiceExtensionFilteringForMessage:*(a1 + 32)];
    v24 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v19 != 0;
      v46 = v21 != 0;
      v25 = v48 & 1;
      v26 = v24;
      v27 = [v15 identifier];
      v28 = [v27 un_logDigest];
      [*(a1 + 32) unc_pushTypeDescription];
      v29 = v49 = v17;
      *buf = 138545410;
      v54 = v2;
      v55 = 2114;
      v56 = v28;
      v57 = 1024;
      v58 = v25;
      v3 = MEMORY[0x1E6983390];
      v59 = 1024;
      v60 = v52;
      v61 = 1024;
      v62 = v46;
      v63 = 1024;
      v64 = v45;
      v65 = 1024;
      v66 = v47;
      v67 = 1024;
      v68 = v22;
      v69 = 2114;
      v70 = v29;
      _os_log_impl(&dword_1DA7A9000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received remote notification request %{public}@ [ waking: %d, hasAlertContent: %d, hasSound: %d hasBadge: %d hasContentAvailable: %d hasMutableContent: %d pushType: %{public}@]", buf, 0x44u);

      v17 = v49;
    }

    v30 = v51;
    if (v50 == 8)
    {
      v31 = 0;
    }

    else
    {
      v31 = v51;
    }

    v32 = *(a1 + 40);
    if ((v52 | v23) & v22 & 1) == 0 || (v31)
    {
      v39 = *(a1 + 32);
    }

    else
    {
      v33 = [v32 _queue_isVisibleUserNotificationEnabledForApplication:v2];
      v34 = v33 | v23 & [*(a1 + 40) _queue_isUserNotificationEnabledForApplication:v2];
      v35 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        v37 = [v15 identifier];
        v38 = [v37 un_logDigest];
        *buf = 138543874;
        v54 = v2;
        v55 = 2114;
        v56 = v38;
        v57 = 1024;
        v58 = v34 & 1;
        _os_log_impl(&dword_1DA7A9000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remote notification request %{public}@ can be modified: %d", buf, 0x1Cu);

        v30 = v51;
      }

      v39 = *(a1 + 32);
      v32 = *(a1 + 40);
      if (v34)
      {
        [v32 _queue_tryToModifyNotificationRequest:v15 bundleIdentifier:v2 message:v39 enforcePushType:v30];
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    [v32 _queue_deliverNotificationRequest:v15 bundleIdentifier:v2 message:v39 enforcePushType:v30];
    goto LABEL_23;
  }

LABEL_25:

  v44 = *MEMORY[0x1E69E9840];
}

- (BOOL)_queue_canDeliverMessageToBundle:(id)bundle
{
  v23 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  dispatch_assert_queue_V2(self->_queue);
  if (([(NSMutableSet *)self->_installedBundleIdentifiers containsObject:bundleCopy]& 1) != 0)
  {
    if ([(NSMutableSet *)self->_restrictedBundleIdentifiers containsObject:bundleCopy])
    {
      v5 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = bundleCopy;
        v6 = "[%{public}@] Received incoming message for restricted app";
LABEL_7:
        _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, v6, &v15, 0xCu);
        goto LABEL_8;
      }

      goto LABEL_8;
    }

    v8 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:bundleCopy];
    if (v8)
    {
      if ([(UNCRemoteNotificationServer *)self _queue_isPushEnabledForApplication:bundleCopy])
      {
        v7 = 1;
LABEL_17:

        goto LABEL_18;
      }

      v10 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        contentAvailableBundleIdentifiers = self->_contentAvailableBundleIdentifiers;
        v12 = v10;
        v15 = 138544130;
        v16 = bundleCopy;
        v17 = 1024;
        v18 = [(NSMutableSet *)contentAvailableBundleIdentifiers containsObject:bundleCopy];
        v19 = 1024;
        v20 = [(UNCRemoteNotificationServer *)self _queue_isBackgroundAppRefreshAllowedForBundleIdentifier:bundleCopy];
        v21 = 1024;
        v22 = [(UNCRemoteNotificationServer *)self _queue_isUserNotificationEnabledForApplication:bundleCopy];
        _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received incoming message for push disabled app [ supportsContentAvailableRemoteNotification: %{BOOL}d; backgroundRefreshEnabled: %{BOOL}d; allowsUserNotifications: %{BOOL}d ]", &v15, 0x1Eu);
      }
    }

    else
    {
      v9 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = bundleCopy;
        _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received incoming message for unregistered app", &v15, 0xCu);
      }
    }

    v7 = 0;
    goto LABEL_17;
  }

  v5 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = bundleCopy;
    v6 = "[%{public}@] Received incoming message for uninstalled app";
    goto LABEL_7;
  }

LABEL_8:
  v7 = 0;
LABEL_18:

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_queue_enforcePushTypeForMessage:(id)message
{
  platform = self->_platform;
  messageCopy = message;
  v5 = [(BSPlatform *)platform deviceClass]== 4;
  pushType = [messageCopy pushType];

  if (pushType == 8 || pushType == 4)
  {
    return 1;
  }

  return v5;
}

- (BOOL)_queue_messageIsValidForDelivery:(id)delivery
{
  deliveryCopy = delivery;
  pushType = [deliveryCopy pushType];
  if ([(BSPlatform *)self->_platform deviceClass]== 4)
  {
    v6 = 1;
    if (pushType != 4 && pushType != 8)
    {
      v7 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
      {
        [(UNCRemoteNotificationServer *)v7 _queue_messageIsValidForDelivery:deliveryCopy];
      }

LABEL_11:
      v6 = 0;
    }
  }

  else
  {
    if (pushType > 8 || ((1 << pushType) & 0x111) == 0)
    {
      v8 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
      {
        [(UNCRemoteNotificationServer *)v8 _queue_messageIsValidForDelivery:deliveryCopy];
      }

      goto LABEL_11;
    }

    v6 = 1;
  }

  return v6;
}

- (BOOL)_queue_allowServiceExtensionFilteringForMessage:(id)message
{
  messageCopy = message;
  unc_bundleIdentifier = [messageCopy unc_bundleIdentifier];
  if (![(NSMutableSet *)self->_quietServiceExtensionBundleIdentifiers containsObject:unc_bundleIdentifier])
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  if ([messageCopy pushType] != 8)
  {
    v7 = *MEMORY[0x1E6983390];
    if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
    {
      [(UNCRemoteNotificationServer *)unc_bundleIdentifier _queue_allowServiceExtensionFilteringForMessage:v7, messageCopy];
    }

    goto LABEL_6;
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (void)_extensionQueue_modifyNotificationRequest:(id)request bundleIdentifier:(id)identifier message:(id)message extension:(id)extension enforcePushType:(BOOL)type
{
  v97 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  messageCopy = message;
  extensionCopy = extension;
  queue = [extensionCopy queue];
  dispatch_assert_queue_V2(queue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v17 = _os_activity_create(&dword_1DA7A9000, "PushNotificationModification", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v17, &state);
  selfCopy = self;
  v74 = messageCopy;
  v18 = [(UNCRemoteNotificationServer *)self _queue_allowServiceExtensionFilteringForMessage:messageCopy];
  v19 = requestCopy;
  date = [MEMORY[0x1E695DF00] date];
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.NSE-runtime", identifierCopy];
  AssertionID = 0;
  [extensionCopy serviceTime];
  v73 = identifierCopy;
  IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", identifierCopy, 0, 0, 0, v21 + v21, @"TimeoutActionRelease", &AssertionID);
  v86 = 0;
  v22 = [extensionCopy mutateContentForNotificationRequest:v19 error:&v86];
  v75 = v86;
  if (AssertionID)
  {
    IOPMAssertionRelease(AssertionID);
  }

  date2 = [MEMORY[0x1E695DF00] date];
  [date2 timeIntervalSinceReferenceDate];
  v25 = v24;
  [date timeIntervalSinceReferenceDate];
  v27 = v25 - v26;
  if (!v22)
  {
    if (v18)
    {
      typeCopy2 = type;
      v42 = v17;
      v43 = MEMORY[0x1E6983298];
      identifier = [v19 identifier];
      v45 = objc_alloc_init(MEMORY[0x1E6983288]);
      trigger = [v19 trigger];
      v34 = [v43 requestWithIdentifier:identifier content:v45 trigger:trigger];

      v47 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        identifier2 = [v19 identifier];
        un_logDigest = [identifier2 un_logDigest];
        *buf = 138544130;
        v90 = identifierCopy;
        v91 = 2114;
        v92 = un_logDigest;
        v93 = 2114;
        v94 = *&v75;
        v95 = 2048;
        v96 = v27;
        v51 = "[%{public}@] Mutated notification request is nil, will supress original content; notificationRequest=%{public}@, error=%{public}@, runtime: %f";
LABEL_14:
        _os_log_impl(&dword_1DA7A9000, v48, OS_LOG_TYPE_DEFAULT, v51, buf, 0x2Au);
      }

LABEL_15:
      v17 = v42;
      type = typeCopy2;
      goto LABEL_20;
    }

    v56 = *MEMORY[0x1E6983390];
    v34 = v19;
    if (!os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v57 = v56;
    identifier3 = [v19 identifier];
    [identifier3 un_logDigest];
    v60 = v59 = v17;
    *buf = 138544130;
    v90 = identifierCopy;
    v91 = 2114;
    v92 = v60;
    v93 = 2114;
    v94 = *&v75;
    v95 = 2048;
    v96 = v27;
    _os_log_impl(&dword_1DA7A9000, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not mutate content for notification request, will deliver original content; notificationRequest=%{public}@, error=%{public}@, runtime: %f", buf, 0x2Au);
LABEL_18:

    v17 = v59;
    v34 = v19;
    goto LABEL_20;
  }

  if (![v22 unc_willAlertUser])
  {
    if (v18)
    {
      typeCopy2 = type;
      v42 = v17;
      v52 = MEMORY[0x1E6983298];
      identifier4 = [v19 identifier];
      trigger2 = [v19 trigger];
      v34 = [v52 requestWithIdentifier:identifier4 content:v22 trigger:trigger2];

      v55 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        v48 = v55;
        identifier2 = [v19 identifier];
        un_logDigest = [identifier2 un_logDigest];
        *buf = 138544130;
        v90 = identifierCopy;
        v91 = 2114;
        v92 = un_logDigest;
        v93 = 2114;
        v94 = *&v75;
        v95 = 2048;
        v96 = v27;
        v51 = "[%{public}@] Mutated notification request will not visibly alert the user, will supress original content; notificationRequest=%{public}@, error=%{public}@, runtime: %f";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    v61 = *MEMORY[0x1E6983390];
    v34 = v19;
    if (!os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v57 = v61;
    identifier3 = [v19 identifier];
    [identifier3 un_logDigest];
    v60 = v59 = v17;
    *buf = 138543874;
    v90 = identifierCopy;
    v91 = 2114;
    v92 = v60;
    v93 = 2048;
    v94 = v27;
    _os_log_error_impl(&dword_1DA7A9000, v57, OS_LOG_TYPE_ERROR, "[%{public}@] Mutated notification request will not visibly alert the user, will deliver original content; notificationRequest=%{public}@, runtime: %f", buf, 0x20u);
    goto LABEL_18;
  }

  v70 = v17;
  v28 = MEMORY[0x1E6983298];
  identifier5 = [v19 identifier];
  trigger3 = [v19 trigger];
  v31 = [v28 requestWithIdentifier:identifier5 content:v22 trigger:trigger3];

  attachmentsService = selfCopy->_attachmentsService;
  proxy = [extensionCopy proxy];
  v34 = [(UNCAttachmentsService *)attachmentsService resolveAttachmentsSkippingErrorsForRequest:v31 bundleIdentifier:identifierCopy fromBundleProxyForServiceExtension:proxy];

  content = [v34 content];
  attachments = [content attachments];
  v37 = [attachments count];

  v38 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    identifier6 = [v19 identifier];
    [identifier6 un_logDigest];
    v41 = v71 = type;
    *buf = 138544130;
    v90 = identifierCopy;
    v91 = 2114;
    v92 = v41;
    v93 = 2048;
    v94 = *&v37;
    v95 = 2048;
    v96 = v27;
    _os_log_impl(&dword_1DA7A9000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will deliver mutated notification content; notificationRequest=%{public}@, attachmentCount=%lu, runtime: %f", buf, 0x2Au);

    type = v71;
  }

  v17 = v70;
LABEL_20:
  os_activity_scope_leave(&state);
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__UNCRemoteNotificationServer__extensionQueue_modifyNotificationRequest_bundleIdentifier_message_extension_enforcePushType___block_invoke;
  block[3] = &unk_1E85D7160;
  block[4] = selfCopy;
  v79 = v34;
  v80 = identifierCopy;
  v81 = v74;
  typeCopy3 = type;
  v82 = date;
  v83 = date2;
  v84 = extensionCopy;
  v63 = extensionCopy;
  v64 = date2;
  v65 = date;
  v66 = v74;
  v67 = identifierCopy;
  v68 = v34;
  dispatch_async(queue, block);

  v69 = *MEMORY[0x1E69E9840];
}

void __124__UNCRemoteNotificationServer__extensionQueue_modifyNotificationRequest_bundleIdentifier_message_extension_enforcePushType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_deliverNotificationRequest:*(a1 + 40) bundleIdentifier:*(a1 + 48) message:*(a1 + 56) enforcePushType:*(a1 + 88) extensionStart:*(a1 + 64) extensionEnd:*(a1 + 72)];
  v2 = [*(a1 + 80) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__UNCRemoteNotificationServer__extensionQueue_modifyNotificationRequest_bundleIdentifier_message_extension_enforcePushType___block_invoke_2;
  block[3] = &unk_1E85D6F70;
  v4 = *(a1 + 80);
  dispatch_async(v2, block);
}

- (void)_queue_deliverNotificationRequest:(id)request bundleIdentifier:(id)identifier message:(id)message enforcePushType:(BOOL)type extensionStart:(id)start extensionEnd:(id)end
{
  typeCopy = type;
  v71 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  messageCopy = message;
  startCopy = start;
  endCopy = end;
  dispatch_assert_queue_V2(self->_queue);
  v17 = MEMORY[0x1E6983390];
  v18 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    identifier = [requestCopy identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543618;
    v64 = identifierCopy;
    v65 = 2114;
    v66 = un_logDigest;
    _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Process delivery of push notification %{public}@", buf, 0x16u);
  }

  pushType = [messageCopy pushType];
  content = [requestCopy content];
  unc_willNotifyUser = [content unc_willNotifyUser];

  v25 = [(UNCRemoteNotificationServer *)self _queue_allowServiceExtensionFilteringForMessage:messageCopy];
  trigger = [requestCopy trigger];
  if ([trigger isContentAvailable])
  {
    if (!typeCopy || pushType == 4 || ((pushType == 8) & (unc_willNotifyUser | v25)) != 0)
    {
      [(UNCRemoteNotificationServer *)self _scheduleContentAvailablePushActivityForMessage:messageCopy bundleIdentifier:identifierCopy];
    }

    else if (!((pushType != 8) | (unc_willNotifyUser | v25) & 1))
    {
      v26 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        v27 = v26;
        identifier2 = [requestCopy identifier];
        un_logDigest2 = [identifier2 un_logDigest];
        unc_pushTypeDescription = [messageCopy unc_pushTypeDescription];
        *buf = 138544130;
        v64 = identifierCopy;
        v65 = 2114;
        v66 = un_logDigest2;
        v67 = 2114;
        v68 = unc_pushTypeDescription;
        v29 = unc_pushTypeDescription;
        v69 = 1024;
        v70 = 0;
        _os_log_error_impl(&dword_1DA7A9000, v27, OS_LOG_TYPE_ERROR, "[%{public}@] NOT requesting DUET deliver content-available, non-notifiying push notification %{public}@ [pushType: %{public}@ willNotifyUser: %d]", buf, 0x26u);
      }
    }
  }

  v30 = requestCopy;
  v31 = messageCopy;
  v32 = unc_willNotifyUser;
  v33 = identifierCopy;
  v34 = typeCopy;
  v62 = v30;
  content2 = [v30 content];
  userInfo = [content2 userInfo];
  v37 = [(UNCRemoteNotificationServer *)self _requestContainsDisallowedPrivateUserInfo:userInfo];

  if (!v37)
  {
    v41 = !v34;
    v42 = pushType == 8 || !v34;
    v43 = v42 & v32;
    if ((v42 & v32) == 1)
    {
      v40 = v31;
      [(UNCNotificationRepository *)self->_notificationRepository saveNotificationRequest:v62 shouldRepost:1 withMessage:v31 forBundleIdentifier:v33];
LABEL_28:
      pushFlags = [v40 pushFlags];
      v52 = [(UNCRemoteNotificationServer *)self _queue_isVisibleUserNotificationEnabledForApplication:v33];
      v39 = endCopy;
      v38 = startCopy;
      UNCPowerLogUserNotificationExtendedTriggerEvent(v33, 3u, pushFlags & 1, startCopy, endCopy, v43 & v52);
      goto LABEL_29;
    }

    v44 = v32;
    v45 = (pushType != 8) | v32;
    v40 = v31;
    if ((v45 & 1) != 0 || !v25)
    {
      if (pushType == 4)
      {
        v41 = 1;
      }

      if (v41)
      {
        goto LABEL_28;
      }

      v50 = *MEMORY[0x1E6983390];
      if (!os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v47 = v50;
      identifier3 = [v62 identifier];
      [identifier3 un_logDigest];
      un_logDigest3 = v55 = v44;
      unc_pushTypeDescription2 = [v31 unc_pushTypeDescription];
      *buf = 138544130;
      v64 = v33;
      v65 = 2114;
      v66 = un_logDigest3;
      v67 = 2114;
      v68 = unc_pushTypeDescription2;
      v69 = 1024;
      v70 = v55;
      v40 = v31;
      _os_log_error_impl(&dword_1DA7A9000, v47, OS_LOG_TYPE_ERROR, "[%{public}@] NOT delivering non-notifying push notification %{public}@ [pushType: %{public}@ willNotifyUser: %d]", buf, 0x26u);
    }

    else
    {
      v46 = *MEMORY[0x1E6983390];
      if (!os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v47 = v46;
      identifier4 = [v62 identifier];
      un_logDigest3 = [identifier4 un_logDigest];
      *buf = 138543618;
      v64 = v33;
      v65 = 2114;
      v66 = un_logDigest3;
      _os_log_impl(&dword_1DA7A9000, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] NOT delivering filtered push notification %{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  v39 = endCopy;
  v38 = startCopy;
  v40 = v31;
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
  {
    [UNCRemoteNotificationServer _queue_deliverNotificationRequest:bundleIdentifier:message:enforcePushType:extensionStart:extensionEnd:];
  }

LABEL_29:

  v53 = *MEMORY[0x1E69E9840];
}

- (BOOL)_requestContainsDisallowedPrivateUserInfo:(id)info
{
  infoCopy = info;
  if (os_variant_has_internal_content())
  {
    allKeys = [infoCopy allKeys];
    v5 = [allKeys containsObject:@"com.apple.private.untool.override"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_scheduleContentAvailablePushActivityForMessage:(id)message bundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  v8 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = identifierCopy;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request DUET delivers content-available push notification to application", &v15, 0xCu);
  }

  v9 = [messageCopy priority] > 9;
  v10 = MEMORY[0x1E699A488];
  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];
  v13 = [v10 launchForRemoteNotificationWithTopic:topic withPayload:userInfo highPriority:v9];

  [(_DASActivityScheduler *)self->_duetActivityScheduler submitActivity:v13];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)notificationSourcesDidInstall:(id)install
{
  installCopy = install;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__UNCRemoteNotificationServer_notificationSourcesDidInstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = installCopy;
  selfCopy = self;
  v6 = installCopy;
  dispatch_sync(queue, v7);
}

uint64_t __61__UNCRemoteNotificationServer_notificationSourcesDidInstall___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 bundleIdentifier];
        [*(*(a1 + 40) + 112) addObject:v8];
        v9 = [v7 isRestricted];
        v10 = *(*(a1 + 40) + 120);
        if (v9)
        {
          [v10 addObject:v8];
        }

        else
        {
          [v10 removeObject:v8];
        }

        v11 = [v7 usesCloudKit];
        v12 = *(*(a1 + 40) + 80);
        if (v11)
        {
          [v12 addObject:v8];
        }

        else
        {
          [v12 removeObject:v8];
        }

        v13 = [v7 supportsContentAvailableRemoteNotifications];
        v14 = *(*(a1 + 40) + 88);
        if (v13)
        {
          [v14 addObject:v8];
        }

        else
        {
          [v14 removeObject:v8];
        }

        v15 = [v7 allowServiceExtensionFiltering];
        v16 = *(*(a1 + 40) + 96);
        if (v15)
        {
          [v16 addObject:v8];
        }

        else
        {
          [v16 removeObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _queue_calculateTopics];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)notificationSourcesDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__UNCRemoteNotificationServer_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = uninstallCopy;
  selfCopy = self;
  v6 = uninstallCopy;
  dispatch_sync(queue, v7);
}

uint64_t __63__UNCRemoteNotificationServer_notificationSourcesDidUninstall___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) bundleIdentifier];
        [*(*(a1 + 40) + 80) removeObject:v7];
        [*(*(a1 + 40) + 88) removeObject:v7];
        [*(*(a1 + 40) + 96) removeObject:v7];
        [*(*(a1 + 40) + 112) removeObject:v7];
        [*(*(a1 + 40) + 120) removeObject:v7];
        [*(*(a1 + 40) + 136) removeObject:v7];
        [*(a1 + 40) _queue_invalidateTokenForBundleIdentifier:v7];
        [*(a1 + 40) _queue_removeRegistrationForBundleIdentifier:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _queue_calculateTopics];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_queue_reloadRegistrations
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(UNCPushRegistrationRepository *)self->_pushRegistrationRepository allBundleIdentifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [(UNCPushRegistrationRepository *)self->_pushRegistrationRepository registrationForBundleIdentifier:v9, v14];
        if (v11)
        {
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:v9];
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  bundleIdentifierToRegistration = self->_bundleIdentifierToRegistration;
  self->_bundleIdentifierToRegistration = dictionary;

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_queue_reloadBackgroundAppRefreshDisabledList
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        bOOLValue = [v11 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          [(NSSet *)v3 addObject:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  backgroundAppRefreshDisabledList = self->_backgroundAppRefreshDisabledList;
  self->_backgroundAppRefreshDisabledList = v3;

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_queue_backgroundRefreshApplicationsDidChange
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NSSet *)self->_backgroundAppRefreshDisabledList copy];
  [(UNCRemoteNotificationServer *)self _queue_reloadBackgroundAppRefreshDisabledList];
  v4 = [(NSSet *)self->_backgroundAppRefreshDisabledList copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    v10 = MEMORY[0x1E6983390];
    *&v7 = 138543362;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v3 containsObject:{v12, v16}];
        if (v13 != [v4 containsObject:v12])
        {
          v14 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = v12;
            _os_log_impl(&dword_1DA7A9000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calcualate push topics because backgound refresh was changed", buf, 0xCu);
          }

          [(UNCRemoteNotificationServer *)self _queue_calculateTopics];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_queue_moveTopicsForApplication:(id)application fromList:(unint64_t)list toList:(unint64_t)toList
{
  v44 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  dispatch_assert_queue_V2(self->_queue);
  v24 = applicationCopy;
  v9 = [(UNCRemoteNotificationServer *)self _queue_allTopicsForApplication:applicationCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  obj = self->_environmentsToConnections;
  v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v26 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [(NSMutableDictionary *)selfCopy->_environmentsToConnections objectForKey:*(*(&v32 + 1) + 8 * i)];
        v14 = *MEMORY[0x1E6983390];
        if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
        {
          v15 = @"Unknown";
          if (list <= 3)
          {
            v15 = off_1E85D7180[list];
          }

          v16 = @"Unknown";
          if (toList <= 3)
          {
            v16 = off_1E85D7180[toList];
          }

          *buf = 138543874;
          v38 = v15;
          v39 = 2114;
          v40 = v16;
          v41 = 2114;
          v42 = v9;
          v17 = v14;
          _os_log_impl(&dword_1DA7A9000, v17, OS_LOG_TYPE_DEFAULT, "Move topics from %{public}@ to %{public}@: %{public}@", buf, 0x20u);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v18 = v9;
        v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v29;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [v13 moveTopic:*(*(&v28 + 1) + 8 * j) fromList:list toList:toList];
            }

            v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v20);
        }
      }

      v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v11);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)_canMoveTopic:(id)topic fromList:(unint64_t)list toList:(unint64_t)toList connection:(id)connection
{
  topicCopy = topic;
  connectionCopy = connection;
  v11 = [(UNCRemoteNotificationServer *)self _topicsForList:list connection:connectionCopy];
  v12 = [(UNCRemoteNotificationServer *)self _topicsForList:toList connection:connectionCopy];

  LOBYTE(list) = 0;
  if (v11 && v12)
  {
    if ([v11 containsObject:topicCopy])
    {
      LODWORD(list) = [v12 containsObject:topicCopy] ^ 1;
    }

    else
    {
      LOBYTE(list) = 0;
    }
  }

  return list;
}

- (id)_topicsForList:(unint64_t)list connection:(id)connection
{
  connectionCopy = connection;
  v6 = connectionCopy;
  v7 = 0;
  if (list > 1)
  {
    if (list == 2)
    {
      ignoredTopics = [connectionCopy ignoredTopics];
    }

    else
    {
      if (list != 3)
      {
        goto LABEL_11;
      }

      ignoredTopics = [connectionCopy nonWakingTopics];
    }
  }

  else if (list)
  {
    if (list != 1)
    {
      goto LABEL_11;
    }

    ignoredTopics = [connectionCopy opportunisticTopics];
  }

  else
  {
    ignoredTopics = [connectionCopy enabledTopics];
  }

  v7 = ignoredTopics;
LABEL_11:

  return v7;
}

- (void)_queue_didChangeProcessState:(id)state forBundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v8 = *MEMORY[0x1E6983390];
  v9 = *MEMORY[0x1E6983390];
  if (identifierCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543874;
      v17 = identifierCopy;
      v18 = 2114;
      v19 = identifierCopy;
      v20 = 2114;
      v21 = stateCopy;
      _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ application state changed to %{public}@", &v16, 0x20u);
    }

    v10 = [(UNCRemoteNotificationServer *)self _queue_isApplicationForeground:identifierCopy];
    if ([stateCopy isRunning])
    {
      endowmentNamespaces = [stateCopy endowmentNamespaces];
      v12 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

      if (v10 == v12)
      {
        goto LABEL_12;
      }

      if (v12)
      {
        [(UNCRemoteNotificationServer *)self _queue_applicationDidBecomeForeground:identifierCopy];
        goto LABEL_12;
      }
    }

    else if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    [(UNCRemoteNotificationServer *)self _queue_applicationDidBecomeBackground:identifierCopy];
LABEL_12:
    v13 = [(UNCRemoteNotificationServer *)self _queue_isApplicationRunning:identifierCopy];
    isRunning = [stateCopy isRunning];
    if (v13 != isRunning)
    {
      if (isRunning)
      {
        [(UNCRemoteNotificationServer *)self _queue_applicationDidLaunch:identifierCopy];
      }

      else
      {
        [(UNCRemoteNotificationServer *)self _queue_applicationDidTerminate:identifierCopy];
      }
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [UNCRemoteNotificationServer _queue_didChangeProcessState:v8 forBundleIdentifier:?];
  }

LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_queue_isApplicationForeground:(id)foreground
{
  selfCopy = self;
  queue = self->_queue;
  foregroundCopy = foreground;
  dispatch_assert_queue_V2(queue);
  LOBYTE(selfCopy) = [(NSMutableSet *)selfCopy->_foregroundBundleIdentifiers containsObject:foregroundCopy];

  return selfCopy;
}

- (void)_queue_applicationDidBecomeForeground:(id)foreground
{
  v11 = *MEMORY[0x1E69E9840];
  foregroundCopy = foreground;
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableSet *)self->_foregroundBundleIdentifiers addObject:foregroundCopy];
  v5 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:foregroundCopy];

  if (v5)
  {
    if ([(UNCRemoteNotificationServer *)self _queue_isUserNotificationEnabledForApplication:foregroundCopy])
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    [(UNCRemoteNotificationServer *)self _queue_moveTopicsForApplication:foregroundCopy fromList:v6 toList:0];
  }

  else
  {
    v7 = *MEMORY[0x1E6983390];
    if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = foregroundCopy;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignore becoming foreground for application without push registration", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_applicationDidBecomeBackground:(id)background
{
  v12 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableSet *)self->_foregroundBundleIdentifiers removeObject:backgroundCopy];
  v5 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:backgroundCopy];

  if (v5)
  {
    if ([(UNCRemoteNotificationServer *)self _queue_shouldBoostTopicToEnabled:backgroundCopy])
    {
      v6 = *MEMORY[0x1E6983390];
      if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = backgroundCopy;
        v7 = "[%{public}@] Leaving topic enabled for application becoming background";
LABEL_7:
        _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
      }
    }

    else
    {
      if ([(UNCRemoteNotificationServer *)self _queue_isUserNotificationEnabledForApplication:backgroundCopy])
      {
        v8 = 1;
      }

      else
      {
        v8 = 3;
      }

      [(UNCRemoteNotificationServer *)self _queue_moveTopicsForApplication:backgroundCopy fromList:0 toList:v8];
    }
  }

  else
  {
    v6 = *MEMORY[0x1E6983390];
    if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = backgroundCopy;
      v7 = "[%{public}@] Ignore becoming background for application without push registration";
      goto LABEL_7;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_queue_isApplicationRunning:(id)running
{
  selfCopy = self;
  queue = self->_queue;
  runningCopy = running;
  dispatch_assert_queue_V2(queue);
  LOBYTE(selfCopy) = [(NSMutableSet *)selfCopy->_runningBundleIdentifiers containsObject:runningCopy];

  return selfCopy;
}

- (void)_queue_applicationDidLaunch:(id)launch
{
  queue = self->_queue;
  launchCopy = launch;
  dispatch_assert_queue_V2(queue);
  [(NSMutableSet *)self->_runningBundleIdentifiers addObject:launchCopy];
}

- (void)_queue_applicationDidTerminate:(id)terminate
{
  queue = self->_queue;
  terminateCopy = terminate;
  dispatch_assert_queue_V2(queue);
  [(NSMutableSet *)self->_runningBundleIdentifiers removeObject:terminateCopy];
}

- (BOOL)_queue_isBackgroundAppRefreshAllowedForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
  v5 = [v4 objectForKey:identifierCopy];

  if ([v5 BOOLValue])
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_queue_isPushEnabledForApplication:(id)application
{
  applicationCopy = application;
  v5 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:applicationCopy];
  v6 = v5 && ([(NSMutableSet *)self->_contentAvailableBundleIdentifiers containsObject:applicationCopy]&& [(UNCRemoteNotificationServer *)self _queue_isBackgroundAppRefreshAllowedForBundleIdentifier:applicationCopy]|| [(UNCRemoteNotificationServer *)self _queue_isUserNotificationEnabledForApplication:applicationCopy]);

  return v6;
}

- (BOOL)_queue_shouldBoostTopicToEnabled:(id)enabled
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_queue);
  shouldBoostOpportunisticTopicsToEnabled = [(NSMutableSet *)self->_userNotificationEnabledBundleIdentifiers containsObject:enabledCopy]&& ([(NSMutableSet *)self->_quietServiceExtensionBundleIdentifiers containsObject:enabledCopy]& 1) == 0 && [(UNCBlueListMonitor *)self->_blueListMonitor shouldBoostOpportunisticTopicsToEnabled];

  return shouldBoostOpportunisticTopicsToEnabled;
}

- (BOOL)_queue_isUserNotificationEnabledForApplication:(id)application
{
  selfCopy = self;
  queue = self->_queue;
  applicationCopy = application;
  dispatch_assert_queue_V2(queue);
  LOBYTE(selfCopy) = [(NSMutableSet *)selfCopy->_userNotificationEnabledBundleIdentifiers containsObject:applicationCopy];

  return selfCopy;
}

- (void)_queue_didChangeNotificationSettings:(id)settings forBundleIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  identifierCopy = identifier;
  hasEnabledSettings = [settingsCopy hasEnabledSettings];
  v9 = hasEnabledSettings ^ [(NSMutableSet *)self->_userNotificationEnabledBundleIdentifiers containsObject:identifierCopy];
  v10 = MEMORY[0x1E6983390];
  if (v9 == 1)
  {
    v11 = *MEMORY[0x1E6983390];
    if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = identifierCopy;
      v21 = 1024;
      v22 = hasEnabledSettings;
      _os_log_impl(&dword_1DA7A9000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update enabled user notifications for remote notifications: %{BOOL}d", &v19, 0x12u);
    }

    v12 = *v10;
    v13 = os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT);
    if (hasEnabledSettings)
    {
      if (v13)
      {
        v19 = 138543362;
        v20 = identifierCopy;
        _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enable user notifications for remote notifications", &v19, 0xCu);
      }

      [(NSMutableSet *)self->_userNotificationEnabledBundleIdentifiers addObject:identifierCopy];
    }

    else
    {
      if (v13)
      {
        v19 = 138543362;
        v20 = identifierCopy;
        _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Disable user notifications for remote notifications", &v19, 0xCu);
      }

      [(NSMutableSet *)self->_userNotificationEnabledBundleIdentifiers removeObject:identifierCopy];
    }
  }

  hasEnabledAlertSettings = [settingsCopy hasEnabledAlertSettings];
  if (hasEnabledAlertSettings == [(NSMutableSet *)self->_visibleUserNotificationEnabledBundleIdentifiers containsObject:identifierCopy])
  {
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = *MEMORY[0x1E6983378];
    v16 = os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT);
    if (hasEnabledAlertSettings)
    {
      if (v16)
      {
        v19 = 138543362;
        v20 = identifierCopy;
        _os_log_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enabled visible user notifications for remote notifications", &v19, 0xCu);
      }

      [(NSMutableSet *)self->_visibleUserNotificationEnabledBundleIdentifiers addObject:identifierCopy];
    }

    else
    {
      if (v16)
      {
        v19 = 138543362;
        v20 = identifierCopy;
        _os_log_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Disable visible user notifications for remote notifications", &v19, 0xCu);
      }

      [(NSMutableSet *)self->_visibleUserNotificationEnabledBundleIdentifiers removeObject:identifierCopy];
    }
  }

  v17 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_1DA7A9000, v17, OS_LOG_TYPE_DEFAULT, "Calcualate topics because user notification settings authorization changed", &v19, 2u);
  }

  [(UNCRemoteNotificationServer *)self _queue_calculateTopics];
LABEL_24:

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_queue_isVisibleUserNotificationEnabledForApplication:(id)application
{
  selfCopy = self;
  queue = self->_queue;
  applicationCopy = application;
  dispatch_assert_queue_V2(queue);
  LOBYTE(selfCopy) = [(NSMutableSet *)selfCopy->_visibleUserNotificationEnabledBundleIdentifiers containsObject:applicationCopy];

  return selfCopy;
}

- (void)_queue_calculateTopics
{
  v88 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_initializationCompleted)
  {
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v3 = self->_bundleIdentifierToRegistration;
    v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v71 objects:v87 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v72;
      *&v5 = 138543362;
      v52 = v5;
      v53 = v3;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v72 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v71 + 1) + 8 * i);
          if ([(NSMutableSet *)self->_installedBundleIdentifiers containsObject:v9, v52]&& ([(NSMutableSet *)self->_restrictedBundleIdentifiers containsObject:v9]& 1) == 0)
          {
            v10 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:v9];
            v11 = v10;
            if (v10)
            {
              environment = [v10 environment];
              if (environment)
              {
                v61 = [(UNCRemoteNotificationServer *)self _queue_isApplicationForeground:v9];
                v13 = [(UNCRemoteNotificationServer *)self _queue_isUserNotificationEnabledForApplication:v9];
                v60 = v13 && [(UNCRemoteNotificationServer *)self _queue_shouldBoostTopicToEnabled:v9];
                v59 = [(UNCRemoteNotificationServer *)self _queue_isPushEnabledForApplication:v9];
                v16 = [v58 indexOfObject:environment];
                if (v16 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v16 = [v58 count];
                  [v58 addObject:environment];
                  array = [MEMORY[0x1E695DF70] array];
                  [v57 addObject:array];

                  array2 = [MEMORY[0x1E695DF70] array];
                  [v56 addObject:array2];

                  array3 = [MEMORY[0x1E695DF70] array];
                  [v55 addObject:array3];

                  array4 = [MEMORY[0x1E695DF70] array];
                  [v54 addObject:array4];
                }

                v21 = [(UNCRemoteNotificationServer *)self _queue_allTopicsForApplication:v9];
                v22 = v56;
                if (!v13)
                {
                  v22 = v55;
                }

                v23 = v57;
                if (!v61 && !v60)
                {
                  v23 = v22;
                }

                if (v59)
                {
                  v24 = v23;
                }

                else
                {
                  v24 = v54;
                }

                v25 = [v24 objectAtIndex:v16];
                [v25 addObjectsFromArray:v21];

                v3 = v53;
              }

              else
              {
                v15 = *MEMORY[0x1E6983390];
                if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
                {
                  *buf = v52;
                  v77 = v9;
                  _os_log_error_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Push registration with a nil environment was encountered, will ignore", buf, 0xCu);
                }
              }
            }

            else
            {
              v14 = *MEMORY[0x1E6983390];
              if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
              {
                *buf = v52;
                v77 = v9;
                _os_log_error_impl(&dword_1DA7A9000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Missing push registration was encountered, will ignore", buf, 0xCu);
              }
            }
          }
        }

        v6 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v71 objects:v87 count:16];
      }

      while (v6);
    }

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v27 = self->_environmentsToConnections;
    v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v67 objects:v86 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v68;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v68 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v67 + 1) + 8 * j);
          if (([v58 containsObject:v32] & 1) == 0)
          {
            [v26 addObject:v32];
          }
        }

        v29 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v67 objects:v86 count:16];
      }

      while (v29);
    }

    v62 = [v58 count];
    if (v62 >= 1)
    {
      for (k = 0; k != v62; ++k)
      {
        v34 = [v58 objectAtIndex:k];
        v35 = [v57 objectAtIndex:k];
        v36 = [v56 objectAtIndex:k];
        v37 = [v55 objectAtIndex:k];
        v38 = [v54 objectAtIndex:k];
        v39 = [(NSMutableDictionary *)self->_environmentsToConnections objectForKey:v34];
        if (!v39)
        {
          v40 = [(UNCRemoteNotificationServer *)self _portNameForEnvironmentName:v34];
          v39 = [objc_opt_class() _newPushServiceConnectionWithEnvironmentName:v34 namedDelegatePort:v40 queue:self->_apsQueue];
          [v39 setDelegate:self];
          [(NSMutableDictionary *)self->_environmentsToConnections setObject:v39 forKey:v34];
        }

        v41 = *MEMORY[0x1E6983390];
        if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544386;
          v77 = v34;
          v78 = 2114;
          v79 = v35;
          v80 = 2114;
          v81 = v38;
          v82 = 2114;
          v83 = v36;
          v84 = 2114;
          v85 = v37;
          _os_log_impl(&dword_1DA7A9000, v41, OS_LOG_TYPE_DEFAULT, "Setting topics for environment %{public}@:\nenabled: %{public}@\nignored: %{public}@\nopportunistic:%{public}@\nnonWakingOpportunistic:%{public}@", buf, 0x34u);
        }

        [v39 setEnabledTopics:v35 ignoredTopics:v38 opportunisticTopics:v36 nonWakingTopics:v37];
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v42 = v26;
    v43 = [v42 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v64;
      v46 = MEMORY[0x1E695E0F0];
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v64 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v48 = *(*(&v63 + 1) + 8 * m);
          v49 = [(NSMutableDictionary *)self->_environmentsToConnections objectForKey:v48];
          v50 = *MEMORY[0x1E6983390];
          if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v77 = v48;
            _os_log_impl(&dword_1DA7A9000, v50, OS_LOG_TYPE_DEFAULT, "Setting no enabled, ignored or opportunistic topics for environment %{public}@", buf, 0xCu);
          }

          [v49 setEnabledTopics:v46 ignoredTopics:v46 opportunisticTopics:v46 nonWakingTopics:v46];
        }

        v44 = [v42 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v44);
    }

    [(NSMutableDictionary *)self->_environmentsToConnections removeObjectsForKeys:v42];
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (id)_portNameForEnvironmentName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:*MEMORY[0x1E698CF20]])
  {
    v4 = @"com.apple.aps.usernotifications";
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x1E698CF18]])
  {
    v4 = @"com.apple.aps.usernotifications.dev";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_queue_allTopicsForApplication:(id)application
{
  applicationCopy = application;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:applicationCopy];
  if ([(NSMutableSet *)self->_cloudKitBundleIdentifiers containsObject:applicationCopy])
  {
    v6 = [@"com.apple.icloud-container." stringByAppendingString:applicationCopy];
    [v5 addObject:v6];
  }

  return v5;
}

- (void)requestRemoteNotificationTokenWithEnvironment:(id)environment forBundleIdentifier:(id)identifier
{
  environmentCopy = environment;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__UNCRemoteNotificationServer_requestRemoteNotificationTokenWithEnvironment_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = identifierCopy;
  v13 = environmentCopy;
  v9 = environmentCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)invalidateTokenForRemoteNotificationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__UNCRemoteNotificationServer_invalidateTokenForRemoteNotificationsForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

uint64_t __88__UNCRemoteNotificationServer_invalidateTokenForRemoteNotificationsForBundleIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_invalidateTokenForBundleIdentifier:*(a1 + 40)];
  [*(a1 + 32) _queue_removeRegistrationForBundleIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _queue_calculateTopics];
}

- (void)_queue_registerApplicationWithBundleIdentifier:(id)identifier forEnvironment:(id)environment
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  environmentCopy = environment;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:identifierCopy];
  if (v8)
  {
    uUIDString = v8;
    environment = [v8 environment];
    v11 = [environment isEqual:environmentCopy];

    if (v11)
    {
      v12 = 0;
      goto LABEL_7;
    }

    tokenIdentifier = [uUIDString tokenIdentifier];
    v14 = environmentCopy;
    v15 = tokenIdentifier;
  }

  else
  {
    tokenIdentifier = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [tokenIdentifier UUIDString];
    v14 = environmentCopy;
    v15 = uUIDString;
  }

  v16 = [UNCPushRegistration pushRegistrationWithEnvironment:v14 tokenIdentifier:v15 token:0];

  [(UNCRemoteNotificationServer *)self _queue_setPushRegistration:v16 forBundleIdentifier:identifierCopy];
  v12 = 1;
  uUIDString = v16;
LABEL_7:
  v17 = [(NSMutableDictionary *)self->_environmentsToConnections objectForKey:environmentCopy];
  if (!v17)
  {
    [(UNCRemoteNotificationServer *)self _queue_calculateTopics];
    v17 = [(NSMutableDictionary *)self->_environmentsToConnections objectForKey:environmentCopy];
  }

  if (!self->_bundleIdentifiersNeedingToken)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    bundleIdentifiersNeedingToken = self->_bundleIdentifiersNeedingToken;
    self->_bundleIdentifiersNeedingToken = v18;
  }

  tokenIdentifier2 = [uUIDString tokenIdentifier];
  v21 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    tokenIdentifier3 = [uUIDString tokenIdentifier];
    v25 = 138543618;
    v26 = identifierCopy;
    v27 = 2114;
    v28 = tokenIdentifier3;
    _os_log_impl(&dword_1DA7A9000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request per-app token with token identifier %{public}@", &v25, 0x16u);
  }

  [(NSMutableSet *)self->_bundleIdentifiersNeedingToken addObject:identifierCopy];
  [v17 requestTokenForTopic:identifierCopy identifier:tokenIdentifier2];
  if (v12)
  {
    [(UNCRemoteNotificationServer *)self _queue_calculateTopics];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)backgroundRefreshApplicationsDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UNCRemoteNotificationServer_backgroundRefreshApplicationsDidChange__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)bluelistStatusChanged
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UNCRemoteNotificationServer_bluelistStatusChanged__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__UNCRemoteNotificationServer_bluelistStatusChanged__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_DEFAULT, "Calculate push topics because bluelist status changed", v4, 2u);
  }

  return [*(a1 + 32) _queue_calculateTopics];
}

- (BOOL)allowsRemoteNotificationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__UNCRemoteNotificationServer_allowsRemoteNotificationsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F48;
  v9 = identifierCopy;
  v10 = &v11;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __76__UNCRemoteNotificationServer_allowsRemoteNotificationsForBundleIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isPushEnabledForApplication:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_queue_invalidateTokenForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_bundleIdentifierToRegistration objectForKey:identifierCopy];
  environment = [v5 environment];
  if (environment)
  {
    tokenIdentifier = [v5 tokenIdentifier];
    v8 = [(NSMutableDictionary *)self->_environmentsToConnections objectForKey:environment];
    [v8 invalidateTokenForTopic:identifierCopy identifier:tokenIdentifier];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
  {
    [UNCRemoteNotificationServer _queue_invalidateTokenForBundleIdentifier:];
  }
}

- (void)_queue_setPushRegistration:(id)registration forBundleIdentifier:(id)identifier
{
  bundleIdentifierToRegistration = self->_bundleIdentifierToRegistration;
  identifierCopy = identifier;
  registrationCopy = registration;
  [(NSMutableDictionary *)bundleIdentifierToRegistration setObject:registrationCopy forKey:identifierCopy];
  [(UNCPushRegistrationRepository *)self->_pushRegistrationRepository setRegistration:registrationCopy forBundleIdentifier:identifierCopy];
}

- (void)_queue_removeRegistrationForBundleIdentifier:(id)identifier
{
  bundleIdentifierToRegistration = self->_bundleIdentifierToRegistration;
  identifierCopy = identifier;
  [(NSMutableDictionary *)bundleIdentifierToRegistration removeObjectForKey:identifierCopy];
  [(UNCPushRegistrationRepository *)self->_pushRegistrationRepository removeRegistrationForBundleIdentifier:identifierCopy];
}

- (void)_queue_didCompleteInitialization
{
  self->_initializationCompleted = 1;
  [(UNCRemoteNotificationServer *)self _queue_reloadRegistrations];
  [(UNCRemoteNotificationServer *)self _queue_reloadBackgroundAppRefreshDisabledList];
  [(UNCRemoteNotificationServer *)self _queue_calculateTopics];
  [(UNCBlueListMonitor *)self->_blueListMonitor setDelegate:self];
  v3 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "Notify APS that all connections are configured", v4, 2u);
  }

  [MEMORY[0x1E698CF30] notifySafeToSendFilter];
}

+ (id)_newPushServiceConnectionWithEnvironmentName:(id)name namedDelegatePort:(id)port queue:(id)queue
{
  v7 = MEMORY[0x1E698CF30];
  queueCopy = queue;
  portCopy = port;
  nameCopy = name;
  v11 = [[v7 alloc] initWithEnvironmentName:nameCopy namedDelegatePort:portCopy queue:queueCopy];

  return v11;
}

- (void)_queue_connection:(void *)a1 didReceiveToken:forTopic:identifier:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_4() length];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_connection:didReceiveToken:forTopic:identifier:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, v0, v1, "Received invalid per-app token for topic %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_queue_connection:(void *)a1 didReceivePublicToken:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_4() length];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_messageIsValidForDelivery:(void *)a1 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_4() unc_pushTypeDescription];
  v6 = [a2 topic];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_queue_messageIsValidForDelivery:(void *)a1 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_4() unc_pushTypeDescription];
  v6 = [a2 topic];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_queue_allowServiceExtensionFilteringForMessage:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 unc_pushTypeDescription];
  v8 = 138543618;
  v9 = a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Notification filtering will not be allowed because the push type '%{public}@' is not 'Alert'", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_tryToModifyNotificationRequest:bundleIdentifier:message:enforcePushType:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1DA7A9000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Error was encountered trying to find service extension: error=%{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_queue_deliverNotificationRequest:bundleIdentifier:message:enforcePushType:extensionStart:extensionEnd:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, v0, v1, "[%{public}@] NOT delivering push notification contains Apple private user info!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_queue_invalidateTokenForBundleIdentifier:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, v0, v1, "[%{public}@] Push registration with a nil environment was encountered, will not invalidate token", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end