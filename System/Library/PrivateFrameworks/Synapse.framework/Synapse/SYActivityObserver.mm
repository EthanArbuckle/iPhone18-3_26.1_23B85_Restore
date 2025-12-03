@interface SYActivityObserver
+ (id)sharedInstance;
+ (void)loadSynapseObserver;
- (SYActivityObserver)init;
- (id)_defaultActivityObserverContext;
- (void)_discoverAndProcessActiveUserActivityWithContext:(id)context;
- (void)_handleAppBecomeActive:(id)active;
- (void)_handleAppResignActive:(id)active;
- (void)_q_reportActiveUserActivityChangeIfNeeded:(id)needed context:(id)context;
- (void)_reportActiveUserActivityChangeIfNeeded:(id)needed context:(id)context;
- (void)indexedContentItemsDidChange;
- (void)q_processActiveUserActivity:(id)activity identifier:(id)identifier linkable:(BOOL)linkable context:(id)context;
- (void)registerForAppStateNotifications;
- (void)userActivityCanonicalURLWasChanged:(id)changed;
- (void)userActivityDidBecomeCurrent:(id)current current:(BOOL)a4;
- (void)userActivityPersistentIdentifierWasChanged:(id)changed persistentIdentifier:(id)identifier previousValue:(id)value;
- (void)userActivityTargetContentIdentifierWasChanged:(id)changed targetContentIdentifier:(id)identifier previousValue:(id)value;
- (void)userActivityWebpageURLWasChanged:(id)changed webpageURL:(id)l previousValue:(id)value;
@end

@implementation SYActivityObserver

+ (void)loadSynapseObserver
{
  if (loadSynapseObserver_onceToken != -1)
  {
    +[SYActivityObserver loadSynapseObserver];
  }
}

void __41__SYActivityObserver_loadSynapseObserver__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = SYIsBacklinkingSupportedForDevice();
  v1 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_INFO);
  if (v0)
  {
    if (v2)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_225901000, v1, OS_LOG_TYPE_INFO, "ActivityObserver: Loading observer.", &v9, 2u);
    }

    v1 = +[SYActivityObserver sharedInstance];
    [getUAUserActivityClass() addUserActivityObserver:v1];
    [v1 registerForAppStateNotifications];
  }

  else if (v2)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_225901000, v1, OS_LOG_TYPE_INFO, "ActivityObserver: Backlinking is disabled for current device.", &v9, 2u);
  }

  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = SYIsReturnToSenderAllowed();
  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  v7 = os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_225901000, &v6->super, OS_LOG_TYPE_DEFAULT, "Load document workflows observer for bundle: %@", &v9, 0xCu);
    }

    v6 = objc_alloc_init(SYDocumentWorkflowsActivityObserver);
    [(SYDocumentWorkflowsActivityObserver *)v6 registerForAppStateNotifications];
    [getUAUserActivityClass() addUserActivityObserver:v6];
  }

  else if (v7)
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_225901000, &v6->super, OS_LOG_TYPE_DEFAULT, "Skip document workflows observer for bundle: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForAppStateNotifications
{
  if (!self->_appStateObserver)
  {
    objc_initWeak(&location, self);
    v3 = [SYApplicationStateObserver alloc];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SYActivityObserver_registerForAppStateNotifications__block_invoke;
    v8[3] = &unk_27856BC18;
    objc_copyWeak(&v9, &location);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__SYActivityObserver_registerForAppStateNotifications__block_invoke_2;
    v6[3] = &unk_27856BC18;
    objc_copyWeak(&v7, &location);
    v4 = [(SYApplicationStateObserver *)v3 initWithBecomeActiveHandler:v8 resignActiveHandler:v6];
    appStateObserver = self->_appStateObserver;
    self->_appStateObserver = v4;

    [(SYApplicationStateObserver *)self->_appStateObserver registerForAppStateNotifications];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SYActivityObserver sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __36__SYActivityObserver_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(SYActivityObserver);

  return MEMORY[0x2821F96F8]();
}

- (SYActivityObserver)init
{
  v7.receiver = self;
  v7.super_class = SYActivityObserver;
  v2 = [(SYActivityObserver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.ActivityObserver", v3);
    observerQueue = v2->__observerQueue;
    v2->__observerQueue = v4;
  }

  return v2;
}

- (id)_defaultActivityObserverContext
{
  v2 = objc_alloc_init(SYActivityObserverContext);
  [(SYActivityObserverContext *)v2 setNeedsCacheUpdate:0];

  return v2;
}

void __54__SYActivityObserver_registerForAppStateNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAppBecomeActive:v3];
}

