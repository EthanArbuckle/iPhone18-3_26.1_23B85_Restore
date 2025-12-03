@interface ICCloudAvailabilityController
+ (id)sharedController;
- (BOOL)_isAutoDownloadOnCellularAllowed;
- (BOOL)canShowCloudDownloadButtons;
- (BOOL)canShowCloudMusic;
- (BOOL)canShowCloudVideo;
- (BOOL)hasProperNetworkConditionsToPlayMedia;
- (BOOL)hasProperNetworkConditionsToShowCloudMedia;
- (BOOL)isCellularDataRestrictedForMusic;
- (BOOL)isCellularDataRestrictedForStoreApps;
- (BOOL)isCellularDataRestrictedForVideos;
- (BOOL)isNetworkReachable;
- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions;
- (ICCloudAvailabilityController)init;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_onQueue_updateCanShowCloudDownloadButtonsWithNotification:(BOOL)notification;
- (void)_onQueue_updateCanShowCloudTracksWithNotification:(BOOL)notification;
- (void)_onQueue_updateIsCellularDataRestrictedForMusic;
- (void)_registerPerAppNetworkDataAccessPolicyChangedNotification;
- (void)_unregisterPerAppNetworkDataAccessPolicyChangedNotification;
- (void)_wifiStateDidChangeNotification:(id)notification;
- (void)airplaneModeChanged;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
- (void)internetConnectionStateChanged:(id)changed;
@end

@implementation ICCloudAvailabilityController

+ (id)sharedController
{
  if (sharedController___once != -1)
  {
    dispatch_once(&sharedController___once, &__block_literal_global_29759);
  }

  v3 = sharedController___sharedController;

  return v3;
}

- (ICCloudAvailabilityController)init
{
  v33 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = ICCloudAvailabilityController;
  v2 = [(ICCloudAvailabilityController *)&v28 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICCloudAvailabilityController.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v2->_isShowingAllMusic = [(ICCloudAvailabilityController *)v2 _uncachedIsShowingAllMusic];
    v2->_isShowingAllVideo = [(ICCloudAvailabilityController *)v2 _uncachedIsShowingAllVideo];
    v5 = +[ICDeviceInfo currentDeviceInfo];
    hasCellularDataCapability = [v5 hasCellularDataCapability];

    if (hasCellularDataCapability)
    {
      v7 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v2->_accessQueue];
      telephonyClient = v2->_telephonyClient;
      v2->_telephonyClient = v7;

      v9 = v2->_telephonyClient;
      v27 = 0;
      v10 = [(CoreTelephonyClient *)v9 getInternetConnectionStateSync:&v27];
      v11 = v27;
      if (v11)
      {
        v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = v2;
          *&buf[12] = 2114;
          *&buf[14] = v11;
          _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "<ICCloudAvailabilityController %p> init [CoreTelephonyClient getInternetConnectionStateSync] encountered error=%{public}@", buf, 0x16u);
        }

        v2->_isCellularDataActive = 0;
      }

      else
      {
        v2->_isCellularDataActive = [v10 state] == 2;
      }

      [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = __Block_byref_object_copy__29743;
    v31 = __Block_byref_object_dispose__29744;
    v13 = v2;
    v32 = v13;
    v14 = v2->_accessQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __37__ICCloudAvailabilityController_init__block_invoke;
    handler[3] = &unk_1E7BF7810;
    handler[4] = buf;
    v13->_preferencesChangedNotifyTokenIsValid = notify_register_dispatch("com.apple.mobileipod-prefsChanged", &v13->_preferencesChangedNotifyToken, v14, handler) == 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel__applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __37__ICCloudAvailabilityController_init__block_invoke_2;
    v24 = &unk_1E7BF7838;
    v25 = buf;
    v13->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();
    [(ICCloudAvailabilityController *)v13 _registerPerAppNetworkDataAccessPolicyChangedNotification];
    v13->_isCellularDataRestrictedForMusic = 1;
    v17 = v2->_accessQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __37__ICCloudAvailabilityController_init__block_invoke_37;
    v19[3] = &unk_1E7BFA300;
    v20 = v13;
    dispatch_async(v17, v19);

    _Block_object_dispose(buf, 8);
  }

  return v2;
}

uint64_t __49__ICCloudAvailabilityController_sharedController__block_invoke()
{
  sharedController___sharedController = objc_alloc_init(ICCloudAvailabilityController);

  return MEMORY[0x1EEE66BB8]();
}

