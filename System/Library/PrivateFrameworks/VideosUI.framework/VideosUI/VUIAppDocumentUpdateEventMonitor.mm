@interface VUIAppDocumentUpdateEventMonitor
+ (BOOL)_isAppRefreshEventType:(id)type;
+ (id)sharedMonitor;
- (VUIAppDocumentUpdateEventMonitor)init;
- (id)_init;
- (void)_handleAccountDidChangeNotification:(id)notification;
- (void)_handleAppDidBecomeActive:(id)active;
- (void)_handleAppDidEnterBackgroundNotification:(id)notification;
- (void)_handleAppLibraryDidChangeNotification:(id)notification;
- (void)_handleAppWillEnterForegroundNotification:(id)notification;
- (void)_handleClearFromPlayHistoryRequestDidFinishNotification:(id)notification;
- (void)_handleClearPlayHistoryNotification:(id)notification;
- (void)_handleDeviceDiscoveryDataAvailableNotification:(id)notification;
- (void)_handleEntitlementsDidChangeNotification:(id)notification;
- (void)_handleFamilyUpdate:(id)update;
- (void)_handleFavoritesRequestDidFinishNotification:(id)notification;
- (void)_handleFavoritesSyncCompleted:(id)completed;
- (void)_handleFederatedAppDidInstallNotification:(id)notification;
- (void)_handleLocationAuthorizationDidChangeNotification:(id)notification;
- (void)_handleLocationDidChangeNotification:(id)notification;
- (void)_handleMediaLibraryContentsDidChangeNotification:(id)notification;
- (void)_handleNowPlayingDidEndNotification:(id)notification;
- (void)_handleNowPlayingWillStartNotification:(id)notification;
- (void)_handlePlayHistoryUpdatedNotification:(id)notification;
- (void)_handlePlaybackReportNotification:(id)notification;
- (void)_handlePreferredVideoFormatDidChangeNotification:(id)notification;
- (void)_handlePurchaseFlowDidFinishNotification:(id)notification;
- (void)_handleRemoveFromPlayHistoryRequestDidFinishNotification:(id)notification;
- (void)_handleRestrictionsDidChangeNotification:(id)notification;
- (void)_handleSettingsDidChangeNotification:(id)notification;
- (void)_handleSubscriptionDidChangeNotification:(id)notification;
- (void)_handleSubscriptionNotificationHelper:(id)helper userInfo:(id)info;
- (void)_handleSyndicationInfoUpdatedNotification:(id)notification;
- (void)_handleTVSubscriptionEntitlementsChanged:(id)changed;
- (void)_handleUTSKDidChangeNotification:(id)notification;
- (void)_handleUpNextLockupArtSettingDidChange:(id)change;
- (void)_handleUpNextRequestDidFinishNotification:(id)notification;
- (void)_handleVPPADidChangeNotification:(id)notification;
- (void)_handleXPUpNextRequestDidFinishNotification:(id)notification;
- (void)_isPlaybackUIBeingShownDidChange:(id)change;
- (void)_notifyObserver:(id)observer ofRefreshEvent:(id)event;
- (void)_notifyObserversOfEvent:(id)event;
- (void)_postSubscriptionNotification:(id)notification interruptedOfferDetails:(id)details error:(id)error;
- (void)addObserver:(id)observer forEventDescriptors:(id)descriptors viewController:(id)controller;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)updateDescriptorsForObserver:(id)observer eventDescriptors:(id)descriptors;
@end

@implementation VUIAppDocumentUpdateEventMonitor

- (VUIAppDocumentUpdateEventMonitor)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

+ (id)sharedMonitor
{
  if (sharedMonitor___once != -1)
  {
    +[VUIAppDocumentUpdateEventMonitor sharedMonitor];
  }

  v3 = sharedMonitor___sharedInstance;

  return v3;
}

void __49__VUIAppDocumentUpdateEventMonitor_sharedMonitor__block_invoke()
{
  v0 = [[VUIAppDocumentUpdateEventMonitor alloc] _init];
  v1 = sharedMonitor___sharedInstance;
  sharedMonitor___sharedInstance = v0;
}