void __54__SYActivityObserver_registerForAppStateNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAppResignActive:v3];
}

- (void)indexedContentItemsDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SYActivityObserver_indexedContentItemsDidChange__block_invoke;
  block[3] = &unk_27856B880;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__SYActivityObserver_indexedContentItemsDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) appIsActive];
  v3 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v2;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_INFO, "ActivityObserver: Indexed content items did change. App is active: %d", v7, 8u);
  }

  if (v2)
  {
    v4 = objc_alloc_init(SYActivityObserverContext);
    [(SYActivityObserverContext *)v4 setNeedsCacheUpdate:1];
    [*(a1 + 32) _discoverAndProcessActiveUserActivityWithContext:v4];
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = [v5 _defaultActivityObserverContext];
    [v5 _reportActiveUserActivityChangeIfNeeded:0 context:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_reportActiveUserActivityChangeIfNeeded:(id)needed context:(id)context
{
  neededCopy = needed;
  contextCopy = context;
  _observerQueue = [(SYActivityObserver *)self _observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SYActivityObserver__reportActiveUserActivityChangeIfNeeded_context___block_invoke;
  block[3] = &unk_27856B578;
  block[4] = self;
  v12 = neededCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = neededCopy;
  dispatch_async(_observerQueue, block);
}

- (void)_q_reportActiveUserActivityChangeIfNeeded:(id)needed context:(id)context
{
  neededCopy = needed;
  contextCopy = context;
  _observerQueue = [(SYActivityObserver *)self _observerQueue];
  dispatch_assert_queue_V2(_observerQueue);

  if (neededCopy)
  {
    v9 = SYIsLinkableUserActivity(neededCopy);
    _uniqueIdentifier = [neededCopy _uniqueIdentifier];
    v11 = [[SYUserActivityIdentifierInfo alloc] initWithUserActivity:neededCopy];
  }

  else
  {
    v9 = 0;
    _uniqueIdentifier = 0;
    v11 = 0;
  }

  _defaultsClient = [(SYActivityObserver *)self _defaultsClient];

  if (!_defaultsClient)
  {
    v13 = objc_alloc_init(SYDefaultsClient);
    [(SYActivityObserver *)self set_defaultsClient:v13];
  }

  _defaultsClient2 = [(SYActivityObserver *)self _defaultsClient];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__SYActivityObserver__q_reportActiveUserActivityChangeIfNeeded_context___block_invoke;
  v18[3] = &unk_27856C588;
  v19 = v11;
  selfCopy = self;
  v23 = v9;
  v21 = _uniqueIdentifier;
  v22 = contextCopy;
  v15 = contextCopy;
  v16 = _uniqueIdentifier;
  v17 = v11;
  [_defaultsClient2 indicatorCoverageWithCompletion:v18];
}

void __72__SYActivityObserver__q_reportActiveUserActivityChangeIfNeeded_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[SYDefaults shouldDisableQuickNoteTemporarily];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SYActivityObserver__q_reportActiveUserActivityChangeIfNeeded_context___block_invoke_2;
  block[3] = &unk_27856C560;
  v13 = a2;
  v14 = v4;
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 40);
  v9 = v5;
  v6 = *(a1 + 48);
  v15 = *(a1 + 64);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__SYActivityObserver__q_reportActiveUserActivityChangeIfNeeded_context___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) && (*(a1 + 72) & 1) == 0 && (!*(a1 + 32) || [*(*(a1 + 40) + 8) appIsActive]))
  {
    v2 = [*(a1 + 40) _observerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SYActivityObserver__q_reportActiveUserActivityChangeIfNeeded_context___block_invoke_3;
    block[3] = &unk_27856C538;
    v4 = *(a1 + 32);
    v3 = v4.i64[0];
    v6 = vextq_s8(v4, v4, 8uLL);
    v7 = *(a1 + 48);
    v9 = *(a1 + 73);
    v8 = *(a1 + 56);
    dispatch_async(v2, block);
  }
}

- (void)_discoverAndProcessActiveUserActivityWithContext:(id)context
{
  contextCopy = context;
  v5 = MEMORY[0x277CC1EF0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SYActivityObserver__discoverAndProcessActiveUserActivityWithContext___block_invoke;
  v7[3] = &unk_27856C5B0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [v5 _syFetchCurrentUserActivityWithCompletion:v7];
}

uint64_t __71__SYActivityObserver__discoverAndProcessActiveUserActivityWithContext___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _reportActiveUserActivityChangeIfNeeded:a2 context:*(result + 40)];
  }

  return result;
}

