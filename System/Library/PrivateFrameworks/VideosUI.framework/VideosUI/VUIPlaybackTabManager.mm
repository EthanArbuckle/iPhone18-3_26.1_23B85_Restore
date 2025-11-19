@interface VUIPlaybackTabManager
+ (id)sharedInstance;
- (BOOL)_isCurrentMediaLive;
- (BOOL)_isCurrentMediaSportingEvent;
- (BOOL)_isInfoHUDButtonPresent:(id)a3;
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
- (id)_createHudContentViewControllerWithTabId:(id)a3 title:(id)a4 excludingCanonicals:(id)a5 isMultiview:(BOOL)a6 locale:(id)a7 playsFromStart:(BOOL)a8;
- (id)_createPrefetchedDataForPlayerHUDWithTabId:(id)a3 title:(id)a4 excludingCanonicals:(id)a5 isMultiview:(BOOL)a6 locale:(id)a7 playsFromStart:(BOOL)a8;
- (id)_documentRefContextDataForCurrentMediaTypeWithCanonicalID:(id)a3 showCanonicalID:(id)a4;
- (id)_getPageIDForTabName:(id)a3;
- (id)appContext;
- (id)createClickMetricsWithType:(id)a3;
- (id)createHUDViewControllerWithTabInfo:(id)a3 excludingCanonicals:(id)a4 isMultiview:(BOOL)a5 locale:(id)a6 playsFromStart:(BOOL)a7;
- (id)getPageEventDataWithSelectedTab:(id)a3;
- (id)moreInfoViewControllerWithAppContext:(id)a3;
- (void)_addMetadataInfoToEvent:(id)a3;
- (void)_getTabsForCanonicalId:(id)a3 adamId:(id)a4 playablePassThrough:(id)a5 programId:(id)a6 contentId:(id)a7 completion:(id)a8;
- (void)_handleDidShowInfoViewController:(id)a3;
- (void)_updateHUDsForAVPlayerViewController:(id)a3 canonicalId:(id)a4 tabInfo:(id)a5 excludingCanonicals:(id)a6;
- (void)_updateTimedMetadataEligibilityFlagInCurrentMediaItem;
- (void)createImpressionsForInfoTab;
- (void)recordImpressionsForInfoTab;
- (void)recordPageHandler;
- (void)recordPageMetricsForSelectedTab:(id)a3 tabName:(id)a4;
- (void)recordPageMetricsForSelectedTab:(id)a3 tabName:(id)a4 pageID:(id)a5;
- (void)reportMoreInfoMetrics;
- (void)reportPlayFromBeginningMetrics;
- (void)resetPlayerTabsForPlayerViewController:(id)a3;
- (void)updatePlayerTabsExcludingCanonicals:(id)a3 completion:(id)a4;
- (void)updatePlayerViewSize:(CGSize)a3;
- (void)updatePrefetchedDataOnExistingHUDContentViewController:(id)a3 canonicalId:(id)a4 excludingCanonicals:(id)a5;
@end

@implementation VUIPlaybackTabManager

- (void)recordPageHandler
{
  [(VUIPlaybackTabManager *)self recordPageMetricsForInfoTab];

  [(VUIPlaybackTabManager *)self createImpressionsForInfoTab];
}

- (void)_handleDidShowInfoViewController:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x1E6958598]];

  v5 = v10;
  if (v10 == *MEMORY[0x1E69585B0])
  {
    v6 = +[VUIInterfaceFactory sharedInstance];
    v7 = [v6 playbackMetricsQueueManager];
    [v7 recordPage:self];

    v8 = +[VUIInterfaceFactory sharedInstance];
    v9 = [v8 playbackMetricsQueueManager];
    [v9 recordImpressions:self];

    v5 = v10;
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VUIPlaybackTabManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__handleDidShowInfoViewController_ name:*MEMORY[0x1E69585A0] object:0];
  }

  return v2;
}