- (id)_init
{
  v27.receiver = self;
  v27.super_class = VUIAppDocumentUpdateEventMonitor;
  v3 = [(VUIAppDocumentUpdateEventMonitor *)&v27 self];

  if (v3)
  {
    date = [MEMORY[0x1E695DF00] date];
    v5 = v3[5];
    v3[5] = date;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v7 = v3[3];
    v3[3] = weakToStrongObjectsMapTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    out_token = -1;
    objc_initWeak(&location, v3);
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __41__VUIAppDocumentUpdateEventMonitor__init__block_invoke;
    handler[3] = &unk_1E87327A8;
    objc_copyWeak(&v24, &location);
    notify_register_dispatch(@"com.apple.itunesstored.accountschanged", &out_token, v10, handler);

    v12 = +[VUIMediaLibraryManager defaultManager];
    deviceMediaLibrary = [v12 deviceMediaLibrary];

    if (+[VUIUtilities isSUIEnabled])
    {
      v14 = 0;
    }

    else
    {
      v14 = deviceMediaLibrary;
    }

    [defaultCenter addObserver:v3 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:v14];
    [defaultCenter addObserver:v3 selector:sel__handleAccountDidChangeNotification_ name:*MEMORY[0x1E69D4A40] object:0];
    [defaultCenter addObserver:v3 selector:sel__handlePreferredVideoFormatDidChangeNotification_ name:@"VUIPreferredVideoFormatDidChangeNotification" object:0];
    [defaultCenter2 addObserver:v3 selector:sel__handleFamilyUpdate_ name:*MEMORY[0x1E699C038] object:0];
    v15 = VUIDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: Listening to ASDSubscriptionEntitlementsTVDidChangeNotification", v22, 2u);
    }

    mEMORY[0x1E698B560] = [MEMORY[0x1E698B560] sharedInstance];
    [defaultCenter addObserver:v3 selector:sel__handleTVSubscriptionEntitlementsChanged_ name:*MEMORY[0x1E698B480] object:mEMORY[0x1E698B560]];
    [defaultCenter addObserver:v3 selector:sel__handleVPPADidChangeNotification_ name:@"VUIVPPADidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleFederatedAppDidInstallNotification_ name:@"VUIFederatedAppDidInstallNotification" object:0];
    [defaultCenter2 addObserver:v3 selector:sel__handlePlaybackReportNotification_ name:*MEMORY[0x1E69E16A8] object:0 suspensionBehavior:2];
    [defaultCenter addObserver:v3 selector:sel__handleFavoritesRequestDidFinishNotification_ name:@"VUIFavoritesRequestDidFinishNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleUpNextRequestDidFinishNotification_ name:@"VUIUpNextRequestDidFinishNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleRemoveFromPlayHistoryRequestDidFinishNotification_ name:@"VUIRemoveFromPlayHistoryRequestDidFinishNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleClearFromPlayHistoryRequestDidFinishNotification_ name:@"VUIClearFromPlayHistoryRequestDidFinishNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handlePlayHistoryUpdatedNotification_ name:@"VUIPlayHistoryUpdatedNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleSettingsDidChangeNotification_ name:*MEMORY[0x1E69E1728] object:0];
    [defaultCenter addObserver:v3 selector:sel__handleAppLibraryDidChangeNotification_ name:*MEMORY[0x1E69E1668] object:0];
    [defaultCenter addObserver:v3 selector:sel__handlePurchaseFlowDidFinishNotification_ name:@"VUIPurchaseRequestDidFinishNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleSubscriptionDidChangeNotification_ name:@"VUISubscribeRequestDidFinishNotification" object:0];
    if (_os_feature_enabled_impl())
    {
      v17 = +[_TtC8VideosUI40VUIUTSConfigurationProxyNotificationName utskDidChange];
      [defaultCenter addObserver:v3 selector:sel__handleUTSKDidChangeNotification_ name:v17 object:0];
    }

    else
    {
      [defaultCenter addObserver:v3 selector:sel__handleUTSKDidChangeNotification_ name:*MEMORY[0x1E69E1698] object:0];
    }

    if (_os_feature_enabled_impl())
    {
      v18 = +[_TtC8VideosUI43VUILocationServiceProxyObjCNotificationName locationAuthorizationDidChange];
      v19 = +[_TtC8VideosUI43VUILocationServiceProxyObjCNotificationName locationDidChange];
    }

    else
    {
      v18 = *MEMORY[0x1E69E16C8];
      v19 = *MEMORY[0x1E69E16D0];
    }

    v20 = v19;
    [defaultCenter addObserver:v3 selector:sel__handleLocationAuthorizationDidChangeNotification_ name:v18 object:0];
    [defaultCenter addObserver:v3 selector:sel__handleLocationDidChangeNotification_ name:v20 object:0];
    [defaultCenter addObserver:v3 selector:sel__handleAppWillEnterForegroundNotification_ name:*MEMORY[0x1E69DF7E8] object:0];
    [defaultCenter addObserver:v3 selector:sel__handleAppDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DF7E0] object:0];
    [defaultCenter addObserver:v3 selector:sel__handleSyndicationInfoUpdatedNotification_ name:@"SyndicationInfoUpdated" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleRestrictionsDidChangeNotification_ name:@"VUIRestrictionsDidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleUpNextLockupArtSettingDidChange_ name:@"VUIUpNextLockupArtSettingDidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleClearPlayHistoryNotification_ name:@"VUIClearPlayHistoryNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__isPlaybackUIBeingShownDidChange_ name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];
    [defaultCenter addObserver:v3 selector:sel__handleDeviceDiscoveryDataAvailableNotification_ name:@"VUIDeviceDiscoveryDataNowAvailableNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleFavoritesSyncCompleted_ name:@"VUISportsFavoritesLocalStorageDidChangeNotification" object:0];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __41__VUIAppDocumentUpdateEventMonitor__init__block_invoke(uint64_t a1)
{
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Received account store change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAccountDidChangeNotification:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  playbackReportToken = self->_playbackReportToken;
  if (playbackReportToken)
  {
    notify_cancel(playbackReportToken);
    self->_playbackReportToken = 0;
  }

  v6.receiver = self;
  v6.super_class = VUIAppDocumentUpdateEventMonitor;
  [(VUIAppDocumentUpdateEventMonitor *)&v6 dealloc];
}

- (void)updateDescriptorsForObserver:(id)observer eventDescriptors:(id)descriptors
{
  observerCopy = observer;
  descriptorsCopy = descriptors;
  objc_initWeak(&location, self);
  objc_initWeak(&from, observerCopy);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __82__VUIAppDocumentUpdateEventMonitor_updateDescriptorsForObserver_eventDescriptors___block_invoke;
  v12 = &unk_1E8730290;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  v8 = descriptorsCopy;
  v13 = v8;
  v9 = v10;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v11(v9);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __82__VUIAppDocumentUpdateEventMonitor_updateDescriptorsForObserver_eventDescriptors___block_invoke(void **a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  if ([a1[4] count])
  {
    v4 = [WeakRetained observerMapTable];
    v5 = [v4 objectForKey:v3];
    if (v5)
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v3;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: updating descriptors for observer [%p].", &v12, 0xCu);
      }

      [v5 updateDescriptorsWithDescriptors:a1[4]];
    }

    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = VUIAppDocumentUpdateEventStringRepresentationForDescriptors(a1[4]);
      v12 = 134218242;
      v13 = v3;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Updated observer [%p] with event descriptors [%@]", &v12, 0x16u);
    }

    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 refreshTimerByEventDescriptor];
      v11 = [v10 allKeys];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Active timers for event descriptors after update [%@]", &v12, 0xCu);
    }
  }

  else
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v3;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: No operation for observer during update [%p] since there were no event descriptors", &v12, 0xCu);
    }
  }
}