- (void)q_processActiveUserActivity:(id)activity identifier:(id)identifier linkable:(BOOL)linkable context:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  identifierCopy = identifier;
  contextCopy = context;
  _delayedEvaluationBlock = [(SYActivityObserver *)self _delayedEvaluationBlock];

  if (_delayedEvaluationBlock)
  {
    v14 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_INFO, "ActivityObserver: Cancelled previous scheduled request.", buf, 2u);
    }

    _delayedEvaluationBlock2 = [(SYActivityObserver *)self _delayedEvaluationBlock];
    dispatch_block_cancel(_delayedEvaluationBlock2);

    [(SYActivityObserver *)self set_delayedEvaluationBlock:0];
  }

  _lastReportedActivityTime = [(SYActivityObserver *)self _lastReportedActivityTime];

  if (_lastReportedActivityTime)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v18 = v17;
    _lastReportedActivityTime2 = [(SYActivityObserver *)self _lastReportedActivityTime];
    [_lastReportedActivityTime2 timeIntervalSinceReferenceDate];
    v21 = v20;

    if (v21 - v18 + 2.0 >= 0.1)
    {
      v22 = v21 - v18 + 2.0;
    }

    else
    {
      v22 = 0.1;
    }
  }

  else
  {
    v22 = 0.1;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SYActivityObserver_q_processActiveUserActivity_identifier_linkable_context___block_invoke;
  block[3] = &unk_27856C538;
  block[4] = self;
  linkableCopy = linkable;
  v23 = identifierCopy;
  v34 = v23;
  v35 = activityCopy;
  v36 = contextCopy;
  v24 = contextCopy;
  v25 = activityCopy;
  v26 = dispatch_block_create(0, block);
  [(SYActivityObserver *)self set_delayedEvaluationBlock:v26];

  v27 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = @"None";
    if (v23)
    {
      v28 = v23;
    }

    *buf = 134218242;
    v39 = v22;
    v40 = 2112;
    v41 = v28;
    _os_log_impl(&dword_225901000, v27, OS_LOG_TYPE_INFO, "ActivityObserver: Scheduling request after %0.2fs for activity: %@.", buf, 0x16u);
  }

  v29 = dispatch_time(0, (v22 * 1000000000.0));
  _observerQueue = [(SYActivityObserver *)self _observerQueue];
  _delayedEvaluationBlock3 = [(SYActivityObserver *)self _delayedEvaluationBlock];
  dispatch_after(v29, _observerQueue, _delayedEvaluationBlock3);

  v32 = *MEMORY[0x277D85DE8];
}

void __78__SYActivityObserver_q_processActiveUserActivity_identifier_linkable_context___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) set_delayedEvaluationBlock:0];
  if (*(a1 + 64))
  {
    v2 = 1;
LABEL_5:
    [*(a1 + 32) set_lastReportedActivityWasLinkable:v2 & 1];
    v3 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) set_lastReportedActivityTime:v3];

    v4 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      if (!v5)
      {
        v5 = @"None";
      }

      v6 = @"N";
      if (*(a1 + 64))
      {
        v6 = @"Y";
      }

      *buf = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_INFO, "ActivityObserver: Starting request for activity: %@, linkable: %@.", buf, 0x16u);
    }

    v7 = [*(a1 + 32) _client];

    if (!v7)
    {
      v8 = objc_alloc_init(SYBacklinkMonitorClient);
      [*(a1 + 32) set_client:v8];
    }

    if (*(a1 + 64) == 1)
    {
      v9 = *(a1 + 48);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 _client];
    v13 = *(a1 + 56);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__SYActivityObserver_q_processActiveUserActivity_identifier_linkable_context___block_invoke_25;
    v16[3] = &unk_27856C5D8;
    v17 = *(a1 + 40);
    [v12 notifyActiveUserActivityDidChange:v11 context:v13 completion:v16];

LABEL_17:
    goto LABEL_18;
  }

  if ([*(a1 + 32) _lastReportedActivityWasLinkable])
  {
    v2 = *(a1 + 64);
    goto LABEL_5;
  }

  if (*(a1 + 48) && (*(a1 + 64) & 1) == 0)
  {
    v11 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_INFO, "ActivityObserver: Current activity %@ is not linkable, ignoring.", buf, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
}

