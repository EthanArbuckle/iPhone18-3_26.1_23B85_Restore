@interface VUIPlaybackTabManager
+ (id)sharedInstance;
- (BOOL)_isCurrentMediaLive;
- (BOOL)_isCurrentMediaSportingEvent;
- (BOOL)_isInfoHUDButtonPresent:(id)present;
- (BOOL)_isInsightTabAvailable;
- (BOOL)isCurrentMediaMovie;
- (BOOL)isCurrentMediaTVShow;
- (BOOL)shouldIncludeMultiviewButton;
- (BOOL)shouldShowMoreInfoButton;
- (BOOL)shouldShowPlayFromBeginningButtonForMediaInfo;
- (NSString)moreInfoTitle;
- (NSString)playTitleForFromBeginningAction;
- (UIImage)moreInfoImage;
- (UIImage)playImageForFromBeginningAction;
- (VUIPlaybackTabManager)init;
- (VUIPlaybackTabManagerDelegate)delegate;
- (id)_createHudContentViewControllerWithTabId:(id)id title:(id)title excludingCanonicals:(id)canonicals isMultiview:(BOOL)multiview locale:(id)locale playsFromStart:(BOOL)start;
- (id)_createPrefetchedDataForPlayerHUDWithTabId:(id)id title:(id)title excludingCanonicals:(id)canonicals isMultiview:(BOOL)multiview locale:(id)locale playsFromStart:(BOOL)start;
- (id)_documentRefContextDataForCurrentMediaTypeWithCanonicalID:(id)d showCanonicalID:(id)iD;
- (id)_getPageIDForTabName:(id)name;
- (id)appContext;
- (id)createClickMetricsWithType:(id)type;
- (id)createHUDViewControllerWithTabInfo:(id)info excludingCanonicals:(id)canonicals isMultiview:(BOOL)multiview locale:(id)locale playsFromStart:(BOOL)start;
- (id)getPageEventDataWithSelectedTab:(id)tab;
- (id)moreInfoViewControllerWithAppContext:(id)context;
- (void)_addMetadataInfoToEvent:(id)event;
- (void)_getTabsForCanonicalId:(id)id adamId:(id)adamId playablePassThrough:(id)through programId:(id)programId contentId:(id)contentId completion:(id)completion;
- (void)_handleDidShowInfoViewController:(id)controller;
- (void)_updateHUDsForAVPlayerViewController:(id)controller canonicalId:(id)id tabInfo:(id)info excludingCanonicals:(id)canonicals;
- (void)_updateTimedMetadataEligibilityFlagInCurrentMediaItem;
- (void)createImpressionsForInfoTab;
- (void)recordImpressionsForInfoTab;
- (void)recordPageHandler;
- (void)recordPageMetricsForSelectedTab:(id)tab tabName:(id)name;
- (void)recordPageMetricsForSelectedTab:(id)tab tabName:(id)name pageID:(id)d;
- (void)reportMoreInfoMetrics;
- (void)reportPlayFromBeginningMetrics;
- (void)resetPlayerTabsForPlayerViewController:(id)controller;
- (void)updatePlayerTabsExcludingCanonicals:(id)canonicals completion:(id)completion;
- (void)updatePlayerViewSize:(CGSize)size;
- (void)updatePrefetchedDataOnExistingHUDContentViewController:(id)controller canonicalId:(id)id excludingCanonicals:(id)canonicals;
@end

@implementation VUIPlaybackTabManager

- (void)recordPageHandler
{
  [(VUIPlaybackTabManager *)self recordPageMetricsForInfoTab];

  [(VUIPlaybackTabManager *)self createImpressionsForInfoTab];
}

- (void)_handleDidShowInfoViewController:(id)controller
{
  userInfo = [controller userInfo];
  v10 = [userInfo objectForKey:*MEMORY[0x1E6958598]];

  v5 = v10;
  if (v10 == *MEMORY[0x1E69585B0])
  {
    v6 = +[VUIInterfaceFactory sharedInstance];
    playbackMetricsQueueManager = [v6 playbackMetricsQueueManager];
    [playbackMetricsQueueManager recordPage:self];

    v8 = +[VUIInterfaceFactory sharedInstance];
    playbackMetricsQueueManager2 = [v8 playbackMetricsQueueManager];
    [playbackMetricsQueueManager2 recordImpressions:self];

    v5 = v10;
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VUIPlaybackTabManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_20 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_20, block);
  }

  v2 = sharedInstance_sharedInstance_7;

  return v2;
}

void __39__VUIPlaybackTabManager_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.tv.TimedMetadata", "VUIPlaybackTabManager");
  v3 = sTimedMetadataLogObject;
  sTimedMetadataLogObject = v2;

  v4 = objc_alloc_init(*(a1 + 32));
  v5 = sharedInstance_sharedInstance_7;
  sharedInstance_sharedInstance_7 = v4;
}

- (VUIPlaybackTabManager)init
{
  v7.receiver = self;
  v7.super_class = VUIPlaybackTabManager;
  v2 = [(VUIPlaybackTabManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    hudViewControllers = v2->_hudViewControllers;
    v2->_hudViewControllers = v3;

    v2->_playbackTabError = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleDidShowInfoViewController_ name:*MEMORY[0x1E69585A0] object:0];
  }

  return v2;
}