- (void)updatePlayerTabsExcludingCanonicals:(id)a3 completion:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(VUIPlaybackTabManager *)self isPlayerTabsEnabled])
  {
    v8 = [(VUIPlaybackTabManager *)self delegate];
    v9 = [v8 currentMediaItem];

    v10 = [v9 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyIsExtrasContent"];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      if (v7)
      {
        v7[2](v7);
      }

      goto LABEL_61;
    }

    *(&v56 + 1) = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
    *&v56 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
    v12 = [v9 mediaItemMetadataForProperty:@"VUIMediaItemMetadataMakeAdditionalPlayerTabsRequest"];
    v13 = [v12 BOOLValue];

    v14 = [v9 mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];
    v57 = v14;
    if (v14)
    {
      v15 = [v14 BOOLValue] ^ 1;
    }

    else
    {
      v15 = 1;
    }

    v55 = [v9 mediaItemMetadataForProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
    v54 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BF0]];
    v53 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
    v16 = [v9 mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsEligibleForInfoTab"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 BOOLValue];
    }

    else
    {
      v18 = 1;
    }

    if (!+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
    {
      v24 = VUIDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = @"NO";
        if (v18)
        {
          v25 = @"YES";
        }

        *buf = 138412290;
        v70 = v25;
        _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: Network is not reachable, not fetching tabs setAllowInfoMetadataSubpanel:%@", buf, 0xCu);
      }

      v26 = [(VUIPlaybackTabManager *)self delegate];
      v27 = [v26 playerViewController];
      [v27 vui_setAllowInfoMetadataSubpanel:v18];
      if (v7)
      {
        v7[2](v7);
      }

      goto LABEL_60;
    }

    if (v13)
    {
      v19 = [(VUIPlaybackTabManager *)self lastRequestDate];
      if (v19)
      {
        v20 = [(VUIPlaybackTabManager *)self lastRequestDate];
        [v20 timeIntervalSinceNow];
        v22 = fabs(v21);

        if (v22 < 1.0)
        {
          v23 = VUIDefaultLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: Not fetching tabs since we just fetched them a moment ago", buf, 2u);
          }

          if (v7)
          {
            v7[2](v7);
          }

          goto LABEL_60;
        }
      }
    }

    v28 = [MEMORY[0x1E695DF00] date];
    [(VUIPlaybackTabManager *)self setLastRequestDate:v28];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__VUIPlaybackTabManager_updatePlayerTabsExcludingCanonicals_completion___block_invoke;
    aBlock[3] = &unk_1E8733608;
    v29 = v7;
    v68 = v29;
    v51 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    if (v15)
    {
      v50 = [(VUIPlaybackTabManager *)self delegate];
      val = [v50 playerViewController];
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
      v50 = [(VUIPlaybackTabManager *)self delegate];
      val = [v50 playerViewController];
      [(VUIPlaybackTabManager *)self resetPlayerTabsForPlayerViewController:val];
      v33 = VUIDefaultLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = @"NO";
        if (v18)
        {
          v34 = @"YES";
        }

        *buf = 138412290;
        v70 = v34;
        _os_log_impl(&dword_1E323F000, v33, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager:: not fetching tabs because canonical id is missing setAllowInfoMetadataSubpanel:%@", buf, 0xCu);
      }

      [val vui_setAllowInfoMetadataSubpanel:v18];
      if (!v29)
      {
        goto LABEL_59;
      }

LABEL_58:
      v29[2](v29);
      goto LABEL_59;
    }

    v50 = [(VUIPlaybackTabManager *)self delegate];
    val = [v50 playerViewController];
    if (*(&v56 + 1))
    {
      v31 = [(VUIPlaybackTabManager *)self tabsInfo];
      if (v31)
      {
        v48 = [(VUIPlaybackTabManager *)self tabsInfo];
        v32 = [v48 canonicalId];
        v46 = [v32 isEqualToString:*(&v56 + 1)];

        if (((v46 ^ 1 | v13) & 1) == 0)
        {
LABEL_53:
          v37 = [(VUIPlaybackTabManager *)self tabsInfo];
          v38 = [v37 isInfoTabAllowed];

          v39 = VUIDefaultLogObject();
          v40 = v38 & v18;
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
          v42 = [(VUIPlaybackTabManager *)self tabsInfo];
          v43 = [v42 canonicalId];
          v44 = [(VUIPlaybackTabManager *)self tabsInfo];
          v45 = [v44 tabDetails];
          [(VUIPlaybackTabManager *)self _updateHUDsForAVPlayerViewController:val canonicalId:v43 tabInfo:v45 excludingCanonicals:v6];

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

      v49 = [(VUIPlaybackTabManager *)self tabsInfo];
      if (v49 || [(VUIPlaybackTabManager *)self playbackTabError]== 2)
      {
        v35 = [(VUIPlaybackTabManager *)self tabsInfo];
        v36 = [v35 adamId];
        v47 = [v36 isEqualToString:v56];

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

    if ((v13 & 1) == 0)
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
    v65 = v18;
    v62 = v29;
    v60 = v6;
    [(VUIPlaybackTabManager *)self _getTabsForCanonicalId:v59 adamId:v56 playablePassThrough:v55 programId:v54 contentId:v53 completion:v58];

    objc_destroyWeak(&v64);
    objc_destroyWeak(&v63);
    objc_destroyWeak(buf);
    goto LABEL_59;
  }

  if (v7)
  {
    v7[2](v7);
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

- (id)createHUDViewControllerWithTabInfo:(id)a3 excludingCanonicals:(id)a4 isMultiview:(BOOL)a5 locale:(id)a6 playsFromStart:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v12 = a3;
  v13 = a6;
  v14 = a4;
  v15 = [v12 tabId];
  v16 = [v12 title];
  v17 = [(VUIPlaybackTabManager *)self _createHudContentViewControllerWithTabId:v15 title:v16 excludingCanonicals:v14 isMultiview:v9 locale:v13 playsFromStart:v7];

  if (v17 && v15)
  {
    v18 = objc_alloc_init(VUIHUDViewController);
    [(VUIHUDViewController *)v18 setTitle:v16];
    [(VUIHUDViewController *)v18 setHudContentViewController:v17];
    v19 = [v12 tabId];
    [(VUIHUDViewController *)v18 setTabIdentifier:v19];

    [(VUIHUDViewController *)v18 setIsMultiview:v9];
    v20 = [(VUIPlaybackTabManager *)self hudViewControllers];
    [v20 setObject:v18 forKey:v15];
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

- (void)resetPlayerTabsForPlayerViewController:(id)a3
{
  v4 = a3;
  [(VUIPlaybackTabManager *)self setTabsInfo:0];
  [(VUIPlaybackTabManager *)self setLastRequestDate:0];
  v5 = [(VUIPlaybackTabManager *)self hudViewControllers];
  [v5 removeAllObjects];

  [v4 setCustomInfoViewControllers:MEMORY[0x1E695E0F0]];
  [(VUIPlaybackTabManager *)self setPlaybackTabError:0];
  v7 = +[VUIInterfaceFactory sharedInstance];
  v6 = [v7 playbackMetricsQueueManager];
  [v6 clearQueue];
}

- (void)updatePlayerViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(VUIPlaybackTabManager *)self hudViewControllers];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [(VUIPlaybackTabManager *)self hudViewControllers];
        v14 = [v13 objectForKey:v12];

        [v14 setPlayerViewSize:{width, height}];
        v15 = [v14 hudContentViewController];
        [v15 setPlayerViewSize:{width, height}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_getTabsForCanonicalId:(id)a3 adamId:(id)a4 playablePassThrough:(id)a5 programId:(id)a6 contentId:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(VUIPlaybackTabManager *)self appContext];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __106__VUIPlaybackTabManager__getTabsForCanonicalId_adamId_playablePassThrough_programId_contentId_completion___block_invoke;
  v27[3] = &unk_1E8733658;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  [v20 evaluate:v27];
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

- (void)_updateHUDsForAVPlayerViewController:(id)a3 canonicalId:(id)a4 tabInfo:(id)a5 excludingCanonicals:(id)a6
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v38 = a4;
  v11 = a5;
  v41 = a6;
  v40 = [(VUIPlaybackTabManager *)self delegate];
  if ([v11 count])
  {
    v36 = v10;
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = v11;
    obj = v11;
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
        v16 = [v15 tabId];
        v17 = [(VUIPlaybackTabManager *)self hudViewControllers];
        v18 = [v17 objectForKey:v16];

        if (v18)
        {
          v19 = [v18 hudContentViewController];
          [(VUIPlaybackTabManager *)self updatePrefetchedDataOnExistingHUDContentViewController:v19 canonicalId:v38 excludingCanonicals:v41];
        }

        else
        {
          v20 = [v40 currentMediaItem];
          v21 = [v20 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];
          v22 = [v20 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];
          v23 = [v22 BOOLValue];

          if ([v16 containsString:@"uts.col.PlayerTabKeyPlays"] && +[VUIGroupActivitiesManagerObjC isSessionActive](VUIGroupActivitiesManagerObjC, "isSessionActive"))
          {
            v18 = 0;
          }

          else
          {
            v18 = [(VUIPlaybackTabManager *)self createHUDViewControllerWithTabInfo:v15 excludingCanonicals:v41 isMultiview:0 locale:v21 playsFromStart:v23];
          }

          v24 = [v36 view];
          v25 = [v24 window];
          [v25 bounds];
          [v18 setPlayerViewSize:{v26, v27}];

          if (!v18)
          {
            goto LABEL_22;
          }
        }

        v28 = [v18 hudContentViewController];
        if ([v28 conformsToProtocol:&unk_1F5F390C8])
        {
          v29 = v28;
          v30 = [v40 nowPlayingControllerDelegate];
          [v29 setNowPlayingTabDelegate:v30];
        }

        v31 = [v18 title];
        v32 = [v31 length];

        if (!v32)
        {
          v33 = [v15 title];
          [v18 setTitle:v33];
        }

        if (![v16 containsString:@"uts.col.PlayerTabKeyPlays"] || !+[VUIGroupActivitiesManagerObjC isSessionActive](VUIGroupActivitiesManagerObjC, "isSessionActive"))
        {
          [v39 addObject:v18];
        }

LABEL_22:
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v13)
      {
LABEL_24:

        v10 = v36;
        if ([v39 count])
        {
          [v36 setCustomInfoViewControllers:v39];
        }

        v11 = v35;
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

  [(VUIPlaybackTabManager *)self resetPlayerTabsForPlayerViewController:v10];
LABEL_30:
}

- (id)_createHudContentViewControllerWithTabId:(id)a3 title:(id)a4 excludingCanonicals:(id)a5 isMultiview:(BOOL)a6 locale:(id)a7 playsFromStart:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v44 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = [(VUIPlaybackTabManager *)self delegate];
  v19 = objc_opt_new();
  v41 = v16;
  if ([v14 isEqualToString:@"uts.marker.Spotlight"])
  {
    v20 = VUIDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Creating timed metadata controller", buf, 2u);
    }

    v21 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"TimedMetadata"];
    v22 = +[VUIInterfaceFactory sharedInstance];
    v23 = [(VUIPlaybackTabManager *)self appContext];
    v24 = [(VUIDocumentDataSource *)v22 viewControllerWithDocumentDataSource:v21 appContext:v23];
  }

  else
  {
    v25 = v15;
    v21 = [(VUIPlaybackTabManager *)self _createPrefetchedDataForPlayerHUDWithTabId:v14 title:v15 excludingCanonicals:v16 isMultiview:v10 locale:v17 playsFromStart:v8];
    v26 = [(VUIDocumentDataSource *)v21 jsonData];

    v27 = VUIDefaultLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(VUIDocumentDataSource *)v21 jsonData];
      *buf = 138412290;
      v43 = v28;
      _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Creating hud content controller with data: [%@]", buf, 0xCu);
    }

    v22 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"PlayerHUD"];
    v23 = [(VUIPlaybackTabManager *)self appContext];
    [(VUIDocumentDataSource *)v22 setDocumentType:@"player"];
    [(VUIDocumentDataSource *)v22 setControllerRef:@"PlayerHUD"];
    [(VUIDocumentDataSource *)v22 setPrefetchData:v21];
    v29 = +[VUIInterfaceFactory sharedInstance];
    v24 = [v29 viewControllerWithDocumentDataSource:v22 appContext:v23];

    v19 = v26;
    v15 = v25;
  }

  if ([v24 conformsToProtocol:&unk_1F5F390C8])
  {
    v30 = v24;
    if (objc_opt_respondsToSelector())
    {
      v31 = [v18 nowPlayingControllerDelegate];
      [v30 setNowPlayingTabDelegate:v31];
    }

    v32 = v15;
    if (objc_opt_respondsToSelector())
    {
      [v30 setNowPlayingTabContextData:v19];
    }

    v33 = [v18 playerViewController];
    v34 = [v33 view];
    v35 = [v34 window];
    [v35 bounds];
    v37 = v36;
    v39 = v38;

    [v30 setPlayerViewSize:{v37, v39}];
    v15 = v32;
  }

  return v24;
}