void __37__ICCloudAvailabilityController_init__block_invoke_37(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  [*(*(a1 + 32) + 48) setDelegate:?];
  *(*(a1 + 32) + 17) = [*(*(a1 + 32) + 48) airplaneMode];
  *(*(a1 + 32) + 18) = [*(a1 + 32) _uncachedIsAutoDownloadOnCellularAllowed];
  v10 = +[ICEnvironmentMonitor sharedMonitor];
  [v10 registerObserver:*(a1 + 32)];
  *(*(a1 + 32) + 26) = [v10 isEthernetWired];
  *(*(a1 + 32) + 27) = [v10 isRemoteServerLikelyReachable];
  *(*(a1 + 32) + 40) = [v10 networkType];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *(a1 + 32);
  v7 = +[ICWiFiManager sharedWiFiManager];
  [v5 addObserver:v6 selector:sel__wifiStateDidChangeNotification_ name:@"ICWiFiManagerWiFiDidChangeNotification" object:v7];

  v8 = +[ICWiFiManager sharedWiFiManager];
  *(*(a1 + 32) + 24) = [v8 isWiFiEnabled];

  v9 = +[ICWiFiManager sharedWiFiManager];
  *(*(a1 + 32) + 25) = [v9 isWiFiAssociated];

  [*(a1 + 32) _onQueue_updateIsCellularDataRestrictedForMusic];
  [*(a1 + 32) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:0];
  [*(a1 + 32) _onQueue_updateCanShowCloudTracksWithNotification:0];
}

- (void)_registerPerAppNetworkDataAccessPolicyChangedNotification
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    v3 = _CTServerConnectionRegisterForNotification();
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v10 = 134218496;
        selfCopy2 = self;
        v12 = 1024;
        v13 = v3;
        v14 = 1024;
        v15 = HIDWORD(v3);
        v6 = "<ICCloudAvailabilityController %p> Error (domain %d, code %d) registering for PerAppNetworkDataAccessPolicyChangedNotification";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 24;
LABEL_7:
        _os_log_impl(&dword_1B4491000, v7, v8, v6, &v10, v9);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      selfCopy2 = self;
      v6 = "<ICCloudAvailabilityController %p> _registerPerAppNetworkDataAccessPolicyChangedNotificationfor CTPerAppNetworkDataAccessPolicyChangedNotification";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 12;
      goto LABEL_7;
    }
  }
}

- (BOOL)canShowCloudMusic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__ICCloudAvailabilityController_canShowCloudMusic__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_onQueue_updateIsCellularDataRestrictedForMusic
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    *theDict = 0;
    _CTServerConnectionCopyCellularUsagePolicy();
  }

  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isCellularDataRestrictedForMusic = self->_isCellularDataRestrictedForMusic;
    *theDict = 134218240;
    *&theDict[4] = self;
    v6 = 1024;
    v7 = isCellularDataRestrictedForMusic;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "<ICCloudAvailabilityController %p> Music restrict cellular data: %d", theDict, 0x12u);
  }
}

- (BOOL)canShowCloudVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__ICCloudAvailabilityController_canShowCloudVideo__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__ICCloudAvailabilityController_shouldProhibitMusicActionForCurrentNetworkConditions__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions
{
  if (!self->_isNetworkReachable)
  {
    return 1;
  }

  if ((self->_networkType - 1) > 0x1F2)
  {
    return 0;
  }

  return [(ICCloudAvailabilityController *)self isCellularDataRestrictedForVideos];
}

uint64_t __85__ICCloudAvailabilityController_shouldProhibitMusicActionForCurrentNetworkConditions__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 27) == 1)
  {
    if ((*(v1 + 40) - 1) > 0x1F2)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v1 + 20);
    }
  }

  else
  {
    v2 = 1;
  }

  *(*(*(result + 40) + 8) + 24) = v2 & 1;
  return result;
}