- (void)updatePlayerTabsExcludingCanonicals:(id)canonicals completion:(id)completion
{
  v71 = *MEMORY[0x1E69E9840];
  canonicalsCopy = canonicals;
  completionCopy = completion;
  if ([(VUIPlaybackTabManager *)self isPlayerTabsEnabled])
  {
    delegate = [(VUIPlaybackTabManager *)self delegate];
    currentMediaItem = [delegate currentMediaItem];

    v10 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyIsExtrasContent"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      goto LABEL_61;
    }

    *(&v56 + 1) = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
    *&v56 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
    v12 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataMakeAdditionalPlayerTabsRequest"];
    bOOLValue2 = [v12 BOOLValue];

    v14 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];
    v57 = v14;
    if (v14)
    {
      v15 = [v14 BOOLValue] ^ 1;
    }

    else
    {
      v15 = 1;
    }

    v55 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
    v54 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BF0]];
    v53 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
    v16 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsEligibleForInfoTab"];
    v17 = v16;
    if (v16)
    {
      bOOLValue3 = [v16 BOOLValue];
    }

    else
    {
      bOOLValue3 = 1;
    }

    if (!+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
    {
      v24 = VUIDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = @"NO";
        if (bOOLValue3)
        {
          v25 = @"YES";
        }

        *buf = 138412290;
        v70 = v25;
        _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: Network is not reachable, not fetching tabs setAllowInfoMetadataSubpanel:%@", buf, 0xCu);
      }

      delegate2 = [(VUIPlaybackTabManager *)self delegate];
      playerViewController = [delegate2 playerViewController];
      [playerViewController vui_setAllowInfoMetadataSubpanel:bOOLValue3];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      goto LABEL_60;
    }

    if (bOOLValue2)
    {
      lastRequestDate = [(VUIPlaybackTabManager *)self lastRequestDate];
      if (lastRequestDate)
      {
        lastRequestDate2 = [(VUIPlaybackTabManager *)self lastRequestDate];
        [lastRequestDate2 timeIntervalSinceNow];
        v22 = fabs(v21);

        if (v22 < 1.0)
        {
          v23 = VUIDefaultLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: Not fetching tabs since we just fetched them a moment ago", buf, 2u);
          }

          if (completionCopy)
          {
            completionCopy[2](completionCopy);
          }

          goto LABEL_60;
        }
      }
    }

    date = [MEMORY[0x1E695DF00] date];
    [(VUIPlaybackTabManager *)self setLastRequestDate:date];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__VUIPlaybackTabManager_updatePlayerTabsExcludingCanonicals_completion___block_invoke;
    aBlock[3] = &unk_1E8733608;
    v29 = completionCopy;
    v68 = v29;
    v51 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    if (v15)
    {
      delegate3 = [(VUIPlaybackTabManager *)self delegate];
      val = [delegate3 playerViewController];
      v30 = VUIDefaultLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: not fetching tabs because content is not eligible setAllowInfoMetadataSubpanel:NO", buf, 2u);
      }

      [val vui_setAllowInfoMetadataSubpanel:0];
      [(VUIPlaybackTabManager *)self resetPlayerTabsForPlayerViewController:val];
      if (!v29)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (v56 == 0)
    {
      delegate3 = [(VUIPlaybackTabManager *)self delegate];
      val = [delegate3 playerViewController];
      [(VUIPlaybackTabManager *)self resetPlayerTabsForPlayerViewController:val];
      v33 = VUIDefaultLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = @"NO";
        if (bOOLValue3)
        {
          v34 = @"YES";
        }

        *buf = 138412290;
        v70 = v34;
        _os_log_impl(&dword_1E323F000, v33, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: not fetching tabs because canonical id is missing setAllowInfoMetadataSubpanel:%@", buf, 0xCu);
      }

      [val vui_setAllowInfoMetadataSubpanel:bOOLValue3];
      if (!v29)
      {
        goto LABEL_59;
      }

LABEL_58:
      v29[2](v29);
      goto LABEL_59;
    }

    delegate3 = [(VUIPlaybackTabManager *)self delegate];
    val = [delegate3 playerViewController];
    if (*(&v56 + 1))
    {
      tabsInfo = [(VUIPlaybackTabManager *)self tabsInfo];
      if (tabsInfo)
      {
        tabsInfo2 = [(VUIPlaybackTabManager *)self tabsInfo];
        canonicalId = [tabsInfo2 canonicalId];
        v46 = [canonicalId isEqualToString:*(&v56 + 1)];

        if (((v46 ^ 1 | bOOLValue2) & 1) == 0)
        {
LABEL_53:
          tabsInfo3 = [(VUIPlaybackTabManager *)self tabsInfo];
          isInfoTabAllowed = [tabsInfo3 isInfoTabAllowed];

          v39 = VUIDefaultLogObject();
          v40 = isInfoTabAllowed & bOOLValue3;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v41 = @"NO";
            if (v40)
            {
              v41 = @"YES";
            }

            *buf = 138412290;
            v70 = v41;
            _os_log_impl(&dword_1E323F000, v39, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: not fetching tabs because we already have tabs setAllowInfoMetadataSubpanel:%@", buf, 0xCu);
          }

          [val vui_setAllowInfoMetadataSubpanel:v40];
          tabsInfo4 = [(VUIPlaybackTabManager *)self tabsInfo];
          canonicalId2 = [tabsInfo4 canonicalId];
          tabsInfo5 = [(VUIPlaybackTabManager *)self tabsInfo];
          tabDetails = [tabsInfo5 tabDetails];
          [(VUIPlaybackTabManager *)self _updateHUDsForAVPlayerViewController:val canonicalId:canonicalId2 tabInfo:tabDetails excludingCanonicals:canonicalsCopy];

          [(VUIPlaybackTabManager *)self _updateTimedMetadataEligibilityFlagInCurrentMediaItem];
          if (!v29)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      if (!v56)
      {
        goto LABEL_53;
      }

      tabsInfo6 = [(VUIPlaybackTabManager *)self tabsInfo];
      if (tabsInfo6 || [(VUIPlaybackTabManager *)self playbackTabError]== 2)
      {
        tabsInfo7 = [(VUIPlaybackTabManager *)self tabsInfo];
        adamId = [tabsInfo7 adamId];
        v47 = [adamId isEqualToString:v56];

        if (v47)
        {
          if ([(VUIPlaybackTabManager *)self playbackTabError]== 2)
          {
            v51[2](v51, val, @"VUIPlaybackTabManager:: not fetching tabs as canonical id is missing and we couldn't resolve it using current adam id");
LABEL_59:

            objc_destroyWeak(&location);
LABEL_60:

LABEL_61:
            goto LABEL_62;
          }

          goto LABEL_53;
        }
      }
    }

    if ((bOOLValue2 & 1) == 0)
    {
      [(VUIPlaybackTabManager *)self resetPlayerTabsForPlayerViewController:val];
    }

    objc_initWeak(buf, val);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __72__VUIPlaybackTabManager_updatePlayerTabsExcludingCanonicals_completion___block_invoke_153;
    v58[3] = &unk_1E8733630;
    objc_copyWeak(&v63, &location);
    objc_copyWeak(&v64, buf);
    v59 = *(&v56 + 1);
    v61 = v51;
    v65 = bOOLValue3;
    v62 = v29;
    v60 = canonicalsCopy;
    [(VUIPlaybackTabManager *)self _getTabsForCanonicalId:v59 adamId:v56 playablePassThrough:v55 programId:v54 contentId:v53 completion:v58];

    objc_destroyWeak(&v64);
    objc_destroyWeak(&v63);
    objc_destroyWeak(buf);
    goto LABEL_59;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_62:
}

uint64_t __72__VUIPlaybackTabManager_updatePlayerTabsExcludingCanonicals_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: Coudn't fetch tabs, returning early setting setAllowInfoMetadataSubpanel:NO", v6, 2u);
  }

  [v3 vui_setAllowInfoMetadataSubpanel:0];
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__VUIPlaybackTabManager_updatePlayerTabsExcludingCanonicals_completion___block_invoke_153(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = objc_loadWeakRetained((a1 + 72));
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
    v10 = *(a1 + 32);
    v11 = [v5 tabDetails];
    v12 = [v11 count];
    v13 = [v5 isInfoTabAllowed];
    [v5 focusedTabIdOnFirstDisplay];
    v42 = a1;
    v15 = v14 = v5;
    *buf = 138413314;
    v44 = v10;
    v7 = v9;
    v45 = 2048;
    v46 = v12;
    v47 = 1024;
    *v48 = v13;
    *&v48[4] = 2112;
    *&v48[6] = v15;
    v49 = 2048;
    v50 = a3;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: Fetched tabs: %@, count = %lu, isInfoTabAllowed: %d, focusedTabIdOnFirstDisplay: %@, error: %ld", buf, 0x30u);

    v5 = v14;
    a1 = v42;
  }

  [WeakRetained setPlaybackTabError:a3];
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
    if (!+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 80))
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        *buf = 138412290;
        v44 = v17;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: Network is not reachable setAllowInfoMetadataSubpanel:%@", buf, 0xCu);
      }

      [v7 vui_setAllowInfoMetadataSubpanel:*(a1 + 80)];
    }

    goto LABEL_40;
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    if ([v18 length])
    {
      v19 = *(a1 + 32);
      v20 = [v5 canonicalId];
      LOBYTE(v19) = [v19 isEqualToString:v20];

      if ((v19 & 1) == 0)
      {
        (*(*(a1 + 48) + 16))();
        goto LABEL_40;
      }
    }
  }

  v21 = [WeakRetained delegate];
  v22 = [v21 currentMediaItem];

  v23 = [v22 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  if (v23)
  {
    v24 = [v5 adamId];
    v25 = [v23 isEqualToString:v24];

    if ((v25 & 1) == 0)
    {
      (*(*(a1 + 48) + 16))();

      goto LABEL_40;
    }
  }

  v26 = [WeakRetained tabsInfo];
  if (([v5 isEqual:v26] & 1) == 0)
  {

    goto LABEL_22;
  }

  v27 = [v7 customInfoViewControllers];
  v28 = [v27 count];
  v29 = [v5 tabDetails];
  v30 = [v29 count];

  if (v28 != v30)
  {
LABEL_22:
    v32 = [v5 isInfoTabAllowed];
    if (v32)
    {
      v33 = *(a1 + 80);
    }

    else
    {
      v33 = 0;
    }

    v34 = VUIDefaultLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = @"NO";
      if (v33)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v37 = *(a1 + 80);
      if (v32)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      *buf = 138412802;
      v44 = v36;
      v45 = 2112;
      v46 = v38;
      if (v37)
      {
        v35 = @"YES";
      }

      v47 = 2112;
      *v48 = v35;
      _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: using tabs from UTS response setAllowInfoMetadataSubpanel: %@ isInfoTabAllowed = %@, isContentEligibleForInfoTab = %@", buf, 0x20u);
    }

    [WeakRetained setTabsInfo:v5];
    [v7 vui_setAllowInfoMetadataSubpanel:v33 & 1];
    v39 = [v5 canonicalId];
    v40 = [v5 tabDetails];
    [WeakRetained _updateHUDsForAVPlayerViewController:v7 canonicalId:v39 tabInfo:v40 excludingCanonicals:*(a1 + 40)];

    [WeakRetained _updateTimedMetadataEligibilityFlagInCurrentMediaItem];
    goto LABEL_37;
  }

  [WeakRetained _updateTimedMetadataEligibilityFlagInCurrentMediaItem];
  v31 = VUIDefaultLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: not updating tabs because the new ones match the existing ones", buf, 2u);
  }