- (id)_createPrefetchedDataForPlayerHUDWithTabId:(id)a3 title:(id)a4 excludingCanonicals:(id)a5 isMultiview:(BOOL)a6 locale:(id)a7 playsFromStart:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v14 = a5;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = [(VUIPlaybackTabManager *)self delegate];
  v19 = objc_opt_new();
  [v19 setTabId:v17];

  v20 = [(VUIPlaybackTabManager *)self tabsInfo];
  v21 = [v20 canonicalId];

  if (v21)
  {
    [v19 setCanonicalId:v21];
  }

  if (v14)
  {
    [v19 setExcludedCanonicals:v14];
  }

  [v19 setIncludeMultiviewButton:{-[VUIPlaybackTabManager shouldIncludeMultiviewButton](self, "shouldIncludeMultiviewButton")}];
  [v19 setIsMultiviewPlayer:v10];
  [v19 setPlayFromStart:v8];
  v22 = [v18 multiviewIdentifiers];
  [v19 setMultiviewIdentifiers:v22];

  [v19 setLocale:v15];
  [v19 setTitle:v16];

  return v19;
}

- (BOOL)shouldIncludeMultiviewButton
{
  v3 = [(VUIPlaybackTabManager *)self delegate];
  v4 = [v3 multiviewPlayerCount];
  v5 = [(VUIPlaybackTabManager *)self delegate];
  v6 = [v5 maxMultiviewPlayerCount];

  if (v4 == v6)
  {
    return 0;
  }

  v8 = [(VUIPlaybackTabManager *)self tabsInfo];
  v9 = [v8 multiviewTabInfo];
  v7 = v9 != 0;

  return v7;
}

