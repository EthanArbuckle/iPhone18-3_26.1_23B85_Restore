@interface VUIMetricsController
+ (id)_baseToVPAFMapping;
+ (id)sharedInstance;
- (BOOL)arePageEventsIdentical:(id)a3 previousPage:(id)a4;
- (NSDictionary)baseFields;
- (NSDictionary)baseFieldsForVPAF;
- (NSDictionary)profileSelectorPageMetrics;
- (NSDictionary)sidebarPageMetrics;
- (NSDictionary)tabBarPageMetrics;
- (VUIMetricsController)init;
- (VUIScopedBackgroundTask)backgroundTask;
- (id)_createDataAddingBaseAndPageFieldsToEventData:(id)a3 forEventType:(id)a4;
- (id)_getCurrentMetricsTopic;
- (id)_getLocationAuthorizationStatus;
- (id)_processPageFields:(id)a3 forEventType:(id)a4;
- (id)createEventTime;
- (id)extractPageMetricsFromEventData:(id)a3;
- (id)getBasePerfData:(BOOL)a3;
- (id)getMetricsEnhancedBuyParams:(id)a3;
- (id)getMetricsOverlayForBundleOffer;
- (id)getMetricsOverlayForWebContainer;
- (id)getRecentEventsForDebuggerUI;
- (id)iTunesLibraryPlaybackMediaMetricsForAdamID:(id)a3 mediaType:(id)a4;
- (void)_handleGroupActivitiesSessionStateChange:(id)a3;
- (void)_handleLocationChange:(id)a3;
- (void)_handleServerConfigChange:(id)a3;
- (void)_handleTabBarChange:(id)a3;
- (void)_handleWLKAppLibChange:(id)a3;
- (void)_handleWLKSettingsDidChange:(id)a3;
- (void)_initializeBaseFields;
- (void)_recordAccount;
- (void)_recordEnter:(id)a3;
- (void)_recordEvent:(id)a3 withEventData:(id)a4 pageData:(id)a5;
- (void)_recordEventWithJet:(id)a3 withEventData:(id)a4 pageData:(id)a5;
- (void)_recordExit:(id)a3;
- (void)_removeBaseFieldsForKeys:(id)a3;
- (void)_saveRecentEvents:(id)a3;
- (void)_setGDPRConsentStatus:(BOOL)a3;
- (void)_updateBaseFieldsWithData:(id)a3;
- (void)flushMetrics;
- (void)forceGDPRConsentStatus:(BOOL)a3;
- (void)recordAppBecameActive;
- (void)recordAppLaunched;
- (void)recordAppWillBackground;
- (void)recordAppWillTerminate;
- (void)recordDialog:(id)a3;
- (void)recordImpressions:(id)a3 pageData:(id)a4;
- (void)recordLog:(id)a3;
- (void)recordMedia:(id)a3;
- (void)recordOpenUrlLaunchWithExtURL:(id)a3 andOptions:(id)a4;
- (void)recordPage:(id)a3;
- (void)recordPageChange:(id)a3;
- (void)recordPerfEvent:(id)a3;
- (void)recordRawEvent:(id)a3;
- (void)registerForBaseFieldChanges;
- (void)setBackgroundTask:(id)a3;
- (void)setBaseFields:(id)a3;
- (void)setLastRecordedPageEventData:(id)a3;
- (void)setupMetricsController;
- (void)updateGDPRConsentStatus;
@end

@implementation VUIMetricsController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VUIMetricsController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once_500 != -1)
  {
    dispatch_once(&sharedInstance_once_500, block);
  }

  v2 = sharedInstance_sharedInstance_501;

  return v2;
}

- (void)setupMetricsController
{
  v24 = *MEMORY[0x1E69E9840];
  self->_isAppJustLaunched = 1;
  *&self->_shouldRecordEnter = 1;
  self->_shouldRecordCachedAccount = 0;
  v3 = VUIMetrics_serialQueueLabel;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  self->_metricsDataDispatchSQ = v5;

  self->_isInternalBuild = os_variant_has_internal_content();
  v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:30];
  savedRecentEvents = self->_savedRecentEvents;
  self->_savedRecentEvents = v7;

  v9 = [VUIMetricsLocalRecorder alloc];
  v10 = +[VUIMetricsDiskManager sharedInstance];
  v11 = [(VUIMetricsLocalRecorder *)v9 initWithStorageManager:v10];
  localMetricsRecorder = self->_localMetricsRecorder;
  self->_localMetricsRecorder = v11;

  v13 = [MEMORY[0x1E69D5920] activeOrLocalAccount];
  self->_isGDPRConsented = [MEMORY[0x1E698C790] acknowledgementNeededForPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:v13] ^ 1;
  v14 = VUIDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    isGDPRConsented = self->_isGDPRConsented;
    *buf = 67109120;
    v23 = isGDPRConsented;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "VUIMetricsController: setupMetricsController; GDPR Consented=%d", buf, 8u);
  }

  dispatch_async(self->_metricsDataDispatchSQ, &__block_literal_global_127);
  v16 = [MEMORY[0x1E695DF70] array];
  cachedGroupEvents = self->_cachedGroupEvents;
  self->_cachedGroupEvents = v16;

  v18 = objc_opt_new();
  cachedUnifiedMessagingImpressions = self->_cachedUnifiedMessagingImpressions;
  self->_cachedUnifiedMessagingImpressions = v18;

  v20 = self->_metricsDataDispatchSQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VUIMetricsController_setupMetricsController__block_invoke_2;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(v20, block);
  [(VUIMetricsController *)self registerForBaseFieldChanges];
}

void __38__VUIMetricsController_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = VUISignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MetricsController.Init", "", buf, 2u);
  }

  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedInstance_sharedInstance_501;
  sharedInstance_sharedInstance_501 = v3;

  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MetricsController.Init", "", v6, 2u);
  }
}

- (VUIMetricsController)init
{
  v5.receiver = self;
  v5.super_class = VUIMetricsController;
  v2 = [(VUIMetricsController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VUIMetricsController *)v2 setupMetricsController];
  }

  return v3;
}

- (void)registerForBaseFieldChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleTabBarChange_ name:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:0];

  v4 = _os_feature_enabled_impl();
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = v5;
  if (v4)
  {
    v7 = +[_TtC8VideosUI40VUIUTSConfigurationProxyNotificationName configurationDidChange];
    [v6 addObserver:self selector:sel__handleServerConfigChange_ name:v7 object:0];
  }

  else
  {
    [v5 addObserver:self selector:sel__handleServerConfigChange_ name:*MEMORY[0x1E69E1690] object:0];
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__handleWLKSettingsDidChange_ name:*MEMORY[0x1E69E1728] object:0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__handleWLKAppLibChange_ name:*MEMORY[0x1E69E1668] object:0];

  if (_os_feature_enabled_impl())
  {
    v10 = +[_TtC8VideosUI43VUILocationServiceProxyObjCNotificationName locationDidChange];
  }

  else
  {
    v10 = *MEMORY[0x1E69E16D0];
  }

  v13 = v10;
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel__handleLocationChange_ name:v13 object:0];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:self selector:sel__handleGroupActivitiesSessionStateChange_ name:@"GroupActivitiesSessionStateDidChangeNotification" object:0];
}