LABEL_37:
  v41 = *(a1 + 56);
  if (v41)
  {
    (*(v41 + 16))();
  }

LABEL_40:
}

- (id)createHUDViewControllerWithTabInfo:(id)info excludingCanonicals:(id)canonicals isMultiview:(BOOL)multiview locale:(id)locale playsFromStart:(BOOL)start
{
  startCopy = start;
  multiviewCopy = multiview;
  infoCopy = info;
  localeCopy = locale;
  canonicalsCopy = canonicals;
  tabId = [infoCopy tabId];
  title = [infoCopy title];
  v17 = [(VUIPlaybackTabManager *)self _createHudContentViewControllerWithTabId:tabId title:title excludingCanonicals:canonicalsCopy isMultiview:multiviewCopy locale:localeCopy playsFromStart:startCopy];

  if (v17 && tabId)
  {
    v18 = objc_alloc_init(VUIHUDViewController);
    [(VUIHUDViewController *)v18 setTitle:title];
    [(VUIHUDViewController *)v18 setHudContentViewController:v17];
    tabId2 = [infoCopy tabId];
    [(VUIHUDViewController *)v18 setTabIdentifier:tabId2];

    [(VUIHUDViewController *)v18 setIsMultiview:multiviewCopy];
    hudViewControllers = [(VUIPlaybackTabManager *)self hudViewControllers];
    [hudViewControllers setObject:v18 forKey:tabId];
  }

  else
  {
    v21 = VUIDefaultLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Failed to create hud content view controller", v23, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)resetPlayerTabsForPlayerViewController:(id)controller
{
  controllerCopy = controller;
  [(VUIPlaybackTabManager *)self setTabsInfo:0];
  [(VUIPlaybackTabManager *)self setLastRequestDate:0];
  hudViewControllers = [(VUIPlaybackTabManager *)self hudViewControllers];
  [hudViewControllers removeAllObjects];

  [controllerCopy setCustomInfoViewControllers:MEMORY[0x1E695E0F0]];
  [(VUIPlaybackTabManager *)self setPlaybackTabError:0];
  v7 = +[VUIInterfaceFactory sharedInstance];
  playbackMetricsQueueManager = [v7 playbackMetricsQueueManager];
  [playbackMetricsQueueManager clearQueue];
}

- (void)updatePlayerViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  hudViewControllers = [(VUIPlaybackTabManager *)self hudViewControllers];
  allKeys = [hudViewControllers allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        hudViewControllers2 = [(VUIPlaybackTabManager *)self hudViewControllers];
        v14 = [hudViewControllers2 objectForKey:v12];

        [v14 setPlayerViewSize:{width, height}];
        hudContentViewController = [v14 hudContentViewController];
        [hudContentViewController setPlayerViewSize:{width, height}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_getTabsForCanonicalId:(id)id adamId:(id)adamId playablePassThrough:(id)through programId:(id)programId contentId:(id)contentId completion:(id)completion
{
  idCopy = id;
  adamIdCopy = adamId;
  throughCopy = through;
  programIdCopy = programId;
  contentIdCopy = contentId;
  completionCopy = completion;
  appContext = [(VUIPlaybackTabManager *)self appContext];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke;
  v27[3] = &unk_1E8733658;
  v28 = idCopy;
  v29 = adamIdCopy;
  v30 = throughCopy;
  v31 = programIdCopy;
  v32 = contentIdCopy;
  v33 = completionCopy;
  v21 = completionCopy;
  v22 = contentIdCopy;
  v23 = programIdCopy;
  v24 = throughCopy;
  v25 = adamIdCopy;
  v26 = idCopy;
  [appContext evaluate:v27];
}

void __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke(uint64_t a1, void *a2)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"PlayerTabsInterface"];
  v4 = [v3 objectForKeyedSubscript:@"getPlayerTabsItemWithParams"];
  v5 = [v4 isUndefined];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"getPlayerTabsItemWithPlayablePassThrough"];
    v7 = [v6 isUndefined];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = v8;
      if (!v8)
      {
        v9 = [MEMORY[0x1E695DFB0] null];
      }

      v44[0] = v9;
      v10 = *(a1 + 40);
      v11 = v10;
      if (!v10)
      {
        v11 = [MEMORY[0x1E695DFB0] null];
      }

      v44[1] = v11;
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_3_184;
      v38 = &unk_1E872FC40;
      v39 = *(a1 + 72);
      v12 = _Block_copy(&v35);
      v44[2] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:{3, v35, v36, v37, v38}];
      v14 = [v3 invokeMethod:@"getPlayerTabsItem" withArguments:v13];

      if (v10)
      {
        if (v8)
        {
LABEL_9:
          v15 = v39;
          goto LABEL_31;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_9;
    }

    v26 = *(a1 + 32);
    v27 = v26;
    if (!v26)
    {
      v27 = [MEMORY[0x1E695DFB0] null];
    }

    v45[0] = v27;
    v28 = *(a1 + 40);
    v29 = v28;
    if (!v28)
    {
      v29 = [MEMORY[0x1E695DFB0] null];
    }

    v45[1] = v29;
    v30 = *(a1 + 48);
    v31 = v30;
    if (!v30)
    {
      v31 = [MEMORY[0x1E695DFB0] null];
    }

    v45[2] = v31;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_3;
    v40[3] = &unk_1E872FC40;
    v41 = *(a1 + 72);
    v32 = _Block_copy(v40);
    v45[3] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    v34 = [v3 invokeMethod:@"getPlayerTabsItemWithPlayablePassThrough" withArguments:v33];

    if (v30)
    {
      if (v28)
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (v28)
      {
LABEL_29:
        if (v26)
        {
LABEL_30:
          v15 = v41;
          goto LABEL_31;
        }

LABEL_36:

        goto LABEL_30;
      }
    }

    if (v26)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = v16;
  v17 = *(a1 + 32);
  if (v17)
  {
    [v16 setObject:v17 forKeyedSubscript:@"canonicalId"];
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    [v15 setObject:v18 forKeyedSubscript:@"adamId"];
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    [v15 setObject:v19 forKeyedSubscript:@"playablePassThrough"];
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    [v15 setObject:v20 forKeyedSubscript:@"programId"];
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    [v15 setObject:v21 forKeyedSubscript:@"contentId"];
  }

  v22 = [v15 copy];
  v46[0] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_2;
  aBlock[3] = &unk_1E872FC40;
  v43 = *(a1 + 72);
  v23 = _Block_copy(aBlock);
  v46[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v25 = [v3 invokeMethod:@"getPlayerTabsItemWithParams" withArguments:v24];

LABEL_31:
}

void __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 vui_stringForKey:@"error"];
  if (v4)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Error occurred while fetching tabs: %@", buf, 0xCu);
    }

    if ([v4 isEqualToString:@"PlaybackTabErrorNoCanonicalOrAdamId"])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_177;
    block[3] = &unk_1E872E230;
    v15 = *(a1 + 32);
    v16 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v7 = v15;
  }

  else
  {
    v8 = [[VUIPlaybackTabInfo alloc] initWithDictionary:v3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_2_178;
    v10[3] = &unk_1E8732AF0;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    v13 = 0;
    v7 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 vui_stringForKey:@"error"];
  if (v4)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Error occurred while fetching tabs: %@", buf, 0xCu);
    }

    if ([v4 isEqualToString:@"PlaybackTabErrorNoCanonicalOrAdamId"])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_182;
    block[3] = &unk_1E872E230;
    v15 = *(a1 + 32);
    v16 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v7 = v15;
  }

  else
  {
    v8 = [[VUIPlaybackTabInfo alloc] initWithDictionary:v3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_2_183;
    v10[3] = &unk_1E8732AF0;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    v13 = 0;
    v7 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_3_184(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 vui_stringForKey:@"error"];
  if (v4)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Error occurred while fetching tabs: %@", buf, 0xCu);
    }

    if ([v4 isEqualToString:@"PlaybackTabErrorNoCanonicalOrAdamId"])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_185;
    block[3] = &unk_1E872E230;
    v15 = *(a1 + 32);
    v16 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v7 = v15;
  }

  else
  {
    v8 = [[VUIPlaybackTabInfo alloc] initWithDictionary:v3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke_2_186;
    v10[3] = &unk_1E8732AF0;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    v13 = 0;
    v7 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

- (void)_updateHUDsForAVPlayerViewController:(id)controller canonicalId:(id)id tabInfo:(id)info excludingCanonicals:(id)canonicals
{
  v49 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  idCopy = id;
  infoCopy = info;
  canonicalsCopy = canonicals;
  delegate = [(VUIPlaybackTabManager *)self delegate];
  if ([infoCopy count])
  {
    v36 = controllerCopy;
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = infoCopy;
    obj = infoCopy;
    v12 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (!v12)
    {
      goto LABEL_24;
    }

    v13 = v12;
    v42 = *v44;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        tabId = [v15 tabId];
        hudViewControllers = [(VUIPlaybackTabManager *)self hudViewControllers];
        v18 = [hudViewControllers objectForKey:tabId];

        if (v18)
        {
          hudContentViewController = [v18 hudContentViewController];
          [(VUIPlaybackTabManager *)self updatePrefetchedDataOnExistingHUDContentViewController:hudContentViewController canonicalId:idCopy excludingCanonicals:canonicalsCopy];
        }

        else
        {
          currentMediaItem = [delegate currentMediaItem];
          v21 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];
          v22 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];
          bOOLValue = [v22 BOOLValue];

          if ([tabId containsString:@"uts.col.PlayerTabKeyPlays"] && +[VUIGroupActivitiesManagerObjC isSessionActive](VUIGroupActivitiesManagerObjC, "isSessionActive"))
          {
            v18 = 0;
          }

          else
          {
            v18 = [(VUIPlaybackTabManager *)self createHUDViewControllerWithTabInfo:v15 excludingCanonicals:canonicalsCopy isMultiview:0 locale:v21 playsFromStart:bOOLValue];
          }

          view = [v36 view];
          window = [view window];
          [window bounds];
          [v18 setPlayerViewSize:{v26, v27}];

          if (!v18)
          {
            goto LABEL_22;
          }
        }

        hudContentViewController2 = [v18 hudContentViewController];
        if ([hudContentViewController2 conformsToProtocol:&unk_1F5F390C8])
        {
          v29 = hudContentViewController2;
          nowPlayingControllerDelegate = [delegate nowPlayingControllerDelegate];
          [v29 setNowPlayingTabDelegate:nowPlayingControllerDelegate];
        }

        title = [v18 title];
        v32 = [title length];

        if (!v32)
        {
          title2 = [v15 title];
          [v18 setTitle:title2];
        }

        if (![tabId containsString:@"uts.col.PlayerTabKeyPlays"] || !+[VUIGroupActivitiesManagerObjC isSessionActive](VUIGroupActivitiesManagerObjC, "isSessionActive"))
        {
          [v39 addObject:v18];
        }

LABEL_22:
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v13)
      {
LABEL_24:

        controllerCopy = v36;
        if ([v39 count])
        {
          [v36 setCustomInfoViewControllers:v39];
        }

        infoCopy = v35;
        goto LABEL_30;
      }
    }
  }

  v34 = VUIDefaultLogObject();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::No tabs are received, reset existing tabs if available and return early", buf, 2u);
  }

  [(VUIPlaybackTabManager *)self resetPlayerTabsForPlayerViewController:controllerCopy];