- (BOOL)hasProperNetworkConditionsToShowCloudMedia
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__ICCloudAvailabilityController_hasProperNetworkConditionsToShowCloudMedia__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)internetConnectionStateChanged:(id)changed
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [changed state] == 2;
  if (self->_isCellularDataActive != v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      isCellularDataActive = self->_isCellularDataActive;
      v7 = 134218496;
      selfCopy = self;
      v9 = 1024;
      v10 = isCellularDataActive;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "<ICCloudAvailabilityController %p> CoreTelephonyClientDataDelegate internetConnectionStateChanged: _isCellularDataActive=%{BOOL}u, newIsCellularDataActive=%{BOOL}u", &v7, 0x18u);
    }

    self->_isCellularDataActive = v4;
    [(ICCloudAvailabilityController *)self _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
    [(ICCloudAvailabilityController *)self _onQueue_updateCanShowCloudTracksWithNotification:1];
  }
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  typeCopy = type;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICCloudAvailabilityController_environmentMonitorDidChangeNetworkType___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = typeCopy;
  selfCopy = self;
  v6 = typeCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __72__ICCloudAvailabilityController_environmentMonitorDidChangeNetworkType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) networkType];
  v3 = *(a1 + 40);
  v4 = *(v3 + 40);
  if (v4 != result)
  {
    v5 = ((v4 - 1) < 0x1F3) ^ ((result - 1) < 0x1F3);
    v6 = v4 > 1999;
    *(v3 + 40) = result;
    *(*(a1 + 40) + 26) = result == 2000;
    if ((v5 & 1) != 0 || v6 != result > 1999)
    {
      [*(a1 + 40) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
      v7 = *(a1 + 40);

      return [v7 _onQueue_updateCanShowCloudTracksWithNotification:1];
    }
  }

  return result;
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__ICCloudAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = reachabilityCopy;
  selfCopy = self;
  v6 = reachabilityCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __80__ICCloudAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRemoteServerLikelyReachable];
  v3 = *(a1 + 40);
  if (*(v3 + 27) != result)
  {
    *(v3 + 27) = result;
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__ICCloudAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke_2;
    block[3] = &unk_1E7BFA300;
    block[4] = *(a1 + 40);
    dispatch_async(v4, block);

    [*(a1 + 40) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
    return [*(a1 + 40) _onQueue_updateCanShowCloudTracksWithNotification:1];
  }

  return result;
}

void __80__ICCloudAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerNetworkReachabilityDidChangeNotification" object:*(a1 + 32)];
}

- (void)_onQueue_updateCanShowCloudTracksWithNotification:(BOOL)notification
{
  isNetworkReachable = self->_isNetworkReachable;
  if (isNetworkReachable)
  {
    isShowingAllMusic = self->_isShowingAllMusic;
    isShowingAllVideo = self->_isShowingAllVideo;
  }

  else
  {
    isShowingAllMusic = 0;
    isShowingAllVideo = 0;
  }

  v7 = isShowingAllVideo;
  if (self->_canShowCloudMusic == isShowingAllMusic && self->_canShowCloudVideo == v7)
  {
    if (self->_hasProperNetworkConditionsToShowCloudMedia != isNetworkReachable)
    {
      self->_hasProperNetworkConditionsToShowCloudMedia = isNetworkReachable;
      if (notification)
      {
        v8 = dispatch_get_global_queue(0, 0);
LABEL_12:
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __83__ICCloudAvailabilityController__onQueue_updateCanShowCloudTracksWithNotification___block_invoke_2;
        v10[3] = &unk_1E7BFA300;
        v10[4] = self;
        dispatch_async(v8, v10);
      }
    }
  }

  else
  {
    self->_canShowCloudMusic = isShowingAllMusic;
    self->_canShowCloudVideo = v7;
    if (notification)
    {
      v8 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__ICCloudAvailabilityController__onQueue_updateCanShowCloudTracksWithNotification___block_invoke;
      block[3] = &unk_1E7BFA300;
      block[4] = self;
      dispatch_async(v8, block);

      v9 = self->_isNetworkReachable;
      if (self->_hasProperNetworkConditionsToShowCloudMedia == v9)
      {
        return;
      }

      self->_hasProperNetworkConditionsToShowCloudMedia = v9;
      goto LABEL_12;
    }

    if (self->_hasProperNetworkConditionsToShowCloudMedia != isNetworkReachable)
    {
      self->_hasProperNetworkConditionsToShowCloudMedia = isNetworkReachable;
    }
  }
}

void __83__ICCloudAvailabilityController__onQueue_updateCanShowCloudTracksWithNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerCanShowCloudTracksDidChangeNotification" object:*(a1 + 32)];
}

void __83__ICCloudAvailabilityController__onQueue_updateCanShowCloudTracksWithNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification" object:*(a1 + 32)];
}