- (void)_initializeBaseFields
{
  v3 = [MEMORY[0x1E69E15D0] sharedSettings];
  v4 = [MEMORY[0x1E69E1620] currentEnvironment];
  v5 = [v4 entitlements];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__25;
  v28 = __Block_byref_object_dispose__25;
  v29 = @"unknown";
  v7 = dispatch_semaphore_create(0);
  v8 = +[VUIFeaturesConfiguration sharedInstance];
  v9 = [v8 launchConfig];
  v10 = [v9 useConfigCacheIgnoreExpiry];

  if (v10)
  {
    v11 = 5;
  }

  else
  {
    v11 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__VUIMetricsController__initializeBaseFields__block_invoke;
    v22[3] = &unk_1E8735240;
    v23[1] = &v24;
    v23[0] = v7;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:v10 ^ 1u completion:v22];
    v12 = v23;
  }

  else
  {
    v13 = [MEMORY[0x1E69E1508] sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__VUIMetricsController__initializeBaseFields__block_invoke_545;
    v20[3] = &unk_1E8735268;
    v21[1] = &v24;
    v21[0] = v7;
    [v13 fetchConfigurationWithOptions:0 cachePolicy:v11 queryParameters:0 completion:v20];
    v12 = v21;
  }

  v14 = [v3 consentedBrands];
  [v6 vui_setObjectIfNotNil:v14 forKey:@"cbids"];

  v15 = [v3 deniedBrands];
  [v6 vui_setObjectIfNotNil:v15 forKey:@"dbids"];

  v16 = [v5 objectForKey:@"Installed"];
  [v6 vui_setObjectIfNotNil:v16 forKey:@"ibids"];

  v17 = [v5 objectForKey:@"Subscribed"];
  [v6 vui_setObjectIfNotNil:v17 forKey:@"sbids"];

  v18 = [(VUIMetricsController *)self _getLocationAuthorizationStatus];
  [v6 setObject:v18 forKey:@"locationAuthorization"];

  v19 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v7, v19);
  [v6 vui_setObjectIfNotNil:v25[5] forKey:@"vppaState"];
  [v6 setObject:MEMORY[0x1E695E110] forKey:@"sharedActivity"];
  [(VUIMetricsController *)self setBaseFields:v6];

  _Block_object_dispose(&v24, 8);
}

- (id)_getLocationAuthorizationStatus
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[_TtC8VideosUI27VUILocationServiceProxyObjC authorizationStatus];
    v3 = @"approved";
    v4 = @"denied";
  }

  else
  {
    v5 = [MEMORY[0x1E69E1540] defaultLocationManager];
    v2 = [v5 authorizationStatus];

    v3 = @"denied";
    v4 = @"approved";
  }

  if (v2 != 1)
  {
    v4 = @"undetermined";
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (NSDictionary)baseFields
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_baseFields;
  objc_sync_exit(v2);

  return v3;
}

- (void)recordAppBecameActive
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    isAppJustLaunched = self->_isAppJustLaunched;
    *buf = 67109120;
    v12 = isAppJustLaunched;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIMetricsController: recordAppBecameActive _isAppJustLaunched=%hhd", buf, 8u);
  }

  if (self->_isAppJustDeepLinkOpened)
  {
    self->_isAppJustDeepLinkOpened = 0;
  }

  else
  {
    if (self->_isAppJustLaunched)
    {
      v5 = @"launch";
    }

    else
    {
      v5 = @"taskSwitch";
    }

    v9 = @"type";
    v10 = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = v5;
    v8 = [v6 dictionaryWithObjects:&v10 forKeys:&v9 count:1];

    [(VUIMetricsController *)self _recordEnter:v8, v9, v10];
  }
}

- (id)iTunesLibraryPlaybackMediaMetricsForAdamID:(id)a3 mediaType:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[VUIFeaturesConfiguration sharedInstance];
  v8 = [v7 nowPlayingConfig];
  v9 = [v8 allowQOSReportingForiTunesLibraryPlayback];

  v10 = 0;
  if (v5 && v9)
  {
    if (([v5 isEqualToNumber:&unk_1F5E5D8D8] & 1) == 0 && objc_msgSend(v6, "length"))
    {
      if ([v6 isEqualToString:*MEMORY[0x1E69D5EB8]] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69D5EC8]))
      {
        v11 = @"movie";
LABEL_8:
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"a=%@:s=%@:e=%@", v5, *MEMORY[0x1E69E1688], v11];
        v14[0] = @"MediaIdentifier";
        v14[1] = @"iTunesServiceMonitoringKey";
        v15[0] = v12;
        v15[1] = MEMORY[0x1E695E118];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

        goto LABEL_12;
      }

      if ([v6 isEqualToString:*MEMORY[0x1E69D5ED0]])
      {
        v11 = @"episode";
        goto LABEL_8;
      }
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (id)_getCurrentMetricsTopic
{
  if (self->_isGDPRConsented)
  {
    return @"xp_amp_tv_main";
  }

  else
  {
    return @"xp_amp_tv_unidentified";
  }
}

- (void)recordAppLaunched
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIMetricsController: recordAppLaunched", v5, 2u);
  }

  v6 = @"type";
  v7[0] = @"launch";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(VUIMetricsController *)self _recordEnter:v4];
}

- (void)recordOpenUrlLaunchWithExtURL:(id)a3 andOptions:(id)a4
{
  v31[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  self->_isAppJustDeepLinkOpened = 1;
  if (self->_isAppJustLaunched)
  {
    v8 = @"linkedLaunch";
  }

  else
  {
    v8 = @"linkedTaskSwitch";
  }

  v9 = v8;
  v10 = [v7 objectForKey:*MEMORY[0x1E69DDB68]];
  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
    v12 = +[VUIInterfaceFactory sharedInstance];
    v13 = [v12 openURLHandler];
    v10 = [v13 queryParameterStringfromURL:v11 parameter:@"refApp"];

    if (v10)
    {
      v14 = v10;
    }
  }

  v15 = [v7 vui_dictionaryForKey:*MEMORY[0x1E69DDB58]];
  v16 = [v15 vui_stringForKey:*MEMORY[0x1E6963598]];
  v17 = @"navigate";
  if (!v6)
  {
    v17 = @"default";
  }

  v18 = v17;
  if (([(__CFString *)v6 containsString:@"?play"]& 1) != 0 || [(__CFString *)v6 containsString:@"action=play"])
  {

    v18 = @"play";
  }

  if (v10)
  {
    v19 = v10;
  }

  else
  {
    v19 = &stru_1F5DB25C0;
  }

  v30[0] = @"refApp";
  v30[1] = @"extRefUrl";
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = &stru_1F5DB25C0;
  }

  v31[0] = v19;
  v31[1] = v20;
  v30[2] = @"openUrl";
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v21 = &stru_1F5DB25C0;
  }

  v31[2] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  [(VUIMetricsController *)self setCachedOpenUrlData:v22];

  v23 = MEMORY[0x1E695DF90];
  v28[0] = @"type";
  v28[1] = @"actionType";
  v29[0] = v9;
  v29[1] = v18;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v25 = [v23 dictionaryWithDictionary:v24];

  v26 = [(VUIMetricsController *)self cachedOpenUrlData];
  [v25 addEntriesFromDictionary:v26];

  v27 = [v25 copy];
  [(VUIMetricsController *)self _recordEnter:v27];
}