LABEL_30:
}

- (id)_createHudContentViewControllerWithTabId:(id)id title:(id)title excludingCanonicals:(id)canonicals isMultiview:(BOOL)multiview locale:(id)locale playsFromStart:(BOOL)start
{
  startCopy = start;
  multiviewCopy = multiview;
  v44 = *MEMORY[0x1E69E9840];
  idCopy = id;
  titleCopy = title;
  canonicalsCopy = canonicals;
  localeCopy = locale;
  delegate = [(VUIPlaybackTabManager *)self delegate];
  v19 = objc_opt_new();
  v41 = canonicalsCopy;
  if ([idCopy isEqualToString:@"uts.marker.Spotlight"])
  {
    v20 = VUIDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Creating timed metadata controller", buf, 2u);
    }

    v21 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"TimedMetadata"];
    v22 = +[VUIInterfaceFactory sharedInstance];
    appContext = [(VUIPlaybackTabManager *)self appContext];
    v24 = [(VUIDocumentDataSource *)v22 viewControllerWithDocumentDataSource:v21 appContext:appContext];
  }

  else
  {
    v25 = titleCopy;
    v21 = [(VUIPlaybackTabManager *)self _createPrefetchedDataForPlayerHUDWithTabId:idCopy title:titleCopy excludingCanonicals:canonicalsCopy isMultiview:multiviewCopy locale:localeCopy playsFromStart:startCopy];
    jsonData = [(VUIDocumentDataSource *)v21 jsonData];

    v27 = VUIDefaultLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      jsonData2 = [(VUIDocumentDataSource *)v21 jsonData];
      *buf = 138412290;
      v43 = jsonData2;
      _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Creating hud content controller with data: [%@]", buf, 0xCu);
    }

    v22 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"PlayerHUD"];
    appContext = [(VUIPlaybackTabManager *)self appContext];
    [(VUIDocumentDataSource *)v22 setDocumentType:@"player"];
    [(VUIDocumentDataSource *)v22 setControllerRef:@"PlayerHUD"];
    [(VUIDocumentDataSource *)v22 setPrefetchData:v21];
    v29 = +[VUIInterfaceFactory sharedInstance];
    v24 = [v29 viewControllerWithDocumentDataSource:v22 appContext:appContext];

    v19 = jsonData;
    titleCopy = v25;
  }

  if ([v24 conformsToProtocol:&unk_1F5F390C8])
  {
    v30 = v24;
    if (objc_opt_respondsToSelector())
    {
      nowPlayingControllerDelegate = [delegate nowPlayingControllerDelegate];
      [v30 setNowPlayingTabDelegate:nowPlayingControllerDelegate];
    }

    v32 = titleCopy;
    if (objc_opt_respondsToSelector())
    {
      [v30 setNowPlayingTabContextData:v19];
    }

    playerViewController = [delegate playerViewController];
    view = [playerViewController view];
    window = [view window];
    [window bounds];
    v37 = v36;
    v39 = v38;

    [v30 setPlayerViewSize:{v37, v39}];
    titleCopy = v32;
  }

  return v24;
}