- (void)updatePrefetchedDataOnExistingHUDContentViewController:(id)a3 canonicalId:(id)a4 excludingCanonicals:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VUIPlaybackTabManager *)self delegate];
  if ([v17 conformsToProtocol:&unk_1F5F390C8])
  {
    v11 = v17;
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 getNowPlayingTabContextData];
      if (v12)
      {
        v13 = v12;
        v14 = [[VUIDocumentPreFetchedDataPlayerHUD alloc] initWithDictionary:v12];
        [(VUIDocumentPreFetchedDataPlayerHUD *)v14 setExcludedCanonicals:v9];
        v15 = [v10 multiviewIdentifiers];
        [(VUIDocumentPreFetchedDataPlayerHUD *)v14 setMultiviewIdentifiers:v15];

        if (v8)
        {
          [(VUIDocumentPreFetchedDataPlayerHUD *)v14 setCanonicalId:v8];
        }

        [(VUIDocumentPreFetchedDataPlayerHUD *)v14 setIncludeMultiviewButton:[(VUIPlaybackTabManager *)self shouldIncludeMultiviewButton]];
        v16 = [(VUIDocumentPreFetchedDataPlayerHUD *)v14 jsonData];
        if (objc_opt_respondsToSelector())
        {
          [v11 setNowPlayingTabContextData:v16];
        }
      }
    }
  }
}