- (void)_recordEnter:(id)a3
{
  if (self->_shouldRecordEnter)
  {
    [(VUIMetricsController *)self _recordEvent:@"enter" withEventData:a3];
    *&self->_shouldRecordEnter = 256;
    self->_isAppJustLaunched = 0;
  }
}

- (void)recordAppWillTerminate
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"type";
  v5[0] = @"quit";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(VUIMetricsController *)self _recordExit:v3];
}

- (void)recordAppWillBackground
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"type";
  v7[1] = @"destinationUrl";
  v8[0] = @"taskSwitch";
  v3 = [(VUIMetricsController *)self exitEventDestinationUrl];
  v4 = v3;
  v5 = &stru_1F5DB25C0;
  if (v3)
  {
    v5 = v3;
  }

  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(VUIMetricsController *)self _recordExit:v6];

  [(VUIMetricsController *)self setExitEventDestinationUrl:0];
}

- (void)_recordExit:(id)a3
{
  shouldRecordExit = self->_shouldRecordExit;
  if (shouldRecordExit)
  {
    *&self->_shouldRecordEnter = shouldRecordExit;
    v6 = a3;
    [(VUIMetricsController *)self setShouldFlushMetrics:1];
    [(VUIMetricsController *)self _recordEvent:@"exit" withEventData:v6];
  }
}

- (void)recordPage:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isGDPRConsented || [(VUIMetricsController *)self _isSiri])
  {
    v5 = [(VUIMetricsController *)self lastEventType];
    v6 = [v5 isEqualToString:@"page"];

    if (v6 && ([v4 generateMetricsDataDictionary], v7 = objc_claimAutoreleasedReturnValue(), -[VUIMetricsController lastEventData](self, "lastEventData"), v8 = objc_claimAutoreleasedReturnValue(), v9 = -[VUIMetricsController arePageEventsIdentical:previousPage:](self, "arePageEventsIdentical:previousPage:", v7, v8), v8, v7, v9))
    {
      v10 = [(VUIMetricsController *)self lastEventData];
      v11 = [v10 objectForKey:@"pageId"];

      v12 = [(VUIMetricsController *)self lastEventData];
      v13 = [v12 objectForKey:@"pageType"];

      v14 = VUIDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412546;
        v18 = v11;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "VUIMetricsController: Discarding duplicate page event pageId=%@ pageType=%@", &v17, 0x16u);
      }
    }

    else
    {
      v11 = [v4 generateMetricsDataDictionary];
      [(VUIMetricsController *)self _recordEvent:@"page" withEventData:v11 pageData:v11];
    }
  }

  else
  {
    v15 = VUIDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v4 pageId];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "VUIMetricsController: caching page event until GDPR acceptance pageType:%@", &v17, 0xCu);
    }

    [(VUIMetricsController *)self setGdprCachedPageEvent:v4];
  }
}

- (void)recordPageChange:(id)a3
{
  v4 = [a3 generateMetricsDataDictionary];
  [(VUIMetricsController *)self _recordEvent:@"pageChange" withEventData:v4];
}

- (void)recordDialog:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIMetricsController *)self lastEventType];
  v6 = [v5 isEqualToString:@"dialog"];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v4 objectForKey:@"dialogId"];
  v8 = [v4 objectForKey:@"dialogType"];
  v9 = [(VUIMetricsController *)self lastEventData];
  v10 = [v9 objectForKey:@"dialogId"];

  v11 = [(VUIMetricsController *)self lastEventData];
  v12 = [v11 objectForKey:@"dialogType"];

  if (![v7 isEqualToString:v10] || !objc_msgSend(v8, "isEqualToString:", v12))
  {

LABEL_8:
    [(VUIMetricsController *)self _recordEvent:@"dialog" withEventData:v4];
    goto LABEL_9;
  }

  v13 = VUIDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "VUIMetricsController: Discarding duplicate dialog event dialogId=%@ dialogType=%@", &v14, 0x16u);
  }

LABEL_9:
}

- (void)recordImpressions:(id)a3 pageData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isGDPRConsented)
  {
    [(VUIMetricsController *)self setShouldFlushMetrics:0];
    v8 = [v6 vui_arrayForKey:@"impressions"];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = [(VUIMetricsController *)self cachedUnifiedMessagingImpressions];
      v11 = [v10 copy];

      if (v11 && [v11 count])
      {
        v12 = objc_opt_new();
        [v12 addObjectsFromArray:v9];
        [v12 addObjectsFromArray:v11];
        [(NSMutableArray *)self->_cachedUnifiedMessagingImpressions removeAllObjects];
        v13 = VUIDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v17 = 0;
          _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "VUIMetricsController: adding cached Unified Messaging impressions to impressions event", v17, 2u);
        }

        v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
        v15 = [v12 copy];
        [v14 setValue:v15 forKey:@"impressions"];

        v16 = [v14 copy];
        [(VUIMetricsController *)self _recordEvent:@"impressions" withEventData:v16 pageData:v7];
      }

      else
      {
        [(VUIMetricsController *)self _recordEvent:@"impressions" withEventData:v6 pageData:v7];
      }
    }

    else
    {
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "VUIMetricsController: no impressions found for recordImpressions", buf, 2u);
      }
    }
  }
}

- (void)recordMedia:(id)a3
{
  if (self->_isGDPRConsented)
  {
    [(VUIMetricsController *)self _recordEvent:@"media" withEventData:a3];
  }
}

- (void)_recordAccount
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v9[0] = @"eventType";
  v9[1] = @"type";
  v10[0] = @"account";
  v10[1] = @"consentGranted";
  v9[2] = @"consentType";
  v10[2] = @"GDPR";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(VUIMetricsController *)self cachedOpenUrlData];
  if (v6)
  {

LABEL_4:
    v7 = [(VUIMetricsController *)self cachedOpenUrlData];
    [v5 addEntriesFromDictionary:v7];

    [(VUIMetricsController *)self setCachedOpenUrlData:0];
    self->_shouldRecordCachedAccount = 0;
    goto LABEL_5;
  }

  if (self->_shouldRecordCachedAccount)
  {
    goto LABEL_4;
  }

LABEL_5:
  v8 = [v5 copy];
  [(VUIMetricsController *)self _recordEvent:@"account" withEventData:v8];
}

- (void)recordRawEvent:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"eventType"];
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "VUIMetricsController: received raw event type:[%@]", &v7, 0xCu);
  }

  [(VUIMetricsController *)self _recordEvent:v5 withEventData:v4];
}