- (id)_createPrefetchedDataForPlayerHUDWithTabId:(id)id title:(id)title excludingCanonicals:(id)canonicals isMultiview:(BOOL)multiview locale:(id)locale playsFromStart:(BOOL)start
{
  startCopy = start;
  multiviewCopy = multiview;
  canonicalsCopy = canonicals;
  localeCopy = locale;
  titleCopy = title;
  idCopy = id;
  delegate = [(VUIPlaybackTabManager *)self delegate];
  v19 = objc_opt_new();
  [v19 setTabId:idCopy];

  tabsInfo = [(VUIPlaybackTabManager *)self tabsInfo];
  canonicalId = [tabsInfo canonicalId];

  if (canonicalId)
  {
    [v19 setCanonicalId:canonicalId];
  }

  if (canonicalsCopy)
  {
    [v19 setExcludedCanonicals:canonicalsCopy];
  }

  [v19 setIncludeMultiviewButton:{-[VUIPlaybackTabManager shouldIncludeMultiviewButton](self, "shouldIncludeMultiviewButton")}];
  [v19 setIsMultiviewPlayer:multiviewCopy];
  [v19 setPlayFromStart:startCopy];
  multiviewIdentifiers = [delegate multiviewIdentifiers];
  [v19 setMultiviewIdentifiers:multiviewIdentifiers];

  [v19 setLocale:localeCopy];
  [v19 setTitle:titleCopy];

  return v19;
}