void __78__SYActivityObserver_q_processActiveUserActivity_identifier_linkable_context___block_invoke_25(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      v5 = @"None";
    }

    v6 = @"Y";
    if (!a2)
    {
      v6 = @"N";
    }

    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_INFO, "ActivityObserver: Finished request for activity: %@. Success: %@", &v9, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SYRemoteCurrentActivityDidChange", 0, 0, 1u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)userActivityDidBecomeCurrent:(id)current current:(BOOL)a4
{
  v4 = a4;
  currentCopy = current;
  v7 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_INFO, "ActivityObserver: userActivityDidBecomeCurrent", v11, 2u);
  }

  if (v4)
  {
    v8 = currentCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _defaultActivityObserverContext = [(SYActivityObserver *)self _defaultActivityObserverContext];
  [_defaultActivityObserverContext setNeedsCacheUpdate:1];
  [(SYActivityObserver *)self _reportActiveUserActivityChangeIfNeeded:v9 context:_defaultActivityObserverContext];
}

- (void)userActivityPersistentIdentifierWasChanged:(id)changed persistentIdentifier:(id)identifier previousValue:(id)value
{
  changedCopy = changed;
  v7 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_INFO, "ActivityObserver: userActivityPersistentIdentifierWasChanged", v9, 2u);
  }

  if (SYIsCurrentLocalUserActivity(changedCopy))
  {
    _defaultActivityObserverContext = [(SYActivityObserver *)self _defaultActivityObserverContext];
    [(SYActivityObserver *)self _reportActiveUserActivityChangeIfNeeded:changedCopy context:_defaultActivityObserverContext];
  }
}

- (void)userActivityTargetContentIdentifierWasChanged:(id)changed targetContentIdentifier:(id)identifier previousValue:(id)value
{
  changedCopy = changed;
  v7 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_INFO, "ActivityObserver: userActivityTargetContentIdentifierWasChanged", v9, 2u);
  }

  if (SYIsCurrentLocalUserActivity(changedCopy))
  {
    _defaultActivityObserverContext = [(SYActivityObserver *)self _defaultActivityObserverContext];
    [(SYActivityObserver *)self _reportActiveUserActivityChangeIfNeeded:changedCopy context:_defaultActivityObserverContext];
  }
}

- (void)userActivityWebpageURLWasChanged:(id)changed webpageURL:(id)l previousValue:(id)value
{
  changedCopy = changed;
  v7 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_INFO, "ActivityObserver: userActivityWebpageURLWasChanged", v9, 2u);
  }

  if (SYIsCurrentLocalUserActivity(changedCopy))
  {
    _defaultActivityObserverContext = [(SYActivityObserver *)self _defaultActivityObserverContext];
    [_defaultActivityObserverContext setNeedsCacheUpdate:1];
    [(SYActivityObserver *)self _reportActiveUserActivityChangeIfNeeded:changedCopy context:_defaultActivityObserverContext];
  }
}

- (void)userActivityCanonicalURLWasChanged:(id)changed
{
  changedCopy = changed;
  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_INFO, "ActivityObserver: userActivityCanonicalURLWasChanged", v7, 2u);
  }

  if (SYIsCurrentLocalUserActivity(changedCopy))
  {
    _defaultActivityObserverContext = [(SYActivityObserver *)self _defaultActivityObserverContext];
    [(SYActivityObserver *)self _reportActiveUserActivityChangeIfNeeded:changedCopy context:_defaultActivityObserverContext];
  }
}

- (void)_handleAppBecomeActive:(id)active
{
  v10 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = activeCopy;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_INFO, "ActivityObserver: app is active %@", &v8, 0xCu);
  }

  _defaultActivityObserverContext = [(SYActivityObserver *)self _defaultActivityObserverContext];
  [(SYActivityObserver *)self _discoverAndProcessActiveUserActivityWithContext:_defaultActivityObserverContext];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleAppResignActive:(id)active
{
  v10 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = activeCopy;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_INFO, "ActivityObserver: app is inactive %@", &v8, 0xCu);
  }

  _defaultActivityObserverContext = [(SYActivityObserver *)self _defaultActivityObserverContext];
  [(SYActivityObserver *)self _reportActiveUserActivityChangeIfNeeded:0 context:_defaultActivityObserverContext];

  v7 = *MEMORY[0x277D85DE8];
}

@end