- (void)_recordEvent:(id)a3 withEventData:(id)a4 pageData:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(VUIMetricsController *)self isInDebugMode])
  {
    v11 = [(VUIMetricsController *)self baseFields];
    v12 = [v11 vui_BOOLForKey:@"sharedActivity" defaultValue:0];

    v13 = [(VUIMetricsController *)self baseFields];
    v14 = [v13 vui_numberForKey:@"sharedActivityDevicesCurrent"];
    v15 = [v14 integerValue];

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v12;
    }

    if (v16 == 1)
    {
      v17 = [v9 mutableCopy];
      v18 = [(VUIMetricsController *)self createEventTime];
      [(VUIScopedBackgroundTask *)v17 setValue:v18 forKey:@"eventTime"];
      v19 = VUIDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v31 = v8;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_INFO, "VUIMetricsController: caching %@ event with timestamp %@  until shared activity data is available", buf, 0x16u);
      }

      v20 = self;
      objc_sync_enter(v20);
      v21 = [[VUICachedMetricsEvent alloc] initWithEventType:v8 eventData:v9];
      v22 = [(VUIMetricsController *)v20 cachedGroupEvents];
      [v22 addObject:v21];

      objc_sync_exit(v20);
    }

    else
    {
      if (([v8 isEqualToString:@"pageRender"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"log") & 1) == 0)
      {
        [(VUIMetricsController *)self setLastEventType:v8];
        [(VUIMetricsController *)self setLastEventData:v9];
      }

      v23 = [(VUIMetricsController *)self currentTabIdentifier];
      [(VUIMetricsController *)self setLastTabIdentifier:v23];

      v17 = [[VUIScopedBackgroundTask alloc] initWithIdentifier:@"VUIMetricsBackgroundTask" expirationHandler:0];
      [(VUIMetricsController *)self setBackgroundTask:v17];
      metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__VUIMetricsController__recordEvent_withEventData_pageData___block_invoke;
      v25[3] = &unk_1E872E5D8;
      v26 = v8;
      v27 = v9;
      v28 = self;
      v29 = v10;
      dispatch_async(metricsDataDispatchSQ, v25);

      v18 = v26;
    }
  }
}

void __60__VUIMetricsController__recordEvent_withEventData_pageData___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"page"])
  {
    v2 = [*(a1 + 40) vui_stringForKey:@"pageContext"];
    if (([v2 isEqualToString:@"tab"] & 1) == 0)
    {
      v3 = [*(a1 + 40) vui_stringForKey:@"pageContext"];
      if (([v3 isEqualToString:@"tabBar"] & 1) == 0)
      {
        v4 = [*(a1 + 40) vui_stringForKey:@"pageType"];
        v5 = [v4 isEqualToString:@"PreRoll"];

        if (v5)
        {
          goto LABEL_11;
        }

        v6 = [*(a1 + 40) vui_stringForKey:@"pageContext"];
        v7 = v6;
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = [*(a1 + 48) currentTabIdentifier];
        }

        v2 = v8;

        v3 = [VUIMetricsPageEventData createWithMetricsData:*(a1 + 40) pageContext:v2];
        [*(a1 + 48) setLastRecordedPageEventData:v3];
      }
    }
  }

LABEL_11:
  v11 = [*(a1 + 48) _createDataAddingBaseAndPageFieldsToEventData:*(a1 + 40) forEventType:*(a1 + 32)];
  if ([*(a1 + 32) isEqualToString:@"pageRender"])
  {
    v9 = [MEMORY[0x1E69DF6E0] sharedInstance];
    v10 = [v9 pagePerformanceEnabled];

    if (v10)
    {
      [*(*(a1 + 48) + 136) recordPagePerfRenderEventWithVuiDictionary:v11];
    }
  }

  else
  {
    [*(a1 + 48) _recordEventWithJet:*(a1 + 32) withEventData:v11 pageData:*(a1 + 56)];
  }
}

- (void)_recordEventWithJet:(id)a3 withEventData:(id)a4 pageData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_isGDPRConsented)
  {
    v12 = @"xp_amp_tv_unidentified";
    goto LABEL_9;
  }

  if (![v8 isEqualToString:@"pageRender"])
  {
    if ([v8 isEqualToString:@"log"])
    {
      v12 = @"xp_amp_tv_log";
    }

    else
    {
      v12 = @"xp_amp_tv_main";
    }

LABEL_9:
    v11 = [(VUIMetricsController *)self lastRecordedPageEventData];
    if (v10)
    {
      v13 = v10;
      goto LABEL_15;
    }

    v14 = [v9 vui_stringForKey:@"pageType"];
    if ([v14 isEqualToString:@"PreRoll"])
    {
    }

    else
    {
      v15 = [v9 vui_stringForKey:@"pageType"];
      v16 = [v15 isEqualToString:@"MediaPlayer"];

      if (!v16)
      {
        v20 = [v9 vui_stringForKey:@"pageType"];
        v21 = [v20 isEqualToString:@"Tab"];

        if (v21)
        {
          v13 = [(VUIMetricsController *)self sidebarPageMetrics];
        }

        else
        {
          v22 = [v9 vui_stringForKey:@"pageType"];
          v23 = [v22 isEqualToString:@"TabBar"];

          if (v23)
          {
            v13 = [(VUIMetricsController *)self tabBarPageMetrics];
          }

          else
          {
            v24 = [v9 vui_stringForKey:@"pageType"];
            v25 = [v24 isEqualToString:@"ProfileSelector"];

            if (!v25)
            {
              if (v11)
              {
                v26 = [v9 vui_stringForKey:@"pageId"];
                if (v26 && (-[NSObject pageId](v11, "pageId"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v26 isEqualToString:v27], v27, (v28 & 1) == 0))
                {
                  v30 = VUIDefaultLogObject();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUIMetricsController: mismatch of lastPageEvent data and page data embedded in event. extracting embedded data ", buf, 2u);
                  }

                  v29 = [(VUIMetricsController *)self extractPageMetricsFromEventData:v9];
                }

                else
                {
                  v29 = [v11 generateMetricsDataDictionary];
                }

                v31 = v29;
                v17 = [(VUIMetricsController *)self _processPageFields:v29 forEventType:v8];
              }

              else
              {
                v17 = MEMORY[0x1E695E0F8];
              }

              goto LABEL_16;
            }

            v13 = [(VUIMetricsController *)self profileSelectorPageMetrics];
          }
        }

LABEL_15:
        v17 = v13;
LABEL_16:
        v18 = +[VUIMetricsJetEngine sharedInstance];
        v19 = [v18 recordEventWithTopic:v12 eventType:v8 eventData:v9 pageData:v17];

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke;
        v32[3] = &unk_1E87321A0;
        v32[4] = self;
        [v19 addFinishBlock:v32];

        goto LABEL_17;
      }
    }

    v13 = [(VUIMetricsController *)self extractPageMetricsFromEventData:v9];
    goto LABEL_15;
  }

  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "Tried to publish render event to Jet which should be handled by PageRenderMetricsPresenter. Ignoring.", buf, 2u);
  }

LABEL_17:
}

void __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v8 = *(*(a1 + 32) + 72);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke_529;
    v11[3] = &unk_1E872D990;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    dispatch_async(v8, v11);
    v7 = v12;
  }
}

uint64_t __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke_529(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _saveRecentEvents:?];
  }

  v2 = *(a1 + 40);

  return [v2 setBackgroundTask:0];
}

- (void)setLastRecordedPageEventData:(id)a3
{
  v11 = a3;
  v4 = [v11 pageId];
  v5 = [v11 pageType];
  if ([(__CFString *)v4 length]|| [(__CFString *)v5 length])
  {
    v6 = [v11 eventData];
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = &stru_1F5DB25C0;
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &stru_1F5DB25C0;
    }

    v9 = [VUIMetricsPageEventData createWithPageId:v7 andPageType:v8 andEventData:v6];
    lastRecordedPageEventData = self->_lastRecordedPageEventData;
    self->_lastRecordedPageEventData = v9;
  }
}

- (void)recordPerfEvent:(id)a3
{
  v4 = a3;
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__VUIMetricsController_recordPerfEvent___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(metricsDataDispatchSQ, v7);
}