- (BOOL)shouldIncludeMultiviewButton
{
  delegate = [(VUIPlaybackTabManager *)self delegate];
  multiviewPlayerCount = [delegate multiviewPlayerCount];
  delegate2 = [(VUIPlaybackTabManager *)self delegate];
  maxMultiviewPlayerCount = [delegate2 maxMultiviewPlayerCount];

  if (multiviewPlayerCount == maxMultiviewPlayerCount)
  {
    return 0;
  }

  tabsInfo = [(VUIPlaybackTabManager *)self tabsInfo];
  multiviewTabInfo = [tabsInfo multiviewTabInfo];
  v7 = multiviewTabInfo != 0;

  return v7;
}

- (void)updatePrefetchedDataOnExistingHUDContentViewController:(id)controller canonicalId:(id)id excludingCanonicals:(id)canonicals
{
  controllerCopy = controller;
  idCopy = id;
  canonicalsCopy = canonicals;
  delegate = [(VUIPlaybackTabManager *)self delegate];
  if ([controllerCopy conformsToProtocol:&unk_1F5F390C8])
  {
    v11 = controllerCopy;
    if (objc_opt_respondsToSelector())
    {
      getNowPlayingTabContextData = [v11 getNowPlayingTabContextData];
      if (getNowPlayingTabContextData)
      {
        v13 = getNowPlayingTabContextData;
        v14 = [[VUIDocumentPreFetchedDataPlayerHUD alloc] initWithDictionary:getNowPlayingTabContextData];
        [(VUIDocumentPreFetchedDataPlayerHUD *)v14 setExcludedCanonicals:canonicalsCopy];
        multiviewIdentifiers = [delegate multiviewIdentifiers];
        [(VUIDocumentPreFetchedDataPlayerHUD *)v14 setMultiviewIdentifiers:multiviewIdentifiers];

        if (idCopy)
        {
          [(VUIDocumentPreFetchedDataPlayerHUD *)v14 setCanonicalId:idCopy];
        }

        [(VUIDocumentPreFetchedDataPlayerHUD *)v14 setIncludeMultiviewButton:[(VUIPlaybackTabManager *)self shouldIncludeMultiviewButton]];
        jsonData = [(VUIDocumentPreFetchedDataPlayerHUD *)v14 jsonData];
        if (objc_opt_respondsToSelector())
        {
          [v11 setNowPlayingTabContextData:jsonData];
        }
      }
    }
  }
}

- (id)appContext
{
  v2 = +[VUITVAppLauncher sharedInstance];
  appController = [v2 appController];
  appContext = [appController appContext];

  return appContext;
}

- (NSString)playTitleForFromBeginningAction
{
  _isCurrentMediaSportingEvent = [(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = v3;
  if (_isCurrentMediaSportingEvent)
  {
    v5 = @"WATCH_FROM_START";
  }

  else
  {
    v5 = @"START_PLAYBACK_FROM_BEGINNING";
  }

  v6 = [v3 localizedStringForKey:v5];

  return v6;
}

- (UIImage)playImageForFromBeginningAction
{
  if ([(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent])
  {
    v2 = @"arrow.counterclockwise";
  }

  else
  {
    v2 = @"play.fill";
  }

  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:v2];

  return v3;
}

- (void)recordPageMetricsForSelectedTab:(id)tab tabName:(id)name
{
  nameCopy = name;
  tabCopy = tab;
  v8 = [(VUIPlaybackTabManager *)self _getPageIDForTabName:nameCopy];
  [(VUIPlaybackTabManager *)self recordPageMetricsForSelectedTab:tabCopy tabName:nameCopy pageID:v8];
}

- (void)createImpressionsForInfoTab
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(VUIPlaybackTabManager *)self createClickMetricsWithType:@"play"];
  if (v4)
  {
    v5 = [VUIMetricsJetEngine convertClickDataToImpressionsData:v4 index:0];
    [v3 addObject:v5];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(VUIPlaybackTabManager *)self createClickMetricsWithType:@"navigate"];
  if (v7)
  {
    v8 = [VUIMetricsJetEngine convertClickDataToImpressionsData:v7 index:v6];
    [v3 addObject:v8];
  }

  if ([v3 count])
  {
    v10 = @"impressions";
    v11[0] = v3;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(VUIPlaybackTabManager *)self setInfoTabImpressions:v9];
  }
}