- (void)addObserver:(id)observer forEventDescriptors:(id)descriptors viewController:(id)controller
{
  observerCopy = observer;
  descriptorsCopy = descriptors;
  controllerCopy = controller;
  objc_initWeak(&location, self);
  objc_initWeak(&from, controllerCopy);
  objc_initWeak(&v20, observerCopy);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __83__VUIAppDocumentUpdateEventMonitor_addObserver_forEventDescriptors_viewController___block_invoke;
  v15 = &unk_1E87327F8;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  objc_copyWeak(&v19, &v20);
  v11 = descriptorsCopy;
  v16 = v11;
  v12 = v13;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v14(v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __83__VUIAppDocumentUpdateEventMonitor_addObserver_forEventDescriptors_viewController___block_invoke(void **a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = objc_loadWeakRetained(a1 + 7);
  if ([a1[4] count])
  {
    v5 = [WeakRetained observerMapTable];
    v6 = [v5 objectForKey:v4];
    if (!v6)
    {
      v6 = objc_alloc_init(_VUIAppDocumentUpdateEventObserverContext);
      [v5 setObject:v6 forKey:v4];
      objc_initWeak(location, WeakRetained);
      objc_initWeak(&from, v4);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __83__VUIAppDocumentUpdateEventMonitor_addObserver_forEventDescriptors_viewController___block_invoke_151;
      v13[3] = &unk_1E87327D0;
      objc_copyWeak(&v14, location);
      objc_copyWeak(&v15, &from);
      [(_VUIAppDocumentUpdateEventObserverContext *)v6 setRefreshTimerFiredBlock:v13];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    [(_VUIAppDocumentUpdateEventObserverContext *)v6 setEventDescriptors:a1[4]];
    [(_VUIAppDocumentUpdateEventObserverContext *)v6 setViewController:v3];
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = VUIAppDocumentUpdateEventStringRepresentationForDescriptors(a1[4]);
      *location = 134218242;
      *&location[4] = v4;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Added observer [%p] for event descriptors [%@]", location, 0x16u);
    }

    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(_VUIAppDocumentUpdateEventObserverContext *)v6 refreshTimerByEventDescriptor];
      v11 = [v10 allKeys];
      *location = 138412290;
      *&location[4] = v11;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Active timers for event descriptors [%@]", location, 0xCu);
    }
  }

  else
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *location = 134217984;
      *&location[4] = v4;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Removed observer [%p] since there were no event descriptors", location, 0xCu);
    }

    [WeakRetained removeObserver:v4];
  }
}