void __40__VUIMetricsController_recordPerfEvent___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 11) == 1)
  {
    v7 = [*(a1 + 40) mutableCopy];
    v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "shouldPostAppLaunchData")}];
    [v7 setValue:v2 forKey:@"isAppLaunch"];

    if ([*(a1 + 32) shouldPostAppLaunchData])
    {
      [*(a1 + 32) setShouldPostAppLaunchData:0];
      v3 = *(a1 + 32);
      objc_sync_enter(v3);
      v4 = +[VUIPerfMetricsAppLaunchController sharedInstance];
      v5 = [v4 appLaunchData];
      [v7 addEntriesFromDictionary:v5];

      objc_sync_exit(v3);
    }

    [*(a1 + 32) _recordEvent:@"pageRender" withEventData:v7];
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "No perf event - GDPR not consented", buf, 2u);
    }
  }
}

- (id)getBasePerfData:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = +[VUIPerfMetricsAppLaunchController sharedInstance];
    v6 = [v5 appLaunchData];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v7 setValue:v8 forKey:@"isAppLaunch"];

  v9 = [(VUIMetricsController *)self _createDataAddingBaseAndPageFieldsToEventData:v7 forEventType:@"pageRender"];

  return v9;
}

- (void)recordLog:(id)a3
{
  v4 = a3;
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__VUIMetricsController_recordLog___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(metricsDataDispatchSQ, v7);
}

void __34__VUIMetricsController_recordLog___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[11] == 1)
  {
    v6 = [v2 _createDataAddingBaseAndPageFieldsToEventData:*(a1 + 40) forEventType:@"log"];
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    [v3 setObject:@"log" forKey:@"eventType"];
    [v3 removeObjectForKey:@"cbids"];
    [v3 removeObjectForKey:@"dbids"];
    [v3 removeObjectForKey:@"ibids"];
    [v3 removeObjectForKey:@"sbids"];
    v4 = [v3 copy];
    [*(a1 + 32) _recordEventWithJet:@"log" withEventData:v4 pageData:0];
  }

  else
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "No log event - GDPR not consented", buf, 2u);
    }
  }
}

void __45__VUIMetricsController__initializeBaseFields__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "TVAS fetch error %@", &v13, 0xCu);
    }
  }

  else
  {
    v6 = [a2 data];
    if (a2)
    {
      a2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
    }

    v7 = objc_alloc(MEMORY[0x1E69E15C0]);
    v8 = [a2 vui_dictionaryForKey:@"data"];
    v9 = [v7 initWithServerResponseDictionary:v8 expirationDate:0 environmentHash:0];

    v10 = [v9 vppaStatusString];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __45__VUIMetricsController__initializeBaseFields__block_invoke_545(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "WLK fetch error %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = [a2 vppaStatusString];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_processPageFields:(id)a3 forEventType:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"enter"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"exit"))
  {
    v7 = [v5 objectForKey:@"sharedContent"];

    if (v7)
    {
      v8 = [v5 mutableCopy];
      [v8 removeObjectForKey:@"sharedContent"];
      v9 = [v8 copy];

      v5 = v9;
    }
  }

  return v5;
}

- (id)_createDataAddingBaseAndPageFieldsToEventData:(id)a3 forEventType:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v6;
  if (v5)
  {
    [v6 addEntriesFromDictionary:v5];
  }

  v8 = [(VUIMetricsController *)self baseFields];

  if (v8)
  {
    v9 = [(VUIMetricsController *)self baseFields];
    [v7 addEntriesFromDictionary:v9];
  }

  v10 = [v5 vui_stringForKey:@"pageContext"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [(VUIMetricsPageEventData *)self->_lastRecordedPageEventData eventData];
    v12 = [v13 vui_stringForKey:@"pageContext"];
  }

  if (![v12 length])
  {
    if ([(VUIMetricsController *)self _isSiri])
    {
      v14 = @"siri";
    }

    else
    {
      v15 = [(VUIMetricsController *)self baseFields];
      v16 = [v15 objectForKey:@"pageContext"];

      v17 = &stru_1F5DB25C0;
      if (v16)
      {
        v17 = v16;
      }

      v14 = v17;

      v12 = v16;
    }

    v12 = v14;
  }

  [v7 setObject:v12 forKey:@"pageContext"];
  v18 = [v5 vui_dictionaryForKey:@"pageDetails"];
  if ([v18 count])
  {
    [v7 setObject:v18 forKey:@"pageDetails"];
  }

  v19 = [v7 objectForKey:@"resourceRevNum"];

  if (!v19)
  {
    v20 = [MEMORY[0x1E695E000] standardUserDefaults];
    v21 = [v20 stringForKey:@"jsVersion"];

    [v7 vui_setObjectIfNotNil:v21 forKey:@"resourceRevNum"];
  }

  return v7;
}

- (id)createEventTime
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSince1970];
  v4 = v3 * 1000.0;

  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithLong:v4];
}

- (NSDictionary)sidebarPageMetrics
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"pageId";
  v4[1] = @"pageType";
  v5[0] = @"Tab";
  v5[1] = @"Tab";
  v4[2] = @"pageContext";
  v5[2] = @"tab";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (NSDictionary)tabBarPageMetrics
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"pageId";
  v4[1] = @"pageType";
  v5[0] = @"TabBar";
  v5[1] = @"TabBar";
  v4[2] = @"pageContext";
  v5[2] = @"tabBar";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (NSDictionary)profileSelectorPageMetrics
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"pageId";
  v4[1] = @"pageType";
  v5[0] = @"ProfileSelector";
  v5[1] = @"ProfileSelector";
  v4[2] = @"pageContext";
  v5[2] = @"tab";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)extractPageMetricsFromEventData:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 vui_stringForKey:@"pageId"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F5DB25C0;
  }

  v7 = v6;

  v8 = [v3 vui_stringForKey:@"pageType"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F5DB25C0;
  }

  v11 = v10;

  v12 = [v3 vui_stringForKey:@"pageContext"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_1F5DB25C0;
  }

  v14 = v13;

  v17[0] = @"pageId";
  v17[1] = @"pageType";
  v18[0] = v7;
  v18[1] = v11;
  v17[2] = @"pageContext";
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  return v15;
}

- (void)forceGDPRConsentStatus:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "GDPR forced status: %d", v6, 8u);
  }

  [(VUIMetricsController *)self _setGDPRConsentStatus:v3];
}

- (void)updateGDPRConsentStatus
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D5920] activeOrLocalAccount];
  v4 = [MEMORY[0x1E698C790] acknowledgementNeededForPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:v3] ^ 1;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "GDPR update: consented %d", v6, 8u);
  }

  [(VUIMetricsController *)self _setGDPRConsentStatus:v4];
}

- (void)_setGDPRConsentStatus:(BOOL)a3
{
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__VUIMetricsController__setGDPRConsentStatus___block_invoke;
  v4[3] = &unk_1E872ECA0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(metricsDataDispatchSQ, v4);
}

void __46__VUIMetricsController__setGDPRConsentStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 11);
  *(v2 + 11) = *(a1 + 40);
  v4 = [MEMORY[0x1E69DF6D0] isTVApp];
  v5 = *(a1 + 32);
  if (v5[11] == 1 && (v3 & 1) == 0 && v4)
  {
    [v5 _recordAccount];
    v6 = [*(a1 + 32) gdprCachedPageEvent];
    if (v6)
    {
      v7 = VUIDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIMetricsController: recording cachedPageEvent after GDPR consent", v12, 2u);
      }

      [*(a1 + 32) recordPage:v6];
      [*(a1 + 32) setGdprCachedPageEvent:0];
    }

    v5 = *(a1 + 32);
  }

  v8 = [v5 baseFields];
  v9 = [v8 mutableCopy];

  v10 = *(a1 + 32);
  v11 = [v9 copy];
  [v10 setBaseFields:v11];

  [*(a1 + 32) _updateBaseFieldsWithData:0];
}