- (void)_onQueue_updateCanShowCloudDownloadButtonsWithNotification:(BOOL)notification
{
  isNetworkReachable = self->_isNetworkReachable;
  if (self->_canShowCloudDownloadButtons != isNetworkReachable)
  {
    block[7] = v3;
    block[8] = v4;
    self->_canShowCloudDownloadButtons = isNetworkReachable;
    if (notification)
    {
      v7 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__ICCloudAvailabilityController__onQueue_updateCanShowCloudDownloadButtonsWithNotification___block_invoke;
      block[3] = &unk_1E7BFA300;
      block[4] = self;
      dispatch_async(v7, block);
    }
  }
}

void __92__ICCloudAvailabilityController__onQueue_updateCanShowCloudDownloadButtonsWithNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerCanShowCloudDownloadButtonsDidChangeNotification" object:*(a1 + 32)];
}

- (void)_unregisterPerAppNetworkDataAccessPolicyChangedNotification
{
  if (self->_ctServerConnection)
  {
    MEMORY[0x1EEDBEC70]();
  }
}

- (BOOL)_isAutoDownloadOnCellularAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__ICCloudAvailabilityController__isAutoDownloadOnCellularAllowed__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  v24 = *MEMORY[0x1E69E9840];
  isCellularDataRestrictedForMusic = self->_isCellularDataRestrictedForMusic;
  isCellularDataActive = self->_isCellularDataActive;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    telephonyClient = self->_telephonyClient;
    *buf = 134218240;
    selfCopy3 = self;
    v22 = 2048;
    v23 = telephonyClient;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "<ICCloudAvailabilityController %p> getting CTDataConnectionStatus from _telephonyClient <CoreTelephonyClient %p>", buf, 0x16u);
  }

  v8 = self->_telephonyClient;
  v19 = 0;
  v9 = [(CoreTelephonyClient *)v8 getInternetConnectionStateSync:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v22 = 2114;
      v23 = v10;
      v12 = "<ICCloudAvailabilityController %p> _applicationWillEnterForeground [CoreTelephonyClient getInternetConnectionStateSync] encountered error=%{public}@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1B4491000, v13, v14, v12, buf, 0x16u);
    }
  }

  else
  {
    isCellularDataActive = [v9 state] == 2;
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      selfCopy3 = self;
      v22 = 2113;
      v23 = v9;
      v12 = "<ICCloudAvailabilityController %p> received _telephonyClient CTDataConnectionStatus.state=%{private}@";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__ICCloudAvailabilityController__applicationWillEnterForeground___block_invoke;
  block[3] = &unk_1E7BF7888;
  block[4] = self;
  v17 = isCellularDataRestrictedForMusic;
  v18 = isCellularDataActive;
  dispatch_async(accessQueue, block);
}

void __65__ICCloudAvailabilityController__applicationWillEnterForeground___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _registerPerAppNetworkDataAccessPolicyChangedNotification];
  [*(a1 + 32) _onQueue_updateIsCellularDataRestrictedForMusic];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 19);
    v5 = *(a1 + 40);
    v6 = *(a1 + 41);
    v7 = *(v3 + 20);
    v10 = 134219008;
    v11 = v3;
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "<ICCloudAvailabilityController %p> _isCellularDataActive=%{BOOL}u, cellularDataRestrictedForMusic=%{BOOL}u, newIsCellularDataActive=%{BOOL}u, newCellularDataRestrictedForMusic=%{BOOL}u", &v10, 0x24u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 41);
  if (*(v8 + 19) != v9 || *(a1 + 40) != *(v8 + 20))
  {
    *(v8 + 19) = v9;
    [*(a1 + 32) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
    [*(a1 + 32) _onQueue_updateCanShowCloudTracksWithNotification:1];
  }
}

- (void)_applicationDidEnterBackground:(id)background
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ICCloudAvailabilityController__applicationDidEnterBackground___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_wifiStateDidChangeNotification:(id)notification
{
  v4 = +[ICWiFiManager sharedWiFiManager];
  isWiFiEnabled = [v4 isWiFiEnabled];

  v6 = +[ICWiFiManager sharedWiFiManager];
  isWiFiAssociated = [v6 isWiFiAssociated];

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ICCloudAvailabilityController__wifiStateDidChangeNotification___block_invoke;
  v9[3] = &unk_1E7BF7888;
  v9[4] = self;
  v10 = isWiFiEnabled;
  v11 = isWiFiAssociated;
  dispatch_async(accessQueue, v9);
}

uint64_t __65__ICCloudAvailabilityController__wifiStateDidChangeNotification___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(result + 40);
  if (*(v2 + 24) != v3 || *(v2 + 25) != *(result + 41))
  {
    *(v2 + 24) = v3;
    *(*(result + 32) + 25) = *(result + 41);
    [*(result + 32) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
    v4 = *(v1 + 32);

    return [v4 _onQueue_updateCanShowCloudTracksWithNotification:1];
  }

  return result;
}