void __83__VUIAppDocumentUpdateEventMonitor_addObserver_forEventDescriptors_viewController___block_invoke_151(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    [WeakRetained _notifyObserver:v4 ofRefreshEvent:v6];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  objc_initWeak(&from, observerCopy);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __51__VUIAppDocumentUpdateEventMonitor_removeObserver___block_invoke;
  v9 = &unk_1E872EFE8;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  v5 = &v6;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8(v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __51__VUIAppDocumentUpdateEventMonitor_removeObserver___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Removing observer [%p]", &v7, 0xCu);
  }

  v5 = [WeakRetained observerMapTable];
  v6 = [v5 objectForKey:v3];
  [v6 invalidate];
  [v5 removeObjectForKey:v3];
}

- (void)_handleMediaLibraryContentsDidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Media Library contents did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent purchases];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_isPlaybackUIBeingShownDidChange:(id)change
{
  v4 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v4 isPlaybackUIBeingShown];

  if (isPlaybackUIBeingShown)
  {

    [(VUIAppDocumentUpdateEventMonitor *)self _handleNowPlayingWillStartNotification:0];
  }

  else
  {

    [(VUIAppDocumentUpdateEventMonitor *)self _handleNowPlayingDidEndNotification:0];
  }
}

- (void)_handlePlaybackReportNotification:(id)notification
{
  v19 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  VUIRequireMainThread();
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: [Playback] WLK activity notification received", buf, 2u);
  }

  userInfo = [notificationCopy userInfo];

  v7 = [userInfo vui_stringForKey:*MEMORY[0x1E69E16B0]];

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
  if (v8)
  {
    v16 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v16];
    v10 = v16;
    if (v9)
    {
      playbackIsActive = self->_playbackIsActive;
      v12 = VUIDefaultLogObject();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (playbackIsActive)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: [Playback] Playback activity is pended during playback.", buf, 2u);
        }

        v14 = v9;
        pendingPlayActivity = self->_pendingPlayActivity;
        self->_pendingPlayActivity = v14;
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: [Playback] Notifying observers", buf, 2u);
        }

        pendingPlayActivity = +[VUIAppDocumentUpdateEvent playActivity];
        [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:pendingPlayActivity];
      }
    }

    else
    {
      pendingPlayActivity = VUIDefaultLogObject();
      if (os_log_type_enabled(pendingPlayActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_1E323F000, pendingPlayActivity, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: [Playback] Failed to decode summary %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: [Playback] WLK notification lacks data payload", buf, 2u);
    }
  }
}

- (void)_handleNowPlayingWillStartNotification:(id)notification
{
  VUIRequireMainThread();
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: [Playback] Player begin notification received", v5, 2u);
  }

  self->_playbackIsActive = 1;
}

- (void)_handleNowPlayingDidEndNotification:(id)notification
{
  VUIRequireMainThread();
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: [Playback] Player end notification received", buf, 2u);
  }

  self->_playbackIsActive = 0;
  pendingPlayActivity = self->_pendingPlayActivity;
  if (pendingPlayActivity)
  {
    if ([(WLKPlaybackSummary *)pendingPlayActivity playbackState]!= 1)
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: [Playback] Notifying observers with pending play activity", v9, 2u);
      }

      v7 = +[VUIAppDocumentUpdateEvent playActivity];
      [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v7];
    }

    v8 = self->_pendingPlayActivity;
    self->_pendingPlayActivity = 0;
  }
}