- (id)appContext
{
  v2 = +[VUITVAppLauncher sharedInstance];
  v3 = [v2 appController];
  v4 = [v3 appContext];

  return v4;
}

- (NSString)playTitleForFromBeginningAction
{
  v2 = [(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = v3;
  if (v2)
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

- (void)recordPageMetricsForSelectedTab:(id)a3 tabName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VUIPlaybackTabManager *)self _getPageIDForTabName:v6];
  [(VUIPlaybackTabManager *)self recordPageMetricsForSelectedTab:v7 tabName:v6 pageID:v8];
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
  v3 = [(VUIPlaybackTabManager *)self infoTabImpressions];

  if (v3)
  {
    v4 = +[VUIMetricsController sharedInstance];
    v5 = [(VUIPlaybackTabManager *)self infoTabImpressions];
    [v4 recordImpressions:v5];

    [(VUIPlaybackTabManager *)self setInfoTabImpressions:0];
  }
}

- (id)getPageEventDataWithSelectedTab:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = @"pageContext";
  v12[0] = @"player";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  if ([v4 isEqualToString:*MEMORY[0x1E69585B0]])
  {
    v6 = [(VUIPlaybackTabManager *)self delegate];
    v7 = [v6 currentMediaItem];

    v8 = [v7 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
    v9 = [VUIMetricsPageEventData createWithPageId:v8 andPageType:@"Player" andEventData:v5];
  }

  else
  {
    v7 = [(VUIPlaybackTabManager *)self _getPageIDForTabName:v4];
    if ([v7 length])
    {
      v9 = [VUIMetricsPageEventData createWithPageId:v7 andPageType:@"Player" andEventData:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)recordPageMetricsForSelectedTab:(id)a3 tabName:(id)a4 pageID:(id)a5
{
  v6 = [(VUIPlaybackTabManager *)self getPageEventDataWithSelectedTab:a3, a4, a5];
  v5 = +[VUIMetricsController sharedInstance];
  [v5 recordPage:v6];
}

- (id)_getPageIDForTabName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Continue Watching"])
  {
    v4 = @"UpNext";
LABEL_9:
    v5 = [(__CFString *)v4 copy];
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"Live Sports"])
  {
    v4 = @"LiveSports";
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"Key Plays"])
  {
    v4 = @"keyPlays";
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"InSight"])
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
  v2 = [(VUIPlaybackTabManager *)self delegate];
  v3 = [v2 currentMediaItem];

  LOBYTE(v2) = [v3 hasTrait:VUIMediaItemTraitIsSportingEvent];
  return v2;
}