- (void)recordImpressionsForInfoTab
{
  infoTabImpressions = [(VUIPlaybackTabManager *)self infoTabImpressions];

  if (infoTabImpressions)
  {
    v4 = +[VUIMetricsController sharedInstance];
    infoTabImpressions2 = [(VUIPlaybackTabManager *)self infoTabImpressions];
    [v4 recordImpressions:infoTabImpressions2];

    [(VUIPlaybackTabManager *)self setInfoTabImpressions:0];
  }
}

- (id)getPageEventDataWithSelectedTab:(id)tab
{
  v12[1] = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  v11 = @"pageContext";
  v12[0] = @"player";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  if ([tabCopy isEqualToString:*MEMORY[0x1E69585B0]])
  {
    delegate = [(VUIPlaybackTabManager *)self delegate];
    currentMediaItem = [delegate currentMediaItem];

    v8 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
    v9 = [VUIMetricsPageEventData createWithPageId:v8 andPageType:@"Player" andEventData:v5];
  }

  else
  {
    currentMediaItem = [(VUIPlaybackTabManager *)self _getPageIDForTabName:tabCopy];
    if ([currentMediaItem length])
    {
      v9 = [VUIMetricsPageEventData createWithPageId:currentMediaItem andPageType:@"Player" andEventData:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)recordPageMetricsForSelectedTab:(id)tab tabName:(id)name pageID:(id)d
{
  v6 = [(VUIPlaybackTabManager *)self getPageEventDataWithSelectedTab:tab, name, d];
  v5 = +[VUIMetricsController sharedInstance];
  [v5 recordPage:v6];
}

- (id)_getPageIDForTabName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Continue Watching"])
  {
    v4 = @"UpNext";
LABEL_9:
    v5 = [(__CFString *)v4 copy];
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"Live Sports"])
  {
    v4 = @"LiveSports";
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"Key Plays"])
  {
    v4 = @"keyPlays";
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"InSight"])
  {
    v4 = @"uts.marker.Spotlight";
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (BOOL)_isCurrentMediaSportingEvent
{
  delegate = [(VUIPlaybackTabManager *)self delegate];
  currentMediaItem = [delegate currentMediaItem];

  LOBYTE(delegate) = [currentMediaItem hasTrait:VUIMediaItemTraitIsSportingEvent];
  return delegate;
}

- (BOOL)isCurrentMediaMovie
{
  delegate = [(VUIPlaybackTabManager *)self delegate];
  currentMediaItem = [delegate currentMediaItem];

  v4 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5EB8]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:*MEMORY[0x1E69D5EC8]];
  }

  return v5;
}

- (BOOL)isCurrentMediaTVShow
{
  delegate = [(VUIPlaybackTabManager *)self delegate];
  currentMediaItem = [delegate currentMediaItem];

  v4 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69D5ED0]];

  return v5;
}

- (BOOL)_isCurrentMediaLive
{
  delegate = [(VUIPlaybackTabManager *)self delegate];
  currentMediaItem = [delegate currentMediaItem];

  LOBYTE(delegate) = [currentMediaItem hasTrait:*MEMORY[0x1E69D5E50]];
  return delegate;
}