- (void)_handleAccountDidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Active account did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent accountChanged];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleRestrictionsDidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Restrictions did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent restrictions];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleUpNextLockupArtSettingDidChange:(id)change
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Up next lockup art setting did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent upNextLockupArtSettingChanged];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handlePreferredVideoFormatDidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Preferred video format did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent preferredVideoFormat];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleClearPlayHistoryNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Clear play history notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent clearPlayHistory];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_postSubscriptionNotification:(id)notification interruptedOfferDetails:(id)details error:(id)error
{
  notificationCopy = notification;
  detailsCopy = details;
  errorCopy = error;
  v11 = objc_opt_new();
  v12 = v11;
  if (errorCopy)
  {
    [v11 setObject:errorCopy forKeyedSubscript:@"Error"];
  }

  if ([notificationCopy length])
  {
    [v12 setObject:notificationCopy forKeyedSubscript:@"TransactionID"];
    objc_initWeak(&location, self);
    if (_os_feature_enabled_impl())
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __96__VUIAppDocumentUpdateEventMonitor__postSubscriptionNotification_interruptedOfferDetails_error___block_invoke;
      v21[3] = &unk_1E8732820;
      v13 = &v24;
      objc_copyWeak(&v24, &location);
      v22 = detailsCopy;
      v23 = v12;
      [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:1 completion:v21];
      v14 = &v22;
      v15 = &v23;
    }

    else
    {
      mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __96__VUIAppDocumentUpdateEventMonitor__postSubscriptionNotification_interruptedOfferDetails_error___block_invoke_161;
      v17[3] = &unk_1E8732848;
      v13 = &v20;
      objc_copyWeak(&v20, &location);
      v18 = detailsCopy;
      v19 = v12;
      [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:v17];
      v14 = &v18;
      v15 = &v19;
    }

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __96__VUIAppDocumentUpdateEventMonitor__postSubscriptionNotification_interruptedOfferDetails_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (a3)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: Failed to fetch init/config. Not presenting successful subscription toast", v8, 2u);
    }
  }

  else
  {
    [WeakRetained _handleSubscriptionNotificationHelper:*(a1 + 32) userInfo:*(a1 + 40)];
  }
}

void __96__VUIAppDocumentUpdateEventMonitor__postSubscriptionNotification_interruptedOfferDetails_error___block_invoke_161(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (a3)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: Failed to fetch init/config. Not presenting successful subscription toast", v8, 2u);
    }
  }

  else
  {
    [WeakRetained _handleSubscriptionNotificationHelper:*(a1 + 32) userInfo:*(a1 + 40)];
  }
}

- (void)_handleSubscriptionNotificationHelper:(id)helper userInfo:(id)info
{
  helperCopy = helper;
  infoCopy = info;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__VUIAppDocumentUpdateEventMonitor__handleSubscriptionNotificationHelper_userInfo___block_invoke;
  v9[3] = &unk_1E872D990;
  v10 = helperCopy;
  v11 = infoCopy;
  v7 = infoCopy;
  v8 = helperCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __83__VUIAppDocumentUpdateEventMonitor__handleSubscriptionNotificationHelper_userInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"notificationTitle"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F5DB25C0;
  }

  v10 = v4;

  v5 = [*(a1 + 32) objectForKey:@"notificationBody"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F5DB25C0;
  }

  v8 = v7;

  [VUIActionCommerceTransaction displayConfirmationUIWithTitle:v10 andBody:v8];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:0 userInfo:*(a1 + 40)];
}

- (void)_handleFamilyUpdate:(id)update
{
  v8 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = updateCopy;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: _handleFamilyUpdate: %@", &v6, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:1 completion:&__block_literal_global_168];
  }

  else
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:&__block_literal_global_171];
  }
}

void __56__VUIAppDocumentUpdateEventMonitor__handleFamilyUpdate___block_invoke()
{
  v0 = VUIDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E323F000, v0, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: _handleFamilyUpdate completion", v1, 2u);
  }
}

void __56__VUIAppDocumentUpdateEventMonitor__handleFamilyUpdate___block_invoke_169()
{
  v0 = VUIDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E323F000, v0, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: _handleFamilyUpdate completion", v1, 2u);
  }
}

- (void)_handleTVSubscriptionEntitlementsChanged:(id)changed
{
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: _handleTVSubscriptionEntitlementsChanged", v5, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:1 completion:&__block_literal_global_173];
  }

  else
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:&__block_literal_global_176];
  }
}

void __77__VUIAppDocumentUpdateEventMonitor__handleTVSubscriptionEntitlementsChanged___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUIDefaultLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "UPDATE_EVENTS: _handleTVSubscriptionEntitlementsChanged - Successfully refreshed config";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "UPDATE_EVENTS: _handleTVSubscriptionEntitlementsChanged - Error refreshing config, %@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

void __77__VUIAppDocumentUpdateEventMonitor__handleTVSubscriptionEntitlementsChanged___block_invoke_174(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUIDefaultLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "UPDATE_EVENTS: _handleTVSubscriptionEntitlementsChanged - Successfully refreshed config";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "UPDATE_EVENTS: _handleTVSubscriptionEntitlementsChanged - Error refreshing config, %@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

- (void)_handleVPPADidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: VPPA state did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent entitlements];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleAppWillEnterForegroundNotification:(id)notification
{
  notificationCopy = notification;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: App will enter foreground notification received", v6, 2u);
  }

  [(VUIAppDocumentUpdateEventMonitor *)self _handleAppDidBecomeActive:notificationCopy];
}