- (void)flushMetrics
{
  v2 = +[VUIMetricsJetEngine sharedInstance];
  [v2 flushMetrics];
}

- (void)setBaseFields:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  baseFields = obj->_baseFields;
  obj->_baseFields = v4;

  objc_sync_exit(obj);
}

- (void)_updateBaseFieldsWithData:(id)a3
{
  v8 = a3;
  v4 = [(VUIMetricsController *)self baseFields];

  if (!v4)
  {
    [(VUIMetricsController *)self _initializeBaseFields];
  }

  v5 = [(VUIMetricsController *)self baseFields];
  v6 = [v5 mutableCopy];

  if (v8)
  {
    [v6 addEntriesFromDictionary:v8];
  }

  v7 = [v6 copy];
  [(VUIMetricsController *)self setBaseFields:v7];
}

- (void)_removeBaseFieldsForKeys:(id)a3
{
  v7 = a3;
  v4 = [(VUIMetricsController *)self baseFields];
  v5 = [v4 mutableCopy];

  if (v7)
  {
    [v5 removeObjectsForKeys:v7];
  }

  v6 = [v5 copy];
  [(VUIMetricsController *)self setBaseFields:v6];
}

- (void)_handleTabBarChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"VUIMetricsTabBarItemNotificationKey"];

  if ([v5 length])
  {
    objc_storeStrong(&self->_currentTabIdentifier, v5);
    metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__VUIMetricsController__handleTabBarChange___block_invoke;
    v7[3] = &unk_1E872D990;
    v7[4] = self;
    v8 = v5;
    dispatch_async(metricsDataDispatchSQ, v7);
  }
}

void __44__VUIMetricsController__handleTabBarChange___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = @"pageContext";
  v5[0] = v1;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 _updateBaseFieldsWithData:v3];
}

- (void)_handleServerConfigChange:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 vui_dictionaryForKey:@"data"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 objectForKey:@"vppaState"];
  [v6 vui_setObjectIfNotNil:v7 forKey:@"vppaState"];

  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__VUIMetricsController__handleServerConfigChange___block_invoke;
  v10[3] = &unk_1E872D990;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(metricsDataDispatchSQ, v10);
}

- (void)_handleWLKSettingsDidChange:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69E15D0] sharedSettings];
  v12[0] = @"cbids";
  v5 = [v4 consentedBrands];
  v13[0] = v5;
  v12[1] = @"dbids";
  v6 = [v4 deniedBrands];
  v13[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VUIMetricsController__handleWLKSettingsDidChange___block_invoke;
  block[3] = &unk_1E872D990;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(metricsDataDispatchSQ, block);
}

- (void)_handleWLKAppLibChange:(id)a3
{
  v4 = [MEMORY[0x1E69E1620] currentEnvironment];
  v5 = [v4 entitlements];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 objectForKey:@"Installed"];
  [v6 vui_setObjectIfNotNil:v7 forKey:@"ibids"];

  v8 = [v5 objectForKey:@"Subscribed"];
  [v6 vui_setObjectIfNotNil:v8 forKey:@"sbids"];

  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__VUIMetricsController__handleWLKAppLibChange___block_invoke;
  v11[3] = &unk_1E872D990;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_async(metricsDataDispatchSQ, v11);
}

- (void)_handleLocationChange:(id)a3
{
  objc_initWeak(&location, self);
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__VUIMetricsController__handleLocationChange___block_invoke;
  v5[3] = &unk_1E872E4B8;
  objc_copyWeak(&v6, &location);
  dispatch_async(metricsDataDispatchSQ, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__VUIMetricsController__handleLocationChange___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = @"locationAuthorization";
  v2 = [WeakRetained _getLocationAuthorizationStatus];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  [WeakRetained _updateBaseFieldsWithData:v3];
}

- (void)_handleGroupActivitiesSessionStateChange:(id)a3
{
  v4 = a3;
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__VUIMetricsController__handleGroupActivitiesSessionStateChange___block_invoke;
  v7[3] = &unk_1E872D990;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(metricsDataDispatchSQ, v7);
}

void __65__VUIMetricsController__handleGroupActivitiesSessionStateChange___block_invoke(uint64_t a1)
{
  v27[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = *(a1 + 40);
  v27[0] = @"sharedActivity";
  v27[1] = @"sharedActivityDevicesCurrent";
  v27[2] = @"sharedActivityDevicesMax";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  [v3 _removeBaseFieldsForKeys:v4];

  v19 = v2;
  [*(a1 + 40) _updateBaseFieldsWithData:v2];
  v5 = [*(a1 + 40) cachedGroupEvents];
  v6 = [v5 copy];

  v7 = [*(a1 + 40) cachedGroupEvents];
  [v7 removeAllObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = VUIDefaultLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v13 eventType];
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "VUIMetricsController: recording cached %@ event", buf, 0xCu);
        }

        v16 = *(a1 + 40);
        v17 = [v13 eventType];
        v18 = [v13 eventData];
        [v16 _recordEvent:v17 withEventData:v18];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }
}

- (VUIScopedBackgroundTask)backgroundTask
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_backgroundTask;
  objc_sync_exit(v2);

  return v3;
}

- (void)setBackgroundTask:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  backgroundTask = obj->_backgroundTask;
  obj->_backgroundTask = v4;

  objc_sync_exit(obj);
}