- (void)airplaneModeChanged
{
  airplaneMode = [(RadiosPreferences *)self->_radiosPreferences airplaneMode];
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ICCloudAvailabilityController_airplaneModeChanged__block_invoke;
  v5[3] = &unk_1E7BF7860;
  v5[4] = self;
  v6 = airplaneMode;
  dispatch_async(accessQueue, v5);
}

uint64_t __52__ICCloudAvailabilityController_airplaneModeChanged__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(result + 40);
  if (*(v2 + 17) != v3)
  {
    v4 = result;
    *(v2 + 17) = v3;
    [*(result + 32) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
    v5 = *(v4 + 32);

    return [v5 _onQueue_updateCanShowCloudTracksWithNotification:1];
  }

  return result;
}

- (BOOL)isNetworkReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__ICCloudAvailabilityController_isNetworkReachable__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canShowCloudDownloadButtons
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__ICCloudAvailabilityController_canShowCloudDownloadButtons__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions
{
  if (!self->_isNetworkReachable)
  {
    return 1;
  }

  if ((self->_networkType - 1) > 0x1F2)
  {
    return 0;
  }

  return [(ICCloudAvailabilityController *)self isCellularDataRestrictedForStoreApps];
}

- (BOOL)isCellularDataRestrictedForStoreApps
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218240;
    selfCopy = self;
    v7 = 1024;
    v8 = 1;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "<ICCloudAvailabilityController %p> StoreApps allow cellular data: %d", &v5, 0x12u);
  }

  return 0;
}

- (BOOL)isCellularDataRestrictedForVideos
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [ICNetworkConstraints constraintsForSystemApplicationType:1];
  shouldAllowDataForCellularNetworkTypes = [v3 shouldAllowDataForCellularNetworkTypes];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    selfCopy = self;
    v9 = 1024;
    v10 = shouldAllowDataForCellularNetworkTypes;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "<ICCloudAvailabilityController %p> Videos allow cellular data: %d", &v7, 0x12u);
  }

  return shouldAllowDataForCellularNetworkTypes ^ 1;
}

- (BOOL)isCellularDataRestrictedForMusic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__ICCloudAvailabilityController_isCellularDataRestrictedForMusic__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasProperNetworkConditionsToPlayMedia
{
  if (self->_isNetworkReachable)
  {
    return (self->_networkType - 1) > 0x1F2 || self->_isAutoDownloadOnCellularAllowed;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  [(CoreTelephonyClient *)self->_telephonyClient setDelegate:0];
  [(RadiosPreferences *)self->_radiosPreferences setDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:0];

  if (self->_preferencesChangedNotifyTokenIsValid)
  {
    notify_cancel(self->_preferencesChangedNotifyToken);
  }

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = +[ICWiFiManager sharedWiFiManager];
  [defaultCenter3 removeObserver:self name:@"ICWiFiManagerWiFiDidChangeNotification" object:v6];

  if (self->_ctServerConnection)
  {
    [(ICCloudAvailabilityController *)self _unregisterPerAppNetworkDataAccessPolicyChangedNotification];
    CFRelease(self->_ctServerConnection);
  }

  v7.receiver = self;
  v7.super_class = ICCloudAvailabilityController;
  [(ICCloudAvailabilityController *)&v7 dealloc];
}

uint64_t __37__ICCloudAvailabilityController_init__block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v5 = v1;
    CFPreferencesAppSynchronize(@"com.apple.mobileipod");
    v2 = [v5 _uncachedIsShowingAllMusic];
    v3 = [v5 _uncachedIsShowingAllVideo];
    if (v5[21] != v2 || v5[22] != v3)
    {
      v5[21] = v2;
      v5[22] = v3;
      [v5 _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
      [v5 _onQueue_updateCanShowCloudTracksWithNotification:1];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __37__ICCloudAvailabilityController_init__block_invoke_2(uint64_t a1, const __CFString *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (CFStringCompare(a2, *MEMORY[0x1E6965288], 0) == kCFCompareEqualTo)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "<ICCloudAvailabilityController %p>  Received kCTPerAppNetworkDataAccessPolicyChangedNotification. Updating cellular data restrictions", &v5, 0xCu);
    }

    [v3 _onQueue_updateIsCellularDataRestrictedForMusic];
  }
}

@end