- (void)_handleAppDidBecomeActive:(id)active
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter setSuspended:0];

  lastAppDidBecomeActive = [(VUIAppDocumentUpdateEventMonitor *)self lastAppDidBecomeActive];
  if (lastAppDidBecomeActive)
  {
    v6 = lastAppDidBecomeActive;
    date = [MEMORY[0x1E695DF00] date];
    lastAppDidBecomeActive2 = [(VUIAppDocumentUpdateEventMonitor *)self lastAppDidBecomeActive];
    [date timeIntervalSinceDate:lastAppDidBecomeActive2];
    v10 = v9;

    if (v10 > 5.0)
    {
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Send AppDidBecomeActive notification", v14, 2u);
      }

      v12 = +[VUIAppDocumentUpdateEvent appDidBecomeActive];
      [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v12];
    }
  }

  date2 = [MEMORY[0x1E695DF00] date];
  [(VUIAppDocumentUpdateEventMonitor *)self setLastAppDidBecomeActive:date2];
}

- (void)_handleAppDidEnterBackgroundNotification:(id)notification
{
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: App did enter background", v5, 2u);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter setSuspended:1];
}

- (void)_handleSyndicationInfoUpdatedNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Highlights changed notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent highlightsChanged];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleDeviceDiscoveryDataAvailableNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Device discovery data available notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent deviceDiscoveryDataAvailable];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleFavoritesRequestDidFinishNotification:(id)notification
{
  v19 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  if (userInfo)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = object;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [userInfo vui_numberForKey:@"Action"];
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    v11 = [userInfo vui_errorForKey:@"Error"];
    v12 = [userInfo vui_BOOLForKey:@"FireBackgroundEvent" defaultValue:0];
    v13 = VUIDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = userInfo;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Sports favorites request did finish notification received [%@], teamId: %@", &v15, 0x16u);
    }

    if (v8 || !v11)
    {
      v14 = [[VUIAppDocumentModifiedFavoritesEvent alloc] initWithAction:unsignedIntegerValue entityID:v8 isBackground:v12];
      [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v14];
    }
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Ignoring Sports favorites request did finish notification: missing userInfo", &v15, 2u);
    }
  }
}

- (void)_handleFavoritesSyncCompleted:(id)completed
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: WLKSportsFavoritesSyncCompletion notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent favoritesSyncCompleted];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleSettingsDidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Settings did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent settings];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleAppLibraryDidChangeNotification:(id)notification
{
  object = [notification object];
  if (object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = object;
      v6 = [v5 vui_dictionaryForKey:*MEMORY[0x1E69E1678]];
      v7 = [v5 vui_dictionaryForKey:*MEMORY[0x1E69E1670]];
      v8 = [v5 vui_dictionaryForKey:*MEMORY[0x1E69E1680]];
      v9 = VUIDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: App library did change notification received", v13, 2u);
      }

      if (v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8 == 0;
      }

      if (!v10 || v6 != 0)
      {
        v12 = +[VUIAppDocumentUpdateEvent entitlements];
        [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v12];
      }
    }
  }
}

- (void)_handlePurchaseFlowDidFinishNotification:(id)notification
{
  v31 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  if (userInfo)
  {
    userInfo2 = [notificationCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:@"CanonicalIDs"];
  }

  else
  {
    v7 = 0;
  }

  userInfo3 = [notificationCopy userInfo];
  if (userInfo3)
  {
    userInfo4 = [notificationCopy userInfo];
    v10 = [userInfo4 objectForKeyedSubscript:@"Error"];
  }

  else
  {
    v10 = 0;
  }

  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v7;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Purchase did finish notification received for canonicals %@, error [%@]", buf, 0x16u);
  }

  if (!v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
    {
      v20 = 0;
      v21 = v7;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [[VUIAppDocumentPurchaseEventDescriptor alloc] initWithCanonicalID:*(*(&v22 + 1) + 8 * i)];
            v18 = [[VUIAppDocumentPurchaseEvent alloc] initWithPurchaseEventDescriptor:v17];
            [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v18];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }

      v10 = 0;
    }

    v19 = [VUIAppDocumentUpdateEvent purchases:v20];
    [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v19];
  }
}