- (void)_saveRecentEvents:(id)a3
{
  v105[55] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self && v4 && self->_isInternalBuild)
  {
    v6 = [v4 objectForKey:@"eventType"];
    if ([v6 isEqualToString:@"pageRender"])
    {
      v7 = [MEMORY[0x1E69DF6E0] sharedInstance];
      v8 = [v7 metricsPageRenderLoggingEnabled];

      if (!v8)
      {
        goto LABEL_73;
      }
    }

    else
    {
    }

    v9 = [MEMORY[0x1E69DF6E0] sharedInstance];
    v10 = [v9 metricsLoggingEnabled];

    if (v10)
    {
      [(NSHashTable *)self->_savedRecentEvents addObject:v5];
      v11 = [MEMORY[0x1E69DF6E0] sharedInstance];
      v12 = [v11 metricsExpandedLoggingEnabled];

      if (v12)
      {
        v90 = 0;
        v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:1 error:&v90];
        v14 = v90;
        if (v13)
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
          v16 = VUIDefaultLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v5 objectForKeyedSubscript:@"eventType"];
            v18 = [v17 uppercaseString];
            *buf = 138412546;
            v92 = v18;
            v93 = 2112;
            v94 = v15;
            _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "========== %@ Metrics Event ========== (all fields):%@", buf, 0x16u);
          }
        }

        else
        {
          v15 = VUIDefaultLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v92 = v5;
            v93 = 2112;
            v94 = v14;
            _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "VUIMetricsController: Unserializable event data: [%@] error:[%@]", buf, 0x16u);
          }
        }
      }

      else
      {
        v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
        v13 = [v14 objectForKeyedSubscript:@"eventType"];
        v105[0] = @"eventType";
        v105[1] = @"dbids";
        v105[2] = @"storeFront";
        v105[3] = @"capacityDataAvailable";
        v105[4] = @"osVersion";
        v105[5] = @"clientCorrelationKey";
        v105[6] = @"connection";
        v105[7] = @"capacityDisk";
        v105[8] = @"clientId";
        v105[9] = @"eventTime";
        v105[10] = @"capacitySystem";
        v105[11] = @"baseVersion";
        v105[12] = @"platformName";
        v105[13] = @"xpPostFrequency";
        v105[14] = @"ibids";
        v105[15] = @"hardwareFamily";
        v105[16] = @"hardwareModel";
        v105[17] = @"os";
        v105[18] = @"app";
        v105[19] = @"pixelRatio";
        v105[20] = @"windowOuterHeight";
        v105[21] = @"timezoneOffset";
        v105[22] = @"environment";
        v105[23] = @"isSignedIn";
        v105[24] = @"screenWidth";
        v105[25] = @"resourceRevNum";
        v105[26] = @"capacityData";
        v105[27] = @"screenHeight";
        v105[28] = @"environmentBuild";
        v105[29] = @"xpSendMethod";
        v105[30] = @"eventVersion";
        v105[31] = @"appVersion";
        v105[32] = @"sbids";
        v105[33] = @"capacitySystemAvailable";
        v105[34] = @"windowOuterWidth";
        v105[35] = @"utsc";
        v105[36] = @"clientEventId";
        v105[37] = @"osBuildNumber";
        v105[38] = @"environmentDataCenter";
        v105[39] = @"storeFrontHeader";
        v105[40] = @"userType";
        v105[41] = @"xpDelegatesInfo";
        v105[42] = @"userAgent";
        v105[43] = @"platformId";
        v105[44] = @"language";
        v105[45] = @"cbids";
        v105[46] = @"osLanguages";
        v105[47] = @"xpViewableThreshold";
        v105[48] = @"xpViewablePercentage";
        v105[49] = @"dsId";
        v105[50] = @"locationAuthorization";
        v105[51] = @"vppaState";
        v105[52] = @"page";
        v105[53] = @"pageHistory";
        v105[54] = @"topic";
        v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:55];
        if (([v13 isEqualToString:@"click"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"impressions") && (objc_msgSend(MEMORY[0x1E69DF6E0], "sharedInstance"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "metricsLogLocationAndImpressions"), v37, (v38 & 1) == 0))
        {
          v71 = v5;
          v19 = [v14 objectForKeyedSubscript:@"impressions"];
          v73 = v13;
          v74 = v14;
          v72 = v19;
          if ([v19 count])
          {
            v80 = objc_opt_new();
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            obj = v19;
            v20 = [obj countByEnumeratingWithState:&v86 objects:v104 count:16];
            if (v20)
            {
              v21 = v20;
              v78 = *v87;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v87 != v78)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v23 = *(*(&v86 + 1) + 8 * i);
                  v102[0] = @"id";
                  v24 = [v23 objectForKey:?];
                  v25 = v24;
                  if (v24)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = &stru_1F5DB25C0;
                  }

                  v103[0] = v26;
                  v102[1] = @"name";
                  v27 = [v23 objectForKey:?];
                  v28 = v27;
                  if (v27)
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = &stru_1F5DB25C0;
                  }

                  v103[1] = v29;
                  v102[2] = @"impressionType";
                  v30 = [v23 objectForKey:@"impressionType"];
                  v31 = v30;
                  if (v30)
                  {
                    v32 = v30;
                  }

                  else
                  {
                    v32 = &stru_1F5DB25C0;
                  }

                  v103[2] = v32;
                  v102[3] = @"impressionIndex";
                  v33 = [v23 objectForKey:@"impressionIndex"];
                  v34 = v33;
                  if (v33)
                  {
                    v35 = v33;
                  }

                  else
                  {
                    v35 = &stru_1F5DB25C0;
                  }

                  v103[3] = v35;
                  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:4];

                  [v80 addObject:v36];
                }

                v21 = [obj countByEnumeratingWithState:&v86 objects:v104 count:16];
              }

              while (v21);
            }

            [v14 removeObjectsForKeys:&unk_1F5E5EAA8];
            [v14 setObject:v80 forKey:@"impressions (ABRIDGED)"];
            obja = [MEMORY[0x1E696AEC0] stringWithFormat:@"<<Impressions count: %lu>>", objc_msgSend(obj, "count")];

            v19 = v72;
            v13 = v73;
          }

          else
          {
            obja = &stru_1F5DB25C0;
          }

          v39 = [v14 objectForKeyedSubscript:@"location"];
          [v14 removeObjectsForKeys:&unk_1F5E5EAC0];
          if ([v39 count])
          {
            v40 = objc_opt_new();
            v82 = 0u;
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v79 = v39;
            v41 = [v79 countByEnumeratingWithState:&v82 objects:v101 count:16];
            if (v41)
            {
              v42 = v41;
              v81 = *v83;
              do
              {
                for (j = 0; j != v42; ++j)
                {
                  if (*v83 != v81)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v44 = *(*(&v82 + 1) + 8 * j);
                  v99[0] = @"id";
                  v45 = [v44 objectForKey:?];
                  v46 = v45;
                  if (v45)
                  {
                    v47 = v45;
                  }

                  else
                  {
                    v47 = &stru_1F5DB25C0;
                  }

                  v100[0] = v47;
                  v99[1] = @"name";
                  v48 = [v44 objectForKey:?];
                  v49 = v48;
                  if (v48)
                  {
                    v50 = v48;
                  }

                  else
                  {
                    v50 = &stru_1F5DB25C0;
                  }

                  v100[1] = v50;
                  v99[2] = @"locationType";
                  v51 = [v44 objectForKey:?];
                  v52 = v51;
                  if (v51)
                  {
                    v53 = v51;
                  }

                  else
                  {
                    v53 = &stru_1F5DB25C0;
                  }

                  v100[2] = v53;
                  v99[3] = @"locationPosition";
                  v54 = [v44 objectForKey:@"locationPosition"];
                  v55 = v54;
                  if (v54)
                  {
                    v56 = v54;
                  }

                  else
                  {
                    v56 = &stru_1F5DB25C0;
                  }

                  v100[3] = v56;
                  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:4];

                  [v40 addObject:v57];
                }

                v42 = [v79 countByEnumeratingWithState:&v82 objects:v101 count:16];
              }

              while (v42);
            }

            v13 = v73;
            v14 = v74;
            if ([v73 isEqualToString:@"click"] && objc_msgSend(v40, "count"))
            {
              [v74 setObject:v40 forKey:@"location (ABRIDGED)"];
            }

            v19 = v72;
          }

          v5 = v71;
        }

        else
        {
          obja = &stru_1F5DB25C0;
        }

        v58 = [v14 objectForKey:@"sharedActivity"];
        v59 = [v58 BOOLValue];

        if ((v59 & 1) == 0)
        {
          [v14 removeObjectsForKeys:&unk_1F5E5EAD8];
        }

        v60 = [v5 allKeys];
        v61 = [v5 allKeys];
        v62 = [v61 indexesOfObjectsPassingTest:&__block_literal_global_735];
        v63 = [v60 objectsAtIndexes:v62];

        v64 = [v5 allKeys];
        v65 = [v5 allKeys];
        v66 = [v65 indexesOfObjectsPassingTest:&__block_literal_global_746];
        v67 = [v64 objectsAtIndexes:v66];

        v15 = v75;
        [v14 removeObjectsForKeys:v75];
        [v14 removeObjectsForKeys:v67];
        v68 = [v5 dictionaryWithValuesForKeys:v67];
        [v14 removeObjectsForKeys:v63];
        v69 = VUIDefaultLogObject();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = [v13 uppercaseString];
          *buf = 138413058;
          v92 = v70;
          v93 = 2112;
          v94 = v14;
          v95 = 2112;
          v96 = v68;
          v97 = 2112;
          v98 = obja;
          _os_log_impl(&dword_1E323F000, v69, OS_LOG_TYPE_INFO, "========== %@ Metrics Event ========== (limited fields):%@ %@ %@", buf, 0x2Au);

          v15 = v75;
        }
      }
    }
  }