- (BOOL)isCurrentMediaMovie
{
  v2 = [(VUIPlaybackTabManager *)self delegate];
  v3 = [v2 currentMediaItem];

  v4 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
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
  v2 = [(VUIPlaybackTabManager *)self delegate];
  v3 = [v2 currentMediaItem];

  v4 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69D5ED0]];

  return v5;
}

- (BOOL)_isCurrentMediaLive
{
  v2 = [(VUIPlaybackTabManager *)self delegate];
  v3 = [v2 currentMediaItem];

  LOBYTE(v2) = [v3 hasTrait:*MEMORY[0x1E69D5E50]];
  return v2;
}

- (BOOL)_isInsightTabAvailable
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(VUIPlaybackTabManager *)self tabsInfo];
  v3 = [v2 tabDetails];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
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

        v9 = [*(*(&v13 + 1) + 8 * i) tabId];
        v10 = [v9 isEqualToString:@"uts.marker.Spotlight"];

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
  v3 = [(VUIPlaybackTabManager *)self delegate];
  v4 = [v3 currentMediaItem];

  v5 = [(VUIPlaybackTabManager *)self _isInsightTabAvailable];
  v6 = sTimedMetadataLogObject;
  if (os_log_type_enabled(sTimedMetadataLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPlaybackTabManager::Setting isEligibleForTimedMetadata - %@ for title - %@", &v9, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v4 setMediaItemMetadata:v8 forProperty:@"VUIMediaItemMetadataKeyIsEligibleForTimedMetadata"];
}

- (BOOL)shouldShowMoreInfoButton
{
  v3 = [(VUIPlaybackTabManager *)self delegate];
  v4 = [v3 currentMediaItem];

  v5 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v6 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
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
  v3 = [(VUIPlaybackTabManager *)self delegate];
  v4 = [v3 mediaSupportsStartOver];

  LODWORD(v3) = [(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent];
  v5 = [(VUIPlaybackTabManager *)self _isCurrentMediaLive];
  return (v3 | v5) & v4 & 1 | (((v3 | v5) & 1) == 0);
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
    v6 = [(VUIPlaybackTabManager *)self isCurrentMediaMovie];
    v3 = +[VUILocalizationManager sharedInstance];
    v4 = v3;
    if (v6)
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

- (id)_documentRefContextDataForCurrentMediaTypeWithCanonicalID:(id)a3 showCanonicalID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(VUIPlaybackTabManager *)self isCurrentMediaMovie]|| [(VUIPlaybackTabManager *)self _isCurrentMediaSportingEvent])
  {
    if ([v6 length])
    {
      v8 = [[VUIDocumentContextDataMovie alloc] initWithMovieID:v6];
LABEL_5:
      v9 = v8;
      goto LABEL_10;
    }
  }

  else if (-[VUIPlaybackTabManager isCurrentMediaTVShow](self, "isCurrentMediaTVShow") && [v7 length])
  {
    v8 = [[VUIDocumentContextDataTVShow alloc] initWithShowID:v7 episodeID:v6];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)moreInfoViewControllerWithAppContext:(id)a3
{
  v5 = @"MovieCanonical";
  v6 = a3;
  v7 = [(VUIPlaybackTabManager *)self delegate];
  v8 = [v7 currentMediaItem];

  v9 = [v8 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v10 = [v8 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
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
  v18 = [v17 viewControllerWithDocumentDataSource:v14 appContext:v6];

  return v18;
}

- (BOOL)_isInfoHUDButtonPresent:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"play"])
  {
    v5 = [(VUIPlaybackTabManager *)self shouldShowPlayFromBeginningButtonForMediaInfo];
  }

  else
  {
    if (![v4 isEqualToString:@"navigate"])
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(VUIPlaybackTabManager *)self shouldShowMoreInfoButton];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (id)createClickMetricsWithType:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(VUIPlaybackTabManager *)self _isInfoHUDButtonPresent:v4])
  {
    v9[0] = @"targetType";
    v9[1] = @"actionType";
    v10[0] = @"button";
    v10[1] = v4;
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

- (void)_addMetadataInfoToEvent:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIPlaybackTabManager *)self delegate];
  v6 = [v5 currentMediaItem];

  v7 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
  if (v7)
  {
    [v4 setObject:v7 forKey:@"brandId"];
  }

  v8 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v9 = [v6 hasTrait:VUIMediaItemTraitIsSportingEvent];
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

  [v4 setObject:*v11 forKey:@"contentType"];
LABEL_10:
  v12 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  if (v12)
  {
    [v4 setObject:v12 forKey:@"targetId"];
  }

  v13 = [v4 objectForKeyedSubscript:@"actionType"];
  if ([v13 length])
  {
    if ([v13 isEqualToString:@"play"])
    {
      v14 = [(VUIPlaybackTabManager *)self playTitleForFromBeginningAction];
    }

    else
    {
      if (![v13 isEqualToString:@"navigate"])
      {
        v15 = 0;
        goto LABEL_19;
      }

      v14 = [(VUIPlaybackTabManager *)self moreInfoTitle];
    }

    v15 = v14;
LABEL_19:
    if ([v15 length])
    {
      v17 = @"name";
      v18[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [v4 setObject:v16 forKey:@"actionDetails"];
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