- (void)_handleSubscriptionDidChangeNotification:(id)notification
{
  v12 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  if (userInfo)
  {
    userInfo2 = [notificationCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:@"Error"];
  }

  else
  {
    v7 = 0;
  }

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Subscription did finish notification received with error [%@]", &v10, 0xCu);
  }

  if (!v7)
  {
    v9 = +[VUIAppDocumentUpdateEvent entitlements];
    [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v9];
  }
}

- (void)_handleEntitlementsDidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Entitlements did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent entitlements];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleUTSKDidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: UTSK did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent utsk];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleLocationAuthorizationDidChangeNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Location authorization did change notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent locationAuthorizationChanged];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleLocationDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Location did change notification received", v12, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = +[_TtC8VideosUI50VUILocationServiceProxyObjCNotificationUserInfoKey location];
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKey:v6];

    if (v8)
    {
      v9 = +[VUIAppDocumentUpdateEvent locationRetrieved];
      [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v9];
    }

    goto LABEL_9;
  }

  defaultLocationManager = [MEMORY[0x1E69E1540] defaultLocationManager];
  lastKnownLocation = [defaultLocationManager lastKnownLocation];

  if (lastKnownLocation)
  {
    v6 = +[VUIAppDocumentUpdateEvent locationRetrieved];
    [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v6];
LABEL_9:
  }
}

- (void)_handleXPUpNextRequestDidFinishNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = userInfo;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Upnext *Cross Process* did finish notification received %@", &v7, 0xCu);
  }

  if ([MEMORY[0x1E696ABB0] vui_wasSentByDifferentProcess:userInfo])
  {
    [(VUIAppDocumentUpdateEventMonitor *)self _handleUpNextRequestDidFinishNotification:notificationCopy];
  }
}

- (void)_handleUpNextRequestDidFinishNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = userInfo;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Upnext request did finish notification received [%@]", &v12, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && userInfo)
  {
    v8 = object;
    v9 = [userInfo vui_errorForKey:@"Error"];
    if (!v9)
    {
      v10 = [userInfo vui_numberForKey:@"Action"];
      v11 = -[VUIAppDocumentModifiedUpNextEvent initWithAction:canonicalID:]([VUIAppDocumentModifiedUpNextEvent alloc], "initWithAction:canonicalID:", [v10 unsignedIntegerValue], v8);
      [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v11];
    }
  }
}

- (void)_handlePlayHistoryUpdatedNotification:(id)notification
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Play history update notification received", v6, 2u);
  }

  v5 = +[VUIAppDocumentUpdateEvent playHistoryUpdated];
  [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v5];
}

- (void)_handleRemoveFromPlayHistoryRequestDidFinishNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = userInfo;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Remove from play history request did finish notification received [%@]", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && userInfo)
  {
    v8 = [userInfo vui_stringForKey:@"CanonicalID"];
    v9 = [VUIAppDocumentRemovePlayHistoryEvent alloc];
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v8, 0}];
    v11 = [(VUIAppDocumentRemovePlayHistoryEvent *)v9 initWithRemovedCanonicalIDs:v10];

    [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v11];
  }
}

- (void)_handleClearFromPlayHistoryRequestDidFinishNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = userInfo;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Clear from play history request did finish notification received [%@]", &v11, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && userInfo)
  {
    v8 = object;
    v9 = [userInfo vui_errorForKey:@"Error"];
    if (!v9)
    {
      v10 = [[VUIAppDocumentModifiedUpNextEvent alloc] initWithAction:1 canonicalID:v8];
      [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v10];
    }
  }
}

- (void)_handleFederatedAppDidInstallNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = object;
    v11 = 2112;
    v12 = userInfo;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Federated app installation successful for %@ changed [%@]", &v9, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = +[VUIAppDocumentUpdateEvent federatedAppDidInstall];
    [(VUIAppDocumentUpdateEventMonitor *)self _notifyObserversOfEvent:v8];
  }
}

- (void)_notifyObserver:(id)observer ofRefreshEvent:(id)event
{
  v12 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  eventCopy = event;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = observerCopy;
    v10 = 2112;
    v11 = eventCopy;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Notifying observer [%p] of refresh event: [%@]", &v8, 0x16u);
  }

  [observerCopy appDocumentDidReceiveEvent:eventCopy];
}

- (void)_notifyObserversOfEvent:(id)event
{
  eventCopy = event;
  v7 = MEMORY[0x1E69E9820];
  v8 = __60__VUIAppDocumentUpdateEventMonitor__notifyObserversOfEvent___block_invoke;
  v9 = &unk_1E872D990;
  selfCopy = self;
  v11 = eventCopy;
  v5 = MEMORY[0x1E696AF00];
  v6 = eventCopy;
  if ([v5 isMainThread])
  {
    v8(&v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v7);
  }
}