LABEL_73:
}

uint64_t __42__VUIMetricsController__saveRecentEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"data.uts"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"data.search"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasPrefix:@"reco_"];
  }

  return v3;
}

uint64_t __42__VUIMetricsController__saveRecentEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 hasPrefix:@"page"] || (objc_msgSend(v2, "isEqualToString:", @"page") & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"pageHistory"))
  {
    v3 = [v2 isEqualToString:@"searchTerm"];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)getRecentEventsForDebuggerUI
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__VUIMetricsController_getRecentEventsForDebuggerUI__block_invoke;
  v5[3] = &unk_1E872E5B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(metricsDataDispatchSQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__VUIMetricsController_getRecentEventsForDebuggerUI__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)arePageEventsIdentical:(id)a3 previousPage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKey:@"pageId"];
  v9 = [v7 objectForKey:@"pageType"];
  v10 = [(VUIMetricsController *)self currentTabIdentifier];
  v11 = [v6 objectForKey:@"pageId"];
  v12 = [v6 objectForKey:@"pageType"];
  v13 = [(VUIMetricsController *)self lastTabIdentifier];
  v14 = [v6 objectForKey:@"searchTerm"];

  v15 = [v7 objectForKey:@"searchTerm"];

  if (v15 | v14)
  {
    v16 = [v15 isEqualToString:v14];
  }

  else
  {
    v16 = 1;
  }

  v17 = [v8 isEqualToString:v11] && (objc_msgSend(v9, "isEqualToString:", v12) & v16) == 1 && (objc_msgSend(v13, "isEqualToString:", v10) & 1) != 0;

  return v17;
}

- (id)getMetricsEnhancedBuyParams:(id)a3
{
  v4 = MEMORY[0x1E696AD60];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  [v6 appendFormat:@"&mtApp=%@", v8];

  v9 = [MEMORY[0x1E69DC938] currentDevice];
  v10 = [v9 systemVersion];
  [v6 appendFormat:@"&mtOsVersion=%@", v10];

  lastRecordedPageEventData = self->_lastRecordedPageEventData;
  if (lastRecordedPageEventData)
  {
    v12 = [(VUIMetricsPageEventData *)lastRecordedPageEventData pageId];
    [v6 appendFormat:@"&mtPageId=%@", v12];

    v13 = [(VUIMetricsPageEventData *)self->_lastRecordedPageEventData pageType];
    [v6 appendFormat:@"&mtPageType=%@", v13];
  }

  v14 = [(VUIMetricsController *)self baseFields];
  v15 = [v14 objectForKey:@"pageContext"];

  if (v15)
  {
    [v6 appendFormat:@"&mtPageContext=%@", v15];
  }

  v16 = [MEMORY[0x1E69DF748] stringValueForKey:@"BuildVersion"];
  v17 = v16;
  if (v16)
  {
    [v6 appendFormat:@"&mtOsBuildNumber=%@", v16];
  }

  v18 = [(VUIMetricsController *)self _getCurrentMetricsTopic];
  [v6 appendFormat:@"&mtTopic=%@", v18];

  v19 = [MEMORY[0x1E696AFB0] UUID];
  v20 = [v19 UUIDString];
  [v6 appendFormat:@"&mtRequestId=%@", v20];

  v21 = [MEMORY[0x1E695DF00] date];
  [v21 timeIntervalSince1970];
  [v6 appendFormat:@"&mtEventTime=%lf", v22 * 1000.0];

  v23 = [v6 copy];

  return v23;
}

- (id)getMetricsOverlayForBundleOffer
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [(VUIMetricsController *)self _getCurrentMetricsTopic];
  v4 = +[VUIAuthenticationManager DSID];
  v5 = [(VUIMetricsController *)self baseFields];
  v6 = [v5 objectForKey:@"pageContext"];

  v7 = &stru_1F5DB25C0;
  v11[0] = @"pageContext";
  v11[1] = @"dsId";
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F5DB25C0;
  }

  if (v4)
  {
    v7 = v4;
  }

  v12[0] = v8;
  v12[1] = v7;
  v11[2] = @"topic";
  v12[2] = v3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (id)getMetricsOverlayForWebContainer
{
  v16[4] = *MEMORY[0x1E69E9840];
  v2 = [(VUIMetricsController *)self _getCurrentMetricsTopic];
  v3 = +[VUIAuthenticationManager DSID];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 infoDictionary];

  v8 = [v7 objectForKey:@"CFBundleShortVersionString"];
  v9 = v8;
  v10 = &stru_1F5DB25C0;
  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = &stru_1F5DB25C0;
  }

  v15[0] = @"app";
  v15[1] = @"appVersion";
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &stru_1F5DB25C0;
  }

  v16[0] = v11;
  v16[1] = v12;
  if (v3)
  {
    v10 = v3;
  }

  v15[2] = @"dsId";
  v15[3] = @"topic";
  v16[2] = v10;
  v16[3] = v2;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  return v13;
}

+ (id)_baseToVPAFMapping
{
  if (_baseToVPAFMapping_onceToken != -1)
  {
    +[VUIMetricsController(VPAF) _baseToVPAFMapping];
  }

  v3 = _baseToVPAFMapping__map;

  return v3;
}

void __48__VUIMetricsController_VPAF___baseToVPAFMapping__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"mvpdMonthsActive";
  v2[1] = @"mvpdPartner";
  v3[0] = @"mvpdMonthsActive";
  v3[1] = @"mvpdPartner";
  v2[2] = @"pageContext";
  v2[3] = @"sharedActivity";
  v3[2] = @"tabId";
  v3[3] = @"sharedActivity";
  v2[4] = @"sharedActivityDevicesCurrent";
  v2[5] = @"sharedActivityDevicesMax";
  v3[4] = @"sharedActivityDevicesCurrent";
  v3[5] = @"sharedActivityDevicesMax";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = _baseToVPAFMapping__map;
  _baseToVPAFMapping__map = v0;
}

- (NSDictionary)baseFieldsForVPAF
{
  v2 = [(VUIMetricsController *)self baseFields];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [objc_opt_class() _baseToVPAFMapping];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __47__VUIMetricsController_VPAF__baseFieldsForVPAF__block_invoke;
  v12 = &unk_1E87367E0;
  v13 = v4;
  v5 = v3;
  v14 = v5;
  v6 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:&v9];
  if ([v5 count])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__VUIMetricsController_VPAF__baseFieldsForVPAF__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v6 forKey:v5];
  }
}

void __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIMetricsController: Metrics error: %@", &v2, 0xCu);
}

@end