- (BOOL)_isInsightTabAvailable
{
  v18 = *MEMORY[0x1E69E9840];
  tabsInfo = [(VUIPlaybackTabManager *)self tabsInfo];
  tabDetails = [tabsInfo tabDetails];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = tabDetails;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        tabId = [*(*(&v13 + 1) + 8 * i) tabId];
        v10 = [tabId isEqualToString:@"uts.marker.Spotlight"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_updateTimedMetadataEligibilityFlagInCurrentMediaItem
{
  v13 = *MEMORY[0x1E69E9840];
  delegate = [(VUIPlaybackTabManager *)self delegate];
  currentMediaItem = [delegate currentMediaItem];

  _isInsightTabAvailable = [(VUIPlaybackTabManager *)self _isInsightTabAvailable];
  v6 = sTimedMetadataLogObject;
  if (os_log_type_enabled(sTimedMetadataLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (_isInsightTabAvailable)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = currentMediaItem;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Setting isEligibleForTimedMetadata - %@ for title - %@", &v9, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:_isInsightTabAvailable];
  [currentMediaItem setMediaItemMetadata:v8 forProperty:@"VUIMediaItemMetadataKeyIsEligibleForTimedMetadata"];
}

- (BOOL)shouldShowMoreInfoButton
{
  delegate = [(VUIPlaybackTabManager *)self delegate];
  currentMediaItem = [delegate currentMediaItem];

  v5 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v6 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
  if (!+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    goto LABEL_8;
  }

  if (!-[VUIPlaybackTabManager isCurrentMediaMovie](self, "isCurrentMediaMovie") && !-[VUIPlaybackTabManager _isCurrentMediaSportingEvent](self, "_isCurrentMediaSportingEvent") || ![v5 length])
  {
    if ([(VUIPlaybackTabManager *)self isCurrentMediaTVShow])
    {
      v7 = [v6 length] != 0;
      goto LABEL_9;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (BOOL)shouldShowPlayFromBeginningButtonForMediaInfo
{
  delegate = [(VUIPlaybackTabManager *)self delegate];
  mediaSupportsStartOver = [delegate mediaSupportsStartOver];

  LODWORD(delegate) = [(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent];
  _isCurrentMediaLive = [(VUIPlaybackTabManager *)self _isCurrentMediaLive];
  return (delegate | _isCurrentMediaLive) & mediaSupportsStartOver & 1 | (((delegate | _isCurrentMediaLive) & 1) == 0);
}

- (NSString)moreInfoTitle
{
  if ([(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent])
  {
    v3 = +[VUILocalizationManager sharedInstance];
    v4 = v3;
    v5 = @"MORE_INFO";
  }

  else
  {
    isCurrentMediaMovie = [(VUIPlaybackTabManager *)self isCurrentMediaMovie];
    v3 = +[VUILocalizationManager sharedInstance];
    v4 = v3;
    if (isCurrentMediaMovie)
    {
      v5 = @"TV.Button.GoToMovie";
    }

    else
    {
      v5 = @"TV.Button.GoToShow";
    }
  }

  v7 = [v3 localizedStringForKey:v5];

  return v7;
}

- (UIImage)moreInfoImage
{
  if (MEMORY[0x1E6913230](self, a2))
  {
    v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_documentRefContextDataForCurrentMediaTypeWithCanonicalID:(id)d showCanonicalID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([(VUIPlaybackTabManager *)self isCurrentMediaMovie]|| [(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent])
  {
    if ([dCopy length])
    {
      v8 = [[VUIDocumentContextDataMovie alloc] initWithMovieID:dCopy];
LABEL_5:
      v9 = v8;
      goto LABEL_10;
    }
  }

  else if (-[VUIPlaybackTabManager isCurrentMediaTVShow](self, "isCurrentMediaTVShow") && [iDCopy length])
  {
    v8 = [[VUIDocumentContextDataTVShow alloc] initWithShowID:iDCopy episodeID:dCopy];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)moreInfoViewControllerWithAppContext:(id)context
{
  v5 = @"MovieCanonical";
  contextCopy = context;
  delegate = [(VUIPlaybackTabManager *)self delegate];
  currentMediaItem = [delegate currentMediaItem];

  v9 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v10 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
  if ([(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent])
  {
    v11 = VUIDocumentRefSportsCanonical;
  }

  else
  {
    if (![(VUIPlaybackTabManager *)self isCurrentMediaTVShow])
    {
      goto LABEL_6;
    }

    v12 = v10;

    v11 = VUIDocumentRefTVShowCanonical;
    v9 = v12;
  }

  v13 = *v11;

  v5 = v13;
LABEL_6:
  v14 = [[VUIDocumentDataSource alloc] initWithDocumentRef:v5];
  [(VUIDocumentDataSource *)v14 setDocumentType:@"canonical"];
  [(VUIDocumentDataSource *)v14 setControllerRef:v5];
  v15 = objc_alloc_init(VUIDocumentUIConfiguration);
  [(VUIDocumentUIConfiguration *)v15 setViewControllerDocumentIdentifier:v9];
  [(VUIDocumentDataSource *)v14 setUiConfiguration:v15];
  v16 = [(VUIPlaybackTabManager *)self _documentRefContextDataForCurrentMediaTypeWithCanonicalID:v9 showCanonicalID:v10];
  [(VUIDocumentDataSource *)v14 setContextData:v16];

  v17 = +[VUIInterfaceFactory sharedInstance];
  v18 = [v17 viewControllerWithDocumentDataSource:v14 appContext:contextCopy];

  return v18;
}

- (BOOL)_isInfoHUDButtonPresent:(id)present
{
  presentCopy = present;
  if ([presentCopy isEqualToString:@"play"])
  {
    shouldShowPlayFromBeginningButtonForMediaInfo = [(VUIPlaybackTabManager *)self shouldShowPlayFromBeginningButtonForMediaInfo];
  }

  else
  {
    if (![presentCopy isEqualToString:@"navigate"])
    {
      v6 = 0;
      goto LABEL_7;
    }

    shouldShowPlayFromBeginningButtonForMediaInfo = [(VUIPlaybackTabManager *)self shouldShowMoreInfoButton];
  }

  v6 = shouldShowPlayFromBeginningButtonForMediaInfo;
LABEL_7:

  return v6;
}

- (id)createClickMetricsWithType:(id)type
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(VUIPlaybackTabManager *)self _isInfoHUDButtonPresent:typeCopy])
  {
    v9[0] = @"targetType";
    v9[1] = @"actionType";
    v10[0] = @"button";
    v10[1] = typeCopy;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v6 = [v5 mutableCopy];

    [(VUIPlaybackTabManager *)self _addMetadataInfoToEvent:v6];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addMetadataInfoToEvent:(id)event
{
  v18[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  delegate = [(VUIPlaybackTabManager *)self delegate];
  currentMediaItem = [delegate currentMediaItem];

  v7 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
  if (v7)
  {
    [eventCopy setObject:v7 forKey:@"brandId"];
  }

  v8 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v9 = [currentMediaItem hasTrait:VUIMediaItemTraitIsSportingEvent];
  if (v8)
  {
    v10 = [v8 isEqualToString:*MEMORY[0x1E69D5ED0]];
    v11 = VUIMetricsMediaContentTypeEpisode;
    if (!v10)
    {
      v11 = VUIMetricsMediaContentTypeMovie;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v11 = VUIMetricsMediaContentTypeSportingEvent;
  }

  [eventCopy setObject:*v11 forKey:@"contentType"];
LABEL_10:
  v12 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  if (v12)
  {
    [eventCopy setObject:v12 forKey:@"targetId"];
  }

  v13 = [eventCopy objectForKeyedSubscript:@"actionType"];
  if ([v13 length])
  {
    if ([v13 isEqualToString:@"play"])
    {
      playTitleForFromBeginningAction = [(VUIPlaybackTabManager *)self playTitleForFromBeginningAction];
    }

    else
    {
      if (![v13 isEqualToString:@"navigate"])
      {
        v15 = 0;
        goto LABEL_19;
      }

      playTitleForFromBeginningAction = [(VUIPlaybackTabManager *)self moreInfoTitle];
    }

    v15 = playTitleForFromBeginningAction;
LABEL_19:
    if ([v15 length])
    {
      v17 = @"name";
      v18[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [eventCopy setObject:v16 forKey:@"actionDetails"];
    }
  }
}

- (void)reportPlayFromBeginningMetrics
{
  v3 = [(VUIPlaybackTabManager *)self createClickMetricsWithType:@"play"];
  v2 = +[VUIMetricsController sharedInstance];
  [v2 recordClick:v3];
}

- (void)reportMoreInfoMetrics
{
  v3 = [(VUIPlaybackTabManager *)self createClickMetricsWithType:@"navigate"];
  v2 = +[VUIMetricsController sharedInstance];
  [v2 recordClick:v3];
}

- (VUIPlaybackTabManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end