void __60__VUIAppDocumentUpdateEventMonitor__notifyObserversOfEvent___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v38 = [*(a1 + 32) observerMapTable];
  v1 = [v38 keyEnumerator];
  v2 = [v1 allObjects];

  v35 = [objc_opt_class() _isAppRefreshEventType:*(a1 + 40)];
  v33 = +[VUIAppDocumentUpdateEvent appRefresh];
  v3 = [*(a1 + 40) descriptor];
  v4 = +[VUIAppDocumentUpdateEventDescriptor appDidBecomeActive];
  v36 = [v3 isEqual:v4];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__VUIAppDocumentUpdateEventMonitor__notifyObserversOfEvent___block_invoke_2;
  aBlock[3] = &unk_1E87328B0;
  aBlock[4] = &v46;
  v37 = _Block_copy(aBlock);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v5)
  {
    v34 = *v42;
    *&v6 = 134218242;
    v31 = v6;
    do
    {
      v39 = v5;
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = [v38 objectForKey:{v8, v31}];
        v10 = v37[2](v37, v8, v9);
        v11 = v10;
        if (v36)
        {
          if (*(v47 + 24) != 1)
          {
            v12 = VUIDefaultLogObject();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 40);
              *buf = v31;
              v51 = v8;
              v52 = 2112;
              v53 = v16;
              v14 = v12;
              v15 = "UPDATE_EVENTS: MONITOR: observer document became active by coming to foreground. Observer: [%p] for event: [%@]";
LABEL_13:
              _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
            }

LABEL_14:

            [v8 appDocumentHasBecomeActive];
            goto LABEL_15;
          }

          if (v10)
          {
            v12 = VUIDefaultLogObject();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(a1 + 40);
              *buf = v31;
              v51 = v8;
              v52 = 2112;
              v53 = v13;
              v14 = v12;
              v15 = "UPDATE_EVENTS: MONITOR: view controller backed observer document became active by coming to foreground. Observer: [%p] for event: [%@]";
              goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

LABEL_15:
        v17 = [v9 eventDescriptors];
        v18 = [*(a1 + 40) descriptor];
        if (v35 && ([v9 eventDescriptors], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "descriptor"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "containsObject:", v20), v20, v19, v21))
        {
          v22 = v33;
        }

        else
        {
          if (![v17 containsObject:v18])
          {
            v22 = 0;
            goto LABEL_29;
          }

          v23 = [v17 member:v18];
          [v18 setAnimated:{objc_msgSend(v23, "animated")}];
          v22 = *(a1 + 40);
        }

        if (v22)
        {
          v24 = [*(a1 + 40) descriptor];
          v25 = +[VUIAppDocumentUpdateEventDescriptor utsk];
          v26 = [v24 isEqual:v25];

          if ((v26 & v11) != 0)
          {
            v27 = VUIDefaultLogObject();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a1 + 40);
              *buf = v31;
              v51 = v8;
              v52 = 2112;
              v53 = v28;
              _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Ignoring observer [%p] for event: [%@]", buf, 0x16u);
            }
          }

          else
          {
            v29 = VUIDefaultLogObject();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(a1 + 40);
              *buf = v31;
              v51 = v8;
              v52 = 2112;
              v53 = v30;
              _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "UPDATE_EVENTS: MONITOR: Notifying observer [%p] of event: [%@]", buf, 0x16u);
            }

            [v8 appDocumentDidReceiveEvent:v22];
          }
        }

LABEL_29:
      }

      v5 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v46, 8);
}

BOOL __60__VUIAppDocumentUpdateEventMonitor__notifyObserversOfEvent___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v7 = [v6 viewController];
    *(*(*(a1 + 32) + 8) + 24) = v7 != 0;
    if (!v7)
    {
LABEL_9:
      v9 = 0;
      goto LABEL_10;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = +[VUIApplicationRouter topMostVisibleViewController];
  v9 = v8 == v7;

LABEL_10:
  return v9;
}

+ (BOOL)_isAppRefreshEventType:(id)type
{
  descriptor = [type descriptor];
  v4 = +[VUIAppDocumentUpdateEventDescriptor utsk];
  if ([descriptor isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[VUIAppDocumentUpdateEventDescriptor restrictions];
    if ([descriptor isEqual:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = +[VUIAppDocumentUpdateEventDescriptor accountChanged];
      if ([descriptor isEqual:v7])
      {
        v5 = 1;
      }

      else
      {
        v8 = +[VUIAppDocumentUpdateEventDescriptor entitlements];
        v5 = [descriptor isEqual:v8];
      }
    }
  }

  return v5;
}

@end